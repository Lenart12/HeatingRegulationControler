#include <tasks.h>
#include <mutex_util.h>
#include <lv_gui.h>
#include <EEPROM.h>
#include <time.h>

void wifi_status_task(lv_task_t *task){
	LV_LOG_TRACE("Started wifi task");
    static wl_status_t last_status = WL_DISCONNECTED;
    wl_status_t status = WiFi.status();
    if(status != last_status){
        last_status = status;

		String text;
		switch (status){
		case WL_CONNECTED:{
			configTime(NTP_OFFSET, 3600, "pool.ntp.org");

			text = "Povezan z " + (String)config.wifi_login.ssid + "\nIP: " + WiFi.localIP().toString();
			lv_label_set_text(status_label, LV_SYMBOL_WIFI);
			status_expander.digitalWrite(Status_led::wifi, ON);
			break;
		}	
		default:{
			text = "Povezava ni uspesna";
			lv_label_set_text(status_label, "");
			status_expander.digitalWrite(Status_led::wifi, OFF);
			break;
		}
		}
		lv_label_set_text(lv_obj_get_child(wifi_status, NULL), text.c_str());
		lv_obj_align(lv_obj_get_child(wifi_status, NULL), NULL, LV_ALIGN_CENTER, 0, 0);
		lv_obj_align(status_label, NULL, LV_ALIGN_IN_RIGHT_MID, -5, 0);
		lv_obj_align(wifi_list, wifi_status, LV_ALIGN_OUT_BOTTOM_MID, 0, 5);
    }
	LV_LOG_TRACE("Completed wifi task");
}

void wifi_search_task(lv_task_t *task){
	if(WiFi.scanComplete() == WIFI_SCAN_FAILED){
		WiFi.scanNetworks(true);
	}
	else if(WiFi.scanComplete() > 0){
		LV_LOG_INFO("WiFi scan completed");
		lv_list_clean(wifi_list);
		lv_obj_t *list_btn;

		for(uint8_t i = 0; i < WiFi.scanComplete(); i++){
			list_btn = lv_list_add_btn(wifi_list, NULL, WiFi.SSID(i).c_str());
			lv_obj_set_event_cb(list_btn, wifi_choose);
		}
		lv_task_del(task);
	}
}

void wifi_choose(lv_obj_t * obj, lv_event_t event){
	if(event == LV_EVENT_CLICKED){
		strcpy(config.wifi_login.ssid, lv_list_get_btn_text(obj));

		lv_disp_load_scr(kb_screen);

		lv_obj_t *kb = lv_keyboard_create(kb_screen, NULL);
		lv_obj_set_size(kb, lv_obj_get_width_fit(kb_screen) - 30, 190);
		lv_obj_align(kb, NULL, LV_ALIGN_IN_BOTTOM_MID, 0, -10);
		lv_keyboard_set_cursor_manage(kb, true);

		lv_obj_t *ta = lv_textarea_create(kb_screen, NULL);
		lv_obj_set_size(ta, lv_obj_get_width_fit(kb_screen) - 30, 30);
		lv_obj_align(ta, NULL, LV_ALIGN_IN_TOP_MID, 0, 10);
		lv_textarea_set_text(ta, "");

		lv_keyboard_set_textarea(kb, ta);
		lv_obj_set_event_cb(kb, wifi_connect);
	}
}

void wifi_connect(lv_obj_t * obj, lv_event_t event){
	switch(event){
		case LV_EVENT_APPLY:{
			strcpy(config.wifi_login.passwd, lv_textarea_get_text(lv_keyboard_get_textarea(obj)));
			WiFi.begin(config.wifi_login.ssid, config.wifi_login.passwd);
			Serial.println(config.wifi_login.ssid);
			Serial.println(config.wifi_login.passwd);
			EEPROM.put(0, config);
			EEPROM.commit();
		}
		case LV_EVENT_CANCEL:{
			lv_obj_clean(kb_screen);
			lv_disp_load_scr(main_screen);
			lv_task_create(wifi_search_task, 100, LV_TASK_PRIO_LOW, NULL);
			break;
		}
		default: lv_keyboard_def_event_cb(obj, event);
	}
}

void status_display_task(lv_task_t *task){
	LV_LOG_TRACE("Started status display task");
	lv_create_status(status_tab);
	LV_LOG_TRACE("Started status display task");
}

void time_display_task(lv_task_t *task){
	tm time;
	if(getLocalTime(&time, 5)){
		char ctime[10];
		strftime(ctime, 10, "%H:%M:%S", &time);
		lv_label_set_text(time_label, ctime);

		// Refresh time once per hour to prevent time drift due to timer accuracy
		if(time.tm_min == 0 && time.tm_sec <= 1){
			configTime(NTP_OFFSET, 3600, "pool.ntp.org");
		}
	}
}

void screensaver_task(lv_task_t *task){
	LV_LOG_TRACE("Started screensaver task");
    uint32_t last_interaction = lv_disp_get_inactive_time(NULL);

	static bool screensaver = false;

	if(screensaver || last_interaction > TFT_SCREEN_OFF){
		if(!screensaver){
			EEPROM.put(0, config);
   			EEPROM.commit();
			LV_LOG_TRACE("Wrote changes to eeprom");
			config.control.update_pumps();
			LV_LOG_TRACE("Updated pumps");
			lv_task_set_period(request_temp_task_h, 2000);
			LV_LOG_TRACE("Set tempature request period to 2000ms");
			update_task_h = lv_task_create(control_update_task, 1000, LV_TASK_PRIO_HIGH, NULL);
			LV_LOG_TRACE("Created control update task");

			screensaver = true;

			digitalWrite(TFT_LED, OFF);
			LV_LOG_INFO("Screen turning off");
		}
		if(last_interaction < TFT_SCREEN_OFF){
			lv_task_set_period(request_temp_task_h, 10000);
			LV_LOG_TRACE("Set tempature request period to 10000ms");
			lv_task_del(update_task_h);
			LV_LOG_TRACE("Terminated control update task");

			screensaver = false;
			digitalWrite(TFT_LED, ON);
			LV_LOG_INFO("Screen turning on");
		}
	}
	LV_LOG_TRACE("Completed screensaver task");
}

void tempature_request_task(lv_task_t *task){
	LV_LOG_TRACE("Started tempature request task");
	
	i2cLock();

	tempature_1.requestTemperatures();
	tempature_2.requestTemperatures();

	i2cUnlock();

	conversion_ticker.once_ms(750, tempature_read_task);
	LV_LOG_TRACE("Completed tempature request task");
}

void tempature_read_task(){
	#if SIM_TEMPATURE == 0
	LV_LOG_TRACE("Started tempature read task");
	static uint8_t env_temp_err = 0;
	float enviroment_tempature = config.control.enviroment_addr.read();
    if(enviroment_tempature == DEVICE_DISCONNECTED_C){
		enviroment_tempature = enviroment_temp[0];
		env_temp_err += 1;
		String err = (String)"Enviroment sensor returned wrong value - " "(" + env_temp_err + "/5)";
		LV_LOG_WARN(err.c_str());
		if(env_temp_err > 5)
        	LV_LOG_ERROR("Enviroment sensor not working");
    }
	else{
		env_temp_err = 0;
	}
	static uint8_t boil_temp_err = 0;
    float boiler_tempature = config.control.boiler_addr.read();
    if(boiler_tempature == DEVICE_DISCONNECTED_C){
		boiler_tempature = boiler_temp[0];
		boil_temp_err += 1;
		String err = (String)"Boiler sensor returned wrong value (" + boil_temp_err + "/5)";
		LV_LOG_WARN(err.c_str());
		if(boil_temp_err > 5)
        	LV_LOG_ERROR("Boiler sensor not working");
    }
	else{
		boil_temp_err = 0;
	}
	static uint8_t hwc_temp_err = 0;
    float hot_water_container_tempature = config.control.hot_water_container_addr.read();
    if(hot_water_container_tempature == DEVICE_DISCONNECTED_C){
		hot_water_container_tempature = hot_water_container_temp[0];
		hwc_temp_err += 1;
		String err = (String)"Hot water container sensor returned wrong value (" + hwc_temp_err + "/5)";
		LV_LOG_WARN(err.c_str());
		if(hwc_temp_err > 5)
        LV_LOG_ERROR("Hot water container sensor not working");
    }
	else{
		hwc_temp_err = 0;
	}
	static uint8_t uf_temp_err[4] = {0, 0, 0, 0};
	float underfloor_tempature[4];
	for(uint8_t i = 0; i < 4; i++){
		underfloor_tempature[i] = config.control.underfloor_addr[i].read();
        if(underfloor_tempature[i] == DEVICE_DISCONNECTED_C){
			underfloor_tempature[i] = underfloor_temp[i][0];
			uf_temp_err[i] += 1;
			String err = (String)"Underfloor sensor " + i + " returned wrong value (" + uf_temp_err[i] + "/5)";
			LV_LOG_WARN(err.c_str());
			if(uf_temp_err[i] > 5){
				char log[32] = "Underfloor ";
				strcat(log, ((String)i).c_str());
				strcat(log, " sensor not working");
				LV_LOG_ERROR(log);
			}
        }
		else{
			uf_temp_err[i] = 0;
		}
        if(underfloor_tempature[i] > 40.00f){
            LV_LOG_ERROR("Underfloor tempature too high");
        }
	}
	static uint8_t sc_err = 0;
    float solar_collector_tempature = config.control.solar_collector_addr.read();
    if(solar_collector_tempature == DEVICE_DISCONNECTED_C){
        if(config.control.solar_pump_enabled){
			solar_collector_tempature = solar_collector_temp[0];
			sc_err += 1;
			String err = (String)"Solar collector sensor returned wrong value (" + sc_err + "/5)";
			LV_LOG_WARN(err.c_str());
			if(sc_err > 5)
            	LV_LOG_ERROR("Solar collector sensor not working");
        }
        LV_LOG_WARN("Solar collector sensor not working");
    }
	else{
		sc_err = 0;
	}
	static uint8_t st_err = 0;
    float solar_tank_tempature = config.control.solar_tank_addr.read();
    if(solar_tank_tempature == DEVICE_DISCONNECTED_C){
        if(config.control.solar_pump_enabled){
			solar_tank_tempature = solar_tank_temp[0];
			st_err += 1;
			String err = (String)"Solar tank sensor sensor returned wrong value (" + st_err + "/5)";
			LV_LOG_WARN(err.c_str());
			if(st_err > 5)
            	LV_LOG_ERROR("Solar tank sensor not working");
        }
        LV_LOG_WARN("Solar tank sensor not working");
    }
	else{
		st_err = 0;
	}
	static uint8_t he_err = 0;
    float heat_exchanger_tempature = config.control.heat_exchanger_addr.read();
    if(heat_exchanger_tempature == DEVICE_DISCONNECTED_C){
        if(config.control.solar_pump_enabled){
			heat_exchanger_tempature = heat_exchanger_temp[0];
			he_err += 1;
			String err = (String)"Heat exchanger sensor sensor returned wrong value (" + he_err + "/5)";
			LV_LOG_WARN(err.c_str());
			if(he_err > 5)
            	LV_LOG_ERROR("Heat exchanger sensor not working");
        }
        LV_LOG_WARN("Heat exchanger sensor not working");
    }
	else{
		he_err = 0;
	}

	#else

	static float boiler_tempature = 40.0;
	static float hot_water_container_tempature = 30.0;
	static float enviroment_tempature = 12.0;
	static float underfloor_tempature[4] = {
		16.0,
		17.0,
		17.5,
		18.0
	};
	static float solar_collector_tempature = 50.0;
	static float solar_tank_tempature = 35.0;
	static float heat_exchanger_tempature = 30.0;

	#endif

	if(digitalRead(TFT_LED) == ON){
		String tempatures = 
		"Gorilec: "+ (String)boiler_tempature + '\n' + 
		"Hranilnik: " + hot_water_container_tempature + '\n' +
		"Zunajnja: " + enviroment_tempature + '\n' +
		"Mansarda: " + underfloor_tempature[0] + '\n' + 
		"Spalnice: " + underfloor_tempature[1] + '\n' + 
		"Pritlicje: " + underfloor_tempature[2] + '\n' +
		"Garaza: " + underfloor_tempature[3] + '\n' +
		"Solarni kolektorji: "  + solar_collector_tempature + '\n' +
		"Solarni tank: " + solar_tank_tempature + '\n' +
		"Izmenovalnik temp.: " + heat_exchanger_tempature;
		lv_label_set_text(temp_label, tempatures.c_str());
	}


	xSemaphoreTake(tempature_mutex, portMAX_DELAY);
	boiler_temp[0] = boiler_tempature;
	hot_water_container_temp[0] = hot_water_container_tempature;
	enviroment_temp[0] = enviroment_tempature;
	for(uint8_t i = 0; i < 4; i++) underfloor_temp[i][0] = underfloor_tempature[i];
	solar_collector_temp[0] = solar_collector_tempature;
	solar_tank_temp[0] = solar_tank_tempature;
	heat_exchanger_temp[0] = heat_exchanger_tempature;
	xSemaphoreGive(tempature_mutex);

	static bool first_time = true;
	if(first_time){
		first_time = false;
		tempature_shift_task(NULL);
	}

	LV_LOG_TRACE("Completed tempature read task");
}

void tempature_shift_task(lv_task_t *task){
	LV_LOG_TRACE("Started tempature shift task");
	xSemaphoreTake(tempature_mutex, portMAX_DELAY);
	lv_chart_set_next(env_chart, env_data, enviroment_temp[0]);
	lv_chart_refresh(env_chart);
	for(int8_t i = 22; i >= 0; i--){
		LV_LOG_TRACE("Shifting");
		boiler_temp[i + 1] = boiler_temp[i];
		hot_water_container_temp[i + 1] = hot_water_container_temp[i];
		enviroment_temp[i + 1] = enviroment_temp[i];
		for(uint8_t j = 0; j < 4; j++)
			underfloor_temp[j][i + 1] = underfloor_temp[j][i];
		solar_collector_temp[i + 1] = solar_collector_temp[i];
		solar_tank_temp[i + 1] = solar_tank_temp[i];
		heat_exchanger_temp[i + 1] = heat_exchanger_temp[i + 1];
	}
	xSemaphoreGive(tempature_mutex);
	LV_LOG_TRACE("Completed tempature shift task");
}

void control_update_task(lv_task_t *task){
	LV_LOG_TRACE("Started control update task");
	config.control.update();
	LV_LOG_TRACE("Completed control update task");
}

void control_minute_update_task(lv_task_t *t){
	LV_LOG_TRACE("Started control minute update task");
	setWithMutex(minute_update, true, timing_mutex);
	LV_LOG_TRACE("Completed control minute update task");
}
#ifndef DEFINES_H
#define DEFINES_H

#include <inttypes.h>
#include <lvgl.h>

#define CLEAN_CONFIG 0

#define SIM_TEMPATURE 1

// PINS {
static const uint8_t SD_CS = 4;     // 26

static const uint8_t TFT_LED = 27;  // 12
static const uint8_t TFT_DC = 16;   // 27
static const uint8_t TFT_RST = 17;  // 28
static const uint8_t TFT_CS = 5;    // 29


static const uint8_t SPI_CLK = 18;  // 30
static const uint8_t SPI_MISO = 19; // 31
static const uint8_t SPI_MOSI = 23;  // 37

static const uint8_t I2C_SDA = 21;  // 33
static const uint8_t I2C_SCL = 22;  // 36

static const uint8_t T_DIN = 32;    // 08
static const uint8_t T_CS = 33;     // 09
static const uint8_t T_IRQ = 25;    // 10
static const uint8_t T_DO = 26;     // 11

static const uint8_t BUTTON_0 = 36; // 04
static const uint8_t BUTTON_1 = 39; // 05
static const uint8_t BUTTON_2 = 34; // 06
static const uint8_t BUTTON_3 = 35; // 07

// }

// COLORS {
static const lv_color_t BUTTON_0_COLOR = LV_COLOR_MAKE(  0,   0,   0);
static const lv_color_t BUTTON_1_COLOR = LV_COLOR_MAKE(255, 255, 255);
static const lv_color_t BUTTON_2_COLOR = LV_COLOR_MAKE(255, 255,   0);
static const lv_color_t BUTTON_3_COLOR = LV_COLOR_MAKE(  0,   0, 255);

static const lv_color_t BUTTON_COLORS[]{
	BUTTON_0_COLOR,
	BUTTON_1_COLOR,
	BUTTON_2_COLOR,
	BUTTON_3_COLOR
};
// }

// TFT {
static const uint16_t W = 320;
static const uint16_t H = 240;
static const uint8_t TFT_ROTATION = 1;
static const uint32_t TFT_SCREEN_OFF = 30 * 1000; // 30 seconds

static const uint16_t TOUCH_CALIBRATION[5] = { 174, 3571, 311, 3539, 1 };

static const uint8_t LVGL_TICK_PERIOD = 20;
//}

// BUTTONS {
static const uint8_t BUTTONS[] = {
	BUTTON_0,
	BUTTON_1,
	BUTTON_2,
	BUTTON_3
};
// }

// ADDRESSES {
static const uint8_t DS2482_0 = 0x19;
static const uint8_t DS2482_1 = 0x18;
static const uint8_t PCF8574_STATUS = 0x20;
static const uint8_t PCF8574_THERMO = 0x21;
static const uint8_t PCF8574_RELAY0 = 0x22;
static const uint8_t PCF8574_RELAY1 = 0x23;
// }

// STATUS LEDS {
#define ON LOW
#define OFF HIGH

enum Status_led : uint8_t{
	power = 0,
	wifi = 1,
	moving_motor = 2,
	night_time_s = 3,
	burner_s = 4,
	hot_water_pump_s = 5,
	circulator_s = 6,
	error = 7
};
//}

// RELAY EXPANDER {
enum Relay_pin : uint8_t{
	burner = 0,
	hot_water_pump = 1,
	underfloor_pump_0 = 2,
	underfloor_pump_1 = 3,
	underfloor_pump_2 = 4,
	underfloor_pump_3 = 5,
	circulator_pump = 6,
	solar_pump = 7,
	inter_tank_pump = 8
};
//}

static const uint32_t CONTROL_INTERVAL = 2 * 60 * 1000; // 2 minutes
static const uint32_t CONVERSION_REQUEST_DELAY = 750;

static const int32_t NTP_OFFSET = 3600; // GMT+1
#endif
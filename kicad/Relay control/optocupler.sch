EESchema Schematic File Version 4
LIBS:optocupler-cache
EELAYER 26 0
EELAYER END
$Descr A4 8268 11693 portrait
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 5C603A89
P 2550 2900
F 0 "A1" H 2550 1814 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 2550 1723 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 2700 1950 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 2550 1900 50  0001 C CNN
	1    2550 2900
	1    0    0    -1  
$EndComp
$Comp
L Isolator:NSL-32 U2
U 1 1 5C603BF6
P 5150 1900
F 0 "U2" H 5150 2217 50  0000 C CNN
F 1 "NSL-32" H 5150 2126 50  0000 C CNN
F 2 "optocupler:DIP-5-6_W7.62mm_LongPads" H 5150 1600 50  0001 C CNN
F 3 "http://lunainc.com/wp-content/uploads/2016/06/NSL-32.pdf" H 5200 1900 50  0001 C CNN
	1    5150 1900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J4
U 1 1 5C6067E6
P 6900 1450
F 0 "J4" H 6873 1330 50  0000 R CNN
F 1 "Conn_01x04_Male" H 6873 1421 50  0000 R CNN
F 2 "Connector_JST:JST_NV_B04P-NV_1x04_P5.00mm_Vertical" H 6900 1450 50  0001 C CNN
F 3 "~" H 6900 1450 50  0001 C CNN
	1    6900 1450
	-1   0    0    1   
$EndComp
$Comp
L Isolator:NSL-32 U1
U 1 1 5C6069E0
P 5150 1350
F 0 "U1" H 5150 1667 50  0000 C CNN
F 1 "NSL-32" H 5150 1576 50  0000 C CNN
F 2 "optocupler:DIP-5-6_W7.62mm_LongPads" H 5150 1050 50  0001 C CNN
F 3 "http://lunainc.com/wp-content/uploads/2016/06/NSL-32.pdf" H 5200 1350 50  0001 C CNN
	1    5150 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5C606AC9
P 6050 1350
F 0 "C1" V 6302 1350 50  0000 C CNN
F 1 "C" V 6211 1350 50  0000 C CNN
F 2 "Capacitor_THT:C_Axial_L17.0mm_D6.5mm_P20.00mm_Horizontal" H 6088 1200 50  0001 C CNN
F 3 "~" H 6050 1350 50  0001 C CNN
	1    6050 1350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R9
U 1 1 5C606B6E
P 6050 1500
F 0 "R9" V 5843 1500 50  0000 C CNN
F 1 "R" V 5934 1500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 5980 1500 50  0001 C CNN
F 3 "~" H 6050 1500 50  0001 C CNN
	1    6050 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	5450 1250 6200 1250
Wire Wire Line
	6450 1350 6700 1350
Wire Wire Line
	6450 1350 6450 1500
Wire Wire Line
	6450 1500 6200 1500
Wire Wire Line
	5900 1500 5900 1350
Wire Wire Line
	6200 1350 6200 1250
Connection ~ 6200 1250
Wire Wire Line
	6200 1250 6700 1250
$Comp
L Device:C C2
U 1 1 5C6072C2
P 6050 1800
F 0 "C2" V 6302 1800 50  0000 C CNN
F 1 "C" V 6211 1800 50  0000 C CNN
F 2 "Capacitor_THT:C_Axial_L17.0mm_D6.5mm_P20.00mm_Horizontal" H 6088 1650 50  0001 C CNN
F 3 "~" H 6050 1800 50  0001 C CNN
	1    6050 1800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R10
U 1 1 5C6072C9
P 6050 1950
F 0 "R10" V 5843 1950 50  0000 C CNN
F 1 "R" V 5934 1950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 5980 1950 50  0001 C CNN
F 3 "~" H 6050 1950 50  0001 C CNN
	1    6050 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	6450 1500 6450 1950
Wire Wire Line
	6450 1950 6200 1950
Connection ~ 6450 1500
Wire Wire Line
	5900 1950 5900 1800
Wire Wire Line
	6200 1800 6550 1800
Wire Wire Line
	6550 1800 6550 1650
Wire Wire Line
	6550 1450 6700 1450
Wire Wire Line
	4850 2000 4750 2000
Wire Wire Line
	4750 2000 4750 1450
Wire Wire Line
	4750 1450 4850 1450
$Comp
L Device:LED D2
U 1 1 5C607A0C
P 4550 1800
F 0 "D2" H 4542 1545 50  0000 C CNN
F 1 "LED" H 4542 1636 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 4550 1800 50  0001 C CNN
F 3 "~" H 4550 1800 50  0001 C CNN
	1    4550 1800
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D1
U 1 1 5C607AA3
P 4550 1250
F 0 "D1" H 4542 995 50  0000 C CNN
F 1 "LED" H 4542 1086 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 4550 1250 50  0001 C CNN
F 3 "~" H 4550 1250 50  0001 C CNN
	1    4550 1250
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 5C607F62
P 4200 1800
F 0 "R2" V 3993 1800 50  0000 C CNN
F 1 "R" V 4084 1800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 4130 1800 50  0001 C CNN
F 3 "~" H 4200 1800 50  0001 C CNN
	1    4200 1800
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5C60800E
P 4200 1250
F 0 "R1" V 3993 1250 50  0000 C CNN
F 1 "R" V 4084 1250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 4130 1250 50  0001 C CNN
F 3 "~" H 4200 1250 50  0001 C CNN
	1    4200 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 1250 4400 1250
Wire Wire Line
	4350 1800 4400 1800
Wire Wire Line
	5450 1800 5850 1800
Wire Wire Line
	5850 1800 5850 1650
Wire Wire Line
	5850 1650 6550 1650
Connection ~ 6550 1650
Wire Wire Line
	6550 1650 6550 1450
Wire Wire Line
	6700 1550 6650 1550
Wire Wire Line
	5450 1450 5550 1450
Wire Wire Line
	5450 2000 5550 2000
Wire Wire Line
	5550 2000 5550 1450
$Comp
L Isolator:NSL-32 U4
U 1 1 5C60B58A
P 5150 3000
F 0 "U4" H 5150 3317 50  0000 C CNN
F 1 "NSL-32" H 5150 3226 50  0000 C CNN
F 2 "optocupler:DIP-5-6_W7.62mm_LongPads" H 5150 2700 50  0001 C CNN
F 3 "http://lunainc.com/wp-content/uploads/2016/06/NSL-32.pdf" H 5200 3000 50  0001 C CNN
	1    5150 3000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J5
U 1 1 5C60B591
P 6900 2550
F 0 "J5" H 6873 2430 50  0000 R CNN
F 1 "Conn_01x04_Male" H 6873 2521 50  0000 R CNN
F 2 "Connector_JST:JST_NV_B04P-NV_1x04_P5.00mm_Vertical" H 6900 2550 50  0001 C CNN
F 3 "~" H 6900 2550 50  0001 C CNN
	1    6900 2550
	-1   0    0    1   
$EndComp
$Comp
L Isolator:NSL-32 U3
U 1 1 5C60B598
P 5150 2450
F 0 "U3" H 5150 2767 50  0000 C CNN
F 1 "NSL-32" H 5150 2676 50  0000 C CNN
F 2 "optocupler:DIP-5-6_W7.62mm_LongPads" H 5150 2150 50  0001 C CNN
F 3 "http://lunainc.com/wp-content/uploads/2016/06/NSL-32.pdf" H 5200 2450 50  0001 C CNN
	1    5150 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5C60B59F
P 6050 2450
F 0 "C3" V 6302 2450 50  0000 C CNN
F 1 "C" V 6211 2450 50  0000 C CNN
F 2 "Capacitor_THT:C_Axial_L17.0mm_D6.5mm_P20.00mm_Horizontal" H 6088 2300 50  0001 C CNN
F 3 "~" H 6050 2450 50  0001 C CNN
	1    6050 2450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R11
U 1 1 5C60B5A6
P 6050 2600
F 0 "R11" V 5843 2600 50  0000 C CNN
F 1 "R" V 5934 2600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 5980 2600 50  0001 C CNN
F 3 "~" H 6050 2600 50  0001 C CNN
	1    6050 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	5450 2350 6200 2350
Wire Wire Line
	6450 2450 6700 2450
Wire Wire Line
	6450 2450 6450 2600
Wire Wire Line
	6450 2600 6200 2600
Connection ~ 6450 2450
Wire Wire Line
	5900 2600 5900 2450
Wire Wire Line
	6200 2450 6200 2350
Connection ~ 6200 2350
Wire Wire Line
	6200 2350 6700 2350
$Comp
L Device:C C4
U 1 1 5C60B5B8
P 6050 2900
F 0 "C4" V 6302 2900 50  0000 C CNN
F 1 "C" V 6211 2900 50  0000 C CNN
F 2 "Capacitor_THT:C_Axial_L17.0mm_D6.5mm_P20.00mm_Horizontal" H 6088 2750 50  0001 C CNN
F 3 "~" H 6050 2900 50  0001 C CNN
	1    6050 2900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R12
U 1 1 5C60B5BF
P 6050 3050
F 0 "R12" V 5843 3050 50  0000 C CNN
F 1 "R" V 5934 3050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 5980 3050 50  0001 C CNN
F 3 "~" H 6050 3050 50  0001 C CNN
	1    6050 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	6450 2600 6450 3050
Wire Wire Line
	6450 3050 6200 3050
Connection ~ 6450 2600
Wire Wire Line
	5900 3050 5900 2900
Wire Wire Line
	6200 2900 6550 2900
Wire Wire Line
	6550 2900 6550 2750
Wire Wire Line
	6550 2550 6700 2550
Wire Wire Line
	4850 3100 4750 3100
Wire Wire Line
	4750 3100 4750 2550
Wire Wire Line
	4750 2550 4850 2550
$Comp
L Device:LED D4
U 1 1 5C60B5D0
P 4550 2900
F 0 "D4" H 4542 2645 50  0000 C CNN
F 1 "LED" H 4542 2736 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 4550 2900 50  0001 C CNN
F 3 "~" H 4550 2900 50  0001 C CNN
	1    4550 2900
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D3
U 1 1 5C60B5D7
P 4550 2350
F 0 "D3" H 4542 2095 50  0000 C CNN
F 1 "LED" H 4542 2186 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 4550 2350 50  0001 C CNN
F 3 "~" H 4550 2350 50  0001 C CNN
	1    4550 2350
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 5C60B5E0
P 4200 2900
F 0 "R4" V 3993 2900 50  0000 C CNN
F 1 "R" V 4084 2900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 4130 2900 50  0001 C CNN
F 3 "~" H 4200 2900 50  0001 C CNN
	1    4200 2900
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5C60B5E7
P 4200 2350
F 0 "R3" V 3993 2350 50  0000 C CNN
F 1 "R" V 4084 2350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 4130 2350 50  0001 C CNN
F 3 "~" H 4200 2350 50  0001 C CNN
	1    4200 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 2350 4400 2350
Wire Wire Line
	4350 2900 4400 2900
Wire Wire Line
	5450 2900 5850 2900
Wire Wire Line
	5850 2900 5850 2750
Wire Wire Line
	5850 2750 6550 2750
Connection ~ 6550 2750
Wire Wire Line
	6550 2750 6550 2550
Wire Wire Line
	6700 2650 6650 2650
Wire Wire Line
	5450 2550 5550 2550
Wire Wire Line
	5450 3100 5550 3100
Wire Wire Line
	5550 3100 5550 2550
Connection ~ 5550 2550
$Comp
L Isolator:NSL-32 U6
U 1 1 5C60DD77
P 5150 4100
F 0 "U6" H 5150 4417 50  0000 C CNN
F 1 "NSL-32" H 5150 4326 50  0000 C CNN
F 2 "optocupler:DIP-5-6_W7.62mm_LongPads" H 5150 3800 50  0001 C CNN
F 3 "http://lunainc.com/wp-content/uploads/2016/06/NSL-32.pdf" H 5200 4100 50  0001 C CNN
	1    5150 4100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J6
U 1 1 5C60DD7E
P 6900 3650
F 0 "J6" H 6873 3530 50  0000 R CNN
F 1 "Conn_01x04_Male" H 6873 3621 50  0000 R CNN
F 2 "Connector_JST:JST_NV_B04P-NV_1x04_P5.00mm_Vertical" H 6900 3650 50  0001 C CNN
F 3 "~" H 6900 3650 50  0001 C CNN
	1    6900 3650
	-1   0    0    1   
$EndComp
$Comp
L Isolator:NSL-32 U5
U 1 1 5C60DD85
P 5150 3550
F 0 "U5" H 5150 3867 50  0000 C CNN
F 1 "NSL-32" H 5150 3776 50  0000 C CNN
F 2 "optocupler:DIP-5-6_W7.62mm_LongPads" H 5150 3250 50  0001 C CNN
F 3 "http://lunainc.com/wp-content/uploads/2016/06/NSL-32.pdf" H 5200 3550 50  0001 C CNN
	1    5150 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5C60DD8C
P 6050 3550
F 0 "C5" V 6302 3550 50  0000 C CNN
F 1 "C" V 6211 3550 50  0000 C CNN
F 2 "Capacitor_THT:C_Axial_L17.0mm_D6.5mm_P20.00mm_Horizontal" H 6088 3400 50  0001 C CNN
F 3 "~" H 6050 3550 50  0001 C CNN
	1    6050 3550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R13
U 1 1 5C60DD93
P 6050 3700
F 0 "R13" V 5843 3700 50  0000 C CNN
F 1 "R" V 5934 3700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 5980 3700 50  0001 C CNN
F 3 "~" H 6050 3700 50  0001 C CNN
	1    6050 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	5450 3450 6200 3450
Wire Wire Line
	6450 3550 6700 3550
Wire Wire Line
	6450 3550 6450 3700
Wire Wire Line
	6450 3700 6200 3700
Connection ~ 6450 3550
Wire Wire Line
	5900 3700 5900 3550
Wire Wire Line
	6200 3550 6200 3450
Connection ~ 6200 3450
Wire Wire Line
	6200 3450 6700 3450
$Comp
L Device:C C6
U 1 1 5C60DDA4
P 6050 4000
F 0 "C6" V 6302 4000 50  0000 C CNN
F 1 "C" V 6211 4000 50  0000 C CNN
F 2 "Capacitor_THT:C_Axial_L17.0mm_D6.5mm_P20.00mm_Horizontal" H 6088 3850 50  0001 C CNN
F 3 "~" H 6050 4000 50  0001 C CNN
	1    6050 4000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R14
U 1 1 5C60DDAB
P 6050 4150
F 0 "R14" V 5843 4150 50  0000 C CNN
F 1 "R" V 5934 4150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 5980 4150 50  0001 C CNN
F 3 "~" H 6050 4150 50  0001 C CNN
	1    6050 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	6450 3700 6450 4150
Wire Wire Line
	6450 4150 6200 4150
Connection ~ 6450 3700
Wire Wire Line
	5900 4150 5900 4000
Wire Wire Line
	6200 4000 6550 4000
Wire Wire Line
	6550 4000 6550 3850
Wire Wire Line
	6550 3650 6700 3650
Wire Wire Line
	4850 4200 4750 4200
Wire Wire Line
	4750 3650 4850 3650
$Comp
L Device:LED D6
U 1 1 5C60DDBC
P 4550 4000
F 0 "D6" H 4542 3745 50  0000 C CNN
F 1 "LED" H 4542 3836 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 4550 4000 50  0001 C CNN
F 3 "~" H 4550 4000 50  0001 C CNN
	1    4550 4000
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D5
U 1 1 5C60DDC3
P 4550 3450
F 0 "D5" H 4542 3195 50  0000 C CNN
F 1 "LED" H 4542 3286 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 4550 3450 50  0001 C CNN
F 3 "~" H 4550 3450 50  0001 C CNN
	1    4550 3450
	-1   0    0    1   
$EndComp
$Comp
L Device:R R6
U 1 1 5C60DDCC
P 4200 4000
F 0 "R6" V 3993 4000 50  0000 C CNN
F 1 "R" V 4084 4000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 4130 4000 50  0001 C CNN
F 3 "~" H 4200 4000 50  0001 C CNN
	1    4200 4000
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5C60DDD3
P 4200 3450
F 0 "R5" V 3993 3450 50  0000 C CNN
F 1 "R" V 4084 3450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 4130 3450 50  0001 C CNN
F 3 "~" H 4200 3450 50  0001 C CNN
	1    4200 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 3450 4400 3450
Wire Wire Line
	4350 4000 4400 4000
Wire Wire Line
	5450 4000 5850 4000
Wire Wire Line
	5850 4000 5850 3850
Wire Wire Line
	5850 3850 6550 3850
Connection ~ 6550 3850
Wire Wire Line
	6550 3850 6550 3650
Wire Wire Line
	6700 3750 6650 3750
Wire Wire Line
	5450 3650 5550 3650
Wire Wire Line
	5450 4200 5550 4200
Wire Wire Line
	5550 4200 5550 3650
Connection ~ 5550 3650
$Comp
L Isolator:NSL-32 U8
U 1 1 5C610A7B
P 5150 5200
F 0 "U8" H 5150 5517 50  0000 C CNN
F 1 "NSL-32" H 5150 5426 50  0000 C CNN
F 2 "optocupler:DIP-5-6_W7.62mm_LongPads" H 5150 4900 50  0001 C CNN
F 3 "http://lunainc.com/wp-content/uploads/2016/06/NSL-32.pdf" H 5200 5200 50  0001 C CNN
	1    5150 5200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J7
U 1 1 5C610A82
P 6900 4750
F 0 "J7" H 6873 4630 50  0000 R CNN
F 1 "Conn_01x04_Male" H 6873 4721 50  0000 R CNN
F 2 "Connector_JST:JST_NV_B04P-NV_1x04_P5.00mm_Vertical" H 6900 4750 50  0001 C CNN
F 3 "~" H 6900 4750 50  0001 C CNN
	1    6900 4750
	-1   0    0    1   
$EndComp
$Comp
L Isolator:NSL-32 U7
U 1 1 5C610A89
P 5150 4650
F 0 "U7" H 5150 4967 50  0000 C CNN
F 1 "NSL-32" H 5150 4876 50  0000 C CNN
F 2 "optocupler:DIP-5-6_W7.62mm_LongPads" H 5150 4350 50  0001 C CNN
F 3 "http://lunainc.com/wp-content/uploads/2016/06/NSL-32.pdf" H 5200 4650 50  0001 C CNN
	1    5150 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5C610A90
P 6050 4650
F 0 "C7" V 6302 4650 50  0000 C CNN
F 1 "C" V 6211 4650 50  0000 C CNN
F 2 "Capacitor_THT:C_Axial_L17.0mm_D6.5mm_P20.00mm_Horizontal" H 6088 4500 50  0001 C CNN
F 3 "~" H 6050 4650 50  0001 C CNN
	1    6050 4650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R15
U 1 1 5C610A97
P 6050 4800
F 0 "R15" V 5843 4800 50  0000 C CNN
F 1 "R" V 5934 4800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 5980 4800 50  0001 C CNN
F 3 "~" H 6050 4800 50  0001 C CNN
	1    6050 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	5450 4550 6200 4550
Wire Wire Line
	6450 4650 6700 4650
Wire Wire Line
	6450 4650 6450 4800
Wire Wire Line
	6450 4800 6200 4800
Connection ~ 6450 4650
Wire Wire Line
	5900 4800 5900 4650
Wire Wire Line
	6200 4650 6200 4550
Connection ~ 6200 4550
Wire Wire Line
	6200 4550 6700 4550
$Comp
L Device:C C8
U 1 1 5C610AA8
P 6050 5100
F 0 "C8" V 6302 5100 50  0000 C CNN
F 1 "C" V 6211 5100 50  0000 C CNN
F 2 "Capacitor_THT:C_Axial_L17.0mm_D6.5mm_P20.00mm_Horizontal" H 6088 4950 50  0001 C CNN
F 3 "~" H 6050 5100 50  0001 C CNN
	1    6050 5100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R16
U 1 1 5C610AAF
P 6050 5250
F 0 "R16" V 5843 5250 50  0000 C CNN
F 1 "R" V 5934 5250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 5980 5250 50  0001 C CNN
F 3 "~" H 6050 5250 50  0001 C CNN
	1    6050 5250
	0    1    1    0   
$EndComp
Wire Wire Line
	6450 4800 6450 5250
Wire Wire Line
	6450 5250 6200 5250
Connection ~ 6450 4800
Wire Wire Line
	5900 5250 5900 5100
Wire Wire Line
	6200 5100 6550 5100
Wire Wire Line
	6550 5100 6550 4950
Wire Wire Line
	6550 4750 6700 4750
Wire Wire Line
	4850 5300 4750 5300
Wire Wire Line
	4750 5300 4750 4750
Wire Wire Line
	4750 4750 4850 4750
$Comp
L Device:LED D8
U 1 1 5C610AC0
P 4550 5100
F 0 "D8" H 4542 4845 50  0000 C CNN
F 1 "LED" H 4542 4936 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 4550 5100 50  0001 C CNN
F 3 "~" H 4550 5100 50  0001 C CNN
	1    4550 5100
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D7
U 1 1 5C610AC7
P 4550 4550
F 0 "D7" H 4542 4295 50  0000 C CNN
F 1 "LED" H 4542 4386 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 4550 4550 50  0001 C CNN
F 3 "~" H 4550 4550 50  0001 C CNN
	1    4550 4550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R8
U 1 1 5C610AD0
P 4200 5100
F 0 "R8" V 3993 5100 50  0000 C CNN
F 1 "R" V 4084 5100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 4130 5100 50  0001 C CNN
F 3 "~" H 4200 5100 50  0001 C CNN
	1    4200 5100
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5C610AD7
P 4200 4550
F 0 "R7" V 3993 4550 50  0000 C CNN
F 1 "R" V 4084 4550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 4130 4550 50  0001 C CNN
F 3 "~" H 4200 4550 50  0001 C CNN
	1    4200 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 4550 4400 4550
Wire Wire Line
	4350 5100 4400 5100
Wire Wire Line
	5450 5100 5850 5100
Wire Wire Line
	5850 5100 5850 4950
Wire Wire Line
	5850 4950 6550 4950
Connection ~ 6550 4950
Wire Wire Line
	6550 4950 6550 4750
Wire Wire Line
	6700 4850 6650 4850
Wire Wire Line
	5450 4750 5550 4750
Wire Wire Line
	5450 5300 5550 5300
Wire Wire Line
	5550 5300 5550 4750
Connection ~ 5550 4750
Connection ~ 4750 5300
Wire Wire Line
	4750 4750 4750 4200
Connection ~ 4750 4750
Wire Wire Line
	4750 3650 4750 3100
Connection ~ 4750 3100
Wire Wire Line
	4750 2550 4750 2000
Connection ~ 4750 2550
Connection ~ 4750 2000
Wire Wire Line
	5550 2000 5550 2550
Connection ~ 5550 2000
Wire Wire Line
	5550 3100 5550 3650
Connection ~ 5550 3100
Wire Wire Line
	5550 4200 5550 4750
Connection ~ 5550 4200
Wire Wire Line
	6650 4850 6650 5450
Wire Wire Line
	6650 3750 6650 4850
Connection ~ 6650 4850
Wire Wire Line
	6650 2650 6650 3750
Connection ~ 6650 3750
Wire Wire Line
	6650 1550 6650 2650
Connection ~ 6650 2650
Wire Wire Line
	6450 1950 6450 2450
Connection ~ 6450 1950
Wire Wire Line
	6450 3050 6450 3550
Connection ~ 6450 3050
Wire Wire Line
	6450 4150 6450 4650
Connection ~ 6450 4150
Wire Wire Line
	3050 3200 4050 3200
Wire Wire Line
	4050 3200 4050 2900
Wire Wire Line
	3050 3300 4050 3300
Wire Wire Line
	4050 3300 4050 3450
Wire Wire Line
	3050 3400 3950 3400
Wire Wire Line
	3950 3400 3950 4000
Wire Wire Line
	3950 4000 4050 4000
Wire Wire Line
	3050 3500 3850 3500
Wire Wire Line
	3850 3500 3850 4550
Wire Wire Line
	3850 4550 4050 4550
Wire Wire Line
	3750 3600 3750 5100
Wire Wire Line
	3750 5100 4050 5100
Wire Wire Line
	3050 3600 3750 3600
Wire Wire Line
	3050 3100 3950 3100
Wire Wire Line
	3950 3100 3950 2350
Wire Wire Line
	3950 2350 4050 2350
Wire Wire Line
	3050 3000 3850 3000
Wire Wire Line
	3850 3000 3850 1800
Wire Wire Line
	3850 1800 4050 1800
Wire Wire Line
	3050 2900 3750 2900
Wire Wire Line
	3750 2900 3750 1250
Wire Wire Line
	3750 1250 4050 1250
Wire Wire Line
	2550 5300 4750 5300
Wire Wire Line
	2750 1900 2750 1800
$Comp
L Connector:Conn_01x03_Female J3
U 1 1 5C70BDE3
P 5800 6400
F 0 "J3" V 5647 6548 50  0000 L CNN
F 1 "Conn_01x03_Female" V 5738 6548 50  0000 L CNN
F 2 "Connector_JST:JST_NV_B03P-NV_1x03_P5.00mm_Vertical" H 5800 6400 50  0001 C CNN
F 3 "~" H 5800 6400 50  0001 C CNN
	1    5800 6400
	0    1    1    0   
$EndComp
Wire Wire Line
	6650 5450 5900 5450
Wire Wire Line
	6450 5250 6450 5350
Wire Wire Line
	6450 5350 5800 5350
Connection ~ 6450 5250
$Comp
L Device:Varistor RV1
U 1 1 5C7544C5
P 5700 5550
F 0 "RV1" H 5803 5596 50  0000 L CNN
F 1 "Varistor" H 5803 5505 50  0000 L CNN
F 2 "Varistor:RV_Disc_D15.5mm_W4mm_P7.5mm" V 5630 5550 50  0001 C CNN
F 3 "~" H 5700 5550 50  0001 C CNN
	1    5700 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 5450 5900 6200
Wire Wire Line
	5800 5350 5800 5700
$Comp
L Device:Fuse F1
U 1 1 5C77CC65
P 5550 5900
F 0 "F1" H 5610 5946 50  0000 L CNN
F 1 "Fuse" H 5610 5855 50  0000 L CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Stelvio-Kontek_PTF78_Horizontal_Open" V 5480 5900 50  0001 C CNN
F 3 "~" H 5550 5900 50  0001 C CNN
	1    5550 5900
	1    0    0    -1  
$EndComp
Connection ~ 5550 5300
Wire Wire Line
	5700 6200 5550 6200
Wire Wire Line
	5700 5400 5550 5400
Wire Wire Line
	5700 5700 5800 5700
Connection ~ 5800 5700
Wire Wire Line
	5800 5700 5800 6200
NoConn ~ 3050 2700
NoConn ~ 3050 2400
NoConn ~ 3050 2300
NoConn ~ 2650 1900
Wire Wire Line
	2050 2300 2050 1250
Wire Wire Line
	2050 2400 1950 2400
Wire Wire Line
	1950 2400 1950 1250
Wire Wire Line
	2450 1900 2450 1500
Wire Wire Line
	2450 1500 2150 1500
Wire Wire Line
	2150 1500 2150 1250
Wire Wire Line
	2650 4000 3250 4000
Wire Wire Line
	3250 1400 2750 1400
Wire Wire Line
	2250 1400 2250 1250
Wire Wire Line
	2650 3900 2650 4000
Wire Wire Line
	3250 1400 3250 4000
$Comp
L Connector:Conn_01x04_Female J2
U 1 1 5C8A5D08
P 2050 1050
F 0 "J2" V 1990 762 50  0000 R CNN
F 1 "Conn_01x04_Female" V 1899 762 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 2050 1050 50  0001 C CNN
F 3 "~" H 2050 1050 50  0001 C CNN
	1    2050 1050
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C9
U 1 1 5C8A6DF2
P 2600 1500
F 0 "C9" V 2348 1500 50  0000 C CNN
F 1 "C" V 2439 1500 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 2638 1350 50  0001 C CNN
F 3 "~" H 2600 1500 50  0001 C CNN
	1    2600 1500
	0    1    1    0   
$EndComp
Connection ~ 2450 1500
Wire Wire Line
	2750 1500 2750 1400
Connection ~ 2750 1400
Wire Wire Line
	2750 1400 2250 1400
$Comp
L Connector:Conn_01x10_Female J1
U 1 1 5C8B3AE5
P 1100 4550
F 0 "J1" V 1172 4480 50  0000 C CNN
F 1 "Conn_01x10_Female" V 1263 4480 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x10_P2.54mm_Vertical" H 1100 4550 50  0001 C CNN
F 3 "~" H 1100 4550 50  0001 C CNN
	1    1100 4550
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x04_Female J8
U 1 1 5C8CB804
P 1800 4550
F 0 "J8" V 1647 4698 50  0000 L CNN
F 1 "Conn_01x04_Female" V 1738 4698 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 1800 4550 50  0001 C CNN
F 3 "~" H 1800 4550 50  0001 C CNN
	1    1800 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	2550 3900 2550 4000
Wire Wire Line
	600  1800 600  4350
Wire Wire Line
	600  1800 1600 1800
Wire Wire Line
	1600 4350 1600 1800
Connection ~ 1600 1800
Wire Wire Line
	1600 1800 2750 1800
Wire Wire Line
	1500 4350 1500 4250
Wire Wire Line
	1500 4250 1900 4250
Connection ~ 2550 4250
Wire Wire Line
	2550 4250 2550 5300
Wire Wire Line
	1900 4350 1900 4250
Connection ~ 1900 4250
Wire Wire Line
	1900 4250 2550 4250
Wire Wire Line
	2050 2500 700  2500
Wire Wire Line
	700  2500 700  4350
Wire Wire Line
	800  4350 800  2600
Wire Wire Line
	800  2600 2050 2600
Wire Wire Line
	900  4350 900  2700
Wire Wire Line
	900  2700 2050 2700
Wire Wire Line
	1000 4350 1000 2800
Wire Wire Line
	1000 2800 2050 2800
Wire Wire Line
	1100 4350 1100 2900
Wire Wire Line
	1100 2900 2050 2900
Wire Wire Line
	1200 4350 1200 3000
Wire Wire Line
	1200 3000 2050 3000
Wire Wire Line
	1300 4350 1300 3100
Wire Wire Line
	1300 3100 2050 3100
Wire Wire Line
	1400 4350 1400 3200
Wire Wire Line
	1400 3200 2050 3200
Wire Wire Line
	1700 4350 1700 3300
Wire Wire Line
	1700 3300 2050 3300
Wire Wire Line
	1800 4350 1800 3400
Wire Wire Line
	1800 3400 2050 3400
Wire Wire Line
	2550 4000 2650 4000
Connection ~ 2550 4000
Wire Wire Line
	2550 4000 2550 4250
Connection ~ 2650 4000
$Comp
L Connector:Conn_01x03_Female J9
U 1 1 5C9F75D9
P 4700 6850
F 0 "J9" H 4727 6876 50  0000 L CNN
F 1 "Conn_01x03_Female" H 4727 6785 50  0000 L CNN
F 2 "Connector_JST:JST_NV_B03P-NV_1x03_P5.00mm_Vertical" H 4700 6850 50  0001 C CNN
F 3 "~" H 4700 6850 50  0001 C CNN
	1    4700 6850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R17
U 1 1 5C9F7AC4
P 2250 7050
F 0 "R17" V 2043 7050 50  0000 C CNN
F 1 "R" V 2134 7050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 2180 7050 50  0001 C CNN
F 3 "~" H 2250 7050 50  0001 C CNN
	1    2250 7050
	0    1    1    0   
$EndComp
$Comp
L Device:C C10
U 1 1 5C9F7C0C
P 2600 6550
F 0 "C10" V 2348 6550 50  0000 C CNN
F 1 "C" V 2439 6550 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 2638 6400 50  0001 C CNN
F 3 "~" H 2600 6550 50  0001 C CNN
	1    2600 6550
	0    1    1    0   
$EndComp
$Comp
L Transistor_FET:BS170 Q1
U 1 1 5C9F7EB3
P 2700 7050
F 0 "Q1" H 2905 7096 50  0000 L CNN
F 1 "BS170" H 2905 7005 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2900 6975 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BS/BS170.pdf" H 2700 7050 50  0001 L CNN
	1    2700 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 7050 2400 6550
Wire Wire Line
	2400 6550 2450 6550
Wire Wire Line
	2500 7050 2400 7050
Connection ~ 2400 7050
Wire Wire Line
	2800 6550 2800 6850
$Comp
L Device:R R18
U 1 1 5CA22344
P 2800 6300
F 0 "R18" H 2870 6346 50  0000 L CNN
F 1 "R" H 2870 6255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 2730 6300 50  0001 C CNN
F 3 "~" H 2800 6300 50  0001 C CNN
	1    2800 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 6550 2800 6450
Connection ~ 2800 6550
Wire Wire Line
	4500 6950 4500 7450
Wire Wire Line
	4500 7450 3650 7450
Wire Wire Line
	2800 7450 2800 7250
Wire Wire Line
	2550 5300 1850 5300
Wire Wire Line
	1850 5300 1850 7450
Wire Wire Line
	1850 7450 2800 7450
Connection ~ 2550 5300
Connection ~ 2800 7450
$Comp
L Device:C C11
U 1 1 5CA4E4A5
P 3250 7050
F 0 "C11" H 3365 7096 50  0000 L CNN
F 1 "C" H 3365 7005 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 3288 6900 50  0001 C CNN
F 3 "~" H 3250 7050 50  0001 C CNN
	1    3250 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 7200 3250 7450
Connection ~ 3250 7450
Wire Wire Line
	3250 7450 2800 7450
Wire Wire Line
	3250 6900 3250 6550
Wire Wire Line
	3250 6550 2800 6550
$Comp
L Device:D_Shockley D10
U 1 1 5CA6D0D8
P 3650 7050
F 0 "D10" V 3604 7129 50  0000 L CNN
F 1 "D_Shockley" V 3695 7129 50  0000 L CNN
F 2 "Diode_THT:D_A-405_P10.16mm_Horizontal" H 3650 7050 50  0001 C CNN
F 3 "~" H 3650 7050 50  0001 C CNN
	1    3650 7050
	0    1    1    0   
$EndComp
$Comp
L Device:D_Shockley D9
U 1 1 5CA6D20B
P 3650 5750
F 0 "D9" V 3604 5829 50  0000 L CNN
F 1 "D_Shockley" V 3695 5829 50  0000 L CNN
F 2 "Diode_THT:D_A-405_P10.16mm_Horizontal" H 3650 5750 50  0001 C CNN
F 3 "~" H 3650 5750 50  0001 C CNN
	1    3650 5750
	0    1    1    0   
$EndComp
Wire Wire Line
	3650 7200 3650 7450
Connection ~ 3650 7450
Wire Wire Line
	3650 7450 3250 7450
Wire Wire Line
	3650 6900 3650 6050
$Comp
L Device:R R20
U 1 1 5CA8CF73
P 4000 6050
F 0 "R20" V 3793 6050 50  0000 C CNN
F 1 "R" V 3884 6050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 3930 6050 50  0001 C CNN
F 3 "~" H 4000 6050 50  0001 C CNN
	1    4000 6050
	0    1    1    0   
$EndComp
Wire Wire Line
	3850 6050 3650 6050
Connection ~ 3650 6050
Wire Wire Line
	3650 6050 3650 5900
Wire Wire Line
	4150 6050 4250 6050
Wire Wire Line
	4250 6050 4250 6850
Wire Wire Line
	4250 6850 4500 6850
$Comp
L Device:Fuse F2
U 1 1 5CADF478
P 4400 6250
F 0 "F2" H 4460 6296 50  0000 L CNN
F 1 "Fuse" H 4460 6205 50  0000 L CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Stelvio-Kontek_PTF78_Horizontal_Open" V 4330 6250 50  0001 C CNN
F 3 "~" H 4400 6250 50  0001 C CNN
	1    4400 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 6750 4400 6750
Wire Wire Line
	4400 6750 4400 6400
Wire Wire Line
	4400 6100 4400 5500
Wire Wire Line
	4400 5500 3650 5500
Wire Wire Line
	3650 5500 3650 5600
$Comp
L Device:R R19
U 1 1 5CB01D90
P 3250 5800
F 0 "R19" H 3320 5846 50  0000 L CNN
F 1 "R" H 3320 5755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 3180 5800 50  0001 C CNN
F 3 "~" H 3250 5800 50  0001 C CNN
	1    3250 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 5950 3250 6550
Connection ~ 3250 6550
Wire Wire Line
	3250 5650 3250 5500
Wire Wire Line
	3250 5500 3650 5500
Connection ~ 3650 5500
Wire Wire Line
	2750 1800 3650 1800
Wire Wire Line
	3650 1800 3650 5500
Connection ~ 2750 1800
Wire Wire Line
	2050 3500 1950 3500
Wire Wire Line
	1950 3500 1950 7050
Wire Wire Line
	1950 7050 2100 7050
Wire Wire Line
	2050 6050 2050 3600
Wire Wire Line
	2750 6550 2800 6550
Wire Wire Line
	2050 6050 2800 6050
Wire Wire Line
	2800 6150 2800 6050
Connection ~ 2800 6050
Wire Wire Line
	2800 6050 3650 6050
Wire Wire Line
	5550 5400 5550 5750
Wire Wire Line
	5550 6050 5550 6200
Wire Wire Line
	5550 5300 5550 5400
Connection ~ 5550 5400
Wire Wire Line
	4700 4550 4800 4550
Wire Wire Line
	4800 4550 4800 5100
Wire Wire Line
	4800 5100 4850 5100
Wire Wire Line
	4700 5100 4700 4650
Wire Wire Line
	4700 4650 4850 4650
Wire Wire Line
	4850 4650 4850 4550
Connection ~ 4750 3650
Connection ~ 4750 4200
Wire Wire Line
	4750 4200 4750 3650
Wire Wire Line
	4700 4000 4700 3550
Wire Wire Line
	4700 3550 4850 3550
Wire Wire Line
	4700 3450 4800 3450
Wire Wire Line
	4800 3450 4800 4000
Wire Wire Line
	4800 4000 4850 4000
Wire Wire Line
	4850 3550 4850 3450
Wire Wire Line
	4700 2900 4700 2450
Wire Wire Line
	4700 2450 4850 2450
Wire Wire Line
	4850 2450 4850 2350
Wire Wire Line
	4700 2350 4800 2350
Wire Wire Line
	4800 2350 4800 2900
Wire Wire Line
	4800 2900 4850 2900
Wire Wire Line
	4700 1800 4700 1350
Wire Wire Line
	4700 1350 4850 1350
Wire Wire Line
	4850 1350 4850 1250
Wire Wire Line
	4700 1250 4800 1250
Wire Wire Line
	4800 1250 4800 1800
Wire Wire Line
	4800 1800 4850 1800
$EndSCHEMATC

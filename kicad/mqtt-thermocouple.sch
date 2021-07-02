EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 2
Title "MQTT Thermocouple"
Date "2021-07-02"
Rev "A"
Comp "University of Wisconsin-Madison"
Comment1 "Department of Chemistry"
Comment2 "Instrument Shop"
Comment3 "Blaise Thompson"
Comment4 "blaise.thompson@wisc.edu"
$EndDescr
$Comp
L Connector:Barrel_Jack J1
U 1 1 5FCA9980
P 1250 7000
F 0 "J1" H 1307 7325 50  0000 C CNN
F 1 "Barrel_Jack" H 1307 7234 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 1300 6960 50  0001 C CNN
F 3 "~" H 1300 6960 50  0001 C CNN
	1    1250 7000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5FCADFB7
P 6050 2950
F 0 "#PWR0101" H 6050 2700 50  0001 C CNN
F 1 "GND" H 6055 2777 50  0000 C CNN
F 2 "" H 6050 2950 50  0001 C CNN
F 3 "" H 6050 2950 50  0001 C CNN
	1    6050 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5FCAF4AD
P 5850 2950
F 0 "#PWR0102" H 5850 2700 50  0001 C CNN
F 1 "GND" H 5855 2777 50  0000 C CNN
F 2 "" H 5850 2950 50  0001 C CNN
F 3 "" H 5850 2950 50  0001 C CNN
	1    5850 2950
	1    0    0    -1  
$EndComp
$Comp
L VXO7805-500-M:VXO7805-500-M PS1
U 1 1 5FCB3C49
P 3700 6900
F 0 "PS1" H 3700 7367 50  0000 C CNN
F 1 "VXO7805-500-M" H 3700 7276 50  0000 C CNN
F 2 "CONV_VXO7805-500-M" H 3700 6900 50  0001 L BNN
F 3 "1.0" H 3700 6900 50  0001 L BNN
F 4 "3.5 mm" H 3700 6900 50  0001 L BNN "Field4"
F 5 "CUI Inc." H 3700 6900 50  0001 L BNN "Field5"
F 6 "Manufacturer Recommendations" H 3700 6900 50  0001 L BNN "Field6"
	1    3700 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R1
U 1 1 5FCB68D3
P 1500 5250
F 0 "R1" H 1568 5296 50  0000 L CNN
F 1 "1k" H 1568 5205 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 1540 5240 50  0001 C CNN
F 3 "~" H 1500 5250 50  0001 C CNN
	1    1500 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5FCB6F3B
P 1500 5550
F 0 "D1" V 1539 5432 50  0000 R CNN
F 1 "LED" V 1448 5432 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1500 5550 50  0001 C CNN
F 3 "~" H 1500 5550 50  0001 C CNN
	1    1500 5550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R2
U 1 1 5FCBB32C
P 9300 3350
F 0 "R2" H 9368 3396 50  0000 L CNN
F 1 "1k" H 9368 3305 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 9340 3340 50  0001 C CNN
F 3 "~" H 9300 3350 50  0001 C CNN
	1    9300 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5FCBB332
P 9300 3650
F 0 "D2" V 9339 3532 50  0000 R CNN
F 1 "LED" V 9248 3532 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9300 3650 50  0001 C CNN
F 3 "~" H 9300 3650 50  0001 C CNN
	1    9300 3650
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5FCC2468
P 1500 5700
F 0 "#PWR0104" H 1500 5450 50  0001 C CNN
F 1 "GND" H 1505 5527 50  0000 C CNN
F 2 "" H 1500 5700 50  0001 C CNN
F 3 "" H 1500 5700 50  0001 C CNN
	1    1500 5700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5FCC5CEE
P 9300 4200
F 0 "#PWR0105" H 9300 3950 50  0001 C CNN
F 1 "GND" H 9305 4027 50  0000 C CNN
F 2 "" H 9300 4200 50  0001 C CNN
F 3 "" H 9300 4200 50  0001 C CNN
	1    9300 4200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0109
U 1 1 5FCD32B3
P 4500 6700
F 0 "#PWR0109" H 4500 6550 50  0001 C CNN
F 1 "+5V" H 4515 6873 50  0000 C CNN
F 2 "" H 4500 6700 50  0001 C CNN
F 3 "" H 4500 6700 50  0001 C CNN
	1    4500 6700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0110
U 1 1 5FCD39ED
P 9300 3200
F 0 "#PWR0110" H 9300 3050 50  0001 C CNN
F 1 "+5V" H 9315 3373 50  0000 C CNN
F 2 "" H 9300 3200 50  0001 C CNN
F 3 "" H 9300 3200 50  0001 C CNN
	1    9300 3200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0111
U 1 1 5FCD4670
P 1500 5100
F 0 "#PWR0111" H 1500 4950 50  0001 C CNN
F 1 "+5V" H 1515 5273 50  0000 C CNN
F 2 "" H 1500 5100 50  0001 C CNN
F 3 "" H 1500 5100 50  0001 C CNN
	1    1500 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 1950 5350 1950
$Comp
L Device:CP1 C1
U 1 1 5FCFDB85
P 2000 6900
F 0 "C1" H 2115 6946 50  0000 L CNN
F 1 "100u" H 2115 6855 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_Tantal_D7.0mm_P2.50mm" H 2000 6900 50  0001 C CNN
F 3 "~" H 2000 6900 50  0001 C CNN
	1    2000 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5FD016D7
P 2500 6900
F 0 "C2" H 2615 6946 50  0000 L CNN
F 1 "10u" H 2615 6855 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 2538 6750 50  0001 C CNN
F 3 "~" H 2500 6900 50  0001 C CNN
	1    2500 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5FD01B31
P 4500 6900
F 0 "C3" H 4615 6946 50  0000 L CNN
F 1 "22u" H 4615 6855 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 4538 6750 50  0001 C CNN
F 3 "~" H 4500 6900 50  0001 C CNN
	1    4500 6900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5FD04633
P 4500 7150
F 0 "#PWR0112" H 4500 6900 50  0001 C CNN
F 1 "GND" H 4505 6977 50  0000 C CNN
F 2 "" H 4500 7150 50  0001 C CNN
F 3 "" H 4500 7150 50  0001 C CNN
	1    4500 7150
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0113
U 1 1 5FD41E13
P 6150 1350
F 0 "#PWR0113" H 6150 1200 50  0001 C CNN
F 1 "+3.3V" H 6165 1523 50  0000 C CNN
F 2 "" H 6150 1350 50  0001 C CNN
F 3 "" H 6150 1350 50  0001 C CNN
	1    6150 1350
	1    0    0    -1  
$EndComp
NoConn ~ 5750 1350
$Comp
L power:+5V #PWR0114
U 1 1 5FD42BD6
P 5950 1350
F 0 "#PWR0114" H 5950 1200 50  0001 C CNN
F 1 "+5V" H 5965 1523 50  0000 C CNN
F 2 "" H 5950 1350 50  0001 C CNN
F 3 "" H 5950 1350 50  0001 C CNN
	1    5950 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 2550 6650 2550
Wire Wire Line
	6650 2550 6650 3200
NoConn ~ 6550 1850
NoConn ~ 6550 1750
NoConn ~ 5350 1850
NoConn ~ 5350 2050
NoConn ~ 5350 2250
NoConn ~ 5350 2350
NoConn ~ 5350 2550
Wire Wire Line
	7650 4000 9000 4000
Connection ~ 2000 6700
NoConn ~ 3000 6900
Wire Wire Line
	1550 7100 2000 7100
Connection ~ 2000 7100
Wire Wire Line
	2000 7100 2500 7100
Connection ~ 2500 7100
Wire Wire Line
	2500 7100 3000 7100
Wire Wire Line
	4500 7050 4500 7150
Wire Wire Line
	4500 6750 4500 6700
Wire Wire Line
	4500 6700 4400 6700
Wire Wire Line
	2500 7050 2500 7100
Wire Wire Line
	2000 7050 2000 7100
Wire Wire Line
	2000 6750 2000 6700
Wire Wire Line
	2000 6700 2500 6700
Wire Wire Line
	2500 6700 2500 6750
Connection ~ 2500 6700
Wire Wire Line
	2500 6700 3000 6700
Connection ~ 4500 6700
Wire Wire Line
	1550 6900 1650 6900
Wire Wire Line
	1650 6900 1650 6700
Wire Wire Line
	1650 6700 2000 6700
$Comp
L power:GND #PWR0115
U 1 1 5FDB515F
P 3000 7100
F 0 "#PWR0115" H 3000 6850 50  0001 C CNN
F 1 "GND" H 3005 6927 50  0000 C CNN
F 2 "" H 3000 7100 50  0001 C CNN
F 3 "" H 3000 7100 50  0001 C CNN
	1    3000 7100
	1    0    0    -1  
$EndComp
Wire Notes Line
	1000 7500 1000 6250
Wire Notes Line
	4800 6250 4800 7500
Wire Notes Line
	4800 7500 1000 7500
Wire Notes Line
	1000 6250 4800 6250
Wire Notes Line
	1000 4750 1000 6000
Wire Notes Line
	1000 6000 2000 6000
Wire Notes Line
	2000 6000 2000 4750
Wire Notes Line
	2000 4750 1000 4750
Text Notes 1050 6400 0    50   ~ 0
POWER
Text Notes 1050 4900 0    50   ~ 0
POWER\n
Text Notes 1050 5000 0    50   ~ 0
LED\n
Wire Notes Line
	8500 2750 10000 2750
Wire Notes Line
	10000 2750 10000 4500
Wire Notes Line
	10000 4500 8500 4500
Wire Notes Line
	8500 4500 8500 2750
Text Notes 8550 3000 0    50   ~ 0
LED\n
Text Notes 8550 2900 0    50   ~ 0
ONLINE
$Comp
L Device:C C4
U 1 1 606E9B06
P 1500 2150
F 0 "C4" H 1615 2196 50  0000 L CNN
F 1 "1n" H 1615 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 1538 2000 50  0001 C CNN
F 3 "~" H 1500 2150 50  0001 C CNN
	1    1500 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1900 1500 1900
Wire Wire Line
	1500 1900 1500 2000
Wire Wire Line
	2150 1800 1150 1800
Wire Wire Line
	1150 1800 1150 2000
NoConn ~ 2150 2300
NoConn ~ 2150 2400
NoConn ~ 2150 2500
NoConn ~ 2150 2600
$Comp
L power:GND #PWR02
U 1 1 60700853
P 3550 3000
F 0 "#PWR02" H 3550 2750 50  0001 C CNN
F 1 "GND" V 3555 2872 50  0000 R CNN
F 2 "" H 3550 3000 50  0001 C CNN
F 3 "" H 3550 3000 50  0001 C CNN
	1    3550 3000
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR01
U 1 1 6070599D
P 3550 1600
F 0 "#PWR01" H 3550 1450 50  0001 C CNN
F 1 "+3.3V" V 3565 1728 50  0000 L CNN
F 2 "" H 3550 1600 50  0001 C CNN
F 3 "" H 3550 1600 50  0001 C CNN
	1    3550 1600
	0    1    1    0   
$EndComp
NoConn ~ 3550 2200
NoConn ~ 3550 2300
NoConn ~ 3550 2400
NoConn ~ 3550 2500
Text Notes 1050 1450 0    50   ~ 0
AUTO-RESET TIMER\n(ONCE EVERY 2.5 HOUR)
$Comp
L CD4060BM96:CD4060BM96 U2
U 1 1 606E1341
P 2850 2300
F 0 "U2" H 2850 3270 50  0000 C CNN
F 1 "CD4060BM96" H 2850 3179 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 2850 2300 50  0001 L BNN
F 3 "" H 2850 2300 50  0001 L BNN
	1    2850 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 3200 6650 3200
$Comp
L Device:R_US R7
U 1 1 6081A7E5
P 4300 2250
F 0 "R7" H 4368 2296 50  0000 L CNN
F 1 "4.7k" H 4368 2205 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 4340 2240 50  0001 C CNN
F 3 "~" H 4300 2250 50  0001 C CNN
	1    4300 2250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR03
U 1 1 6081B0CC
P 4300 2100
F 0 "#PWR03" H 4300 1950 50  0001 C CNN
F 1 "+3.3V" H 4315 2273 50  0000 C CNN
F 2 "" H 4300 2100 50  0001 C CNN
F 3 "" H 4300 2100 50  0001 C CNN
	1    4300 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 6081B9B2
P 4300 2800
F 0 "#PWR04" H 4300 2550 50  0001 C CNN
F 1 "GND" H 4305 2627 50  0000 C CNN
F 2 "" H 4300 2800 50  0001 C CNN
F 3 "" H 4300 2800 50  0001 C CNN
	1    4300 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R8
U 1 1 60836A20
P 3200 3500
F 0 "R8" V 3405 3500 50  0000 C CNN
F 1 "4.7k" V 3314 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 3240 3490 50  0001 C CNN
F 3 "~" H 3200 3500 50  0001 C CNN
	1    3200 3500
	0    1    -1   0   
$EndComp
$Comp
L Device:C C5
U 1 1 608374EB
P 2350 3650
F 0 "C5" H 2465 3696 50  0000 L CNN
F 1 "1u" H 2465 3605 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 2388 3500 50  0001 C CNN
F 3 "~" H 2350 3650 50  0001 C CNN
	1    2350 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 3500 2150 2800
$Comp
L power:GND #PWR05
U 1 1 60838FEF
P 2350 3800
F 0 "#PWR05" H 2350 3550 50  0001 C CNN
F 1 "GND" H 2355 3627 50  0000 C CNN
F 2 "" H 2350 3800 50  0001 C CNN
F 3 "" H 2350 3800 50  0001 C CNN
	1    2350 3800
	1    0    0    -1  
$EndComp
Wire Notes Line
	1000 1250 1000 4250
Wire Wire Line
	5250 1950 5250 2400
Wire Wire Line
	3550 2600 3900 2600
Wire Wire Line
	4300 2400 5250 2400
Connection ~ 5250 2400
Wire Wire Line
	5250 2400 5250 3200
Wire Wire Line
	3900 3500 3900 2600
Connection ~ 3900 2600
Wire Wire Line
	3900 2600 4000 2600
Wire Wire Line
	2150 3500 2350 3500
Connection ~ 2350 3500
Wire Wire Line
	3350 3500 3900 3500
Wire Notes Line
	1000 1250 4750 1250
Wire Notes Line
	4750 1250 4750 4250
Wire Notes Line
	4750 4250 1000 4250
Wire Wire Line
	2350 3500 2650 3500
Connection ~ 2650 3500
Wire Wire Line
	2650 3500 3050 3500
$Comp
L power:GND #PWR06
U 1 1 60872FE9
P 2650 3800
F 0 "#PWR06" H 2650 3550 50  0001 C CNN
F 1 "GND" H 2655 3627 50  0000 C CNN
F 2 "" H 2650 3800 50  0001 C CNN
F 3 "" H 2650 3800 50  0001 C CNN
	1    2650 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 2000 2150 2000
$Comp
L Device:R_US R6
U 1 1 606F2EF9
P 1850 2150
F 0 "R6" H 1782 2104 50  0000 R CNN
F 1 "1M" H 1782 2195 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 1890 2140 50  0001 C CNN
F 3 "~" H 1850 2150 50  0001 C CNN
	1    1850 2150
	-1   0    0    1   
$EndComp
NoConn ~ 2150 2200
$Comp
L Device:Q_NMOS_GSD Q2
U 1 1 607548BC
P 4200 2600
F 0 "Q2" H 4404 2646 50  0000 L CNN
F 1 "2N7000" H 4404 2555 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 4400 2700 50  0001 C CNN
F 3 "~" H 4200 2600 50  0001 C CNN
	1    4200 2600
	1    0    0    -1  
$EndComp
Connection ~ 4300 2400
$Comp
L Device:Q_NMOS_GSD Q1
U 1 1 6075743A
P 9200 4000
F 0 "Q1" H 9404 4046 50  0000 L CNN
F 1 "2N7000" H 9404 3955 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 9400 4100 50  0001 C CNN
F 3 "~" H 9200 4000 50  0001 C CNN
	1    9200 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 2300 1500 2300
Connection ~ 1500 2300
Wire Wire Line
	1500 2300 1850 2300
$Comp
L Device:R_US R5
U 1 1 606F2A08
P 1150 2150
F 0 "R5" H 1082 2104 50  0000 R CNN
F 1 "470k" H 1082 2195 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 1190 2140 50  0001 C CNN
F 3 "~" H 1150 2150 50  0001 C CNN
	1    1150 2150
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R9
U 1 1 60872B34
P 2650 3650
F 0 "R9" H 2718 3696 50  0000 L CNN
F 1 "1M" H 2718 3605 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 2690 3640 50  0001 C CNN
F 3 "~" H 2650 3650 50  0001 C CNN
	1    2650 3650
	1    0    0    -1  
$EndComp
$Comp
L MCP9600-E_MX:MCP9600-E_MX U1
U 1 1 60DF5BF7
P 7250 5150
F 0 "U1" H 7250 6017 50  0000 C CNN
F 1 "MCP9600-E_MX" H 7250 5926 50  0000 C CNN
F 2 "footprints:MX" H 7250 5150 50  0001 L BNN
F 3 "" H 7250 5150 50  0001 L BNN
F 4 "IPC-7351B" H 7250 5150 50  0001 L BNN "STANDARD"
F 5 "1.00mm" H 7250 5150 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 6 "Microchip" H 7250 5150 50  0001 L BNN "MANUFACTURER"
F 7 "F" H 7250 5150 50  0001 L BNN "PARTREV"
	1    7250 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:Thermocouple TC1
U 1 1 60E04E9D
P 6000 4800
F 0 "TC1" H 5973 5125 50  0000 C CNN
F 1 "Thermocouple" H 5973 5034 50  0000 C CNN
F 2 "footprints:K1X-FEMX-CON-FP-X-PCCX" H 5425 4850 50  0001 C CNN
F 3 "~" H 5425 4850 50  0001 C CNN
	1    6000 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4900 6550 4900
Wire Wire Line
	6550 4900 6550 4850
Wire Wire Line
	6100 4700 6550 4700
Wire Wire Line
	6550 4700 6550 4750
$Comp
L power:GND #PWR0103
U 1 1 60E22049
P 7950 5650
F 0 "#PWR0103" H 7950 5400 50  0001 C CNN
F 1 "GND" V 7955 5522 50  0000 R CNN
F 2 "" H 7950 5650 50  0001 C CNN
F 3 "" H 7950 5650 50  0001 C CNN
	1    7950 5650
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0106
U 1 1 60E254EE
P 7950 4550
F 0 "#PWR0106" H 7950 4400 50  0001 C CNN
F 1 "+3.3V" V 7965 4678 50  0000 L CNN
F 2 "" H 7950 4550 50  0001 C CNN
F 3 "" H 7950 4550 50  0001 C CNN
	1    7950 4550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 60E2599D
P 6550 5050
F 0 "#PWR0107" H 6550 4800 50  0001 C CNN
F 1 "GND" V 6555 4922 50  0000 R CNN
F 2 "" H 6550 5050 50  0001 C CNN
F 3 "" H 6550 5050 50  0001 C CNN
	1    6550 5050
	0    1    1    0   
$EndComp
NoConn ~ 7950 4950
NoConn ~ 7950 5050
NoConn ~ 7950 5150
NoConn ~ 7950 5250
NoConn ~ 7950 5550
Text GLabel 6550 5250 0    50   Input ~ 0
SCL
Text GLabel 6550 5350 0    50   BiDi ~ 0
SDA
Text GLabel 6550 1950 2    50   BiDi ~ 0
SDA
Text GLabel 6550 2050 2    50   Output ~ 0
SCL
Text GLabel 8500 1200 0    50   Input ~ 0
MOSI
Text GLabel 8500 1350 0    50   Input ~ 0
SCK
$Sheet
S 8500 1050 1000 1450
U 60E5DD48
F0 "display" 50
F1 "7seg.sch" 50
F2 "DIN" I L 8500 1200 50 
F3 "CLK" I L 8500 1350 50 
F4 "~CS~" I L 8500 1500 50 
$EndSheet
Text GLabel 6550 2250 2    50   Output ~ 0
MOSI
$Comp
L MCU_Module:Adafruit_HUZZAH_ESP8266_breakout A1
U 1 1 5FCA8814
P 5950 2150
F 0 "A1" H 5450 2900 50  0000 C CNN
F 1 "Adafruit_HUZZAH_ESP8266_breakout" H 5950 3300 50  0000 C CNN
F 2 "Module:Adafruit_HUZZAH_ESP8266_breakout" H 6150 2750 50  0001 C CNN
F 3 "https://www.adafruit.com/product/2471" H 6250 2850 50  0001 C CNN
	1    5950 2150
	1    0    0    -1  
$EndComp
Text GLabel 6550 2350 2    50   Output ~ 0
SCK
Wire Wire Line
	6550 2150 8000 2150
Wire Wire Line
	8000 2150 8000 1500
Wire Wire Line
	8000 1500 8500 1500
Wire Wire Line
	6550 2450 7650 2450
Wire Wire Line
	7650 2450 7650 4000
$EndSCHEMATC

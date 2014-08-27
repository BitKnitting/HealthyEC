EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:LettuceBuddy
LIBS:BenchBuddy
LIBS:HealthyEC-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 6
Title ""
Date "27 aug 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L C C?
U 1 1 53EF4561
P 9200 2850
F 0 "C?" H 9200 2950 40  0000 L CNN
F 1 "100n" H 9206 2765 40  0000 L CNN
F 2 "~" H 9238 2700 30  0000 C CNN
F 3 "~" H 9200 2850 60  0000 C CNN
	1    9200 2850
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 53EF456E
P 7800 1400
F 0 "C?" H 7800 1500 40  0000 L CNN
F 1 "100n" H 7806 1315 40  0000 L CNN
F 2 "~" H 7838 1250 30  0000 C CNN
F 3 "~" H 7800 1400 60  0000 C CNN
	1    7800 1400
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 53EF4576
P 9750 2900
F 0 "R?" V 9830 2900 40  0000 C CNN
F 1 "1K" V 9757 2901 40  0000 C CNN
F 2 "~" V 9680 2900 30  0000 C CNN
F 3 "~" H 9750 2900 30  0000 C CNN
	1    9750 2900
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 53EF4585
P 7150 1400
F 0 "R?" V 7230 1400 40  0000 C CNN
F 1 "1K" V 7157 1401 40  0000 C CNN
F 2 "~" V 7080 1400 30  0000 C CNN
F 3 "~" H 7150 1400 30  0000 C CNN
	1    7150 1400
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 53EF5282
P 8750 3200
F 0 "R?" V 8830 3200 40  0000 C CNN
F 1 "10K" V 8757 3201 40  0000 C CNN
F 2 "~" V 8680 3200 30  0000 C CNN
F 3 "~" H 8750 3200 30  0000 C CNN
	1    8750 3200
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 53EF52D8
P 7950 3400
F 0 "R?" V 8030 3400 40  0000 C CNN
F 1 "22K" V 7957 3401 40  0000 C CNN
F 2 "~" V 7880 3400 30  0000 C CNN
F 3 "~" H 7950 3400 30  0000 C CNN
	1    7950 3400
	0    -1   -1   0   
$EndComp
$Comp
L DIODE D?
U 1 1 53EF5331
P 7500 3650
F 0 "D?" H 7500 3750 40  0000 C CNN
F 1 "DIODE" H 7500 3550 40  0000 C CNN
F 2 "~" H 7500 3650 60  0000 C CNN
F 3 "~" H 7500 3650 60  0000 C CNN
	1    7500 3650
	1    0    0    -1  
$EndComp
$Comp
L DIODE D?
U 1 1 53EF533E
P 7500 3950
F 0 "D?" H 7500 4050 40  0000 C CNN
F 1 "DIODE" H 7500 3850 40  0000 C CNN
F 2 "~" H 7500 3950 60  0000 C CNN
F 3 "~" H 7500 3950 60  0000 C CNN
	1    7500 3950
	-1   0    0    1   
$EndComp
$Comp
L C C?
U 1 1 53EF5358
P 8050 3800
F 0 "C?" H 8050 3900 40  0000 L CNN
F 1 "100n" H 8056 3715 40  0000 L CNN
F 2 "~" H 8088 3650 30  0000 C CNN
F 3 "~" H 8050 3800 60  0000 C CNN
	1    8050 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9200 2650 9200 2550
Wire Wire Line
	9750 2550 9750 2650
Wire Wire Line
	9200 3050 9200 3250
Wire Wire Line
	9200 3250 9750 3250
Wire Wire Line
	9750 3250 9750 3150
Wire Wire Line
	8200 1400 8200 2050
Wire Wire Line
	8200 1400 8000 1400
Connection ~ 8200 1650
Wire Wire Line
	8300 2250 8300 3800
Wire Wire Line
	9000 3200 9200 3200
Connection ~ 9200 3200
Wire Wire Line
	8300 3400 8200 3400
Wire Wire Line
	7700 3650 7750 3650
Wire Wire Line
	7750 3650 7750 3950
Wire Wire Line
	7750 3950 7700 3950
Wire Wire Line
	7850 3800 7750 3800
Connection ~ 7750 3800
Wire Wire Line
	8300 3800 8250 3800
Connection ~ 8300 3400
Text HLabel 1600 5000 0    60   Output ~ 0
EC_GND
$Comp
L R R?
U 1 1 53F73261
P 1950 2400
F 0 "R?" V 2030 2400 40  0000 C CNN
F 1 "10K" V 1957 2401 40  0000 C CNN
F 2 "~" V 1880 2400 30  0000 C CNN
F 3 "~" H 1950 2400 30  0000 C CNN
	1    1950 2400
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 53F73270
P 1600 2350
F 0 "C?" H 1600 2450 40  0000 L CNN
F 1 "1u" H 1606 2265 40  0000 L CNN
F 2 "~" H 1638 2200 30  0000 C CNN
F 3 "~" H 1600 2350 60  0000 C CNN
	1    1600 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 2700 1950 2650
Wire Wire Line
	1600 2700 1950 2700
Wire Wire Line
	1600 2700 1600 2550
Text HLabel 10850 300  0    60   Output ~ 0
EC_Voltage
Text HLabel 10800 -1100 0    60   Output ~ 0
V+_WallWart
Text Notes 7950 1100 0    79   ~ 0
Generate Low Distortion Sine Wave
$Comp
L R R?
U 1 1 53F9B9A2
P 9400 4800
F 0 "R?" V 9480 4800 40  0000 C CNN
F 1 "R" V 9407 4801 40  0000 C CNN
F 2 "~" V 9330 4800 30  0000 C CNN
F 3 "~" H 9400 4800 30  0000 C CNN
	1    9400 4800
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 53F9B9AF
P 9400 5750
F 0 "R?" V 9480 5750 40  0000 C CNN
F 1 "R" V 9407 5751 40  0000 C CNN
F 2 "~" V 9330 5750 30  0000 C CNN
F 3 "~" H 9400 5750 30  0000 C CNN
	1    9400 5750
	1    0    0    -1  
$EndComp
Text HLabel 8850 4500 0    60   Output ~ 0
V+_WallWart
Wire Wire Line
	8850 4500 9400 4500
Wire Wire Line
	9400 4500 9400 4550
Wire Wire Line
	9400 5050 9400 5500
Wire Wire Line
	9400 6000 9400 6250
Text HLabel 9000 5300 0    60   Output ~ 0
VGND
Wire Wire Line
	9000 5300 9400 5300
Connection ~ 9400 5300
Text Notes 7750 4950 0    79   ~ 0
Virtual Ground
Text HLabel 9350 3700 0    60   Output ~ 0
VGND
Wire Wire Line
	9350 3700 9500 3700
Wire Wire Line
	9500 3700 9500 3250
Connection ~ 9500 3250
Text HLabel 1550 3100 0    60   Output ~ 0
VGND
Wire Wire Line
	1800 2700 1800 3100
Wire Wire Line
	1800 3100 1550 3100
Connection ~ 1800 2700
Text HLabel 2950 5000 2    60   Output ~ 0
VGND
Wire Wire Line
	2950 5000 1600 5000
Text HLabel 1650 5550 0    60   Output ~ 0
EC_Probe_GND
Text HLabel 3050 5550 2    60   Output ~ 0
VGND
Wire Wire Line
	1650 5550 3050 5550
$Comp
L MCP6244 U?
U 1 1 53FE2733
P 5050 1900
F 0 "U?" H 6100 1800 60  0000 L CNN
F 1 "MCP6244" H 6100 1500 60  0000 L CNN
F 2 "~" H 6100 1650 60  0000 C CNN
F 3 "~" H 6100 1650 60  0000 C CNN
	1    5050 1900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7800 2250 8300 2250
Wire Wire Line
	8300 2550 9750 2550
Connection ~ 8300 2550
Connection ~ 9200 2550
Wire Wire Line
	8500 3200 8300 3200
Connection ~ 8300 3200
Wire Wire Line
	6900 2150 7100 2150
Wire Wire Line
	7000 2150 7000 3800
Wire Wire Line
	7300 3650 7250 3650
Wire Wire Line
	7250 3650 7250 3950
Wire Wire Line
	7250 3950 7300 3950
Wire Wire Line
	7000 3800 7250 3800
Connection ~ 7250 3800
Wire Wire Line
	7700 3400 7000 3400
Connection ~ 7000 3400
Wire Wire Line
	8200 2050 7800 2050
Wire Wire Line
	7600 1400 7400 1400
Wire Wire Line
	6900 1400 6900 2150
Connection ~ 7000 2150
$Comp
L AGND #PWR?
U 1 1 53F9BA53
P 9400 6250
F 0 "#PWR?" H 9400 6250 40  0001 C CNN
F 1 "AGND" H 9400 6180 50  0000 C CNN
F 2 "" H 9400 6250 60  0000 C CNN
F 3 "" H 9400 6250 60  0000 C CNN
	1    9400 6250
	1    0    0    -1  
$EndComp
Wire Notes Line
	10200 4150 10200 950 
Wire Notes Line
	6850 4150 6850 950 
Wire Wire Line
	6850 950  10200 950 
Wire Notes Line
	10200 4300 7500 4300
Wire Notes Line
	7500 4300 7500 6700
Wire Notes Line
	7500 6700 10200 6700
Wire Notes Line
	10200 6700 10200 4300
$Comp
L R R?
U 1 1 53FE2F49
P 6100 1450
F 0 "R?" V 6180 1450 40  0000 C CNN
F 1 "100K" V 6107 1451 40  0000 C CNN
F 2 "~" V 6030 1450 30  0000 C CNN
F 3 "~" H 6100 1450 30  0000 C CNN
	1    6100 1450
	0    -1   -1   0   
$EndComp
Text HLabel 6050 3100 2    60   Input ~ 0
EC_Probe
Wire Wire Line
	6600 2250 6700 2250
Wire Wire Line
	6650 2050 6900 2050
Connection ~ 6900 2050
$Comp
L R R?
U 1 1 53FE30E7
P 5700 1000
F 0 "R?" V 5780 1000 40  0000 C CNN
F 1 "47K" V 5707 1001 40  0000 C CNN
F 2 "~" V 5630 1000 30  0000 C CNN
F 3 "~" H 5700 1000 30  0000 C CNN
	1    5700 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 1450 5700 1450
Wire Wire Line
	5700 1250 5700 1800
Wire Wire Line
	6350 1450 6900 1450
Connection ~ 6900 1450
Wire Wire Line
	5700 1800 6750 1800
Wire Wire Line
	6750 1800 6750 2050
Connection ~ 6750 2050
Connection ~ 5700 1450
Wire Wire Line
	5700 750  5700 700 
Wire Wire Line
	5700 700  5550 700 
Text HLabel 5550 700  0    60   Output ~ 0
VGND
Wire Notes Line
	5050 550  6750 550 
Wire Notes Line
	6800 550  6800 3300
Wire Notes Line
	4700 3500 6800 3500
Wire Notes Line
	5700 1900 5700 3500
Wire Notes Line
	5700 1900 4700 1900
Wire Notes Line
	5050 1900 5050 550 
Text Notes 5850 700  0    79   ~ 0
Read EC Probe
Text Notes 6650 2000 0    60   ~ 0
.2 VPP
Wire Notes Line
	4700 1900 4700 3500
$Comp
L DIODE D?
U 1 1 53FE361D
P 2900 2150
F 0 "D?" H 2900 2250 40  0000 C CNN
F 1 "DIODE" H 2900 2050 40  0000 C CNN
F 2 "~" H 2900 2150 60  0000 C CNN
F 3 "~" H 2900 2150 60  0000 C CNN
	1    2900 2150
	-1   0    0    1   
$EndComp
Wire Wire Line
	3100 2150 3650 2150
Text HLabel 1550 1000 0    60   Output ~ 0
V+_WallWart
Wire Wire Line
	4100 1850 4100 1000
Wire Wire Line
	4100 1000 1550 1000
Wire Wire Line
	4100 2450 4100 2800
Wire Wire Line
	4100 2800 3900 2800
Text HLabel 3900 2800 0    60   Output ~ 0
VGND
$Comp
L R R?
U 1 1 53FE37D4
P 5250 2900
F 0 "R?" V 5330 2900 40  0000 C CNN
F 1 "10K" V 5257 2901 40  0000 C CNN
F 2 "~" V 5180 2900 30  0000 C CNN
F 3 "~" H 5250 2900 30  0000 C CNN
	1    5250 2900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5550 2500 5550 2250
Wire Wire Line
	4850 2500 5550 2500
Wire Wire Line
	4850 2500 4850 2900
Wire Wire Line
	4850 2900 5000 2900
Wire Wire Line
	5550 2050 5600 2050
Wire Wire Line
	5600 2050 5600 3150
Wire Wire Line
	5600 2900 5500 2900
Text Notes 5050 3400 0    79   ~ 0
Not used
Text HLabel 5400 3150 0    60   Output ~ 0
VGND
Wire Wire Line
	5600 3150 5400 3150
Connection ~ 5600 2900
Wire Notes Line
	6800 3500 6800 3250
Wire Wire Line
	5950 1700 5950 3100
Wire Wire Line
	5950 1700 4450 1700
Wire Wire Line
	4450 1700 4450 2050
Wire Wire Line
	4450 2050 4350 2050
Wire Wire Line
	1300 2150 2700 2150
Wire Wire Line
	2500 2150 2500 2950
Wire Wire Line
	2500 2950 4450 2950
Wire Wire Line
	4450 2950 4450 2250
Wire Wire Line
	4450 2250 4350 2250
Connection ~ 2500 2150
Connection ~ 1950 2150
Connection ~ 1600 2150
Text HLabel 1300 2150 0    60   Output ~ 0
EC_Voltage
Wire Notes Line
	2250 1600 4400 1600
Wire Notes Line
	4400 1600 4400 3300
Wire Notes Line
	4400 3300 2250 3300
Wire Notes Line
	2250 3300 2250 1600
Text Notes 1150 1550 0    79   ~ 0
Convert the peak of the EC Sine Wave to Digital Value\n
Wire Wire Line
	6700 2250 6700 2750
$Comp
L R R?
U 1 1 53FE43B7
P 6300 2750
F 0 "R?" V 6380 2750 40  0000 C CNN
F 1 "1K" V 6307 2751 40  0000 C CNN
F 2 "~" V 6230 2750 30  0000 C CNN
F 3 "~" H 6300 2750 30  0000 C CNN
	1    6300 2750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6700 2750 6550 2750
Wire Wire Line
	5950 2750 6050 2750
Connection ~ 5950 2150
Wire Wire Line
	5950 3100 6050 3100
Connection ~ 5950 2750
Wire Notes Line
	10200 4150 6850 4150
$EndSCHEMATC

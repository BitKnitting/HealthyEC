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
Date "24 aug 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCP6241 U1
U 1 1 53ECAB65
P 8400 3050
F 0 "U1" H 8400 3200 60  0000 L CNN
F 1 "OP AMP" H 8400 2900 60  0000 L CNN
F 2 "~" H 8400 3050 60  0000 C CNN
F 3 "~" H 8400 3050 60  0000 C CNN
	1    8400 3050
	-1   0    0    -1  
$EndComp
Text Notes 2800 850  0    79   ~ 0
*1 TBD: Op Amp for Wien Bridge Oscillator
$Comp
L C C?
U 1 1 53EF4561
P 9850 2850
F 0 "C?" H 9850 2950 40  0000 L CNN
F 1 "100n" H 9856 2765 40  0000 L CNN
F 2 "~" H 9888 2700 30  0000 C CNN
F 3 "~" H 9850 2850 60  0000 C CNN
	1    9850 2850
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 53EF456E
P 8550 2300
F 0 "C?" H 8550 2400 40  0000 L CNN
F 1 "100n" H 8556 2215 40  0000 L CNN
F 2 "~" H 8588 2150 30  0000 C CNN
F 3 "~" H 8550 2300 60  0000 C CNN
	1    8550 2300
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 53EF4576
P 10400 2900
F 0 "R?" V 10480 2900 40  0000 C CNN
F 1 "1K" V 10407 2901 40  0000 C CNN
F 2 "~" V 10330 2900 30  0000 C CNN
F 3 "~" H 10400 2900 30  0000 C CNN
	1    10400 2900
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 53EF4585
P 7850 2300
F 0 "R?" V 7930 2300 40  0000 C CNN
F 1 "1K" V 7857 2301 40  0000 C CNN
F 2 "~" V 7780 2300 30  0000 C CNN
F 3 "~" H 7850 2300 30  0000 C CNN
	1    7850 2300
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 53EF5282
P 9400 3200
F 0 "R?" V 9480 3200 40  0000 C CNN
F 1 "10K" V 9407 3201 40  0000 C CNN
F 2 "~" V 9330 3200 30  0000 C CNN
F 3 "~" H 9400 3200 30  0000 C CNN
	1    9400 3200
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 53EF52D8
P 8500 3950
F 0 "R?" V 8580 3950 40  0000 C CNN
F 1 "22K" V 8507 3951 40  0000 C CNN
F 2 "~" V 8430 3950 30  0000 C CNN
F 3 "~" H 8500 3950 30  0000 C CNN
	1    8500 3950
	0    -1   -1   0   
$EndComp
$Comp
L DIODE D?
U 1 1 53EF5331
P 8050 4200
F 0 "D?" H 8050 4300 40  0000 C CNN
F 1 "DIODE" H 8050 4100 40  0000 C CNN
F 2 "~" H 8050 4200 60  0000 C CNN
F 3 "~" H 8050 4200 60  0000 C CNN
	1    8050 4200
	1    0    0    -1  
$EndComp
$Comp
L DIODE D?
U 1 1 53EF533E
P 8050 4500
F 0 "D?" H 8050 4600 40  0000 C CNN
F 1 "DIODE" H 8050 4400 40  0000 C CNN
F 2 "~" H 8050 4500 60  0000 C CNN
F 3 "~" H 8050 4500 60  0000 C CNN
	1    8050 4500
	-1   0    0    1   
$EndComp
$Comp
L C C?
U 1 1 53EF5358
P 8600 4350
F 0 "C?" H 8600 4450 40  0000 L CNN
F 1 "100n" H 8606 4265 40  0000 L CNN
F 2 "~" H 8638 4200 30  0000 C CNN
F 3 "~" H 8600 4350 60  0000 C CNN
	1    8600 4350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9850 2650 9850 2550
Wire Wire Line
	8950 2550 10400 2550
Wire Wire Line
	10400 2550 10400 2650
Wire Wire Line
	9850 3050 9850 3250
Wire Wire Line
	9850 3250 10400 3250
Wire Wire Line
	10400 3250 10400 3150
Wire Wire Line
	8950 2950 8750 2950
Wire Wire Line
	8950 2300 8950 2950
Wire Wire Line
	8950 2300 8750 2300
Wire Wire Line
	8350 2300 8100 2300
Wire Wire Line
	7450 2300 7450 3050
Wire Wire Line
	7200 3050 8050 3050
Wire Wire Line
	7450 2300 7600 2300
Connection ~ 8950 2550
Connection ~ 9850 2550
Wire Wire Line
	8750 3150 8850 3150
Wire Wire Line
	8850 3150 8850 4350
Wire Wire Line
	9650 3200 9850 3200
Connection ~ 9850 3200
Wire Wire Line
	8850 3950 8750 3950
Wire Wire Line
	8250 3950 7800 3950
Wire Wire Line
	7800 3050 7800 4500
Wire Wire Line
	8250 4200 8300 4200
Wire Wire Line
	8300 4200 8300 4500
Wire Wire Line
	8300 4500 8250 4500
Wire Wire Line
	7800 4200 7850 4200
Wire Wire Line
	7800 4500 7850 4500
Wire Wire Line
	8400 4350 8300 4350
Connection ~ 8300 4350
Wire Wire Line
	8850 4350 8800 4350
Connection ~ 8850 3950
Connection ~ 7800 4200
Connection ~ 7800 3950
Wire Wire Line
	9150 3200 8850 3200
Connection ~ 8850 3200
Connection ~ 7800 3050
Wire Wire Line
	8500 2750 8300 2750
Wire Wire Line
	8300 2750 8300 1850
$Comp
L AGND #PWR?
U 1 1 53EF59E7
P 8500 3600
F 0 "#PWR?" H 8500 3600 40  0001 C CNN
F 1 "AGND" H 8500 3530 50  0000 C CNN
F 2 "" H 8500 3600 60  0000 C CNN
F 3 "" H 8500 3600 60  0000 C CNN
	1    8500 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 3350 8500 3600
Text Notes 8650 2750 0    60   ~ 0
*1
$Comp
L R R?
U 1 1 53F72A6F
P 6950 3050
F 0 "R?" V 7030 3050 40  0000 C CNN
F 1 "100K" V 6957 3051 40  0000 C CNN
F 2 "~" V 6880 3050 30  0000 C CNN
F 3 "~" H 6950 3050 30  0000 C CNN
	1    6950 3050
	0    -1   -1   0   
$EndComp
Connection ~ 7450 3050
$Comp
L R R?
U 1 1 53F72AB4
P 6600 3550
F 0 "R?" V 6680 3550 40  0000 C CNN
F 1 "47K" V 6607 3551 40  0000 C CNN
F 2 "~" V 6530 3550 30  0000 C CNN
F 3 "~" H 6600 3550 30  0000 C CNN
	1    6600 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 3050 6700 3050
Wire Wire Line
	6600 3050 6600 3300
Connection ~ 6600 3050
Text Notes 6150 3000 0    60   ~ 0
.2 VPP
$Comp
L MCP6241 U?
U 1 1 53F72B94
P 5550 3150
F 0 "U?" H 5550 3300 60  0000 L CNN
F 1 "OP AMP" H 5550 3000 60  0000 L CNN
F 2 "~" H 5550 3150 60  0000 C CNN
F 3 "~" H 5550 3150 60  0000 C CNN
	1    5550 3150
	-1   0    0    -1  
$EndComp
Text HLabel 1550 5450 0    60   Output ~ 0
EC_GND
Text HLabel 6000 4050 0    60   Input ~ 0
EC_Probe
Wire Wire Line
	5900 3250 6100 3250
Wire Wire Line
	6100 3250 6100 4050
Wire Wire Line
	6100 4050 6000 4050
$Comp
L MCP6241 U?
U 1 1 53F73190
P 3900 3250
F 0 "U?" H 3900 3400 60  0000 L CNN
F 1 "OP AMP" H 3900 3100 60  0000 L CNN
F 2 "~" H 3900 3250 60  0000 C CNN
F 3 "~" H 3900 3250 60  0000 C CNN
	1    3900 3250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4250 3150 5200 3150
$Comp
L DIODE D?
U 1 1 53F731D4
P 3100 3250
F 0 "D?" H 3100 3350 40  0000 C CNN
F 1 "DIODE" H 3100 3150 40  0000 C CNN
F 2 "~" H 3100 3250 60  0000 C CNN
F 3 "~" H 3100 3250 60  0000 C CNN
	1    3100 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	3300 3250 3550 3250
Wire Wire Line
	1500 3250 2900 3250
Wire Wire Line
	2600 3250 2600 3900
Wire Wire Line
	2600 3900 4600 3900
Wire Wire Line
	4600 3900 4600 3150
Connection ~ 4600 3150
$Comp
L R R?
U 1 1 53F73261
P 2300 3500
F 0 "R?" V 2380 3500 40  0000 C CNN
F 1 "10K" V 2307 3501 40  0000 C CNN
F 2 "~" V 2230 3500 30  0000 C CNN
F 3 "~" H 2300 3500 30  0000 C CNN
	1    2300 3500
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 53F73270
P 1950 3450
F 0 "C?" H 1950 3550 40  0000 L CNN
F 1 "1u" H 1956 3365 40  0000 L CNN
F 2 "~" H 1988 3300 30  0000 C CNN
F 3 "~" H 1950 3450 60  0000 C CNN
	1    1950 3450
	1    0    0    -1  
$EndComp
Connection ~ 2600 3250
Connection ~ 2300 3250
Wire Wire Line
	2300 3800 2300 3750
Wire Wire Line
	1950 3800 2300 3800
Wire Wire Line
	1950 3800 1950 3650
Connection ~ 1950 3250
Text Notes 2850 1050 0    79   ~ 0
*2 See ? in 8/25 Build Notes
Text Notes 4600 2950 0    79   ~ 0
*2
Text HLabel 1500 3250 0    60   Output ~ 0
EC_Voltage
Text HLabel 1450 1850 0    60   Output ~ 0
V+_WallWart
Wire Wire Line
	8300 1850 1450 1850
Wire Wire Line
	4000 2950 4000 1850
Connection ~ 4000 1850
Wire Wire Line
	5650 2850 5650 1850
Connection ~ 5650 1850
Wire Notes Line
	10650 1450 10650 4750
Wire Notes Line
	10650 4750 7300 4750
Wire Notes Line
	7300 4750 7300 1450
Wire Notes Line
	7300 1450 10650 1450
Text Notes 8450 1600 0    79   ~ 0
generate Low Distortion Sine Wave
$Comp
L R R?
U 1 1 53F9B9A2
P 8950 5350
F 0 "R?" V 9030 5350 40  0000 C CNN
F 1 "R" V 8957 5351 40  0000 C CNN
F 2 "~" V 8880 5350 30  0000 C CNN
F 3 "~" H 8950 5350 30  0000 C CNN
	1    8950 5350
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 53F9B9AF
P 8950 6300
F 0 "R?" V 9030 6300 40  0000 C CNN
F 1 "R" V 8957 6301 40  0000 C CNN
F 2 "~" V 8880 6300 30  0000 C CNN
F 3 "~" H 8950 6300 30  0000 C CNN
	1    8950 6300
	1    0    0    -1  
$EndComp
Text HLabel 8400 5050 0    60   Output ~ 0
V+_WallWart
Wire Wire Line
	8400 5050 8950 5050
Wire Wire Line
	8950 5050 8950 5100
Wire Wire Line
	8950 5600 8950 6050
$Comp
L AGND #PWR?
U 1 1 53F9BA53
P 8950 6800
F 0 "#PWR?" H 8950 6800 40  0001 C CNN
F 1 "AGND" H 8950 6730 50  0000 C CNN
F 2 "" H 8950 6800 60  0000 C CNN
F 3 "" H 8950 6800 60  0000 C CNN
	1    8950 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 6550 8950 6800
Text HLabel 8550 5850 0    60   Output ~ 0
VGND
Wire Wire Line
	8550 5850 8950 5850
Connection ~ 8950 5850
Wire Notes Line
	7300 4900 10650 4900
Wire Notes Line
	10650 4900 10650 7000
Wire Notes Line
	10650 7000 7300 7000
Wire Notes Line
	7300 7000 7300 4900
Text Notes 9350 5100 0    79   ~ 0
Virtual Ground
Text HLabel 10000 3700 0    60   Output ~ 0
VGND
Wire Wire Line
	10000 3700 10150 3700
Wire Wire Line
	10150 3700 10150 3250
Connection ~ 10150 3250
Text HLabel 6300 4200 0    60   Output ~ 0
VGND
Wire Wire Line
	6300 4200 6600 4200
Wire Wire Line
	6600 4200 6600 3800
Text HLabel 1900 4200 0    60   Output ~ 0
VGND
Wire Wire Line
	2150 3800 2150 4200
Wire Wire Line
	2150 4200 1900 4200
Connection ~ 2150 3800
Wire Notes Line
	7200 1450 7200 4750
Wire Notes Line
	7200 4750 4950 4750
Wire Notes Line
	4950 4750 4950 1450
Wire Notes Line
	4950 1450 7200 1450
Text Notes 5450 1600 0    79   ~ 0
read Conductivity Level
Wire Notes Line
	4800 1500 4800 4750
Wire Notes Line
	4800 4750 2500 4750
Wire Notes Line
	2500 4750 2500 1450
Wire Notes Line
	2500 1450 4800 1450
Wire Notes Line
	4800 1450 4800 1550
Text Notes 3150 1600 0    79   ~ 0
turn into DC Signal
$Comp
L AGND #PWR?
U 1 1 53F9BE1B
P 4000 3700
F 0 "#PWR?" H 4000 3700 40  0001 C CNN
F 1 "AGND" H 4000 3630 50  0000 C CNN
F 2 "" H 4000 3700 60  0000 C CNN
F 3 "" H 4000 3700 60  0000 C CNN
	1    4000 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 3550 4000 3700
$Comp
L AGND #PWR?
U 1 1 53F9BF5F
P 5650 3700
F 0 "#PWR?" H 5650 3700 40  0001 C CNN
F 1 "AGND" H 5650 3630 50  0000 C CNN
F 2 "" H 5650 3700 60  0000 C CNN
F 3 "" H 5650 3700 60  0000 C CNN
	1    5650 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3450 5650 3700
Text HLabel 2900 5450 2    60   Output ~ 0
VGND
Wire Wire Line
	2900 5450 1550 5450
Text HLabel 1500 5950 0    60   Output ~ 0
EC_Probe_GND
Text HLabel 2900 5950 2    60   Output ~ 0
VGND
Wire Wire Line
	1500 5950 2900 5950
$EndSCHEMATC

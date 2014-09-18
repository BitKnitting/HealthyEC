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
Sheet 6 6
Title ""
Date "18 sep 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 10800 -1100 0    60   Output ~ 0
V+_WallWart
$Comp
L R R17
U 1 1 5416D6AB
P 10150 5600
F 0 "R17" V 10230 5600 40  0000 C CNN
F 1 "1K" V 10157 5601 40  0000 C CNN
F 2 "~" V 10080 5600 30  0000 C CNN
F 3 "~" H 10150 5600 30  0000 C CNN
	1    10150 5600
	1    0    0    -1  
$EndComp
$Comp
L R R18
U 1 1 5416D6B8
P 10150 6450
F 0 "R18" V 10230 6450 40  0000 C CNN
F 1 "1K" V 10157 6451 40  0000 C CNN
F 2 "~" V 10080 6450 30  0000 C CNN
F 3 "~" H 10150 6450 30  0000 C CNN
	1    10150 6450
	1    0    0    -1  
$EndComp
Text HLabel 10300 5150 2    60   Input ~ 0
V+_WallWart
$Comp
L AGND #PWR011
U 1 1 5416D6CE
P 10150 6950
F 0 "#PWR011" H 10150 6950 40  0001 C CNN
F 1 "AGND" H 10150 6880 50  0000 C CNN
F 2 "" H 10150 6950 60  0000 C CNN
F 3 "" H 10150 6950 60  0000 C CNN
	1    10150 6950
	1    0    0    -1  
$EndComp
$Comp
L R R19
U 1 1 5416D6EF
P 10700 3350
F 0 "R19" V 10780 3350 40  0000 C CNN
F 1 "1K" V 10707 3351 40  0000 C CNN
F 2 "~" V 10630 3350 30  0000 C CNN
F 3 "~" H 10700 3350 30  0000 C CNN
	1    10700 3350
	1    0    0    -1  
$EndComp
$Comp
L R R16
U 1 1 5416D6F5
P 9950 3600
F 0 "R16" V 10030 3600 40  0000 C CNN
F 1 "10K" V 9957 3601 40  0000 C CNN
F 2 "~" V 9880 3600 30  0000 C CNN
F 3 "~" H 9950 3600 30  0000 C CNN
	1    9950 3600
	0    -1   -1   0   
$EndComp
$Comp
L C C11
U 1 1 5416D6FD
P 10350 3350
F 0 "C11" H 10350 3450 40  0000 L CNN
F 1 "100n" H 10356 3265 40  0000 L CNN
F 2 "~" H 10388 3200 30  0000 C CNN
F 3 "~" H 10350 3350 60  0000 C CNN
	1    10350 3350
	1    0    0    -1  
$EndComp
$Comp
L C C10
U 1 1 5416D70C
P 9350 4400
F 0 "C10" H 9350 4500 40  0000 L CNN
F 1 "100n" H 9356 4315 40  0000 L CNN
F 2 "~" H 9388 4250 30  0000 C CNN
F 3 "~" H 9350 4400 60  0000 C CNN
	1    9350 4400
	0    -1   -1   0   
$EndComp
$Comp
L R R15
U 1 1 5416D7C3
P 9000 3700
F 0 "R15" V 9080 3700 40  0000 C CNN
F 1 "22K" V 9007 3701 40  0000 C CNN
F 2 "~" V 8930 3700 30  0000 C CNN
F 3 "~" H 9000 3700 30  0000 C CNN
	1    9000 3700
	0    -1   -1   0   
$EndComp
$Comp
L DIODE D4
U 1 1 5416D7D5
P 8800 4250
F 0 "D4" H 8800 4350 40  0000 C CNN
F 1 "DIODE" H 8800 4150 40  0000 C CNN
F 2 "~" H 8800 4250 60  0000 C CNN
F 3 "~" H 8800 4250 60  0000 C CNN
	1    8800 4250
	1    0    0    -1  
$EndComp
$Comp
L DIODE D5
U 1 1 5416D7E2
P 8800 4550
F 0 "D5" H 8800 4650 40  0000 C CNN
F 1 "DIODE" H 8800 4450 40  0000 C CNN
F 2 "~" H 8800 4550 60  0000 C CNN
F 3 "~" H 8800 4550 60  0000 C CNN
	1    8800 4550
	-1   0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 5416DB1C
P 9350 1800
F 0 "C9" H 9350 1900 40  0000 L CNN
F 1 "100n" H 9356 1715 40  0000 L CNN
F 2 "~" H 9388 1650 30  0000 C CNN
F 3 "~" H 9350 1800 60  0000 C CNN
	1    9350 1800
	0    -1   -1   0   
$EndComp
$Comp
L R R14
U 1 1 5416DB22
P 8700 1800
F 0 "R14" V 8780 1800 40  0000 C CNN
F 1 "1K" V 8707 1801 40  0000 C CNN
F 2 "~" V 8630 1800 30  0000 C CNN
F 3 "~" H 8700 1800 30  0000 C CNN
	1    8700 1800
	0    -1   -1   0   
$EndComp
$Comp
L R R12
U 1 1 5416DCAD
P 7450 2050
F 0 "R12" V 7530 2050 40  0000 C CNN
F 1 "47K" V 7457 2051 40  0000 C CNN
F 2 "~" V 7380 2050 30  0000 C CNN
F 3 "~" H 7450 2050 30  0000 C CNN
	1    7450 2050
	1    0    0    -1  
$EndComp
$Comp
L R R13
U 1 1 5416DCB7
P 7850 2500
F 0 "R13" V 7930 2500 40  0000 C CNN
F 1 "100K" V 7857 2501 40  0000 C CNN
F 2 "~" V 7780 2500 30  0000 C CNN
F 3 "~" H 7850 2500 30  0000 C CNN
	1    7850 2500
	0    -1   -1   0   
$EndComp
$Comp
L R R11
U 1 1 5416DE07
P 5000 3250
F 0 "R11" V 5080 3250 40  0000 C CNN
F 1 "3K" V 5007 3251 40  0000 C CNN
F 2 "~" V 4930 3250 30  0000 C CNN
F 3 "~" H 5000 3250 30  0000 C CNN
	1    5000 3250
	0    -1   -1   0   
$EndComp
$Comp
L DIODE D3
U 1 1 5416E03F
P 1600 2450
F 0 "D3" H 1600 2550 40  0000 C CNN
F 1 "DIODE" H 1600 2350 40  0000 C CNN
F 2 "~" H 1600 2450 60  0000 C CNN
F 3 "~" H 1600 2450 60  0000 C CNN
	1    1600 2450
	-1   0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 5416E045
P 1250 2800
F 0 "R10" V 1330 2800 40  0000 C CNN
F 1 "10K" V 1257 2801 40  0000 C CNN
F 2 "~" V 1180 2800 30  0000 C CNN
F 3 "~" H 1250 2800 30  0000 C CNN
	1    1250 2800
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5416E04B
P 1000 2800
F 0 "C3" H 1000 2900 40  0000 L CNN
F 1 "1u" H 1006 2715 40  0000 L CNN
F 2 "~" H 1038 2650 30  0000 C CNN
F 3 "~" H 1000 2800 60  0000 C CNN
	1    1000 2800
	1    0    0    -1  
$EndComp
Text HLabel 850  2450 0    60   Input ~ 0
EC_V
Text HLabel 1150 3750 2    60   Input ~ 0
EC_GND
Text HLabel 7450 1650 2    60   Input ~ 0
EC_GND
Text HLabel 8150 6150 0    60   Output ~ 0
EC_GND
Text HLabel 10250 4000 0    60   Input ~ 0
EC_GND
Text GLabel 7250 2500 0    60   Output ~ 0
AC_Signal
Text Notes 9550 1500 2    60   ~ 0
Wien Bridge Oscillator
Text Notes 8200 2250 2    60   ~ 0
Shrink Signal
Text Notes 8350 6100 2    60   ~ 0
2.5V
Text GLabel 6000 2250 2    60   Input ~ 0
AC_Signal
Text Notes 9650 1150 2    98   ~ 0
Create an AC Signal
Text Notes 9600 4950 2    98   ~ 0
Raise GND
Text Notes 6100 3700 2    60   ~ 0
Probe
Text HLabel 6000 3500 2    60   Input ~ 0
EC_Probe+
Text HLabel 5950 4150 2    60   Input ~ 0
EC_Probe-
Text HLabel 6100 4550 2    60   Input ~ 0
EC_GND
Text GLabel 4050 2350 0    59   Output ~ 0
EC_Signal
Wire Wire Line
	10150 5150 10150 5350
Wire Wire Line
	10150 6700 10150 6950
Wire Wire Line
	10700 3650 10700 3600
Wire Wire Line
	10350 3650 10700 3650
Wire Wire Line
	10350 3550 10350 3650
Wire Wire Line
	10700 3000 10700 3100
Wire Wire Line
	10350 3000 10350 3150
Wire Wire Line
	9050 4250 9000 4250
Wire Wire Line
	9050 4250 9050 4550
Wire Wire Line
	9050 4550 9000 4550
Wire Wire Line
	8600 4250 8550 4250
Wire Wire Line
	8550 4250 8550 4550
Wire Wire Line
	8550 4550 8600 4550
Wire Wire Line
	9150 4400 9050 4400
Connection ~ 9050 4400
Wire Wire Line
	10200 3600 10350 3600
Connection ~ 10350 3600
Wire Wire Line
	8300 4400 8550 4400
Connection ~ 8550 4400
Wire Wire Line
	9900 2400 9900 1800
Wire Wire Line
	9900 1800 9550 1800
Wire Wire Line
	9150 1800 8950 1800
Wire Wire Line
	8450 1800 8300 1800
Wire Wire Line
	850  2450 1400 2450
Wire Wire Line
	1000 2450 1000 2600
Wire Wire Line
	1000 3000 1000 3150
Wire Wire Line
	1000 3150 1250 3150
Wire Wire Line
	1250 3150 1250 3050
Wire Wire Line
	1150 3750 1150 3150
Connection ~ 1150 3150
Connection ~ 1000 2450
Wire Wire Line
	7450 1800 7450 1650
Wire Wire Line
	10150 5850 10150 6200
Wire Wire Line
	9450 6050 10150 6050
Connection ~ 10150 6050
Wire Wire Line
	9450 6250 9750 6250
Wire Wire Line
	9750 6250 9750 6850
Wire Wire Line
	9750 6850 8450 6850
Wire Wire Line
	8450 6850 8450 6150
Wire Wire Line
	8150 6150 8750 6150
Connection ~ 8450 6150
Wire Wire Line
	9350 2400 9900 2400
Wire Wire Line
	8300 1800 8300 4400
Wire Wire Line
	8100 2500 8650 2500
Wire Wire Line
	9600 4400 9550 4400
Wire Wire Line
	9600 2600 9600 4400
Wire Wire Line
	9600 2600 9350 2600
Wire Wire Line
	9700 3600 9600 3600
Connection ~ 9600 3600
Wire Wire Line
	9600 3000 10700 3000
Connection ~ 9600 3000
Connection ~ 10350 3000
Wire Wire Line
	9250 3700 9600 3700
Connection ~ 9600 3700
Wire Wire Line
	10500 3650 10500 4000
Connection ~ 10500 3650
Wire Wire Line
	10500 4000 10250 4000
Wire Wire Line
	7450 2300 7450 2500
Wire Wire Line
	5400 2250 6000 2250
Wire Wire Line
	4050 2350 4700 2350
Wire Wire Line
	4400 2350 4400 3250
Wire Wire Line
	4400 3250 4750 3250
Wire Wire Line
	5400 2450 5600 2450
Wire Wire Line
	5600 2450 5600 3250
Wire Wire Line
	5250 3250 6000 3250
Wire Notes Line
	5850 3500 6150 3500
Wire Notes Line
	6150 4150 5800 4150
Wire Notes Line
	5800 4150 5800 3500
Wire Notes Line
	5800 3500 5950 3500
Wire Wire Line
	6000 3250 6000 3500
Connection ~ 5600 3250
Connection ~ 4400 2350
Wire Notes Line
	6150 3500 6150 4150
Wire Notes Line
	5700 4050 6300 3650
Wire Notes Line
	6300 3650 6300 3750
Wire Notes Line
	6300 3650 6200 3650
Text Notes 5850 1200 2    98   ~ 0
Get EC Measurement
Wire Notes Line
	7600 4800 11000 4800
Wire Notes Line
	11000 4800 11000 7100
Wire Notes Line
	11000 7100 7600 7100
Wire Notes Line
	7600 7100 7600 4800
Wire Notes Line
	6650 1000 10800 1000
Wire Notes Line
	10800 1000 10750 4700
Wire Notes Line
	10750 4700 6650 4700
Wire Notes Line
	6650 4700 6650 1000
Wire Notes Line
	6600 1000 6600 4700
Wire Notes Line
	6600 4700 3500 4700
Wire Notes Line
	3500 4700 3500 1000
Wire Notes Line
	3500 1000 6600 1000
Wire Wire Line
	5950 4150 5950 4550
Wire Wire Line
	5950 4550 6100 4550
Text GLabel 2850 2350 2    59   Input ~ 0
EC_Signal
Wire Notes Line
	3400 4700 3400 1000
Wire Notes Line
	500  4700 3400 4700
Wire Notes Line
	500  4700 500  1000
Wire Notes Line
	500  1000 3400 1000
Wire Wire Line
	7250 2500 7600 2500
Connection ~ 7450 2500
Wire Wire Line
	2650 2350 2850 2350
Text Notes 2650 1200 2    98   ~ 0
Convert AC to DC
Wire Wire Line
	1950 2450 1800 2450
Wire Wire Line
	2650 2550 3000 2550
Wire Wire Line
	3000 2550 3000 3300
Wire Wire Line
	3000 3300 1350 3300
Wire Wire Line
	1350 3300 1350 2450
Connection ~ 1350 2450
$Comp
L CONN_1 TP20
U 1 1 54187FEE
P 8600 2300
F 0 "TP20" H 8680 2300 40  0000 L CNN
F 1 "CONN_1" H 8600 2355 30  0001 C CNN
F 2 "" H 8600 2300 60  0000 C CNN
F 3 "" H 8600 2300 60  0000 C CNN
	1    8600 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 2300 8450 2500
Connection ~ 8450 2500
$Comp
L CONN_1 TP17
U 1 1 541880F6
P 5800 2100
F 0 "TP17" H 5880 2100 40  0000 L CNN
F 1 "CONN_1" H 5800 2155 30  0001 C CNN
F 2 "" H 5800 2100 60  0000 C CNN
F 3 "" H 5800 2100 60  0000 C CNN
	1    5800 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2100 5650 2250
Connection ~ 5650 2250
$Comp
L CONN_1 TP16
U 1 1 541882A4
P 2850 2150
F 0 "TP16" H 2930 2150 40  0000 L CNN
F 1 "CONN_1" H 2850 2205 30  0001 C CNN
F 2 "" H 2850 2150 60  0000 C CNN
F 3 "" H 2850 2150 60  0000 C CNN
	1    2850 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 2150 2700 2350
Connection ~ 2700 2350
$Comp
L CONN_1 TP18
U 1 1 5418832B
P 5950 3100
F 0 "TP18" H 6030 3100 40  0000 L CNN
F 1 "CONN_1" H 5950 3155 30  0001 C CNN
F 2 "" H 5950 3100 60  0000 C CNN
F 3 "" H 5950 3100 60  0000 C CNN
	1    5950 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3100 5800 3250
Connection ~ 5800 3250
$Comp
L CONN_1 TP15
U 1 1 541883B4
P 1050 2100
F 0 "TP15" H 1130 2100 40  0000 L CNN
F 1 "CONN_1" H 1050 2155 30  0001 C CNN
F 2 "" H 1050 2100 60  0000 C CNN
F 3 "" H 1050 2100 60  0000 C CNN
	1    1050 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  2100 900  2450
Connection ~ 900  2450
Wire Wire Line
	1250 2550 1250 2450
Connection ~ 1250 2450
Wire Wire Line
	10300 5150 10150 5150
$Comp
L MCP6244 U1
U 2 1 5419C202
P 9100 2500
F 0 "U1" H 9200 2700 60  0000 L CNN
F 1 "MCP6244" H 9150 2300 60  0000 L CNN
F 2 "~" H 9200 2500 60  0000 C CNN
F 3 "~" H 9200 2500 60  0000 C CNN
	2    9100 2500
	-1   0    0    -1  
$EndComp
$Comp
L MCP6244 U1
U 3 1 5419C208
P 5150 2350
F 0 "U1" H 5250 2550 60  0000 L CNN
F 1 "MCP6244" H 5200 2150 60  0000 L CNN
F 2 "~" H 5250 2350 60  0000 C CNN
F 3 "~" H 5250 2350 60  0000 C CNN
	3    5150 2350
	-1   0    0    -1  
$EndComp
$Comp
L MCP6244 U1
U 4 1 5419C20E
P 2400 2450
F 0 "U1" H 2500 2650 60  0000 L CNN
F 1 "MCP6244" H 2450 2250 60  0000 L CNN
F 2 "~" H 2500 2450 60  0000 C CNN
F 3 "~" H 2500 2450 60  0000 C CNN
	4    2400 2450
	-1   0    0    -1  
$EndComp
Text HLabel 9350 5650 2    60   Input ~ 0
V+_WallWart
Wire Wire Line
	9200 5650 9200 5850
Wire Wire Line
	9350 5650 9200 5650
$Comp
L AGND #PWR012
U 1 1 5419C223
P 9200 6650
F 0 "#PWR012" H 9200 6650 40  0001 C CNN
F 1 "AGND" H 9200 6580 50  0000 C CNN
F 2 "" H 9200 6650 60  0000 C CNN
F 3 "" H 9200 6650 60  0000 C CNN
	1    9200 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 3700 8300 3700
Connection ~ 8300 3700
$Comp
L MCP6244 U1
U 1 1 5419C693
P 9200 6150
F 0 "U1" H 9300 6350 60  0000 L CNN
F 1 "MCP6244" H 9250 5950 60  0000 L CNN
F 2 "~" H 9300 6150 60  0000 C CNN
F 3 "~" H 9300 6150 60  0000 C CNN
	1    9200 6150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9200 6450 9200 6650
$EndSCHEMATC

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
Sheet 2 6
Title ""
Date "18 sep 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 6350 2000 2    60   Output ~ 0
SCLK
Wire Wire Line
	6350 2000 5750 2000
Text HLabel 6350 2200 2    60   Input ~ 0
MISO
Text HLabel 6350 2400 2    60   Output ~ 0
MOSI
Text HLabel 6350 2800 2    60   Output ~ 0
~CS
Wire Wire Line
	5750 2200 6350 2200
Wire Wire Line
	5750 2400 6350 2400
Wire Wire Line
	5750 2800 6350 2800
Text HLabel 2500 4550 0    60   Output ~ 0
ECPump
Text HLabel 6400 3600 2    60   Output ~ 0
~RESET
Wire Wire Line
	5750 3600 6400 3600
Text HLabel 6450 4000 2    60   Input ~ 0
~DR
Wire Wire Line
	5750 4000 6450 4000
Text HLabel 2500 2450 0    60   Output ~ 0
V+_ARD
Wire Wire Line
	3550 2450 2500 2450
$Comp
L ARDUINOPINS ARD1
U 1 1 53E0F48C
P 4650 3150
F 0 "ARD1" H 4000 4750 60  0000 C CNN
F 1 "ARDUINOPINS" H 4150 4950 60  0000 C CNN
F 2 "~" H 5200 2200 60  0000 C CNN
F 3 "~" H 5200 2200 60  0000 C CNN
	1    4650 3150
	1    0    0    -1  
$EndComp
Text HLabel 2500 2650 0    60   Input ~ 0
GND_ARD
Wire Wire Line
	2500 2650 3550 2650
Wire Wire Line
	3550 4550 2500 4550
$Comp
L CONN_1 TP9
U 1 1 5418B8C9
P 3150 2900
F 0 "TP9" H 3230 2900 40  0000 L CNN
F 1 "CONN_1" H 3150 2955 30  0001 C CNN
F 2 "" H 3150 2900 60  0000 C CNN
F 3 "" H 3150 2900 60  0000 C CNN
	1    3150 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 2650 3000 2900
Connection ~ 3000 2650
$EndSCHEMATC

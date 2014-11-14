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
Sheet 1 6
Title ""
Date "14 nov 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 4400 5200 2100 800 
U 53EF374F
F0 "Pumps" 50
F1 "Pumps_EC.sch" 50
F2 "V+_ECPump" O R 6500 5500 60 
F3 "SW_ECPump" I R 6500 5750 60 
F4 "V+_ARD" I L 4400 5550 60 
F5 "GND_ARD" O L 4400 5750 60 
F6 "ECPump" I L 4400 5400 60 
$EndSheet
$Sheet
S 950  2400 2450 750 
U 53EF39AE
F0 "Healthy pH Shield" 50
F1 "HealthypHShield.sch" 50
F2 "V+_WallWart" O R 3400 2700 60 
$EndSheet
$Comp
L CONN_4 P1
U 1 1 53F87484
P 10750 4300
F 0 "P1" V 10700 4300 50  0000 C CNN
F 1 "CONN_4" V 10800 4300 50  0000 C CNN
F 2 "" H 10750 4300 60  0000 C CNN
F 3 "" H 10750 4300 60  0000 C CNN
	1    10750 4300
	1    0    0    1   
$EndComp
$Sheet
S 7350 2000 2200 1000
U 53EF382C
F0 "EC" 50
F1 "EC.sch" 50
F2 "V+_WallWart" O L 7350 2150 60 
F3 "EC_Probe+" I R 9550 2350 60 
F4 "EC_Meas" O L 7350 2550 60 
F5 "VGND" I L 7350 2750 60 
$EndSheet
Wire Wire Line
	3400 2700 4400 2700
Wire Wire Line
	3900 2150 3900 2700
Connection ~ 3900 2700
Wire Wire Line
	7350 2750 6500 2750
Wire Wire Line
	7350 2550 6500 2550
Wire Wire Line
	3400 5400 4400 5400
Wire Wire Line
	3400 5550 4400 5550
Wire Wire Line
	3400 5750 4400 5750
Wire Wire Line
	6500 5750 10350 5750
Wire Wire Line
	10350 5750 10350 4450
Wire Wire Line
	10350 4450 10400 4450
Wire Wire Line
	6500 5500 10200 5500
Wire Wire Line
	10200 5500 10200 4350
Wire Wire Line
	10200 4350 10400 4350
Wire Wire Line
	10400 4250 10200 4250
Wire Wire Line
	9550 2350 10300 2350
Wire Wire Line
	10300 2350 10300 4150
Wire Wire Line
	10300 4150 10400 4150
Wire Wire Line
	3900 2150 7350 2150
Wire Wire Line
	7100 2750 7100 3300
Wire Wire Line
	7100 3300 10200 3300
Connection ~ 7100 2750
Wire Wire Line
	10200 3300 10200 4250
$Sheet
S 4400 2400 2100 2500
U 53EF37AC
F0 "DigitalAccess" 50
F1 "DigitalAccess_EC.sch" 50
F2 "V+_WallWart" I L 4400 2700 60 
F3 "VGND" I R 6500 2750 60 
F4 "SCL" B L 4400 3700 60 
F5 "SDA" B L 4400 3950 60 
F6 "EC_Meas" I R 6500 2550 60 
$EndSheet
$Sheet
S 950  3250 2450 3400
U 53EF3667
F0 "Arduino" 50
F1 "Arduino_EC.sch" 50
F2 "ECPump" O R 3400 5400 60 
F3 "V+_ARD" O R 3400 5550 60 
F4 "GND_ARD" I R 3400 5750 60 
$EndSheet
$EndSCHEMATC

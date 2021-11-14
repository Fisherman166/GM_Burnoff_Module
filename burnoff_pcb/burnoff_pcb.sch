EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Burn Off Module"
Date "2021-10-02"
Rev "v1.0"
Comp ""
Comment1 ""
Comment2 "creativecommons.org/licenses/by/4.0/"
Comment3 "License: CC BY 4.0"
Comment4 "Author: Sean Koppenhafer"
$EndDescr
$Comp
L Device:R R2
U 1 1 6158F32F
P 1550 3150
F 0 "R2" H 1620 3196 50  0000 L CNN
F 1 "10k" H 1620 3105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1480 3150 50  0001 C CNN
F 3 "~" H 1550 3150 50  0001 C CNN
	1    1550 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 3450 1850 3350
Wire Wire Line
	1550 3350 1850 3350
Connection ~ 1850 3350
Wire Wire Line
	1850 3350 1850 3200
Wire Wire Line
	1000 1700 850  1700
Connection ~ 1000 1700
$Comp
L Device:C C1
U 1 1 6158CE46
P 1000 1850
F 0 "C1" H 1115 1896 50  0000 L CNN
F 1 "0.1uF" H 1115 1805 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 1038 1700 50  0001 C CNN
F 3 "~" H 1000 1850 50  0001 C CNN
	1    1000 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_PMOS_GDS Q2
U 1 1 61598686
P 1850 3000
F 0 "Q2" V 2192 3000 50  0000 C CNN
F 1 "Q_PMOS_GDS" V 2101 3000 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-251-3_Vertical" H 2050 3100 50  0001 C CNN
F 3 "~" H 1850 3000 50  0001 C CNN
	1    1850 3000
	0    1    -1   0   
$EndComp
$Comp
L Device:D D1
U 1 1 61599E69
P 1050 3650
F 0 "D1" H 1050 3433 50  0000 C CNN
F 1 "D" H 1050 3524 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" H 1050 3650 50  0001 C CNN
F 3 "~" H 1050 3650 50  0001 C CNN
	1    1050 3650
	-1   0    0    1   
$EndComp
Wire Wire Line
	850  3650 900  3650
Wire Wire Line
	1000 2900 1550 2900
Wire Wire Line
	1550 3350 1550 3300
Wire Wire Line
	1550 3000 1550 2900
Connection ~ 1550 2900
Wire Wire Line
	1550 2900 1650 2900
Wire Wire Line
	2050 2900 2200 2900
$Comp
L power:VCC #PWR02
U 1 1 6159EE67
P 1000 2900
F 0 "#PWR02" H 1000 2750 50  0001 C CNN
F 1 "VCC" H 1015 3073 50  0000 C CNN
F 2 "" H 1000 2900 50  0001 C CNN
F 3 "" H 1000 2900 50  0001 C CNN
	1    1000 2900
	1    0    0    -1  
$EndComp
Text GLabel 1000 800  2    50   Input ~ 0
BAT_IN
Text GLabel 1000 900  2    50   Output ~ 0
PWR_OUT
Text GLabel 1000 1300 2    50   Input ~ 0
IGNITION_IN
Text GLabel 1000 1100 2    50   Output ~ 0
BURNOFF_OUT
Text GLabel 3300 600  0    50   Input ~ 0
GROUND_IN
Text GLabel 1000 1000 2    50   Input ~ 0
SERIAL_IN
Wire Wire Line
	1000 800  750  800 
Wire Wire Line
	750  900  1000 900 
Wire Wire Line
	750  1000 1000 1000
Wire Wire Line
	750  1100 1000 1100
Wire Wire Line
	750  1200 1000 1200
Wire Wire Line
	750  1300 1000 1300
Text Notes 1350 2550 2    50   ~ 0
Main Power Switch
Text Notes 1600 2200 2    50   ~ 0
Battery Input
Wire Wire Line
	2250 600  2400 600 
Text Notes 2750 750  2    50   ~ 0
MAF power out
Wire Notes Line
	2800 500  2800 800 
Text GLabel 850  1700 0    50   Input ~ 0
BAT_IN
Wire Notes Line
	500  1400 1750 1400
Text GLabel 2400 600  2    50   Output ~ 0
PWR_OUT
Wire Wire Line
	2350 950  2200 950 
$Comp
L Device:C C2
U 1 1 615B91A6
P 2350 1100
F 0 "C2" H 2150 1150 50  0000 L CNN
F 1 "0.1uF" H 2050 1050 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 2388 950 50  0001 C CNN
F 3 "~" H 2350 1100 50  0001 C CNN
	1    2350 1100
	1    0    0    -1  
$EndComp
Text GLabel 2200 950  0    50   Input ~ 0
SERIAL_IN
Text Notes 3150 1500 2    50   ~ 0
Serial Input
Wire Notes Line
	3250 1650 3250 800 
Text GLabel 1000 1200 2    50   Input ~ 0
GROUND_IN
$Comp
L power:GND #PWR012
U 1 1 615C7103
P 3400 650
F 0 "#PWR012" H 3400 400 50  0001 C CNN
F 1 "GND" H 3405 477 50  0000 C CNN
F 2 "" H 3400 650 50  0001 C CNN
F 3 "" H 3400 650 50  0001 C CNN
	1    3400 650 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 600  3400 600 
Wire Wire Line
	3400 600  3400 650 
Text Notes 3300 750  2    50   ~ 0
Ground Input
Wire Notes Line
	3250 900  3550 900 
Wire Notes Line
	3550 900  3550 500 
Wire Wire Line
	2450 1750 2300 1750
Connection ~ 2450 1750
$Comp
L Device:C C3
U 1 1 615CA44E
P 2450 1900
F 0 "C3" H 2565 1946 50  0000 L CNN
F 1 "0.1uF" H 2565 1855 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 2488 1750 50  0001 C CNN
F 3 "~" H 2450 1900 50  0001 C CNN
	1    2450 1900
	1    0    0    -1  
$EndComp
Text GLabel 2300 1750 0    50   Input ~ 0
IGNITION_IN
Text Notes 2950 2450 2    50   ~ 0
Ignition\nInput
$Comp
L Device:R R6
U 1 1 615E3FC6
P 3350 3150
F 0 "R6" H 3420 3196 50  0000 L CNN
F 1 "10k" H 3420 3105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3280 3150 50  0001 C CNN
F 3 "~" H 3350 3150 50  0001 C CNN
	1    3350 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3450 3650 3350
Wire Wire Line
	3350 3350 3650 3350
Connection ~ 3650 3350
Wire Wire Line
	3650 3350 3650 3200
$Comp
L power:GND #PWR013
U 1 1 615E3FD0
P 3650 3900
F 0 "#PWR013" H 3650 3650 50  0001 C CNN
F 1 "GND" H 3655 3727 50  0000 C CNN
F 2 "" H 3650 3900 50  0001 C CNN
F 3 "" H 3650 3900 50  0001 C CNN
	1    3650 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_PMOS_GDS Q4
U 1 1 615E3FD6
P 3650 3000
F 0 "Q4" V 3992 3000 50  0000 C CNN
F 1 "Q_PMOS_GDS" V 3901 3000 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-251-3_Vertical" H 3850 3100 50  0001 C CNN
F 3 "~" H 3650 3000 50  0001 C CNN
	1    3650 3000
	0    1    -1   0   
$EndComp
$Comp
L Device:Q_NMOS_SGD Q3
U 1 1 615E3FDC
P 3550 3650
F 0 "Q3" H 3754 3696 50  0000 L CNN
F 1 "Q_NMOS_SGD" H 3754 3605 50  0000 L CNN
F 2 "digikey-footprints:TO-92-3_Formed_Leads" H 3750 3750 50  0001 C CNN
F 3 "~" H 3550 3650 50  0001 C CNN
	1    3550 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 2900 3350 2900
Wire Wire Line
	3350 3350 3350 3300
Wire Wire Line
	3350 3000 3350 2900
Connection ~ 3350 2900
Wire Wire Line
	3350 2900 3450 2900
Wire Wire Line
	3850 2900 4000 2900
$Comp
L power:VCC #PWR09
U 1 1 615E3FF9
P 2800 2900
F 0 "#PWR09" H 2800 2750 50  0001 C CNN
F 1 "VCC" H 2815 3073 50  0000 C CNN
F 2 "" H 2800 2900 50  0001 C CNN
F 3 "" H 2800 2900 50  0001 C CNN
	1    2800 2900
	1    0    0    -1  
$EndComp
Text Notes 4400 4000 2    50   ~ 0
Burnoff switch
Text GLabel 4350 2900 2    50   Output ~ 0
BURNOFF_OUT
$Comp
L Timer:NA555P U1
U 1 1 615F0D1A
P 5500 1150
F 0 "U1" H 5250 1600 50  0000 C CNN
F 1 "NA555P" H 5250 1500 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 6150 750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ne555.pdf" H 6350 750 50  0001 C CNN
	1    5500 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 615F6039
P 5500 1600
F 0 "#PWR016" H 5500 1350 50  0001 C CNN
F 1 "GND" H 5505 1427 50  0000 C CNN
F 2 "" H 5500 1600 50  0001 C CNN
F 3 "" H 5500 1600 50  0001 C CNN
	1    5500 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 1600 5500 1550
Wire Wire Line
	5000 1350 4900 1350
Wire Wire Line
	4900 1350 4900 550 
Wire Wire Line
	4900 550  5500 550 
Wire Wire Line
	5500 550  5500 750 
Connection ~ 4900 550 
$Comp
L Device:C C5
U 1 1 615F9409
P 4950 1600
F 0 "C5" H 5065 1646 50  0000 L CNN
F 1 "0.1uF" H 5065 1555 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 4988 1450 50  0001 C CNN
F 3 "~" H 4950 1600 50  0001 C CNN
	1    4950 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 1450 4950 1150
Wire Wire Line
	4950 1150 5000 1150
Wire Wire Line
	4950 1750 4950 1800
Wire Wire Line
	6000 950  6100 950 
Wire Wire Line
	6000 1350 6050 1350
Wire Wire Line
	6050 1350 6050 650 
Wire Wire Line
	6050 650  5000 650 
Wire Wire Line
	5000 650  5000 950 
$Comp
L Device:Q_NMOS_SGD Q5
U 1 1 615FE0B0
P 4000 1400
F 0 "Q5" H 3900 1650 50  0000 L CNN
F 1 "Q_NMOS_SGD" H 3500 1550 50  0000 L CNN
F 2 "digikey-footprints:TO-92-3_Formed_Leads" H 4200 1500 50  0001 C CNN
F 3 "~" H 4000 1400 50  0001 C CNN
	1    4000 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 616045D9
P 4950 1800
F 0 "#PWR015" H 4950 1550 50  0001 C CNN
F 1 "GND" H 4955 1627 50  0000 C CNN
F 2 "" H 4950 1800 50  0001 C CNN
F 3 "" H 4950 1800 50  0001 C CNN
	1    4950 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 616048C6
P 4350 850
F 0 "R7" H 4420 896 50  0000 L CNN
F 1 "47k" H 4420 805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4280 850 50  0001 C CNN
F 3 "~" H 4350 850 50  0001 C CNN
	1    4350 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C4
U 1 1 61606FC2
P 4350 1400
F 0 "C4" H 4465 1446 50  0000 L CNN
F 1 "100uF" H 4465 1355 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 4350 1400 50  0001 C CNN
F 3 "~" H 4350 1400 50  0001 C CNN
	1    4350 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 700  4350 550 
Wire Wire Line
	4350 550  4900 550 
Wire Wire Line
	5000 950  4700 950 
Wire Wire Line
	4700 950  4700 1100
Wire Wire Line
	4700 1100 4350 1100
Wire Wire Line
	4350 1100 4350 1000
Connection ~ 5000 950 
Wire Wire Line
	4350 1100 4350 1250
Connection ~ 4350 1100
Wire Wire Line
	4350 1100 4100 1100
Wire Wire Line
	4100 1100 4100 1200
Wire Wire Line
	4100 1600 4100 1650
Wire Wire Line
	4100 1650 4350 1650
Wire Wire Line
	4350 1650 4350 1550
$Comp
L power:GND #PWR014
U 1 1 61612062
P 4350 1650
F 0 "#PWR014" H 4350 1400 50  0001 C CNN
F 1 "GND" H 4355 1477 50  0000 C CNN
F 2 "" H 4350 1650 50  0001 C CNN
F 3 "" H 4350 1650 50  0001 C CNN
	1    4350 1650
	1    0    0    -1  
$EndComp
Connection ~ 4350 1650
Wire Wire Line
	3700 1400 3800 1400
Wire Wire Line
	4250 550  4350 550 
Connection ~ 4350 550 
Text Notes 6350 2150 2    50   ~ 0
5 second delay after ignition off
$Comp
L Regulator_Linear:LP2950-5.0_TO92 U2
U 1 1 61627B65
P 6200 4250
F 0 "U2" H 6200 4492 50  0000 C CNN
F 1 "LP2950-5.0_TO92" H 6200 4401 50  0000 C CNN
F 2 "digikey-footprints:TO-92-3" H 6200 4475 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lp2951-n.pdf" H 6200 4200 50  0001 C CNN
	1    6200 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C6
U 1 1 6162BB7E
P 5850 4400
F 0 "C6" H 5650 4450 50  0000 L CNN
F 1 "2.2uF" H 5550 4350 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 5850 4400 50  0001 C CNN
F 3 "~" H 5850 4400 50  0001 C CNN
	1    5850 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C7
U 1 1 6162C2A4
P 6550 4400
F 0 "C7" H 6665 4446 50  0000 L CNN
F 1 "2.2uF" H 6665 4355 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 6550 4400 50  0001 C CNN
F 3 "~" H 6550 4400 50  0001 C CNN
	1    6550 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 4550 5850 4600
Wire Wire Line
	6550 4600 6550 4550
Wire Wire Line
	5850 4600 6200 4600
Wire Wire Line
	6200 4600 6200 4550
Connection ~ 6200 4600
Wire Wire Line
	6200 4600 6550 4600
$Comp
L power:GND #PWR017
U 1 1 6163063E
P 6200 4600
F 0 "#PWR017" H 6200 4350 50  0001 C CNN
F 1 "GND" H 6205 4427 50  0000 C CNN
F 2 "" H 6200 4600 50  0001 C CNN
F 3 "" H 6200 4600 50  0001 C CNN
	1    6200 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 4250 5850 4250
Wire Wire Line
	6500 4250 6550 4250
Wire Wire Line
	6650 4250 6550 4250
Connection ~ 6550 4250
Text Notes 5900 4750 2    50   ~ 0
5v regulator
$Comp
L Comparator:LM2903 U3
U 1 1 6163F503
P 8050 1100
F 0 "U3" H 8050 1467 50  0000 C CNN
F 1 "LM2903" H 8050 1376 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 8050 1100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm393.pdf" H 8050 1100 50  0001 C CNN
	1    8050 1100
	1    0    0    -1  
$EndComp
$Comp
L Comparator:LM2903 U3
U 2 1 6164008B
P 8050 1950
F 0 "U3" H 8050 2317 50  0000 C CNN
F 1 "LM2903" H 8050 2226 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 8050 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm393.pdf" H 8050 1950 50  0001 C CNN
	2    8050 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 61644667
P 7150 1650
F 0 "R8" H 7220 1696 50  0000 L CNN
F 1 "560" H 7220 1605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7080 1650 50  0001 C CNN
F 3 "~" H 7150 1650 50  0001 C CNN
	1    7150 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 61644B47
P 7150 2050
F 0 "R9" H 7220 2096 50  0000 L CNN
F 1 "1k" H 7220 2005 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7080 2050 50  0001 C CNN
F 3 "~" H 7150 2050 50  0001 C CNN
	1    7150 2050
	1    0    0    -1  
$EndComp
$Comp
L Comparator:LM2903 U3
U 3 1 61641072
P 6750 900
F 0 "U3" V 6845 900 50  0000 C CNN
F 1 "LM2903" V 6754 900 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 6750 900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm393.pdf" H 6750 900 50  0001 C CNN
	3    6750 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 600  6650 550 
Wire Wire Line
	6650 1200 6650 1250
$Comp
L power:GND #PWR018
U 1 1 61655D90
P 6650 1250
F 0 "#PWR018" H 6650 1000 50  0001 C CNN
F 1 "GND" H 6655 1077 50  0000 C CNN
F 2 "" H 6650 1250 50  0001 C CNN
F 3 "" H 6650 1250 50  0001 C CNN
	1    6650 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 1200 7750 1200
Wire Wire Line
	7150 1900 7150 1850
Wire Wire Line
	7150 2200 7150 2250
$Comp
L power:GND #PWR021
U 1 1 61666B75
P 7150 2250
F 0 "#PWR021" H 7150 2000 50  0001 C CNN
F 1 "GND" H 7155 2077 50  0000 C CNN
F 2 "" H 7150 2250 50  0001 C CNN
F 3 "" H 7150 2250 50  0001 C CNN
	1    7150 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 2050 7750 2050
Wire Wire Line
	7750 1850 7150 1850
Connection ~ 7150 1850
Wire Wire Line
	7150 1850 7150 1800
Wire Wire Line
	8350 1100 8400 1100
Wire Wire Line
	8350 1950 8450 1950
Text Notes 8550 2400 2    50   ~ 0
Comparitors for ignition off and\nserial line is less than 3.2V.
Wire Notes Line
	9100 2500 9100 500 
Wire Notes Line
	500  500  9300 500 
$Comp
L Device:R R10
U 1 1 6167D8EA
P 8400 850
F 0 "R10" H 8470 896 50  0000 L CNN
F 1 "10k" H 8470 805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8330 850 50  0001 C CNN
F 3 "~" H 8400 850 50  0001 C CNN
	1    8400 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 6167D4FD
P 8450 1650
F 0 "R11" H 8520 1696 50  0000 L CNN
F 1 "10k" H 8520 1605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8380 1650 50  0001 C CNN
F 3 "~" H 8450 1650 50  0001 C CNN
	1    8450 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 1950 8450 1800
Connection ~ 8450 1950
Wire Wire Line
	8450 1950 8500 1950
Wire Wire Line
	8450 1500 8450 1400
Wire Wire Line
	8450 1400 8600 1400
Wire Wire Line
	8400 1000 8400 1100
Connection ~ 8400 1100
Wire Wire Line
	8400 1100 8450 1100
Wire Wire Line
	8400 700  8400 600 
Wire Wire Line
	8400 600  8600 600 
NoConn ~ 9350 3050
Wire Wire Line
	9450 3150 9450 3250
Connection ~ 9450 3250
Wire Wire Line
	9450 3350 9450 3450
Connection ~ 9450 3350
$Comp
L power:GND #PWR025
U 1 1 61699249
P 9600 3400
F 0 "#PWR025" H 9600 3150 50  0001 C CNN
F 1 "GND" H 9605 3227 50  0000 C CNN
F 2 "" H 9600 3400 50  0001 C CNN
F 3 "" H 9600 3400 50  0001 C CNN
	1    9600 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 6169CDE9
P 7100 3600
F 0 "#PWR020" H 7100 3350 50  0001 C CNN
F 1 "GND" H 7105 3427 50  0000 C CNN
F 2 "" H 7100 3600 50  0001 C CNN
F 3 "" H 7100 3600 50  0001 C CNN
	1    7100 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 3550 7100 3550
Wire Wire Line
	7100 3550 7100 3600
Wire Wire Line
	7150 3150 7100 3150
Wire Wire Line
	7100 3150 7100 3100
Wire Wire Line
	7100 3050 7150 3050
Wire Wire Line
	7100 3100 7050 3100
Connection ~ 7100 3100
Wire Wire Line
	7100 3100 7100 3050
Wire Wire Line
	7050 3350 7150 3350
Wire Wire Line
	7050 3250 7150 3250
Text Notes 8550 3850 2    50   ~ 0
Burnoff AND logic
NoConn ~ 6000 1150
Wire Wire Line
	9450 3250 9450 3350
Wire Wire Line
	9450 3250 9550 3250
Wire Wire Line
	9550 3250 9550 3300
Wire Wire Line
	9550 3350 9450 3350
Wire Wire Line
	9550 3300 9600 3300
Wire Wire Line
	9600 3300 9600 3400
Connection ~ 9550 3300
Wire Wire Line
	9550 3300 9550 3350
Wire Wire Line
	9350 3150 9450 3150
Wire Wire Line
	9350 3250 9450 3250
Wire Wire Line
	9350 3350 9450 3350
Wire Wire Line
	9350 3450 9450 3450
$Comp
L Timer:NA555P U5
U 1 1 616F7852
P 10100 4600
F 0 "U5" H 9850 5050 50  0000 C CNN
F 1 "NA555P" H 9850 4950 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 10750 4200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ne555.pdf" H 10950 4200 50  0001 C CNN
	1    10100 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 616F7858
P 10100 5050
F 0 "#PWR026" H 10100 4800 50  0001 C CNN
F 1 "GND" H 10105 4877 50  0000 C CNN
F 2 "" H 10100 5050 50  0001 C CNN
F 3 "" H 10100 5050 50  0001 C CNN
	1    10100 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 5050 10100 5000
Wire Wire Line
	9600 4800 9500 4800
Wire Wire Line
	9500 4800 9500 4000
Wire Wire Line
	9500 4000 10100 4000
Wire Wire Line
	10100 4000 10100 4200
Connection ~ 9500 4000
$Comp
L Device:C C11
U 1 1 616F7865
P 9550 5050
F 0 "C11" H 9665 5096 50  0000 L CNN
F 1 "0.1uF" H 9665 5005 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 9588 4900 50  0001 C CNN
F 3 "~" H 9550 5050 50  0001 C CNN
	1    9550 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 4900 9550 4600
Wire Wire Line
	9550 4600 9600 4600
Wire Wire Line
	9550 5200 9550 5250
Wire Wire Line
	10600 4400 10700 4400
Wire Wire Line
	10600 4800 10650 4800
Wire Wire Line
	10650 4800 10650 4100
Wire Wire Line
	10650 4100 9600 4100
Wire Wire Line
	9600 4100 9600 4400
$Comp
L power:GND #PWR024
U 1 1 616F787B
P 9550 5250
F 0 "#PWR024" H 9550 5000 50  0001 C CNN
F 1 "GND" H 9555 5077 50  0000 C CNN
F 2 "" H 9550 5250 50  0001 C CNN
F 3 "" H 9550 5250 50  0001 C CNN
	1    9550 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 616F7881
P 8950 4850
F 0 "R12" H 9020 4896 50  0000 L CNN
F 1 "39k" H 9020 4805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8880 4850 50  0001 C CNN
F 3 "~" H 8950 4850 50  0001 C CNN
	1    8950 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C9
U 1 1 616F7887
P 8950 4350
F 0 "C9" H 9065 4396 50  0000 L CNN
F 1 "100uF" H 9065 4305 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 8950 4350 50  0001 C CNN
F 3 "~" H 8950 4350 50  0001 C CNN
	1    8950 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 4400 9300 4400
Connection ~ 9600 4400
Wire Wire Line
	8950 5100 8950 5000
$Comp
L power:GND #PWR022
U 1 1 616F789B
P 8950 5100
F 0 "#PWR022" H 8950 4850 50  0001 C CNN
F 1 "GND" H 8955 4927 50  0000 C CNN
F 2 "" H 8950 5100 50  0001 C CNN
F 3 "" H 8950 5100 50  0001 C CNN
	1    8950 5100
	1    0    0    -1  
$EndComp
NoConn ~ 10600 4600
Wire Wire Line
	8850 4000 8950 4000
Wire Wire Line
	8950 4200 8950 4100
Connection ~ 8950 4000
Wire Wire Line
	8950 4000 9500 4000
Wire Wire Line
	8950 4500 8950 4600
Wire Wire Line
	9300 4600 8950 4600
Wire Wire Line
	9300 4400 9300 4600
Connection ~ 8950 4600
Wire Wire Line
	8950 4600 8950 4700
Wire Wire Line
	8550 4150 8550 4100
Wire Wire Line
	8550 4100 8950 4100
Connection ~ 8950 4100
Wire Wire Line
	8950 4100 8950 4000
Wire Wire Line
	8550 4550 8550 4600
Wire Wire Line
	8550 4600 8950 4600
Text Notes 7500 5000 0    50   ~ 0
When ignition turns off\nand serial is <3.2V:\nwait 4 seconds,\nthen turn on burnoff for 1 second
Wire Notes Line
	11200 5500 7400 5500
Wire Notes Line
	7400 5500 7400 3900
Wire Notes Line
	6300 2500 11200 2500
Wire Notes Line
	11200 2500 11200 5500
Text Label 2200 2900 0    50   ~ 0
switched_vcc
Text Label 4150 600  2    50   ~ 0
switched_vcc
Wire Wire Line
	4150 600  4250 600 
Wire Wire Line
	4250 600  4250 550 
Text Label 5750 4250 2    50   ~ 0
switched_vcc
Text Label 7100 600  0    50   ~ 0
switched_vcc
Text Label 8600 600  0    50   ~ 0
switched_vcc
Text Label 8600 1400 0    50   ~ 0
switched_vcc
Text Label 7050 3100 2    50   ~ 0
switched_vcc
Text Label 10000 2950 0    50   ~ 0
switched_vcc
Text Label 8850 4000 2    50   ~ 0
switched_vcc
Text Label 3700 1400 2    50   ~ 0
ignition_d
Text Label 6650 4250 0    50   ~ 0
5v_reg
Text Label 7000 1250 2    50   ~ 0
5v_reg
Wire Wire Line
	7150 1000 7750 1000
Wire Wire Line
	7150 1000 7150 1250
Wire Wire Line
	7000 1250 7150 1250
Connection ~ 7150 1250
Wire Wire Line
	7150 1250 7150 1500
Text Label 1900 600  2    50   ~ 0
switched_vcc
Text Label 3350 1750 0    50   ~ 0
ignition
Text Label 850  3650 2    50   ~ 0
ignition
Text Label 2950 950  0    50   ~ 0
serial
Text Label 7650 2050 2    50   ~ 0
serial
Text Label 8450 1100 0    50   ~ 0
ignition_is_off
Text Label 7050 3250 2    50   ~ 0
ignition_is_off
Text Label 8500 1950 0    50   ~ 0
serial_is_low
Text Label 7050 3350 2    50   ~ 0
serial_is_low
Text Label 7050 2950 2    50   ~ 0
burnoff_asserted
Text Label 8150 4350 2    50   ~ 0
burnoff_asserted
Text Label 10700 4400 0    50   ~ 0
1sec_out
Text Label 3100 3650 2    50   ~ 0
1sec_out
Text Label 850  3800 2    50   ~ 0
5sec_out
Text Label 6100 950  0    50   ~ 0
5sec_out
$Comp
L Device:Q_NMOS_SGD Q1
U 1 1 615996BA
P 1750 3650
F 0 "Q1" H 1954 3696 50  0000 L CNN
F 1 "Q_NMOS_SGD" H 1954 3605 50  0000 L CNN
F 2 "digikey-footprints:TO-92-3_Formed_Leads" H 1950 3750 50  0001 C CNN
F 3 "~" H 1750 3650 50  0001 C CNN
	1    1750 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 3850 1850 3900
$Comp
L power:GND #PWR05
U 1 1 615ADD1F
P 1850 3900
F 0 "#PWR05" H 1850 3650 50  0001 C CNN
F 1 "GND" H 1855 3727 50  0000 C CNN
F 2 "" H 1850 3900 50  0001 C CNN
F 3 "" H 1850 3900 50  0001 C CNN
	1    1850 3900
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR04
U 1 1 615AE2D7
P 1600 1700
F 0 "#PWR04" H 1600 1550 50  0001 C CNN
F 1 "VCC" H 1615 1873 50  0000 C CNN
F 2 "" H 1600 1700 50  0001 C CNN
F 3 "" H 1600 1700 50  0001 C CNN
	1    1600 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 2000 1000 2050
$Comp
L power:GND #PWR01
U 1 1 615BABCF
P 1000 2050
F 0 "#PWR01" H 1000 1800 50  0001 C CNN
F 1 "GND" H 1005 1877 50  0000 C CNN
F 2 "" H 1000 2050 50  0001 C CNN
F 3 "" H 1000 2050 50  0001 C CNN
	1    1000 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 4250 5850 4250
Connection ~ 5850 4250
Wire Wire Line
	2450 2050 2450 2100
$Comp
L power:GND #PWR07
U 1 1 615CC484
P 2450 2100
F 0 "#PWR07" H 2450 1850 50  0001 C CNN
F 1 "GND" H 2455 1927 50  0000 C CNN
F 2 "" H 2450 2100 50  0001 C CNN
F 3 "" H 2450 2100 50  0001 C CNN
	1    2450 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 615CC8B2
P 2350 1300
F 0 "#PWR06" H 2350 1050 50  0001 C CNN
F 1 "GND" H 2355 1127 50  0000 C CNN
F 2 "" H 2350 1300 50  0001 C CNN
F 3 "" H 2350 1300 50  0001 C CNN
	1    2350 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1300 2350 1250
$Comp
L Device:Q_PMOS_GDS Q6
U 1 1 616FD52C
P 8450 4350
F 0 "Q6" H 8300 4100 50  0000 L CNN
F 1 "Q_PMOS_GDS" H 8000 4200 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-251-3_Vertical" H 8650 4450 50  0001 C CNN
F 3 "~" H 8450 4350 50  0001 C CNN
	1    8450 4350
	1    0    0    1   
$EndComp
Wire Wire Line
	8150 4350 8250 4350
Wire Wire Line
	7050 2950 7150 2950
$Comp
L Connector:Conn_01x06_Male J1
U 1 1 6164D6B6
P 550 1000
F 0 "J1" H 850 1400 50  0000 C CNN
F 1 "Conn_01x06_Male" H 950 1300 50  0000 C CNN
F 2 "Connector_Wire:SolderWire-1.5sqmm_1x06_P7.8mm_D1.7mm_OD3.9mm" H 550 1000 50  0001 C CNN
F 3 "~" H 550 1000 50  0001 C CNN
	1    550  1000
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D3
U 1 1 6160C87B
P 2100 600
F 0 "D3" H 2200 700 50  0000 C CNN
F 1 "D_Schottky" H 2200 750 50  0000 C CNN
F 2 "Diode_THT:D_DO-201AD_P12.70mm_Horizontal" H 2100 600 50  0001 C CNN
F 3 "~" H 2100 600 50  0001 C CNN
	1    2100 600 
	-1   0    0    1   
$EndComp
Wire Notes Line
	1400 500  1400 800 
Wire Notes Line
	1400 800  3250 800 
Wire Wire Line
	1950 600  1900 600 
Wire Wire Line
	7100 600  7050 600 
Wire Wire Line
	7050 600  7050 550 
$Comp
L power:GND #PWR019
U 1 1 6163E2BB
P 7000 900
F 0 "#PWR019" H 7000 650 50  0001 C CNN
F 1 "GND" H 7005 727 50  0000 C CNN
F 2 "" H 7000 900 50  0001 C CNN
F 3 "" H 7000 900 50  0001 C CNN
	1    7000 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 550  7000 550 
Wire Wire Line
	6650 550  7000 550 
Connection ~ 7000 550 
$Comp
L Device:C C8
U 1 1 6162FD06
P 7000 700
F 0 "C8" H 7115 746 50  0000 L CNN
F 1 "0.1uF" H 7115 655 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 7038 550 50  0001 C CNN
F 3 "~" H 7000 700 50  0001 C CNN
	1    7000 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 900  7000 850 
$Comp
L Device:C C10
U 1 1 6164605F
P 9750 3100
F 0 "C10" H 9850 3200 50  0000 L CNN
F 1 "0.1uF" H 9850 3100 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 9788 2950 50  0001 C CNN
F 3 "~" H 9750 3100 50  0001 C CNN
	1    9750 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 1700 1600 1700
Wire Wire Line
	2450 1750 2850 1750
$Comp
L Device:D D5
U 1 1 6160314A
P 3000 1950
F 0 "D5" H 3000 2150 50  0000 C CNN
F 1 "D" H 3000 2050 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" H 3000 1950 50  0001 C CNN
F 3 "~" H 3000 1950 50  0001 C CNN
	1    3000 1950
	-1   0    0    1   
$EndComp
Wire Wire Line
	2850 1950 2850 1750
Connection ~ 2850 1750
Text Label 3350 1950 0    50   ~ 0
ignition_d
$Comp
L Device:D D4
U 1 1 6160C812
P 2550 950
F 0 "D4" H 2550 1150 50  0000 C CNN
F 1 "D" H 2550 1050 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" H 2550 950 50  0001 C CNN
F 3 "~" H 2550 950 50  0001 C CNN
	1    2550 950 
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 6160D3BD
P 2800 1100
F 0 "R3" H 2870 1146 50  0000 L CNN
F 1 "10k" H 2870 1055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2730 1100 50  0001 C CNN
F 3 "~" H 2800 1100 50  0001 C CNN
	1    2800 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 950  2400 950 
Connection ~ 2350 950 
Wire Wire Line
	2700 950  2800 950 
Connection ~ 2800 950 
Wire Wire Line
	2800 950  2950 950 
$Comp
L power:GND #PWR08
U 1 1 6161C22A
P 2800 1300
F 0 "#PWR08" H 2800 1050 50  0001 C CNN
F 1 "GND" H 2950 1250 50  0000 C CNN
F 2 "" H 2800 1300 50  0001 C CNN
F 3 "" H 2800 1300 50  0001 C CNN
	1    2800 1300
	1    0    0    -1  
$EndComp
Text Label 7650 1200 2    50   ~ 0
ignition_d
$Comp
L Device:R R5
U 1 1 6166D41E
P 3250 2150
F 0 "R5" H 3320 2196 50  0000 L CNN
F 1 "10k" H 3320 2105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3180 2150 50  0001 C CNN
F 3 "~" H 3250 2150 50  0001 C CNN
	1    3250 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 1750 3350 1750
Wire Wire Line
	3250 2300 3250 2350
$Comp
L power:GND #PWR011
U 1 1 6168C389
P 3250 2350
F 0 "#PWR011" H 3250 2100 50  0001 C CNN
F 1 "GND" H 3255 2177 50  0000 C CNN
F 2 "" H 3250 2350 50  0001 C CNN
F 3 "" H 3250 2350 50  0001 C CNN
	1    3250 2350
	1    0    0    -1  
$EndComp
Wire Notes Line
	1750 2300 500  2300
Wire Notes Line
	1750 1650 3750 1650
Wire Notes Line
	1750 800  1750 2550
Wire Wire Line
	2800 1300 2800 1250
$Comp
L Device:D D2
U 1 1 61763F7D
P 1050 3800
F 0 "D2" H 1050 3900 50  0000 C CNN
F 1 "D" H 1050 4000 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" H 1050 3800 50  0001 C CNN
F 3 "~" H 1050 3800 50  0001 C CNN
	1    1050 3800
	-1   0    0    1   
$EndComp
Wire Wire Line
	900  3800 850  3800
$Comp
L Device:R R1
U 1 1 61782F7D
P 1450 3850
F 0 "R1" H 1520 3896 50  0000 L CNN
F 1 "10k" H 1520 3805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1380 3850 50  0001 C CNN
F 3 "~" H 1450 3850 50  0001 C CNN
	1    1450 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 3700 1450 3650
Connection ~ 1450 3650
Wire Wire Line
	1450 3650 1550 3650
Wire Wire Line
	1450 4000 1450 4050
$Comp
L power:GND #PWR03
U 1 1 6179303D
P 1450 4050
F 0 "#PWR03" H 1450 3800 50  0001 C CNN
F 1 "GND" H 1455 3877 50  0000 C CNN
F 2 "" H 1450 4050 50  0001 C CNN
F 3 "" H 1450 4050 50  0001 C CNN
	1    1450 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 3800 1250 3800
Wire Wire Line
	1250 3800 1250 3650
Wire Wire Line
	1250 3650 1450 3650
Wire Wire Line
	1250 3650 1200 3650
Connection ~ 1250 3650
Wire Notes Line
	500  500  500  4300
Wire Wire Line
	3150 1950 3250 1950
Wire Wire Line
	3250 2000 3250 1950
Connection ~ 3250 1950
Wire Wire Line
	3250 1950 3350 1950
Wire Notes Line
	1750 2550 2700 2550
Wire Notes Line
	2700 2550 2700 4300
Wire Notes Line
	3750 1650 3750 2600
Wire Wire Line
	3650 3900 3650 3850
$Comp
L Device:D_Schottky D6
U 1 1 61627B25
P 4150 2900
F 0 "D6" H 4250 3000 50  0000 C CNN
F 1 "D_Schottky" H 4250 3050 50  0000 C CNN
F 2 "Diode_THT:D_DO-201AD_P12.70mm_Horizontal" H 4150 2900 50  0001 C CNN
F 3 "~" H 4150 2900 50  0001 C CNN
	1    4150 2900
	-1   0    0    1   
$EndComp
Wire Wire Line
	4350 2900 4300 2900
Wire Wire Line
	3100 3650 3200 3650
Wire Notes Line
	500  4300 4950 4300
Wire Notes Line
	4950 3900 11200 3900
Wire Notes Line
	4950 2600 4950 4850
Wire Notes Line
	4950 4850 7400 4850
Wire Notes Line
	6500 500  6500 2500
$Comp
L Device:R R4
U 1 1 618C2B9D
P 3200 3850
F 0 "R4" H 3270 3896 50  0000 L CNN
F 1 "10k" H 3270 3805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3130 3850 50  0001 C CNN
F 3 "~" H 3200 3850 50  0001 C CNN
	1    3200 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 3700 3200 3650
Connection ~ 3200 3650
Wire Wire Line
	3200 3650 3350 3650
Wire Wire Line
	3200 4000 3200 4050
$Comp
L power:GND #PWR010
U 1 1 618D4790
P 3200 4050
F 0 "#PWR010" H 3200 3800 50  0001 C CNN
F 1 "GND" H 3205 3877 50  0000 C CNN
F 2 "" H 3200 4050 50  0001 C CNN
F 3 "" H 3200 4050 50  0001 C CNN
	1    3200 4050
	1    0    0    -1  
$EndComp
Wire Notes Line
	2700 2600 6300 2600
Wire Notes Line
	6300 2500 6300 3900
Wire Wire Line
	10000 2950 9750 2950
Wire Wire Line
	9350 2950 9750 2950
Connection ~ 9750 2950
$Comp
L CD4082BE:CD4082BE U4
U 1 1 6167C5B2
P 7150 2950
F 0 "U4" H 8250 3337 60  0000 C CNN
F 1 "CD4082BE" H 8250 3231 60  0000 C CNN
F 2 "footprints:CD4082BE" H 8250 3190 60  0001 C CNN
F 3 "" H 7150 2950 60  0000 C CNN
	1    7150 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 6166E6B1
P 9750 3300
F 0 "#PWR0101" H 9750 3050 50  0001 C CNN
F 1 "GND" H 9755 3127 50  0000 C CNN
F 2 "" H 9750 3300 50  0001 C CNN
F 3 "" H 9750 3300 50  0001 C CNN
	1    9750 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 3300 9750 3250
$EndSCHEMATC

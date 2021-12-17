EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "Cafe_Veloce"
Date "2021-12-08"
Rev "v2"
Comp "WyoLum"
Comment1 "controller for Cafe Veloce eBicycle"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 3025 700  0    40   ~ 0
72V
Text Label 3025 1000 0    40   ~ 0
12V
Wire Wire Line
	1050 4450 775  4450
Text Label 3025 1300 0    40   ~ 0
5V
Wire Wire Line
	1250 6125 1300 6125
Wire Wire Line
	1300 6125 1300 5800
Wire Wire Line
	1300 5800 2050 5800
Wire Wire Line
	2000 6125 2050 6125
Wire Wire Line
	2050 6125 2050 5800
Connection ~ 2050 5800
Wire Wire Line
	2050 5800 2225 5800
NoConn ~ 2000 6325
NoConn ~ 2000 6425
NoConn ~ 1250 6325
NoConn ~ 1250 6425
Wire Wire Line
	850  6725 850  6775
Wire Wire Line
	850  6775 950  6775
Wire Wire Line
	950  6725 950  6775
Connection ~ 950  6775
Wire Wire Line
	950  6775 1600 6775
Wire Wire Line
	1600 6725 1600 6775
Connection ~ 1600 6775
Wire Wire Line
	1600 6775 1700 6775
Wire Wire Line
	1700 6725 1700 6775
Connection ~ 1700 6775
Wire Wire Line
	1700 6775 2225 6775
Text Label 2225 5800 0    40   ~ 0
5V
Text Label 2225 6775 0    40   ~ 0
GND
Text Label 775  3550 0    40   ~ 0
OUT1
Text Label 775  3650 0    40   ~ 0
OUT2
Text Label 775  3750 0    40   ~ 0
OUT3
Text Label 775  3850 0    40   ~ 0
OUT4
Text Label 775  3950 0    40   ~ 0
OUT5
Text Label 775  4050 0    40   ~ 0
OUT6
Text Label 775  4150 0    40   ~ 0
OUT7
Text Label 775  4250 0    40   ~ 0
OUT8
Text Label 775  4450 0    40   ~ 0
GND
Text Label 2425 4250 2    40   ~ 0
BRAKE
Wire Wire Line
	2975 2200 3175 2200
Text Label 3175 2200 2    40   ~ 0
BRAKE
Connection ~ 1300 5800
Wire Wire Line
	2250 4450 2525 4450
Wire Wire Line
	2975 2100 3200 2100
Text Label 3025 2100 0    40   ~ 0
GND
$Comp
L veloce:Screw_Terminal_01x16 J9
U 1 1 617B0E01
P 2775 1400
F 0 "J9" H 2850 2175 50  0000 L CNB
F 1 "PWR" H 2975 1300 40  0001 L CNN
F 2 "veloce:TerminalBlock_Wurth_1377-16_Horizontal" H 2775 1400 50  0001 C CNN
F 3 "https://www.we-online.de/katalog/datasheet/691137710002.pdf" H 2775 1400 50  0001 C CNN
F 4 "691137710002" H 2775 1400 50  0001 C CNN "PN"
	1    2775 1400
	-1   0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 61B35814
P 1300 5800
F 0 "#FLG0101" H 1300 5875 50  0001 C CNN
F 1 "PWR_FLAG" H 1325 6025 50  0001 C CNN
F 2 "" H 1300 5800 50  0001 C CNN
F 3 "~" H 1300 5800 50  0001 C CNN
	1    1300 5800
	1    0    0    -1  
$EndComp
$Comp
L veloce:LV_Buck PS2
U 1 1 61483027
P 1125 2125
F 0 "PS2" H 925 2300 50  0000 C CNB
F 1 "LM2569" H 1350 2275 40  0000 C CNN
F 2 "veloce:5VReg_module_LM2596" H 75  1875 50  0001 L CNN
F 3 "https://www.amazon.com/Diatone-5V-2Amp-Voltage-Regulator/dp/B07FN7JQJZ" H 2175 1825 50  0001 L CNN
	1    1125 2125
	1    0    0    -1  
$EndComp
$Comp
L veloce:Battery_virtual #BT1
U 1 1 61475F27
P 1100 700
F 0 "#BT1" V 975 325 50  0000 L CNB
F 1 "Battery" V 1050 325 40  0000 L CNN
F 2 "" V 1100 760 50  0001 C CNN
F 3 "~" V 1100 760 50  0001 C CNN
	1    1100 700 
	0    1    1    0   
$EndComp
Wire Wire Line
	775  3550 1050 3550
Wire Wire Line
	1050 3650 775  3650
Wire Wire Line
	775  3750 1050 3750
Wire Wire Line
	1050 3850 775  3850
Wire Wire Line
	1050 4250 775  4250
Wire Wire Line
	775  4150 1050 4150
Wire Wire Line
	1050 4050 775  4050
Wire Wire Line
	775  3950 1050 3950
$Comp
L veloce:R R33
U 1 1 6185D09E
P 3200 4250
F 0 "R33" V 3100 4175 50  0000 L CNB
F 1 "10k" V 3200 4175 40  0000 L CNN
F 2 "veloce:r_0805_THT" V 3130 4250 50  0001 C CNN
F 3 "~" H 3200 4250 50  0001 C CNN
	1    3200 4250
	0    1    1    0   
$EndComp
Text Label 3500 4550 2    40   ~ 0
GND
Text Label 3500 3950 2    40   ~ 0
3V3
Text Notes 2275 700  0    40   ~ 0
72V
Text Notes 2275 800  0    40   ~ 0
72V
Text Notes 2250 1600 0    40   ~ 0
GND
Text Notes 2275 900  0    40   ~ 0
72V
Text Notes 2250 1700 0    40   ~ 0
GND
Text Notes 2275 1000 0    40   ~ 0
12V
Text Notes 2250 1800 0    40   ~ 0
GND
Text Notes 2250 1900 0    40   ~ 0
GND
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 61B6125A
P 3325 2150
F 0 "#FLG0102" H 3325 2225 50  0001 C CNN
F 1 "PWR_FLAG" H 3350 2375 50  0001 C CNN
F 2 "" H 3325 2150 50  0001 C CNN
F 3 "~" H 3325 2150 50  0001 C CNN
	1    3325 2150
	-1   0    0    1   
$EndComp
Wire Wire Line
	3325 2150 3325 2100
$Comp
L veloce:USB_A_stacked J17
U 1 1 61BB6806
P 950 6325
F 0 "J17" H 825 6750 50  0000 C CNB
F 1 "USB_A_stacked" H 975 6675 40  0000 C CNN
F 2 "veloce:USB_A_Wuerth_61400826021_Horizontal_Stacked" H 1100 6275 50  0001 C CNN
F 3 "https://www.alliedcomponents.com/storage/rj45/pdfs/ausb2-4599.pdf" H 1100 6275 50  0001 C CNN
F 4 "USB-A-D-RA" V 700 6225 40  0000 C CNN "PN"
	1    950  6325
	1    0    0    -1  
$EndComp
$Comp
L veloce:USB_A_stacked J17
U 2 1 61BB75E5
P 1700 6325
F 0 "J17" H 1575 6750 50  0000 C CNB
F 1 "USB_A_stacked" H 1725 6675 40  0000 C CNN
F 2 "veloce:USB_A_Wuerth_61400826021_Horizontal_Stacked" H 1850 6275 50  0001 C CNN
F 3 "https://www.alliedcomponents.com/storage/rj45/pdfs/ausb2-4599.pdf" H 1850 6275 50  0001 C CNN
F 4 "USB-A-D-RA" V 1450 6225 40  0000 C CNN "PN"
	2    1700 6325
	1    0    0    -1  
$EndComp
$Comp
L veloce:Jumper_3_Open JP1
U 1 1 61C0289E
P 3500 4250
F 0 "JP1" V 3500 4425 50  0000 L CNB
F 1 "Pull_Up_Dn" H 3500 4350 40  0000 C CNN
F 2 "veloce:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm_THT" H 3500 4250 50  0001 C CNN
F 3 "~" H 3500 4250 50  0001 C CNN
	1    3500 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	2250 4250 3050 4250
Wire Wire Line
	3500 4000 3500 3950
$Comp
L veloce:Adafruit_HUZZAH_ESP32_breakout_physical U1
U 1 1 61D22746
P 1650 3750
F 0 "U1" H 1250 4750 50  0000 C CNB
F 1 "Adafruit_HUZZAH_ESP32_breakout_physical" H 1850 4825 40  0000 C CNN
F 2 "veloce:Adafruit_HUZZAH_ESP32_breakout_FIXED" H 1850 4350 50  0001 C CNN
F 3 "https://www.adafruit.com/product/2471" H 1950 4450 50  0001 C CNN
	1    1650 3750
	1    0    0    -1  
$EndComp
Text Label 2525 4450 2    40   ~ 0
5V
Wire Wire Line
	2250 4150 2525 4150
Text Label 2525 4150 2    40   ~ 0
IN8
Wire Wire Line
	2250 4050 2525 4050
Text Label 2525 4050 2    40   ~ 0
IN7
Wire Wire Line
	2250 3950 2525 3950
Text Label 2525 3950 2    40   ~ 0
IN6
Wire Wire Line
	2250 3850 2525 3850
Text Label 2525 3850 2    40   ~ 0
IN5
Wire Wire Line
	2250 3750 2525 3750
Text Label 2525 3750 2    40   ~ 0
IN4
Wire Wire Line
	2250 3650 2525 3650
Text Label 2525 3650 2    40   ~ 0
IN3
Wire Wire Line
	2250 3550 2525 3550
Text Label 2525 3550 2    40   ~ 0
IN2
Wire Wire Line
	2250 3450 2525 3450
Text Label 2525 3450 2    40   ~ 0
IN1
Wire Wire Line
	1050 4350 775  4350
Text Label 775  4350 0    40   ~ 0
3V3
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 61FBE8A1
P 9950 3050
F 0 "#FLG0103" H 9950 3125 50  0001 C CNN
F 1 "PWR_FLAG" H 9975 3275 50  0001 C CNN
F 2 "" H 9950 3050 50  0001 C CNN
F 3 "~" H 9950 3050 50  0001 C CNN
	1    9950 3050
	1    0    0    -1  
$EndComp
$Comp
L veloce:Conn_02x08_Odd_Even J20
U 1 1 6204BF9A
P 2775 3800
F 0 "J20" H 2775 3275 50  0000 C CNB
F 1 "Inputs" H 2775 3350 40  0000 C CNN
F 2 "veloce:TerminalBlock_Wurth_1377-16_Horizontal" H 2775 3800 50  0001 C CNN
F 3 "~" H 2775 3800 50  0001 C CNN
	1    2775 3800
	1    0    0    1   
$EndComp
Wire Wire Line
	3025 3450 3100 3450
Wire Wire Line
	3100 3450 3100 3550
Wire Wire Line
	3100 4150 3025 4150
Wire Wire Line
	3025 4050 3100 4050
Connection ~ 3100 4050
Wire Wire Line
	3100 4050 3100 4150
Wire Wire Line
	3025 3950 3100 3950
Connection ~ 3100 3950
Wire Wire Line
	3100 3950 3100 4050
Wire Wire Line
	3025 3850 3100 3850
Connection ~ 3100 3850
Wire Wire Line
	3100 3850 3100 3950
Wire Wire Line
	3025 3750 3100 3750
Connection ~ 3100 3750
Wire Wire Line
	3100 3750 3100 3850
Wire Wire Line
	3025 3650 3100 3650
Connection ~ 3100 3650
Wire Wire Line
	3100 3650 3100 3750
Wire Wire Line
	3025 3550 3100 3550
Connection ~ 3100 3550
Wire Wire Line
	3100 3550 3100 3650
Wire Wire Line
	3100 3450 3325 3450
Text Label 3325 3450 2    40   ~ 0
GND
Wire Wire Line
	3500 4500 3500 4550
$Comp
L veloce:Jumper_3_Open JP2
U 1 1 62389747
P 9650 3375
F 0 "JP2" V 9650 3525 50  0000 L CNB
F 1 "Pull_Up_Dn" H 9650 3475 40  0000 C CNN
F 2 "veloce:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm_THT" H 9650 3375 50  0001 C CNN
F 3 "~" H 9650 3375 50  0001 C CNN
	1    9650 3375
	0    1    1    0   
$EndComp
Wire Wire Line
	9475 3375 9500 3375
Wire Wire Line
	9175 3375 9075 3375
Text Label 9075 3375 0    40   ~ 0
IN1
$Comp
L veloce:Jumper_3_Open JP4
U 1 1 623D30BD
P 9650 3975
F 0 "JP4" V 9650 4125 50  0000 L CNB
F 1 "Pull_Up_Dn" H 9650 4075 40  0000 C CNN
F 2 "veloce:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm_THT" H 9650 3975 50  0001 C CNN
F 3 "~" H 9650 3975 50  0001 C CNN
	1    9650 3975
	0    1    1    0   
$EndComp
Wire Wire Line
	9475 3975 9500 3975
Wire Wire Line
	9175 3975 9075 3975
Text Label 10925 3375 2    40   ~ 0
IN2
$Comp
L veloce:Jumper_3_Open JP6
U 1 1 623E6007
P 9650 4575
F 0 "JP6" V 9650 4725 50  0000 L CNB
F 1 "Pull_Up_Dn" H 9650 4675 40  0000 C CNN
F 2 "veloce:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm_THT" H 9650 4575 50  0001 C CNN
F 3 "~" H 9650 4575 50  0001 C CNN
	1    9650 4575
	0    1    1    0   
$EndComp
Wire Wire Line
	9475 4575 9500 4575
Wire Wire Line
	9175 4575 9075 4575
Text Label 9075 3975 0    40   ~ 0
IN3
$Comp
L veloce:Jumper_3_Open JP8
U 1 1 623E601E
P 9650 5175
F 0 "JP8" V 9650 5325 50  0000 L CNB
F 1 "Pull_Up_Dn" H 9650 5275 40  0000 C CNN
F 2 "veloce:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm_THT" H 9650 5175 50  0001 C CNN
F 3 "~" H 9650 5175 50  0001 C CNN
	1    9650 5175
	0    1    1    0   
$EndComp
Wire Wire Line
	9475 5175 9500 5175
Text Label 10925 3975 2    40   ~ 0
IN4
$Comp
L veloce:Jumper_3_Open JP3
U 1 1 623FEC1D
P 10350 3375
F 0 "JP3" V 10350 3525 50  0000 L CNB
F 1 "Pull_Up_Dn" H 10350 3475 40  0000 C CNN
F 2 "veloce:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm_THT" H 10350 3375 50  0001 C CNN
F 3 "~" H 10350 3375 50  0001 C CNN
	1    10350 3375
	0    -1   1    0   
$EndComp
Wire Wire Line
	10525 3375 10500 3375
Wire Wire Line
	10825 3375 10925 3375
Text Label 9075 4575 0    40   ~ 0
IN5
$Comp
L veloce:Jumper_3_Open JP5
U 1 1 623FEC34
P 10350 3975
F 0 "JP5" V 10350 4125 50  0000 L CNB
F 1 "Pull_Up_Dn" H 10350 4075 40  0000 C CNN
F 2 "veloce:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm_THT" H 10350 3975 50  0001 C CNN
F 3 "~" H 10350 3975 50  0001 C CNN
	1    10350 3975
	0    -1   1    0   
$EndComp
Wire Wire Line
	10525 3975 10500 3975
Wire Wire Line
	10825 3975 10925 3975
Text Label 10925 4575 2    40   ~ 0
IN6
$Comp
L veloce:Jumper_3_Open JP7
U 1 1 623FEC4B
P 10350 4575
F 0 "JP7" V 10350 4725 50  0000 L CNB
F 1 "Pull_Up_Dn" H 10350 4675 40  0000 C CNN
F 2 "veloce:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm_THT" H 10350 4575 50  0001 C CNN
F 3 "~" H 10350 4575 50  0001 C CNN
	1    10350 4575
	0    -1   1    0   
$EndComp
Wire Wire Line
	10525 4575 10500 4575
Wire Wire Line
	10825 4575 10925 4575
Text Label 9075 5175 0    40   ~ 0
IN7
$Comp
L veloce:Jumper_3_Open JP9
U 1 1 623FEC62
P 10350 5175
F 0 "JP9" V 10350 5325 50  0000 L CNB
F 1 "Pull_Up_Dn" H 10350 5275 40  0000 C CNN
F 2 "veloce:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm_THT" H 10350 5175 50  0001 C CNN
F 3 "~" H 10350 5175 50  0001 C CNN
	1    10350 5175
	0    -1   1    0   
$EndComp
Wire Wire Line
	10525 5175 10500 5175
Wire Wire Line
	10825 5175 10925 5175
Text Label 10925 5175 2    40   ~ 0
IN8
Wire Wire Line
	9175 5175 9075 5175
Wire Wire Line
	9950 3050 9950 3125
Wire Wire Line
	9950 4925 9650 4925
Wire Wire Line
	10350 4925 9950 4925
Connection ~ 9950 4925
Wire Wire Line
	9650 4325 9950 4325
Connection ~ 9950 4325
Wire Wire Line
	9950 4325 9950 4925
Wire Wire Line
	10350 4325 9950 4325
Wire Wire Line
	9650 3725 9950 3725
Connection ~ 9950 3725
Wire Wire Line
	9950 3725 9950 4325
Wire Wire Line
	10350 3725 9950 3725
Wire Wire Line
	9650 3125 9950 3125
Connection ~ 9950 3125
Wire Wire Line
	9950 3125 9950 3725
Wire Wire Line
	10350 3125 9950 3125
Wire Wire Line
	10050 3000 10050 3625
Wire Wire Line
	10050 5425 10350 5425
Wire Wire Line
	10050 5425 9650 5425
Connection ~ 10050 5425
Wire Wire Line
	9650 4825 10050 4825
Connection ~ 10050 4825
Wire Wire Line
	10050 4825 10050 5425
Wire Wire Line
	10050 4825 10350 4825
Wire Wire Line
	9650 4225 10050 4225
Connection ~ 10050 4225
Wire Wire Line
	10050 4225 10050 4825
Wire Wire Line
	10050 4225 10350 4225
Wire Wire Line
	9650 3625 10050 3625
Connection ~ 10050 3625
Wire Wire Line
	10050 3625 10050 4225
Wire Wire Line
	10050 3625 10350 3625
Text Label 9950 3075 2    40   ~ 0
3V3
Text Label 10050 3000 0    40   ~ 0
GND
Text Notes 9325 2775 0    50   ~ 10
NOTE :\nThis block allows setting each input\nwith pull up or pull down
Wire Notes Line
	9300 2800 9300 2525
Wire Notes Line
	9300 2525 10750 2525
Wire Notes Line
	10750 2525 10750 2800
Wire Notes Line
	9300 2800 10750 2800
Wire Notes Line
	10000 2925 9950 2875
Wire Notes Line
	9950 2875 10050 2875
Wire Notes Line
	10050 2875 10000 2925
Connection ~ 3100 3450
$Comp
L veloce:R R27
U 1 1 6298BE0A
P 9325 3975
F 0 "R27" V 9225 3900 50  0000 L CNB
F 1 "10k" V 9325 3900 40  0000 L CNN
F 2 "veloce:r_0805_THT" V 9255 3975 50  0001 C CNN
F 3 "~" H 9325 3975 50  0001 C CNN
	1    9325 3975
	0    1    1    0   
$EndComp
$Comp
L veloce:R R28
U 1 1 6298C53D
P 10675 3975
F 0 "R28" V 10575 3900 50  0000 L CNB
F 1 "10k" V 10675 3900 40  0000 L CNN
F 2 "veloce:r_0805_THT" V 10605 3975 50  0001 C CNN
F 3 "~" H 10675 3975 50  0001 C CNN
	1    10675 3975
	0    -1   -1   0   
$EndComp
$Comp
L veloce:R R30
U 1 1 6298CC87
P 10675 4575
F 0 "R30" V 10575 4500 50  0000 L CNB
F 1 "10k" V 10675 4500 40  0000 L CNN
F 2 "veloce:r_0805_THT" V 10605 4575 50  0001 C CNN
F 3 "~" H 10675 4575 50  0001 C CNN
	1    10675 4575
	0    -1   -1   0   
$EndComp
$Comp
L veloce:R R29
U 1 1 6298E310
P 9325 4575
F 0 "R29" V 9225 4500 50  0000 L CNB
F 1 "10k" V 9325 4500 40  0000 L CNN
F 2 "veloce:r_0805_THT" V 9255 4575 50  0001 C CNN
F 3 "~" H 9325 4575 50  0001 C CNN
	1    9325 4575
	0    1    1    0   
$EndComp
$Comp
L veloce:R R31
U 1 1 6298EEED
P 9325 5175
F 0 "R31" V 9225 5100 50  0000 L CNB
F 1 "10k" V 9325 5100 40  0000 L CNN
F 2 "veloce:r_0805_THT" V 9255 5175 50  0001 C CNN
F 3 "~" H 9325 5175 50  0001 C CNN
	1    9325 5175
	0    1    1    0   
$EndComp
$Comp
L veloce:R R32
U 1 1 6298FB8F
P 10675 5175
F 0 "R32" V 10575 5100 50  0000 L CNB
F 1 "10k" V 10675 5100 40  0000 L CNN
F 2 "veloce:r_0805_THT" V 10605 5175 50  0001 C CNN
F 3 "~" H 10675 5175 50  0001 C CNN
	1    10675 5175
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 6154A6B7
P 875 7400
F 0 "H1" H 875 7275 50  0000 C CNN
F 1 "Screw" H 875 7200 50  0000 C CNN
F 2 "veloce:MountingHole_3.2mmx6.4mm_M3_Pad_Via" H 875 7400 50  0001 C CNN
F 3 "~" H 875 7400 50  0001 C CNN
	1    875  7400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 6154B1BE
P 1175 7400
F 0 "H2" H 1175 7275 50  0000 C CNN
F 1 "Screw" H 1175 7200 50  0000 C CNN
F 2 "veloce:MountingHole_3.2mmx6.4mm_M3_Pad_Via" H 1175 7400 50  0001 C CNN
F 3 "~" H 1175 7400 50  0001 C CNN
	1    1175 7400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 6154B340
P 1475 7400
F 0 "H3" H 1475 7275 50  0000 C CNN
F 1 "Screw" H 1475 7200 50  0000 C CNN
F 2 "veloce:MountingHole_3.2mmx6.4mm_M3_Pad_Via" H 1475 7400 50  0001 C CNN
F 3 "~" H 1475 7400 50  0001 C CNN
	1    1475 7400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 6154B4D2
P 1775 7400
F 0 "H4" H 1775 7275 50  0000 C CNN
F 1 "Screw" H 1775 7200 50  0000 C CNN
F 2 "veloce:MountingHole_3.2mmx6.4mm_M3_Pad_Via" H 1775 7400 50  0001 C CNN
F 3 "~" H 1775 7400 50  0001 C CNN
	1    1775 7400
	1    0    0    -1  
$EndComp
Wire Notes Line
	10000 2800 10000 2875
Wire Notes Line width 15 style solid
	9000 2475 11000 2475
Wire Notes Line width 15 style solid
	11000 2475 11000 5525
Wire Notes Line width 15 style solid
	11000 5525 9000 5525
Wire Notes Line width 15 style solid
	9000 5525 9000 2475
Wire Wire Line
	2975 700  3200 700 
Wire Wire Line
	3200 700  3200 800 
Wire Wire Line
	3200 900  2975 900 
Wire Wire Line
	2975 800  3200 800 
Connection ~ 3200 800 
Wire Wire Line
	3200 800  3200 900 
Wire Wire Line
	2975 1000 3200 1000
Wire Wire Line
	3200 1000 3200 1100
Wire Wire Line
	3200 1100 2975 1100
Wire Wire Line
	2975 1400 3200 1400
Wire Wire Line
	3200 1400 3200 1500
Wire Wire Line
	3200 1500 2975 1500
Connection ~ 3200 2100
Wire Wire Line
	3200 2100 3325 2100
Wire Wire Line
	2975 2000 3200 2000
Connection ~ 3200 2000
Wire Wire Line
	3200 2000 3200 2100
Wire Wire Line
	2975 1900 3200 1900
Connection ~ 3200 1900
Wire Wire Line
	3200 1900 3200 2000
Wire Wire Line
	2975 1800 3200 1800
Connection ~ 3200 1800
Wire Wire Line
	3200 1800 3200 1900
Wire Wire Line
	2975 1700 3200 1700
Connection ~ 3200 1700
Wire Wire Line
	3200 1700 3200 1800
Wire Wire Line
	2975 1600 3200 1600
Wire Wire Line
	3200 1600 3200 1700
Wire Wire Line
	1300 700  2250 700 
Wire Wire Line
	2400 800  2250 800 
Wire Wire Line
	2250 800  2250 700 
Connection ~ 2250 700 
Wire Wire Line
	2250 700  2400 700 
Wire Wire Line
	2400 900  650  900 
Wire Wire Line
	650  900  650  1150
Wire Wire Line
	2400 1000 1600 1000
Wire Wire Line
	1600 1000 1600 1150
NoConn ~ 2400 700 
NoConn ~ 2400 800 
NoConn ~ 2400 900 
NoConn ~ 2400 1000
NoConn ~ 2400 1600
NoConn ~ 2400 1700
NoConn ~ 2400 1800
NoConn ~ 2400 1900
Wire Wire Line
	1850 1500 650  1500
Wire Wire Line
	650  1500 650  1250
Wire Wire Line
	2400 1800 1950 1800
Wire Wire Line
	1950 1800 1950 1250
Wire Wire Line
	2400 1900 1850 1900
Wire Wire Line
	1850 1900 1850 1500
Wire Wire Line
	2400 1700 2050 1700
Wire Wire Line
	2050 1700 2050 1600
Wire Wire Line
	2050 825  650  825 
Wire Wire Line
	650  825  650  700 
Wire Wire Line
	650  700  900  700 
Wire Wire Line
	2400 1600 2050 1600
Connection ~ 2050 1600
Wire Wire Line
	2050 1600 2050 825 
Wire Wire Line
	1950 1250 1525 1250
Wire Wire Line
	1600 1150 1525 1150
Wire Wire Line
	650  1150 725  1150
Wire Wire Line
	650  1250 725  1250
$Comp
L veloce:HV_Buck_virtual #PS1
U 1 1 6147E706
P 1125 1200
F 0 "#PS1" H 925 1375 50  0000 C CNB
F 1 "HVB" H 1375 1350 40  0000 C CNN
F 2 "" H 75  950 50  0001 L CNN
F 3 "" H 2175 900 50  0001 L CNN
	1    1125 1200
	1    0    0    -1  
$EndComp
NoConn ~ 1050 3050
NoConn ~ 1050 3150
NoConn ~ 1050 3250
NoConn ~ 1050 3350
NoConn ~ 1050 3450
NoConn ~ 2250 3050
NoConn ~ 2250 3150
NoConn ~ 2250 3250
NoConn ~ 2250 3350
NoConn ~ 1400 4850
NoConn ~ 1500 4850
NoConn ~ 1600 4850
NoConn ~ 1700 4850
NoConn ~ 1800 4850
NoConn ~ 1900 4850
NoConn ~ 2250 4350
$Comp
L veloce:Logo_Veloce G2
U 1 1 6157474A
P 8975 6850
F 0 "G2" H 8975 6525 60  0001 C CNN
F 1 "Logo_Veloce" H 8975 7175 60  0001 C CNN
F 2 "veloce:VR_logo5" H 8975 6850 50  0001 C CNN
F 3 "" H 8975 6850 50  0001 C CNN
	1    8975 6850
	1    0    0    -1  
$EndComp
$Comp
L veloce:Logo_Veloce G3
U 1 1 61576B43
P 8975 6850
F 0 "G3" H 8975 6525 60  0001 C CNN
F 1 "Logo_Veloce" H 8975 7175 60  0001 C CNN
F 2 "veloce:VR_logo2" H 8975 6850 50  0001 C CNN
F 3 "" H 8975 6850 50  0001 C CNN
	1    8975 6850
	1    0    0    -1  
$EndComp
$Comp
L veloce:Logo_Veloce G4
U 1 1 61579302
P 8975 6850
F 0 "G4" H 8975 6525 60  0001 C CNN
F 1 "Logo_Veloce" H 8975 7175 60  0001 C CNN
F 2 "veloce:VR_logo3" H 8975 6850 50  0001 C CNN
F 3 "" H 8975 6850 50  0001 C CNN
	1    8975 6850
	1    0    0    -1  
$EndComp
$Comp
L veloce:Logo_Veloce G1
U 1 1 6157F0FB
P 8975 6850
F 0 "G1" H 8975 6525 60  0001 C CNN
F 1 "Logo_Veloce" H 8975 7175 60  0001 C CNN
F 2 "veloce:VR_logo4" H 8975 6850 50  0001 C CNN
F 3 "" H 8975 6850 50  0001 C CNN
	1    8975 6850
	1    0    0    -1  
$EndComp
$Comp
L veloce:Logo_OSHW G7
U 1 1 616DFC4B
P 10800 7000
F 0 "G7" H 10800 6950 40  0001 C CNN
F 1 "Logo_OSHW" H 10800 7100 40  0001 C CNN
F 2 "veloce:Logo_OSHW-11.4x12mm_SilkScreen" H 10800 7000 60  0001 C CNN
F 3 "" H 10800 7000 60  0000 C CNN
	1    10800 7000
	1    0    0    -1  
$EndComp
$Comp
L veloce:LOGO_WL G5
U 1 1 616EBDBF
P 7900 6700
F 0 "G5" H 7900 6564 60  0001 C CNN
F 1 "LOGO_WL" H 7900 6836 60  0001 C CNN
F 2 "veloce:logo_butterfly_silk_15x12" H 7900 6700 60  0001 C CNN
F 3 "" H 7900 6700 60  0001 C CNN
	1    7900 6700
	1    0    0    -1  
$EndComp
$Comp
L veloce:LOGO_WL G6
U 1 1 6151078E
P 7900 6700
F 0 "G6" H 7900 6564 60  0001 C CNN
F 1 "LOGO_WL" H 7900 6836 60  0001 C CNN
F 2 "veloce:logo_butterfly_mask_15x12" H 7900 6700 60  0001 C CNN
F 3 "" H 7900 6700 60  0001 C CNN
	1    7900 6700
	1    0    0    -1  
$EndComp
$Comp
L veloce:Logo_Wyolum G8
U 1 1 6154CB45
P 7275 6675
F 0 "G8" H 7275 6585 60  0001 C CNN
F 1 "Logo_Wyolum" H 7275 6765 60  0001 C CNN
F 2 "veloce:logo_wyolum_silk_20x8" H 7275 6675 50  0001 C CNN
F 3 "" H 7275 6675 50  0001 C CNN
	1    7275 6675
	1    0    0    -1  
$EndComp
$Comp
L veloce:Logo_Wyolum G9
U 1 1 61594C76
P 7275 6675
F 0 "G9" H 7275 6585 60  0001 C CNN
F 1 "Logo_Wyolum" H 7275 6765 60  0001 C CNN
F 2 "veloce:logo_wyolum_mask_20x8" H 7275 6675 50  0001 C CNN
F 3 "" H 7275 6675 50  0001 C CNN
	1    7275 6675
	1    0    0    -1  
$EndComp
$Comp
L veloce:R R26
U 1 1 6298B3A5
P 10675 3375
F 0 "R26" V 10575 3300 50  0000 L CNB
F 1 "10k" V 10675 3300 40  0000 L CNN
F 2 "veloce:r_0805_THT" V 10605 3375 50  0001 C CNN
F 3 "~" H 10675 3375 50  0001 C CNN
	1    10675 3375
	0    -1   -1   0   
$EndComp
$Comp
L veloce:R R25
U 1 1 62987481
P 9325 3375
F 0 "R25" V 9225 3300 50  0000 L CNB
F 1 "10k" V 9325 3300 40  0000 L CNN
F 2 "veloce:r_0805_THT" V 9255 3375 50  0001 C CNN
F 3 "~" H 9325 3375 50  0001 C CNN
	1    9325 3375
	0    1    1    0   
$EndComp
$Sheet
S 9500 650  1500 1500
U 6276F530
F0 "MOSFETS" 40
F1 "MOSFETS.sch" 40
F2 "12V" I L 9500 725 40 
F3 "OUT1" I L 9500 975 40 
F4 "OUT2" I L 9500 1100 40 
F5 "OUT3" I L 9500 1225 40 
F6 "OUT4" I L 9500 1350 40 
F7 "OUT5" I L 9500 1475 40 
F8 "OUT6" I L 9500 1600 40 
F9 "OUT7" I L 9500 1725 40 
F10 "OUT8" I L 9500 1850 40 
F11 "GND" I L 9500 2100 40 
$EndSheet
Wire Wire Line
	9500 725  9200 725 
Wire Wire Line
	9200 975  9500 975 
Wire Wire Line
	9200 1100 9500 1100
Wire Wire Line
	9200 1225 9500 1225
Wire Wire Line
	9200 1350 9500 1350
Wire Wire Line
	9200 1475 9500 1475
Wire Wire Line
	9200 1600 9500 1600
Wire Wire Line
	9200 1725 9500 1725
Wire Wire Line
	9200 1850 9500 1850
Wire Wire Line
	9200 2100 9500 2100
Text Label 9200 2100 0    40   ~ 0
GND
Text Label 9200 1850 0    40   ~ 0
OUT8
Text Label 9200 1725 0    40   ~ 0
OUT7
Text Label 9200 1600 0    40   ~ 0
OUT6
Text Label 9200 1475 0    40   ~ 0
OUT5
Text Label 9200 1350 0    40   ~ 0
OUT4
Text Label 9200 1225 0    40   ~ 0
OUT3
Text Label 9200 1100 0    40   ~ 0
OUT2
Text Label 9200 975  0    40   ~ 0
OUT1
Text Label 9200 725  0    40   ~ 0
12V
Wire Wire Line
	2975 1300 3200 1300
Wire Wire Line
	3200 1300 3200 1400
Connection ~ 3200 1400
Wire Wire Line
	2975 1200 3200 1200
Wire Wire Line
	3200 1200 3200 1100
Connection ~ 3200 1100
Wire Wire Line
	725  2075 575  2075
Wire Wire Line
	575  2175 725  2175
Wire Wire Line
	1525 2075 1675 2075
Wire Wire Line
	1675 2175 1525 2175
Text Label 575  2075 0    40   ~ 0
12V
Text Label 575  2175 0    40   ~ 0
GND
Text Label 1675 2075 2    40   ~ 0
5V
$Comp
L veloce:LED D17
U 1 1 62D680FC
P 3725 1850
F 0 "D17" V 3800 1700 50  0000 R CNN
F 1 "LED" V 3700 1700 50  0000 R CNN
F 2 "veloce:LED_0805_2012Metric" H 3725 1850 50  0001 C CNN
F 3 "~" H 3725 1850 50  0001 C CNN
	1    3725 1850
	0    -1   -1   0   
$EndComp
$Comp
L veloce:LED D18
U 1 1 62D71149
P 4125 1850
F 0 "D18" V 4200 1700 50  0000 R CNN
F 1 "LED" V 4100 1700 50  0000 R CNN
F 2 "veloce:LED_0805_2012Metric" H 4125 1850 50  0001 C CNN
F 3 "~" H 4125 1850 50  0001 C CNN
	1    4125 1850
	0    -1   -1   0   
$EndComp
$Comp
L veloce:LED D19
U 1 1 62D718A1
P 4525 1850
F 0 "D19" V 4600 1700 50  0000 R CNN
F 1 "LED" V 4500 1700 50  0000 R CNN
F 2 "veloce:LED_0805_2012Metric" H 4525 1850 50  0001 C CNN
F 3 "~" H 4525 1850 50  0001 C CNN
	1    4525 1850
	0    -1   -1   0   
$EndComp
$Comp
L veloce:R R46
U 1 1 62D722CA
P 3725 1500
F 0 "R46" H 3800 1550 50  0000 L CNN
F 1 "620E" V 3725 1425 40  0000 L CNN
F 2 "veloce:R_0805_2012Metric" V 3655 1500 50  0001 C CNN
F 3 "~" H 3725 1500 50  0001 C CNN
	1    3725 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3725 1650 3725 1700
Wire Wire Line
	4125 1650 4125 1700
Wire Wire Line
	4525 1650 4525 1700
Wire Wire Line
	3725 2000 3725 2100
Wire Wire Line
	3725 2100 3325 2100
Wire Wire Line
	3725 2100 3925 2100
Wire Wire Line
	4525 2100 4525 2000
Connection ~ 3725 2100
Wire Wire Line
	4125 2000 4125 2100
Connection ~ 4125 2100
Wire Wire Line
	4125 2100 4325 2100
Wire Wire Line
	3725 1350 3725 1300
Wire Wire Line
	3725 1300 3525 1300
Connection ~ 3200 1300
Wire Wire Line
	3200 1000 3325 1000
Connection ~ 3200 1000
Wire Wire Line
	3200 700  3325 700 
Connection ~ 3200 700 
$Comp
L veloce:CONN_1 P1
U 1 1 62DF90B9
P 3325 550
F 0 "P1" V 3375 575 40  0000 R CNN
F 1 "CONN_1" H 3325 605 30  0001 C CNN
F 2 "veloce:TestPoint_THTPad_D3.0mm_Drill1.5mm" H 3325 550 60  0001 C CNN
F 3 "" H 3325 550 60  0000 C CNN
	1    3325 550 
	0    -1   -1   0   
$EndComp
Connection ~ 3325 700 
Wire Wire Line
	3325 700  3525 700 
$Comp
L veloce:CONN_1 P2
U 1 1 62DFA114
P 3525 550
F 0 "P2" V 3575 575 40  0000 R CNN
F 1 "CONN_1" H 3525 605 30  0001 C CNN
F 2 "veloce:TestPoint_THTPad_D3.0mm_Drill1.5mm" H 3525 550 60  0001 C CNN
F 3 "" H 3525 550 60  0000 C CNN
	1    3525 550 
	0    -1   -1   0   
$EndComp
Connection ~ 3525 700 
Wire Wire Line
	3525 700  3725 700 
$Comp
L veloce:CONN_1 P3
U 1 1 62DFA510
P 3725 550
F 0 "P3" V 3775 575 40  0000 R CNN
F 1 "CONN_1" H 3725 605 30  0001 C CNN
F 2 "veloce:TestPoint_THTPad_D3.0mm_Drill1.5mm" H 3725 550 60  0001 C CNN
F 3 "" H 3725 550 60  0000 C CNN
	1    3725 550 
	0    -1   -1   0   
$EndComp
Connection ~ 3725 700 
Wire Wire Line
	3725 700  4525 700 
$Comp
L veloce:CONN_1 P4
U 1 1 62DFB09A
P 3325 850
F 0 "P4" V 3375 875 40  0000 R CNN
F 1 "CONN_1" H 3325 905 30  0001 C CNN
F 2 "veloce:TestPoint_THTPad_D3.0mm_Drill1.5mm" H 3325 850 60  0001 C CNN
F 3 "" H 3325 850 60  0000 C CNN
	1    3325 850 
	0    -1   -1   0   
$EndComp
$Comp
L veloce:CONN_1 P5
U 1 1 62DFB240
P 3525 850
F 0 "P5" V 3575 875 40  0000 R CNN
F 1 "CONN_1" H 3525 905 30  0001 C CNN
F 2 "veloce:TestPoint_THTPad_D3.0mm_Drill1.5mm" H 3525 850 60  0001 C CNN
F 3 "" H 3525 850 60  0000 C CNN
	1    3525 850 
	0    -1   -1   0   
$EndComp
$Comp
L veloce:CONN_1 P6
U 1 1 62DFB24A
P 3725 850
F 0 "P6" V 3775 875 40  0000 R CNN
F 1 "CONN_1" H 3725 905 30  0001 C CNN
F 2 "veloce:TestPoint_THTPad_D3.0mm_Drill1.5mm" H 3725 850 60  0001 C CNN
F 3 "" H 3725 850 60  0000 C CNN
	1    3725 850 
	0    -1   -1   0   
$EndComp
Connection ~ 3325 1000
Wire Wire Line
	3325 1000 3525 1000
Connection ~ 3525 1000
Wire Wire Line
	3525 1000 3725 1000
Connection ~ 3725 1000
Wire Wire Line
	3725 1000 4125 1000
$Comp
L veloce:CONN_1 P7
U 1 1 62E0B5A2
P 3325 1150
F 0 "P7" V 3375 1175 40  0000 R CNN
F 1 "CONN_1" H 3325 1205 30  0001 C CNN
F 2 "veloce:TestPoint_THTPad_D3.0mm_Drill1.5mm" H 3325 1150 60  0001 C CNN
F 3 "" H 3325 1150 60  0000 C CNN
	1    3325 1150
	0    -1   -1   0   
$EndComp
$Comp
L veloce:CONN_1 P8
U 1 1 62E0B79C
P 3525 1150
F 0 "P8" V 3575 1175 40  0000 R CNN
F 1 "CONN_1" H 3525 1205 30  0001 C CNN
F 2 "veloce:TestPoint_THTPad_D3.0mm_Drill1.5mm" H 3525 1150 60  0001 C CNN
F 3 "" H 3525 1150 60  0000 C CNN
	1    3525 1150
	0    -1   -1   0   
$EndComp
$Comp
L veloce:CONN_1 P9
U 1 1 62E0B7A6
P 3725 1150
F 0 "P9" V 3775 1175 40  0000 R CNN
F 1 "CONN_1" H 3725 1205 30  0001 C CNN
F 2 "veloce:TestPoint_THTPad_D3.0mm_Drill1.5mm" H 3725 1150 60  0001 C CNN
F 3 "" H 3725 1150 60  0000 C CNN
	1    3725 1150
	0    -1   -1   0   
$EndComp
Connection ~ 3325 1300
Wire Wire Line
	3325 1300 3200 1300
Connection ~ 3525 1300
Wire Wire Line
	3525 1300 3325 1300
Wire Wire Line
	4525 700  4525 1350
Wire Wire Line
	4125 1000 4125 1350
$Comp
L veloce:R R48
U 1 1 62D86938
P 4525 1500
F 0 "R48" H 4600 1550 50  0000 L CNN
F 1 "7k5" V 4525 1425 40  0000 L CNN
F 2 "veloce:R_0805_2012Metric" V 4455 1500 50  0001 C CNN
F 3 "~" H 4525 1500 50  0001 C CNN
	1    4525 1500
	1    0    0    -1  
$EndComp
$Comp
L veloce:R R47
U 1 1 62D86359
P 4125 1500
F 0 "R47" H 4200 1550 50  0000 L CNN
F 1 "2k" V 4125 1425 40  0000 L CNN
F 2 "veloce:R_0805_2012Metric" V 4055 1500 50  0001 C CNN
F 3 "~" H 4125 1500 50  0001 C CNN
	1    4125 1500
	1    0    0    -1  
$EndComp
Connection ~ 3725 1300
Connection ~ 3325 2100
Text Label 1675 2175 2    40   ~ 0
GND
$Comp
L veloce:CONN_1 P10
U 1 1 61BF2826
P 3725 2250
F 0 "P10" V 3775 2275 40  0000 R CNN
F 1 "CONN_1" H 3725 2305 30  0001 C CNN
F 2 "veloce:TestPoint_THTPad_D3.0mm_Drill1.5mm" H 3725 2250 60  0001 C CNN
F 3 "" H 3725 2250 60  0000 C CNN
	1    3725 2250
	0    1    1    0   
$EndComp
$Comp
L veloce:CONN_1 P12
U 1 1 61BF3CDC
P 4125 2250
F 0 "P12" V 4175 2275 40  0000 R CNN
F 1 "CONN_1" H 4125 2305 30  0001 C CNN
F 2 "veloce:TestPoint_THTPad_D3.0mm_Drill1.5mm" H 4125 2250 60  0001 C CNN
F 3 "" H 4125 2250 60  0000 C CNN
	1    4125 2250
	0    1    1    0   
$EndComp
$Comp
L veloce:CONN_1 P14
U 1 1 61BF4577
P 4525 2250
F 0 "P14" V 4575 2275 40  0000 R CNN
F 1 "CONN_1" H 4525 2305 30  0001 C CNN
F 2 "veloce:TestPoint_THTPad_D3.0mm_Drill1.5mm" H 4525 2250 60  0001 C CNN
F 3 "" H 4525 2250 60  0000 C CNN
	1    4525 2250
	0    1    1    0   
$EndComp
Connection ~ 4525 2100
$Comp
L veloce:CONN_1 P13
U 1 1 61BF4C3F
P 4325 2250
F 0 "P13" V 4375 2275 40  0000 R CNN
F 1 "CONN_1" H 4325 2305 30  0001 C CNN
F 2 "veloce:TestPoint_THTPad_D3.0mm_Drill1.5mm" H 4325 2250 60  0001 C CNN
F 3 "" H 4325 2250 60  0000 C CNN
	1    4325 2250
	0    1    1    0   
$EndComp
Connection ~ 4325 2100
Wire Wire Line
	4325 2100 4525 2100
$Comp
L veloce:CONN_1 P11
U 1 1 61BF51C8
P 3925 2250
F 0 "P11" V 3975 2275 40  0000 R CNN
F 1 "CONN_1" H 3925 2305 30  0001 C CNN
F 2 "veloce:TestPoint_THTPad_D3.0mm_Drill1.5mm" H 3925 2250 60  0001 C CNN
F 3 "" H 3925 2250 60  0000 C CNN
	1    3925 2250
	0    1    1    0   
$EndComp
Connection ~ 3925 2100
Wire Wire Line
	3925 2100 4125 2100
$EndSCHEMATC

EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title "Cafe_Veloce"
Date "2021-12-08"
Rev "v2"
Comp "WyoLum"
Comment1 "controller for Cafe Veloce eBicycle"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 2675 2050 0    40   ~ 0
GND
Text Label 2675 800  0    40   ~ 0
12V
Text Label 2675 1725 0    40   ~ 0
OUT1
Wire Notes Line width 15 style solid
	2600 675  4400 675 
Wire Notes Line width 15 style solid
	4400 675  4400 2175
Wire Notes Line width 15 style solid
	2600 2175 2600 675 
Text Notes 3425 650  0    50   ~ 0
High Power, upto 5 Amps
$Comp
L veloce:D_Schottky_Small D?
U 1 1 627E9C33
P 3800 975
AR Path="/627E9C33" Ref="D?"  Part="1" 
AR Path="/6276F530/627E9C33" Ref="D1"  Part="1" 
F 0 "D1" V 3875 975 50  0000 R CNB
F 1 "B220A-13-F" H 3925 1050 30  0000 R CNN
F 2 "veloce:D_SMB" V 3800 975 50  0001 C CNN
F 3 "~" V 3800 975 50  0001 C CNN
	1    3800 975 
	0    1    1    0   
$EndComp
$Comp
L veloce:Screw_Terminal_01x02 J?
U 1 1 627E9C3B
P 4100 800
AR Path="/627E9C3B" Ref="J?"  Part="1" 
AR Path="/6276F530/627E9C3B" Ref="J1"  Part="1" 
F 0 "J1" H 4050 600 50  0000 L CNB
F 1 "OUT" H 4050 525 40  0000 L CNN
F 2 "veloce:TerminalBlock_Wurth_1377-2_Horizontal" H 4100 800 50  0001 C CNN
F 3 "~" H 4100 800 50  0001 C CNN
F 4 "[+]" H 4150 800 40  0000 L CNB "Field4"
F 5 "[-]" H 4150 700 40  0000 L CNB "Field5"
	1    4100 800 
	1    0    0    -1  
$EndComp
$Comp
L veloce:R R?
U 1 1 627E9C41
P 3250 1300
AR Path="/627E9C41" Ref="R?"  Part="1" 
AR Path="/6276F530/627E9C41" Ref="R2"  Part="1" 
F 0 "R2" H 3150 1300 50  0000 C CNB
F 1 "0E" V 3250 1300 40  0000 C CNN
F 2 "veloce:R_0805_2012Metric" V 3180 1300 50  0001 C CNN
F 3 "~" H 3250 1300 50  0001 C CNN
	1    3250 1300
	-1   0    0    1   
$EndComp
$Comp
L veloce:R R?
U 1 1 627E9C47
P 2925 1900
AR Path="/627E9C47" Ref="R?"  Part="1" 
AR Path="/6276F530/627E9C47" Ref="R3"  Part="1" 
F 0 "R3" H 2975 1900 50  0000 L CNB
F 1 "12k" V 2925 1825 40  0000 L CNN
F 2 "veloce:R_0805_2012Metric" V 2855 1900 50  0001 C CNN
F 3 "~" H 2925 1900 50  0001 C CNN
	1    2925 1900
	-1   0    0    1   
$EndComp
$Comp
L veloce:MOSFET-N Q?
U 1 1 627E9C4D
P 3150 1675
AR Path="/627E9C4D" Ref="Q?"  Part="1" 
AR Path="/6276F530/627E9C4D" Ref="Q2"  Part="1" 
F 0 "Q2" H 3275 1800 50  0000 L CNB
F 1 "RYM002N05" V 3350 1400 30  0000 L CNN
F 2 "veloce:SOT-723" H 3350 1625 29  0001 L CNN
F 3 "" H 3150 1675 60  0000 C CNN
	1    3150 1675
	1    0    0    -1  
$EndComp
Text Notes 2600 650  0    50   ~ 10
HEAD LIGHT
Text Notes 2600 4150 0    50   ~ 10
TAIL LIGHT
Text Notes 4850 650  0    50   ~ 10
LEFT IND
Text Label 3825 800  0    30   ~ 0
OP1
$Comp
L veloce:R R?
U 1 1 627E9C57
P 2875 950
AR Path="/627E9C57" Ref="R?"  Part="1" 
AR Path="/6276F530/627E9C57" Ref="R1"  Part="1" 
F 0 "R1" H 2975 950 50  0000 C CNB
F 1 "12k" V 2875 950 40  0000 C CNN
F 2 "veloce:R_0805_2012Metric" V 2805 950 50  0001 C CNN
F 3 "~" H 2875 950 50  0001 C CNN
	1    2875 950 
	-1   0    0    1   
$EndComp
Wire Wire Line
	3250 1100 3250 1125
Wire Wire Line
	2875 1100 2875 1125
Wire Wire Line
	2875 1125 3250 1125
Connection ~ 3250 1125
Wire Wire Line
	3250 1125 3250 1150
Wire Wire Line
	3250 1450 3250 1475
Wire Wire Line
	2925 1750 2925 1725
Wire Wire Line
	2925 1725 2950 1725
Wire Wire Line
	2925 2050 3250 2050
Wire Wire Line
	3250 2050 3250 1875
Wire Wire Line
	3050 800  2875 800 
Wire Wire Line
	3450 800  3550 800 
Wire Wire Line
	3900 900  3900 1125
Wire Wire Line
	3900 2050 3550 2050
Connection ~ 3250 2050
Wire Wire Line
	2875 800  2675 800 
Connection ~ 2875 800 
Wire Wire Line
	2675 2050 2925 2050
Connection ~ 2925 2050
Wire Wire Line
	2675 1725 2925 1725
Connection ~ 2925 1725
Wire Wire Line
	3800 1075 3800 1125
Wire Wire Line
	3800 1125 3900 1125
Connection ~ 3900 1125
Wire Wire Line
	3900 1125 3900 2050
Wire Wire Line
	3800 875  3800 800 
Connection ~ 3800 800 
Wire Wire Line
	3800 800  3900 800 
Text Notes 2650 1400 0    40   ~ 0
For 48V, use 36k\nFor 24V, use 12k\nFor 12V, use 0E
Wire Notes Line width 15 style solid
	4400 2175 2600 2175
Text Label 2675 3800 0    40   ~ 0
GND
Text Label 2675 2550 0    40   ~ 0
12V
Text Label 2675 3475 0    40   ~ 0
OUT2
Wire Notes Line width 15 style solid
	2600 2425 4400 2425
Wire Notes Line width 15 style solid
	4400 2425 4400 3925
Wire Notes Line width 15 style solid
	2600 3925 2600 2425
Text Notes 3425 2400 0    50   ~ 0
High Power, upto 5 Amps
$Comp
L veloce:D_Schottky_Small D?
U 1 1 627E9C88
P 3800 2725
AR Path="/627E9C88" Ref="D?"  Part="1" 
AR Path="/6276F530/627E9C88" Ref="D2"  Part="1" 
F 0 "D2" V 3875 2725 50  0000 R CNB
F 1 "B220A-13-F" H 3925 2800 30  0000 R CNN
F 2 "veloce:D_SMB" V 3800 2725 50  0001 C CNN
F 3 "~" V 3800 2725 50  0001 C CNN
	1    3800 2725
	0    1    1    0   
$EndComp
$Comp
L veloce:Screw_Terminal_01x02 J?
U 1 1 627E9C90
P 4100 2550
AR Path="/627E9C90" Ref="J?"  Part="1" 
AR Path="/6276F530/627E9C90" Ref="J2"  Part="1" 
F 0 "J2" H 4050 2350 50  0000 L CNB
F 1 "OUT" H 4050 2275 40  0000 L CNN
F 2 "veloce:TerminalBlock_Wurth_1377-2_Horizontal" H 4100 2550 50  0001 C CNN
F 3 "~" H 4100 2550 50  0001 C CNN
F 4 "[+]" H 4150 2550 40  0000 L CNB "Field4"
F 5 "[-]" H 4150 2450 40  0000 L CNB "Field5"
	1    4100 2550
	1    0    0    -1  
$EndComp
$Comp
L veloce:R R?
U 1 1 627E9C96
P 3250 3050
AR Path="/627E9C96" Ref="R?"  Part="1" 
AR Path="/6276F530/627E9C96" Ref="R5"  Part="1" 
F 0 "R5" H 3150 3050 50  0000 C CNB
F 1 "0E" V 3250 3050 40  0000 C CNN
F 2 "veloce:R_0805_2012Metric" V 3180 3050 50  0001 C CNN
F 3 "~" H 3250 3050 50  0001 C CNN
	1    3250 3050
	-1   0    0    1   
$EndComp
$Comp
L veloce:R R?
U 1 1 627E9C9C
P 2925 3650
AR Path="/627E9C9C" Ref="R?"  Part="1" 
AR Path="/6276F530/627E9C9C" Ref="R6"  Part="1" 
F 0 "R6" H 2975 3650 50  0000 L CNB
F 1 "12k" V 2925 3575 40  0000 L CNN
F 2 "veloce:R_0805_2012Metric" V 2855 3650 50  0001 C CNN
F 3 "~" H 2925 3650 50  0001 C CNN
	1    2925 3650
	-1   0    0    1   
$EndComp
$Comp
L veloce:MOSFET-N Q?
U 1 1 627E9CA2
P 3150 3425
AR Path="/627E9CA2" Ref="Q?"  Part="1" 
AR Path="/6276F530/627E9CA2" Ref="Q4"  Part="1" 
F 0 "Q4" H 3275 3550 50  0000 L CNB
F 1 "RYM002N05" V 3350 3150 30  0000 L CNN
F 2 "veloce:SOT-723" H 3350 3375 29  0001 L CNN
F 3 "" H 3150 3425 60  0000 C CNN
	1    3150 3425
	1    0    0    -1  
$EndComp
Text Notes 2600 2400 0    50   ~ 10
SPARE
Text Label 3825 2550 0    30   ~ 0
OP2
$Comp
L veloce:R R?
U 1 1 627E9CAA
P 2875 2700
AR Path="/627E9CAA" Ref="R?"  Part="1" 
AR Path="/6276F530/627E9CAA" Ref="R4"  Part="1" 
F 0 "R4" H 2975 2700 50  0000 C CNB
F 1 "12k" V 2875 2700 40  0000 C CNN
F 2 "veloce:R_0805_2012Metric" V 2805 2700 50  0001 C CNN
F 3 "~" H 2875 2700 50  0001 C CNN
	1    2875 2700
	-1   0    0    1   
$EndComp
$Comp
L veloce:MOSFET-P Q?
U 1 1 627E9CB0
P 3250 2650
AR Path="/627E9CB0" Ref="Q?"  Part="1" 
AR Path="/6276F530/627E9CB0" Ref="Q3"  Part="1" 
F 0 "Q3" V 3100 2700 50  0000 C CNB
F 1 "FQD11P06TM" H 3200 2500 30  0000 C CNN
F 2 "veloce:TO-252-3_TabPin2" H 3450 2575 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/FQP27P06-D.PDF" H 3250 2650 50  0001 L CNN
	1    3250 2650
	0    1    -1   0   
$EndComp
Wire Wire Line
	3250 2850 3250 2875
Wire Wire Line
	2875 2850 2875 2875
Wire Wire Line
	2875 2875 3250 2875
Connection ~ 3250 2875
Wire Wire Line
	3250 2875 3250 2900
Wire Wire Line
	3250 3200 3250 3225
Wire Wire Line
	2925 3500 2925 3475
Wire Wire Line
	2925 3475 2950 3475
Wire Wire Line
	2925 3800 3250 3800
Wire Wire Line
	3250 3800 3250 3625
Wire Wire Line
	3050 2550 2875 2550
Wire Wire Line
	3450 2550 3550 2550
Wire Wire Line
	3900 2650 3900 2875
Wire Wire Line
	3900 3800 3550 3800
Connection ~ 3250 3800
Wire Wire Line
	2875 2550 2675 2550
Connection ~ 2875 2550
Wire Wire Line
	2675 3800 2925 3800
Connection ~ 2925 3800
Wire Wire Line
	2675 3475 2925 3475
Connection ~ 2925 3475
Wire Wire Line
	3800 2825 3800 2875
Wire Wire Line
	3800 2875 3900 2875
Connection ~ 3900 2875
Wire Wire Line
	3900 2875 3900 3800
Wire Wire Line
	3800 2625 3800 2550
Connection ~ 3800 2550
Wire Wire Line
	3800 2550 3900 2550
Text Notes 2650 3150 0    40   ~ 0
For 48V, use 36k\nFor 24V, use 12k\nFor 12V, use 0E
Wire Notes Line width 15 style solid
	4400 3925 2600 3925
Text Label 2675 5550 0    40   ~ 0
GND
Text Label 2675 4300 0    40   ~ 0
12V
Text Label 2675 5225 0    40   ~ 0
OUT3
Wire Notes Line width 15 style solid
	2600 4175 4400 4175
Wire Notes Line width 15 style solid
	4400 4175 4400 5675
Wire Notes Line width 15 style solid
	2600 5675 2600 4175
Text Notes 3425 4150 0    50   ~ 0
Low Power, upto 1 Amps
$Comp
L veloce:D_Schottky_Small D?
U 1 1 627E9CDB
P 3800 4475
AR Path="/627E9CDB" Ref="D?"  Part="1" 
AR Path="/6276F530/627E9CDB" Ref="D3"  Part="1" 
F 0 "D3" V 3875 4475 50  0000 R CNB
F 1 "B220A-13-F" H 3925 4550 30  0000 R CNN
F 2 "veloce:D_SMB" V 3800 4475 50  0001 C CNN
F 3 "~" V 3800 4475 50  0001 C CNN
	1    3800 4475
	0    1    1    0   
$EndComp
$Comp
L veloce:Screw_Terminal_01x02 J?
U 1 1 627E9CE3
P 4100 4300
AR Path="/627E9CE3" Ref="J?"  Part="1" 
AR Path="/6276F530/627E9CE3" Ref="J3"  Part="1" 
F 0 "J3" H 4050 4100 50  0000 L CNB
F 1 "OUT" H 4050 4025 40  0000 L CNN
F 2 "veloce:TerminalBlock_Wurth_1377-2_Horizontal" H 4100 4300 50  0001 C CNN
F 3 "~" H 4100 4300 50  0001 C CNN
F 4 "[+]" H 4150 4300 40  0000 L CNB "Field4"
F 5 "[-]" H 4150 4200 40  0000 L CNB "Field5"
	1    4100 4300
	1    0    0    -1  
$EndComp
$Comp
L veloce:R R?
U 1 1 627E9CE9
P 3250 4800
AR Path="/627E9CE9" Ref="R?"  Part="1" 
AR Path="/6276F530/627E9CE9" Ref="R8"  Part="1" 
F 0 "R8" H 3150 4800 50  0000 C CNB
F 1 "0E" V 3250 4800 40  0000 C CNN
F 2 "veloce:R_0805_2012Metric" V 3180 4800 50  0001 C CNN
F 3 "~" H 3250 4800 50  0001 C CNN
	1    3250 4800
	-1   0    0    1   
$EndComp
$Comp
L veloce:R R?
U 1 1 627E9CEF
P 2925 5400
AR Path="/627E9CEF" Ref="R?"  Part="1" 
AR Path="/6276F530/627E9CEF" Ref="R9"  Part="1" 
F 0 "R9" H 2975 5400 50  0000 L CNB
F 1 "12k" V 2925 5325 40  0000 L CNN
F 2 "veloce:R_0805_2012Metric" V 2855 5400 50  0001 C CNN
F 3 "~" H 2925 5400 50  0001 C CNN
	1    2925 5400
	-1   0    0    1   
$EndComp
$Comp
L veloce:MOSFET-N Q?
U 1 1 627E9CF5
P 3150 5175
AR Path="/627E9CF5" Ref="Q?"  Part="1" 
AR Path="/6276F530/627E9CF5" Ref="Q6"  Part="1" 
F 0 "Q6" H 3275 5300 50  0000 L CNB
F 1 "RYM002N05" V 3350 4900 30  0000 L CNN
F 2 "veloce:SOT-723" H 3350 5125 29  0001 L CNN
F 3 "" H 3150 5175 60  0000 C CNN
	1    3150 5175
	1    0    0    -1  
$EndComp
Text Label 3825 4300 0    30   ~ 0
OP3
$Comp
L veloce:R R?
U 1 1 627E9CFC
P 2875 4450
AR Path="/627E9CFC" Ref="R?"  Part="1" 
AR Path="/6276F530/627E9CFC" Ref="R7"  Part="1" 
F 0 "R7" H 2975 4450 50  0000 C CNB
F 1 "12k" V 2875 4450 40  0000 C CNN
F 2 "veloce:R_0805_2012Metric" V 2805 4450 50  0001 C CNN
F 3 "~" H 2875 4450 50  0001 C CNN
	1    2875 4450
	-1   0    0    1   
$EndComp
$Comp
L veloce:MOSFET-P Q?
U 1 1 627E9D02
P 3250 4400
AR Path="/627E9D02" Ref="Q?"  Part="1" 
AR Path="/6276F530/627E9D02" Ref="Q5"  Part="1" 
F 0 "Q5" V 3100 4450 50  0000 C CNB
F 1 "ZXMP7A17K" H 3200 4250 30  0000 C CNN
F 2 "veloce:TO-252-3_TabPin2" H 3450 4325 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/FQP27P06-D.PDF" H 3250 4400 50  0001 L CNN
	1    3250 4400
	0    1    -1   0   
$EndComp
Wire Wire Line
	3250 4600 3250 4625
Wire Wire Line
	2875 4600 2875 4625
Wire Wire Line
	2875 4625 3250 4625
Connection ~ 3250 4625
Wire Wire Line
	3250 4625 3250 4650
Wire Wire Line
	3250 4950 3250 4975
Wire Wire Line
	2925 5250 2925 5225
Wire Wire Line
	2925 5225 2950 5225
Wire Wire Line
	2925 5550 3250 5550
Wire Wire Line
	3250 5550 3250 5375
Wire Wire Line
	3050 4300 2875 4300
Wire Wire Line
	3450 4300 3550 4300
Wire Wire Line
	3900 4400 3900 4625
Wire Wire Line
	3900 5550 3550 5550
Connection ~ 3250 5550
Wire Wire Line
	2875 4300 2675 4300
Connection ~ 2875 4300
Wire Wire Line
	2675 5550 2925 5550
Connection ~ 2925 5550
Wire Wire Line
	2675 5225 2925 5225
Connection ~ 2925 5225
Wire Wire Line
	3800 4575 3800 4625
Wire Wire Line
	3800 4625 3900 4625
Connection ~ 3900 4625
Wire Wire Line
	3900 4625 3900 5550
Wire Wire Line
	3800 4375 3800 4300
Connection ~ 3800 4300
Wire Wire Line
	3800 4300 3900 4300
Text Notes 2650 4900 0    40   ~ 0
For 48V, use 36k\nFor 24V, use 12k\nFor 12V, use 0E
Wire Notes Line width 15 style solid
	4400 5675 2600 5675
Text Notes 2600 5900 0    50   ~ 10
BRAKE LIGHT
Text Label 2675 7300 0    40   ~ 0
GND
Text Label 2675 6050 0    40   ~ 0
12V
Text Label 2675 6975 0    40   ~ 0
OUT4
Wire Notes Line width 15 style solid
	2600 5925 4400 5925
Wire Notes Line width 15 style solid
	4400 5925 4400 7425
Wire Notes Line width 15 style solid
	2600 7425 2600 5925
Text Notes 3425 5900 0    50   ~ 0
Low Power, upto 1 Amps
$Comp
L veloce:D_Schottky_Small D?
U 1 1 627E9D2E
P 3800 6225
AR Path="/627E9D2E" Ref="D?"  Part="1" 
AR Path="/6276F530/627E9D2E" Ref="D4"  Part="1" 
F 0 "D4" V 3875 6225 50  0000 R CNB
F 1 "B220A-13-F" H 3925 6300 30  0000 R CNN
F 2 "veloce:D_SMB" V 3800 6225 50  0001 C CNN
F 3 "~" V 3800 6225 50  0001 C CNN
	1    3800 6225
	0    1    1    0   
$EndComp
$Comp
L veloce:Screw_Terminal_01x02 J?
U 1 1 627E9D36
P 4100 6050
AR Path="/627E9D36" Ref="J?"  Part="1" 
AR Path="/6276F530/627E9D36" Ref="J4"  Part="1" 
F 0 "J4" H 4050 5850 50  0000 L CNB
F 1 "OUT" H 4050 5775 40  0000 L CNN
F 2 "veloce:TerminalBlock_Wurth_1377-2_Horizontal" H 4100 6050 50  0001 C CNN
F 3 "~" H 4100 6050 50  0001 C CNN
F 4 "[+]" H 4150 6050 40  0000 L CNB "Field4"
F 5 "[-]" H 4150 5950 40  0000 L CNB "Field5"
	1    4100 6050
	1    0    0    -1  
$EndComp
$Comp
L veloce:R R?
U 1 1 627E9D3C
P 3250 6550
AR Path="/627E9D3C" Ref="R?"  Part="1" 
AR Path="/6276F530/627E9D3C" Ref="R11"  Part="1" 
F 0 "R11" H 3150 6550 50  0000 C CNB
F 1 "0E" V 3250 6550 40  0000 C CNN
F 2 "veloce:R_0805_2012Metric" V 3180 6550 50  0001 C CNN
F 3 "~" H 3250 6550 50  0001 C CNN
	1    3250 6550
	-1   0    0    1   
$EndComp
$Comp
L veloce:R R?
U 1 1 627E9D42
P 2925 7150
AR Path="/627E9D42" Ref="R?"  Part="1" 
AR Path="/6276F530/627E9D42" Ref="R12"  Part="1" 
F 0 "R12" H 2975 7150 50  0000 L CNB
F 1 "12k" V 2925 7075 40  0000 L CNN
F 2 "veloce:R_0805_2012Metric" V 2855 7150 50  0001 C CNN
F 3 "~" H 2925 7150 50  0001 C CNN
	1    2925 7150
	-1   0    0    1   
$EndComp
$Comp
L veloce:MOSFET-N Q?
U 1 1 627E9D48
P 3150 6925
AR Path="/627E9D48" Ref="Q?"  Part="1" 
AR Path="/6276F530/627E9D48" Ref="Q8"  Part="1" 
F 0 "Q8" H 3275 7050 50  0000 L CNB
F 1 "RYM002N05" V 3350 6650 30  0000 L CNN
F 2 "veloce:SOT-723" H 3350 6875 29  0001 L CNN
F 3 "" H 3150 6925 60  0000 C CNN
	1    3150 6925
	1    0    0    -1  
$EndComp
Text Label 3825 6050 0    30   ~ 0
OP4
$Comp
L veloce:R R?
U 1 1 627E9D4F
P 2875 6200
AR Path="/627E9D4F" Ref="R?"  Part="1" 
AR Path="/6276F530/627E9D4F" Ref="R10"  Part="1" 
F 0 "R10" H 2975 6200 50  0000 C CNB
F 1 "12k" V 2875 6200 40  0000 C CNN
F 2 "veloce:R_0805_2012Metric" V 2805 6200 50  0001 C CNN
F 3 "~" H 2875 6200 50  0001 C CNN
	1    2875 6200
	-1   0    0    1   
$EndComp
$Comp
L veloce:MOSFET-P Q?
U 1 1 627E9D55
P 3250 6150
AR Path="/627E9D55" Ref="Q?"  Part="1" 
AR Path="/6276F530/627E9D55" Ref="Q7"  Part="1" 
F 0 "Q7" V 3100 6200 50  0000 C CNB
F 1 "ZXMP7A17K" H 3200 6000 30  0000 C CNN
F 2 "veloce:TO-252-3_TabPin2" H 3450 6075 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/FQP27P06-D.PDF" H 3250 6150 50  0001 L CNN
	1    3250 6150
	0    1    -1   0   
$EndComp
Wire Wire Line
	3250 6350 3250 6375
Wire Wire Line
	2875 6350 2875 6375
Wire Wire Line
	2875 6375 3250 6375
Connection ~ 3250 6375
Wire Wire Line
	3250 6375 3250 6400
Wire Wire Line
	3250 6700 3250 6725
Wire Wire Line
	2925 7000 2925 6975
Wire Wire Line
	2925 6975 2950 6975
Wire Wire Line
	2925 7300 3250 7300
Wire Wire Line
	3250 7300 3250 7125
Wire Wire Line
	3050 6050 2875 6050
Wire Wire Line
	3450 6050 3550 6050
Wire Wire Line
	3900 6150 3900 6375
Wire Wire Line
	3900 7300 3550 7300
Connection ~ 3250 7300
Wire Wire Line
	2875 6050 2675 6050
Connection ~ 2875 6050
Wire Wire Line
	2675 7300 2925 7300
Connection ~ 2925 7300
Wire Wire Line
	2675 6975 2925 6975
Connection ~ 2925 6975
Wire Wire Line
	3800 6325 3800 6375
Wire Wire Line
	3800 6375 3900 6375
Connection ~ 3900 6375
Wire Wire Line
	3900 6375 3900 7300
Wire Wire Line
	3800 6125 3800 6050
Connection ~ 3800 6050
Wire Wire Line
	3800 6050 3900 6050
Text Notes 2650 6650 0    40   ~ 0
For 48V, use 36k\nFor 24V, use 12k\nFor 12V, use 0E
Wire Notes Line width 15 style solid
	4400 7425 2600 7425
Text Label 4925 2050 0    40   ~ 0
GND
Text Label 4925 800  0    40   ~ 0
12V
Text Label 4925 1725 0    40   ~ 0
OUT5
Wire Notes Line width 15 style solid
	4850 675  6650 675 
Wire Notes Line width 15 style solid
	6650 675  6650 2175
Wire Notes Line width 15 style solid
	4850 2175 4850 675 
Text Notes 5675 650  0    50   ~ 0
Low Power, upto 1 Amps
$Comp
L veloce:D_Schottky_Small D?
U 1 1 627E9D80
P 6050 975
AR Path="/627E9D80" Ref="D?"  Part="1" 
AR Path="/6276F530/627E9D80" Ref="D5"  Part="1" 
F 0 "D5" V 6125 975 50  0000 R CNB
F 1 "B220A-13-F" H 6175 1050 30  0000 R CNN
F 2 "veloce:D_SMB" V 6050 975 50  0001 C CNN
F 3 "~" V 6050 975 50  0001 C CNN
	1    6050 975 
	0    1    1    0   
$EndComp
$Comp
L veloce:Screw_Terminal_01x02 J?
U 1 1 627E9D88
P 6350 800
AR Path="/627E9D88" Ref="J?"  Part="1" 
AR Path="/6276F530/627E9D88" Ref="J5"  Part="1" 
F 0 "J5" H 6300 600 50  0000 L CNB
F 1 "OUT" H 6300 525 40  0000 L CNN
F 2 "veloce:TerminalBlock_Wurth_1377-2_Horizontal" H 6350 800 50  0001 C CNN
F 3 "~" H 6350 800 50  0001 C CNN
F 4 "[+]" H 6400 800 40  0000 L CNB "Field4"
F 5 "[-]" H 6400 700 40  0000 L CNB "Field5"
	1    6350 800 
	1    0    0    -1  
$EndComp
$Comp
L veloce:R R?
U 1 1 627E9D8E
P 5500 1300
AR Path="/627E9D8E" Ref="R?"  Part="1" 
AR Path="/6276F530/627E9D8E" Ref="R14"  Part="1" 
F 0 "R14" H 5400 1300 50  0000 C CNB
F 1 "0E" V 5500 1300 40  0000 C CNN
F 2 "veloce:R_0805_2012Metric" V 5430 1300 50  0001 C CNN
F 3 "~" H 5500 1300 50  0001 C CNN
	1    5500 1300
	-1   0    0    1   
$EndComp
$Comp
L veloce:R R?
U 1 1 627E9D94
P 5175 1900
AR Path="/627E9D94" Ref="R?"  Part="1" 
AR Path="/6276F530/627E9D94" Ref="R15"  Part="1" 
F 0 "R15" H 5225 1900 50  0000 L CNB
F 1 "12k" V 5175 1825 40  0000 L CNN
F 2 "veloce:R_0805_2012Metric" V 5105 1900 50  0001 C CNN
F 3 "~" H 5175 1900 50  0001 C CNN
	1    5175 1900
	-1   0    0    1   
$EndComp
$Comp
L veloce:MOSFET-N Q?
U 1 1 627E9D9A
P 5400 1675
AR Path="/627E9D9A" Ref="Q?"  Part="1" 
AR Path="/6276F530/627E9D9A" Ref="Q10"  Part="1" 
F 0 "Q10" H 5525 1800 50  0000 L CNB
F 1 "RYM002N05" V 5600 1400 30  0000 L CNN
F 2 "veloce:SOT-723" H 5600 1625 29  0001 L CNN
F 3 "" H 5400 1675 60  0000 C CNN
	1    5400 1675
	1    0    0    -1  
$EndComp
Text Label 6075 800  0    30   ~ 0
OP5
$Comp
L veloce:R R?
U 1 1 627E9DA1
P 5125 950
AR Path="/627E9DA1" Ref="R?"  Part="1" 
AR Path="/6276F530/627E9DA1" Ref="R13"  Part="1" 
F 0 "R13" H 5225 950 50  0000 C CNB
F 1 "12k" V 5125 950 40  0000 C CNN
F 2 "veloce:R_0805_2012Metric" V 5055 950 50  0001 C CNN
F 3 "~" H 5125 950 50  0001 C CNN
	1    5125 950 
	-1   0    0    1   
$EndComp
$Comp
L veloce:MOSFET-P Q?
U 1 1 627E9DA7
P 5500 900
AR Path="/627E9DA7" Ref="Q?"  Part="1" 
AR Path="/6276F530/627E9DA7" Ref="Q9"  Part="1" 
F 0 "Q9" V 5350 950 50  0000 C CNB
F 1 "ZXMP7A17K" H 5450 750 30  0000 C CNN
F 2 "veloce:TO-252-3_TabPin2" H 5700 825 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/FQP27P06-D.PDF" H 5500 900 50  0001 L CNN
	1    5500 900 
	0    1    -1   0   
$EndComp
Wire Wire Line
	5500 1100 5500 1125
Wire Wire Line
	5125 1100 5125 1125
Wire Wire Line
	5125 1125 5500 1125
Connection ~ 5500 1125
Wire Wire Line
	5500 1125 5500 1150
Wire Wire Line
	5500 1450 5500 1475
Wire Wire Line
	5175 1750 5175 1725
Wire Wire Line
	5175 1725 5200 1725
Wire Wire Line
	5175 2050 5500 2050
Wire Wire Line
	5500 2050 5500 1875
Wire Wire Line
	5300 800  5125 800 
Wire Wire Line
	5700 800  5800 800 
Wire Wire Line
	6150 900  6150 1125
Wire Wire Line
	6150 2050 5800 2050
Connection ~ 5500 2050
Wire Wire Line
	5125 800  4925 800 
Connection ~ 5125 800 
Wire Wire Line
	4925 2050 5175 2050
Connection ~ 5175 2050
Wire Wire Line
	4925 1725 5175 1725
Connection ~ 5175 1725
Wire Wire Line
	6050 1075 6050 1125
Wire Wire Line
	6050 1125 6150 1125
Connection ~ 6150 1125
Wire Wire Line
	6150 1125 6150 2050
Wire Wire Line
	6050 875  6050 800 
Connection ~ 6050 800 
Wire Wire Line
	6050 800  6150 800 
Text Notes 4900 1400 0    40   ~ 0
For 48V, use 36k\nFor 24V, use 12k\nFor 12V, use 0E
Wire Notes Line width 15 style solid
	6650 2175 4850 2175
Text Notes 4850 2400 0    50   ~ 10
RIGHT IND
Text Label 4925 5550 0    40   ~ 0
GND
Text Label 4925 4300 0    40   ~ 0
12V
Text Label 4925 3475 0    40   ~ 0
OUT6
Wire Notes Line width 15 style solid
	4850 4175 6650 4175
Wire Notes Line width 15 style solid
	6650 4175 6650 5675
Wire Notes Line width 15 style solid
	4850 5675 4850 4175
Text Notes 5675 4150 0    50   ~ 0
Low Power, upto 1 Amps
$Comp
L veloce:D_Schottky_Small D?
U 1 1 627E9DD3
P 6050 4475
AR Path="/627E9DD3" Ref="D?"  Part="1" 
AR Path="/6276F530/627E9DD3" Ref="D7"  Part="1" 
F 0 "D7" V 6125 4475 50  0000 R CNB
F 1 "B220A-13-F" H 6175 4550 30  0000 R CNN
F 2 "veloce:D_SMB" V 6050 4475 50  0001 C CNN
F 3 "~" V 6050 4475 50  0001 C CNN
	1    6050 4475
	0    1    1    0   
$EndComp
$Comp
L veloce:Screw_Terminal_01x02 J?
U 1 1 627E9DDB
P 6350 4300
AR Path="/627E9DDB" Ref="J?"  Part="1" 
AR Path="/6276F530/627E9DDB" Ref="J7"  Part="1" 
F 0 "J7" H 6300 4100 50  0000 L CNB
F 1 "OUT" H 6300 4025 40  0000 L CNN
F 2 "veloce:TerminalBlock_Wurth_1377-2_Horizontal" H 6350 4300 50  0001 C CNN
F 3 "~" H 6350 4300 50  0001 C CNN
F 4 "[+]" H 6400 4300 40  0000 L CNB "Field4"
F 5 "[-]" H 6400 4200 40  0000 L CNB "Field5"
	1    6350 4300
	1    0    0    -1  
$EndComp
$Comp
L veloce:R R?
U 1 1 627E9DE1
P 5500 4800
AR Path="/627E9DE1" Ref="R?"  Part="1" 
AR Path="/6276F530/627E9DE1" Ref="R20"  Part="1" 
F 0 "R20" H 5400 4800 50  0000 C CNB
F 1 "0E" V 5500 4800 40  0000 C CNN
F 2 "veloce:R_0805_2012Metric" V 5430 4800 50  0001 C CNN
F 3 "~" H 5500 4800 50  0001 C CNN
	1    5500 4800
	-1   0    0    1   
$EndComp
$Comp
L veloce:R R?
U 1 1 627E9DE7
P 5175 5400
AR Path="/627E9DE7" Ref="R?"  Part="1" 
AR Path="/6276F530/627E9DE7" Ref="R21"  Part="1" 
F 0 "R21" H 5225 5400 50  0000 L CNB
F 1 "12k" V 5175 5325 40  0000 L CNN
F 2 "veloce:R_0805_2012Metric" V 5105 5400 50  0001 C CNN
F 3 "~" H 5175 5400 50  0001 C CNN
	1    5175 5400
	-1   0    0    1   
$EndComp
$Comp
L veloce:MOSFET-N Q?
U 1 1 627E9DED
P 5400 5175
AR Path="/627E9DED" Ref="Q?"  Part="1" 
AR Path="/6276F530/627E9DED" Ref="Q14"  Part="1" 
F 0 "Q14" H 5525 5300 50  0000 L CNB
F 1 "RYM002N05" V 5600 4900 30  0000 L CNN
F 2 "veloce:SOT-723" H 5600 5125 29  0001 L CNN
F 3 "" H 5400 5175 60  0000 C CNN
	1    5400 5175
	1    0    0    -1  
$EndComp
Text Label 6075 2550 0    30   ~ 0
OP6
$Comp
L veloce:R R?
U 1 1 627E9DF4
P 5125 4450
AR Path="/627E9DF4" Ref="R?"  Part="1" 
AR Path="/6276F530/627E9DF4" Ref="R19"  Part="1" 
F 0 "R19" H 5225 4450 50  0000 C CNB
F 1 "12k" V 5125 4450 40  0000 C CNN
F 2 "veloce:R_0805_2012Metric" V 5055 4450 50  0001 C CNN
F 3 "~" H 5125 4450 50  0001 C CNN
	1    5125 4450
	-1   0    0    1   
$EndComp
$Comp
L veloce:MOSFET-P Q?
U 1 1 627E9DFA
P 5500 4400
AR Path="/627E9DFA" Ref="Q?"  Part="1" 
AR Path="/6276F530/627E9DFA" Ref="Q13"  Part="1" 
F 0 "Q13" V 5350 4450 50  0000 C CNB
F 1 "ZXMP7A17K" H 5450 4250 30  0000 C CNN
F 2 "veloce:TO-252-3_TabPin2" H 5700 4325 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/FQP27P06-D.PDF" H 5500 4400 50  0001 L CNN
	1    5500 4400
	0    1    -1   0   
$EndComp
Wire Wire Line
	5500 4600 5500 4625
Wire Wire Line
	5125 4600 5125 4625
Wire Wire Line
	5125 4625 5500 4625
Connection ~ 5500 4625
Wire Wire Line
	5500 4625 5500 4650
Wire Wire Line
	5500 4950 5500 4975
Wire Wire Line
	5175 5250 5175 5225
Wire Wire Line
	5175 5225 5200 5225
Wire Wire Line
	5175 5550 5500 5550
Wire Wire Line
	5500 5550 5500 5375
Wire Wire Line
	5300 4300 5125 4300
Wire Wire Line
	5700 4300 5800 4300
Wire Wire Line
	6150 4400 6150 4625
Wire Wire Line
	6150 5550 5800 5550
Connection ~ 5500 5550
Wire Wire Line
	5125 4300 4925 4300
Connection ~ 5125 4300
Wire Wire Line
	4925 5550 5175 5550
Connection ~ 5175 5550
Wire Wire Line
	4925 5225 5175 5225
Connection ~ 5175 5225
Wire Wire Line
	6050 4575 6050 4625
Wire Wire Line
	6050 4625 6150 4625
Connection ~ 6150 4625
Wire Wire Line
	6150 4625 6150 5550
Wire Wire Line
	6050 4375 6050 4300
Connection ~ 6050 4300
Wire Wire Line
	6050 4300 6150 4300
Text Notes 4900 4900 0    40   ~ 0
For 48V, use 36k\nFor 24V, use 12k\nFor 12V, use 0E
Wire Notes Line width 15 style solid
	6650 5675 4850 5675
Text Notes 4850 4150 0    50   ~ 10
SPARE
Text Label 4925 3800 0    40   ~ 0
GND
Text Label 4925 2550 0    40   ~ 0
12V
Text Label 4925 5225 0    40   ~ 0
OUT7
Wire Notes Line width 15 style solid
	4850 2425 6650 2425
Wire Notes Line width 15 style solid
	6650 2425 6650 3925
Wire Notes Line width 15 style solid
	4850 3925 4850 2425
Text Notes 5675 2400 0    50   ~ 0
Low Power, upto 1 Amps
$Comp
L veloce:D_Schottky_Small D?
U 1 1 627E9E26
P 6050 2725
AR Path="/627E9E26" Ref="D?"  Part="1" 
AR Path="/6276F530/627E9E26" Ref="D6"  Part="1" 
F 0 "D6" V 6125 2725 50  0000 R CNB
F 1 "B220A-13-F" H 6175 2800 30  0000 R CNN
F 2 "veloce:D_SMB" V 6050 2725 50  0001 C CNN
F 3 "~" V 6050 2725 50  0001 C CNN
	1    6050 2725
	0    1    1    0   
$EndComp
$Comp
L veloce:Screw_Terminal_01x02 J?
U 1 1 627E9E2E
P 6350 2550
AR Path="/627E9E2E" Ref="J?"  Part="1" 
AR Path="/6276F530/627E9E2E" Ref="J6"  Part="1" 
F 0 "J6" H 6300 2350 50  0000 L CNB
F 1 "OUT" H 6300 2275 40  0000 L CNN
F 2 "veloce:TerminalBlock_Wurth_1377-2_Horizontal" H 6350 2550 50  0001 C CNN
F 3 "~" H 6350 2550 50  0001 C CNN
F 4 "[+]" H 6400 2550 40  0000 L CNB "Field4"
F 5 "[-]" H 6400 2450 40  0000 L CNB "Field5"
	1    6350 2550
	1    0    0    -1  
$EndComp
$Comp
L veloce:R R?
U 1 1 627E9E34
P 5500 3050
AR Path="/627E9E34" Ref="R?"  Part="1" 
AR Path="/6276F530/627E9E34" Ref="R17"  Part="1" 
F 0 "R17" H 5400 3050 50  0000 C CNB
F 1 "0E" V 5500 3050 40  0000 C CNN
F 2 "veloce:R_0805_2012Metric" V 5430 3050 50  0001 C CNN
F 3 "~" H 5500 3050 50  0001 C CNN
	1    5500 3050
	-1   0    0    1   
$EndComp
$Comp
L veloce:R R?
U 1 1 627E9E3A
P 5175 3650
AR Path="/627E9E3A" Ref="R?"  Part="1" 
AR Path="/6276F530/627E9E3A" Ref="R18"  Part="1" 
F 0 "R18" H 5225 3650 50  0000 L CNB
F 1 "12k" V 5175 3575 40  0000 L CNN
F 2 "veloce:R_0805_2012Metric" V 5105 3650 50  0001 C CNN
F 3 "~" H 5175 3650 50  0001 C CNN
	1    5175 3650
	-1   0    0    1   
$EndComp
$Comp
L veloce:MOSFET-N Q?
U 1 1 627E9E40
P 5400 3425
AR Path="/627E9E40" Ref="Q?"  Part="1" 
AR Path="/6276F530/627E9E40" Ref="Q12"  Part="1" 
F 0 "Q12" H 5525 3550 50  0000 L CNB
F 1 "RYM002N05" V 5600 3150 30  0000 L CNN
F 2 "veloce:SOT-723" H 5600 3375 29  0001 L CNN
F 3 "" H 5400 3425 60  0000 C CNN
	1    5400 3425
	1    0    0    -1  
$EndComp
Text Label 6075 4300 0    30   ~ 0
OP7
$Comp
L veloce:R R?
U 1 1 627E9E47
P 5125 2700
AR Path="/627E9E47" Ref="R?"  Part="1" 
AR Path="/6276F530/627E9E47" Ref="R16"  Part="1" 
F 0 "R16" H 5225 2700 50  0000 C CNB
F 1 "12k" V 5125 2700 40  0000 C CNN
F 2 "veloce:R_0805_2012Metric" V 5055 2700 50  0001 C CNN
F 3 "~" H 5125 2700 50  0001 C CNN
	1    5125 2700
	-1   0    0    1   
$EndComp
$Comp
L veloce:MOSFET-P Q?
U 1 1 627E9E4D
P 5500 2650
AR Path="/627E9E4D" Ref="Q?"  Part="1" 
AR Path="/6276F530/627E9E4D" Ref="Q11"  Part="1" 
F 0 "Q11" V 5350 2700 50  0000 C CNB
F 1 "ZXMP7A17K" H 5450 2500 30  0000 C CNN
F 2 "veloce:TO-252-3_TabPin2" H 5700 2575 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/FQP27P06-D.PDF" H 5500 2650 50  0001 L CNN
	1    5500 2650
	0    1    -1   0   
$EndComp
Wire Wire Line
	5500 2850 5500 2875
Wire Wire Line
	5125 2850 5125 2875
Wire Wire Line
	5125 2875 5500 2875
Connection ~ 5500 2875
Wire Wire Line
	5500 2875 5500 2900
Wire Wire Line
	5500 3200 5500 3225
Wire Wire Line
	5175 3500 5175 3475
Wire Wire Line
	5175 3475 5200 3475
Wire Wire Line
	5175 3800 5500 3800
Wire Wire Line
	5500 3800 5500 3625
Wire Wire Line
	5300 2550 5125 2550
Wire Wire Line
	5700 2550 5800 2550
Wire Wire Line
	6150 2650 6150 2875
Wire Wire Line
	6150 3800 5800 3800
Connection ~ 5500 3800
Wire Wire Line
	5125 2550 4925 2550
Connection ~ 5125 2550
Wire Wire Line
	4925 3800 5175 3800
Connection ~ 5175 3800
Wire Wire Line
	4925 3475 5175 3475
Connection ~ 5175 3475
Wire Wire Line
	6050 2825 6050 2875
Wire Wire Line
	6050 2875 6150 2875
Connection ~ 6150 2875
Wire Wire Line
	6150 2875 6150 3800
Wire Wire Line
	6050 2625 6050 2550
Connection ~ 6050 2550
Wire Wire Line
	6050 2550 6150 2550
Text Notes 4900 3150 0    40   ~ 0
For 48V, use 36k\nFor 24V, use 12k\nFor 12V, use 0E
Wire Notes Line width 15 style solid
	6650 3925 4850 3925
Text HLabel 1025 1525 0    40   Input ~ 0
12V
Text HLabel 1025 1775 0    40   Input ~ 0
OUT1
Text HLabel 1025 1900 0    40   Input ~ 0
OUT2
Text HLabel 1025 2025 0    40   Input ~ 0
OUT3
Text HLabel 1025 2150 0    40   Input ~ 0
OUT4
Text HLabel 1025 2275 0    40   Input ~ 0
OUT5
Text HLabel 1025 2400 0    40   Input ~ 0
OUT6
Text HLabel 1025 2525 0    40   Input ~ 0
OUT7
Text HLabel 1025 2650 0    40   Input ~ 0
OUT8
Text HLabel 1025 2900 0    40   Input ~ 0
GND
Wire Wire Line
	1025 1525 1325 1525
Wire Wire Line
	1325 1775 1025 1775
Wire Wire Line
	1025 1900 1325 1900
Wire Wire Line
	1325 2025 1025 2025
Wire Wire Line
	1025 2150 1325 2150
Wire Wire Line
	1325 2275 1025 2275
Wire Wire Line
	1025 2400 1325 2400
Wire Wire Line
	1025 2525 1325 2525
Wire Wire Line
	1025 2650 1325 2650
Wire Wire Line
	1025 2900 1325 2900
Text Label 1325 2900 0    40   ~ 0
GND
Text Label 1325 1525 0    40   ~ 0
12V
Text Label 1325 1775 0    40   ~ 0
OUT1
Text Label 1325 1900 0    40   ~ 0
OUT2
Text Label 1325 2025 0    40   ~ 0
OUT3
Text Label 1325 2150 0    40   ~ 0
OUT4
Text Label 1325 2275 0    40   ~ 0
OUT5
Text Label 1325 2525 0    40   ~ 0
OUT7
Text Label 1325 2400 0    40   ~ 0
OUT6
Text Label 1325 2650 0    40   ~ 0
OUT8
Text Notes 4850 5900 0    50   ~ 10
SPARE
Text Label 4925 7300 0    40   ~ 0
GND
Text Label 4925 6050 0    40   ~ 0
12V
Text Label 4925 6975 0    40   ~ 0
OUT8
Wire Notes Line width 15 style solid
	4850 5925 6650 5925
Wire Notes Line width 15 style solid
	6650 5925 6650 7425
Wire Notes Line width 15 style solid
	4850 7425 4850 5925
Text Notes 5675 5900 0    50   ~ 0
Low Power, upto 1 Amps
$Comp
L veloce:D_Schottky_Small D?
U 1 1 627E9E79
P 6050 6225
AR Path="/627E9E79" Ref="D?"  Part="1" 
AR Path="/6276F530/627E9E79" Ref="D8"  Part="1" 
F 0 "D8" V 6125 6225 50  0000 R CNB
F 1 "B220A-13-F" H 6175 6300 30  0000 R CNN
F 2 "veloce:D_SMB" V 6050 6225 50  0001 C CNN
F 3 "~" V 6050 6225 50  0001 C CNN
	1    6050 6225
	0    1    1    0   
$EndComp
$Comp
L veloce:Screw_Terminal_01x02 J?
U 1 1 627E9E81
P 6350 6050
AR Path="/627E9E81" Ref="J?"  Part="1" 
AR Path="/6276F530/627E9E81" Ref="J8"  Part="1" 
F 0 "J8" H 6300 5850 50  0000 L CNB
F 1 "OUT" H 6300 5775 40  0000 L CNN
F 2 "veloce:TerminalBlock_Wurth_1377-2_Horizontal" H 6350 6050 50  0001 C CNN
F 3 "~" H 6350 6050 50  0001 C CNN
F 4 "[+]" H 6400 6050 40  0000 L CNB "Field4"
F 5 "[-]" H 6400 5950 40  0000 L CNB "Field5"
	1    6350 6050
	1    0    0    -1  
$EndComp
$Comp
L veloce:R R?
U 1 1 627E9E87
P 5500 6550
AR Path="/627E9E87" Ref="R?"  Part="1" 
AR Path="/6276F530/627E9E87" Ref="R23"  Part="1" 
F 0 "R23" H 5400 6550 50  0000 C CNB
F 1 "0E" V 5500 6550 40  0000 C CNN
F 2 "veloce:R_0805_2012Metric" V 5430 6550 50  0001 C CNN
F 3 "~" H 5500 6550 50  0001 C CNN
	1    5500 6550
	-1   0    0    1   
$EndComp
$Comp
L veloce:R R?
U 1 1 627E9E8D
P 5175 7150
AR Path="/627E9E8D" Ref="R?"  Part="1" 
AR Path="/6276F530/627E9E8D" Ref="R24"  Part="1" 
F 0 "R24" H 5225 7150 50  0000 L CNB
F 1 "12k" V 5175 7075 40  0000 L CNN
F 2 "veloce:R_0805_2012Metric" V 5105 7150 50  0001 C CNN
F 3 "~" H 5175 7150 50  0001 C CNN
	1    5175 7150
	-1   0    0    1   
$EndComp
$Comp
L veloce:MOSFET-N Q?
U 1 1 627E9E93
P 5400 6925
AR Path="/627E9E93" Ref="Q?"  Part="1" 
AR Path="/6276F530/627E9E93" Ref="Q16"  Part="1" 
F 0 "Q16" H 5525 7050 50  0000 L CNB
F 1 "RYM002N05" V 5600 6650 30  0000 L CNN
F 2 "veloce:SOT-723" H 5600 6875 29  0001 L CNN
F 3 "" H 5400 6925 60  0000 C CNN
	1    5400 6925
	1    0    0    -1  
$EndComp
Text Label 6075 6050 0    30   ~ 0
OP8
$Comp
L veloce:R R?
U 1 1 627E9E9A
P 5125 6200
AR Path="/627E9E9A" Ref="R?"  Part="1" 
AR Path="/6276F530/627E9E9A" Ref="R22"  Part="1" 
F 0 "R22" H 5225 6200 50  0000 C CNB
F 1 "12k" V 5125 6200 40  0000 C CNN
F 2 "veloce:R_0805_2012Metric" V 5055 6200 50  0001 C CNN
F 3 "~" H 5125 6200 50  0001 C CNN
	1    5125 6200
	-1   0    0    1   
$EndComp
$Comp
L veloce:MOSFET-P Q?
U 1 1 627E9EA0
P 5500 6150
AR Path="/627E9EA0" Ref="Q?"  Part="1" 
AR Path="/6276F530/627E9EA0" Ref="Q15"  Part="1" 
F 0 "Q15" V 5350 6200 50  0000 C CNB
F 1 "ZXMP7A17K" H 5450 6000 30  0000 C CNN
F 2 "veloce:TO-252-3_TabPin2" H 5700 6075 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/FQP27P06-D.PDF" H 5500 6150 50  0001 L CNN
	1    5500 6150
	0    1    -1   0   
$EndComp
Wire Wire Line
	5500 6350 5500 6375
Wire Wire Line
	5125 6350 5125 6375
Wire Wire Line
	5125 6375 5500 6375
Connection ~ 5500 6375
Wire Wire Line
	5500 6375 5500 6400
Wire Wire Line
	5500 6700 5500 6725
Wire Wire Line
	5175 7000 5175 6975
Wire Wire Line
	5175 6975 5200 6975
Wire Wire Line
	5175 7300 5500 7300
Wire Wire Line
	5500 7300 5500 7125
Wire Wire Line
	5300 6050 5125 6050
Wire Wire Line
	5700 6050 5800 6050
Wire Wire Line
	6150 6150 6150 6375
Wire Wire Line
	6150 7300 5800 7300
Connection ~ 5500 7300
Wire Wire Line
	5125 6050 4925 6050
Connection ~ 5125 6050
Wire Wire Line
	4925 7300 5175 7300
Connection ~ 5175 7300
Wire Wire Line
	4925 6975 5175 6975
Connection ~ 5175 6975
Wire Wire Line
	6050 6325 6050 6375
Wire Wire Line
	6050 6375 6150 6375
Connection ~ 6150 6375
Wire Wire Line
	6150 6375 6150 7300
Wire Wire Line
	6050 6125 6050 6050
Connection ~ 6050 6050
Wire Wire Line
	6050 6050 6150 6050
Text Notes 4900 6650 0    40   ~ 0
For 48V, use 36k\nFor 24V, use 12k\nFor 12V, use 0E
Wire Notes Line width 15 style solid
	6650 7425 4850 7425
$Comp
L veloce:R R?
U 1 1 62B0EB26
P 3550 950
AR Path="/62B0EB26" Ref="R?"  Part="1" 
AR Path="/6276F530/62B0EB26" Ref="R38"  Part="1" 
F 0 "R38" H 3450 950 50  0000 C CNB
F 1 "1k" V 3550 950 40  0000 C CNN
F 2 "veloce:R_0805_2012Metric" V 3480 950 50  0001 C CNN
F 3 "~" H 3550 950 50  0001 C CNN
	1    3550 950 
	-1   0    0    1   
$EndComp
Connection ~ 3550 800 
Wire Wire Line
	3550 800  3800 800 
$Comp
L veloce:LED D9
U 1 1 62B1D505
P 3550 1300
F 0 "D9" V 3600 1225 50  0000 R CNB
F 1 "LED" V 3525 1225 50  0000 R CNN
F 2 "veloce:LED_0805_2012Metric" H 3550 1300 50  0001 C CNN
F 3 "~" H 3550 1300 50  0001 C CNN
	1    3550 1300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3550 1100 3550 1150
Wire Wire Line
	3550 1450 3550 2050
Connection ~ 3550 2050
Wire Wire Line
	3550 2050 3250 2050
$Comp
L veloce:R R?
U 1 1 62B364C3
P 3550 2700
AR Path="/62B364C3" Ref="R?"  Part="1" 
AR Path="/6276F530/62B364C3" Ref="R39"  Part="1" 
F 0 "R39" H 3450 2700 50  0000 C CNB
F 1 "1k" V 3550 2700 40  0000 C CNN
F 2 "veloce:R_0805_2012Metric" V 3480 2700 50  0001 C CNN
F 3 "~" H 3550 2700 50  0001 C CNN
	1    3550 2700
	-1   0    0    1   
$EndComp
$Comp
L veloce:LED D10
U 1 1 62B367E1
P 3550 3050
F 0 "D10" V 3600 2975 50  0000 R CNB
F 1 "LED" V 3525 2975 50  0000 R CNN
F 2 "veloce:LED_0805_2012Metric" H 3550 3050 50  0001 C CNN
F 3 "~" H 3550 3050 50  0001 C CNN
	1    3550 3050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3550 2850 3550 2900
Wire Wire Line
	3550 3200 3550 3800
Connection ~ 3550 2550
Wire Wire Line
	3550 2550 3800 2550
Connection ~ 3550 3800
Wire Wire Line
	3550 3800 3250 3800
$Comp
L veloce:R R?
U 1 1 62B4A6C9
P 3550 4450
AR Path="/62B4A6C9" Ref="R?"  Part="1" 
AR Path="/6276F530/62B4A6C9" Ref="R40"  Part="1" 
F 0 "R40" H 3450 4450 50  0000 C CNB
F 1 "1k" V 3550 4450 40  0000 C CNN
F 2 "veloce:R_0805_2012Metric" V 3480 4450 50  0001 C CNN
F 3 "~" H 3550 4450 50  0001 C CNN
	1    3550 4450
	-1   0    0    1   
$EndComp
$Comp
L veloce:LED D11
U 1 1 62B4AB27
P 3550 4800
F 0 "D11" V 3600 4725 50  0000 R CNB
F 1 "LED" V 3525 4725 50  0000 R CNN
F 2 "veloce:LED_0805_2012Metric" H 3550 4800 50  0001 C CNN
F 3 "~" H 3550 4800 50  0001 C CNN
	1    3550 4800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3550 4600 3550 4650
Wire Wire Line
	3550 4950 3550 5550
Connection ~ 3550 4300
Wire Wire Line
	3550 4300 3800 4300
Connection ~ 3550 5550
Wire Wire Line
	3550 5550 3250 5550
$Comp
L veloce:R R?
U 1 1 62B5FD9E
P 3550 6200
AR Path="/62B5FD9E" Ref="R?"  Part="1" 
AR Path="/6276F530/62B5FD9E" Ref="R41"  Part="1" 
F 0 "R41" H 3450 6200 50  0000 C CNB
F 1 "1k" V 3550 6200 40  0000 C CNN
F 2 "veloce:R_0805_2012Metric" V 3480 6200 50  0001 C CNN
F 3 "~" H 3550 6200 50  0001 C CNN
	1    3550 6200
	-1   0    0    1   
$EndComp
$Comp
L veloce:LED D12
U 1 1 62B601EC
P 3550 6550
F 0 "D12" V 3600 6475 50  0000 R CNB
F 1 "LED" V 3525 6475 50  0000 R CNN
F 2 "veloce:LED_0805_2012Metric" H 3550 6550 50  0001 C CNN
F 3 "~" H 3550 6550 50  0001 C CNN
	1    3550 6550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3550 6350 3550 6400
Wire Wire Line
	3550 6700 3550 7300
Connection ~ 3550 6050
Wire Wire Line
	3550 6050 3800 6050
Connection ~ 3550 7300
Wire Wire Line
	3550 7300 3250 7300
$Comp
L veloce:R R?
U 1 1 62B7659A
P 5800 950
AR Path="/62B7659A" Ref="R?"  Part="1" 
AR Path="/6276F530/62B7659A" Ref="R42"  Part="1" 
F 0 "R42" H 5700 950 50  0000 C CNB
F 1 "1k" V 5800 950 40  0000 C CNN
F 2 "veloce:R_0805_2012Metric" V 5730 950 50  0001 C CNN
F 3 "~" H 5800 950 50  0001 C CNN
	1    5800 950 
	-1   0    0    1   
$EndComp
$Comp
L veloce:LED D13
U 1 1 62B76954
P 5800 1300
F 0 "D13" V 5850 1225 50  0000 R CNB
F 1 "LED" V 5775 1225 50  0000 R CNN
F 2 "veloce:LED_0805_2012Metric" H 5800 1300 50  0001 C CNN
F 3 "~" H 5800 1300 50  0001 C CNN
	1    5800 1300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5800 1100 5800 1150
Wire Wire Line
	5800 1450 5800 2050
Connection ~ 5800 800 
Wire Wire Line
	5800 800  6050 800 
Connection ~ 5800 2050
Wire Wire Line
	5800 2050 5500 2050
$Comp
L veloce:R R?
U 1 1 62B8F6D7
P 5800 2700
AR Path="/62B8F6D7" Ref="R?"  Part="1" 
AR Path="/6276F530/62B8F6D7" Ref="R43"  Part="1" 
F 0 "R43" H 5700 2700 50  0000 C CNB
F 1 "1k" V 5800 2700 40  0000 C CNN
F 2 "veloce:R_0805_2012Metric" V 5730 2700 50  0001 C CNN
F 3 "~" H 5800 2700 50  0001 C CNN
	1    5800 2700
	-1   0    0    1   
$EndComp
$Comp
L veloce:LED D14
U 1 1 62B8F99D
P 5800 3050
F 0 "D14" V 5850 2975 50  0000 R CNB
F 1 "LED" V 5775 2975 50  0000 R CNN
F 2 "veloce:LED_0805_2012Metric" H 5800 3050 50  0001 C CNN
F 3 "~" H 5800 3050 50  0001 C CNN
	1    5800 3050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5800 2850 5800 2900
Wire Wire Line
	5800 3200 5800 3800
Connection ~ 5800 2550
Wire Wire Line
	5800 2550 6050 2550
Connection ~ 5800 3800
Wire Wire Line
	5800 3800 5500 3800
$Comp
L veloce:R R?
U 1 1 62BA03A9
P 5800 4450
AR Path="/62BA03A9" Ref="R?"  Part="1" 
AR Path="/6276F530/62BA03A9" Ref="R44"  Part="1" 
F 0 "R44" H 5700 4450 50  0000 C CNB
F 1 "1k" V 5800 4450 40  0000 C CNN
F 2 "veloce:R_0805_2012Metric" V 5730 4450 50  0001 C CNN
F 3 "~" H 5800 4450 50  0001 C CNN
	1    5800 4450
	-1   0    0    1   
$EndComp
$Comp
L veloce:LED D15
U 1 1 62BA06D3
P 5800 4800
F 0 "D15" V 5850 4725 50  0000 R CNB
F 1 "LED" V 5775 4725 50  0000 R CNN
F 2 "veloce:LED_0805_2012Metric" H 5800 4800 50  0001 C CNN
F 3 "~" H 5800 4800 50  0001 C CNN
	1    5800 4800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5800 4600 5800 4650
Wire Wire Line
	5800 4950 5800 5550
Connection ~ 5800 4300
Wire Wire Line
	5800 4300 6050 4300
Connection ~ 5800 5550
Wire Wire Line
	5800 5550 5500 5550
$Comp
L veloce:R R?
U 1 1 62BB6162
P 5800 6200
AR Path="/62BB6162" Ref="R?"  Part="1" 
AR Path="/6276F530/62BB6162" Ref="R45"  Part="1" 
F 0 "R45" H 5700 6200 50  0000 C CNB
F 1 "1k" V 5800 6200 40  0000 C CNN
F 2 "veloce:R_0805_2012Metric" V 5730 6200 50  0001 C CNN
F 3 "~" H 5800 6200 50  0001 C CNN
	1    5800 6200
	-1   0    0    1   
$EndComp
$Comp
L veloce:LED D16
U 1 1 62BB6448
P 5800 6550
F 0 "D16" V 5850 6475 50  0000 R CNB
F 1 "LED" V 5775 6475 50  0000 R CNN
F 2 "veloce:LED_0805_2012Metric" H 5800 6550 50  0001 C CNN
F 3 "~" H 5800 6550 50  0001 C CNN
	1    5800 6550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5800 6350 5800 6400
Wire Wire Line
	5800 6700 5800 7300
Connection ~ 5800 6050
Wire Wire Line
	5800 6050 6050 6050
Connection ~ 5800 7300
Wire Wire Line
	5800 7300 5500 7300
$Comp
L veloce:MOSFET-P Q?
U 1 1 627E9C5D
P 3250 900
AR Path="/627E9C5D" Ref="Q?"  Part="1" 
AR Path="/6276F530/627E9C5D" Ref="Q1"  Part="1" 
F 0 "Q1" V 3100 950 50  0000 C CNB
F 1 "FQD11P06TM" H 3200 750 30  0000 C CNN
F 2 "veloce:TO-252-3_TabPin2" H 3450 825 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/FQP27P06-D.PDF" H 3250 900 50  0001 L CNN
	1    3250 900 
	0    1    -1   0   
$EndComp
$EndSCHEMATC

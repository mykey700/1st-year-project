EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
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
L Motor:Motor_Servo M1
U 1 1 5EA224CF
P 4300 3200
F 0 "M1" H 4632 3265 50  0000 L CNN
F 1 "Motor_Servo" H 4632 3174 50  0000 L CNN
F 2 "" H 4300 3010 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 4300 3010 50  0001 C CNN
	1    4300 3200
	1    0    0    -1  
$EndComp
$Comp
L MCU_Module:Arduino_Nano_v2.x A1
U 1 1 5EA23BF3
P 2200 2100
F 0 "A1" H 2200 1011 50  0000 C CNN
F 1 "Arduino_Nano_v2.x" H 2200 920 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 2350 1150 50  0001 L CNN
F 3 "https://www.arduino.cc/en/uploads/Main/ArduinoNanoManual23.pdf" H 2200 1100 50  0001 C CNN
	1    2200 2100
	-1   0    0    1   
$EndComp
$Comp
L servo:Sr-04 U1
U 1 1 5EA285DE
P 4700 1200
F 0 "U1" H 4015 1283 50  0000 R CNN
F 1 "Sr-04" H 4015 1374 50  0000 R CNN
F 2 "" H 4700 1200 50  0001 C CNN
F 3 "" H 4700 1200 50  0001 C CNN
	1    4700 1200
	-1   0    0    1   
$EndComp
$Comp
L servo:Sr-04 U2
U 1 1 5EA2B28E
P 4700 2200
F 0 "U2" H 4015 2283 50  0000 R CNN
F 1 "Sr-04" H 4015 2374 50  0000 R CNN
F 2 "" H 4700 2200 50  0001 C CNN
F 3 "" H 4700 2200 50  0001 C CNN
	1    4700 2200
	-1   0    0    1   
$EndComp
$Comp
L servo:i2C_bus U?
U 1 1 5EA468FB
P 900 1200
F 0 "U?" H 829 1922 50  0000 C CNN
F 1 "i2C_bus" H 829 1831 50  0000 C CNN
F 2 "" H 900 1200 50  0001 C CNN
F 3 "" H 900 1200 50  0001 C CNN
	1    900  1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1600 1250 1600
Wire Wire Line
	1250 1600 1250 850 
Wire Wire Line
	1250 850  1000 850 
Wire Wire Line
	1000 950  1150 950 
Wire Wire Line
	1150 950  1150 1700
Wire Wire Line
	1150 1700 1700 1700
Wire Wire Line
	1000 1050 1050 1050
Wire Wire Line
	1050 1050 1050 3200
Wire Wire Line
	1050 3200 2000 3200
Wire Wire Line
	2000 3200 2000 3100
Wire Wire Line
	1000 750  2100 750 
Wire Wire Line
	2100 750  2100 1100
$EndSCHEMATC

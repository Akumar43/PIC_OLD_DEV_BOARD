
_InitMain:

;pic_old_pcb.c,4 :: 		void InitMain() {
;pic_old_pcb.c,5 :: 		PWM1_Init(5000);                    // Initialize PWM1 module at 5KHz
	BSF        T2CON+0, 0
	BCF        T2CON+0, 1
	MOVLW      199
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;pic_old_pcb.c,6 :: 		}
L_end_InitMain:
	RETURN
; end of _InitMain

_main:

;pic_old_pcb.c,8 :: 		void main() {
;pic_old_pcb.c,9 :: 		InitMain();
	CALL       _InitMain+0
;pic_old_pcb.c,10 :: 		PWM1_Set_Duty(125);        // Set current duty for PWM1
	MOVLW      125
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;pic_old_pcb.c,12 :: 		PWM1_Start();                       // start PWM1
	CALL       _PWM1_Start+0
;pic_old_pcb.c,43 :: 		while (1)
L_main0:
;pic_old_pcb.c,47 :: 		for(i=0;i<20;i++){
	CLRF       _i+0
	CLRF       _i+1
L_main2:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main30
	MOVLW      20
	SUBWF      _i+0, 0
L__main30:
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;pic_old_pcb.c,48 :: 		switch(i){
	GOTO       L_main5
;pic_old_pcb.c,49 :: 		case 20:
L_main7:
;pic_old_pcb.c,50 :: 		PWM1_Init(2900);
	BSF        T2CON+0, 0
	BSF        T2CON+0, 1
	MOVLW      86
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;pic_old_pcb.c,51 :: 		break;
	GOTO       L_main6
;pic_old_pcb.c,52 :: 		case 19:
L_main8:
;pic_old_pcb.c,53 :: 		PWM1_Init(2800);
	BSF        T2CON+0, 0
	BSF        T2CON+0, 1
	MOVLW      89
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;pic_old_pcb.c,54 :: 		break;
	GOTO       L_main6
;pic_old_pcb.c,55 :: 		case 18:
L_main9:
;pic_old_pcb.c,56 :: 		PWM1_Init(2700);
	BSF        T2CON+0, 0
	BSF        T2CON+0, 1
	MOVLW      92
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;pic_old_pcb.c,57 :: 		break;
	GOTO       L_main6
;pic_old_pcb.c,58 :: 		case 17:
L_main10:
;pic_old_pcb.c,59 :: 		PWM1_Init(2600);
	BSF        T2CON+0, 0
	BSF        T2CON+0, 1
	MOVLW      96
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;pic_old_pcb.c,60 :: 		break;
	GOTO       L_main6
;pic_old_pcb.c,61 :: 		case 16:
L_main11:
;pic_old_pcb.c,62 :: 		PWM1_Init(2500);
	BSF        T2CON+0, 0
	BSF        T2CON+0, 1
	MOVLW      99
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;pic_old_pcb.c,63 :: 		break;
	GOTO       L_main6
;pic_old_pcb.c,64 :: 		case 15:
L_main12:
;pic_old_pcb.c,65 :: 		PWM1_Init(2400);
	BSF        T2CON+0, 0
	BSF        T2CON+0, 1
	MOVLW      104
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;pic_old_pcb.c,66 :: 		break;
	GOTO       L_main6
;pic_old_pcb.c,67 :: 		case 14:
L_main13:
;pic_old_pcb.c,68 :: 		PWM1_Init(2300);
	BSF        T2CON+0, 0
	BSF        T2CON+0, 1
	MOVLW      108
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;pic_old_pcb.c,69 :: 		break;
	GOTO       L_main6
;pic_old_pcb.c,70 :: 		case 13:
L_main14:
;pic_old_pcb.c,71 :: 		PWM1_Init(2200);
	BSF        T2CON+0, 0
	BSF        T2CON+0, 1
	MOVLW      113
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;pic_old_pcb.c,72 :: 		break;
	GOTO       L_main6
;pic_old_pcb.c,73 :: 		case 12:
L_main15:
;pic_old_pcb.c,74 :: 		PWM1_Init(2100);
	BSF        T2CON+0, 0
	BSF        T2CON+0, 1
	MOVLW      118
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;pic_old_pcb.c,75 :: 		break;
	GOTO       L_main6
;pic_old_pcb.c,76 :: 		case 11:
L_main16:
;pic_old_pcb.c,77 :: 		PWM1_Init(2000);
	BSF        T2CON+0, 0
	BSF        T2CON+0, 1
	MOVLW      124
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;pic_old_pcb.c,78 :: 		break;
	GOTO       L_main6
;pic_old_pcb.c,79 :: 		case 10:
L_main17:
;pic_old_pcb.c,80 :: 		PWM1_Init(1900);
	BSF        T2CON+0, 0
	BSF        T2CON+0, 1
	MOVLW      131
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;pic_old_pcb.c,81 :: 		break;
	GOTO       L_main6
;pic_old_pcb.c,82 :: 		case 9:
L_main18:
;pic_old_pcb.c,83 :: 		PWM1_Init(1800);
	BSF        T2CON+0, 0
	BSF        T2CON+0, 1
	MOVLW      138
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;pic_old_pcb.c,84 :: 		break;
	GOTO       L_main6
;pic_old_pcb.c,85 :: 		case 8:
L_main19:
;pic_old_pcb.c,86 :: 		PWM1_Init(1700);
	BSF        T2CON+0, 0
	BSF        T2CON+0, 1
	MOVLW      146
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;pic_old_pcb.c,87 :: 		break;
	GOTO       L_main6
;pic_old_pcb.c,88 :: 		case 7:
L_main20:
;pic_old_pcb.c,89 :: 		PWM1_Init(1600);
	BSF        T2CON+0, 0
	BSF        T2CON+0, 1
	MOVLW      156
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;pic_old_pcb.c,90 :: 		break;
	GOTO       L_main6
;pic_old_pcb.c,91 :: 		case 6:
L_main21:
;pic_old_pcb.c,92 :: 		PWM1_Init(1500);
	BSF        T2CON+0, 0
	BSF        T2CON+0, 1
	MOVLW      166
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;pic_old_pcb.c,93 :: 		break;
	GOTO       L_main6
;pic_old_pcb.c,94 :: 		case 5:
L_main22:
;pic_old_pcb.c,95 :: 		PWM1_Init(1400);
	BSF        T2CON+0, 0
	BSF        T2CON+0, 1
	MOVLW      178
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;pic_old_pcb.c,96 :: 		break;
	GOTO       L_main6
;pic_old_pcb.c,97 :: 		case 4:
L_main23:
;pic_old_pcb.c,98 :: 		PWM1_Init(1300);
	BSF        T2CON+0, 0
	BSF        T2CON+0, 1
	MOVLW      192
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;pic_old_pcb.c,99 :: 		break;
	GOTO       L_main6
;pic_old_pcb.c,100 :: 		case 3:
L_main24:
;pic_old_pcb.c,101 :: 		PWM1_Init(1200);
	BSF        T2CON+0, 0
	BSF        T2CON+0, 1
	MOVLW      208
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;pic_old_pcb.c,102 :: 		break;
	GOTO       L_main6
;pic_old_pcb.c,103 :: 		case 2:
L_main25:
;pic_old_pcb.c,104 :: 		PWM1_Init(1100);
	BSF        T2CON+0, 0
	BSF        T2CON+0, 1
	MOVLW      227
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;pic_old_pcb.c,105 :: 		break;
	GOTO       L_main6
;pic_old_pcb.c,106 :: 		case 1:
L_main26:
;pic_old_pcb.c,107 :: 		PWM1_Init(1000);
	BSF        T2CON+0, 0
	BSF        T2CON+0, 1
	MOVLW      249
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;pic_old_pcb.c,108 :: 		break;
	GOTO       L_main6
;pic_old_pcb.c,110 :: 		}
L_main5:
	MOVLW      0
	XORWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main31
	MOVLW      20
	XORWF      _i+0, 0
L__main31:
	BTFSC      STATUS+0, 2
	GOTO       L_main7
	MOVLW      0
	XORWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main32
	MOVLW      19
	XORWF      _i+0, 0
L__main32:
	BTFSC      STATUS+0, 2
	GOTO       L_main8
	MOVLW      0
	XORWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main33
	MOVLW      18
	XORWF      _i+0, 0
L__main33:
	BTFSC      STATUS+0, 2
	GOTO       L_main9
	MOVLW      0
	XORWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main34
	MOVLW      17
	XORWF      _i+0, 0
L__main34:
	BTFSC      STATUS+0, 2
	GOTO       L_main10
	MOVLW      0
	XORWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main35
	MOVLW      16
	XORWF      _i+0, 0
L__main35:
	BTFSC      STATUS+0, 2
	GOTO       L_main11
	MOVLW      0
	XORWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main36
	MOVLW      15
	XORWF      _i+0, 0
L__main36:
	BTFSC      STATUS+0, 2
	GOTO       L_main12
	MOVLW      0
	XORWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main37
	MOVLW      14
	XORWF      _i+0, 0
L__main37:
	BTFSC      STATUS+0, 2
	GOTO       L_main13
	MOVLW      0
	XORWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main38
	MOVLW      13
	XORWF      _i+0, 0
L__main38:
	BTFSC      STATUS+0, 2
	GOTO       L_main14
	MOVLW      0
	XORWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main39
	MOVLW      12
	XORWF      _i+0, 0
L__main39:
	BTFSC      STATUS+0, 2
	GOTO       L_main15
	MOVLW      0
	XORWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main40
	MOVLW      11
	XORWF      _i+0, 0
L__main40:
	BTFSC      STATUS+0, 2
	GOTO       L_main16
	MOVLW      0
	XORWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main41
	MOVLW      10
	XORWF      _i+0, 0
L__main41:
	BTFSC      STATUS+0, 2
	GOTO       L_main17
	MOVLW      0
	XORWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main42
	MOVLW      9
	XORWF      _i+0, 0
L__main42:
	BTFSC      STATUS+0, 2
	GOTO       L_main18
	MOVLW      0
	XORWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main43
	MOVLW      8
	XORWF      _i+0, 0
L__main43:
	BTFSC      STATUS+0, 2
	GOTO       L_main19
	MOVLW      0
	XORWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main44
	MOVLW      7
	XORWF      _i+0, 0
L__main44:
	BTFSC      STATUS+0, 2
	GOTO       L_main20
	MOVLW      0
	XORWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main45
	MOVLW      6
	XORWF      _i+0, 0
L__main45:
	BTFSC      STATUS+0, 2
	GOTO       L_main21
	MOVLW      0
	XORWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main46
	MOVLW      5
	XORWF      _i+0, 0
L__main46:
	BTFSC      STATUS+0, 2
	GOTO       L_main22
	MOVLW      0
	XORWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main47
	MOVLW      4
	XORWF      _i+0, 0
L__main47:
	BTFSC      STATUS+0, 2
	GOTO       L_main23
	MOVLW      0
	XORWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main48
	MOVLW      3
	XORWF      _i+0, 0
L__main48:
	BTFSC      STATUS+0, 2
	GOTO       L_main24
	MOVLW      0
	XORWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main49
	MOVLW      2
	XORWF      _i+0, 0
L__main49:
	BTFSC      STATUS+0, 2
	GOTO       L_main25
	MOVLW      0
	XORWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main50
	MOVLW      1
	XORWF      _i+0, 0
L__main50:
	BTFSC      STATUS+0, 2
	GOTO       L_main26
L_main6:
;pic_old_pcb.c,112 :: 		PWM1_Set_Duty(70);
	MOVLW      70
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;pic_old_pcb.c,113 :: 		delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main27:
	DECFSZ     R13+0, 1
	GOTO       L_main27
	DECFSZ     R12+0, 1
	GOTO       L_main27
	DECFSZ     R11+0, 1
	GOTO       L_main27
;pic_old_pcb.c,47 :: 		for(i=0;i<20;i++){
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;pic_old_pcb.c,115 :: 		}
	GOTO       L_main2
L_main3:
;pic_old_pcb.c,118 :: 		}
	GOTO       L_main0
;pic_old_pcb.c,119 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

int i=0;
unsigned int k=0;
void main() {
   PWM1_Set_Duty(125);        // Set current duty for PWM1
  PWM1_Start();                       // start PWM1
  while (1) 
  {
       for(i=0;i<20;i++){
       switch(i){
       case 20:
            PWM1_Init(2900);
            break;
       case 19:
            PWM1_Init(2800);
            break;
       case 18:
            PWM1_Init(2700);
            break;
       case 17:
            PWM1_Init(2600);
            break;
       case 16:
            PWM1_Init(2500);
            break;
       case 15:
            PWM1_Init(2400);
            break;
       case 14:
            PWM1_Init(2300);
            break;
       case 13:
            PWM1_Init(2200);
            break;
       case 12:
            PWM1_Init(2100);
            break;
       case 11:
            PWM1_Init(2000);
            break;
       case 10:
            PWM1_Init(1900);
            break;
       case 9:
            PWM1_Init(1800);
            break;
       case 8:
            PWM1_Init(1700);
            break;
       case 7:
            PWM1_Init(1600);
            break;
       case 6:
            PWM1_Init(1500);
            break;
       case 5:
            PWM1_Init(1400);
            break;
       case 4:
            PWM1_Init(1300);
            break;
       case 3:
            PWM1_Init(1200);
            break;
       case 2:
            PWM1_Init(1100);
            break;
       case 1:
            PWM1_Init(1000);
            break;
		case default:
            PWM1_Init(1000);
            break;	
            
       }

       PWM1_Set_Duty(70);
       delay_ms(100);
       
       }
  }
}
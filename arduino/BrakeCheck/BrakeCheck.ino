#include <Veloce.h>

const int SWITCH_PWR = 0;


bool last_light_sw_state;
bool last_brake_sw_state;

void setup() {
  
  pinMode(BRAKE_IN, INPUT_PULLUP);
  pinMode(BRAKE_OUT, OUTPUT);
  pinMode(BRAKE_OUT, OUTPUT);
  Serial.begin(115200);
  
  digitalWrite(BRAKE_OUT, last_brake_sw_state);

  while(1){
    for(int i=0; i<200; i++){
      digitalWrite(BRAKE_OUT, HIGH);
      delay(1);
      digitalWrite(BRAKE_OUT, LOW);
      delay(5);
    }
      digitalWrite(BRAKE_OUT, HIGH);
      delay(2000);
      digitalWrite(BRAKE_OUT, LOW);
      delay(2000);
  }
}
void loop(){
}

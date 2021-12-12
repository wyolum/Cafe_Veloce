//#define ESP8266
#include <Veloce.h>

bool last_light_sw_state;
bool last_brake_sw_state;

bool last_brake_state;
void setup() {
  delay(500);
  pinMode(RIGHT_IN, INPUT_PULLUP);
  pinMode(LEFT_IN, INPUT_PULLUP);
  pinMode(BRAKE_IN, INPUT_PULLUP);


  pinMode(LIGHTS_OUT, OUTPUT);
  pinMode(LEFT_OUT, OUTPUT);
  pinMode(RIGHT_OUT, OUTPUT);
  pinMode(BRAKE_OUT, OUTPUT);

#ifndef ESP8266
  pinMode(HORN_IN, INPUT_PULLUP);
  pinMode(HORN_OUT, OUTPUT);
#endif
  
  pinMode(13, OUTPUT);
  Serial.begin(115200);

  digitalWrite(LIGHTS_OUT, HIGH);
  last_brake_state = !digitalRead(BRAKE_IN);
  Serial.println("Cafe Veloce version 01");
}
int horn_count = 0;
void update_horn(){
#ifndef ESP8266
  bool horn = !digitalRead(HORN_IN);
  horn_count += horn;
  
  if(horn){
    if(horn_count > 1){
      digitalWrite(HORN_OUT, horn);
    }
  }
  else{
    horn_count = 0;
    digitalWrite(HORN_OUT, false);
  }
#endif
}

void loop(){
  digitalWrite(LEFT_OUT, !digitalRead(LEFT_IN));
  digitalWrite(RIGHT_OUT, !digitalRead(RIGHT_IN));
  update_brake();
  update_horn();
}
void update_brake(){
  bool brake_state = !digitalRead(BRAKE_IN);
  if(brake_state && !last_brake_state){
    for(int i=0; i<2 && !digitalRead(BRAKE_IN); i++){
      digitalWrite(BRAKE_OUT, HIGH);
      delay(50);
      digitalWrite(BRAKE_OUT, LOW);
      delay(50);
    }
  }
  last_brake_state = brake_state;
  if(last_brake_state){
    digitalWrite(BRAKE_OUT, HIGH);
  }
  else{
    digitalWrite(BRAKE_OUT, millis() % 5 == 0);
  }
}


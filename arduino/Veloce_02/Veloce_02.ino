//#define ESP8266
#include <Veloce.h>

bool last_light_sw_state;
bool last_brake_sw_state;

bool last_brake_state;
void setup() {
  for(int ii=0; ii < N_IN; ii++){
    pinMode(IN_PINS[ii], INPUT_PULLDOWN);
  }
  for(int ii = 0; ii < N_OUT; ii++){
    pinMode(OUT_PINS[ii], OUTPUT);
    digitalWrite(OUT_PINS[ii], LOW);
  }

  //pinMode(RIGHT_IN, INPUT_PULLUP);
  //pinMode(LEFT_IN, INPUT_PULLUP);
  //pinMode(BRAKE_IN, INPUT_PULLUP);


  pinMode(LIGHTS_OUT, OUTPUT);
  pinMode(LEFT_OUT, OUTPUT);
  pinMode(RIGHT_OUT, OUTPUT);
  pinMode(BRAKE_OUT, OUTPUT);

  //pinMode(HORN_IN, INPUT_PULLUP);
  pinMode(HORN_OUT, OUTPUT);
  
  pinMode(13, OUTPUT);
  Serial.begin(115200);
  last_brake_state = !digitalRead(BRAKE_IN);
  Serial.println("Cafe Veloce version 02");
}
int horn_count = 0;
void update_horn(){
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
}

void loop(){
  
  digitalWrite(LIGHTS_OUT, digitalRead(LIGHTS_IN));
  digitalWrite(LEFT_OUT, digitalRead(LEFT_IN));
  digitalWrite(RIGHT_OUT, digitalRead(RIGHT_IN));
  //update_brake();
  //update_horn();

  return;
  ////// DBG PRINT?
  for(int ii=0; ii < N_IN; ii++){
    Serial.print(digitalRead(IN_PINS[ii]));
  }
  Serial.println();
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


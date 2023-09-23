//#define ESP8266
#include <Veloce.h>

bool last_light_sw_state;
bool last_brake_sw_state;

bool last_brake_state;
void setup() {
  for(int ii=0; ii < N_IN; ii++){
    pinMode(IN_PINS[ii], INPUT_PULLUP);
  }
  for(int ii = 0; ii < N_OUT; ii++){
    pinMode(OUT_PINS[ii], OUTPUT);
    digitalWrite(OUT_PINS[ii], LOW);
  }

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

bool lights_state;
uint32_t lights_debounce = 0;
void update_lights(){
  const int flash_delay_ms = 200;
  bool lights = !digitalRead(LIGHTS_IN);
  if(lights){
    if(millis() - lights_debounce > 200){
      lights_state = true;
      //digitalWrite(BRAKE_OUT, millis() % (flash_delay_ms * 2) > flash_delay_ms);
    }
    else{
      lights_state = false;
    }
  }
  else{
    // reset deboucce timer
    lights_debounce = millis();
    lights_state = false;
  }
  digitalWrite(LIGHTS_OUT, lights_state);
}

void loop(){
  update_lights();
  digitalWrite(LEFT_OUT, !digitalRead(LEFT_IN));
  digitalWrite(RIGHT_OUT, !digitalRead(RIGHT_IN));
  update_brake();
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
  if(brake_state){
    digitalWrite(PULSE_BRAKE_OUT, HIGH);
    digitalWrite(BRAKE_OUT, HIGH);
    if(brake_state && !last_brake_state){
      for(int i=0; i<2 && !digitalRead(BRAKE_IN); i++){
	digitalWrite(PULSE_BRAKE_OUT, HIGH);
	delay(50);
	digitalWrite(PULSE_BRAKE_OUT, LOW);
	delay(50);
      }
    }
  }
  else{
    digitalWrite(BRAKE_OUT, LOW);
    digitalWrite(PULSE_BRAKE_OUT, LOW);
    if(lights_state){
      digitalWrite(PULSE_BRAKE_OUT, millis() % 5 == 0);
    }
    else{
      digitalWrite(PULSE_BRAKE_OUT, LOW);
    }
  }
  last_brake_state = brake_state;
}

void update_brake_old(){
  bool brake_state = !digitalRead(BRAKE_IN);
  digitalWrite(BRAKE_OUT, brake_state);
  if(brake_state && !last_brake_state){
    for(int i=0; i<2 && !digitalRead(BRAKE_IN); i++){
      digitalWrite(PULSE_BRAKE_OUT, HIGH);
      delay(50);
      digitalWrite(PULSE_BRAKE_OUT, LOW);
      delay(50);
    }
  }
  last_brake_state = brake_state;
  if(last_brake_state){
    digitalWrite(PULSE_BRAKE_OUT, HIGH);
  }

  if(lights_state && !last_brake_state){
    digitalWrite(PULSE_BRAKE_OUT, millis() % 2 == 0);
  }
}


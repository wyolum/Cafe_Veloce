#include <Veloce.h>

const int SWITCH_PWR = IN_7;


bool last_light_sw_state;

void setup() {
  for(int ii=0; ii< N_IN; ii++){
    pinMode(IN_PINS[ii], INPUT);
  }
  for(int ii=0; ii< N_OUT; ii++){
    pinMode(OUT_PINS[ii], OUTPUT);
  }
  
  pinMode(SWITCH_PWR, OUTPUT);
  digitalWrite(SWITCH_PWR, HIGH);
  
  pinMode(LIGHTS_IN, INPUT_PULLUP);

  Serial.begin(115200);
  
  last_light_sw_state = digitalRead(LIGHTS_IN);
  next_light_state();
}

int lights_state = 3;
void next_light_state(){
  digitalWrite(LIGHTS_OUT, LOW);
  lights_state++;
  lights_state %= 4;
  Serial.print("Lights State: ");
  Serial.println(lights_state);
  if(lights_state != 3){
    delay(50);
    digitalWrite(LIGHTS_OUT, HIGH);
  }
}



uint32_t last_light_time = 0;
void loop(){
  bool light_sw_state = digitalRead(LIGHTS_IN);
  Serial.println(light_sw_state);
  
  if(light_sw_state != last_light_sw_state){
    if(millis() - last_light_time > 100){
      next_light_state();
    }
    last_light_sw_state = light_sw_state;
  }
}

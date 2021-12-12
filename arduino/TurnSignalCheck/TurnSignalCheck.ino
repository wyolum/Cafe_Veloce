#include <Veloce.h>

void setup() {
  for(int ii=0; ii< N_IN; ii++){
    pinMode(IN_PINS[ii], INPUT);
  }
  for(int ii=0; ii< N_OUT; ii++){
    pinMode(OUT_PINS[ii], OUTPUT);
  }
  
  pinMode(RIGHT_IN, INPUT_PULLDOWN);
  pinMode(LEFT_IN, INPUT_PULLDOWN);
  Serial.begin(115200);

  digitalWrite(OUT_1, HIGH); // common signal power
  while(1){
    digitalWrite(LEFT_OUT, HIGH);
    digitalWrite(13, HIGH);
    digitalWrite(RIGHT_OUT, LOW);
    delay(2000);
    digitalWrite(LEFT_OUT, LOW);
    digitalWrite(13, LOW);
    digitalWrite(RIGHT_OUT, LOW);

    digitalWrite(RIGHT_OUT, HIGH);
    digitalWrite(13, HIGH);
    digitalWrite(LEFT_OUT, LOW);
    delay(2000);
    digitalWrite(RIGHT_OUT, LOW);
    digitalWrite(13, LOW);
    digitalWrite(LEFT_OUT, LOW);

    digitalWrite(LIGHTS_OUT, HIGH);
    delay(1000); 
    digitalWrite(LIGHTS_OUT, LOW);
  }
}

void loop(){
}

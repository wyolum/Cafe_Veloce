/*
    Based on Neil Kolban example for IDF: https://github.com/nkolban/esp32-snippets/blob/master/cpp_utils/tests/BLE%20Tests/SampleWrite.cpp
    Ported to Arduino ESP32 by Evandro Copercini
*/

#include <BLEDevice.h>
#include <BLEUtils.h>
#include <BLEServer.h>
#include <Veloce.h>

bool status[N_OUT];
/*
message:
8 bytes
0 lights
1 left
2 right
3 brake
4 horn
5 reserved
6 reserved
7 reserved
*/

// See the following for generating UUIDs:
// https://www.uuidgenerator.net/

#define SERVICE_UUID        "77dcdaf7-4003-4497-b52d-7c7f6b82d2a5"
#define CHARACTERISTIC_UUID "9ce9bc50-bed6-43a7-a0de-468eed0d2776"
int LightState = 0;
#define LIGHTPIN OUT_1

class MyCallbacks: public BLECharacteristicCallbacks {
    void onWrite(BLECharacteristic *pCharacteristic) {
      std::string value = pCharacteristic->getValue();

      if (value.length() > 0) {
        Serial.print("New value: ");
        for (int i = 0; i < value.length(); i++){
          Serial.print(value[i]);
	}
        Serial.println();
        if (value[0] == '1'){
          LightState = 1;
	}
        else if(value[0] == '0'){
          LightState = 0;
	}
        digitalWrite(LIGHTPIN,LightState);
	status[0] = LightState;
      }
    }
    void onRead(BLECharacteristic* pCharacteristic){
      Serial.println("onRead()");
      char out[N_OUT + 1] = "00000000";
      for(int i = 0; i < N_OUT; i++){
	if(status[i]){
	  out[i] = '1';
	}
	else{
	  out[i] = '0';
	}
      }
      pCharacteristic->setValue(out);
    }
    
};

void setup() {
  Serial.begin(115200);
  Serial.println("Cafe Veloce");
  Serial.print("       SERVICE_UUID:");
  Serial.println(SERVICE_UUID);
  Serial.print("CHARACTERISTIC_UUID:");
  Serial.println(CHARACTERISTIC_UUID);

  for (int i = 0; i < N_OUT; i++){
    pinMode(OUT_PINS[i],OUTPUT);
    digitalWrite(OUT_PINS[i], LOW);
    status[i] = false;
  }

  BLEDevice::init("Cafe Veloce");
  BLEServer *pServer = BLEDevice::createServer();

  BLEService *pService = pServer->createService(SERVICE_UUID);

  BLECharacteristic *pCharacteristic = pService->createCharacteristic(
                                         CHARACTERISTIC_UUID,
                                         BLECharacteristic::PROPERTY_READ |
                                         BLECharacteristic::PROPERTY_WRITE
                                       );

  pCharacteristic->setCallbacks(new MyCallbacks());

  pCharacteristic->setValue("0");
  pService->start();

  BLEAdvertising *pAdvertising = pServer->getAdvertising();
  pAdvertising->start();
}

void loop() {
  // put your main code here, to run repeatedly:
  delay(2000);
}

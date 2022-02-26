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

#define             SERVICE_UUID "77dcdaf7-4003-4497-b52d-7c7f6b82d2a5"
#define PULL_CHARACTERISTIC_UUID "9ce9bc50-bed6-43a7-a0de-468eed0d2776"
#define PUSH_CHARACTERISTIC_UUID "133beef8-d5c6-43ed-8aa6-e4366d1bb523"
bool LightState = false;
#define LIGHTPIN OUT_1

BLECharacteristic VeloceLightsPushCharacteristic
(
 PUSH_CHARACTERISTIC_UUID,
 BLECharacteristic::PROPERTY_NOTIFY |
 BLECharacteristic::PROPERTY_READ |
 BLECharacteristic::PROPERTY_WRITE
 );

BLEDescriptor VeloceLightsPushDescriptor(PUSH_CHARACTERISTIC_UUID);

bool deviceConnected = false;

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
          LightState = true;
	}
        else if(value[0] == '0'){
          LightState = false;
	}
        digitalWrite(LIGHTPIN,LightState);
      }
    }
    
    void onRead(BLECharacteristic* pCharacteristic){
      Serial.println("onRead()");
      char msg[N_OUT + 1] = "00000000";
      for(int i = 0; i < N_OUT; i++){
	if(status[i]){
	  msg[i] = '1';
	}
	else{
	  msg[i] = '0';
	}
      }
      pCharacteristic->setValue(msg);
    }
};
class MyServerCallbacks: public BLEServerCallbacks {
    void onConnect(BLEServer* pServer) {
      Serial.println("connected");
      deviceConnected = true;
    };

    void onDisconnect(BLEServer* pServer) {
      Serial.println("disconnected");
      deviceConnected = false;
    }
};

void setup() {
  Serial.begin(115200);
  Serial.println("Cafe Veloce");
  Serial.print("       SERVICE_UUID:");
  Serial.println(SERVICE_UUID);
  Serial.print("PULL_CHARACTERISTIC_UUID:");
  Serial.println(PULL_CHARACTERISTIC_UUID);
  Serial.print("PUSH_CHARACTERISTIC_UUID:");
  Serial.println(PUSH_CHARACTERISTIC_UUID);

  for (int i = 0; i < N_OUT; i++){
    pinMode(OUT_PINS[i],OUTPUT);
    pinMode(IN_PINS[i],INPUT_PULLUP);

    status[i] = digitalRead(IN_PINS[i]);
    digitalWrite(OUT_PINS[i], !status[i]);
  }

  for (int i = 0; i < N_IN; i++){
  }

  BLEDevice::init("Cafe Veloce");
  BLEServer *pServer = BLEDevice::createServer();

  BLEService *pService = pServer->createService(SERVICE_UUID);

  BLECharacteristic *pCharacteristic = pService->createCharacteristic(
                                         PULL_CHARACTERISTIC_UUID,
                                         BLECharacteristic::PROPERTY_READ |
                                         BLECharacteristic::PROPERTY_WRITE
                                       );
  pService->addCharacteristic(&VeloceLightsPushCharacteristic);
  VeloceLightsPushDescriptor.setValue("Veloce Light Status");
  VeloceLightsPushCharacteristic.addDescriptor(&VeloceLightsPushDescriptor);

  pCharacteristic->setCallbacks(new MyCallbacks());
  pServer->setCallbacks(new MyServerCallbacks());
  pCharacteristic->setValue("0");
  pService->start();

  BLEAdvertising *pAdvertising = pServer->getAdvertising();
  pAdvertising->start();
}

void loop() {
  bool status_changed = false;
  
  for(int i=0; i < N_OUT; i++){
    bool val = digitalRead(IN_PINS[i]);
    if(status[i] != val){
      status[i] = val;
      status_changed = true;
      digitalWrite(OUT_PINS[i], val);
    }
  }
  if(status_changed){
    update_ble_client();
  }
}

void update_ble_client(){
  char *msg = "00000000";
  for(int i = 0; i < N_OUT; i++){
    if(status[i]){
      msg[i] = '1';
    }
  }
  if(deviceConnected){
    VeloceLightsPushCharacteristic.setValue(msg);
    VeloceLightsPushCharacteristic.notify();
  }
  Serial.println(msg);
}

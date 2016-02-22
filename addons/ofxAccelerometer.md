## Addon to get accelerometer data from mobile devices

This addon allows you access to the acceleromete on devices that support one. At the moment both Android and iOS are supported. 

To get values from the accelerometer in polling mode, request them:
```cpp

void testApp::setup(){
	ofxAccelerometer.setup(); // this initializes the accelerometer
}

void testApp::update()
{
  ofVec3f accel = ofxAccelerometer.getForce();
  ofVec2f orientation = ofxAccelerometer.getOrientation();
}
```

To register an event handler for the accelerometer values changing, do something like the following:

```cpp
ofAddListener(ofxAccelerometer.accelChanged,this,&ofApp::accelerationChanged);
```

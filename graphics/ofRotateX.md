ofRotateX produces a rotation of angle "degrees" around the X-axis of our coordinate system represented by the vector (1,0,0)."degrees"specifies the angle of rotation, in degrees.
```cpp
void ofApp::draw(){
    ofRotateX(45); //rotates the coordinate system 45 degrees around the x-axis
    ofDrawRectangle(20,20,100,100);
}
```

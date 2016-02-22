ofRotateZ produces a rotation of angle "degrees" around the Z-axis of our coordinate system represented by the vector (0,0,1).
"degrees"specifies the angle of rotation, in degrees.
```cpp
void ofApp::draw(){
    ofRotateZ(45); //rotates the coordinate system 45 degrees around the x-axis
    ofDrawRectangle(20,20,100,100);
}
```

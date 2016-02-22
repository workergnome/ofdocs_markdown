ofRotateY produces a rotation of angle "degrees" around the Y-axis of our coordinate system represented by the vector (0,1,0).
"degrees"specifies the angle of rotation, in degrees.
```cpp
void ofApp::draw(){
    ofRotateY(45); //rotates the coordinate system 45 degrees around the x-axis
    ofDrawRectangle(20,20,100,100);
}
```

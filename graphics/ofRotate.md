ofRotate produces a rotation of angle "degrees" around the vector (vecX,vecY,vecZ).
"degrees"specifies the angle of rotation, in degrees. vecX, vecY, vecZ specify the x, y, and z coordinates of a vector, respectively.
All graphics drawn after ofRotate is called are rotated. Use ofPushMatrix and ofPopMatrix to save and restore the unrotated coordinate system.
```cpp
void ofApp::draw(){
    ofRotate(50, 1, 0.5, 0); //rotates the coordinate system 50 degrees along the x-axis and 25 degrees on the y-axis
    ofDrawRectangle(20,20,100,100);
}
```

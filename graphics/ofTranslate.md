ofTranslate produces a translation by (x,y,z) vector of our coordinate system. The call of ofTranslate modifies graphics positions.
Use ofPushMatrix and ofPopMatrix to save and restore the untranslated coordinate system.
```cpp
void ofApp::draw(){
    ofTranslate(100, 100, 0);   // move the coordinate system to position x 100 and y 100 and make that zero.
    ofDrawRectangle(0, 0, 10, 10);       // draw a rect at that position
}
```

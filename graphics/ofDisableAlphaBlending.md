Turns off alpha blending.
```cpp
void ofApp::draw(){
    ofEnableAlphaBlending();    // turn on alpha blending
    ofSetColor(255,0,0,127);    // red, 50% transparent
    ofDrawRectangle(20,20,100,100);      // draws the rect with alpha
    ofDisableAlphaBlending();   // turn off alpha
    ofDrawRectangle(120,20,100,100); // draws the rect without alpha
}
```

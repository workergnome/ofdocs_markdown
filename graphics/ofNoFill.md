Draw shapes as outlines with the current draw color.
```cpp
void ofApp::draw(){
    ofSetColor(0,0,255);
    ofNoFill();
    ofDrawRectangle(10,10,100,100);  //draws only the outline in blue
}
```

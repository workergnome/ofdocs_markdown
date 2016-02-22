Tells you if rect drawing mode is set to drawn from the center or drawn from the top left corner, as set with the ofSetRectMode() function.
```cpp
void ofApp::draw(){
    if(ofGetRectMode() == OF_RECTMODE_CORNER){
        ofDrawRectangle(10,10,80,80);
    }
    else {
        ofDrawRectangle(50,50,80,80);
    }
}
```

Sets the background clearing function to be auto (default) or not. If non-auto, then background clearing will not occur per frame (at the start of draw) but rather, whenever ofBackground is called.
```cpp
void ofApp::setup(){
    ofSetBackgroundAuto(false); //disable automatic background redraw
}
void ofApp::draw(){
    if(ofGetFrameNum() % 10 == 0){
        // draws a black background every 10 frames
        ofSetBackground(0,0,0);
    }
}
```

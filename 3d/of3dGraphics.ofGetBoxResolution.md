Gets the resolution of the ofDrawBox object you created. Resolution is given for width, height and depth. Only 0 and 1 values make sense signifying ‘see/not see’ faces.

```cpp
void ofApp::draw(){

    //  Draw a red cuboid
    ofSetColor(255, 0, 0);
    ofFill();
    ofDrawBox(400, 350, 10, 200, 100, 200);

    string boxres = ofToString(ofGetBoxResolution());
    ofDrawBitmapString("Box Resolution: " + boxres, 30, 30);

}

```

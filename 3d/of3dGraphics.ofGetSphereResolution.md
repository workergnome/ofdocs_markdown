Allows you to fetch the resolution with which a UV sphere is drawn. Default is 20.

```cpp
void ofApp::draw(){

    //  Draw a green UV sphere (no fill)
    ofSetColor(0, 255, 0);
    ofNoFill();
    ofDrawSphere(ofGetWidth() * .5, ofGetHeight() * .5,  200);

    string sphereres = ofToString(ofGetSphereResolution());
    ofDrawBitmapString("Sphere Resolution: " + sphereres, 30, 30);

}

```

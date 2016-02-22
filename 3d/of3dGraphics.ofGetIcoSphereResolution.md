Allows you to fetch the resolution with which IcoSphere is drawn (i.e. number of faces). Default value is 2.

```cpp
void ofApp::draw(){

    //  Draw a green icosphere
    ofSetColor(0, 255, 0);
    ofFill();
    ofDrawIcoSphere(ofPoint(ofGetWidth() * .5, ofGetHeight() * .5),  200);

    string icores = ofToString(ofGetIcoSphereResolution());
    ofDrawBitmapString("Icosphere Resolution: " + icores, 30, 30);

    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation

}

```

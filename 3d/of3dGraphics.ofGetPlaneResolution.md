Allows you to fetch the resolution with which Plane is drawn. Returns columns across x axis and rows across y axis to draw the plane. Default is (6,4)

```cpp
void ofApp::draw(){

    //  Draw a green plane (no fill)
    ofSetColor(0, 255, 0);
    ofNoFill();
    ofDrawPlane(ofGetWidth() * .5, ofGetHeight() * .5,  400, 200);

    string planeres = ofToString(ofGetPlaneResolution());
    ofDrawBitmapString("Plane Resolution: " + planeres, 30, 30);

}

```

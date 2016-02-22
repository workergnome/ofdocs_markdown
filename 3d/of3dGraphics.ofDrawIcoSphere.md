Draws an icosphere (i.e. a sphere based on faces as opposed to UV map) with specified radius starting from specified position (x,y and z coordinates). The icosphere is drawn with the current color, e.g. set with ofSetColor(). The icosphere is drawn filled by default; change this with ofFill();

```cpp
void ofApp::draw(){

    //  Draw a blue icosphere at the center of the canvas.
    ofSetColor(0, 0, 255);
    ofFill();
    ofDrawIcoSphere(ofGetWidth() * .5, ofGetHeight()* .5, 0, 100);

    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation

}

```

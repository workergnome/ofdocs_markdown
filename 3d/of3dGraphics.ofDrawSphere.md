Draws a UV sphere with specified radius starting from the specified position (x and y coordinates).The sphere is drawn with the current color, e.g. set with ofSetColor(). The sphere is drawn filled by default; change this with ofFill();

```cpp
void ofApp::draw(){

    //  Draw a green sphere at the center of the canvas.
    ofSetColor(0, 255, 0);
    ofFill();
    ofDrawSphere(ofGetWidth() * .5, ofGetHeight()* .5, 100);

    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation

}

```

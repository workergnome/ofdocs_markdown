Draws a cone with specified radius and height starting from the specified position (x, y and z coordinates). The cone is drawn with the current color, e.g. set with ofSetColor(). The cone is drawn filled by default; change this with ofFill();

```cpp
void ofApp::draw(){

    //  Draw a red cone at the center of the canvas.
    ofSetColor(255, 0, 0);
    ofFill();
    ofDrawCone(ofGetWidth() * .5, ofGetHeight()* .5, 0, 200, 300);

    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation

}

```

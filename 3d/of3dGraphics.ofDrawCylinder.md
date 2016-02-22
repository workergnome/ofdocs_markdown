Draws a cylinder with specified radius and height starting from the specified position (x and y coordinates). The cylinder is drawn with the current color, e.g. set with ofSetColor(). The cylinder is drawn filled by default; change this with ofFill();

```cpp
void ofApp::draw(){

    //  Draw a red cylinder at the center of the canvas.
    ofSetColor(255, 0, 0);
    ofFill();
    ofDrawCylinder(ofGetWidth() * .5, ofGetHeight()* .5, 50, 200);

    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation

}

```

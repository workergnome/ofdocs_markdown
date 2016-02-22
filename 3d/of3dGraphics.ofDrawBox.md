Draws a rectangular box with the specified dimensions, starting from the specified coordinates. 
A box is a rectangular solid: an extruded rectangle. It is drawn starting from a 3D reference coordinate. It has a width (in x), a height (in y), and a depth (in z). The box is drawn with the current color, e.g. set with ofSetColor(). The box is drawn filled by default; change this with ofFill();

```cpp
void ofApp::draw(){

    //  Draw a red cuboid slightly off the center of the canvas so to see the 3d shape.

    ofSetColor(255, 0, 0);
    ofFill();
    ofDrawBox(ofGetWidth() * .5, ofGetHeight() * .7, 0, 200, 100, 200);

    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation

}

```

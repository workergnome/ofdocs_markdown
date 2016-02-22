Draws a plane with specified width and height starting from the specified position (x and y coordinates). The plane is drawn with the current color, e.g. set with ofSetColor(). The plane is drawn filled by default; change this with ofFill(); 

```cpp
void ofApp::draw(){

    //  Draw a green plane at the center of the canvas.
    ofSetColor(0, 255, 0);
    ofFill();
    ofDrawPlane(ofGetWidth() * .5, ofGetHeight()* .5, 100, 200);

}

```

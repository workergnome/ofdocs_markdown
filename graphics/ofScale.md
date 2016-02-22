ofScale produces a nonuniform scaling along the x, y, and z axes. The three parameters xAmnt, yAmnt and zAmnt indicate the desired scale factor along each of the three axes.
e.g:
```cpp
void ofApp::draw(){
    ofScale(0.5,1,1);       // scale 0.5 in height
    ofDrawRectangle(10,10,40,40);    // draw a square rectangle
}
```
Rectangle width will be now 20px heigh!

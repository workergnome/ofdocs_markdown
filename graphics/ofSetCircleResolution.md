Sets the resolution for the ofDrawCircle command. By default, the circle is 22 points, but if you need to draw larger circles, you can adjust the resolution using this command. all circles are cached in opengl using a display list for optimization purposes.
```cpp
void ofApp::draw(){
    ofSetCircleResolution(10);
    ofDrawCircle(150,150,100);          //draws a rough circle
    ofSetCircleResolution(100);
    ofDrawCircle(450,150,100);          //draws a fine circle
}
```

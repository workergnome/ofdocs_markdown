ofPushMatrix saves the current coordinate system allowing users to develop specific movements in some graphic objects. ofPopMatrix needs to be called after.
In the following example we only rotate the square.
```cpp
void ofApp::draw(){
    ofDrawCircle(10,10,5); // draw a circle
    ofPushMatrix();        // push the current coordinate position
    ofRotateX(90);         // change the coordinate system
    ofDrawRectangle(10,10,40,40);    // draw a rect
    ofPopMatrix()          // recall the pushed coordinate position
}
```

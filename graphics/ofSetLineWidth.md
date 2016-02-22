ofSetLineWidth sets the width of the ofDrawLines called after.
```cpp
void ofApp::draw(){
    ofSetLineWidth(1);          // set line width to 1
    ofDrawLine(10,10,100,100);  // draw thin line
    ofSetLineWidth(10);         // set line width to 10
    ofDrawLine(10,100,100,10);  // draw fat line
}
```

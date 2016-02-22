ofPopStyle() restores the prior style settings. It needs to be called after ofPushStyle.
```cpp
void ofApp::draw(){
    ofDrawCircle(10,10,5);
    ofPushStyle();           // push the current style for use later
    ofFill();
    ofsetColor(255,0,0);
    ofDrawEllipse(30,10,40,40);
    ofPopStyle();   // recall the pushed style
}
```

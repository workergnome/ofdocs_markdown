ofPushStyle saves the current style settings for the ofGraphics after its call. Usage of ofPushStyle and ofPopStyle allow users to have more control of certain graphics elements. All the style that applies to certain elements is controled using ofStyle class. See ofStyle type.
In the following example the properties of being red and filled only applies to the ellipse:
```cpp
void ofApp::draw(){
    ofDrawCircle(10,10,5);
    ofPushStyle();  // push the current style for use later
    ofFill();
    ofSetColor(255,0,0);
    ofDrawEllipse(30,10,40,40);
    ofPopStyle();   // recall the pushed style
}
```

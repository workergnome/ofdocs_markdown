Turns off depth testing so rendering happens in draw order rather than by z-depth. Turning off depth test is useful for combining 3d scenes with 2d overlays such as a control panel.
```cpp
void ofApp::draw(){

    ofPushMatrix();

        ofTranslate( ofGetWidth()/2, ofGetHeight()/2, 0 );

        ofEnableDepthTest();
        ofSetColor(255);
        ofDrawSphere(0,0,100,60);
        ofSetColor(255,0,255);
        ofDrawSphere(50,0,50,100);
        ofDisableDepthTest();

        ofSetColor(0);
        ofDrawRectangle(75,75,120,30);
        ofSetColor(255);
        ofDrawBitmapString("Some bubbles.",85,90);

    ofPopMatrix();
}
```

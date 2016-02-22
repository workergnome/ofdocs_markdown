Turns on depth testing so rendering happens according to z-depth rather than draw order.
```cpp
void ofApp::draw(){

    ofPushMatrix();

        ofTranslate( ofGetWidth()/2, ofGetHeight()/2, 0 );

        ofEnableDepthTest(); // enable depth test
        ofSetColor(255);
        ofDrawSphere(0,0,100,60); // draw 3d sphere
        ofSetColor(255,0,255);
        ofDrawSphere(50,0,50,100);
        ofDisableDepthTest(); // disable depth test

        // draw 2d overlay
        ofSetColor(0);
        ofDrawRectangle(75,75,120,30);
        ofSetColor(255);
        ofDrawBitmapString("Some bubbles.",85,90);

    ofPopMatrix();
}
```

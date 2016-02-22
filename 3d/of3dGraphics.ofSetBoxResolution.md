Sets the resolution of the box. Only values of 0 and 1 seem legitimate and produce visible effect only when ‘ofFill’ is used.

```{.h}

int res;

```

```cpp

void ofApp::setup(){
    res = 1;
}

//--------------------------------------------------------------
void ofApp::draw(){
    
	ofSetColor(0, 255, 0);
    ofFill();
    ofSetBoxResolution(res);
    ofDrawBox(ofGetWidth() * .5, ofGetHeight() * .5, 0, 100, 200, 300);
    
    string boxres = ofToString(ofGetBoxResolution());
    ofDrawBitmapString("Box Resolution: " + boxres, 30, 30);
                       
    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation
    

}

//--------------------------------------------------------------
void ofApp::keyPressed(int key){
    switch (key) {
        case 'q':
            res--;
            break;
        case 'w':
            res++;
            break;
 
        default:
            break;
    }

}

```

Sets the resolution with which IcoSphere is drawn (i.e. number of faces). Default value is 2.

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
    ofSetIcoSphereResolution(res);
    ofDrawIcoSphere(ofGetWidth() * .5, ofGetHeight() * .5, 100);
    
    string icores = ofToString(ofGetIcoSphereResolution());
    ofDrawBitmapString("IcoSphere Resolution: " + icores, 30, 30);
                       
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

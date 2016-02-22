Sets the resolution with which Plane is drawn. Sets columns across x axis and rows across y axis to draw the plane. Default is (6,4)

```{.h}

int resx, resy;

```

```cpp

void ofApp::setup(){
    resx = 3;
	resy = 2;
}

//--------------------------------------------------------------
void ofApp::draw(){
    
	ofSetColor(0, 255, 0);
    ofFill();
    ofSetPlaneResolution(resx, resy);
    ofDrawPlane(ofGetWidth() * .5, ofGetHeight() * .5, 100, 200);
    
    string planeres = ofToString(ofGetPlaneResolution());
    ofDrawBitmapString("Plane Resolution: " + planeres, 30, 30);
                       
    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation
    

}

//--------------------------------------------------------------
void ofApp::keyPressed(int key){
    switch (key) {
        case 'q':
            resx--;
            break;
        case 'w':
            resx++;
            break;
        case 'a':
            resy--;
            break;
        case 's':
            resy++;
            break;
            
        default:
            break;
    }

}

```

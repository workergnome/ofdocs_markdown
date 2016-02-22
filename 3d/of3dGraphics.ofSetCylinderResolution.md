Set the resolution of a polygonized cylinder. Allows you to set the polygonization resolution of any cylinder you subsequently draw with ofDrawCone(). 

radiusSegments: The number of facets (subdivisions) around the cylinder’s circular footprint. 

heightSegments: The number of subdivisions from the cylinder’s top to bottom. 

capSegments The number of annular (ring-shaped) subdivisions of the cylinder’s endcap

```{.h}

int resr, resh, resc;

```

```cpp

void ofApp::setup(){
    resr = 8;
    resh = 2;
    resc = 1;
}

//--------------------------------------------------------------
void ofApp::update(){
    
}

//--------------------------------------------------------------
void ofApp::draw(){

    ofSetColor(0, 255, 0);
    ofFill();  
    ofSetCylinderResolution(resr, resh, resc);
    ofDrawCylinder(ofGetWidth() * .5, ofGetHeight() * .5, 0, 100, 300);
    
    string coneres = ofToString(ofGetCylinderResolution());
    ofDrawBitmapString("Cone Resolution: " + coneres, 30, 30);
    
    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation
    
    
}

//--------------------------------------------------------------
void ofApp::keyPressed(int key){
    switch (key) {
        case 'q':
            resr--;
            break;
        case 'w':
            resr++;
            break;
        case 'a':
            resh--;
            break;
        case 's':
            resh++;
            break;
        case 'z':
            resc--;
            break;
        case 'x':
            resc++;
            break;
            
        default:
            break;
    }
    
}

```

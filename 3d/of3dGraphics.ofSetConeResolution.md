Set the resolution of a polygonized cone. Allows you to set the polygonization resolution of any cones you subsequently draw with ofDrawCone(). 

radiusSegments: The number of facets (subdivisions) around the cone's circular footprint. 

heightSegments: The number of subdivisions from the cone's top to bottom. 

capSegments The number of annular (ring-shaped) subdivisions of the cone's endcap 

```{.h}

int resr, resh, resc;

```

```cpp

void ofApp::setup(){
    resr = 9;
    resh = 3;
    resc = 2;
}

//--------------------------------------------------------------
void ofApp::update(){

}

//--------------------------------------------------------------
void ofApp::draw(){
    ofSetColor(0, 255, 0);
    ofFill();
    ofSetConeResolution(resr, resh, resc);
    ofDrawCone(ofGetWidth() * .5, ofGetHeight() * .5, 0, 100, 200);
    
    string coneres = ofToString(ofGetConeResolution());
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

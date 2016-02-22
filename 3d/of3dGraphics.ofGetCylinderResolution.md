Allows you to fetch the resolution with which cylinder are polygonized.
Returns an ofVec3f containing the following data: 
Encoded as "x": radiusSegments, the number of facets (subdivisions) around the cylinder’s circular footprint. 
Encoded as "y": heightSegments, the number of subdivisions from the cylinder’s top to bottom. 
Encoded as "z": capSegments, the number of annular (ring-shaped) subdivisions of the cylinder’s endcap. 

In short, it returns an ofVec3f containing (radiusSegments, heightSegments, capSegments) for cone polygonization. 

```cpp
void ofApp::draw(){

    //  Draw a green cylinder
    ofSetColor(0, 255, 0);
    ofFill();
    ofDrawCylinder(ofPoint(ofGetWidth() * .5, ofGetHeight()* .5), 50, 200);

    string cylres = ofToString(ofGetCylinderResolution());
    ofDrawBitmapString("Cylinder Resolution: " + cylres, 30, 30);

    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation

}

```

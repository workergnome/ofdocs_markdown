Allows you to fetch the resolution with which cones are polygonized.
Returns an ofVec3f containing the following data: 
Encoded as "x": radiusSegments, the number of facets (subdivisions) around the cone's circular footprint. 
Encoded as "y": heightSegments, the number of subdivisions from the cone's top to bottom. 
Encoded as "z": capSegments, the number of annular (ring-shaped) subdivisions of the cone's endcap. 

In short, it returns an ofVec3f containing (radiusSegments, heightSegments, capSegments) for cone polygonization. 
 
```cpp
void ofApp::draw(){
    //  Draw a red cone
    ofSetColor(255, 0, 0);
    ofFill();
    ofDrawCone(ofGetWidth() * .5, ofGetHeight()* .5, 200, 300);

    string coneres = ofToString(ofGetConeResolution());
    ofDrawBitmapString("Cone Resolution: " + coneres, 30, 30);

    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation

}

```

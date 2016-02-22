This returns a vector of ofTTFCharacters (which is actually an ofPath) for a given string.  This means you can get access to the point data / outlines of the letter forms.

```cpp

//--------------------------------------------------------------
void testApp::setup(){

    ofBackground(0);
    font.loadFont("vag.ttf", 100, false, false, true);

}

//--------------------------------------------------------------
void testApp::update(){

}

//--------------------------------------------------------------
void testApp::draw(){

    // get the string as paths
    vector < ofTTFCharacter > paths = font.getStringAsPoints("hello!");

    ofPushMatrix();
    ofTranslate(ofGetWidth()/2, ofGetHeight()/2);

    for (int i = 0; i < paths.size(); i++){

        // for every character break it out to polylines

        vector <ofPolyline> polylines = paths[i].getOutline();

        // for every polyline, draw every fifth point

        for (int j = 0; j < polylines.size(); j++){
            for (int k = 0; k < polylines[j].size(); k+=5){         // draw every "fifth" point
                ofDrawCircle( polylines[j][k], 3);
            }
        }
    }

    ofPopMatrix();
}
```

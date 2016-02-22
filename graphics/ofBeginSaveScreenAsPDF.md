Begins render to pdf. OpenFrameworks allows rendering of 2D graphics to pdf via the ofCairoRenderer. ofBeginSaveScreenAsPDF is called before drawing. When done drawing call ofEndSaveScreenAsPDF() to output the file.
```cpp
void ofApp::setup(){
    if( oneShot ){
        ofBeginSaveScreenAsPDF("screenshot-"+ofGetTimestampString()+".pdf", false);
    }

    ofSetColor(54,54,54);
    ofDrawEllipse(100,100,200,200);
    if( oneShot ){
        ofEndSaveScreenAsPDF();
        oneShot = false;
    }
}
```

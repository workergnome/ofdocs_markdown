Terminates draw to pdf through ofCairoRenderer and outputs the pdf file.
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

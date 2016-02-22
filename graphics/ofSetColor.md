Sets the draw color with r,g,b, 0-255. For example, red (0xff0000) would be: ofSetColor(255,0,0). This affects not only the color of shapes drawn with ofDrawRectangle(...), ofDrawCircle(...), etc, but also the tint of images and textures.
```cpp
void ofApp::draw(){
    ofSetColor(0,0,255);    //set te color to blue
    ofDrawRectangle(10,10,100,100);
}
```

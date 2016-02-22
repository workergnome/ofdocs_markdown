This binds the ofTexture instance that the ofImage contains so that it can be used for advanced drawing
```cpp
void ofApp::setup() {
    img.allocate(256, 256, OF_IMAGE_COLOR);
    int i = 0;
    while ( i < img.getPixels().size() ) {
        img.getPixels()[i] = abs(sin( float(i) / 18.f )) * 255.f;
        i++;
    }
    img.reloadTexture();

    mesh.setMode(OF_PRIMITIVE_TRIANGLE_STRIP);

    mesh.addVertex(ofVec2f(10, 10));
    mesh.addVertex(ofVec2f(410, 10));
    mesh.addVertex(ofVec2f(410, 410));
    mesh.addVertex(ofVec2f(10, 410));
    mesh.addVertex(ofVec2f(10, 10));

    mesh.addTexCoord(ofVec2f(0, 0));
    mesh.addTexCoord(ofVec2f(256, 0));
    mesh.addTexCoord(ofVec2f(256, 256));
    mesh.addTexCoord(ofVec2f(0, 256));
    mesh.addTexCoord(ofVec2f(0, 0));
}
void ofApp::draw(){

    ofBackground(255, 255, 255); // background white

    img.bind();
    mesh.draw();
    img.unbind();
}
```

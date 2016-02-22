Clears the color and depth bits of current renderer and replaces it with an RGB color.

When drawing to the screen, ofClear(…) will clear the screen entirely.

```cpp
void ofApp::draw() {
    ofClear ( 255, 0, 0 );
    // Clears current screen and replaces it with red.
    // Screen will render as a flat color.
}
```

When using the opengl renderer and drawing into an [FBO](/documentation/gl/ofFbo.html), ofClear(...) will clear that buffer rather than the main screen.

```cpp
void ofApp::draw() {
    ofFbo myFbo;
    myFbo.allocate ( 300, 300 );

    myFbo.begin();
        ofClear ( 255, 0, 0 );
        // Clears FBO buffer and replaces it with red.
        // No effect in current drawing screen.
    myFbo.end();
}
```

ofClear(…) is based on glClear (http://www.opengl.org/sdk/docs/man/xhtml/glClear.xml).

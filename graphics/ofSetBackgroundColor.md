Sets the background color. It takes as input r,g,b (0-255). The background is cleared automatically, just before the draw() command, so if the background color is not changing, you could call this inside of setup() (once, at the start of the application). If the background color is changing, you can call this inside of update().
```cpp
void ofApp::setup(){
    ofSetBackgroundColor(255,0,0);  // Sets the background color to red
}
```

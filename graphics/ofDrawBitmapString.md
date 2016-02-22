Draws a bitmapped string, on screen, at point (x,y). For example, you can write some text on screen like this:
```cpp
void ofApp::draw(){
    ofDrawBitmapString("hi!!", 100,100);
}
```
Your strings can even be multiline:
```cpp
ofDrawBitmapString("a test
of multiline
text", 100,100);
```
you can also using dynamically generated strings. For example, to print the frame rate:
```cpp
string fpsStr = "frame rate: "+ofToString(ofGetFrameRate(), 2);
ofDrawBitmapString(fpsStr, 100,100);
```
Please note, ofDrawBitmapString wraps a glut function that uses glDrawPixels. On some graphics cards, you may discover that glDrawPixels is slow (or even, very slow). If so, you might want to investigate using ofTrueTypeFont with a small typeface, non-anti-aliased, as a suitable alternative.

This function can be called after calling ofImage::update() (or alternatively, ofImage::ofIdleGrabber()) to figure out if a frame is new, ie. if there is a new pixel data.  This is typically because your main frame rate might not be in sync with the video grabber, and you can skip processing on frames where there is no new data.    

```cpp

void testApp::update(){

	grabber.update();  // call this once per update
	if (grabber.isFrameNew()){
		; // do computer vision / process the pixels
	}

}

```

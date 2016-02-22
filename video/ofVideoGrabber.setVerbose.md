Sets the verbosity - this can be useful for debugging the video grabber interface. you can set the verbosity and then try initGrabber();

From 0.06 this method has no effect. Use ofSetLogLevel(OF_LOG_VERBOSE) to enable verbose messages.
```cpp

myGrabber.setVerbose(true);
myGrabber.initGrabber(320,240);
```

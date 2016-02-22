Initializes either the default capture device or the capture device specified by setDeviceID. Attempts to setup capture at the width and height specified. If the capture dimensions are not available it will setup capture for the next closest dimensions available. It is good to check what the actual size is before you start processing the pixels.
```cpp

myGrabber.setVerbose(true);
myGrabber.setDeviceID(1);
myGrabber.initGrabber(320,240);
int grabW = myGrabber.width;
int grabH = myGrabber.height;
printf("asked for 320 by 240 - actual size is %i by %i 
", grabW, grabH);
```

This represents an OpenCV friendly image in grayscale, i.e. without any color data. This is useful because many of the image processing and analysis routines in OpenCV (or OF for that matter) don't require color information. Less information to sort through means faster image analysis and faster applications. You can convert an ofxCvColorImage to an ofxCvGrayscaleImage using the = operator like so:

```cpp
grayscaleImg = colorImg;
```

A common routine that you'll see is something like the following:

```cpp
colorImg.setFromPixels(vidGrabber.getPixels());
grayImage = colorImg; // convert our color image to a grayscale image
```

The ofxCvGrayscaleImage can then be passed to a ofxCvContourFinder instance for contour and blob detection.

```cpp
contourFinder.findContours(grayscaleImage, 5, (340*240)/4, 4, false, true);
```

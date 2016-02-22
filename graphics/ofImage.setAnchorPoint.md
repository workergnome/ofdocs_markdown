Changes the drawing position specified by draw() from the normal top-left corner of the image to a position specified by x and y, measured in pixels. This can be useful for aligning and centering images as well as rotating an image around its center.

Note: see also setAnchorPercent() if you want to specify the anchor as a percentage of the image size.

For example to draw an image so that its center is at 100, 100:
```cpp
myImage.setAnchorPoint(myImage.getWidth()/2, myImage.getHeight()/2);
myImage.draw(100, 100);
```

To rotate an image around its center at 100, 100:
```cpp
ofPushMatrix();
  ofTranslate(100, 100, 0);
  ofRotate(45);
  myImage.setAnchorPoint(myImage.getWidth()/2, myImage.getHeight()/2);
  myImage.draw(0, 0);
ofPopMatrix();
```

To align the right side of an image with the right edge of the window:
```cpp
myImage.setAnchorPoint(myImage.getWidth(), 0.0);
myImage.draw(ofGetWidth(), 0);
```

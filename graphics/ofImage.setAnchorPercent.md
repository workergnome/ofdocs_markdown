Changes the drawing position specified by draw() from the normal top-left corner of the image to a position specified by xPct and yPct in relation to the dimensions of the image. This can be useful for aligning and centering images as well as rotating an image around its center.

Note: range of xPct and yPct is 0.0 to 1.0. For xPct, 1.0 represents the width of the image. For yPct, 1.0 represents the height of the image. These values are not capped.

For example to draw an image so that its center is at 100, 100:
```cpp
myImage.setAnchorPercent(0.5, 0.5);
myImage.draw(100, 100);
```

To rotate an image around its center at 100, 100:
```cpp
ofPushMatrix();
  ofTranslate(100, 100, 0);
  ofRotate(45);
  myImage.setAnchorPercent(0.5, 0.5);
  myImage.draw(0, 0);
ofPopMatrix();
```

To align the right side of an image with the right edge of the window:
```cpp
myImage.setAnchorPercent(1.0, 0.0);
myImage.draw(ofGetWidth(), 0);
```

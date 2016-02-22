This warps the image perspective into the ofxCvImage using two sets four points passed in:

```cpp
ofPoint[4] src;
src[0] = ofPoint(0, 0);
src[1] = ofPoint(320, 0);
src[2] = ofPoint(320, 240);
src[3] = ofPoint(0, 240);

ofPoint[4] dst;
dst[0] = ofPoint(10, 0);
dst[1] = ofPoint(310, 0);
dst[2] = ofPoint(310, 230);
dst[3] = ofPoint(10, 230);

image.warpIntoMe(parent, src, dst);

```

![Four corners for warping](../images/ofxCvImage.warpIntoMe.example.png)

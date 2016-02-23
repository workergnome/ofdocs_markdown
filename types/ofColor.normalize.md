Divide all color components by brightness. This has the effect of conforming 
the color to the outer surface of the hue/saturation/brightness spherical 
color space, by forcing a unit radius (brightness).

This operation is equivalent to the following:

~```cpp
    ofColor myColor(127, 0, 0, 127);

    float brightness = myColor.getBrightness(); // Returns 127.
    float scaleFactor = brightness / limit();   // Returns 127 / 255.

    ofColor myNormalizedColor = myColor / scaleFactor;
                                // Divides the red, green and blue
                                // components by the scale factor.
```~

The following:
```cpp
	ofColor c(122, 122, 0);
	ofSetColor(c);
	ofDrawCircle(100, 100, 100);
	c.normalize();
	ofSetColor(c);
	ofDrawCircle(300, 100, 100);
```

will create this:

![ofNorm](../images/ofColor.normalize.example.png)
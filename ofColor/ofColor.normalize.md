Divide all color components by brightness. This has the effect of conforming the color to the outer surface of the hue/saturation/brightness spherical color space, by forcing a unit radius (brightness).



The following

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

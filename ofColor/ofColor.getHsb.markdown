Return all three components of the HSB representation of this color at the same time.

~~~~{.cpp}
ofColor red(255,0,0);
float hue, saturation, brightness;
red.getHsb( hue, saturation, brightness );
// hue is now 0 (for red), saturation is 255, brightness is 255
~~~~

Refer the [discussion of HSB](#HSB) above.
In some cases, it is convenient to represent colors using a HSB
value. In this case, red, green and blue values are represented by their hue, 
saturation and brightness.

Set this color using a HSB representation. Refer the [discussion of HSB](#HSB) 
above. **Note** that the hue value has a range that matches the base data type 
(ie **0 to 255** for the standard ofColor), rather than 0 to 360, 0 to 100 or 
float 0 to 1, as may be expected. The alpha channel is specified separately  
and will default to the PixelType's maximum, resulting in an opaque color.


```cpp
    ofColor c = ofColor(0); // c is black
    c.setHsb(0, 255, 255); // c is now bright red
    c.setHsb(255, 255, 255); // c is still bright red (colors wrap around)
    c.setHsb(255, 255, 100); // c is dark red
    c.setHsb(255, 100, 255); // c is dull light red
```

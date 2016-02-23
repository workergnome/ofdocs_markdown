ofColor represents a color in openFrameworks.
Colors are usually defined by specifying a red, green, blue and optionally 
an alpha value (r,g,b,[a]), or a hue, saturation, brightness and optionally 
an alpha value (h,s,b,[a]) or hexadecimal value with an optional alpha 
value (0x________, a).


For example:

```cpp
// set red, component by component
ofColor red;
red.r=255;
red.g=0;
red.b=0;
ofSetColor(red);
// draw color is now red

// shorter notation is also possible
ofColor green(0, 255, 0);
ofSetColor(green);
// draw color is now green

// or even shorter
ofSetColor( ofColor(0, 0, ofRandom( 128, 255 ) );
// draw color is now a random blue
```

ofColor also enables a lot of extra functionality like using HSB instead of
color spectrums, lerping or linearly interpolating between colors, and
inverting colors, among other things.

ofColor is templated, which means that it has several different ways it can
be created. These are probably best to leave as they are because there's
already a few kinds typedefed for you. The default ofColor uses unsigned
char values (0 to 255), but you can make an ofFloatColor if you want to work
with floating point numbers between 0 and 1, or ofShortColor if you want to
work with integers between 0 and 65,535.

|   Typedef     |    PixelType     | Bit Depth | Min. Value | Max. Value  |
| ------------- | ---------------- | --------- | ---------- | ----------- |
| `ofColor`     | `unsigned char`  | 8         | 0          | 255         |
| `ofShortColor`| `unsigned short` | 16        | 0          | 65535       |
| `ofFloatColor`| `float`          | _varies_  | 0.0        | 1.0         |

#### HSB

You're probably familiar with RGB colors already, but HSB is a big part of
ofColor. It uses a *hue* value (for the standard ofColor the range for this
value is between 0 and 255) to determine what the hue (the 'color' in the
sense of a color in the rainbow) will be:

![HSB](../images/.ofColor.hsb_example.png)

Approximate hues for some common colors:

* Red: 0 (wrapped round from 255)
* Orange: 25
* Yellow: 42
* Green: 85
* Blue: 170
* Purple: 205
* Red: 255 (wraps round to 0)

Once you've selected a hue, you can use the *saturation* and *brightness*
values to further refine the color. The saturation determines how much of
the hue versus white is present and brightness determines how much hue
versus black is present:

![SB](../images/ofColor.hsb-cone.jpg)

In other words, saturation refers to the intensity of the color: high
saturation means intense color, low saturation means washed out or black and
white. Brightness refers to how light or dark the color is: high brightness
means a bright color, low brightness means a dark color. If the brightness
is 0 the resulting color will be black, regardless of the values of hue or
saturation.

\tparam PixelType The data type used to represent a single pixel value.

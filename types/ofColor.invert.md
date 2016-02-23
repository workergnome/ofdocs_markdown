Performs an inversion operation on the color by replacing the red, green
and blue components with their original value subtracted from the
limit().  For example, an ofColor value of:

~```cpp
    unsigned char maxValue = limit(); // would return 255

    unsigned char r = 255;
    unsigned char g = 255;
    unsigned char b = 0;

    unsigned char rNew = maxValue - r; // 255 - 255 = 0
    unsigned char gNew = maxValue - g; // 255 - 255 = 0
    unsigned char bNew = maxValue - b; // 255 - 0   = 255;
```~

Example usage:
```cpp
    ofColor c(0, 0, 255); // Blue.
    c.invert();
    // c is now (255,255,0), or yellow, which is blue's complement.
```

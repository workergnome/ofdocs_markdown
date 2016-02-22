For example, to get the red, green, and blue of the pixel at (100,20):

```cpp
unsigned char * pixels = myMovie.getPixels();
int nChannels = movie.getPixelsRef().getNumChannels();
int widthOfLine = myMovie.width;  // how long is a line of pixels
int red 	= pixels[(20 * widthOfLine + 100) * nChannels    ];
int green 	= pixels[(20 * widthOfLine + 100) * nChannels + 1];
int blue 	= pixels[(20 * widthOfLine + 100) * nChannels + 2];
```

Set the pixels of the image from an array of values, for an ofFloatImage these need to be floats, for an ofImage these need to be unsigned chars. The w and h values are important so that the correct dimensions are set in the image. This assumes that you're setting the pixels from 0,0 or the upper left hand corner of the image.
The bOrderIsRGB flag allows you pass in pixel data that is BGR by setting bOrderIsRGB=false.

Copies in the pixel data from  the 'pixels' array. Specify the corresponding width and height of the image you are passing in with 'w' and 'h'. The image type can be OF_IMAGE_GRAYSCALE, OF_IMAGE_COLOR, or OF_IMAGE_COLOR_ALPHA.

Note: that your array has to be at least as big as [ width * height * bytes per pixel ].

If you have a grayscale image, you will have (width*height) number of pixels. Color images will have (width*height*3) number of pixels (interlaced R,G,B), and coloralpha images will have (width*height*4) number of pixels (interlaced R,G,B,A).

Note: You do not need to call allocate() before calling setFromPixels() as setFromPixels() re-allocates itself if needed.

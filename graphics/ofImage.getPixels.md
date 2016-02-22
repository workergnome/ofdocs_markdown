This returns a raw pointer to the pixel data.

This function will give you access to a continuous block of pixels. you can grab the data and do what you like with it. If you have a grayscale image, you will have (width*height) number of pixels. Color images will have (width*height*3) number of pixels (interlaced R,G,B), and coloralpha images will have (width*height*4) number of pixels (interlaced R,G,B,A).

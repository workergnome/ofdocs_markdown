This is how large each channel of a pixels is, ofPixels objects that store pixel data as unsigned char are smaller than  ofPixels objects that store pixel data as floats.
This returns bytes, not bits, so you'll probably see ofPixels<float> as 4 and ofPixels<unsigned char> as 1.

This function tries to find distinct regions (blobs) in the given ofxCvGrayscaleImage. It returns the number of blobs found.

input

This is an ofxCvGrayscaleImage reference (ofxCvGrayscaleImage&) to a grayscale image that will be searched for blobs. Note that grayscale images only are considered. So if you're using a color image, you'll need to highlight the particular color that you're looking for beforehand. You can do this by looping through the pixels and changing the color values of any pixel with the desired color to white or black, for instance.

minArea

This is the smallest potential blob size as measured in pixels that will be considered as a blob for the application.

maxArea

This is the largest potential blob size as measured in pixels that will be considered as a blob for the application.

nConsidered

This is the maximum number of blobs to consider. This is an important parameter to get right, because you can save yourself a lot of processing time and possibly speed up the performance of your application by pruning this number down. An interface that uses a user's fingers, for instance, needs to look only for 5 points, one for each finger. One that uses a user's hands needs to look only for two points.

bFindHoles

This tells the contour finder to try to determine whether there are holes within any blob detected. This is computationally expensive but sometimes necessary.

bUseApproximation

This tells the contour finder to use approximation and to set the minimum number of points needed to represent a certain blob; for instance, a straight line would be represented by only two points if bUseApproximation is set to true.

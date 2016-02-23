Adjusts the ofRectangle to match the passed-in ofRectangle.  It will use the ofAspectRatioMode to scale the ofRectangle, and will use the use the alignment anchor parameters to position the rectangle.

Assuming the ofRectangle as the Subject and the passed-in ofRectangle as the Target:

__ofAspectRatioMode Options:__

__OF_ASPECT_RATIO_IGNORE__            : Sets the Subject rectangle's width and height to match those of the Target.
__OF_ASPECT_RATIO_KEEP__              : Resizes the Subject rectangle to completely fit within the Target rectangle.
__OF_ASPECT_RATIO_KEEP_BY_EXPANDING__ : Resizes the Subject rectangle to completely enclose the Target rectangle.

__ofAlignHorz Options:__

__OF_ALIGN_HORZ_IGNORE__              : Does not perform any horizontal alignment.
__OF_ALIGN_HORZ_LEFT__                : Uses the left edge of the rectangle to horizontally anchor the alignment.
__OF_ALIGN_HORZ_RIGHT__               : Uses the right edge of the rectangle to horizontally anchor the alignment.
__OF_ALIGN_HORZ_CENTER__              : Uses the center of the rectangle to horizontally anchor the alignment.

__ofAlignVert Options:__

__OF_ALIGN_VERT_IGNORE__              : Does not perform any vertical alignment.
__OF_ALIGN_VERT_TOP__                 : Uses the upper edge of the rectangle to vertically anchor the alignment.
__OF_ALIGN_VERT_BOTTOM__              : Uses the bottom edge of the rectangle to vertically anchor the alignment.
__OF_ALIGN_VERT_CENTER__              : Uses the center of the rectangle to vertically anchor the alignment.

For a working example of how to use ofAspectRatioMode, ofAlignVert, and ofAlignHorz, see the *graphics/rectangleAlignmentAndScaling/* example within the examples directory.

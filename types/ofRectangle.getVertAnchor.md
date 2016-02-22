getVertAnchor is a convenience method that returns the value of one of the vertical edges of the ofRectangle
using the ofAlignVert enum.

Possible anchor values are:

__OF_ALIGN_VERT_IGNORE__  : returns 0.0
__OF_ALIGN_VERT_TOP__     : returns the position of the upper edge, equivalent to ofRectangle::getTop().
__OF_ALIGN_VERT_BOTTOM__  : returns the position of the bottom edge, equivalent to ofRectangle::getBottom().
__OF_ALIGN_VERT_CENTER__  : returns the y position of the center of the ofRectangle.

Any other anchor value will return 0.0.

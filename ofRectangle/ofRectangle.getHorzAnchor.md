getHorzAnchor is a convenience method that returns the value of one of the horizontal edges of the ofRectangle
using the ofAlignHorz enum.

Possible anchor values are:

__OF_ALIGN_HORZ_IGNORE__  : returns 0.0
__OF_ALIGN_HORZ_LEFT__    : returns the position of the left edge, equivalent to ofRectangle::geLeft().
__OF_ALIGN_HORZ_RIGHT__   : returns the position of the right edge, equivalent to ofRectangle::getRight().
__OF_ALIGN_HORZ_CENTER__  : returns the x position of the center of the ofRectangle.

Any other anchor value will return 0.0.

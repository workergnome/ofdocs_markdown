Possible anchor values are:

- `OF_ALIGN_VERT_IGNORE`  : returns 0.0
- `OF_ALIGN_VERT_TOP`     : returns the position of the upper edge, equivalent to ofRectangle::getTop().
- `OF_ALIGN_VERT_BOTTOM`  : returns the position of the bottom edge, equivalent to ofRectangle::getBottom().
- `OF_ALIGN_VERT_CENTER`  : returns the y-position of the center of the ofRectangle.

Any other anchor value will return `0.0`.

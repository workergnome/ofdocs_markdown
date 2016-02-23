Possible anchor values are:

- `OF_ALIGN_HORZ_IGNORE`  : returns 0.0
- `OF_ALIGN_HORZ_LEFT`    : returns the position of the left edge, equivalent to ofRectangle::geLeft().
- `OF_ALIGN_HORZ_RIGHT`   : returns the position of the right edge, equivalent to ofRectangle::getRight().
- `OF_ALIGN_HORZ_CENTER`  : returns the x-position of the center of the ofRectangle.

Any other anchor value will return `0.0`.

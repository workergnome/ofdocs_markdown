Return a new ofRectangle containing the area shared between the ofRectangle and the passed ofRectangle.
If the two rectangles do not overlap, return a rectangle located at (0,0) with 0 height and 0 width.

If the two rectangles only share an edge this will return a rectangle positioned on that edge:
if the shared edge is vertical, the rectangle will have zero width, otherwise it will have zero height.

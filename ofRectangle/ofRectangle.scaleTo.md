Adjusts the ofRectangle to match the passed-in ofRectangle using the passed-in ofScaleMode.

Assuming the ofRectangle as the Subject and the passed-in ofRectangle as the Target:

__OF_SCALEMODE_FIT__:
This centers the Subject rectangle within the Target rectangle, and resizes the Subject rectangle to completely fit within the Target Rectangle.

  * It fits the Subject rectangle inside the target rectangle.
  * It preserves Subject's aspect ratio.
  * The Subject's final area <= the Target's area.
  * The Subject's center == the Target's center.

__OF_SCALEMODE_FILL__:
This centers the Subject rectangle within the Target rectangle, and resizes the Subject rectangle to completely encompass the Target Rectangle.

  * It fills the Target rectangle with the Subject rectangle.
  * It preserves the Subject's aspect ratio.
  * The Subject's Area >= the Target's area.
  * The Subject's center == the Target's center.

__OF_SCALEMODE_CENTER__:
This centers the Subject rectangle within the Target rectangle, and does not modify the Subject's scale.

  * It preserves the Subject's aspect ratio.
  * The Subject's area is unchanged.
  * The Subject's center == Target's center.

__OF_SCALEMODE_STRETCH_TO_FILL__:
This simply modifies the Subject rectangle to match the Target rectangle's dimensions.

  * It can change the Subject's aspect ratio.
  * The Subject's area == the Target's area.
  * The Subject's center == the Target's center.

For a working example of the various ofScaleModes, see the *graphics/rectangleAlignmentAndScaling/* example within the examples directory.

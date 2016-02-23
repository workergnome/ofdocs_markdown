Return the hue component of the HSB representation of this color. 
Refer the [discussion of HSB](#HSB) above.

The color is converted from the default RGB to an HSB color space and
the resulting hue value is returned.  The resulting hue value will
always be returned in the range 0 - limit().

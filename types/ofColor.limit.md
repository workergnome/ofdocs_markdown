Based on the type of PixelType (whether its a ofColor, ofFloatColor or
ofShortColor), the maximum value different. For a ofFloatColor the
maximum is `1.0`, but for a ofColor it's `255`, and for ofShortColor 
returns `65,536`.

Use this function to get this maximum number.

ofPolyLine allows you to combine multiple points into a single vector data object that can be drawn to the screen, manipulated point by point, and combined with other ofPolyline instances. It is less complex than the [ofPath](ofPath.html) and generally represents a single line or vector shape rather than multiple lines or shapes.

You can add points to an ofPolyline by adding vertices:
```cpp
float i = 0;
while (i < TWO_PI) { // make a heart
	float r = (2-2*sin(i) + sin(i)*sqrt(abs(cos(i))) / (sin(i)+1.4)) * -80;
	float x = ofGetWidth()/2 + cos(i) * r;
	float y = ofGetHeight()/2 + sin(i) * r;
	line.addVertex(ofVec2f(x,y));
	i+=0.005*HALF_PI*0.5;
}
line.close(); // close the shape
```
or you can draw lines or curves:
```cpp
float angle = 0;
while (angle < TWO_PI ) {
	b.curveTo(100*cos(angle), 0, 100*sin(angle));
	b.curveTo(300*cos(angle), 300, 300*sin(angle));
	angle += TWO_PI / 30;
}
```
ofPolyline also includes methods to get the closest point, determine whether a point is inside shape, and resample shapes. Along with the ofPath class, it's the best way to draw and manipulate 2D and 3D vector graphics that you'll need to update and manipulate frequently.

If you use the lineTo or curveTo or bezierTo functions, you move the drawing point, so that drawing a line to 100,100 means a line from 0,0 to 100, 100. The next line would be a line from 100,100 to wherever you go next. Storing this position means that you can easily create continuous drawings without difficulty.

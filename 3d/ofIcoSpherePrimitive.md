The ofIcoSpherePrimitive allows you to create an icosphere, which is a sphere not based on UV slices like the ofSpherePrimitive, but rather faces. Like this:

Like all primitives it allows you to set the radius, draw it, set positions, etc.

```cpp

void setup()
{

	icoSphere.setRadius( width );
}

void draw()
{

	icoSphere.setPosition(ofGetWidth()*.2, ofGetHeight()*.75, 0);
	icoSphere.rotate(spinX, 1.0, 0.0, 0.0);
	icoSphere.rotate(spinY, 0, 1.0, 0.0);

	// get all the faces from the icoSphere, handy when you want to copy
	// individual vertices or tweak them a little ;)
	vector<ofMeshFace> triangles = icoSphere.getMesh().getUniqueFaces();

	// now draw
	icoSphere.draw();
}
```

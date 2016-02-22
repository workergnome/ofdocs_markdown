The ofCylinderPrimitive allows you to create an cylinder mesh.

Like all primitives it allows you to set the size, for the cylinder a radius and height, draw it, set positions, etc, as a simple example:

```cpp

void setup()
{

	cylinder.set( cylinderRadius, cylinderHeight );
}

void draw()
{

	cylinder.setPosition(ofGetWidth()*.2, ofGetHeight()*.75, 0);
	cylinder.rotate(spinX, 1.0, 0.0, 0.0);
	cylinder.rotate(spinY, 0, 1.0, 0.0);

	// get all the faces from the icoSphere, handy when you want to copy
	// individual vertices or tweak them a little ;)
	vector<ofMeshFace> triangles = cylinder.getMesh().getUniqueFaces();

	// now draw
	cylinder.draw();
}
```

To draw a texture over any primitive, simply bind the ofTexture instance and then draw your primitive:

```cpp

texture.getTextureReference().bind();
// now draw
cylinder.draw();

```

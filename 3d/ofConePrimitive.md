The ofConePrimitive allows you to create a 3D cone. Like all primitives it allows you to set the size, draw it, set positions, etc, as a simple example:

```cpp

void setup()
{

	cone.set( coneRadius, coneHeight, coneRadiusSegments, coneHeightSegments );
}

void draw()
{

	cone.setPosition(ofGetWidth()*.2, ofGetHeight()*.75, 0);
	cone.rotate(spinX, 1.0, 0.0, 0.0);
	cone.rotate(spinY, 0, 1.0, 0.0);

	// get all the faces from the cpme, handy when you want to copy
	// individual vertices or tweak them a little ;)
	vector<ofMeshFace> triangles = cone.getMesh().getUniqueFaces();

	// now draw
	cone.draw();
}
```

To draw a texture over any primitive, simply bind the ofTexture instance and then draw your primitive:

```cpp

texture.getTextureReference().bind();
// now draw
cone.draw();

```

Beware of the cone texture coordinates, they're a little strange.

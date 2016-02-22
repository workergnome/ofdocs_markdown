The ofSpherePrimitive allows you to create an UV sphere, which is a sphere based on UV slices rather than faces like the ofIcoSpherePrimitive. Note this:

[IMG](spheretypes.png)

On the left is a UV sphere and on the right is an ICO sphere.

Like all primitives it allows you to set the size (radius), draw it, set positions, etc, as a simple example:

```cpp

void setup()
{

	sphere.setRadius( width );
}

void draw()
{

	sphere.setPosition(ofGetWidth()*.2, ofGetHeight()*.75, 0);
	sphere.rotate(spinX, 1.0, 0.0, 0.0);
	sphere.rotate(spinY, 0, 1.0, 0.0);

	// get all the faces from the icoSphere, handy when you want to copy
	// individual vertices or tweak them a little ;)
	vector<ofMeshFace> triangles = sphere.getMesh().getUniqueFaces();

	// now draw
	sphere.draw();
}
```

To draw a texture over any primitive, simply bind the ofTexture instance and then draw your primitive:

```cpp

texture.getTextureReference().bind();
// now draw
sphere.draw();

```

The sphere can look a little weird if you don't do ofEnabledDepthTesting() and ofDisableAlphaBlending().

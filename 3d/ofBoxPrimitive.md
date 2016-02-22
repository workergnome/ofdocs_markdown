The ofBoxPrimitive allows you to create cubes and cuboids.

Like other primitives, it allows you to set its dimensions and position, draw it, etc. As a simple example:

```cpp

void setup()
{

	box.set( boxSize );
	// or
	// box.set( boxHeight, boxWidth, boxDepth );
}

void draw()
{

	box.setPosition(ofGetWidth()*.2, ofGetHeight()*.75, 0);
	box.rotate(spinX, 1.0, 0.0, 0.0);
	box.rotate(spinY, 0, 1.0, 0.0);

	// get all the faces from the icoSphere, handy when you want to copy
	// individual vertices or tweak them a little ;)
	vector<ofMeshFace> triangles = box.getMesh().getUniqueFaces();

	// now draw
	box.draw();
}
```

To draw a texture over any primitive, simply bind the ofTexture instance and then draw your primitive:

```cpp

texture.getTextureReference().bind();
// now draw
box.draw();

```

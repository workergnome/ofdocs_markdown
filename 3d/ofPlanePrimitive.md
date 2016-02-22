The ofPlanePrimitive allows you to create an UV plane, which can be used for example as simple canvas for projecting simple texture .

Like all primitives it allows you to set the size, in this case height and width, draw it, set positions, etc, as a simple example:

```cpp

ofPlanePrimitive plane;

void setup()
{
/// let's say we have a window set to be at 
// resolution 640x480...

	plane.set(640, 480);   ///dimensions for width and height in pixels
plane.setPosition(320, 240, 0); /// position in x y z
plane.setResolution(2, 2); /// this resolution (as columns and rows) is enough
}

void draw()
{
plane.drawWireframe();
}
```
As you can see, plane is constructed from two triangles.
To draw a texture over any primitive, simply bind the ofTexture instance and then draw your primitive:

```cpp

texture.getTextureReference().bind();
// now draw filled...
plane.draw();

```

The plane primitive also allows you to simply pass an ofTexture to the plane and generate the texture coordinates from that texture so that the ofTexture fills the plane when it's drawn. This saves you the hassle of creating all the texture coordinates for each vertex, which is nice.

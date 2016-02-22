An ofMesh represents a set of vertices in 3D spaces, and normals at those points, colors at those points, and texture coordinates at those points. Each of these different properties is stored in a vector.
Vertices are passed to your graphics card and your graphics card fill in the spaces in between them in a processing usually called the rendering pipeline. The rendering pipeline goes more or less like this:

1. Say how you're going to connect all the points.

2. Make some points.

3. Say that you're done making points.

You may be thinking: I'll just make eight vertices and voila: a cube. Not so quick. There's a hitch and that hitch is that the OpenGL renderer has different ways of connecting the vertices that you pass to it and none are as efficient as to only need eight vertices to create a cube.

You've probably seen a version of the following image somewhere before.
![PRIMATIVES](../images/ofMesh.primitives.gif)
Generally you have to create your points to fit the drawing mode that you've selected because of whats called winding. A vertex gets connected to another vertex in the order that the mode does its winding and this means that you might need multiple vertices in a given location to create the shape you want. The cube, for example, requires eighteen vertices, not the eight that you would expect. If you note the order of vertices in the GL chart above you'll see that all of them use their vertices slightly differently (in particular you should make note of the GL_TRIANGLE_STRIP example). Drawing a shape requires that you keep track of which drawing mode is being used and which order your vertices are declared in.

If you're thinking: it would be nice if there were an abstraction layer for this you're thinking right. Enter the mesh, which is really just an abstraction of the vertex and drawing mode that we started with but which has the added bonus of managing the draw order for you. That may seem insignificant at first, but it provides some real benefits when working with complex geometry.

A very typical usage is something like the following:

```cpp
ofMesh mesh;
for (int y = 0; y < height; y++){
	for (int x = 0; x<width; x++){
		mesh.addVertex(ofPoint(x,y,0)); // make a new vertex
		mesh.addColor(ofFloatColor(0,0,0));  // add a color at that vertex
	}
}

// now it's important to make sure that each vertex is correctly connected with the
// other vertices around it. This is done using indices, which you can set up like so:
for (int y = 0; y<height-1; y++){
	for (int x=0; x<width-1; x++){
		mesh.addIndex(x+y*width);				// 0
		mesh.addIndex((x+1)+y*width);			// 1
		mesh.addIndex(x+(y+1)*width);			// 10

		mesh.addIndex((x+1)+y*width);			// 1
		mesh.addIndex((x+1)+(y+1)*width);		// 11
		mesh.addIndex(x+(y+1)*width);			// 10
	}
}
```

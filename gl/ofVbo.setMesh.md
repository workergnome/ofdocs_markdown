This allows you to pass a mesh to the ofVbo and populate the vertices, texture coordinates, and other properties of the VBO from the ofMesh instance. You can think of this as essentially moving geometry data from the CPU to the GPU.

```cpp
ofxAssimpModelLoader model;
model.loadModel("astroBoy_walk.dae",true);
ofMesh mesh = model.getMesh(0);
ofVbo vbo;
vbo.setMesh(mesh, GL_STATIC_DRAW);
```

The possible options for usage are: GL_STREAM_DRAW, GL_STREAM_READ, GL_STREAM_COPY, GL_STATIC_DRAW, GL_STATIC_READ, GL_STATIC_COPY, GL_DYNAMIC_DRAW, GL_DYNAMIC_READ, or GL_DYNAMIC_COPY

This function is internally called by ofFbo::begin() after setting up the
viewport to draw things into your ofFbo instance.

To map the fbo to ofRectangle, ofMesh, or other vertex based drawing, call

```cpp
fbo.getTextureReference().bind();
mesh.draw();
fbo.getTextureReference().unbind();
```

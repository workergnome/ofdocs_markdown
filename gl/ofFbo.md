At it's core the ofFBO is a container for textures and an optional depth buffer. Kind of like, well, an OpenGL framebuffer, which is what you're normally rendering to. One way, conceptually correct but technically a bit loose, is that it's another renderer that you can write to. You can draw textures to it, draw 3D or 2D objects to it, render the view of cameras inside of it, all with one key difference: it's just an object stored on the graphics card that repreesents a rendered drawing pass. You can have multiple of them, draw all kinds of things inside of them, and then get all the textures out of them to play with in a shader or just draw them directly to the screen. They are, for most purposes, little render buffers that you can render to and store without needing to be drawing to the screen.

To start working with an ofFbo, you have to allocate it, the same way that you would with an ofTexture:

```cpp
fbo.allocate(400, 400, GL_RGBA); // with alpha, 8 bits red, 8 bits green, 8 bits blue, 8 bits alpha, from 0 to 255 in 256 steps
```

Often the FBO will contain artefacts from the memory that the graphics card has just allocated for it, so it's good to clear it before starting to draw it:

```cpp
    fbo.begin();
	ofClear(255,255,255, 0);
    fbo.end();
```

When you call begin() you're telling the framebuffer to store the rendered results of any drawing calls (or shaders for that matter) in the FBO:

```cpp
float alpha = ofMap(ofGetMouseX(), 0, ofGetWidth(), 0, 255);
fbo.begin();
	ofSetColor(255,255,255, alpha);
	ofDrawRectangle(0,0,400,400);
fbo.end();
```

When it's time to draw your FBO, you can simply call draw:

```cpp
void ofApp::draw()
{
	fbo.draw(0,0);
}
```

If you want to pass the FBO to say, an ofShader, you do:

```cpp
shader.setUniformTexture("fboTexture", fbo.getTextureReference(0), 0);
```

You can also use the ofFbo::Settings object to create a more customized FBO that allows you to set the internal format of the depth and stencil textures, create multiple textures to render to, and use different texture targets, among other things.

ofFbo can be a little confusing because it wraps two related, but distinct things in OpenGL: Textures and RenderBuffers. The difference conceptually isn't huge, but it's important if you're looking to understand deeply what's going on inside the ofFbo. RenderBuffers are good for rendering to, not drawing, whereas Textures are ok for both but slightly slower. More info on both [here](http://www.opengl.org/wiki/Renderbuffer_Objects) and [here](http://www.opengl.org/wiki/Framebuffer_Object)

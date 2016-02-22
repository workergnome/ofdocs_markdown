The OpenGL programable renderer is a renderer for OF that is built specifically to support both newer versions of OpenGL (3+) as well as supporting GLES, which is what you'll be using if you're running OF on an ARM Linux (i.e. Raspberry Pi), Android, or iOS device. There are a few key differences between OpenGL 3 and OpenGL 2 that are largely hidden from you by OF. You can still use the same methods for drawing, making meshes, uploading textures, and other drawing operations on the programmable renderer as you could on the direct pipeline, so you're not missing anything if you stick to the older pipeline. The most significant difference probably comes in writing GLSL shaders, since the syntax changes between the older implementation and the newer. One of the important things that the ofGLProgrammableRenderer adds is default shaders. That's right: every time you run your OF application, shaders are created and uploaded to the GPU without you even knowing it. There's also addition parameters that are automatically passed to the shader program that you can leverage if you're writing your own. Check out [this tutorial](/tutorials/graphics/shaders.html) for more information.

To initialize the ofGLProgrammableRenderer call ofSetCurrentRenderer() before you call ofSetupOpenGL() in your main.cpp file:

```cpp
// say that we're going to *use* the fancy new renderer
ofSetCurrentRenderer(ofGLProgrammableRenderer::TYPE);
ofSetupOpenGL(1024,768, OF_WINDOW);         // <-------- setup the GL context
```

After that, things should remain the same for you whether you're using the older ofGLRenderer or the newer ofGLProgrammableRenderer.

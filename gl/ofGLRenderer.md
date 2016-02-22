The ofGLRenderer is a renderer for OF that supports OpenGL 2 and lower. It's the more classic, "direct mode" version of OpenGL that you may be familiar with but that also uses vertex arrays underneath to store all of the vertices that you create for the basic OF drawing operations. This is the default renderer that is created when you create your OF app:

```cpp
ofSetupOpenGL(1024,768, OF_WINDOW);			// by default this makes a ofGLRenderer

// this kicks off the running of my app
// can be OF_WINDOW or OF_FULLSCREEN
// pass in width and height too:
ofRunApp( new testApp());

```

This renderer does not work so well with mobile devices (more specifically with GLES) or on ARM6/7 Linux devices (Raspberry Pi, for instance) but it is the classic version that will be supported on all laptops and desktop machines. Most of the calls to this renderer are handled by other functions, so most of this documentation will simply link to the end user functions that you should call, since you probably don't want to call the renderer directly.

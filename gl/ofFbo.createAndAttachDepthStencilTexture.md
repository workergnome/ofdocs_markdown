FBOs usually have two textures that are created inside of them: a color texture to hold all of the colors of objects that are rendered and a depth texture that represents all the depth values of objects that are rendered. While there are more esoteric reasons for generating a depth texture, a common one is that depth textures can be used in a vertex or fragment shader to figure out how far away from the camera (and possibly by extension a light) something is.

These are created with the default ofFbo::Settings, which means that unless you don't want one, you have a depth buffer to play with that you can access with:

```cpp
fbo.getDepthTexture();
```

The attachment point is the index of the texture that you're going to be referring to within the FBO. By default this should just be GL_DEPTH_STENCIL but if you know what you're doing and don't want a stencil buffer you can use GL_DEPTH_ATTACHMENT or vice versa, GL_STENCIL_ATTACHMENT.

The extra parameters on this method allow you to set the type of depth buffer that you want to create, which is handy if you need particular fidelity for depth, for instance, GL_DEPTH32.

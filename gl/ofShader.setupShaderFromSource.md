This method create and compile a shader from source.
Working with OpenGL 3 or OpenGL ES 2.0, remember to call bindDefaults() before linkProgram()

Example of a simple shader to display a texture, using the ofGLProgrammableRenderer:
```cpp
stringstream vertexSrc;
vertexSrc << "#version 150\n";
vertexSrc << "uniform mat4 modelViewProjectionMatrix;\n";
vertexSrc  << "in vec4 position;\n";
vertexSrc  << "in vec2 texcoord;\n";
vertexSrc  << "out vec2 texCoordVarying;\n";
vertexSrc  << "void main(void){\n";
vertexSrc  << "\tgl_Position=modelViewProjectionMatrix*position;\n";
vertexSrc  << "\ttexCoordVarying = texcoord;\n";
vertexSrc  << "}\n";

stringstream fragmentSrc;
fragmentSrc << "#version 150\n";
fragmentSrc << "uniform sampler2DRect tex0;\n";
fragmentSrc << "in vec2 texCoordVarying;\n";
fragmentSrc << "out vec4 outputColor;\n";
fragmentSrc << "uniform vec2 direction;\n";
fragmentSrc << "void main(void) {\n";
fragmentSrc << "\toutputColor = texture(tex0, texCoordVarying);\n";
fragmentSrc << "}\n";

shader.setupShaderFromSource( GL_VERTEX_SHADER, vertexSrc.str() );
shader.setupShaderFromSource( GL_FRAGMENT_SHADER, fragmentSrc.str() );
shader.bindDefaults();
shader.linkProgram();
```

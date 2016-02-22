This sets the vertex data for the ofVbo from a pointer to an array of floats. The numCoords determines whether you're creating a 3D or 2D vbo, i.e. a 3D cube would require an array of 24 floats, and numCoords to be 8.

The possible options for usage are: GL_STREAM_DRAW, GL_STREAM_READ, GL_STREAM_COPY, GL_STATIC_DRAW, GL_STATIC_READ, GL_STATIC_COPY, GL_DYNAMIC_DRAW, GL_DYNAMIC_READ, or GL_DYNAMIC_COPY

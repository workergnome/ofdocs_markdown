This sets the texCoord data for the ofVbo from a pointer to an array of floats, ST, for each face, so a 3D cube would require an array of 16 floats, 2 for each vertex.

The possible options for usage are: GL_STREAM_DRAW, GL_STREAM_READ, GL_STREAM_COPY, GL_STATIC_DRAW, GL_STATIC_READ, GL_STATIC_COPY, GL_DYNAMIC_DRAW, GL_DYNAMIC_READ, or GL_DYNAMIC_COPY

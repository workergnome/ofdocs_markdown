This sets the normal data for the VBO from a pointer to an array of ofVec3f instances. The normals are calculated as the vector perpendicular to a face. The mathematical definition of a normal is shown on the left, while the way that a normal is calculated for a triangle is shown on the right.

![vbo normals](../images/ofVbo.setNormalData.vboNormals.png)

One technique for calculating normals is something like the following:

~~~~{.cpp}
int* indices;
ofVec3f* verts;
ofVec3f* normals;
// allocate and create normals, indices, and verts
for ( int i = 0, int j = 0; i < NUM_INDICES; i+=3, j++) {
    ofVec3f v[3] = { vertices[i], verts[(i+1)], verts[(i+2)] };
    ofVec3f temp1 = v[1] - v[0];
    ofVec3f temp2 = v[2] - v[0];
    ofVec3f norm = temp1.getCrossed(temp2);

      for (int j = 0; j < 3; ++j) {
        Vector3 a = v[(i+1) % 3] - v[j];
        Vector3 b = v[(j+2) % 3] - v[j];
        float weight = acos(a.dot(b) / (a.length() * b.length()));
        norm += weight * normal;
    }

    normals[j] = norm;
}
~~~~

The possible options for usage are: GL_STREAM_DRAW, GL_STREAM_READ, GL_STREAM_COPY, GL_STATIC_DRAW, GL_STATIC_READ, GL_STATIC_COPY, GL_DYNAMIC_DRAW, GL_DYNAMIC_READ, or GL_DYNAMIC_COPY
Saves the mesh at the passed path in the [PLY Format](http://en.wikipedia.org/wiki/PLY_(file_format)).

There are two format options for PLY: a binary format and an ASCII format.
By default, it will save using the ASCII format.
Passing ``true`` into the ``useBinary`` parameter will save it in the binary format.

If you're planning on reloading the mesh into ofMesh, ofMesh currently only supports loading the ASCII format.

For more information, see the [PLY format specification](http://paulbourke.net/dataformats/ply/).

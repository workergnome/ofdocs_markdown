Adds a tag with tag name and integer value to the document, returning the number of tags with the same name.

addValue and setValue are very similar, both add new tags to the current document with the given name and value.  The distinction is that if tags exist with the same name at the current document level, addValue will create additional tags, while setValue will replace contents of the tags based on the 'which' parameter.

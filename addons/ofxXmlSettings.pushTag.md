Pushing and Popping operations are used to set the current document level. Most of the methods in ofxXmlSettings are done in relationship to just the top level tags, so pushing tags is necessary to go deeper into documents. Every pushTag should be matched with a popTag after operations at that level are finished.  

pushingTag pushes the given tag which is then treated as the tag as as the document root.

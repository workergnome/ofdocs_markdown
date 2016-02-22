Constructor. On construction a Poco::XML::Document is created, but not an element, so you'll need to append new elements using addChild() and addAttribute().

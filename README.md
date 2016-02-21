# ofdocs_markdown
This contains markdown files for each function to be used in the new openFrameworks documentation system.


Questions:

* How do we document the class itself?
  - classname.markdown

* how do we want to handle internal linking?
  - this is a problem for Jonas to answer
  - preference is magic, doxygen-style linking.

* How do we handle images?
  - there should be a giant directory of images. 
  - There should be a naming convention for the images
      `ofColor.getRed.example_image.png`
  - the markdown link should be
      `![Example Image for Get Red](../images/ofColor.getRed.example_image.png)`
* what do we use for codeblocks?
   
    ```cpp
        ofLog() << "this works!";
    ```


Descriptions of classes are `ofColor.markdown`
Descriptions of methods are `ofColor.getRed.markdown`
Descriptions of constructors are `ofColor.ofColor.markdown`

We should never have a markdown for a #DEFINE.
We should never have a markdown for a individual enumerated value in an enum.

Templated stuff TBD
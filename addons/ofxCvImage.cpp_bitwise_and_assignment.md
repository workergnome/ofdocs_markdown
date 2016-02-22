Binary & (Logical AND http://en.wikipedia.org/wiki/Bitwise_operation) the pixel data of the right hand side image from the current image:

```cpp
cvPuppy.allocate( 320, 240 );    
cvPuppy = puppyImg.getPixels(); // copy pixels from a loaded image
    
andPuppy.allocate( 320, 240 );
    
andPuppy.set(255, 0, 0); // make the AND image red
andPuppy &= cvPuppy; // will & all the bits 
```

![Using the &= operation](../images/ofxCvImage.cpp_bitwise_and_assignment.example.png )

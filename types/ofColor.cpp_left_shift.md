Colors can be serialized into comma separated values (CSV) using the
output stream operator.  Input stream values are written in the
following form
    RED_VALUE, GREEN_VALUE, BLUE_VALUE, ALPHA_VALUE
For example, to write output into a std::stringstream for later
retrieval using the ofColor_ input stream operator one might use the
following:
```cpp
    std::stringstream ss;     // Create an empty std::string stream.
                              // Note: std::stringstream is just one
                              // option for an output stream.  Another
                              // popular output stream std::cout.
    ofColor myColor(255, 255, 0, 255);
                              // Create an ofColor to output.
    ss << myColor;            // Write the color to the output stream.
```

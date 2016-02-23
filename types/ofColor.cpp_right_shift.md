Colors can be deserialized from comma separated values (CSV) input
stream using the input stream operator.  Input stream values are read
in the following form:
    RED_VALUE, GREEN_VALUE, BLUE_VALUE, ALPHA_VALUE
For example, to read input from a std::stringstream into an ofColor
one might use the following:
```cpp
    std::stringstream ss;     // Create an empty std::string stream.
                              // Note: std::stringstream is just one
                              // option for an input stream.
    ss << "255, 255, 0, 255"; // Write the color to the stringstream.
    ofColor myColor;          // Create an ofColor instance to fill.
    ss >> myColor;            // myColor is now filled with a yellow.
```

```cpp
	ofColor c(128, 64, 255);
	float red = c[0]; // red is 128
```

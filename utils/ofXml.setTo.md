Sets the current element to the path indicated. This can be up or down the DOM:

```cpp
xml.setTo("pictures[1]/url"); // go down
xml.setTo("../"); // go up
xml.setTo("../pictures[0]/url"); // go up and then down
```

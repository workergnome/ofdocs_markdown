Returns the value stored by the requested tag. The data type returned depends on the type provided as the defaultArgument. For example, if the tag is:
```{.xml}
<myTag>9.8</myTag>   
```

The value can be interpreted in three different ways, as a float, int, or string by changing the default type provided to the call.

```cpp
//returns "9.8"
string myString = settings.getValue("myTag", "");
//returns the integer value 9
int myInt = settings.getValue("myTag", 0);
//returns the double value 9.8
double myDouble = settings.getValue("myTag", 0.0);
```

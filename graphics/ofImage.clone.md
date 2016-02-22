This allows you to create an ofImage from another ofImage instance, copying all the pixels and the texture data while creating a new textureID.
```cpp
ofImage second;
second.clone(first);
```

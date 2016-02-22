Sets the looping state of the movie. Default behavior is OF_LOOP_NORMAL. There are three options:
```cpp

OF_LOOP_NONE - don't loop, the movie will stop when it gets to the last frame (or first frame, if playing backwards)
OF_LOOP_NORMAL - loop normally (the last frame loops to the first frame)
OF_LOOP_PALINDROME - loop back and forth. Movie will play forward until it gets to the last frame, then plays backwards until it gets to the first frame, and so on.
```

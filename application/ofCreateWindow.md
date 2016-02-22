Creates a new app window and returns it as a shared_ptr. You can change the window's settings, like its size, position, decoration, and resizability in its ofWindowSettings.

To share assets between multiple windows, such as for drawing any ofBaseHasPixels object, you have to share contexts. This can be done by pointing a window to the shareContextWith field in another window's settings, as in the multiWindowOneAppExample.

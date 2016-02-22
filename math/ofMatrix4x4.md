The ofMatrix4x4 is the big class of the math part of openFrameworks. You'll sometimes see it used for doing things like setting where the camera in OepnGL (the mathematically calculated one, not the ofCamera one) is looking or is pointedA, or figuring how to position something in 3d space, doing scaling, etc. The great thing about the 4x4 matrix is that it can do all these things at the same time. A single ofMatrix4x4 can represent a ton of different information about a stuff that goes on in doing 3d programming: where an object is, how you want to scale an object, where a camera is. Let's look at a few really basic examples:

[MATS](../images/ofMatrix4x4.mats.png)

Not particularly exciting, but you can see how they'd be useful. Luckily most of the need to transform, rotate, scale, shear, or further bazzlemunge (just kidding, bazzlemunging is not a thing) stuff in OF is handled internally by objects like ofNode or ofCamera.

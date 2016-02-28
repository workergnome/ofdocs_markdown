ofVec2f is a class for storing a two dimensional vector. 

Moving through space requires knowledge of where things are and where they are going. Vector Maths is the class of mathematics that gives us control over these things in space, allowing for elegant and intuitive descriptions of complex structures and movement. Vectors are at the heart of animations, particle systems, and 2D and 3D graphics.

Vectors in mathematics in general are entities with magnitude (also called length) and direction. A vector whose magnitude is 1 (ie a vector that is *normalized*) is called a *unit vector*. Unit vectors are very handy for storing directions as they can be easily scaled up (or down) to represent motion in a particular direction with a particular length.

>You will also see the term vector used to describe an array of objects in C++ (such as text strings). Don't let this confuse you, they are quite different: one of them is a mathematical term for a fixed-length list of numbers that you can do mathematical operations on, the other is a C++-specific term that means 'dynamically sizeable array'.

ofVec2f has two member variables, x and y, which allow to conveniently store 2D properties of an object such as its position, velocity, or acceleration. 

```cpp
ofVec2f v1; // v1.x is 0, v1.y is 0
v1.set( 10, 50 ); // now v1.x is 10, v1.y is 50
```

Using ofVec2f greatly simplifies arithmetic operations in two dimensions. For example if you have two vectors `v1` and `v2`, both of which represent a 2D change in position, you can find the total change of position of both of them just by doing an addition `v1 + v2`:

```cpp
ofVec2f v1(5, 2); // v1 represents walking 5 steps forward then 2 steps sideways
ofVec2f v2;
v2.set(1, 1); // v2 represents walking 1 step forward then 1 step sideways
// what happens if you do v1 followed by v2? just add v1 and v2 together:
ofVec2f result = v1 + v2; // result is 6 steps forward then 3 steps sideways
```

You can scale an ofVec2f by multiplying it with a float:

```cpp
ofVec2f v1(5, 2); // walk 5 steps forward and 2 steps right
// what happens if we do v1 three times?
ofVec2f result = v1 * 3; // result is 15 steps forward and 6 steps right
```

This also works for subtraction and division.

As you can see this really makes dealing with vector math as easy as dealing with single floats or ints, and can reduce the number of lines of code you have to write by half, at the same time making your code much easier to read and understand.

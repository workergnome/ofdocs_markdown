Draws a curve to an ofPoint object passed in:
```cpp
float angle = 0;
while (angle < TWO_PI ) {
	b.curveTo( ofPoint(100*cos(angle), 100*sin(angle)));
	b.curveTo( ofPoint(300*cos(angle), 300*sin(angle)));
	angle += TWO_PI / 30;
}
```

You need at least 4 points to be able to draw with curveTo, here's an explanation of why this happens:

If we have an empty `ofPolyline` `p`, and we do:

    p.lineTo(v0); 
    p.lineTo(v1); 
    p.lineTo(v2); 
    p.lineTo(v3); 

We end up with a line that starts at `v0`, heads to `v1`, then heads to `v2` and finally ends at `v3`.  But if we had instead done:

    p.curveTo(v0); 
    p.curveTo(v1); 
    p.curveTo(v2); 
    p.curveTo(v3); 

We end up with a curve that goes from `v1` to `v2`.  That might seem initially puzzling...

So, we have to dive under the hood.  The `curveTo(...)` method makes Catmull-Rom splines [wiki](http://en.wikipedia.org/wiki/Centripetal_Catmull%E2%80%93Rom_spline).  The relevant bit to understand is that this type of spline is defined by four points:

![](http://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Catmull-Rom_Spline.png/220px-Catmull-Rom_Spline.png)

P1 and P2 are the endpoints of our curve, while P0 and P3 are the control that define the shape of the curve.

When using `curveTo(...)` with `ofPolyline`, there's an internal vector that stores P0, P1, P2 and P3.  When our `ofPolyline` is empty then the internal vector is also empty.  When we call:

    p.curveTo(v0); // Internal vector is [v0], so only P0 is defined 
    p.curveTo(v1); // Internal vector is [v0, v1], so only P0 and P1 are defined
    p.curveTo(v2); // Internal vector is [v0, v1, v2], so only P0, P1 and P2 are defined
    p.curveTo(v3); // Internal vector is [v0, v1, v2, v3], so all points are defined

Only once all of those points (P0 through P4) have been defined, then a spline has been fully defined and vertices can finally be added to our `ofPolyline`.  When `curveTo(v3)` is called above, then the curve between P1 (`v1`) and P2 (`v2`) is sampled (at a resolution defined by the optional parameter `curveResolution`).  That sampling slides along the curve and adds vertices to your `ofPolyline`.  

The curve doesn't start at `v0` and end at `v3` because those points are acting as the control points (i.e. the points connected by dotted lines in the image above).

And now that we have P0 through P4 defined, when we call `curveTo(...)` next:

    curveTo(v4); // Internal vector becomes [v1, v2, v3, v4]

The oldest point, `v0`, was bumped and everything shifted down.  The sampling occurs again, but this time it is between `v2` and `v3`.

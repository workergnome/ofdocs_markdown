Sets this vector to be the average (*centre of gravity* or *centroid*) of a given array of ofVec2fs. points is the array of ofVec2fs and num specifies the number of ofVec2fs in the array.

```cpp
int numPoints = 10;
ofVec2f points[numPoints];
for ( int i=0; i<numPoints; i++ ) {
	points[i].set( ofRandom(0,100), ofRandom(0,100) );
}
ofVec2f centroid;
centroid.average( points, numPoints ); 
// centroid now is the centre of gravity/average of all the random points
```

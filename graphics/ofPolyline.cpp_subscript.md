The [] operator allows you to access the points of the ofPolyline just like you would in an array, so to make the points of a line follow the mouse movement, you could do:
```cpp
line[0].set(mouseX, mouseY);
int i = 1;
while ( i<bounds.size()) {
	
	float angle = atan2(line[i-1].y - line[i].y, line[i-1].x - line[i].x);  
	bounds[i].set(bounds[i-1].x - cos(angle) * 20, bounds[i-1].y - sin(angle) * 20);
	
	i++;
}
```

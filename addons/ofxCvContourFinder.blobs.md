The vector ofxCvBlob blobs returns each blob that was found in the image. These should, if all has gone well, correlate to the blobs in previous examples so that you can begin to perform tracking.

```cpp
for(int i = 0; i < contourFinder.nBlobs; i++) {
	ofxCvBlob blob = contourFinder.blobs.at(i);
	// do something fun with blob
}
```

or

```cpp
vector<ofxCvBlob>::iterator bit = contourFinder.blobs.begin();
while( bit != contourFinder.blobs.end())
	ofxCvBlob blob = *(bit);
	// do something with blob
	++bit;
}
```

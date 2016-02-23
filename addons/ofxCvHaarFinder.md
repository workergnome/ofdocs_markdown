ofxCvHaarFinder allows you to check an image for a match to a Haar classifier. The Haar Classifier is a data file generated from a training process where an application is "taught" how to recognize something in different contexts. This can be things like recognizing whether a certain sound is a word being spoken by a user, whether a gesture is a certain shape, or, in the image shown below, whether a pattern of pixels constitute a face.

![Face detection on a photograph](ofxCvHaarFinder.face_detection.jpg)

A very basic set-up of an application using ofxCvHaarFinder would look like so:

```cpp
app::setup() {
   haarFinder.setup("haarcascade.xml"); // must be in /data/
}

app::update() {
   haarFinder.findHaarObjects(imageToExamine);
}

app::draw() {
  for(int i = 0; i < haarFinder.blobs.size(); i++) {
     ofDrawRectangle( haarFinder.blobs[i].boundingRect );
  }
}

```

Loads content asynchronously from the specified URL and
returns the ID of the process. You need to listen for URL notifications
in `testApp::urlResponse(ofHttpResponse&)`

Step 1. Declare urlResponse in the header of the class which should receive
notifications:

```cpp
class testApp : public ofBaseApp {
    public:
        void urlResponse(ofHttpResponse & response);
}
```

Step 2. Define urlResponse in the class which should receive notifications:

```cpp
void testApp::urlResponse(ofHttpResponse & response) {
    if (response.status==200 && response.request.name == "async_req") {
        img.loadImage(response.data);
        loading = false;
    } else {
      cout << response.status << " " << response.error << endl;
      if (response.status != -1) loading = false;
    }
}
```

Step 3. Enable URL notifications

```cpp
void testApp::setup() {
  ofRegisterURLNotification(this);
}
```

Step 4. Submit the asynchronous request
```cpp
int id = ofLoadURLAsync("http://www.openframeworks.cc/images/ofw-logo.png",
                        "async_req");
```

Examples based on [http://www.slideshare.net/roxlu/openframworks-007-utils](http://www.slideshare.net/roxlu/openframworks-007-utils)

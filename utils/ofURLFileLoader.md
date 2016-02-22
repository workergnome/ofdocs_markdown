This class provides several convenient methods for making HTTP requests.

```cpp
ofHttpResponse resp = ofLoadURL("http://www.google.com/robots.txt");
cout << resp.data << endl;
```

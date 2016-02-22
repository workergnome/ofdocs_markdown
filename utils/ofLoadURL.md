Loads content from the specified URL. It makes a synchronous HTTP request and returns the response as an instance of the `ofHttpResponse` class.

For example, this will retrieve the contents of a text file and print the output to the console.

```cpp
ofHttpResponse resp = ofLoadURL("http://www.google.com/robots.txt");
cout << resp.data << endl;
```

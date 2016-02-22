You call this to setup what IP and port your client will try to connect to:

```cpp
tcpClient.setup("127.0.0.1", 11999);
```

It returns whether the connection has successfully been made. Don't mistake this for a URI or URL, it comes before that, where the connection is made so that files or data streams can be requested.

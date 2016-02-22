Bind to multicast address to receive data:

```cpp
udpConnection.Create();
udpConnection.BindMcast("224.0.0.1", 11999);
```

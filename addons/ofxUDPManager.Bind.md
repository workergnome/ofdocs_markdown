Bind a port to receive socket/unicast UDP:

```cpp
udpConnection.Create();
udpConnection.Bind(11999);
udpConnection.SetNonBlocking(true);
```

Receives ASCII encoded data from the server. You should make sure you check that the client is connected before calling this.

```cpp
if(tcpClient.isConnected()) {
        string str = tcpClient.receive();
        cout << str << endl;
}
```

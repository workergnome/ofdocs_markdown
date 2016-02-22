This receives the raw bytes from a server. Like with receive(), you should check that the client is connected before calling this.

```cpp

if(tcpClient.isConnected()) {
        string s = tcpClient.receiveRaw();
        cout << str << endl;
}

```

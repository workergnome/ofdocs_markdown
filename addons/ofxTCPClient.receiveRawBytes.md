This retrieves non-ASCII from a server, handy for receiving an image or other binary data to a client. For instance:

```cpp

        bool dataRecd = false;
        unsigned char buffer[7800];
        int recd = 7800;
        int totalReceived = 0;
        int messageSize = 256;
        while(recd > 0) {
            
            if(recd > messageSize) {
                tcpClient.receiveRawBytes( (char*) &buffer[totalReceived], messageSize);
                recd -= messageSize;
                totalReceived += messageSize;
            } else {
                tcpClient.receiveRawBytes( (char*) &buffer[totalReceived], recd);
                totalReceived += recd;
                recd = 0;
                dataRecd = true;
            }
        }
        
        if(dataRecd) {
            img.setFromPixels( &buffer[0], 50, 52, OF_IMAGE_COLOR);
        }

```

On the ofxTCPServer side this would look like:

```cpp
        ofImage img;
        img.loadImage("tmp.jpg");
        int imageBytesToSend = 7800;
        int totalBytesSent = 0;
        int messageSize = 256;
        while( imageBytesToSend > 1 )
        {
            
            if(imageBytesToSend > messageSize) {
                TCP.sendRawBytesToAll((char*) &img.getPixels()[totalBytesSent], messageSize);
                imageBytesToSend -= messageSize;
                totalBytesSent += messageSize;
            } else {
                TCP.sendRawBytesToAll( (char*) &img.getPixels()[totalBytesSent], imageBytesToSend);
                totalBytesSent += imageBytesToSend;
                imageBytesToSend = 0;
            }
        }
```

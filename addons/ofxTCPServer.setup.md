The port is the port that your server will serve up data on. It shouldn't be a commonly used port like 22 or 80, go with a higher number less likely to be used.
The blocking parameter signals whether the client connections will be allowed to block on the servers thread as they send a message. This becomes important when you're dealing with very large messages coming from clients.

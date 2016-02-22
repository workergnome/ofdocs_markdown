Try to lock the mutex.

If the thread was started in blocking mode in startThread(), any thread (including your app main loop) will wait until the mutex is unlocked.

If the thread is non-blocking, this call will immediately return a true or false if the mutex is available. It is up to you to make sure the resource is not being used when accessing it. See the [Wikipedia article on Non-blocking](http://en.wikipedia.org/wiki/Non-blocking_algorithm) for reasons as to why using a non-blocking thread might be more advantageous.

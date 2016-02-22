Checks if the string needle exists in the string haystack.

~~~{.cpp}
    string haystack = "foobar";
    ofLog() << ofIsStringInString(haystack, "foo"); // outputs 1
    ofLog() << ofIsStringInString(haystack,"bar"); // outputs 1
    ofLog() << ofIsStringInString(haystack, "something else"); // outputs 0
~~~

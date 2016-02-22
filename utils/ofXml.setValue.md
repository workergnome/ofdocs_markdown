Sets the value of the element pointed at by the path. If the value, or any other element along the path, does not exist then it is created. This means that:

xml.setPath("/foo/bar/baz/quux", "qiix");

will create:

```cpp
<foo>
	<bar>
		<baz>
			<quux>qiix</quux>
		</baz>
	</bar>
</foo>
```

CSS Selector
--------

**Works In Progress**


CSS-Selector With a Modified Xml Parser

### Xml

provide extra position info that can be used to locate invalid value/attr

```hx
// In Macros
var classes = xml.get("class");
if (classes != "specific") {
	var p = Std.parseInt(xml.get(":class"));   // with prefix ":"
	var pos = haxe.macro.PositionTools.make({
		min: p,
		max: p + classes.length,
		file: "myxml.xml"}
	);
	haxe.macro.Context.error("click this message to location where the error occurred.", pos);
}
```
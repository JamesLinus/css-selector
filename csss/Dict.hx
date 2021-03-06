package csss;

#if js
typedef Dict<T> = haxe.DynamicAccess<T>;
#elseif flash
typedef Dict<T> = haxe.ds.UnsafeStringMap<T>;
#else
typedef Dict<T> = haxe.ds.StringMap<T>;
#end
# Special Objects

## absent-obj
```
(def absent-obj)
```

Special object used by Gambit primitives to signal absent optional values.

## absent-value
```
(def absent-value)
```

Special object used to denote missing hash values.

## true
``` scheme
(true . args) -> #t
```

Returns `#t`, ignoring its arguments.

## true?
``` scheme
(true? obj) -> boolean

  obj := any object
```

Returns true if the object is `#t`.

## false
``` scheme
(false . args) -> #f
```

Returns `#f`, ignoring its arguments.

## void
``` scheme
(void . args) -> #!void
```

Returns `#!void`, ignoring its arguments

## void?
``` scheme
(void? obj) -> boolean
```

Returns true if the object *obj* is `#!void`.

## eof-object
``` scheme
(eof-object . args)
```

Returns the eof object, ignoring its arguments.

## identity
``` scheme
(identity x) -> x

  x := any value
```

The identity function, eg. returns anything passed to it.

## dssl-object?
``` scheme
(dssl-object? obj) -> boolean

  obj := any object
```

Returns true if the object is a DSSL syntactic token.

## dssl-key-object?
``` scheme
(dssl-key-object? obj) -> boolean

  obj := any object
```

Returns true if the object is `#!key`.

## dssl-rest-object?
``` scheme
(dssl-rest-object? obj) -> boolean

  obj := any object
```

Returns true if the object is `#!rest`.

## dssl-optional-object?
``` scheme
(dssl-optional-object? obj) -> boolean

  obj := any object
```

Returns true if the object is `#!optional`.

## immediate?
``` scheme
(immediate? obj) -> boolean

  obj := any object
```

Returns true if the object *obj* is an immediate value.

## Exception Objects

### exception::t
``` scheme
(def exception::t)
```

Base class for all Gerbil-derived exception types. It's an empty struct type
that extends the Gambit builtin exception record type.

See also [Exception Base Classes](errors.md).
### error::t
``` scheme
(def error::t)
```

Base class for all Gerbil-derived errors. It's a struct type that extends
`exception::t` and has 3 fields: message, irritants, and trace.

See also [Exception Base Classes](errors.md).

### exception?
``` scheme
(exception? obj) -> boolean

  obj := any object
```

Returns true if the object *obj* is an exception object. This includes
the builtin Gambit exceptions.

### error?
``` scheme
(error? obj) -> boolean

  obj := any object
```

Returns true if the object *obj* is an instance of `error::t`.

### error-object?
``` scheme
(error-object? obj) -> boolean

  obj := any object
```

Returns true if the object *obj* is an exception object raised by the builtin `error`
procedure. Note that this is separate from instances of `error::t`; nomenclature.

### error-message
``` scheme
(error-message obj) -> string

  obj := any object
```

Returns the message associated with an error instance. If the object *obj* is not
an error instance, it returns the result of `(display-exception obj)`.

### error-irritants
``` scheme
(error-irritants obj) -> list | #f

  obj := any object
```

Returns the irritants associated with an error instance. If the object *obj* is
not an error instance, it returns `#f`.

### error-trace
``` scheme
(error-trace obj) -> any

  obj := any object
```

Returns the trace associated with an error instance. If the object *obj* is not
an error instance, it returns `#f`.


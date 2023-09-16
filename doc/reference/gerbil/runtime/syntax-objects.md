## Syntax Objects

### AST::t
```
(def AST::t)
```

Base class for syntax objects. It is a struct type with two fields,
content and location.

### make-AST
``` scheme
(make-AST e src) -> syntax-object

  e   := any
  src := location or #f
```

Creates a new syntax object.

### AST?
``` scheme
(AST? obj) -> boolean

  obj := any object
```

Returns true if the object *obj* is a syntax object.

### AST-e
``` scheme
(AST-e ast) -> any

  ast := syntax object
```

Returns the content of a syntax object *ast*.

### AST-source
``` scheme
(AST-source ast) -> location | #f

  ast := syntax object
```

Returns the source location of a syntax object *ast*.

### read-syntax
``` scheme
(read-syntax [port = (current-input-port)]) -> syntax object | eof

  port := input port
```

Reads the next syntax object from *port*.

### read-syntax-from-file
``` scheme
(read-syntax-from-file path) -> list of syntax objects

  path := string
```

Reads the contents of a file pointed by *path* as syntax objects.

### source-location?
``` scheme
(source-location? obj) -> boolean

  obj := any object
```

Returns true if the object *obj* is a source location.

### source-location-path?
``` scheme
(source-location-path? obj) -> boolean

  obj := any object
```

Returns true if the object *obj* is a source location with a file path.

### source-location-path
``` scheme
(source-location-path loc) -> string

  loc := source location with a path
```
Returns the source location path.


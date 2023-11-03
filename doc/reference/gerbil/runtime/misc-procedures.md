## Miscellaneous Procedures

### values-count
``` scheme
(values-count obj) -> fixnum

  obj := any object
```

Counts the values in the object *obj*. If the object is not multiple `values`,
it is considered a single value.

### values-ref
``` scheme
(values-ref obj n) -> any

  n := fixnum
```

Returns the *n*th value in the object *obj*. If the object is not multiple `values`,
it returns the object itself.

### values->list
``` scheme
(values->list obj) -> list

  obj := any object
```

Converts multiple `values` to a list. If the object *obj* is not multiple `values`,
it returns a list containing the object.

### subvector->list
``` scheme
(subvector->list obj [start = 0]) -> list

  obj   := any object
  start := number
```

Coverts a vector-like object *obj* to a list, starting from field *start*.

### vector-map
``` scheme
(vector-map f . vectors) -> any

  f       := procedure
  vectors := list of vectors
```

Map for vectors. Traverses vector(s) *vectors* and applies procedure *f* to
elements of each vector, stopping after shortest vector runs out of elements.

### displayln
``` scheme
(displayln . args) -> void

  args := rest of arguments
```

Displays the arguments, followed by a newline.

### display*
``` scheme
(display* . args) -> void

  args = rest of arguments
```

Displays the arguments *args*.

### file-newer?
``` scheme
(file-newer? a b) -> boolean

  a, b := string
```

Returns true if file *a* is newer than *b* by modification-time. Both files must exist.

### create-directory*
``` scheme
(create-directory* path [perms = #o755]) -> void

  path  := string
  perms := fixnum
```

Creates a directory pointed by *path* and its parents if they don't exist, like
`mkdir -p`. Sets directory permissions to *perms*.

### keyword-dispatch
``` scheme
(keyword-dispatch kwt proc . args) -> any

  kwt  := keyword
  proc := procedure
  args := rest of arguments
```

Dispatches a keyword lambda. You shouldn't invoke this directly.

### load-module
``` scheme
(load-module modpath [reload = #f]) -> string

  modpath := string
  reload  := boolean
```

Loads a module *modpath* from the file system. If the module is already loaded, then it's
only reloaded if *reload* is specified. Returns the path of the loaded module.


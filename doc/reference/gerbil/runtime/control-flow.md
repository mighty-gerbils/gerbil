# Control Flow

## make-promise
```
(make-promise thunk) -> promise

  thunk := procedure taking no args
```

Creates a promise.

## promise?
``` scheme
(promise? obj) -> boolean

  obj := any object
```

Returns true if the object *obj* is a promise.

## call-with-parameters
``` scheme
(call-with-parameters thunk . parameterization) -> any

  thunk := procedure taking no args

parameterization:
 parameter value ...
```

Calls *thunk* with parameterization.

## with-catch
``` scheme
(with-catch handler thunk) -> any

  handler, thunk := procedure
```

Calls *thunk* with *handler* as the exception catcher.

## with-unwind-protect
``` scheme
(with-unwind-protect thunk fini) -> any

  thunk, fini := procedure
```

Calls *thunk*, invoking *fini* when execution exits the dynamic extent
of *thunk*.


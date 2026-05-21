# Control Flow

## make-promise
```
(make-promise thunk) -> promise

  thunk := procedure taking no args
```

Creates a promise. You can access the result of the promise with `force`,
which will compute the `thunk` the first time, memoize its result, and subsequently return it always.

Note: The syntax `(delay expr)` creates a promise as if by `(make-promise (lambda () expr))`

Beware: promises returned by `make-promise` are optimized for efficient use in a single-threaded context,
and are not thread-safe, nor safe against escaping continuations that somehow reenter the thunk
before it was fully computed. If you want safety in those cases, use `make-atomic-promise` below.

## promise?
``` scheme
(promise? obj) -> boolean

  obj := any object
```

Returns true if the object *obj* is a promise.

## make-atomic-promise
```
(make-atomic-promise thunk) -> promise

  thunk := procedure taking no args
```

Creates a promise that is safe in a single-threaded context.
The promise can be fulfilled with the usual `force` primitive, same as with `make-promise`.

It is safe for users in multiple threads to simultaneously try to force the promise:
the first user will do the work, the other ones will wait for its result.
The thunk of an atomic-promise will have only one instance running at once,
and may complete only once, after which it will run no more and the result will be reused instead.
In case of errors and retries from a caller,
the partial side-effects of the incomplete thunk may happen
more than once, so the thunk is responsible for appropriately protecting
any data structure that may be affected, or for ensuring its partial effects are idempotent.

If an error occurs while computing the thunk, or evaluation otherwise escapes from the thunk,
the calling thread may catch the error or escaping value and process it;
but it is an error that will be caught to then try to resume evaluation of the thunk
from a continuation captured within it.
Instead, the promise may be forced again by the same thread or another concurrent thread,
that will hopefully evaluate the thunk to completion and return its result,
or then again may in turn error out and escape.


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


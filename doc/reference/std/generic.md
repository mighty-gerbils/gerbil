# Generics

The `:std/generic` library provides support for generic methods with
multiple dispatch. Generic methods dispatch on the runtime types of their
arguments, selecting the most specific applicable method.

::: tip usage
(import :std/generic)
:::

## Overview

Generic methods provide a way to define polymorphic functions that dispatch
based on the types of their arguments. Unlike class methods (which dispatch on
a single receiver), generics support multi-argument dispatch — the method
selected depends on the types of *all* arguments.

A generic is declared with `defgeneric`, and implementations for specific type
combinations are added with `defmethod`. The dispatch mechanism uses a cached
hash table for fast lookup, with automatic cache invalidation when new methods
are bound.

::: tip Example:
```scheme
(import :std/generic)

(defstruct point (x y) transparent: #t)
(defstruct point3d (x y z) transparent: #t)

;; Declare a generic with no default
(defgeneric add)

;; Define methods for specific types
(defmethod (add (a point) (b point))
  (make-point (+ (point-x a) (point-x b))
              (+ (point-y a) (point-y b))))

(defmethod (add (a point3d) (b point3d))
  (make-point3d (+ (point3d-x a) (point3d-x b))
                (+ (point3d-y a) (point3d-y b))
                (+ (point3d-z a) (point3d-z b))))

(add (make-point 1 2) (make-point 3 4))
;; => (point 4 6)
```
:::

## Macros

### defgeneric
```scheme
(defgeneric id)
(defgeneric id default)
```

Declares a generic method with the given *id*. The optional *default* is a
procedure that will be called when no matching method is found for a given
set of argument types. If no default is provided, a `DispatchError` is raised
on dispatch failure.

The macro creates:
- A dispatch table for method registration
- A dispatch procedure that handles 1-4 arguments efficiently, falling back
  to a general `apply`-based path for more arguments
- A syntax binding so that `(id arg ...)` expands to a dispatch call

::: tip Example:
```scheme
;; Generic with no default — raises DispatchError on mismatch
(defgeneric to-string)

;; Generic with a default fallback
(defgeneric describe
  (lambda args (format "Unknown: ~a" args)))
```
:::

### defmethod
```scheme
(defmethod (generic-id (arg type) ...) body ...)
```

Defines a method implementation for *generic-id* that applies when the runtime
types of the arguments match the specified types. Each *type* must be a class
or struct type identifier (defined with `defclass` or `defstruct`), or an
interface type identifier.

The method body has access to each *arg* with typed access via `using`,
so slot access like `arg.field` is available without explicit `using` bindings.

Within the body, `@next-method` can be used to call the next applicable method
in the dispatch chain (similar to `call-next-method` in CLOS).

::: tip Example:
```scheme
(defstruct animal (name) transparent: #t)
(defstruct (dog animal) (breed) transparent: #t)

(defgeneric speak)

(defmethod (speak (a animal))
  (string-append (animal-name a) " makes a sound"))

(defmethod (speak (d dog))
  (string-append (animal-name d) " barks!"))

(speak (make-dog "Rex" "Lab"))
;; => "Rex barks!"

(speak (make-animal "Cat"))
;; => "Cat makes a sound"
```
:::

::: tip Example:
```scheme
;; Multi-argument dispatch
(defgeneric combine)

(defmethod (combine (a point) (b point))
  (make-point (+ (point-x a) (point-x b))
              (+ (point-y a) (point-y b))))

;; Using @next-method to chain to less specific methods
(defmethod (combine (a dog) (b dog))
  (string-append (animal-name a) " and " (animal-name b)
                 " play together! Also: "
                 (@next-method a b)))

(defmethod (combine (a animal) (b animal))
  (string-append (animal-name a) " meets " (animal-name b)))
```
:::

Note that `defmethod` is also used for class methods (with the `{method-name type}`
syntax). When used with a generic identifier, it registers the method in the
generic dispatch table instead.

## Dispatch

Generic dispatch selects the most specific applicable method based on the
runtime types of all arguments. Method specificity is determined by the type
precedence lists of the argument types — more specific (sub)types take
priority over less specific (super)types.

Dispatch is optimized for 1-4 arguments using specialized fast paths. For
higher arities, a general dispatch mechanism using `apply` is used.

Results are cached in a lock-free hash table for fast repeated dispatch with
the same argument types.

### dispatch-error?
```scheme
(dispatch-error? obj) -> boolean
```

Returns `#t` if *obj* is a `DispatchError` exception, raised when generic
dispatch fails to find a matching method and no default is provided.

## Low-Level Interface

These procedures are used internally by the generic dispatch system and are
generally not needed in user code.

### make-generic
```scheme
(make-generic id (default #f)) -> generic
```

Creates a new generic method object with the given *id* (a symbol) and
optional *default* procedure.

### generic?
```scheme
(generic? obj) -> boolean
```

Returns `#t` if *obj* is a generic method object.

### generic-id
```scheme
(generic-id gen) -> symbol
```

Returns the identifier of the generic method *gen*.

### generic-bind!
```scheme
(generic-bind! gen signature method) -> void
```

Binds *method* (a procedure) to *gen* for the given *signature* (a list of
type descriptors). This is called automatically by `defmethod`.

### generic-dispatch
```scheme
(generic-dispatch gen arg ...) -> value
```

Dispatches a call to generic *gen* with the given arguments. This is called
automatically when invoking a generic.

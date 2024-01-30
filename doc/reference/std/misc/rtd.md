# Type Descriptor Utilities.
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/rtd)
```
:::

## object-type
``` scheme
(object-type obj) -> type | error

  obj := object instance
```

Safe variant of `runtime#object-type`. Returns the class of an object; *obj*
must be an object instance or an error is signaled.

::: tip Examples:
``` scheme
> (defstruct point (x y))
> (object-type (make-point 640 480))
#<type #4 point>
> (eq? point::t #4)
#t
> (object-type 12)
error    ; not segfaulting like runtime#object-type
```
:::

## type?
``` scheme
(type? typ) -> boolean

  typ := type object to check
```

Returns `#t` if *obj* is a type object, `#f` otherwise.

::: tip Examples:
``` scheme
> (defstruct point (x y))
> (type? point::t)
#t
> (type? (object-type (make-point -100 100)))
#t
> (type? (make-point 0 0))
#f
```
:::

## type-id
``` scheme
(type-id typ) -> type id | error

  typ := type object to inspect
```

Returns the id of the type object *typ*. Will signal an error if *typ* isn't a
type object.

::: tip Examples:
``` scheme
> (defstruct a ())
> (defclass  b ())
> (type-id a::t)
#:a::t45
> (type-id b::t)
#:b::t49
> (type-id (object-type (make-b)))
#:b::t49
```
:::

## type=?
``` scheme
(type=? typ1 type2) -> bool

  typ1 := type object
  typ2 := other type object
```

Returns true if the two type objects have the same `type-id`.
This is the preferred equality predicate for types.
`eq?` and `eqv?` should also work;
however, `equal?` may yield surprising results, due to how
the Gerbil type descriptor implementation extends Gambit internals.

::: tip Examples:
``` scheme
> (defstruct a ())
> (defclass  b ())
> (type-id a::t)
#:a::t45
> (type-id b::t)
#:b::t49
> (type=? a::t a::t)
#t
> (type=? a::t b::t)
#f
```
:::

## type-name
``` scheme
(type-name typ) -> type name | error

  typ := type object to inspect
```

Returns the name of the type object *typ*. Will signal an error if *typ* isn't a
type object.

::: tip Examples:
``` scheme
> (defstruct vec3i (x y z))
> (type-name (object-type (make-vec3i 30 0 15)))
vec3i
```
:::

## type-super
``` scheme
(type-super typ) -> super class | error

  typ := type object to inspect
```

Returns the super class of the type object *typ*. Will signal an error if *typ*
isn't a type object.

::: tip Examples:
``` scheme
> (defstruct A (x y))
> (defstruct (B A) (z))
> (struct-subtype? A::t B::t)
#t
> (type-super B::t)
#<type #5 A>
> (type-super A::t)
#f
```
:::

## type-descriptor-precedence-list
``` scheme
(type-descriptor-precedence-list typ) -> list | error

  typ := type descriptor to inspect
```

Safe variant of `runtime#type-descriptor-precedence-list`.
Returns all the super-classes of the type as a list.
The precedence-list is sorted in the order used for method resolution,
from the most-specific element first (not including the type-descriptor itself)
to its least-specific super-class (e.g. a base class it may share with other super-classes, if any).
The precedence-list includes neither the type itself,
nor the special pseudo-classes `object` and `t` as used by `:std/generic`
(but not used by methods defined with the builtin `defmethod`).
*typ* must be a type descriptor or an error is signaled.

::: tip Examples:
``` scheme
> (defclass A (x))
> (defclass (B A) (y))
> (defclass (C A) (z))
> (defclass (D B C) ())
> (type-descriptor-mixin D::t)
(#<type #8 B> #<type #9 C> #<type #10 A>)
> (type-descriptor-mixin B::t)
(#<type #10 A>)
> (type-descriptor-mixin A::t)
()
```
:::

## type-descriptor-all-slots
``` scheme
(type-descriptor-fields typ) -> vector | error

  typ := type descriptor to inspect
```

Safe variant of `runtime#type-descriptor-all-slots`.
Returns a vector containing names of the slots of a direct instance of the type,
including slots inherited from super-classes.
The first entry of the vector returned is `#f`, because the slot indexes are 1-based,
with the 0th entry in a direct instance's underlying vector being the type descriptor itself.
The slots have the same index as in the value returned by `struct->list`.
*typ* must be a type descriptor or an error is signaled.

::: tip Examples:
``` scheme
> (defstruct point (x y))
> (defclass color (r g b a))
> (defclass (3d-point point) (z))
> (defclass (colored-3d-point color 3d-point) ())
> (type-descriptor-all-slots colored-3d-point::t)
#(#f x y z r g b a)
> (struct->list (colored-3d-point r: 1 g: 2 b: 3 a: 4 x: 10 y: 20 z: 30))
(#<type #1 colored-3d-point> 10 20 30 1 2 3 4)
```
:::

## type-descriptor-slot-table
``` scheme
(type-descriptor-slot-table typ) -> hash-table | error

  typ := type descriptor to inspect
```

Safe variant of `runtime#type-descriptor-slot-table`.
Returns the slots of the type as a hash-table, associated to their offset in a direct instance
(as per `type-descriptor-all-slots` above, e.g. `struct->list`). *typ* must be a type descriptor or an error is signaled.
Note that the offsets are 1-based, since offset 0 will be used by the type descriptor itself.

::: tip Examples:
``` scheme
> (defclass color (r g b a))
> (type-descriptor-slot-table color::t)
#<table #6>
> (hash->list #6)
((r . 1) (g . 2) (b . 3) (a: . 4) (g: . 2) (b: . 3) (r: . 1) (a . 4))
```
:::

## type-descriptor-properties
``` scheme
(type-descriptor-properties typ) -> alist | error

  typ := type descriptor to inspect
```

Safe variant of `runtime#type-descriptor-properties`. Returns the type properties of
the type as an alist (NB: not a plist, whatever the name suggests).
*typ* must be a type descriptor or an error is signaled.

::: tip Examples:
``` scheme
> (defstruct point (x y))
> (defclass color (r g b a))
> (defclass (3d-point point) (z))
> (defclass (my-point color 3d-point) (name id) final: #t)
> (type-descriptor-properties my-point::t)
((direct-slots: name id) (direct-supers: #<type #15 color> #<type #16 3d-point>) (final: . #t))
```
:::

## type-descriptor-constructor
``` scheme
(type-descriptor-constructor typ) -> symbol | error

  typ := type descriptor to inspect
```

Safe variant of `runtime#type-descriptor-constructor`.
Returns the constructor ID of the type as a symbol.
*typ* must be a type descriptor or an error is signaled.

::: tip Examples:
``` scheme
> (defclass A (x) constructor: :init!)
> (defmethod {:init! A}
    (lambda (self x)
      (set! (A-x self) (* x 2))))
> (type-descriptor-constructor A::t)
:init!
```
:::

## type-descriptor-methods
``` scheme
(type-descriptor-methods typ) -> hash-table | error

  typ := type descriptor to inspect
```

Safe variant of `runtime#type-descriptor-methods`. Returns the methods
associated with the type as a hash-table. *typ* must be a type descriptor or an
error is signaled.

::: tip Examples:
``` scheme
> (defclass A (x) constructor: :init!)
> (defmethod {:init! A}
    (lambda (self x)
      (set! (A-x self) (* x 2))))
> (type-descriptor-methods A::t)
#<table #11>
> (hash->list #11)
((:init! . #<procedure #12 A:::init!>))
```
:::

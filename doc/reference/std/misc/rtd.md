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

## type-descriptor-mixin
``` scheme
(type-descriptor-mixin typ) -> list | error

  typ := type descriptor to inspect
```

Safe variant of `runtime#type-descriptor-mixin`. Returns the mixins of the type
as a list. *typ* must be a type descriptor or an error is signaled.

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

## type-descriptor-fields
``` scheme
(type-descriptor-fields typ) -> fixnum | error

  typ := type descriptor to inspect
```

Safe variant of `runtime#type-descriptor-fields`. Returns the number of fields
of the type as a fixnum. *typ* must be a type descriptor or an error is
signaled.

::: tip Examples:
``` scheme
> (defstruct color (r g b a))
> (type-descriptor-fields color::t)
4
```
:::

## type-descriptor-plist
``` scheme
(type-descriptor-plist typ) -> alist | error

  typ := type descriptor to inspect
```

Safe variant of `runtime#type-descriptor-plist`. Returns the type properties of
the type as an alist. *typ* must be a type descriptor or an error is signaled.

::: tip Examples:
``` scheme
> (defstruct vec4d (x y z w) final: #t)
> (type-descriptor-plist vec4d::t)
((fields: x y z w) (final: . #t))
```
:::

## type-descriptor-ctor
``` scheme
(type-descriptor-ctor typ) -> symbol | error

  typ := type descriptor to inspect
```

Safe variant of `runtime#type-descriptor-ctor`. Returns the constructor ID of
the type as a symbol. *typ* must be a type descriptor or an error is signaled.

::: tip Examples:
``` scheme
> (defclass A (x) constructor: :init!)
> (defmethod {:init! A}
    (lambda (self x)
      (set! (A-x self) (* x 2))))
> (type-descriptor-ctor A::t)
:init!
```
:::

## type-descriptor-slots
``` scheme
(type-descriptor-slots typ) -> hash-table | error

  typ := type descriptor to inspect
```

Safe variant of `runtime#type-descriptor-slots`. Returns the slots of the type
as a hash-table. *typ* must be a type descriptor or an error is signaled.

::: tip Examples:
``` scheme
> (defclass color (r g b a))
> (type-descriptor-slots color::t)
#<table #6>
> (hash->list #6)
((r . 0) (g . 1) (b . 2) (a: . 3) (g: . 1) (b: . 2) (r: . 0) (a . 3))
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

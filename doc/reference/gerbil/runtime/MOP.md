# MOP

See the [Guide](/guide/intro.md#structs-and-classes)
for an introduction to Gerbil's object system.
These procedures provide the meta-object protocol.

## make-object
``` scheme
(make-object class fields) -> object

  class  := type-descriptor; the class of the constructed object
  fields := the number of fields in the object
```

Creates an object with class *class* and *fields* fields.

## object?
``` scheme
(object? obj) -> boolean

  obj := any object
```

Returns true if *obj* is an object instance.

## object-type
``` scheme
(object-type obj) -> type

  obj := any object
```

Returns the class of an object; *obj* _must_ be an object instance.

## type-descriptor?
``` scheme
(type-descriptor? obj) -> boolean

  obj := any object
```
:::

Returns true if *obj* is a runtime type descriptor.

## struct-type?
``` scheme
(struct-type? obj) -> boolean

  obj := any object
```
:::

Returns true if *obj* is a struct type descriptor.

## class-type?
``` scheme
(class-type? obj) -> boolean

  obj := any object
```

Returns true if *obj* is a class type descriptor.

## struct-subtype?
``` scheme
(struct-subtype? a b) -> boolean

  a, b := type-descriptor
```

Returns true if *b* is a struct subtype of *a*; *a* and *b* _must_ be type descriptors.

This procedures checks the inheritance chain of *b*; *b* is a struct subtype
of *a* if it is included in *b*'s inheritance chain.

## class-subtype?
``` scheme
(class-subtype? a b) -> boolean

  a, b := type-descriptor
```

Returns true if *b* is a class subtype of *a*; *a* and *b* _must_ be type descriptors.

This procedures checks the linearized mixin list of *b*; *b* is a class subtype
of *a* if it is included in *b*'s mixins.

## direct-instance?
``` scheme
(direct-instance? klass obj) -> boolean

  klass := type-descriptor
```

Returns true if *obj* is an immediate instance of *klass*.

## struct-instance?
``` scheme
(struct-instance? klass obj) -> boolean

  klass := type-descriptor
  obj   := any object
```

Returns true if *obj* is a struct instance of *klass*.

This procedures checks the inheritance chain of *obj*'s type; *obj* is a struct
instance of *klass* if it is an object and its type is includes *klass* in its
inheritance chain.

## direct-struct-instance?
``` scheme
(direct-struct-instance? klass obj) -> boolean

  klass := type-descriptor
  obj   := any object
```

Same as `(direct-instance? klass obj)`.

## class-instance?
``` scheme
(class-instance? klass obj) -> boolean

  klass := type-descriptor
  obj   := any object
```

Returns true if *obj* is a class instance of *klass*.

This procedures checks the linearized mixin list of *obj*'s type; *obj* is a class
instance of *klass* if it is an object and its type is includes *klass* in its
mixin list.

## direct-class-instance?
``` scheme
(direct-class-instance? klass obj) -> boolean

  klass := type-descriptor
  obj   := any object
```

Same as `(direct-instance? klass obj)`.

## make-struct-type
``` scheme
(make-struct-type id super fields name plist ctor [field-names = #f]) -> type-descriptor

  id          := symbol; the type id
  super       := type-descriptor or #f; the struct type to inherit from
  fields      := fixnum; number of (new) fields in the type
  name        := symbol; the (displayed) type name
  plist       := alist; type properties
  ctor        := symbol or #f; id of constructor method
  field-names := list of symbols or #f; (displayed) field names

plist elements:
 (transparent: . boolean) ; controls whether the object is transparent
                            in equality and printing
 (final: . boolean)       ; controls whether the class if final
 (print: field ...)       ; printable field names
 (equal: field ...)       ; equality comparable field names
```

Creates a new struct type descriptor.

## make-struct-predicate
``` scheme
(make-struct-predicate klass) -> procedure

  klass := type-descriptor
```
:::

Creates a struct instance predicate for instances of *klass*.

## make-struct-field-accessor
``` scheme
(make-struct-field-accessor klass field) -> procedure

  klass := type-descriptor
  field := fixnum

```

Creates a *klass* instance accessor for field *field* (relative to super).

## make-struct-field-mutator
``` scheme
(make-struct-field-mutator klass field) -> procedure

  klass := type-descriptor
  field := fixnum
```

Creates a *klass* instance mutator for field *field* (relative to super).

## make-struct-field-unchecked-accessor
``` scheme
(make-struct-field-unchecked-accessor klass field) -> procedure

  klass := type-descriptor
  field := fixnum
```

Like `make-struct-field-accessor`, but the accessor is unchecked.

## make-struct-field-unchecked-mutator
``` scheme
(make-struct-field-unchecked-mutator klass field) -> procedure

  klass := type-descriptor
  field := fixnum
```

Like `make-struct-field-mutator`, but the mutator is unchecked.

## make-struct-instance
``` scheme
(make-struct-instance klass . args) -> object

  klass := type-descriptor
  args  := rest of arguments
```

Creates a new instance of *klass*. If there is a constructor method,
it will be invoked with *args* on a freshly allocated object.
Otherwise, the object is initialized with *args*, which must have the
same length as the struct has fields.

## struct-instance-init!
``` scheme
(struct-instance-init! obj . args)

  obj  := any object
  args := rest of arguments
```

Initializes *obj* by setting its fields to *args* from left to right.
If there are more fields than arguments, then they are left uninitialized.
It is an error if there are more arguments than fields in the object.

## struct-field-offset
``` scheme
(struct-field-offset klass field) -> fixnum

  klass := type-descriptor
  field := fixnum

```

Returns the absolute field offset for *klass*'s field *field*.

## struct-field-ref
``` scheme
(struct-field-ref klass obj off) -> any

  klass := type-descriptor
  obj   := instance of klass
  off   := fixnum; absolute field offset
```
:::

Accesses *obj*'s field with absolute offset *off*;
*obj* is checked to be an instance of *klass*.

## struct-field-set!
``` scheme
(struct-field-set! klass obj off val) -> void

  klass := type-descriptor
  obj := instance of klass
  off := fixnum; absolute field offset
  val := any
```

Mutates *obj*'s field with absolute offset *off* to *val*;
*obj* is checked to be an instance of *klass*.

## unchecked-field-ref
``` scheme
(unchecked-field-ref obj off) -> any

  obj := instance of klass
  off := fixnum; absolute field offset
```

Accesses *obj*'s field with absolute offset *off*; there is no type check.

## unchecked-field-set!
``` scheme
(unchecked-field-set! obj off val) -> void
```

Mutates *obj*'s field with absolute offset *off* to *val*; there is no type check.

## struct->list
``` scheme
(struct->list obj) -> list

  obj := any object
```

Converts *obj* to a list, which conses its type and to its fields.

## make-class-type
``` scheme
(make-class-type id name direct-supers direct-slots alist constructor) -> type-descriptor

  id             := symbol; the unique type id
  name           := symbol; the possibly not unique source type name
  direct-supers  := list of type-descriptors or #f; super types
  direct-slots   := list of symbols; class slot names
  alist          := alist; type properties
  constructor    := symbol or #f; id of constructor method

alist elements:
 (transparent: . boolean) ; controls whether the object is transparent
                            in equality and printing
 (final: . boolean)       ; controls whether the class if final
 (print: slot ...)        ; printable slots
 (equal: slot ...)        ; equality comparable slots
```

Creates a new class type descriptor.


## make-class-predicate
``` scheme
(make-class-predicate klass) -> procedure

  klass := type-descriptor
```

Creates a class instance predicate for instances of *klass*.

## make-class-slot-accessor
``` scheme
(make-class-slot-accessor klass slot) -> procedure

  klass := type-descriptor
  slot  := symbol
```

Creates a slot accessor for *slot*.

## make-class-slot-mutator
``` scheme
(make-class-slot-mutator klass slot) -> procedure

  klass := type-descriptor
  slot  := symbol
```

Creates a slot mutator for *slot*.

## make-class-slot-unchecked-accessor
``` scheme
(make-class-slot-unchecked-accessor klass slot) -> procedure

  klass := type-descriptor
  slot  := symbol
```

Like `make-class-slot-accessor`, but creates an unchecked accessor.


## make-class-slot-unchecked-mutator
``` scheme
(make-class-slot-unchecked-mutator klass slot) -> procedure

  klass := type-descriptor
  slot  := symbol
```

Like `make-class-slot-mutator`, but creates an unchecked mutator.

## make-class-instance
``` scheme
(make-class-instance klass . args) -> object

  klass := type-descriptor
  args  := rest of arguments
```

Creates a new instance of *klass*. If there is a constructor method,
it will be invoked with *args* on a freshly allocated object.
Otherwise, the object is initialized with *args*, which must be a plist
of slot keywords/symbols and values.

## class-instance-init!
``` scheme
(class-instance-init! obj . args)

  obj  := any object
  args := rest of arguments
```

Initializes *obj*, using *args* as a plist of slot keywords/symbols and values.
For every slot and value in the plist, the corresponding object slot is set to
the value.


## class-slot-offset
``` scheme
(class-slot-offset klass slot) -> fixnum

  klass := type-descriptor
  slot  := symbol or keyword
```

Returns the absolute field offset for *slot* in instances of *klass*.

## class-slot-ref
``` scheme
(class-slot-ref klass obj slot) -> any

  klass := type-descriptor
  obj   := instance of klass
  slot  := symbol or keyword
```

Checks that *obj* is a class instance of *klass* and returns the value in slot *slot*.

## class-slot-set!
``` scheme
(class-slot-set! klass obj slot val) -> void

  klass := type-descriptor
  obj   := instance of klass
  slot  := symbol or keyword
  val   := any
```

Checks that *obj* is a class instance of *klass* and sets the value in the slot *slot*
to *val*.

## slot-ref
``` scheme
(slot-ref obj slot [E = slot-error]) -> any

  obj  := object
  slot := symbol or keyword
  E    := procedure
```

Returns the value associated with slot *slot* in *obj*.
If the object has no such slot, then *E* is invoked in tail position as `(E obj slot)`.
By default, this raises an error.

## slot-set!
``` scheme
(slot-set! obj slot val [E = slot-error]) -> void

  obj  := object
  slot := symbol or keyword
  val  := any
  E    := procedure;
```

Sets the value associated with slot *slot* in *obj* to *val*.
If the object has no such slot, then *E* is invoked in tail position as `(E obj slot)`.
By default, this raises an error.

## unchecked-slot-ref
``` scheme
(unchecked-slot-ref obj slot) -> any

  obj  := object
  slot := symbol or keyword
```

Returns the value associated with slot *slot* in *obj*, without any checks.

## unchecked-slot-set!
``` scheme
(unchecked-slot-set! obj slot val) -> void

  obj  := object
  slot := symbol or keyword
  val  := any
```

Sets the value associated with slot *slot* in *obj* to *val*, without any checks.

## class->list
``` scheme
(class->list obj)

  obj := any object
```

Converts *obj* to a list, which conses its type and to a plist of slot keywords
and values.

## bind-method!
``` scheme
(bind-method! klass id proc [rebind? = #t]) -> void

  klass   := type-descriptor or builtin record descriptor
  id      := symbol; method id
  proc    := procedure; method implementation
  rebind? := boolean; allow method rebinding?
```

Binds *proc* as the method with *id* in class *klass*.

## call-method
``` scheme
(call-method obj id . args) -> any

  obj  := any object
  id   := symbol; method id
  args := rest of arguments
```

Applies the method with *id* in *obj* to *args*, with the object itself
as the first argument. Raises an error if the object has no such method bound.

## find-method
``` scheme
(find-method klass id) -> procedure | #f

  klass := type-descriptor or builtin record descriptor
  id    := symbol; method id
```

Looks up the method with *id* in klass *class*. Returns the procedure
implementing the method or `#f` if the method is not bound in the class
hierarchy.

## call-next-method
``` scheme
(call-next-method klass obj id . args) -> any

  klass := type-descriptor or builtin record descriptor
  obj   := object
  id    := symbol; method id
```

Invokes the next method in *obj*'s hierarchy, following *klass*.

## next-method
``` scheme
(next-method klass obj id) -> procedure | #f

  klass := type-descriptor or builtin record descriptor
  obj   := object
  id    := symbol; method id
```

Returns the next method in *obj*'s hierarchy, following *klass*.

## method-ref
``` scheme
(method-ref obj id) -> procedure | #f
  obj := object
  id  := symbol; method id
```

Looks up the method with *id* in *obj*'s hierarchy.

## bound-method-ref
``` scheme
(bound-method-ref obj id) -> procedure | #f

  obj := object
  id  := symbol; method id
```

Looks up the method with *id* in *obj*'s hierarchy and returns
a procedure which applies the method currying the object.

## checked-method-ref
``` scheme
(checked-method-ref obj id) -> procedure | #f
  obj := object
  id  := symbol; method id
```

Like `method-ref`, but raises an error if the method is not found.

## checked-bound-method-ref
``` scheme
(checked-bound-method-ref obj id) -> procedure | #f

  obj := object
  id  := symbol; method id
```

Like `bound-method-ref`, but raises an error if the method is not found.

## direct-method-ref
``` scheme
(direct-method-ref klass id) -> procedure | #f

  klass := type-descriptor
  id    := symbol; method id
```

Returns the binding of method with `id` in class `klass`.

## seal-class!
```scheme
(seal-class! klass) -> unspecified

  klass := type-descriptor
```

Seals a class, which must be _final_. Sealing a class specializes and coalesces
all methods in the hierarchy to the class' method table.

## bind-specializer!
```scheme
(bind-specializer! method specializer) -> unspecified

  method      := procedure implementing a method
  specializer := procedure of one argument that returns the specialized method
```

Binds a specializer procedure associated with a method. When a class
is sealed, the specializer is invoked with the concrete class to
generate a version of the method that is specialized for the concrete
class.


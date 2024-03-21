# MOP

See the [Guide](/guide/intro.md#objective-gerbil)
for an introduction to Gerbil's object system.
These procedures provide the meta-object protocol.

## MOP Procedures
### class-type?
```scheme
(class-type? o)
```
Returns true if *o* is a standard class.

### class-type=?
```scheme
(class-type=? klass other-klass)

  klass, other-klass := class
```

Returns true if both classes have the same type id.

### class-type-final?
```scheme
(class-type-final? klass)

  klass := class
```

Returns true if a class is final.

### class-type-struct?
```scheme
(class-type-struct? klass)

  klass := class
```

Returns true if a class has the struct property.

### class-type-sealed?
```scheme
(class-type-sealed? klass)

 klass := class
```

Returns true if a class has been sealed.

### class-type-metaclass?
```scheme
(class-type-metaclass? klass)
```

Returns true if a class has the metaclass property.

### class-type-system?
```scheme
(class-type-system? klass)
```

Returns true if a class has the metaclass property.

### class-type-id
```scheme
(class-type-id klass)
```

Returns the type id of a class

### class-type-name
```scheme
(class-type-name klass)
```

Returns the name of a class

### class-type-super
```scheme
(class-type-super klass)
```

Returns the super class of a class; applicable to struct only.

### class-type-flags
```scheme
(class-type-flags klass)
```

Returns the flags of a class.

### class-type-fields
```scheme
(class-type-fields klass)
```

Returns the field vector of a class

### class-type-precedence-list
```scheme
(class-type-precedence-list klass)
```

Returns the precedence list of a class

### class-type-slot-vector
```scheme
(class-type-slot-vector klass)
```

Returns the slot vector of a class

### class-type-slot-table
```scheme
(class-type-slot-table klass)
```

Returns the slot table of a class

### class-type-properties
```scheme
(class-type-properties klass)
```

Returns the properties of a class, as an associative list

### class-type-constructor
```scheme
(class-type-constructor klass)
```

Returns the constructor method id of a class or `#f` if none

### class-type-methods
```scheme
(class-type-methods klass)
```

Returns a symbol table with the direct methods of a class or `#f` if
it has no direct methods.

### class-type-slot-list
```scheme
(class-type-slot-list klass)
```

Returns the list of slots of a class, as laid out in the object.

### class-type-field-count
```scheme
(class-type-field-count klass)
```

Returns the number of fields in a class

### class-type-seal!
```scheme
(class-type-seal! klass)
```

Sets the sealed flag on a class.

### subclass?
```scheme
(subclass? maybe-sub-class maybe-super-class)
```

Returns true if a class is a subclass of another class.

### substruct?
```scheme
(substruct? maybe-sub-struct maybe-super-struct)
```

Returns true if a class is a substruct of a nother class

### make-class-type
``` scheme
(make-class-type id name direct-supers direct-slots properties constructor) -> type-descriptor

  id             := symbol; the unique type id
  name           := symbol; the possibly not unique source type name used when displaying the class
  direct-supers  := list of type-descriptors or #f; super types
  direct-slots   := list of symbols; class slot names
  properties     := alist; type properties (NB: not a plist)
  constructor    := symbol or #f; id of constructor method

alist elements:
 (transparent: . boolean) ; controls whether the object is transparent
                            in equality and printing
 (final: . boolean)       ; controls whether the class if final
 (struct: . boolean)      ; controls whether the class is a struct
 (print: slot ...)        ; list of printable slots, or boolean
 (equal: slot ...)        ; list of equality comparable slots, or boolean
```

Creates a new class

### make-class-predicate
```scheme
(make-class-predicate klass) -> procedure

  klass := class
```

Creates a class instance predicate for instances of *klass*.

### make-class-slot-accessor
```scheme
(make-class-slot-accessor klass slot) -> procedure

  klass := class
  slot  := symbol
```

Creates a slot accessor for *slot*.

### make-class-slot-mutator
```scheme
(make-class-slot-mutator klass slot) -> procedure

  klass := class
  slot  := symbol
```

Creates a slot mutator for *slot*.

### make-class-slot-unchecked-accessor
```scheme
(make-class-slot-unchecked-accessor klass slot) -> procedure

  klass := class
  slot  := symbol
```

Like `make-class-slot-accessor`, but creates an unchecked accessor.

### make-class-slot-unchecked-mutator
```scheme
(make-class-slot-unchecked-mutator klass slot)  -> procedure

  klass := class
  slot  := symbol
```

Like `make-class-slot-mutator`, but creates an unchecked mutator.

### direct-instance?
```scheme
(direct-instance? klass obj) -> bool
```

Returns true if *obj* is an immediate instance of *klass*.

### struct-instance?
```scheme
(struct-instance? klass obj)
```

Returns true if *obj* is a struct instance of *klass*.

This procedures checks the inheritance chain of *obj*'s type; *obj* is a struct
instance of *klass* if it is an object and its type is includes *klass* in its
inheritance chain.

### class-instance?
```scheme
(class-instance? klass obj)
```

Returns true if *obj* is a class instance of *klass*.

This procedures checks the precedence list of *obj*'s class; *obj* is a class
instance of *klass* if it is an object and its class includes *klass* in its
precedence list.

### make-object
```scheme
(make-object klass k) -> object

  klass := class; the new objects's class
  k     := fixnum; the field count in the object, including the class
```

Creates an object with class *klass* and *k* fields, initialized with `#f`.

### object?
```scheme
(object? o) -> boolean
```

Returns true if *o* is a standard object instance.

### object-type
```scheme
(object-type obj)
```

Returns the class of a standard object; *obj* _should_ be a standard object instance.

### object-fill!
```scheme
(object-fill! obj fill)

  obj  := object
  fill := any
```

Initializes an object *obj* with a value of *fill*

### new-instance
```scheme
(new-instance klass)

  klass := class
```

Creates a new instance of *klass* without invoking the constructor.
All slots are initialized with `#f`

### make-instance
```scheme
(make-instance klass . args)

  klass := class
```

Creates a new instance of *klass* and initializes it with the appropriate
constructor with arguments `args`.

### struct-instance-init!
```scheme
(struct-instance-init! obj . args)

  obj := object
```

Initializes *obj* by setting its fields to *args* from left to right.
If there are more fields than arguments, then they are left uninitialized.
It is an error if there are more arguments than fields in the object.

### class-instance-init!
```scheme
(class-instance-init! obj . args)

  obj := object
```

Initializes *obj*, using *args* as a plist of slot keywords/symbols and values.
For every slot and value in the plist, the corresponding object slot is set to
the value.

### constructor-init!
```scheme
(constructor-init! klass kons-id obj . args)

  klass := class
  kons-id := symbol; constructor method
  obj := object
```

Initializes *obj* by applying the constructor with id `kons-id` from
the class `klass`.


### struct-copy
```scheme
(struct-copy obj)
```
Copies an object.

### struct->list
```scheme
(struct->list obj) -> list

  obj := object
```

Converts an object to a list, with the class in the car and the fields
in order in the cdr.

### class->list
```scheme
(class->list obj) -> list
```

Converts an object to a list, with the class in the car and a plist of
slots and values in the cdr.

### slot-ref
```scheme
(slot-ref obj slot [E]))

  obj  := object
  slot := symbol or keyword
  E    := procedure
```

Returns the value associated with slot *slot* in *obj*.
If the object has no such slot, then *E* is invoked in tail position as `(E obj slot)`.
By default, this raises an error.


### slot-set!
```scheme
(slot-set! obj slot val [E])

  obj  := object
  slot := symbol or keyword
  val  := any
  E    := procedure;
```

Sets the value associated with slot *slot* in *obj* to *val*.
If the object has no such slot, then *E* is invoked in tail position as `(E obj slot)`.
By default, this raises an error.

### unchecked-slot-ref
```scheme
(unchecked-slot-ref obj slot)

  obj  := object
  slot := symbol or keyword
```

Returns the value associated with slot *slot* in *obj*, without any checks.

**Warning** This is an unsafe procedure.

### unchecked-slot-set!
```scheme
(unchecked-slot-set! obj slot val)

  obj  := object
  slot := symbol or keyword
  val  := any
```

Sets the value associated with slot *slot* in *obj* to *val*, without any checks.

**Warning** This is an unsafe procedure.

### call-method
```scheme
(call-method obj id . args)

  obj  := any object
  id   := symbol; method id
  args := rest of arguments
```

Applies the method with *id* in *obj* to *args*, with the object itself
as the first argument. Raises an error if the object has no such method bound.

### method-ref
```scheme
(method-ref obj id) -> procedure | #f

  obj := object
  id  := symbol; method id
```

Looks up the method with *id* in *obj*'s class hierarchy.

### checked-method-ref
```scheme
(checked-method-ref obj id) -> procedure

  obj := object
  id  := symbol; method id
```

Like `method-ref`, but raises an error if the method is not found.

### bound-method-ref
```scheme
(bound-method-ref obj id) -> procedure | #f

  obj := object
  id  := symbol; method id
```

Looks up the method with *id* in *obj*'s hierarchy and returns
a procedure which applies the method currying the object.

### checked-bound-method-ref
```scheme
(checked-bound-method-ref obj id) -> procedure

  obj := object
  id  := symbol; method id
```

Like `bound-method-ref`, but raises an error if the method is not found.

### direct-method-ref
```scheme
(direct-method-ref klass obj id) -> procedure | #f

  klass := class
  id    := symbol; method id

```
Returns the (direct) binding of method with `id` in class `klass`.

**Warning** This is an unsafe procedure.

### find-method
```scheme
(find-method klass obj id)
```

### bind-method!
```scheme
(bind-method! klass id proc [rebind? = #f])

  klass   := class
  id      := symbol; method id
  proc    := procedure; method implementation
  rebind? := boolean; allow method rebinding?
```

inds *proc* as the method with *id* in class *klass*.

### bind-specializer!
```scheme
(bind-specializer! method-proc specializer)

  method      := procedure implementing a method
  specializer := procedure of two arguments,  that returns the specialized method

```

Binds a specializer procedure associated with a method. When a class
is sealed or an interface instance prototype is created, the
specializer is invoked with the concrete class to generate a version
of the method that is specialized for the concrete class.

### seal-class!
```scheme
(seal-class! klass)

  klass := class
```

Seals a class, which must be _final_. Sealing a class specializes and coalesces
all methods in the hierarchy to the class' method table.

### next-method
```scheme
(next-method klass obj id) -> procedure | #f

  klass := type-descriptor or builtin record descriptor
  obj   := object
  id    := symbol; method id
```

Returns the next method in *obj*'s hierarchy, following *klass*.

### call-next-method
```scheme
(call-next-method klass obj id . args) -> any

  klass := type-descriptor or builtin record descriptor
  obj   := object
  id    := symbol; method id
```

Invokes the next method in *obj*'s hierarchy, following *klass*.

### class-of
```scheme
(class-of o) -> class

 o := any
```

Returns the class of an object or primitive value.

## Predefined Classes

### t::t
### class::t
### object::t
### immediate::t
### atom::t
### char::t
### boolean::t
### true::t
### false::t
### void::t
### eof::t
### special::t
### number::t
### real::t
### integer::t
### fixnum::t
### bignum::t
### ratnum::t
### flonum::t
### cpxnum::t
### symbolic::t
### symbol::t
### keyword::t
### list::t
### pair::t
### null::t
### sequence::t
### vector::t
### string::t
### hvector::t
### u8vector::t
### s8vector::t
### u16vector::t
### s16vector::t
### u32vector::t
### s32vector::t
### u64vector::t
### s64vector::t
### f32vector::t
### f64vector::t
### values::t
### box::t
### frame::t
### continuation::t
### promise::t
### weak::t
### foreign::t
### procedure::t
### time::t
### thread::t
### thread-group::t
### mutex::t
### condvar::t
### port::t
### object-port::t
### character-port::t
### byte-port::t
### device-port::t
### vector-port::t
### string-port::t
### u8vector-port::t
### raw-device-port::t
### tcp-server-port::t
### udp-port::t
### directory-port::t
### event-queue-port::t
### table::t
### readenv::t
### writeenv::t
### readtable::t
### processor::t
### vm::t
### file-info::t
### socket-info::t
### address-info::t

## System Object Predicates
### special?
### sequence?
### hvector?
### weak?
### object-port?
### character-port?
### byte-port?
### character-port?
### device-port?
### vector-port?
### string-port?
### u8vector-port?
### raw-device-port?
### tcp-server-port?
### udp-port?
### directory-port?
### event-queue-port?
### readenv?
### writenv?
### vm?

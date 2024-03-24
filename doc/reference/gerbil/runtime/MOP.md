# MOP

See the [Guide](/guide/intro.md#objective-gerbil)
for an introduction to Gerbil's object system.
These procedures provide the meta-object protocol.

## MOP Procedures
### class-type?
```scheme
(class-type? o) -> boolean
```
Returns true if *o* is a standard class.

### class-type=?
```scheme
(class-type=? klass other-klass) -> boolean

  klass, other-klass := class
```

Returns true if both classes have the same type id.

### class-type-final?
```scheme
(class-type-final? klass) -> boolean

  klass := class
```

Returns true if a class is final.

### class-type-struct?
```scheme
(class-type-struct? klass) -> boolean

  klass := class
```

Returns true if a class has the struct property.

### class-type-sealed?
```scheme
(class-type-sealed? klass) -> boolean

  klass := class
```

Returns true if a class has been sealed.

### class-type-metaclass?
```scheme
(class-type-metaclass? klass) -> boolean

  klass := class
```

Returns true if a class has the metaclass property.

### class-type-system?
```scheme
(class-type-system? klass) -> boolean

  klass := class
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

Creates a new class.

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
All slots are initialized with `#f`.

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

::: warning
This is an unsafe procedure.
:::

### unchecked-slot-set!
```scheme
(unchecked-slot-set! obj slot val)

  obj  := object
  slot := symbol or keyword
  val  := any
```

Sets the value associated with slot *slot* in *obj* to *val*, without any checks.

::: warning
This is an unsafe procedure.
:::

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

Binds *proc* as the method with *id* in class *klass*.

### bind-specializer!
```scheme
(bind-specializer! method-proc specializer)

  method      := procedure implementing a method
  specializer := procedure of two arguments,  that returns the specialized method

```

Binds a specializer procedure associated with a method. When a class
is sealed or an interface instance prototype is created, the
specializer is invoked with the concrete class and the specialized method
table to generate a version of the method that is specialized for the
concrete class.

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
```scheme
(def t::t ...)
```

The class of everything.

### class::t
```scheme
(def class::t ...)
```

The class of classes.

### object::t
```scheme
(def object::t ...)
```

The class of standard objects.

### immediate::t
```scheme
(defsystem-class immediate::t immediate ())
```

### atom::t
```scheme
(defsystem-class atom::t atom (immediate::t))
```


### char::t
```scheme
(defsystem-class char::t char (immediate::t))
```

### boolean::t
```scheme
(defsystem-class boolean::t boolean (immediate::t))
```

### true::t
```scheme
(defsystem-class true::t true (boolean::t atom::t))
```

### false::t
```scheme
(defsystem-class false::t false (boolean::t atom::t))
```

### void::t
```scheme
(defsystem-class void::t void (atom::t))
```

### eof::t
```scheme
(defsystem-class eof::t eof (atom::t))
```

### special::t
```scheme
(defsystem-class special::t special (atom::t))
```

### number::t
```scheme
(defsystem-class number::t number ())
```

### real::t
```scheme
(defsystem-class real::t real (number::t))
```

### integer::t
```scheme
(defsystem-class integer::t integer (real::t))
```

### fixnum::t
```scheme
(defsystem-class fixnum::t fixnum (integer::t immediate::t))
```

### bignum::t
```scheme
(defsystem-class bignum::t bignum (integer::t))
```

### ratnum::t
```scheme
(defsystem-class ratnum::t ratnum (real::t))
```

### flonum::t
```scheme
(defsystem-class flonum::t flonum (real::t))
```

### cpxnum::t
```scheme
(defsystem-class cpxnum::t cpxnum (number::t))
```

### symbolic::t
```scheme
(defsystem-class symbolic::t symbolic ())
```

### symbol::t
```scheme
(defsystem-class symbol::t symbol (symbolic::t))
```

### keyword::t
```scheme
(defsystem-class keyword::t keyword (symbolic::t))
```

### list::t
```scheme
(defsystem-class list::t list ())
```


### pair::t
```scheme
(defsystem-class pair::t pair (list::t))
```

### null::t
```scheme
(defsystem-class null::t null (list::t atom::t))
```

### sequence::t
```scheme
(defsystem-class sequence::t sequence ())
```

### vector::t
```scheme
(defsystem-class vector::t vector (sequence::t))
```

### string::t
```scheme
(defsystem-class string::t string (sequence::t))
```

### hvector::t
```scheme
(defsystem-class hvector::t hvector (sequence::t))
```

### u8vector::t
```scheme
(defsystem-class u8vector::t u8vector (hvector::t))
```

### s8vector::t
```scheme
(defsystem-class s8vector::t s8vector (hvector::t))
```

### u16vector::t
```scheme
(defsystem-class u16vector::t u16vector (hvector::t))
```

### s16vector::t
```scheme
(defsystem-class s16vector::t s16vector (hvector::t))
```

### u32vector::t
```scheme
(defsystem-class u32vector::t u32vector (hvector::t))
```

### s32vector::t
```scheme
(defsystem-class s32vector::t s32vector (hvector::t))
```

### u64vector::t
```scheme
(defsystem-class u64vector::t u64vector (hvector::t))
```

### s64vector::t
```scheme
(defsystem-class s64vector::t s64vector (hvector::t))
```

### f32vector::t
```scheme
(defsystem-class f32vector::t f32vector (hvector::t))
```

### f64vector::t
```scheme
(defsystem-class f64vector::t f64vector (hvector::t))
```

### values::t
```scheme
(defsystem-class values::t values ())
```

### box::t
```scheme
(defsystem-class box::t box ())
```

### frame::t
```scheme
(defsystem-class frame::t frame ())
```


### continuation::t
```scheme
(defsystem-class continuation::t continuation ())
```

### promise::t
```scheme
(defsystem-class promise::t promise ())
```

### weak::t
```scheme
(defsystem-class weak::t weak ())
```

### foreign::t
```scheme
(defsystem-class foreign::t foreign ())
```

### procedure::t
```scheme
(defsystem-class procedure::t procedure ())
```


### return::t
```scheme
(defsystem-class return::t return ())
```


### time::t
```scheme
(defshadow-class time::t () (macro-type-time))
```

### thread::t
```scheme
(defshadow-class thread::t () (macro-type-thread))
```

### thread-group::t
```scheme
(defshadow-class thread-group::t () (macro-type-tgroup))
```

### mutex::t
```scheme
(defshadow-class mutex::t () (macro-type-mutex))
```

### condvar::t
```scheme
(defshadow-class condvar::t () (macro-type-condvar))
```

### port::t
```scheme
(defshadow-class port::t () (macro-type-port))
```

### object-port::t
```scheme
(defshadow-class object-port::t (port::t) (macro-type-object-port))
```

### character-port::t
```scheme
(defshadow-class character-port::t (object-port::t) (macro-type-character-port))
```

### byte-port::t
```scheme
(defshadow-class byte-port::t (character-port::t) (macro-type-byte-port))
```

### device-port::t
```scheme
(defshadow-class device-port::t (byte-port::t) (macro-type-device-port))
```

### vector-port::t
```scheme
(defshadow-class vector-port::t (object-port::t) (macro-type-vector-port))
```

### string-port::t
```scheme
(defshadow-class string-port::t (character-port::t) (macro-type-string-port))
```

### u8vector-port::t
```scheme
(defshadow-class u8vector-port::t (byte-port::t) (macro-type-u8vector-port))
```

### raw-device-port::t
```scheme
(defshadow-class raw-device-port::t (port::t) (macro-type-raw-device-port))
```

### tcp-server-port::t
```scheme
(defshadow-class tcp-server-port::t (object-port::t) (macro-type-tcp-server-port))
```

### udp-port::t
```scheme
(defshadow-class udp-port::t (object-port::t) (macro-type-udp-port))
```

### directory-port::t
```scheme
(defshadow-class directory-port::t (object-port::t) (macro-type-directory-port))
```

### event-queue-port::t
```scheme
(defshadow-class event-queue-port::t (object-port::t) (macro-type-event-queue-port))
```

### table::t
```scheme
(defshadow-class table::t () (macro-type-table))
```

### readenv::t
```scheme
(defshadow-class readenv::t () (macro-type-readenv))
```

### writeenv::t
```scheme
(defshadow-class writeenv::t () (macro-type-writeenv))
```

### readtable::t
```scheme
(defshadow-class readtable::t () (macro-type-readtable))
```

### processor::t
```scheme
(defshadow-class processor::t () (macro-type-processor))
```

### vm::t
```scheme
(defshadow-class vm::t () (macro-type-vm))
```

### file-info::t
```scheme
(defshadow-class file-info::t () (macro-type-file-info))
```

### socket-info::t
```scheme
(defshadow-class socket-info::t () (macro-type-socket-info))
```

### address-info::t
```scheme
(defshadow-class address-info::t () (macro-type-address-info))
```


## System Object Predicates
### special?
```scheme
(special? o) -> boolean
```
### sequence?
```scheme
(sequence? o) -> boolean
```
### hvector?
```scheme
(hvector? o) -> boolean
```
### weak?
```scheme
(weak? o) -> boolean
```
### object-port?
```scheme
(object-port? o) -> boolean
```
### character-port?
```scheme
(character-port? o) -> boolean
```
### byte-port?
```scheme
(byte-port? o) -> boolean
```
### character-port?
```scheme
(character-port? o) -> boolean
```
### device-port?
```scheme
(device-port? o) -> boolean
```
### vector-port?
```scheme
(vector-port? o) -> boolean
```
### string-port?
```scheme
(string-port? o) -> boolean
```
### u8vector-port?
```scheme
(u8vector-port? o) -> boolean
```
### raw-device-port?
```scheme
(raw-device-port? o) -> boolean
```
### tcp-server-port?
```scheme
(tcp-server-port? o) -> boolean
```
### udp-port?
```scheme
(udp-port? o) -> boolean
```
### directory-port?
```scheme
(directory-port? o) -> boolean
```
### event-queue-port?
```scheme
(event-queue-port? o) -> boolean
```
### readenv?
```scheme
(readenv? o) -> boolean
```
### writenv?
```scheme
(writenv? o) -> boolean
```
### vm?
```scheme
(vm? o) -> boolean
```

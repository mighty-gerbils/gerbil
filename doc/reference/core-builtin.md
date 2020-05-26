# Runtime Builtins

The following procedures are available in the Gerbil runtime, in
addition to all core Scheme and Gambit primitives.

## MOP

See the [Guide](/guide/intro.md#structs-and-classes)
for an introduction to Gerbil's object system.
These procedures provide the meta-object protocol.

### make-object
``` scheme
(make-object class fields) -> object

  class  := type-descriptor; the class of the constructed object
  fields := the number of fields in the object
```

Creates an object with class *class* and *fields* fields.

### object?
``` scheme
(object? obj) -> boolean

  obj := any object
```

Returns true if *obj* is an object instance.

### object-type
``` scheme
(object-type obj) -> type

  obj := any object
```

Returns the class of an object; *obj* _must_ be an object instance.

### type-descriptor?
``` scheme
(type-descriptor? obj) -> boolean

  obj := any object
```
:::

Returns true if *obj* is a runtime type descriptor.

### struct-type?
``` scheme
(struct-type? obj) -> boolean

  obj := any object
```
:::

Returns true if *obj* is a struct type descriptor.

### class-type?
``` scheme
(class-type? obj) -> boolean

  obj := any object
```

Returns true if *obj* is a class type descriptor.

### struct-subtype?
``` scheme
(struct-subtype? a b) -> boolean

  a, b := type-descriptor
```

Returns true if *b* is a struct subtype of *a*; *a* and *b* _must_ be type descriptors.

This procedures checks the inheritance chain of *b*; *b* is a struct subtype
of *a* if it is included in *b*'s inheritance chain.

### class-subtype?
``` scheme
(class-subtype? a b) -> boolean

  a, b := type-descriptor
```

Returns true if *b* is a class subtype of *a*; *a* and *b* _must_ be type descriptors.

This procedures checks the linearized mixin list of *b*; *b* is a class subtype
of *a* if it is included in *b*'s mixins.

### direct-instance?
``` scheme
(direct-instance? klass obj) -> boolean

  klass := type-descriptor
```

Returns true if *obj* is an immediate instance of *klass*.

### struct-instance?
``` scheme
(struct-instance? klass obj) -> boolean

  klass := type-descriptor
  obj   := any object
```

Returns true if *obj* is a struct instance of *klass*.

This procedures checks the inheritance chain of *obj*'s type; *obj* is a struct
instance of *klass* if it is an object and its type is includes *klass* in its
inheritance chain.

### direct-struct-instance?
``` scheme
(direct-struct-instance? klass obj) -> boolean

  klass := type-descriptor
  obj   := any object
```

Same as `(direct-instance? klass obj)`.

### class-instance?
``` scheme
(class-instance? klass obj) -> boolean

  klass := type-descriptor
  obj   := any object
```

Returns true if *obj* is a class instance of *klass*.

This procedures checks the linearized mixin list of *obj*'s type; *obj* is a class
instance of *klass* if it is an object and its type is includes *klass* in its
mixin list.

### direct-class-instance?
``` scheme
(direct-class-instance? klass obj) -> boolean

  klass := type-descriptor
  obj   := any object
```

Same as `(direct-instance? klass obj)`.

### make-struct-type
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

### make-struct-predicate
``` scheme
(make-struct-predicate klass) -> procedure

  klass := type-descriptor
```
:::

Creates a struct instance predicate for instances of *klass*.

### make-struct-field-accessor
``` scheme
(make-struct-field-accessor klass field) -> procedure

  klass := type-descriptor
  field := fixnum

```

Creates a *klass* instance accessor for field *field* (relative to super).

### make-struct-field-mutator
``` scheme
(make-struct-field-mutator klass field) -> procedure

  klass := type-descriptor
  field := fixnum
```

Creates a *klass* instance mutator for field *field* (relative to super).

### make-struct-field-unchecked-accessor
``` scheme
(make-struct-field-unchecked-accessor klass field) -> procedure

  klass := type-descriptor
  field := fixnum
```

Like `make-struct-field-accessor`, but the accessor is unchecked.

### make-struct-field-unchecked-mutator
``` scheme
(make-struct-field-unchecked-mutator klass field) -> procedure

  klass := type-descriptor
  field := fixnum
```

Like `make-struct-field-mutator`, but the mutator is unchecked.

### make-struct-instance
``` scheme
(make-struct-instance klass . args) -> object

  klass := type-descriptor
  args  := rest of arguments
```

Creates a new instance of *klass*. If there is a constructor method,
it will be invoked with *args* on a freshly allocated object.
Otherwise, the object is initialized with *args*, which must have the
same length as the struct has fields.

### struct-instance-init!
``` scheme
(struct-instance-init! obj . args)

  obj  := any object
  args := rest of arguments
```

Initializes *obj* by setting its fields to *args* from left to right.
If there are more fields than arguments, then they are left uninitialized.
It is an error if there are more arguments than fields in the object.

### struct-field-offset
``` scheme
(struct-field-offset klass field) -> fixnum

  klass := type-descriptor
  field := fixnum

```

Returns the absolute field offset for *klass*'s field *field*.

### struct-field-ref
``` scheme
(struct-field-ref klass obj off) -> any

  klass := type-descriptor
  obj   := instance of klass
  off   := fixnum; absolute field offset
```
:::

Accesses *obj*'s field with absolute offset *off*;
*obj* is checked to be an instance of *klass*.

### struct-field-set!
``` scheme
(struct-field-set! klass obj off val) -> void

  klass := type-descriptor
  obj := instance of klass
  off := fixnum; absolute field offset
  val := any
```

Mutates *obj*'s field with absolute offset *off* to *val*;
*obj* is checked to be an instance of *klass*.

### unchecked-field-ref
``` scheme
(unchecked-field-ref obj off) -> any

  obj := instance of klass
  off := fixnum; absolute field offset
```

Accesses *obj*'s field with absolute offset *off*; there is no type check.

### unchecked-field-set!
``` scheme
(unchecked-field-set! obj off val) -> void
```

Mutates *obj*'s field with absolute offset *off* to *val*; there is no type check.

### struct-&gt;list
``` scheme
(struct->list obj) -> list

  obj := any object
```

Converts *obj* to a list, which conses its type and to its fields.

### make-class-type
``` scheme
(make-class-type id super slots name plist ctor) -> type-descriptor

  id     := symbol; the type id
  super  := list of type-descriptors or #f; super types
  slots  := list of symbols; class slot names
  plist  := alist; type properties
  ctor   := symbol or #f; id of constructor method

plist elements:
 (transparent: . boolean) ; controls whether the object is transparent
                            in equality and printing
 (final: . boolean)       ; controls whether the class if final
 (print: slot ...)        ; printable slots
 (equal: slot ...)        ; equality comparable slots
```

Creates a new class type descriptor.


### make-class-predicate
``` scheme
(make-class-predicate klass) -> procedure

  klass := type-descriptor
```

Creates a class instance predicate for instances of *klass*.

### make-class-slot-accessor
``` scheme
(make-class-slot-accessor klass slot) -> procedure

  klass := type-descriptor
  slot  := symbol
```

Creates a slot accessor for *slot*.

### make-class-slot-mutator
``` scheme
(make-class-slot-mutator klass slot) -> procedure

  klass := type-descriptor
  slot  := symbol
```

Creates a slot mutator for *slot*.

### make-class-slot-unchecked-accessor
``` scheme
(make-class-slot-unchecked-accessor klass slot) -> procedure

  klass := type-descriptor
  slot  := symbol
```

Like `make-class-slot-accessor`, but creates an unchecked accessor.


### make-class-slot-unchecked-mutator
``` scheme
(make-class-slot-unchecked-mutator klass slot) -> procedure

  klass := type-descriptor
  slot  := symbol
```

Like `make-class-slot-mutator`, but creates an unchecked mutator.

### make-class-instance
``` scheme
(make-class-instance klass . args) -> object

  klass := type-descriptor
  args  := rest of arguments
```

Creates a new instance of *klass*. If there is a constructor method,
it will be invoked with *args* on a freshly allocated object.
Otherwise, the object is initialized with *args*, which must be a plist
of slot keywords/symbols and values.

### class-instance-init!
``` scheme
(class-instance-init! obj . args)

  obj  := any object
  args := rest of arguments
```

Initializes *obj*, using *args* as a plist of slot keywords/symbols and values.
For every slot and value in the plist, the corresponding object slot is set to
the value.


### class-slot-offset
``` scheme
(class-slot-offset klass slot) -> fixnum

  klass := type-descriptor
  slot  := symbol or keyword
```

Returns the absolute field offset for *slot* in instances of *klass*.

### class-slot-ref
``` scheme
(class-slot-ref klass obj slot) -> any

  klass := type-descriptor
  obj   := instance of klass
  slot  := symbol or keyword
```

Checks that *obj* is a class instance of *klass* and returns the value in slot *slot*.

### class-slot-set!
``` scheme
(class-slot-set! klass obj slot val) -> void

  klass := type-descriptor
  obj   := instance of klass
  slot  := symbol or keyword
  val   := any
```

Checks that *obj* is a class instance of *klass* and sets the value in the slot *slot*
to *val*.

### slot-ref
``` scheme
(slot-ref obj slot [E = slot-error]) -> any

  obj  := object
  slot := symbol or keyword
  E    := procedure
```

Returns the value associated with slot *slot* in *obj*.
If the object has no such slot, then *E* is invoked in tail position as `(E obj slot)`.
By default, this raises an error.

### slot-set!
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

### unchecked-slot-ref
``` scheme
(unchecked-slot-ref obj slot) -> any

  obj  := object
  slot := symbol or keyword
```

Returns the value associated with slot *slot* in *obj*, without any checks.

### unchecked-slot-set!
``` scheme
(unchecked-slot-set! obj slot val) -> void

  obj  := object
  slot := symbol or keyword
  val  := any
```

Sets the value associated with slot *slot* in *obj* to *val*, without any checks.

### class-&gt;list
``` scheme
(class->list obj)

  obj := any object
```

Converts *obj* to a list, which conses its type and to a plist of slot keywords
and values.

### bind-method!
``` scheme
(bind-method! klass id proc [rebind? = #t]) -> void

  klass   := type-descriptor or builtin record descriptor
  id      := symbol; method id
  proc    := procedure; method implementation
  rebind? := boolean; allow method rebinding?
```

Binds *proc* as the method with *id* in class *klass*.

### call-method
``` scheme
(call-method obj id . args) -> any

  obj  := any object
  id   := symbol; method id
  args := rest of arguments
```

Applies the method with *id* in *obj* to *args*, with the object itself
as the first argument. Raises an error if the object has no such method bound.

### find-method
``` scheme
(find-method klass id) -> procedure | #f

  klass := type-descriptor or builtin record descriptor
  id    := symbol; method id
```

Looks up the method with *id* in klass *class*. Returns the procedure
implementing the method or `#f` if the method is not bound in the class
hierarchy.

### call-next-method
``` scheme
(call-next-method klass obj id . args) -> any

  klass := type-descriptor or builtin record descriptor
  obj   := object
  id    := symbol; method id
```

Invokes the next method in *obj*'s hierarchy, following *klass*.

### next-method
``` scheme
(next-method klass obj id) -> procedure | #f

  klass := type-descriptor or builtin record descriptor
  obj   := object
  id    := symbol; method id
```

Returns the next method in *obj*'s hierarchy, following *klass*.

### method-ref
``` scheme
(method-ref obj id) -> procedure | #f
  obj := object
  id  := symbol; method id
```

Looks up the method with *id* in *obj*'s hierarchy.

### bound-method-ref
``` scheme
(bound-method-ref obj id) -> procedure | #f

  obj := object
  id  := symbol; method id
```

Looks up the method with *id* in *obj*'s hierarchy and returns
a procedure which applies the method currying the object.

### checked-method-ref
``` scheme
(checked-method-ref obj id) -> procedure | #f
  obj := object
  id  := symbol; method id
```

Like `method-ref`, but raises an error if the method is not found.

### checked-bound-method-ref
``` scheme
(checked-bound-method-ref obj id) -> procedure | #f

  obj := object
  id  := symbol; method id
```

Like `bound-method-ref`, but raises an error if the method is not found.

### direct-method-ref
``` scheme
(direct-method-ref klass id) -> procedure | #f

  klass := type-descriptor
  id    := symbol; method id
```

Returns the binding of method with `id` in class `klass`.

### seal-class!
```scheme
(seal-class! klass) -> unspecified

  klass := type-descriptor
```

Seals a class, which must be _final_. Sealing a class specializes and coalesces
all methods in the hierarchy to the class' method table.

### bind-specializer!
```scheme
(bind-specializer! method specializer) -> unspecified

  method      := procedure implementing a method
  specializer := procedure of one argument that returns the specialized method
```

Binds a specializer procedure associated with a method. When a class
is sealed, the specializer is invoked with the concrete class to
generate a version of the method that is specialized for the concrete
class.

## Special Objects

### absent-obj
```
(def absent-obj)
```

Special object used by Gambit primitives to signal absent optional values.

### absent-value
```
(def absent-value)
```

Special object used to denote missing hash values.

### true
``` scheme
(true . args) -> #t
```

Returns `#t`, ignoring its arguments.

### true?
``` scheme
(true? obj) -> boolean

  obj := any object
```
:::

Returns true if the object is `#t`.

### false
``` scheme
(false . args) -> #f
```

Returns `#f`, ignoring its arguments.

### void
``` scheme
(void . args) -> #!void
```

Returns `#!void`, ignoring its arguments

### void?
``` scheme
(void? obj) -> boolean
```

Returns true if the object *obj* is `#!void`.

### eof-object
``` scheme
(eof-object . args)
```

Returns the eof object, ignoring its arguments.

### identity
``` scheme
(identity x) -> x

  x := any value
```

The identity function, eg. returns anything passed to it.

### dssl-object?
``` scheme
(dssl-object? obj) -> boolean

  obj := any object
```

Returns true if the object is a DSSL syntactic token.

### dssl-key-object?
``` scheme
(dssl-key-object? obj) -> boolean

  obj := any object
```

Returns true if the object is `#!key`.

### dssl-rest-object?
``` scheme
(dssl-rest-object? obj) -> boolean

  obj := any object
```

Returns true if the object is `#!rest`.

### dssl-optional-object?
``` scheme
(dssl-optional-object? obj) -> boolean

  obj := any object
```

Returns true if the object is `#!optional`.

### immediate?
``` scheme
(immediate? obj) -> boolean

  obj := any object
```

Returns true if the object *obj* is an immediate value.


## Hash Tables

### make-hash-table
``` scheme
(make-hash-table . options) -> hash table

options:
    size: size
    init: init
    weak-keys: weak-keys?
    weak-values: weak-values?
    test: test
    hash: hash
    min-load: min-load
    max-load: max-load
```

Creates a hash table.

### make-hash-table-eq
``` scheme
(make-hash-table-eq . options) -> hash table
```

Creates a hash table using `eq?` as the test function so this is equivalent to
`(make-hash-table test: eq? options ...)`.

### make-hash-table-eqv
``` scheme
(make-hash-table-eqv . options) -> hash table
```

Creates a hash table using `eqv?` as the test function so this is equivalent to `(make-hash-table test: eqv? options ...)`.


### hash?
```
(hash? obj) -> boolean

  obj := any object
```

Returns true if the object is a hash table.

### hash-table?
``` scheme
(hash-table? obj) -> boolean

  obj := any object
```

Same as `hash?`.

### hash-length
``` scheme
(hash-length hash) -> fixnum

  hash := hash table
```

Returns the number of entries in the *hash*.

### hash-ref
``` scheme
(hash-ref hash key [default]) -> any

  hash := hash table
  key  := any
```

Returns the value bound to *key*, defaulting to *default* if no value was
bound. If the default is absent, then if an *init* parameter was specified
in the table constructor it is returned instead. If no *init* parameter was
specified, then an error is raised.

### hash-get
``` scheme
(hash-get hash key) -> any

  hash := hash table
  key  := any
```

Returns the value bound to `key` or `#f` if no value was bound.
This is equivalent to `(hash-ref hash key #f)`.

### hash-put!
``` scheme
(hash-put! hash key val) -> void

  hash := hash table
  key  := any
  val  := val
```

Binds *key* to *val* in *hash*.

### hash-update!
``` scheme
(hash-update! hash key update [default = #!void]) -> void

  hash := hash table
  key  := any
  update: = procedure of one argument
```

Updates *hash*'s binding for *key* to the result of
`(update (hash-ref hash key default))`

### hash-remove!
``` scheme
(hash-remove! hash key) -> void

  hash := hash table
  key  := any
```

Removes *hash*'s binding for *key*.

### hash-clear!
``` scheme
(hash-clear! hash [size = 0]) -> void

  hash := hash table
  size := fixnum; the new initial size for the hash table or 0 for default
```

Clears the hash table.

### hash-key?
``` scheme
(hash-key? hash key) -> boolean

  hash := hash table
  key  := any
```

Returns true if *hash* has a binding for *key*.

### hash-for-each
``` scheme
(hash-for-each proc hash) -> void

  proc := procedure of two arguments
  hash := hash table
```

Applies *proc* to all key/value bindings in *hash*.

### hash-map
``` scheme
(hash-map proc hash) -> list

  proc := procedure of two arguments
  hash := hash table
```

Maps the bindings of *hash* to a list, applying *proc*.

### hash-fold
``` scheme
(hash-fold proc iv hash) -> any

  proc := procedure of three arguments
  iv   := any; initial value
  hash := hash table
```

Fold the bindings of *hash*, applying *proc* with initial *iv*.

### hash-find
``` scheme
(hash-find proc hash) -> any

  proc := procedure of two arguments
  hash := hash table
```

Returns the first true value returned when applying *proc* to the bindings
of *hash* or `#f`.

### hash-keys
``` scheme
(hash-keys hash) -> list

  hash := hash table
```

Returns the list of keys for all bindings in *hash*.

### hash-values
``` scheme
(hash-values hash) -> list

  hash := hash table
```

Returns the list of values for all bindings in *hash*.

### hash-copy
``` scheme
(hash-copy hash) -> hash table

  hash := hash table
```

Copies *hash* into a new hash table

### hash-merge
``` scheme
(hash-merge hash . more) -> hash table

  hash := hash table
  more := list of hash tables
```

Creates a new hash table, merging *more* hash tables into *hash*. Entries in hash tables on the left take precedence over entries on the right.

```
> (define t1 (list->hash-table '((a . 1) (b . 2) (c . 3))))
> (define t2 (list->hash-table '((a . 4) (b . 5) (z . 6))))
> (hash->list (hash-merge t1 t2))
((a . 1) (z . 6) (b . 2) (c . 3))
```

### hash-merge!
``` scheme
(hash-merge! hash . more) -> hash table

  hash := hash table
  more := list of hash tables
```
:::

Merges *more* hash tables into *hash*. Entries in hash tables on the left take precedence over entries on the right.

```
> (define t1 (list->hash-table '((a . 1) (b . 2) (c . 3))))
> (define t2 (list->hash-table '((a . 4) (b . 5) (z . 6))))
> (begin (hash-merge! t1 t2) (hash->list t1))
((a . 1) (z . 6) (b . 2) (c . 3))
```

### hash-&gt;list
``` scheme
(hash->list hash) -> list

  hash := hash table
```

Returns the bindings of *hash* as an alist.

### list-&gt;hash-table
``` scheme
(list->hash-table lst . options) -> hash table

  lst := alist; table bindings
```

Creates a hash table from an alist *lst*.

### list-&gt;hash-table-eq
``` scheme
(list->hash-table-eq lst . options) -> hash table

  lst := alist; table bindings
```

Same as `list->hash-table`, but using `eq?` as the test function for the table.

### list-&gt;hash-table-eqv
``` scheme
(list->hash-table-eqv lst . options) -> hash table

  lst := alist; table bindings
```

Same as `list->hash-table`, but using `eqv?` as the test function for the table.

### hash-&gt;plist
``` scheme
(hash->plist hash) -> list

  hash := hash table
```

Returns the bindings of *hash* as a plist.

### plist-&gt;hash-table
``` scheme
(plist->hash-table lst) -> hash table

  lst := plist; table bindings
```

Creates a hash table from a plist *lst*.

### plist-&gt;hash-table-eq
``` scheme
(plist->hash-table-eq lst) -> hash table

  lst := plist; table bindings
```

Same as `plist->hash-table`, but using `eq?` as the test function for the table.

### plist-&gt;hash-table-eqv
``` scheme
(plist->hash-table-eqv lst) -> hash table

  lst := plist; table bindings
```

Same as `plist->hash-table`, but using `eqv?` as the test function for the table.

## Lists

### make-list
``` scheme
(make-list len [val = #f]) -> list

  len := fixnum
  val := any value
```

Creates a new list of length *len*, with initial value of *val*.

### cons*
``` scheme
(cons* x y ... tail) -> list

  x    := any
  y    := any
  tail := list
```

Conses *x*, *y*, ... to *tail*. This is equivalent to `(cons x (cons y ... (cons ... tail)))`.

### foldl
``` scheme
(foldl f iv . lsts) -> any

  f    := procedure
  iv   := any
  lsts := lists
```

Left fold.

### foldr
``` scheme
(foldr f iv . lsts) -> any

  f    := procedure
  iv   := any
  lsts := lists
```

Right fold.

### andmap
``` scheme
(andmap f . lsts) -> boolean

  f    := procedure
  lsts := lists
```

Boolean and fold.

### ormap
``` scheme
(ormap f . lsts) -> any

  f    := procedure
  lsts := lists
```

Boolean or fold.

### filter
``` scheme
(filter f lst) -> list

  f   := procedure
  lst := list
```

Returns a new list including only elements *x* for which `(f x)` is true.

### filter-map
``` scheme
(filter-map f . lsts) -> list

  f     := procedure
  lsts := lists
```

Filter and map; returns a new list including the true results of `(f x y ...)`,
where `x`, `y`, ... are the elements of each list in *lsts*.

### iota
``` scheme
(iota count [start = 0] [step = 1]) -> list

  count := fixnum; elements in the list
  start,step := number
```

Returns a list of *count* elements, iterating from *start* and adding *step* on
each iteration.

### last-pair
``` scheme
(last-pair obj) -> pair

  obj := pair or
```

Returns the last pair in the tail of *obj*; ie the tail pair of a (possibly improper) list.

### last
``` scheme
(last obj) -> any

  obj := pair
```

Returns the car of the last pair of `obj`. This is equivalent to `(car (last-pair obj))`.

### assgetq
``` scheme
(assgetq key alist [default = #f]) -> any

  key   := any
  alist := associative list
```

Returns the value associated with *key* in *alist*, using `eq?` for
the key comparison.  If the key is not found, then if *default* is a
procedure it is applied on the *key*. Otherwise returns *default*.

### assgetv
``` scheme
(assgetv key alist [default = #f]) -> any

  key   := any
  alist := associative list
```

Like `assgetq`, but uses `eqv?` for the key comparison.

### assget
``` scheme
(assget key alist [default = #f]) -> any

  key   := any
  alist := associative list
```

Like `assgetq`, but uses `equal?` for the key comparison.

### pgetq
``` scheme
(pgetq key plist [default = #f]) -> any

  key   := any
  plist := property list
```

Like `assgetq`, but for plists.

### pgetv
``` scheme
(pgetv key plist [default = #f]) -> any

  key   := any
  plist := property list
```

Like `assgetv`, but for plists.

### pget
``` scheme
(pget key plist [default = #f]) -> any

  key   := any
  plist := property list
```

Like `assget`, but for plists.

### find
``` scheme
(find pred lst) -> any

  pred := procedure
  lst  := list
```

Returns the first element in *lst* that satisfies *pred*.

### memf
``` scheme
(memf pred lst) -> pair | #f

  pred := procedure
  lst  := list
```

Generalization of *member*; returns the first pair in *lst* whose *car*
satisfies *pred*.

### remove1
``` scheme
(remove1 el lst) -> list

  el  := any
  lst := list
```

Returns *lst* removing the first element *x* that satisfies `(equal? el x)`.

### remv
``` scheme
(remv el lst) -> list

  el  := any
  lst := list
```

Apply `remove1` using `eqv?` as the comparator.

### remq
``` scheme
(remq el lst) -> list

  el  := any
  lst := list
```

Apply `remove1` using `eq?` as the comparator.

### remf
``` scheme
(remf pred lst) -> list

  pred := procedure
  lst  := list
```

Like `remove1`, but removes the first element `x` that satisfies `(pred x)`

## Numerics

### 1+
``` scheme
(1+ num) -> number

  num := number
```

Increment *num* by 1.

### 1-
``` scheme
(1- num) -> number

  num := number
```

Decrement *num* by 1.

### fx1+
```
(fx1+ num) -> fixnum

  num := fixnum
```

Increment a fixnum *num* by 1.

### fx1-
``` scheme
(fx1- num) -> fixnum

  num := fixnum
```

Decrement a fixnum *num* by 1.

### fxshift
``` scheme
(fxshift num shift) -> fixnum

  num   := fixnum
  shift := number
```

Shift a fixnum *num*  arithmetically by *shift*; same as `fxarithmetic-shift`.

### fx/
``` scheme
(fx/ x y) -> fixnum

  x, y := fixnum
```

Perform fixnum division on *x* and *y*; same as `fxquotient`.

### nonnegative-fixnum?
``` scheme
(nonnegative-fixnum? obj) -> boolean

  obj := any object
```

Returns true if the object *obj* is a non-negative fixnum.

## Symbols

### make-symbol
``` scheme
(make-symbol . templates) -> symbol

template:
 string
 symbol
 keyword
 number
```

Creates a symbol concatenating the arguments.

### interned-symbol?
``` scheme
(interned-symbol? obj) -> boolean

  obj := any object
```

Returns true if the object *obj* is an interned symbol.


### interned-keyword?
``` scheme
(interned-keyword? obj) -> boolean

  obj := any object
```

Returns true if the object *obj* is an interned keyword.

### symbol-&gt;keyword
``` scheme
(symbol->keyword sym) -> keyword

  sym := symbol
```

Converts a symbol *sym* to a keyword.

### keyword-&gt;symbol
``` scheme
(keyword->symbol kw) -> symbol

  kw := keyword
```

Converts a keyword *kw* to a symbol

## Strings

### bytes-&gt;string
```
(bytes->string bstr [encoding = 'UTF-8]) -> string

  bstr := u8vector
```

Decodes a byte vector *bstr* to a string.

Note: if you are decoding UTF-8, then you should consider using `string->utf8`
from `:std/text/utf8` which is considerably faster.

### string-&gt;bytes
``` scheme
(string->bytes str [encoding = 'UTF-8]) -> u8vector

  str := string
```

Encodes a string *str* to a bytevector.

Note: if you are encoding UTF-8, then you should consider using `utf8->string`
from `:std/text/utf8` which is considerably faster.


### substring-&gt;bytes
``` scheme
(substring->bytes str start end [encoding = 'UTF-8]) -> u8vector

  str := string
  start, end := fixnum
```

Encodes a substring *str* to a vector.

Note: if you are encoding UTF-8, then you should consider using `utf8-encode`
from `:std/text/utf8` which is considerably faster.


### string-empty?
``` scheme
(string-empty? str) -> boolean

  str := string
```

Returns true if *str* is the empty string.

### string-prefix?
``` scheme
(string-prefix? prefix str) -> boolean

  prefix, str := string
```

Returns true if *prefix* is a prefix of *string*.

### string-index
``` scheme
(string-index str char [start = 0]) -> fixnum | #f

  str   := string
  char  := character
  start := fixnum
```

Returns the index of the first occurrence of *char* in *str*.

### string-rindex
``` scheme
(string-rindex str char [start = #f]) -> fixnum | #f

  str   := string
  char  := character
  start := fixnum or #f
```

Returns the index of the first occurrence from the right of *char* in *str*.

### string-split
``` scheme
(string-split str char) -> list

  str  := string
  char := character; separator
```

Splits *str* into substrings using *char* as the separator.

### string-join
``` scheme
(string-join strs char) -> string

  str  := list of strings
  char := character; separator
```

Joins *strs* into a string, using *char* as the separator.

## Control Flow

### make-promise
```
(make-promise thunk) -> promise

  thunk := procedure taking no args
```

Creates a promise.

### promise?
``` scheme
(promise? obj) -> boolean

  obj := any object
```

Returns true if the object *obj* is a promise.

### call-with-parameters
``` scheme
(call-with-parameters thunk . parameterization) -> any

  thunk := procedure taking no args

parameterization:
 parameter value ...
```

Calls *thunk* with parameterization.

### with-catch
``` scheme
(with-catch handler thunk) -> any

  handler, thunk := procedure
```

Calls *thunk* with *handler* as the exception catcher.

### with-unwind-protect
``` scheme
(with-unwind-protect thunk fini) -> any

  thunk, fini := procedure
```

Calls *thunk*, invoking *fini* when execution exits the dynamic extent
of *thunk*.

## Exception Objects

### exception::t
``` scheme
(def exception::t)
```

Base class for all Gerbil-derived exception types. It's an empty struct type
that extends the Gambit builtin exception record type.

See also [Exception Base Classes](errors.md).
### error::t
``` scheme
(def error::t)
```

Base class for all Gerbil-derived errors. It's a struct type that extends
`exception::t` and has 3 fields: message, irritants, and trace.

See also [Exception Base Classes](errors.md).

### exception?
``` scheme
(exception? obj) -> boolean

  obj := any object
```

Returns true if the object *obj* is an exception object. This includes
the builtin Gambit exceptions.

### error?
``` scheme
(error? obj) -> boolean

  obj := any object
```

Returns true if the object *obj* is an instance of `error::t`.

### error-object?
``` scheme
(error-object? obj) -> boolean

  obj := any object
```

Returns true if the object *obj* is an exception object raised by the builtin `error`
procedure. Note that this is separate from instances of `error::t`; nomenclature.

### error-message
``` scheme
(error-message obj) -> string

  obj := any object
```

Returns the message associated with an error instance. If the object *obj* is not
an error instance, it returns the result of `(display-exception obj)`.

### error-irritants
``` scheme
(error-irritants obj) -> list | #f

  obj := any object
```

Returns the irritants associated with an error instance. If the object *obj* is
not an error instance, it returns `#f`.

### error-trace
``` scheme
(error-trace obj) -> any

  obj := any object
```

Returns the trace associated with an error instance. If the object *obj* is not
an error instance, it returns `#f`.

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

### values-&gt;list
``` scheme
(values->list obj) -> list

  obj := any object
```

Converts multiple `values` to a list. If the object *obj* is not multiple `values`,
it returns a list containing the object.

### subvector-&gt;list
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

## System Information

### gerbil-system-version-string
``` scheme
(gerbil-system-version-string) -> string
```

The full Gerbil system version.

### gerbil-system
``` scheme
(gerbil-system) -> symbol
```

Symbolic name of the gerbil system; this is defined as a `cond-expand` feature by the
expander.

### gerbil-runtime-smp?
``` scheme
(gerbil-runtime-smp?) -> boolean
```

Returns true if the SMP scheduler is detected at runtime.

### gerbil-greeting
```
(def gerbil-greeting)
```

The greeting displayed by the interpreter at interactive load; a string.


## Thread Primitives

The following primitives are defined in the `:gerbil/gambit/threads` prelude module.

::: tip To use the bindings from this module:
``` scheme
(import :gerbil/gambit/threads)
```
:::

### spawn
``` scheme
(spawn f . args) -> actor thread

  f := procedure
```

Spawns an actor thread, invoking `(f . args)`.

Differences of actor threads and plain Gambit threads:
- actor threads have an abortive exception handler that unwinds the stack
  on exceptional exits thus ensuring that unwind finalizers are run.
- actor threads have an extra field for efficient access to thread locals.

### spawn/name
``` scheme
(spawn/name name f . args) -> actor thread

  name := any
  f     := procedure
```

Like `spawn`, but the thread is named.

### spawn/group
``` scheme
(spawn/group name f . args) -> actor thread

  name := any
  f     := procedure
```

Like `spawn`, but the thread is in a new thread group with name *name*.

### spawn-actor
``` scheme
(spawn-actor f args name tgroup) -> actor thread

  f      := procedure
  args   := list; procedure arguments
  name   := any
  tgroup := thread-group
```

Spawns an actor thread.

### spawn-thread
``` scheme
(spawn-thread thunk [name] [tgroup]) -> thread

  thunk := procedure
  name   := any
  tgroup := thread-group
```

Spawns a plain thread

### actor-thread?
``` scheme
(actor-thread? obj) -> boolean

  obj := any object
```

Returns true if the object *obj* is an actor thread.

### thread-local-ref
``` scheme
(thread-local-ref key [default]) -> any

  key, default := any
```

Retrieves the thread local value associated with *key*.

### thread-local-get
``` scheme
(thread-local-get key) -> any

  key := any
```

Retrieves the thread local value associated with *key*, defaulting to `#f`.

### thread-local-set!
``` scheme
(thread-local-set! key val) -> void

  key, val := any
```

Sets the thread local value associated with *key* to *val*.

### thread-local-clear!
``` scheme
(thread-local-clear! key) -> void

  key := any
```

Clears the thread local value associated with *key*.

### thread-local-table
```
(thread-local-table) -> hash table
```

Return the table of thread local values, creating it if it doesn't exist.


### current-thread-group
``` scheme
(current-thread-group) -> thread-group
```

Returns the thread-group of the current thread.

### with-lock
``` scheme
(with-lock mx thunk) -> any

  mx    := mutex
  thunk := procedure
```

Evaluates *thunk* in a dynamic extent where *mx* is locked.

### unhandled-actor-exception-hook-set!
``` scheme
(unhandled-actor-exception-hook-set! proc) -> void

  proc := procedure
```

Hooks the actor exception handler to invoke `(proc continuation exception)` on uncaught
exceptions occurring in actor threads.

### dump-stack-trace!
``` scheme
(dump-stack-trace! cont exn [port = (current-error-port)]) -> void

  cont := continuation
  exn  := exception
  port := error port
```

Dumps a stack trace from an exception handler hook.


### with-exception-stack-trace
``` scheme
(with-exception-stack-trace thunk [port = (current-error-port)]) -> any

  thunk := procedure
```

Evaluate *thunk*, with a handler that dumps a stack trace on uncaught exceptions.

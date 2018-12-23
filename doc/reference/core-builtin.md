# Runtime Builtins

The following procedures are available in the Gerbil runtime, in
addition to all core Scheme and Gambit primitives.

## MOP

See the [Guide](/guide/intro.md#structs-and-classes)
for an introduction to Gerbil's object system.
These procedures provide the meta-object protocol.

### make-object
::: tip usage
```
(make-object class fields)
  class := type-descriptor; the class of the constructed object
  fields := the number of fields in the object
=> object
```
:::

Creates an object with class `class` and `fields` fields.

### object?
::: tip usage
```
(object? obj)
=> boolean
```
:::

Returns true if `obj` is an object instance.

### object-type
::: tip usage
```
(object-type obj)
  obj := object
=> type
```
:::

Returns the class of an object; `obj` _must_ be an object instance.

### type-descriptor?
::: tip usage
```
(type-descriptor? obj)
=> boolean
```
:::

Returns true if `obj` is a runtime type descriptor.

### struct-type?
::: tip usage
```
(struct-type? obj)
=> boolean
```
:::

Returns true if `obj` is a struct type descriptor.

### class-type?
::: tip usage
```
(class-type? obj)
=> boolean
```
:::

Returns true if `obj` is a class type descriptor.

### struct-subtype?
::: tip usage
```
(struct-subtype? a b)
  a, b := type-descriptor
=> boolean
```
:::

Returns true if `b` is a struct subtype of `a`; `a` and `b` _must_ be type descriptors.

This procedures checks the inheritance chain of `b`; `b` is a struct subtype
of `a` if it is included in `b`'s inheritance chain.

### class-subtype?
::: tip usage
```
(class-subtype? a b)
  a, b := type-descriptor
=> boolean
```
:::

Returns true if `b` is a class subtype of `a`; `a` and `b` _must_ be type descriptors.

This procedures checks the linearized mixin list of `b`; `b` is a class subtype
of `a` if it is included in `b`'s mixins.

### struct-instance?
::: tip usage
```
(struct-instance? klass obj)
  klass := type-descriptor
=> boolean
```
:::

Returns true if `obj` is a struct instance of `klass`.

This procedures checks the inheritance chain of `obj`'s type; `obj` is a struct
instance of `klass` if it is an object and its type is includes `klass` in its
inheritance chain.

### direct-struct-instance?
::: tip usage
```
(direct-struct-instance? klass obj)
  klass := type-descriptor
=> boolean
```
:::

Returns true if `obj` is an immediate instance of `klass`.

### class-instance?
::: tip usage
```
(class-instance? klass obj)
  klass := type-descriptor
=> boolean
```
:::

Returns true if `obj` is a class instance of `klass`.

This procedures checks the linearized mixin list of `obj`'s type; `obj` is a class
instance of `klass` if it is an object and its type is includes `klass` in its
mixin list.

### direct-class-instance?
::: tip usage
```
(direct-class-instance? klass obj)
  klass := type-descriptor
=> boolean
```
:::

Returns true if `obj` is an immediate instance of `klass`.

Note: this procedure is the same as `direct-struct-instance?`.
The two procedures exist with different names for historical reasons, and should
be aliased to a single `direct-instance?` procedure in the near future.

### make-struct-type
::: tip usage
```
(make-struct-type id super fields name plist ctor [field-names = #f])
  id     := symbol; the type id
  super  := type-descriptor or #f; the struct type to inherit from
  fields := fixnum; number of (new) fields in the type
  name   := symbol; the (displayed) type name
  plist  := alist; type properties
  ctor   := symbol or #f; id of constructor method
  field-names := list of symbols or #f; (displayed) field names
=> type-descriptor

plist elements:
 (transparent: . boolean) ; controls whether the object is transparent
                            in equality and printing
 (final: . boolean)       ; controls whether the class if final
 (print: field ...)       ; printable field names
 (equal: field ...)       ; equality comparable field names
```
:::

Creates a new struct type descriptor.

### make-struct-predicate
::: tip usage
```
(make-struct-predicate klass)
  klass := type-descriptor
=> procedure
```
:::

Creates a struct instance predicate for instances of `klass`.

### make-struct-field-accessor
::: tip usage
```
(make-struct-field-accessor klass field)
  klass := type-descriptor
  field := fixnum
=> procedure
```
:::

Creates a `klass` instance accessor for field `field` (relative to super).

### make-struct-field-mutator
::: tip usage
```
(make-struct-field-mutator klass field)
  klass := type-descriptor
  field := fixnum
=> procedure
```
:::

Creates a `klass` instance mutator for field `field` (relative to super).

### make-struct-field-unchecked-accessor
::: tip usage
```
(make-struct-field-unchecked-accessor klass field)
  klass := type-descriptor
  field := fixnum
=> procedure

```
:::

Like `make-struct-field-accessor`, but the accesor is unchecked.

### make-struct-field-unchecked-mutator
::: tip usage
```
(make-struct-field-unchecked-mutator klass field)
  klass := type-descriptor
  field := fixnum
=> procedure
```
:::

Like `make-struct-field-mutator`, but the mutator is unchecked.

### make-struct-instance
::: tip usage
```
(make-struct-instance klass . args)
  klass := type-descriptor
=> object
```
:::

Creates a new instance of `klass`. If there is a constructor method,
it will be invoked with `args` on a freshly allocated object.
Otherwise, the object is initialized with `args`, which must have the
same length as the struct has fields.

### struct-instance-init!
::: tip usage
```
(struct-instance-init! obj . args)
```
:::

Initializes `obj` by setting its fields to `args` from left to right.
If there are more fields than arguments, then they are left uninitialized.
It is an error if there are more arguments than fields in the object.

### struct-field-offset
::: tip usage
```
(struct-field-offset klass field)
  klass := type-descriptor
  field := fixnum
=> fixnum
```
:::

Returns the absolute field offset for `klass`'s field `field`.

### struct-field-ref
::: tip usage
```
(struct-field-ref klass obj off)
  klass := type-descriptor
  obj := instance of klass
  off := fixnum; absolute field offset
=> any
```
:::

Accesses `obj`'s field with absolute offset `off`;
`obj` is checked to be an instance of `klass`.

### struct-field-set!
::: tip usage
```
(struct-field-set! klass obj off val)
(struct-field-ref klass obj off)
  klass := type-descriptor
  obj := instance of klass
  off := fixnum; absolute field offset
  val := any
```
:::

Mutates `obj`'s field with absolute offset `off` to `val`;
`obj` is checked to be an instance of `klass`.

### unchecked-field-ref
::: tip usage
```
(unchecked-field-ref obj off)
  obj := instance of klass
  off := fixnum; absolute field offset
=> any
```
:::

Accesses `obj`'s field with absolute offset `off`; there is no type check.

### unchecked-field-set!
::: tip usage
```
(unchecked-field-set! obj off val)
```
:::

Mutates `obj`'s field with absolute offset `off` to `val`; there is no type check.

### struct-&gt;list
::: tip usage
```
(struct->list obj)
=> list
```
:::

Converts an object to a list, which conses its type and to its fields.

### make-class-type
::: tip usage
```
(make-class-type id super slots name plist ctor)
  id     := symbol; the type id
  super  := list of type-descriptors or #f; super types
  slots  := list of symbols; class slot names
  plist  := alist; type properties
  ctor   := symbol or #f; id of constructor method
=> type-descriptor

plist elements:
 (transparent: . boolean) ; controls whether the object is transparent
                            in equality and printing
 (final: . boolean)       ; controls whether the class if final
 (print: slot ...)        ; printable slots
 (equal: slot ...)        ; equality comparable slots
```
:::

Creates a new class type descriptor.


### make-class-predicate
::: tip usage
```
(make-class-predicate klass)
  klass := type-descriptor
=> procedure
```
:::

Creates a class instance predicate for instances of `klass`.

### make-class-slot-accessor
::: tip usage
```
(make-class-slot-accessor klass slot)
  klass := type-descriptor
  slot  := symbol
=> procedure
```
:::

Creates a slot accessor for `slot`.

### make-class-slot-mutator
::: tip usage
```
(make-class-slot-mutator klass slot)
  klass := type-descriptor
  slot  := symbol
=> procedure
```
:::

Creates a slot mutator for `slot`.

### make-class-slot-unchecked-accessor
::: tip usage
```
(make-class-slot-unchecked-accessor klass slot)
  klass := type-descriptor
  slot  := symbol
=> procedure
```
:::

Like `make-class-slot-accessor`, but creates an unchecked accesor.


### make-class-slot-unchecked-mutator
::: tip usage
```
(make-class-slot-unchecked-mutator klass slot)
  klass := type-descriptor
  slot  := symbol
=> procedure
```
:::

Like `make-class-slot-mutator`, but creates an unchecked mutator.

### make-class-instance
::: tip usage
```
(make-class-instance klass . args)
  klass := type-descriptor
=> object
```
:::

Creates a new instance of `klass`. If there is a constructor method,
it will be invoked with `args` on a freshly allocated object.
Otherwise, the object is initialized with `args`, which must be a plist
of slot keywords/symbols and values.

### class-instance-init!
::: tip usage
```
(class-instance-init! obj . args)
```
:::

Initializes `obj`, using `args` as a plist of slot keywords/symbols and values.
For every slot and value in the plist, the corresponding object slot is set to
the value.


### class-slot-offset
::: tip usage
```
(class-slot-offset klass slot)
  klass := type-descriptor
  slot  := symbol or keyword
=> fixnum
```
:::

Returns the absolute field offset for `slot` in instances of `klass`.

### class-slot-ref
::: tip usage
```
(class-slot-ref klass obj slot)
  klass := type-descriptor
  obj   := instance of klass
  slot  := symbol or keyword
=> any
```
:::

Checks that `obj` is a class instance of `klass` and returns the value in slot `slot`

### class-slot-set!
::: tip usage
```
(class-slot-set! klass obj slot val)
  klass := type-descriptor
  obj   := instance of klass
  slot  := symbol or keyword
  val   := any
```
:::

Checks that `obj` is a class instance of `klass` and sets the value in the slot `slot`
to `val`.

### slot-ref
::: tip usage
```
(slot-ref obj slot [E = slot-error])
  obj  := object
  slot := symbol or keyword
  E    := procedure;
```
:::

Returns the value associated with slot `slot` in `obj`.
If the object has no such slot, then `E` is invoked in tail position as `(E obj slot)`.
By default, this raises an error.

### slot-set!
::: tip usage
```
(slot-set! obj slot val [E = slot-error])
  obj  := object
  slot := symbol or keyword
  val  := any
  E    := procedure;
```
:::

Sets the value associated with slot `slot` in `obj` to `val`.
If the object has no such slot, then `E` is invoked in tail position as `(E obj slot)`.
By default, this raises an error.

### unchecked-slot-ref
::: tip usage
```
(unchecked-slot-ref obj slot)
  obj  := object
  slot := symbol or keyword
=> any
```
:::

Returns the value associated with slot `slot` in `obj`, without any checks.

### unchecked-slot-set!
::: tip usage
```
(unchecked-slot-set! obj slot val)
  obj  := object
  slot := symbol or keyword
  val  := any
```
:::

Sets the value associated with slot `slot` in `obj` to `val`, without any checks.

### class-&gt;list
::: tip usage
```
(class->list obj)
```
:::

Converts an object to a list, which conses its type and to a plist of slot keywords
and values.

### bind-method!
::: tip usage
```
(bind-method! klass id proc [rebind? = #t])
  klass   := type-descriptor or builtin record descriptor
  id      := symbol; method id
  proc    := procedure; method implementation
  rebind? := boolean; allow method rebinding?
```
:::

Binds `proc` as the method with `id` in class `klass`.

### call-method
::: tip usage
```
(call-method obj id . args)
=> any
```
:::

Applies the method with `id` in `obj` to `args`, with the object itself
as the first argument. Raises an error if the object has no such method bound.

### find-method
::: tip usage
```
(find-method klass id)
  klass := type-descriptor or builtin record descriptor
  id    := symbol; method id
=> procedure or #f
```
:::

Looks up the method with `id` in klass `class`. Returns the procedure
implementing the method or `#f` if the method is not bound in the class
hierarchy.

### call-next-method
::: tip usage
```
(call-next-method klass obj id . args)
  klass := type-descriptor or builting record descriptor
  obj   := object
  id    := symbol; method id
=> any
```
:::

Invokes the next method in `obj`'s hierarchy, following `klass`.

### next-method
::: tip usage
```
(next-method klass obj id)
  klass := type-descriptor or builting record descriptor
  obj   := object
  id    := symbol; method id
=> procedure or #f
```
:::

Returns the next method in `obj`'s hierarchy, following `klass`.

### method-ref
::: tip usage
```
(method-ref obj id)
  obj := object
  id  := symbol; method id
=> procedure or #f
```
:::

Looks up the method with `id` in `obj`'s hierarchy.

### bound-method-ref
::: tip usage
```
(bound-method-ref obj id)
  obj := object
  id  := symbol; method id
=> procedure or #f
```
:::

Looks up the method with `id` in `obj`'s hierarchy and returns
a procedure which applies the method currying the object.

### checked-method-ref
::: tip usage
```
(checked-method-ref ...)
```
:::

Like `method-ref`, but raises an error if the method is not found.

### checked-bound-method-ref
::: tip usage
```
(checked-bound-method-ref ...)
```
:::

Like `bound-method-ref`, but raises an error if the method is not found.

### direct-method-ref
::: tip usage
```
(direct-method-ref klass id)
  klass := type-descriptor
  id    := symbol; method id
=> procedure or #f
```
:::

Returns the binding of method with `id` in class `klass`.



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
::: tip usage
```
(true . args)
=> #t
```
:::

Returns `#t`, ignoring its arguments.

### true?
::: tip usage
```
(true? obj)
=> boolean
```
:::

Returns true if the object is `#t`.

### false
::: tip usage
```
(false . args)
=> #f
```
:::

Returns `#f`, ignoring its arguments.

### void
::: tip usage
```
(void . args)
=> #!void
```
:::

Returns `#!void`, ignoring its arguments

### void?
::: tip usage
```
(void? obj)
=> boolean
```
:::

Returns true if the object is `#!void`.

### eof-object
::: tip usage
```
(eof-object . args)
```
:::

Returns the eof object, ignoring its arguments.

### identity
::: tip usage
```
(identity x)
=> x
```
:::

The identity function.

### dssl-object?
::: tip usage
```
(dssl-object? obj)
=> boolean
```
:::

Returns true if the object is a DSSL syntactic token.

### dssl-key-object?
::: tip usage
```
(dssl-key-object? obj)
=> boolean
```
:::

Returns true if the object is `#!key`.

### dssl-rest-object?
::: tip usage
```
(dssl-rest-object? obj)
=> boolean
```
:::

Returns true if the object is `#!rest`.

### dssl-optional-object?
::: tip usage
```
(dssl-optional-object? obj)
=> boolean
```
:::

Returns true if the object is `#!optional`.

### immediate?
::: tip usage
```
(immediate? obj)
=> boolean
```
:::

Returns true if the object is an immediate value.


## Hash Tables

### make-hash-table
::: tip usage
```
(make-hash-table . options)

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
:::

Creates a hash table.

### make-hash-table-eq
::: tip usage
```
(make-hash-table-eq . options)
=> (make-hash-table test: eq? options ...)
```
:::

Creates a hash table using `eq?` as the test function

### make-hash-table-eqv
::: tip usage
```
(make-hash-table-eqv . options)
=> (make-hash-table test: eqv? options ...)
```
:::

Creates a hash table using `eqv?` as the test function

### hash?
::: tip usage
```
(hash? obj)
=> boolean
```
:::

Returns true if the object is a hash table.

### hash-table?
::: tip usage
```
(hash-table? obj)
=> boolean
```
:::

Same as `hash?`.

### hash-length
::: tip usage
```
(hash-length hash)
  hash := hash table
=> fixnum
```
:::

Returns the number of entries in the `hash`.

### hash-ref
::: tip usage
```
(hash-ref hash key [default])
  hash := hash table
  key  := any
=> any
```
:::

Returns the value bound to `key`, defaulting to `default` if no value was
bound. If the default is absent, then if an `init` parameter was specified
in the table constructor it is returned instead. If no `init` parameter was
specified, then an error is raised.

### hash-get
::: tip usage
```
(hash-get hash key)
=> (hash-ref hash key #f)
```
:::

Returns the value bound to `key` or `#f` if no value was bound.

### hash-put!
::: tip usage
```
(hash-put! hash key val)
  hash := hash table
  key  := any
  val  := val
```
:::

Binds `key` to `val` in `hash`.

### hash-update!
::: tip usage
```
(hash-update! hash key update [default = #!void])
  hash := hash table
  key  := any
  update: = procedure of one argument
```
:::

Updates `hash`'s binding for `key` to the result of
`(update (hash-ref hash key default))`

### hash-remove!
::: tip usage
```
(hash-remove! hash key)
  hash := hash table
  key  := any
```
:::

Removes `hash`'s binding for `key`.

### hash-clear!
::: tip usage
```
(hash-clear! hash [size = 10])
  hash := hash table
  size := fixnum; the new initial size for the hash table
```
:::

Clears the hash table.

### hash-key?
::: tip usage
```
(hash-key? hash key)
  hash := hash table
  key  := any
=> boolean
```
:::

Returns true if `hash` has a binding for `key`.

### hash-for-each
::: tip usage
```
(hash-for-each proc hash)
  proc := procedure of two arguments
  hash := hash table
```
:::

Applies `proc` to all key/value bindings in `hash`.

### hash-map
::: tip usage
```
(hash-map proc hash)
  proc := procedure of two arguments
  hash := hash table
=> list
```
:::

Maps the bindings of `hash` to a list, applying `proc`.

### hash-fold
::: tip usage
```
(hash-fold proc iv hash)
  proc := procedure of three arguments
  iv   := any; initial value
  hash := hash table
```
:::

Fold the bindings of `hash`, applying `proc` with initial value `iv`.

### hash-find
::: tip usage
```
(hash-find proc hash)
  proc := procedure of two arguments
  hash := hash table
=> any
```
:::

Returns the first true value returned when applying `proc` to the bindings
of `hash` or `#f`.

### hash-keys
::: tip usage
```
(hash-keys hash)
  hash := hash table
=> list
```
:::

Returns the list of keys for all bindings in `hash`

### hash-values
::: tip usage
```
(hash-values hash)
  hash := hash table
=> list
```
:::

Returns the list of values for all bindings in `hash`.

### hash-copy
::: tip usage
```
(hash-copy hash)
  hash := hash table
=> hash table
```
:::

Copies `hash` into a new hash table

### hash-merge
::: tip usage
```
(hash-merge hash . more)
  hash := hash table
  more := list of hash tables
=> hash table
```
:::

Creates a new hash table, merging `more` hash tables into `hash`.

### hash-merge!
::: tip usage
```
(hash-merge! hash . more)
  hash := hash table
  more := list of hash tables
=> hash table
```
:::

Merges `more` hash tables into `hash`.

### hash-&gt;list
::: tip usage
```
(hash->list hash)
  hash := hash table
=> list
```
:::

Returns the bindings of `hash` as an alist.

### list-&gt;hash-table
::: tip usage
```
(list->hash-table lst . options)
  lst := alist; table bindings
=> hash table
```
:::

Creates a hash table from an alist.

### list-&gt;hash-table-eq
::: tip usage
```
(list->hash-table-eq lst . options)
  lst := alist; table bindings
```
:::

Same as `list->hash-table`, but using `eq?` as the test function for the table.

### list-&gt;hash-table-eqv
::: tip usage
```
(list->hash-table-eqv lst . options)
  lst := alist; table bindings
```
:::

Same as `list->hash-table`, but using `eqv?` as the test function for the table.

### hash-&gt;plist
::: tip usage
```
(hash->plist hash)
  hash := hash table
=> list
```
:::

Returns the bindings of `hash` as a plist.

### plist-&gt;hash-table
::: tip usage
```
(plist->hash-table lst)
  lst := plist; table bindings
=> hash table
```
:::

Creates a hash table from a plist.

### plist-&gt;hash-table-eq
::: tip usage
```
(plist->hash-table-eq lst)
  lst := plist; table bindings
```
:::

Same as `plist->hash-table`, but using `eq?` as the test function for the table.

### plist-&gt;hash-table-eqv
::: tip usage
```
(plist->hash-table-eqv lst)
  lst := plist; table bindings
```
:::

Same as `plist->hash-table`, but using `eqv?` as the test function for the table.

## Lists

### make-list
::: tip usage
```
(make-list len [val = #f])
=> list
```
:::

Creates a `len` element list, with value `val`.

### cons*
::: tip usage
```
(cons* x y ... tail)
=> (cons x (cons y ... (cons ... tail)))
```
:::

Conses `x`, `y`, ... to `tail`.

### foldl
::: tip usage
```
(foldl f iv . lsts)
  f    := procedure
  iv   := any
  lsts := lists
=> any
```
:::

Left fold.

### foldr
::: tip usage
```
(foldr f iv . lsts)
  f    := procedure
  iv   := any
  lsts := lists
=> any
```
:::

Right fold.

### andmap
::: tip usage
```
(andmap f . lsts)
  f    := procedure
  lsts := lists
=> boolean
```
:::

Boolean and fold.

### ormap
::: tip usage
```
(ormap f . lsts)
  f    := procedure
  lsts := lists
=> any
```
:::

Boolean or fold.

### filter
::: tip usage
```
(filter f lst)
  f   := procedure
  lst := list
=> list
```
:::

Returns a new list including only elements `x` for which `(f x)` is true.

### filter-map
::: tip usage
```
(filter-map f . lsts)
  f     := procedure
  lsts := lists
=> list
```
:::

Filter and map; returns a new list including the true results of `(f x y ...)`,
where `x`, `y`, ... are the elements of each list in `lsts`.

### iota
::: tip usage
```
(iota count [start = 0] [step = 1])
  count := fixnum; elements in the list
  start,step := number
=> list
```
:::

Returns a list of `count` elements, iteratating from `start` and adding `step` on
each iteration.

### last-pair
::: tip usage
```
(last-pair obj)
  obj := pair or
=> pair
```
:::

Returns the last pair in the tail of `obj`; ie the tail pair of a (possibly improper) list.

### last
::: tip usage
```
(last obj)
  obj := pair
=> (car (last-pair obj))
```
:::

Returns the car of the last pair of `obj`.

### assgetq
::: tip usage
```
(assgetq key alist [default = #f])
  key   := any
  alist := associative list
=> any
```
:::

Returns the value associated with `key` in `alist`, using `eq?` for
the key comparison.  If the key is not found, then if `default` is a
procedure it is applied on the `key`. Otherwise returns `default`.

### assgetv
::: tip usage
```
(assgetv key alist [default = #f])
  key   := any
  alist := associative list
=> any
```
:::

Like `assgetq`, but uses `eqv?` for the key comparison.

### assget
::: tip usage
```
(assget key alist [default = #f])
  key   := any
  alist := associative list
=> any
```
:::

Like `assgetq`, but uses `equal?` for the key comparison.

### pgetq
::: tip usage
```
(pgetq key plist [default = #f])
  key   := any
  plist := property list
=> any
```
:::

Like `assgetq`, but for plists.

### pgetv
::: tip usage
```
(pgetv key plist [default = #f])
  key   := any
  plist := property list
=> any
```
:::

Like `assgetv`, but for plists.

### pget
::: tip usage
```
(pget key plist [default = #f])
  key   := any
  plist := property list
=> any
```
:::

Like `assget`, but for plists.

### find
::: tip usage
```
(find pred lst)
  pred := procedure
  lst  := list
=> any
```
:::

Returns the first element in `lst` that satisfies `pred`.

### memf
::: tip usage
```
(memf pred lst)
  pred := procedure
  lst  := list
=> pair or #f
```
:::

Generalization of `member`; returns the first pair in `lst` whose `car`
satisfies `pred`.

### remove
::: tip usage
```
(remove el lst [=? = equal?])
  el  := any
  lst := list
=> list
```
:::

Returns `lst` removing the first element `x` that satisfies `(=? el x)`.

### remv
::: tip usage
```
(remv el lst)
  el  := any
  lst := list
=> list
```
:::

Apply `remove` using `eqv?` as the comparator.

### remq
::: tip usage
```
(remq el lst)
  el  := any
  lst := list
=> list
```
:::

Apply `remove` using `eq?` as the comparator.

### remf
::: tip usage
```
(remf pred lst)
  pred := procedure
  lst  := list
=> list
```
:::

Like `remove`, but removes the first element `x` that satisfies `(pred x)`

## Numerics

### 1+
::: tip usage
```
(1+ num)
  num := number
=> number
```
:::

Increment by 1.

### 1-
::: tip usage
```
(1- num)
  num := number
=> number
```
:::

Decrement by 1.

### fx1+
::: tip usage
```
(fx1+ num)
  num := fixnum
=> fixnum
```
:::

Increment a fixnum by 1.

### fx1-
::: tip usage
```
(fx1- num)
  num := fixnum
=> fixnum
```
:::

Decrement a fixnum by 1.

### fxshift
::: tip usage
```
(fxshift num shift)
=> fixnum
```
:::

Shift a fixnum arithmetically; same as `fxarithmetic-shift`.

### fx/
::: tip usage
```
(fx/ x y)
  x, y := fixnum
=> fixnum
```
:::

Perform fixnum division; same as `fxquotient`.

### nonnegative-fixnum?
::: tip usage
```
(nonnegative-fixnum? obj)
=> boolean
```
:::

Returns true if the object is a non-negative fixnum.

## Symbols

### make-symbol
::: tip usage
```
(make-symbol . templates)
=> symbol

template:
 string
 symbol
 keyword
 number
```
:::

Creates a symbol concatenating the arguments.

### interned-symbol?
::: tip usage
```
(interned-symbol? obj)
=> boolean
```
:::

Returns true if the object is an intermed symbol.


### interned-keyword?
::: tip usage
```
(interned-keyword? obj)
=> boolean
```
:::

Returns true if the object is an intermed keyword.

### symbol-&gt;keyword
::: tip usage
```
(symbol->keyword sym)
  sym := symbol
=> keyword
```
:::

Converts a symbol to a keyword.

### keyword-&gt;symbol
::: tip usage
```
(keyword->symbol kw)
  kw := keyword
=> symbol
```
:::

Converts a keyword to a symbol

## Strings

### bytes-&gt;string
::: tip usage
```
(bytes->string bstr [encoding = 'UTF-8])
  bstr := u8vector
=> string
```
:::

Decodes a byte vector to a string.

Note: if you are decoding UTF-8, then you should consider using `string->utf8`
from `:std/text/utf8` which is considerably faster.

### string-&gt;bytes
::: tip usage
```
(string->bytes str [encoding = 'UTF-8])
  str := string
=> u8vector
```
:::

Encodes a string to a bytevector.

Note: if you are encoding UTF-8, then you should consider using `utf8->string`
from `:std/text/utf8` which is considerably faster.


### substring-&gt;bytes
::: tip usage
```
(substring->bytes str start end [encoding = 'UTF-8])
  str := string
  start, end := fixnum
=> u8vector
```
:::

Encodes a substring to a vector.

Note: if you are encoding UTF-8, then you should consider using `utf8-encode`
from `:std/text/utf8` which is considerably faster.


### string-empty?
::: tip usage
```
(string-empty? str)
  str := string
=> boolean
```
:::

Returns true if `str` is the empty string.

### string-prefix?
::: tip usage
```
(string-prefix? str prefix)
  str, prefix := string
=> boolean
```
:::

Returns true if `prefix` is a prefix of `string`.

### string-index
::: tip usage
```
(string-index str char [start = 0])
  str   := string
  char  := character
  start := fixnum
=> fixnum or #f
```
:::

Returns the index of the first occurence of `char` in `str`.

### string-rindex
::: tip usage
```
(string-rindex str char [start = #f])
  str   := string
  char  := character
  start := fixnum or #f
=> fixnum or #f

```
:::

Returns the index of the first occurence from the right of `char` in `str`.

### string-split
::: tip usage
```
(string-split str char)
  str  := string
  char := character; separator
=> list
```
:::

Splits `str` into substrings using `char` as the separator.

### string-join
::: tip usage
```
(string-join strs char)
  str  := list of strings
  char := character; separator
```
:::

Joins `strs` into a string, using `char` as the separator.

## Control Flow

### make-promise
::: tip usage
```
(make-promise thunk)
=> promise
```
:::

Creates a promise.

### promise?
::: tip usage
```
(promise? obj)
=> boolean
```
:::

Returns true if the object is a promise.

### call-with-parameters
::: tip usage
```
(call-with-parameters thunk . parameterization)
  thunk := procedure
=> any

parameterization:
 parameter value ...
```
:::

Calls `thunk` with parameterization.

### with-catch
::: tip usage
```
(with-catch handler thunk)
  handler, thunk := procedure
=> any
```
:::

Calls `thunk` with `handler` as the exception catcher.

### with-unwind-protect
::: tip usage
```
(with-unwind-protect thunk fini)
  thunk, fini := procedure
=> any
```
:::

Calls `thunk`, invoking `fini` when execution exits the dynamic extent
of `thunk`.

## Exception Objects

### exception::t
```
(def exception::t)
```

Base class for all Gerbil-derived exception types. It's an empty struct type
that extends the Gambit builtin exception record type.

See also [Exception Base Classes](errors.md).
### error::t
::: tip usage
```
(def error::t)
```
:::

Base class for all Gerbil-derived errors. It's a struct type that extends
`exception::t` and has 3 fields: message, irritants, and trace.

See also [Exception Base Classes](errors.md).

### exception?
::: tip usage
```
(exception? obj)
=> boolean
```
:::

Returns true if the object is an exception object. This includes
the builtin Gambit exceptions.

### error?
::: tip usage
```
(error? obj)
=> boolean
```
:::

Returns true if the object is an instance of `error::t`.

### error-object?
::: tip usage
```
(error-object? obj)
=> boolean
```
:::

Returns true if the object is an exception object raised by the builtin `error`
procedure. Note that this is separate from instances of `error::t`; nomenclature.

### error-message
::: tip usage
```
(error-message obj)
=> string
```
:::

Returns the message associated with an error instance. If the object is not
an error instance, it returns the result of `(display-exception obj)`.

### error-irritants
::: tip usage
```
(error-irritants obj)
=> list or #f
```
:::

Returns the irritants associated with an error instance. If the object is
not an error instance, it returns `#f`.

### error-trace
::: tip usage
```
(error-trace obj)
=> any
```
:::

Returns the trace associated with an error instance. If the object is not
an error instance, it returns `#f`.

## Miscellaneous Procedures

### values-count
::: tip usage
```
(values-count obj)
=> fixnum
```
:::

Counts the values in the object. If the object is not multiple `values`,
it is considered a single value.

### values-ref
::: tip usage
```
(values-ref obj n)
  n := fixnum
=> any
```
:::

Returns the `n`th value in the object. If the object is not multiple `values`,
it returns the object itself.

### values-&gt;list
::: tip usage
```
(values->list obj)
=> list
```
:::

Converts multiple `values` to a list. If the object is not multiple `values`,
it returns a list containing the object.

### subvector-&gt;list
::: tip usage
```
(subvector->list obj [start = 0])
=> list
```
:::

Coverts a vector-like object to a list, starting from field `start`.

### vector-map
::: tip usage
```
(vector-map f . vectors)
  f := procedure
  vectors := list of vectors
=> any
```
:::

Map for vectors.

### displayln
::: tip usage
```
(displayln . args)
```
:::

Displays the arguments, followd by a newline.

### display*
::: tip usage
```
(display* . args)
```
:::

Displays the arguments.

### file-newer?
::: tip usage
```
(file-newer? a b)
  a, b := string
=> boolean
```
:::

Returns true if file `a` is newer than `b`. Both files must exist.

### create-directory*
::: tip usage
```
(create-directory* path [perms = #o755])
  path  := string
  perms := fixnum
```
:::

Creates a directory and its parents if they don't exist, like `mkdir -p`.

### keyword-dispatch
::: tip usage
```
(keyword-dispatch kwt proc . args)
=> any
```
:::

Dispatches a keyword lambda. You shouldn't invoke this directly.

### load-module
::: tip usage
```
(load-module modpath [reload = #f])
  modpath := string
  reload  := boolean
=> string
```
:::

Loads a module from the file system. If the module is already loaded, then it's
only reloaded if `reload` is specified. Returns the path of the loaded module.

## Syntax Objects

### AST::t
```
(def AST::t)
```

Base class for syntax objects. It is a struct type with two fields,
content and location.

### make-AST
::: tip usage
```
(make-AST e src)
  e   := any
  src := location or #f
=> syntax-object
```
:::

Creates a new syntax object.

### AST?
::: tip usage
```
(AST? obj)
=> boolean
```
:::

Returns true if the object is a syntax object.

### AST-e
::: tip usage
```
(AST-e ast)
  ast := syntax object
=> any
```
:::

Returns the content of a syntax object.

### AST-source
::: tip usage
```
(AST-source ast)
  ast := syntax object
=> location or #f
```
:::

Returns the source location of a syntax object

### read-syntax
::: tip usage
```
(read-syntax [port = (current-input-port)])
=> syntax object or eof
```
:::

Reads the next syntax object from `port`.

### read-syntax-from-file
::: tip usage
```
(read-syntax-from-file path)
  path := string
=> list of syntax objects
```
:::

Reads the contents of a file as syntax objects.

### source-location?
::: tip usage
```
(source-location? obj)
=> boolean
```
:::

Returns true if the object is a source location.

### source-location-path?
::: tip usage
```
(source-location-path? obj)
=> boolean
```
:::

Returns true if the object is a source location with a file path.

### source-location-path
::: tip usage
```
(source-location-path loc)
  loc := source location with a path
=> string
```
:::

Returns the source location path.

## System Information

### gerbil-system-version-string
::: tip usage
```
(gerbil-system-version-string)
=> string
```
:::

The full Gerbil system version.

### gerbil-system
::: tip usage
```
(gerbil-system)
=> symbol
```
:::

Symbolic name of the gerbil system; this is defined as a `cond-expand` feature by the
expander.

### gerbil-runtime-smp?
::: tip usage
```
(gerbil-runtime-smp?)
=> boolean
```
:::

Returns true if the SMP scheduler is detected at runtime.

### gerbil-greeting
```
(def gerbil-greeting)
```

The greeting displayed by the interpreter at interactive load; a string.


## Thread Primitives

The following primitives are defined in the `:gerbil/gambit/threads` prelude module.

::: tip usage
(import :gerbil/gambit/threads)
:::

### spawn
::: tip usage
```
(spawn f . args)
  f := procedure
=> actor thread
```
:::

Spawns an actor thread, invoking `(f . args)`.

Differences of actor threads and plain Gambit threads:
- actor threads have an abortive exception handler that unwinds the stack
  on exceptional exits thus ensuring that unwind finalizers are run.
- actor threads have an extra field for efficient access to thread locals.

### spawn/name
::: tip usage
```
(spawn/name name f . args)
  name := any
  f     := procedure
=> actor thread
```
:::

Like `spawn`, but the thread is named.

### spawn/group
::: tip usage
```
(spawn/group name f . args)
  name := any
  f     := procedure
=> actor thread
```
:::

Like `spawn`, but the thread is in a new thread group with name `name`.

### spawn-actor
::: tip usage
```
(spawn-actor f args name tgroup)
  f      := procedure
  args   := list; procedure arguments
  name   := any
  tgroup := thread-group
=> actor thread
```
:::

Spanws an actor thread.

### spawn-thread
::: tip usage
```
(spawn-thread thunk [name] [tgroup])
  thunk := procedure
  name   := any
  tgroup := thread-group
=> thread
```
:::

Spawns a plain thread

### actor-thread?
::: tip usage
```
(actor-thread? obj)
=> boolean
```
:::

Returns true if the object is an actor thread.

### thread-local-ref
::: tip usage
```
(thread-local-ref key [default])
  key, default := any
=> any
```
:::

Retrieves the thread local value associated with key.

### thread-local-get
::: tip usage
```
(thread-local-get key)
  key := any
=> any
```
:::

Retrieves the thread local value associated with key, defaulting to `#f`.

### thread-local-set!
::: tip usage
```
(thread-local-set! key val)
  key, val := any
```
:::

Sets the thread local value associated with key.

### thread-local-clear!
::: tip usage
```
(thread-local-clear! key)
  key := any
```
:::

Clears the thread local value associated with key.

### thread-local-table
::: tip usage
```
(thread-local-table)
=> hash table
```
:::

Return the table of thread local values, creating it if it doesn't exist.


### current-thread-group
::: tip usage
```
(current-thread-group)
=> thread-group
```
:::

Returns the thread-group of the current thread.

### with-lock
::: tip usage
```
(with-lock mx thunk)
  mx    := mutex
  thunk := procedure
=> any
```
:::

Evalutes `thunk` in a dynamic extent where `mx` is locked.

### unhandled-actor-exception-hook-set!
::: tip usage
```
(unhandled-actor-exception-hook-set! proc)
  proc := procedure
```
:::

Hooks the actor exception handler to invoke `(proc continuation exxception)` on uncaught
exceptions occuring in actor threads.

### dump-stack-trace!
::: tip usage
```
(dump-stack-trace! cont exn [port = (current-error-port)])

```
:::

Dumps a stack trace from an exception handler hook.


### with-exception-stack-trace
::: tip usage
```
(with-exception-stack-trace thunk [port = (current-error-port)])
  thunk := procedure
=> any
```
:::

Evaluate `thunk`, with a handler that dumps a stack trace on uncaught exceptions.

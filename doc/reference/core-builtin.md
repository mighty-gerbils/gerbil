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
(make-list ...)
```
:::

Please document me!

### cons*
::: tip usage
```
(cons* ...)
```
:::

Please document me!

### foldl
::: tip usage
```
(foldl ...)
```
:::

Please document me!

### foldr
::: tip usage
```
(foldr ...)
```
:::

Please document me!

### andmap
::: tip usage
```
(andmap ...)
```
:::

Please document me!

### ormap
::: tip usage
```
(ormap ...)
```
:::

Please document me!

### filter
::: tip usage
```
(filter ...)
```
:::

Please document me!

### filter-map
::: tip usage
```
(filter-map ...)
```
:::

Please document me!

### iota
::: tip usage
```
(iota ...)
```
:::

Please document me!

### last-pair
::: tip usage
```
(last-pair ...)
```
:::

Please document me!

### last
::: tip usage
```
(last ...)
```
:::

Please document me!

### assgetq
::: tip usage
```
(assgetq ...)
```
:::

Please document me!

### assgetv
::: tip usage
```
(assgetv ...)
```
:::

Please document me!

### assget
::: tip usage
```
(assget ...)
```
:::

Please document me!

### assget*
::: tip usage
```
(assget* ...)
```
:::

Please document me!

### pgetq
::: tip usage
```
(pgetq ...)
```
:::

Please document me!

### pgetv
::: tip usage
```
(pgetv ...)
```
:::

Please document me!

### pget
::: tip usage
```
(pget ...)
```
:::

Please document me!

### pget*
::: tip usage
```
(pget* ...)
```
:::

Please document me!

### find
::: tip usage
```
(find ...)
```
:::

Please document me!

### memf
::: tip usage
```
(memf ...)
```
:::

Please document me!

### remove
::: tip usage
```
(remove ...)
```
:::

Please document me!

### remv
::: tip usage
```
(remv ...)
```
:::

Please document me!

### remq
::: tip usage
```
(remq ...)
```
:::

Please document me!

### remf
::: tip usage
```
(remf ...)
```
:::

Please document me!

## Numerics

### 1+
::: tip usage
```
(1+ ...)
```
:::

Please document me!

### 1-
::: tip usage
```
(1- ...)
```
:::

Please document me!

### fx1+
::: tip usage
```
(fx1+ ...)
```
:::

Please document me!

### fx1-
::: tip usage
```
(fx1- ...)
```
:::

Please document me!

### fxshift
::: tip usage
```
(fxshift ...)
```
:::

Please document me!

### fx/
::: tip usage
```
(fx/ ...)
```
:::

Please document me!

### nonnegative-fixnum?
::: tip usage
```
(nonnegative-fixnum? obj)
=> boolean
```
:::

Returns true if the object is a non-negative fixnum.

## Symbols

### interned-symbol?
::: tip usage
```
(interned-symbol? ...)
```
:::

Please document me!

### make-symbol
::: tip usage
```
(make-symbol ...)
```
:::

Please document me!

### interned-keyword?
::: tip usage
```
(interned-keyword? ...)
```
:::

Please document me!

### symbol-&gt;keyword
::: tip usage
```
(symbol->keyword ...)
```
:::

Please document me!

### keyword-&gt;symbol
::: tip usage
```
(keyword->symbol ...)
```
:::

Please document me!

## Strings

### bytes-&gt;string
::: tip usage
```
(bytes->string ...)
```
:::

Please document me!

### string-&gt;bytes
::: tip usage
```
(string->bytes ...)
```
:::

Please document me!

### substring-&gt;bytes
::: tip usage
```
(substring->bytes ...)
```
:::

Please document me!

### string-empty?
::: tip usage
```
(string-empty? ...)
```
:::

Please document me!

### string-prefix?
::: tip usage
```
(string-prefix? ...)
```
:::

Please document me!

### string-index
::: tip usage
```
(string-index ...)
```
:::

Please document me!

### string-rindex
::: tip usage
```
(string-rindex ...)
```
:::

Please document me!

### string-split
::: tip usage
```
(string-split ...)
```
:::

Please document me!

### string-join
::: tip usage
```
(string-join ...)
```
:::

Please document me!

## Control Flow

### make-promise
::: tip usage
```
(make-promise ...)
```
:::

Please document me!

### promise?
::: tip usage
```
(promise? ...)
```
:::

Please document me!

### call-with-parameters
::: tip usage
```
(call-with-parameters ...)
```
:::

Please document me!

### call-with-escape
::: tip usage
```
(call-with-escape ...)
```
:::

Please document me!

### with-catch
::: tip usage
```
(with-catch ...)
```
:::

Please document me!

### with-unwind-protect
::: tip usage
```
(with-unwind-protect ...)
```
:::

Please document me!

## Exceptions

### exception-type::t
::: tip usage
```
(exception-type::t ...)
```
:::

Please document me!

### exception::t
::: tip usage
```
(exception::t ...)
```
:::

Please document me!

### error::t
::: tip usage
```
(error::t ...)
```
:::

Please document me!

### exception?
::: tip usage
```
(exception? ...)
```
:::

Please document me!

### error?
::: tip usage
```
(error? ...)
```
:::

Please document me!

### error-object?
::: tip usage
```
(error-object? ...)
```
:::

Please document me!

### error-message
::: tip usage
```
(error-message ...)
```
:::

Please document me!

### error-irritants
::: tip usage
```
(error-irritants ...)
```
:::

Please document me!

### error-trace
::: tip usage
```
(error-trace ...)
```
:::

Please document me!

## Miscellaneous Procedures

### values-count
::: tip usage
```
(values-count ...)
```
:::

Please document me!

### values-ref
::: tip usage
```
(values-ref ...)
```
:::

Please document me!

### values-&gt;list
::: tip usage
```
(values->list ...)
```
:::

Please document me!

### subvector-&gt;list
::: tip usage
```
(subvector->list ...)
```
:::

Please document me!

### vector-map
::: tip usage
```
(vector-map ...)
```
:::

Please document me!

### displayln
::: tip usage
```
(displayln ...)
```
:::

Please document me!

### display*
::: tip usage
```
(display* ...)
```
:::

Please document me!

### file-newer?
::: tip usage
```
(file-newer? ...)
```
:::

Please document me!

### create-directory*
::: tip usage
```
(create-directory* ...)
```
:::

Please document me!

### keyword-dispatch
::: tip usage
```
(keyword-dispatch ...)
```
:::

Please document me!

### load-module
::: tip usage
```
(load-module ...)
```
:::

Please document me!

## Syntax Objects

### AST::t
::: tip usage
```
(AST::t ...)
```
:::

Please document me!

### AST?
::: tip usage
```
(AST? ...)
```
:::

Please document me!

### AST-e
::: tip usage
```
(AST-e ...)
```
:::

Please document me!

### AST-source
::: tip usage
```
(AST-source ...)
```
:::

Please document me!

### make-AST
::: tip usage
```
(make-AST ...)
```
:::

Please document me!

### read-syntax
::: tip usage
```
(read-syntax ...)
```
:::

Please document me!

### read-syntax-from-file
::: tip usage
```
(read-syntax-from-file ...)
```
:::

Please document me!

### source-location?
::: tip usage
```
(source-location? ...)
```
:::

Please document me!

### source-location-path?
::: tip usage
```
(source-location-path? ...)
```
:::

Please document me!

### source-location-path
::: tip usage
```
(source-location-path ...)
```
:::

Please document me!

## System Information

### gerbil-system-version-string
::: tip usage
```
(gerbil-system-version-string ...)
```
:::

Please document me!

### gerbil-system
::: tip usage
```
(gerbil-system ...)
```
:::

Please document me!

### gerbil-runtime-smp?
::: tip usage
```
(gerbil-runtime-smp? ...)
```
:::

Please document me!

### gerbil-greeting
::: tip usage
```
(gerbil-greeting ...)
```
:::

Please document me!


## Thread Primitives

The following primitives are defined in the `:gerbil/gambit/threads` prelude module.

::: tip usage
(import :gerbil/gambit/threads)
:::

### spawn
::: tip usage
```
(spawn ...)
```
:::

Please document me!

### spawn/name
::: tip usage
```
(spawn/name ...)
```
:::

Please document me!

### spawn/group
::: tip usage
```
(spawn/group ...)
```
:::

Please document me!

### spawn-actor
::: tip usage
```
(spawn-actor ...)
```
:::

Please document me!

### spawn-thread
::: tip usage
```
(spawn-thread ...)
```
:::

Please document me!

### thread-local-ref
::: tip usage
```
(thread-local-ref ...)
```
:::

Please document me!

### thread-local-get
::: tip usage
```
(thread-local-get ...)
```
:::

Please document me!

### thread-local-set!
::: tip usage
```
(thread-local-set! ...)
```
:::

Please document me!

### thread-local-clear!
::: tip usage
```
(thread-local-clear! ...)
```
:::

Please document me!

### thread-local-table
::: tip usage
```
(thread-local-table ...)
```
:::

Please document me!

### unhandled-actor-exception-hook-set!
::: tip usage
```
(unhandled-actor-exception-hook-set! ...)
```
:::

Please document me!

### current-thread-group
::: tip usage
```
(current-thread-group ...)
```
:::

Please document me!

### with-exception-stack-trace
::: tip usage
```
(with-exception-stack-trace ...)
```
:::

Please document me!

### with-lock
::: tip usage
```
(with-lock ...)
```
:::

Please document me!

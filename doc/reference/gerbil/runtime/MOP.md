# MOP

See the [Guide](/guide/intro.md#objective-gerbil)
for an introduction to Gerbil's object system.
These procedures provide the meta-object protocol.

## MOP Procedures
### class-type?
```scheme
(class-type? o)
```

### class-type=?
```scheme
(class-type=? klass other-klass)
```

### class-type-final?
```scheme
(class-type-final? klass)
```

### class-type-struct?
```scheme
(class-type-struct? klass)
```

### class-type-sealed?
```scheme
(class-type-sealed? klass)
```

### class-type-metaclass?
```scheme
(class-type-metaclass? klass)
```

### class-type-system?
```scheme
(class-type-system? klass)
```

### class-type-id
```scheme
(class-type-id klass)
```

### class-type-name
```scheme
(class-type-name klass)
```

### class-type-super
```scheme
(class-type-super klass)
```

### class-type-flags
```scheme
(class-type-flags klass)
```

### class-type-fields
```scheme
(class-type-fields klass)
```

### class-type-precedence-list
```scheme
(class-type-precedence-list klass)
```

### class-type-slot-vector
```scheme
(class-type-slot-vector klass)
```

### class-type-slot-table
```scheme
(class-type-slot-table klass)
```

### class-type-properties
```scheme
(class-type-properties klass)
```

### class-type-constructor
```scheme
(class-type-constructor klass)
```

### class-type-methods
```scheme
(class-type-methods klass)
```

### class-type-slot-list
```scheme
(class-type-slot-list klass)
```

### class-type-field-count
```scheme
(class-type-field-count klass)
```

### class-type-seal!
```scheme
(class-type-seal! klass)
```

### subclass?
```scheme
(subclass? maybe-sub-class maybe-super-class)
```

### substruct?
```scheme
(substruct? maybe-sub-struct maybe-super-struct)
```

### base-struct
```scheme
(base-struct . all-supers)
```

### make-class-type
```scheme
(make-class-type id name direct-supers direct-slots properties constructor)
```

### make-class-predicate
```scheme
(make-class-predicate klass)
```

### make-class-slot-accessor
```scheme
(make-class-slot-accessor klass slot)
```

### make-class-slot-mutator
```scheme
(make-class-slot-mutator klass slot)
```

### make-class-slot-unchecked-accessor
```scheme
(make-class-slot-unchecked-accessor klass slot)
```

### make-class-slot-unchecked-mutator
```scheme
(make-class-slot-unchecked-mutator klass slot)
```

### direct-instance?
```scheme
(direct-instance? klass obj)
```

### struct-instance?
```scheme
(struct-instance? klass obj)
```

### class-instance?
```scheme
(class-instance? klass obj)
```

### make-object
```scheme
(make-object klass k)
```

### object?
```scheme
(object? o)
```

### object-type
```scheme
(object-type o)
```

### object-fill!
```scheme
(object-fill! obj fill)
```

### new-instance
```scheme
(new-instance klass)
```

### make-instance
```scheme
(make-instance klass . args)
```

### struct-instance-init!
```scheme
(struct-instance-init! obj . args)
```

### class-instance-init!
```scheme
(class-instance-init! obj . args)
```

### constructor-init!
```scheme
(constructor-init! klass kons-id obj . args)
```

### struct-copy
```scheme
(struct-copy obj)
```

### struct->list
```scheme
(struct->list obj)
```

### class->list
```scheme
(class->list obj)
```

### slot-ref
```scheme
(slot-ref obj slot [E=__slot-error]))
```

### slot-set!
```scheme
(slot-set! obj slot val [E=__slot-error])
```

### unchecked-slot-ref
```scheme
(unchecked-slot-ref obj slot)
```

### unchecked-slot-set!
```scheme
(unchecked-slot-set! obj slot val)
```

### call-method
```scheme
(call-method obj id . args)
```

### method-ref
```scheme
(method-ref obj id)
```

### checked-method-ref
```scheme
(checked-method-ref obj id)
```

### bound-method-ref
```scheme
(bound-method-ref obj id)
```

### checked-bound-method-ref
```scheme
(checked-bound-method-ref obj id)
```

### find-method
```scheme
(find-method klass obj id)
```

### direct-method-ref
```scheme
(direct-method-ref klass obj id)
```

### bind-method!
```scheme
(bind-method! klass id proc [rebind?=#f])
```

### bind-specializer!
```scheme
(bind-specializer! method-proc specializer)
```

### seal-class!
```scheme
(seal-class! klass)
```

### next-method
```scheme
(next-method subklass obj id)
```

### call-next-method
```scheme
(call-next-method subklass obj id . args)
```

### class-of
```scheme
(class-of o)
```


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

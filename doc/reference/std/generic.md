# Generics

The `:std/generic` library provides support for generic methods.

::: tip usage
(import :std/generic)
:::

## Overview

Please write me!

## Macros

### defgeneric
```
(defgeneric ...)
```

Please document me!

### defmethod
```
(defmethod ...)
```

Please document me!

### defbuiltin-type
```
(defbuiltin-type ...)
```

Please document me!

### defprimitive-type
```
(defprimitive-type ...)
```

Please document me!


## Predefined Types

### \<bignum>
```
(defprimitive-type <bignum> ...)
```

Please document me!

### \<boolean>
```
(defprimitive-type <boolean> ...)
```

Please document me!

### \<box>
```
(defprimitive-type <box> ...)
```

Please document me!

### \<byte-port>
```
(defbuiltin-type <byte-port> ...)
```

Please document me!

### \<char>
```
(defprimitive-type <char> ...)
```

Please document me!

### \<character-port>
```
(defbuiltin-type <character-port> ...)
```

Please document me!

### \<complex>
```
(defprimitive-type <complex> ...)
```

Please document me!

### \<condvar>
```
(defbuiltin-type <condvar> ...)
```

Please document me!

### \<continuation>
```
(defprimitive-type <continuation> ...)
```

Please document me!

### \<device-port>
```
(defbuiltin-type <device-port> ...)
```

Please document me!

### \<directory-port>
```
(defbuiltin-type <directory-port> ...)
```

Please document me!

### \<eof>
```
(defprimitive-type <eof> ...)
```

Please document me!

### \<event-queue-port>
```
(defbuiltin-type <event-queue-port> ...)
```

Please document me!

### \<exception>
```
(defbuiltin-type <exception> ...)
```

Please document me!

### \<f32vector>
```
(defprimitive-type <f32vector> ...)
```

Please document me!

### \<f64vector>
```
(defprimitive-type <f64vector> ...)
```

Please document me!

### \<fixnum>
```
(defprimitive-type <fixnum> ...)
```

Please document me!

### \<flonum>
```
(defprimitive-type <flonum> ...)
```

Please document me!

### \<foreign>
```
(defprimitive-type <foreign> ...)
```

Please document me!

### \<hash-table>
```
(defprimitive-type <hash-table> ...)
```

Please document me!

### \<integer>
```
(defprimitive-type <integer> ...)
```

Please document me!

### \<keyword>
```
(defprimitive-type <keyword> ...)
```

Please document me!

### \<mutex>
```
(defbuiltin-type <mutex> ...)
```

Please document me!

### \<null>
```
(defprimitive-type <null> ...)
```

Please document me!

### \<number>
```
(defprimitive-type <number> ...)
```

Please document me!

### \<object-port>
```
(defbuiltin-type <object-port> ...)
```

Please document me!

### \<object>
```
(defprimitive-type <object> ...)
```

Please document me!

### \<pair>
```
(defprimitive-type <pair> ...)
```

Please document me!

### \<port>
```
(defbuiltin-type <port> ...)
```

Please document me!

### \<procedure>
```
(defprimitive-type <procedure> ...)
```

Please document me!

### \<promise>
```
(defprimitive-type <promise> ...)
```

Please document me!

### \<rational>
```
(defprimitive-type <rational> ...)
```

Please document me!

### \<raw-device-port>
```
(defbuiltin-type <raw-device-port> ...)
```

Please document me!

### \<readtable>
```
(defbuiltin-type <readtable> ...)
```

Please document me!

### \<real>
```
(defprimitive-type <real> ...)
```

Please document me!

### \<s16vector>
```
(defprimitive-type <s16vector> ...)
```

Please document me!

### \<s32vector>
```
(defprimitive-type <s32vector> ...)
```

Please document me!

### \<s64vector>
```
(defprimitive-type <s64vector> ...)
```

Please document me!

### \<s8vector>
```
(defprimitive-type <s8vector> ...)
```

Please document me!

### \<string-port>
```
(defbuiltin-type <string-port> ...)
```

Please document me!

### \<string>
```
(defprimitive-type <string> ...)
```

Please document me!

### \<symbol>
```
(defprimitive-type <symbol> ...)
```

Please document me!

### \<t>
```
(defprimitive-type <t> ...)
```

Please document me!

### \<tcp-server-port>
```
(defbuiltin-type <tcp-server-port> ...)
```

Please document me!

### \<thread-group>
```
(defbuiltin-type <thread-group> ...)
```

Please document me!

### \<thread>
```
(defbuiltin-type <thread> ...)
```

Please document me!

### \<time>
```
(defbuiltin-type <time> ...)
```

Please document me!

### \<type>
```
(defbuiltin-type <type> ...)
```

Please document me!

### \<u16vector>
```
(defprimitive-type <u16vector> ...)
```

Please document me!

### \<u32vector>
```
(defprimitive-type <u32vector> ...)
```

Please document me!

### \<u64vector>
```
(defprimitive-type <u64vector> ...)
```

Please document me!

### \<u8vector-port>
```
(defbuiltin-type <u8vector-port> ...)
```

Please document me!

### \<u8vector>

```
(defprimitive-type <u8vector> ...)
```

Please document me!

### \<values>
```
(defprimitive-type <values> ...)
```

Please document me!

### \<vector-port>
```
(defbuiltin-type <vector-port> ...)
```

Please document me!

### \<vector>
```
(defprimitive-type <vector> ...)
```

Please document me!

### \<void>
```
(defbuiltin-type <void> ...)
```

Please document me!


## Generic Object Types

### type-of
```
(type-of ...)
```

Please document me!

### linear-type-of
```
(linear-type-of ...)
```

Please document me!

### type-linearize-class
```
(type-linearize-class ...)
```

Please document me!


## Generic Method Objects

### make-generic
```
(make-generic ...)
```

Please document me!

### generic?
```
(generic? ...)
```

Please document me!

### generic-id
```
(generic-id ...)
```

Please document me!

### generic-bind!
```
(generic-bind! ...)
```

Please document me!

### generic-dispatch
```
(generic-dispatch ...)
```

Please document me!

### generic-dispatch-next
```
(generic-dispatch-next ...)
```

Please document me!


## Syntax Bindings

### generic-info
```
(defclass (generic-info macro-object) (table procedure))
```

Please document me!

### generic-type-info
```
(defclass generic-type-info ())
```

Please document me!

### primitive-type-info
```
(defclass (primitive-type-info generic-type-info) (type))
```

Please document me!

### builtin-type-info
```
(defclass (builtin-type-info generic-type-info) (runtime-identifier))
```

Please document me!


## Example

Please write me!

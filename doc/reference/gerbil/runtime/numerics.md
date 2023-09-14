# Numerics

## 1+
``` scheme
(1+ num) -> number

  num := number
```

Increment *num* by 1.

## 1-
``` scheme
(1- num) -> number

  num := number
```

Decrement *num* by 1.

## fx1+
```
(fx1+ num) -> fixnum

  num := fixnum
```

Increment a fixnum *num* by 1.

## fx1-
``` scheme
(fx1- num) -> fixnum

  num := fixnum
```

Decrement a fixnum *num* by 1.

## fxshift
``` scheme
(fxshift num shift) -> fixnum

  num   := fixnum
  shift := number
```

Shift a fixnum *num*  arithmetically by *shift*; same as `fxarithmetic-shift`.

## fx/
``` scheme
(fx/ x y) -> fixnum

  x, y := fixnum
```

Perform fixnum division on *x* and *y*; same as `fxquotient`.

## nonnegative-fixnum?
``` scheme
(nonnegative-fixnum? obj) -> boolean

  obj := any object
```

Returns true if the object *obj* is a non-negative fixnum.


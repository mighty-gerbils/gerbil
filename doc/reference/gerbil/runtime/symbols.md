# Symbols

## make-symbol
``` scheme
(make-symbol . templates) -> symbol

template:
 string
 symbol
 keyword
 number
```

Creates a symbol concatenating the arguments.

## interned-symbol?
``` scheme
(interned-symbol? obj) -> boolean

  obj := any object
```

Returns true if the object *obj* is an interned symbol.


## interned-keyword?
``` scheme
(interned-keyword? obj) -> boolean

  obj := any object
```

Returns true if the object *obj* is an interned keyword.

## symbol->keyword
``` scheme
(symbol->keyword sym) -> keyword

  sym := symbol
```

Converts a symbol *sym* to a keyword.

## keyword->symbol
``` scheme
(keyword->symbol kw) -> symbol

  kw := keyword
```

Converts a keyword *kw* to a symbol


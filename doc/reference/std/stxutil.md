# Syntax Utilities

Utilities for expanders.

::: tip To use the bindings from this module:
``` scheme
(import (for-syntax :std/stxutil))
```
:::

## format-id
```scheme
(format-id ctx fmt arg ...) -> identifier

  ctx := context identifier
  fmt := a format string, as in :std/format
  arg := a format argument; syntax objects are automatically unwrapped
```

Formats an identifier, using `fmt` as the format string and `ctx` as the syntactic context.

::: tip Examples:
```scheme
(import (for-syntax :std/stxutil))
(defsyntax (make-pred stx)
  (syntax-case stx ()
    ((_ id) (format-id #'id "~a?" #'id))))

> (make-pred pair)
=> #<procedure #8 pair?>
```
:::

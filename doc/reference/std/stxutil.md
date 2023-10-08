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

## maybe-make-symbol
```scheme
(maybe-make-symbol str str+ ...) -> symbol-or-string
```

Concatenates string designators `str str+` into a string as by `as-string`,
and either returns a thus-named interned symbol if it already interned,
or returns a string if no such symbol was interned.

This is useful when reading data from not-fully-trusted sources,
that you want to match against existing symbol infrastructure,
but should not be allowed to intern spamfuls of symbols into your memory
to make it leak away and trigger more errors.

::: tip Examples:
```scheme
> (maybe-make-symbol 'symbol '- 'not "-interned-yet")
"symbol-not-interned-yet"

> (maybe-make-symbol "sym" "bol")
symbol
```
:::

## maybe-make-keyword
```scheme
(maybe-make-keyword str str+ ...) -> keyword-or-string
```

Concatenates string designators `str str+` into a string as by `as-string`,
and either returns a thus-named interned keyword if it already interned,
or returns a string if no such keyword was interned.

This is useful when reading data from not-fully-trusted sources,
that you want to match against existing keyword infrastructure,
but should not be allowed to intern spamfuls of keywords into your memory
to make it leak away and trigger more errors.

::: tip Examples:
```scheme
> (maybe-make-keyword 'keyword '- 'not "-interned-yet")
"keyword-not-interned-yet"

> (maybe-make-keyword "key" "word")
keyword:
```
:::

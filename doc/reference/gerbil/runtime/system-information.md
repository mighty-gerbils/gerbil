# System Information

## gerbil-system-version-string
``` scheme
(gerbil-system-version-string) -> string
```

The full Gerbil system version.

## gerbil-system
``` scheme
(gerbil-system) -> symbol
```

Symbolic name of the gerbil system; this is defined as a `cond-expand` feature by the
expander.

## gerbil-runtime-smp?
``` scheme
(gerbil-runtime-smp?) -> boolean
```

Returns true if the SMP scheduler is detected at runtime.

## gerbil-greeting
```
(def gerbil-greeting)
```

The greeting displayed by the interpreter at interactive load; a string.


# Shared-structure Equality.
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/shared)
```
:::

## equal-shared?
``` scheme
(equal-shared? a b) -> boolean

  a, b := structures to check
```

Checks whether *a* and *b*, two potentially recursive, cyclic or otherwise
infinite shared structures, e.g. trees or graphs, are equal.

::: warning Deprecation note:
Gambit 4.9.3 (released 2019-02-05) added similar support for handling shared
structures with `equal?`, superseding `equal-shared?`.
:::

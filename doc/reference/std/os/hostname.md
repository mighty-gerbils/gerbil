# Hostnames

The `:std/os/hostname` library provides a procedure to get the current hostname.

::: tip To use the bindings from this module:
```scheme
(import :std/os/hostname)
```
:::

## hostname

```scheme
(hostname)
=> :string
```

Returns the current device's hostname.

::: tip Example:
```scheme
(import (only-in :std/os/hostname
                 hostname))

(hostname)
;; => "my-desktop"
```
:::

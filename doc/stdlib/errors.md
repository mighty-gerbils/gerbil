# Errors

::: tip usage
(import :std/error)
:::

Common error base classes.

```
(import :std/error)

;; exports:

  <error>
  exception
  (struct-out io-error timeout-error)
  raise-io-error
  raise-timeout
```
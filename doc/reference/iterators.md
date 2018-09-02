# Iterators

::: tip usage
(import :std/iter)
:::

```
(import :std/iter)

;; exports:

  (struct-out iterator)
  :iter iter-end iter-end? iter-nil iter-nil?
  iter-start! iter-value iter-next!
  for for* for/collect for/fold
  in-range in-naturals in-hash-keys in-hash-values
  in-input-lines in-input-chars in-input-bytes
  iter-filter iter-map iter-filter-map
  yield
```
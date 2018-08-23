# Debugging



## std/debug/heap

Heap debugging utilities

```
(import :std/debug/heap)

;; exports:

  memory-usage
  heap-type-stats
  dump-heap-stats!
  walk-heap!
  count-still
  still-objects
  still-objects/refcount
```

## std/debug/memleak

Memory leak debugging utilities

```
(import :std/debug/memleak)

;; exports:

  heap-summary heap-summary-delta
  dump-heap-summary!
  watch-heap!

```

## std/debug/threads

Thread debugging utilities

```
(import :std/debug/threads)

;; exports:

  dump-thread-stack-trace!
  dump-thread!
  dump-thread-group!
  dump-thread-group!*
  dump-all-threads!
```

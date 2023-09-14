## Synchronized Data Structures.
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/sync)
```
:::

### make-sync-hash
``` scheme
(make-sync-hash ht) -> sync-hash

  ht := regular non-synced hash-table
```

Wraps *ht*, a regular hash-table, and returns a synced variant that supports
thread-safe table operations by implicitly locking.

Note: It's discouraged to modify the unwrapped, non-thread-safe *ht* after this
point.

::: tip Examples:
``` scheme
> (import :gerbil/gambit/threads :std/iter :std/srfi/1)
> (def (increment! sht)
    (for (x (in-range 1000))
      (sync-hash-do sht (cut hash-update! <> x 1+ 0))))

> (def sht (make-sync-hash (make-hash-table-eqv)))
> (def threads (for/collect (n (in-range 16))
                 (spawn-thread (cut increment! sht))))
> (for-each thread-join! threads)
> (sync-hash-do sht
    (lambda (ht)
      (every (cut = 16 <>)
             (hash-values ht))))
#t
```
:::

### sync-hash?
``` scheme
(sync-hash? sht) -> boolean

  sht := sync-hash to check
```

Returns `#t` if *sht* is a sync-hash, `#f` otherwise.

Synced variant of `hash?` and `hash-table?`.

::: tip Examples:
``` scheme
> (import :std/sugar)
> (sync-hash? (make-sync-hash (hash)))
#t

> (sync-hash? (make-hash-table))
#f
```
:::

### sync-hash-ref
``` scheme
(sync-hash-ref sht key default) -> any | default

  sht     := sync-hash to check
  key     := key to loop up in sht
  default := non-optional default value when key not present
```

Returns the value bound to *key* in *sht*, defaulting to *default* if no such
value was bound.

Synced variant of `hash-ref`.

::: tip Examples:
``` scheme
> (import :std/sugar)
> (def sht (make-sync-hash (hash (एक 1) (दस 10) (सौ 100))))
> (sync-hash-ref sht 'दस 0)
10
> (sync-hash-ref sht 'सहस्र 0)
0
> (sync-hash-ref sht 10 'NONE)
NONE
```
:::

### sync-hash-get
``` scheme
(sync-hash-get sht key) -> any | #f

  sht := sync-hash to check
  key := key to loop up in sht
```

Same as `(sync-hash-ref sht key #f)`.

Synced variant of `hash-get`.

::: tip Examples:
``` scheme
> (import :std/sugar)
> (def sht (make-sync-hash (hash (一 1) (十 10) (百 100))))
> (sync-hash-get sht '十)
10
> (sync-hash-get sht '千)
#f
> (sync-hash-get sht 10)
#f
```
:::

### sync-hash-put!
``` scheme
(sync-hash-put! sht key val) -> unspecified

  sht      := sync-hash to modify
  key, val := key-value pair to add to sht
```

Binds *key* to *val* in *sht*.

Synced variant of `hash-put!`.

::: tip Examples:
``` scheme
> (import :std/sugar)
> (make-sync-hash (hash))
#<sync-hash #77>
> (sync-hash-put! #77 #\a [1 2 3])
> (sync-hash-put! #77 'a  [4 5 6])
> (sync-hash-put! #77 "a" [7 8 9])
> (sync-hash-do #77 (cut hash-values <>))
((1 2 3) (4 5 6) (7 8 9))
```
:::

### sync-hash-remove!
``` scheme
(sync-hash-remove! sht key) -> void

  sht := sync-hash to modify
  key := key to look up in sht
```

Removes *sht*'s binding for *key*.

Synced variant of `hash-remove!`.

::: tip Examples:
``` scheme
> (import :std/sugar)
> (let (sht (make-sync-hash (hash (a 10) (b 20) (c 30) (d 40))))
    (sync-hash-remove! sht 'b)
    (sync-hash-remove! sht 'e)    ; nothing happens
    (sync-hash-do sht
      (lambda (ht) (hash-for-each (cut displayln <> " -> " <>) ht))))
a -> 10
d -> 40
c -> 30
```
:::

### sync-hash-key?
``` scheme
(sync-hash-key? sht key) -> boolean

  sht := sync-hash to check
  key := key to look up in sht
```

Returns `#t` if *sht* has a binding for key, `#f` otherwise.

Synced variant of `hash-key?`.

::: tip Examples:
``` scheme
> (def sht (make-sync-hash (list->hash-table [[1 . #\a] [2 . #\b] [3 . #\c]])))
> (sync-hash-key? sht 1)
#t
> (sync-hash-key? sht 3)
#t
> (sync-hash-key? sht 4)
#f
```
:::

### sync-hash-do
``` scheme
(sync-hash-do sht proc) -> any

  sht  := sync-hash to iterate or modify
  proc := procedure handling internal hash-table
```

Allows thread-safe access to the unwrapped regular hash-table of *sht* by
passing it to *proc* within an implicitly locked scope. Returns whatever *proc*
is returning.

::: tip Examples:
``` scheme
> (import :std/sugar)
> (def sht (make-sync-hash (hash (A0 160) (B1 177) (C2 194) (D3 211) (E4 228))))
> (sync-hash-do sht
    (lambda (ht)
      (hash-fold (lambda (k v i) (+ v i)) 0 ht)))
970
> (sync-hash-do sht (cut hash-put! <> 'C2 0))
> (sync-hash-get sht 'C2)
0
> (sync-hash-do sht hash->list)
((A0 . 160) (B1 . 177) (D3 . 211) (E4 . 228) (C2 . 0))
> (sync-hash-do sht (lambda (ht) (apply max (hash-values ht))))
228
```
:::

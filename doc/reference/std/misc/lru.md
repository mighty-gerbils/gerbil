# LRU caches
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/lru)
```
:::

## make-lru-cache
``` scheme
(make-lru-cache cap) -> lru-cache | error

  cap := max capacity of cache, fixnum
```

Creates a new empty Least Recently Used (LRU) cache, a cache replacement data
structure, which tracks element usage and drops seldom used ones when full to
make room for new elements. *cap* is the capacity, i.e., the number of elements
the cache can hold before purging older entries. *cap* needs to be at least 1,
otherwise an error is signaled.

::: tip Examples:
``` scheme
> (def lru (make-lru-cache 3))
> (lru-cache-put! lru 'a "heavy-load-01")
> (lru-cache-put! lru 'b "heavy-load-02")
> (lru-cache-put! lru 'c "heavy-load-03")
> (lru-cache-put! lru 'd "heavy-load-04")
> (lru-cache-put! lru 'e "heavy-load-05")
> (lru-cache-size lru)
3                  ; cache full, older entries are eviced first:
> (lru-cache->list lru)
((e . "heavy-load-05") (d . "heavy-load-04") (c . "heavy-load-03"))
> (lru-cache-get lru 'c)
"heavy-load-03"    ; cache hit, bring to front:
> (lru-cache->list lru)
((c . "heavy-load-03") (e . "heavy-load-05") (d . "heavy-load-04"))

> (import :std/iter)
> (for ((values key load) lru)
    (displayln "key: " key ", load: " load))
key: c, load: heavy-load-03
key: e, load: heavy-load-05
key: d, load: heavy-load-04
```
:::

## lru-cache?
``` scheme
(lru-cache? lru) -> boolean

  lru := lru-cache to check
```

Returns `#t` if *lru* is an LRU cache, `#f` otherwise.

::: tip Examples:
``` scheme
> (lru-cache? (make-lru-cache 25))
#t
```
:::

## lru-cache-size
``` scheme
(lru-cache-size lru) -> fixnum

  lru := lru-cache to check
```

Returns the current size (i.e., the number of elements the LRU cache holds, not
the capacity) of *lru*.

::: tip Examples:
``` scheme
> (let (lru (make-lru-cache 3))
    (lru-cache-put! lru 1 #x01)
    (lru-cache-put! lru 2 #x02)
    (lru-cache-size lru))
2

> (lru-cache-size (make-lru-cache 1000))
0
```
:::

## lru-cache-capacity
``` scheme
(lru-cache-capacity lru) -> fixnum

  lru := lru-cache to check
```

Returns the maximum number of elements *lru* can hold.

::: tip Examples:
``` scheme
> (let (lru (make-lru-cache 3))
    (lru-cache-put! lru 1 #x01)
    (lru-cache-put! lru 2 #x02)
    (lru-cache-capacity lru))
3

> (lru-cache-capacity (make-lru-cache 1000))
1000
```
:::

## lru-cache-put!
``` scheme
(lru-cache-put! lru key val) -> void

  lru      := lru-cache
  key, val := key-value association to insert into lru
```

Puts an association of *key* to *val* into *lru*, in the queue head position to
be precise. If the cache is full, then the tail of the LRU queue (i.e., the
value least recently used) is dropped from the cache.

::: tip Examples:
``` scheme
> (defstruct resource (raw-data))
> (make-lru-cache 3)
#<lru-cache #35>
> (lru-cache-put! #35 1 (make-resource 'HUGE))
> (lru-cache-put! #35 2 (make-resource 'SMALL))
> (lru-cache-put! #35 3 (make-resource 'LARGE))
> (lru-cache->list #35)
((3 . #<resource #36>) (2 . #<resource #37>) (1 . #<resource #38>))
> (lru-cache-put! #35 4 'non-resource)    ; cache is full, evict old element
> (lru-cache->list #35)
((4 . non-resource) (3 . #<resource #36>) (2 . #<resource #37>))
> (resource-raw-data #38)
HUGE
```
:::

## lru-cache-remove!
``` scheme
(lru-cache-remove! lru key) -> void

  lru := lru-cache to remove from
  key := key to look up
```

Removes the association of *key* from *lru*, making room for a new element in
the lru cache.

::: tip Examples:
``` scheme
> (make-lru-cache 3)
#<lru-cache #39>
> (lru-cache-put! #39 1 "this")
> (lru-cache-put! #39 1 "that")    ; same key, simply updated
> (lru-cache->list #39)
((1 . "that"))
> (lru-cache-remove! #39 1)
> (lru-cache->list #39)
()
```
:::

## lru-cache-ref
``` scheme
(lru-cache-ref lru key [default = absent-obj]) -> any | default | error

  lru     := lru-cache to access
  key     := key to look up
  default := optional element returned when key can't be found
```

Returns the association of *key* in *lru*, and promotes the node to the head of
the LRU queue. If there is no association, then *default* is returned. If the
default is omitted, then an error is raised.

::: tip Examples:
``` scheme
> (let (lru (make-lru-cache 3))
    (lru-cache-put! lru 'a "file-a")
    (lru-cache-put! lru 'b "file-b")
    (lru-cache-put! lru 'c "file-c")
    (displayln (lru-cache->list lru))
    (displayln (lru-cache-ref lru 'b 'NONE))
    (displayln (lru-cache->list lru))
    (lru-cache-ref lru 'd 'NONE))
((c . file-c) (b . file-b) (a . file-a))
file-b
((b . file-b) (c . file-c) (a . file-a))
NONE
```
:::

## lru-cache-get
``` scheme
(lru-cache-ref lru key) -> any | #f

  lru := lru-cache to access
  key := key to look up
```

Same as `(lru-cache-ref lru key #f)`.

::: tip Examples:
``` scheme
> (lru-cache-get (make-lru-cache 3) 'not-in-here)
#f
```
:::

## lru-cache-flush!
``` scheme
(lru-cache-flush! lru) -> lru-cache

  lru := lru-cache to clear
```

Removes all elements from *lru* and returns the empty LRU cache. The capacity
remains unchanged.

::: tip Examples:
``` scheme
> (let (lru (make-lru-cache 100))
    (lru-cache-put! lru "first"  '1st)
    (lru-cache-put! lru "second" '2nd)
    (lru-cache-put! lru "third"  '3rd)
    (displayln (lru-cache-size lru) " " (lru-cache-capacity lru))
    (displayln (lru-cache-flush! lru))
    (displayln (lru-cache-size lru) " " (lru-cache-capacity lru)))
3 100
#<lru-cache #12>
0 100
```
:::

## lru-cache-for-each
``` scheme
(lru-cache-for-each proc lru) -> void

  proc := procedure to be called for each key-value pair in lru
  lru  := lru-cache
```

Applies `(proc key val)` for every key-value association in *lru*, in Most
Recently Used (MRU) order. Isn't returning anything, executed for its side
effects.

::: tip Examples:
``` scheme
> (make-lru-cache 3)
#<lru-cache #43>
> (for-each (lambda (x) (lru-cache-put! #43 x (* x x))) [1 2 3 4 5])
> (lru-cache-for-each (lambda (k v) (displayln k " " v)) #43)
5 25
4 16
3 9
```
:::

## lru-cache-walk
``` scheme
(lru-cache-walk proc lru) -> void

  proc := procedure to be called for each key-value pair in lru
  lru  := lru cache
```

Same as `(lru-cache-for-each proc lru)`.

## lru-cache-fold
``` scheme
(lru-cache-fold proc init lru) -> any

  proc := procedure to be called for each key-value pair in lru
  init := initial value
  lru  := lru-cache
```

Folds *lru* in Most Recently Used (MRU) order.

*proc*'s signature is expected to look like this: `(proc key val
prev-intermediate) -> next-intermediate)`. `lru-cache-fold` returns the last
*next-intermediate* value produced by *proc*. Furthermore, *prev-intermediate*
will be set to *init* at the beginning.

::: tip Examples:
``` scheme
> (let (lru (make-lru-cache 3))
    (lru-cache-put! lru 'a "creatures")
    (lru-cache-put! lru 'b "fluffy")
    (lru-cache-put! lru 'c "are")
    (lru-cache-fold (lambda (k v i) (string-append i " " v))
                    "gerbils" lru))
"gerbils are fluffy creatures"
```
:::

## lru-cache-foldr
``` scheme
(lru-cache-foldr proc init lru) -> any

  proc := procedure to be called for each key-value pair in lru
  init := initial value
  lru  := lru-cache
```

Where `lru-cache-fold` folds in Most Recently Used (MRU) order,
`lru-cache-foldr` folds *lru* in Least Recently Used (LRU) order.

::: tip Examples:
``` scheme
> (let (lru (make-lru-cache 5))
    (lru-cache-put! lru 'a (iota 5))
    (lru-cache-put! lru 'b (iota 4))
    (lru-cache-put! lru 'c (iota 3))
    (lru-cache-fold (lambda (k v i) (cons v i)) [] lru))
((0 1 2 3 4) (0 1 2 3) (0 1 2))
```
:::

## lru-cache->list
``` scheme
(lru-cache->list lru) -> alist

  lru := lru-cache
```

Returns an alist of key-value associations in *lru*, in Most Recently Used (MRU)
order.

::: tip Examples:
``` scheme
> (import :std/srfi/14)
> (make-lru-cache 10)
#<lru-cache #47>
> (for-each (cut lru-cache-put! #47 <> <>) (iota 10) (char-set->list char-set:letter))
> (lru-cache->list #47)
((9 . #\J)
 (8 . #\I)
 (7 . #\H)
 (6 . #\G)
 (5 . #\F)
 (4 . #\E)
 (3 . #\D)
 (2 . #\C)
 (1 . #\B)
 (0 . #\A))
```
:::

## in-lru-cache
``` scheme
(in-lru-cache lru) -> iterator

  lru := lru-cache to iterate over
```

Creates an iterator over *lru*, yielding key-value values in Most Recently Used
(MRU) order.

::: tip Examples:
``` scheme
> (import :std/iter)
> (let (lru (make-lru-cache 3))
    (lru-cache-put! lru 1 #\a)
    (lru-cache-put! lru 2 #\b)
    (lru-cache-put! lru 3 #\c)
    (for ((values k v) (in-lru-cache lru))    ; or short: (for ((values k v) lru) ...)
      (displayln k " -> " v)))
3 -> c
2 -> b
1 -> a
```
:::

## in-lru-cache-keys
``` scheme
(in-lru-cache-keys lru) -> iterator

  lru := lru-cache to iterate over
```

Creates an iterator over *lru*, yielding keys in Most Recently Used (MRU) order.

::: tip Examples:
``` scheme
> (import :std/iter)
> (let (lru (make-lru-cache 3))
    (lru-cache-put! lru 1 #\a)
    (lru-cache-put! lru 2 #\b)
    (lru-cache-put! lru 3 #\c)
    (for (x (in-lru-cache-keys lru))
      (displayln x)))
3
2
1
```
:::

## in-lru-cache-values
``` scheme
(in-lru-cache-values lru) -> iterator

  lru := lru-cache to iterate over
```

Creates an iterator over *lru*, yielding values in Most Recently Used (MRU) order.

::: tip Examples:
``` scheme
> (import :std/iter)
> (let (lru (make-lru-cache 3))
    (lru-cache-put! lru 1 #\a)
    (lru-cache-put! lru 2 #\b)
    (lru-cache-put! lru 3 #\c)
    (for (x (in-lru-cache-values lru))
      (displayln x)))
c
b
a
```
:::

## lru-cache
``` scheme
(defsyntax lru-cache)
```

LRU cache type for user-defined generics and destructuring.

::: tip Examples:
``` scheme
;; possible lru-cache iterator implementation:
(defmethod (:iter (lru lru-cache))
  (in-lru-cache lru))

(def (in-lru-cache lru)
  (def (iterate)
    (lru-cache-for-each yield lru))
  (in-coroutine iterate))
```
:::

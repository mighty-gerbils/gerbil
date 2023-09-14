
## Hash-table utilities
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/hash)
```
:::

### hash-ref/default
``` scheme
(hash-ensure-ref table key default) -> value
```

Checks whether the given *key* is present in the *table*.
If it is, return the associated value.
If it is not, call the *default* thunk and return its value.

### hash-ensure-ref
``` scheme
(hash-ensure-ref table key default) -> value
```

Checks whether the given *key* is present in the *table*.
If it is, return the associated value.
If it is not, call the *default* thunk,
associate its return value to the key in the table,
and then return the value.

### invert-hash
``` scheme
(invert-hash hash to: (to (hash))) -> hash-1
```

Returns the inverse of a *hash* table:
a hash-table *hash-1* whose keys are the values of those of *hash*,
each mapped to one value that is a key that *hash* associates to the value.
If the key is unique, it will be used; if it isn't, any single of those keys may be used.

If an existing hash-table is passed as a *to* argument, it will be used as hash-table populated
with those inverse keys, instead of a new equal-hash-table.
This feature can notably be used to provide a hash-table with different equality predicate,
or a weak hash-table, or one that is already populated for other reasons.

### invert-hash/fold
``` scheme
(invert-hash/fold hash to: (to (hash)) nil: (nil '()) cons: (cons cons)) -> hash-1
```

Returns the inverse of a *hash* table:
a hash-table *hash-1* whose keys are the values of those of *hash*,
each mapped to a value that is fold of all keys that *hash* associates to the value.
By default, the fold consists in consing those keys into a list, in an unspecified order.
It could instead create a hash-table of those keys, or a sorted list or tree of them, etc.

If an existing hash-table is passed as a *to* argument, it will be used as hash-table populated
with those inverse keys, instead of a new equal-hash-table.
This feature can notably be used to provide a hash-table with different equality predicate,
or a weak hash-table, or one that is already populated for other reasons.

### invert-hash<-vector
``` scheme
(invert-hash<-vector vector
    start: (start 0) end: (end (vector-length from))
    to: (to (make-hash-table)) key: (key identity))
 -> hash
```

Returns the inverse of the section of a *vector* in the given range from *start* included to *end* excluded,
a hash-table *hash* whose keys are extracted from values of those of *vector* by the function *key*
(that defaults to *identity*, i.e. the value itself is the key),
each mapped to one value that is an index that *vector* associates to the value.
If the index is unique, it will be used; if it isn't, any single of those indexes may be used.

If an existing hash-table is passed as a *to* argument, it will be used as hash-table populated
with those inverse keys, instead of a new equal-hash-table.
This feature can notably be used to provide a hash-table with different equality predicate,
or a weak hash-table, or one that is already populated for other reasons.

### invert-hash<-vector/fold
``` scheme
(invert-hash<-vector/fold
      from start: (start 0) end: (end (vector-length from))
      to: (to (make-hash-table)) nil: (nil '()) cons: (cons cons) key: (key identity)) -> to
```

Returns the inverse of the section of a *vector* in the given range from *start* included to *end* excluded,
a hash-table *hash* whose keys are extracted from values of those of *vector* by the function *key*
(that defaults to *identity*, i.e. the value itself is the key),
each mapped to one value that is an index that *vector* associates to the value.
Each time an index is found for a given key, it is combined together with previous indexes found
using the function *cons* (which defaults to actual `cons`),
with the value *nil* (which defaults to empty list `()`) being assumed as the initial value
before any index is found.
If an existing hash-table is passed as a *to* argument, it will be used as hash-table populated
with those inverse indexes, instead of a new equal-hash-table.
This feature can notably be used to provide a hash-table with different equality predicate,
or a weak hash-table, or one that is already populated for other reasons.



### hash-restrict-keys
``` scheme
(hash-restrict-keys hash key-list) -> hash-1
```

Returns a new hash-table *hash-1* that has a subset of the keys in *hash*,
associated to the same values as in *hash*.
The key restriction is specified as a list *key-list* of acceptable keys;
if the key in the list is present, the key-value pair is copied to the new table;
if it is not present, it is ignored.

### hash-value-map
``` scheme
(hash-value-map hash fun) -> hash-1
```
Return a new hash-table that has the same keys as the original *hash*,
but whose values have been transformed by calling the function *fun*.

### hash-key-value-map
``` scheme
(hash-key-value-map fun from (to (hash)) -> to
```
Modifies the *to* hash-table (by default, a new `equal?` hash-table),
by calling a function *fun* on each key value pair of hash-table *from*
(passed as two arguments *key* and *value*), which must return either `#f` or a cons pair `(k1 . v1)`
that will be added to the destination hash-table *to*.
If a key *k1* appears multiple times, it is not guaranteed which will present in the end,
only that one of them will.

::: tip Examples:
```scheme
> (hash->list/sort
    (hash-key-value-map
     (lambda (k v) (and (even? v) (cons (/ v 2) (string-append k k))))
     (hash ("a" 1) ("b" 2) ("c" 3) ("d" 4) ("e" 5) ("f" 6))) <)
((1 . "bb") (2 . "dd") (3 . "ff"))
```
:::

### hash-filter
```scheme
(hash-filter hash pred (to (hash))) -> hash-1
```
Return a new hash-table that has a subset of the key-value pairs in the original *hash*,
those for which the predicate *pred* returns true when called with the key and value as its two arguments.

If the *to* argument is provided, it is used instead of a new hash-table,
which allows to pre-populate it, use a different equality predicate than `equal?`,
or to specify weakness.

### hash-remove
```scheme
(hash-remove hash fun (to (hash))) -> hash-1
```
Return a new hash-table that has a subset of the key-value pairs in the original *hash*,
those for which the predicate *pred* returns false when called with the key and value as its two arguments.

If the *to* argument is provided, it is used instead of a new hash-table,
which allows to pre-populate it, use a different equality predicate than `equal?`,
or to specify weakness.

### hash-remove-value
```scheme
(hash-remove-value from val (to (hash))) -> hash-1
```
Return a new hash-table that has a subset of the key-value pairs in the original *hash*,
those for which the value is different (not `equal?`) to the given argument *val*.

If the *to* argument is provided, it is used instead of a new hash-table,
which allows to pre-populate it, to specify weakness, or
to use a different equality predicate than `equal?`
(beware though that comparison is still with `equal?` ---
for a different one, use `hash-remove` instead with a suitable predicate).

### hash-ensure-removed!
``` scheme
(hash-ensure-removed! hash key) -> hash
```
Remove from the *hash* any entry with the given *key*, and return two values:
(a) the value that was removed, if any, or `#f` if none was found, and
(b) a boolean that tells if there was a value.

### hash-ensure-modify
``` scheme
(hash-ensure-modify! hash key default function) -> value
```
Modify entry for *key* in *hash*.
If no entry exists yet, call the provided thunk to compute a *default* value.
Return the new value, after modification.

### hash-empty?
``` scheme
(hash-empty? hash) -> bool
```
Return true if *hash* is empty.

### hash-merge/override
``` scheme
(hash-merge/override hash ...) -> hash
```
Similar to `hash-merge`, creates a new hash-table with the contents of all the arguments provided,
but in case a same key is present in multiple arguments, choose the value in the rightmost argument
(instead of the leftmost as with `hash-merge`).

### hash-merge/override!
``` scheme
(hash-merge/override! hash hash1 ...) -> hash
```
Similar to `hash-merge!`, modifies the first *hash* table by updating it with the contents
of all the other arguments provided; however, as with `hash-merge/override`,
in case a same key is present in multiple arguments, choose the value in the rightmost argument
(instead of the leftmost as with `hash-merge`).

### hash->list/sort
``` scheme
(hash->list/sort hash pred) -> list
```
Similar to `hash->list` and `table->list`,
this function returns a list of the key-value pairs in the *hash* table,
but also sorts this list by keys according to the provided predicate *pred*.

::: tip Examples:
``` scheme
> (hash->list/sort (hash (3 "c") (4 "d") (1 "a") (2 "b")) <)
((1 . "a") (2 . "b") (3 . "c") (4 . "d"))
```
:::

### hash-get-set!
``` scheme
(hash-get-set! h k v) -> (void)
```

*hash-get-set!* is a synonym for *hash-put!* that makes it possible to
`(set! (hash-get h k) v)`.

::: tip Examples:
``` scheme
> (def h (hash))
> (hash-get-set! h 2 "b")
> (hash-get h 2)
"b"
> (set! (hash-get h 2) "B")
> (hash-get h 2)
"B"
```
:::

### hash-ref-set!
``` scheme
(hash-ref-set! h k v) -> (void)
(hash-ref-set! h k d v) -> (void)
```

*hash-ref-set!* is a variant of *hash-put!* that makes it possible to
`(set! (hash-ref h k) v)` or `(set! (hash-get h k default) v)`.

::: tip Examples:
``` scheme
> (def h (hash))
> (hash-ref-set! h "a" 1)
> (hash-get h "a")
1
> (set! (hash-ref h "b") 2)
> (hash-get h "b")
2
> (defrules post-increment! () ((p x) (p x 1)) ((p x y ...) (begin0 x (set! x (+ x y ...)))))
> (post-increment! (hash-ref h "a") 10)
1
> (post-increment! (hash-ref h "a" 0))
11
> (post-increment! (hash-ref h "c" 0))
0
> (post-increment! (hash-ref h "c" 0))
1
```
:::

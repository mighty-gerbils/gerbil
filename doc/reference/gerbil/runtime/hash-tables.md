# Hash Tables

## make-hash-table
``` scheme
(make-hash-table . options) -> hash table

options:
    size: size
    init: init
    weak-keys: weak-keys?
    weak-values: weak-values?
    test: test
    hash: hash
    min-load: min-load
    max-load: max-load
```

Creates a hash table.

## make-hash-table-eq
``` scheme
(make-hash-table-eq . options) -> hash table
```

Creates a hash table using `eq?` as the test function so this is equivalent to
`(make-hash-table test: eq? options ...)`.

## make-hash-table-eqv
``` scheme
(make-hash-table-eqv . options) -> hash table
```

Creates a hash table using `eqv?` as the test function so this is equivalent to `(make-hash-table test: eqv? options ...)`.


## hash?
```
(hash? obj) -> boolean

  obj := any object
```

Returns true if the object is a hash table.

## hash-table?
``` scheme
(hash-table? obj) -> boolean

  obj := any object
```

Same as `hash?`.

## hash-length
``` scheme
(hash-length hash) -> fixnum

  hash := hash table
```

Returns the number of entries in the *hash*.

## hash-ref
``` scheme
(hash-ref hash key [default]) -> any

  hash := hash table
  key  := any
```

Returns the value bound to *key*, defaulting to *default* if no value was
bound. If the default is absent, then if an *init* parameter was specified
in the table constructor it is returned instead. If no *init* parameter was
specified, then an error is raised.

## hash-get
``` scheme
(hash-get hash key) -> any

  hash := hash table
  key  := any
```

Returns the value bound to `key` or `#f` if no value was bound.
This is equivalent to `(hash-ref hash key #f)`.

## hash-put!
``` scheme
(hash-put! hash key val) -> void

  hash := hash table
  key  := any
  val  := val
```

Binds *key* to *val* in *hash*.

## hash-update!
``` scheme
(hash-update! hash key update [default = #!void]) -> void

  hash := hash table
  key  := any
  update: = procedure of one argument
```

Updates *hash*'s binding for *key* to the result of
`(update (hash-ref hash key default))`

## hash-remove!
``` scheme
(hash-remove! hash key) -> void

  hash := hash table
  key  := any
```

Removes *hash*'s binding for *key*.

## hash-clear!
``` scheme
(hash-clear! hash [size = 0]) -> void

  hash := hash table
  size := fixnum; the new initial size for the hash table or 0 for default
```

Clears the hash table.

## hash-key?
``` scheme
(hash-key? hash key) -> boolean

  hash := hash table
  key  := any
```

Returns true if *hash* has a binding for *key*.

## hash-for-each
``` scheme
(hash-for-each proc hash) -> void

  proc := procedure of two arguments
  hash := hash table
```

Applies *proc* to all key/value bindings in *hash*.

## hash-map
``` scheme
(hash-map proc hash) -> list

  proc := procedure of two arguments
  hash := hash table
```

Maps the bindings of *hash* to a list, applying *proc*.

## hash-fold
``` scheme
(hash-fold proc iv hash) -> any

  proc := procedure of three arguments
  iv   := any; initial value
  hash := hash table
```

Fold the bindings of *hash*, applying *proc* with initial *iv*.

## hash-find
``` scheme
(hash-find proc hash) -> any

  proc := procedure of two arguments
  hash := hash table
```

Returns the first true value returned when applying *proc* to the bindings
of *hash* or `#f`.

## hash-keys
``` scheme
(hash-keys hash) -> list

  hash := hash table
```

Returns the list of keys for all bindings in *hash*.

## hash-values
``` scheme
(hash-values hash) -> list

  hash := hash table
```

Returns the list of values for all bindings in *hash*.

## hash-copy
``` scheme
(hash-copy hash) -> hash table

  hash := hash table
```

Copies *hash* into a new hash table

## hash-merge
``` scheme
(hash-merge hash . more) -> hash table

  hash := hash table
  more := list of hash tables
```

Creates a new hash table, merging *more* hash tables into *hash*. Entries in hash tables on the left take precedence over entries on the right.

```
> (define t1 (list->hash-table '((a . 1) (b . 2) (c . 3))))
> (define t2 (list->hash-table '((a . 4) (b . 5) (z . 6))))
> (hash->list (hash-merge t1 t2))
((a . 1) (z . 6) (b . 2) (c . 3))
```

## hash-merge!
``` scheme
(hash-merge! hash . more) -> hash table

  hash := hash table
  more := list of hash tables
```

Merges *more* hash tables into *hash*. Entries in hash tables on the left take precedence over entries on the right.

```
> (define t1 (list->hash-table '((a . 1) (b . 2) (c . 3))))
> (define t2 (list->hash-table '((a . 4) (b . 5) (z . 6))))
> (begin (hash-merge! t1 t2) (hash->list t1))
((a . 1) (z . 6) (b . 2) (c . 3))
```

## hash->list
``` scheme
(hash->list hash) -> list

  hash := hash table
```

Returns the bindings of *hash* as an alist.

## list->hash-table
``` scheme
(list->hash-table lst . options) -> hash table

  lst := alist; table bindings
```

Creates a hash table from an alist *lst*.

## list->hash-table-eq
``` scheme
(list->hash-table-eq lst . options) -> hash table

  lst := alist; table bindings
```

Same as `list->hash-table`, but using `eq?` as the test function for the table.

## list->hash-table-eqv
``` scheme
(list->hash-table-eqv lst . options) -> hash table

  lst := alist; table bindings
```

Same as `list->hash-table`, but using `eqv?` as the test function for the table.

## hash->plist
``` scheme
(hash->plist hash) -> list

  hash := hash table
```

Returns the bindings of *hash* as a plist.

## plist->hash-table
``` scheme
(plist->hash-table lst) -> hash table

  lst := plist; table bindings
```

Creates a hash table from a plist *lst*.

## plist->hash-table-eq
``` scheme
(plist->hash-table-eq lst) -> hash table

  lst := plist; table bindings
```

Same as `plist->hash-table`, but using `eq?` as the test function for the table.

## plist->hash-table-eqv
``` scheme
(plist->hash-table-eqv lst) -> hash table

  lst := plist; table bindings
```

Same as `plist->hash-table`, but using `eqv?` as the test function for the table.

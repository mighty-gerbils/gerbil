# Shuffling
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/shuffle)
```
:::

## shuffle
``` scheme
(shuffle lst) -> list

  lst := proper list to shuffle
```

Creates a pseudo-random permutation of the values in *lst* and returns a new
list. *lst* will not be modified during this.

Implementation detail: *lst* is converted to a random-access vector first, which
is then shuffled via `vector-shuffle!`, and finally converted back to a proper
list.

::: tip Examples:
``` scheme
> (def lst [1 2 3 4 5])

> (shuffle lst)
(2 1 3 5 4)

> (shuffle lst)
(3 4 2 1 5)

> lst
(1 2 3 4 5)    ; lst is unaffected by the shuffling
```
:::

## vector-shuffle
``` scheme
(vector-shuffle vec) -> vector

  vec := vector to shuffle
```

Creates a pseudo-random permutation of the values in *vec* and returns a new
vector. *vec* will not be modified during this.

Implementation detail: *vec* is copied first, and it is this very copy that is
then shuffled via `vector-shuffle!`.

::: tip Examples:
``` scheme
> (def vec #(1 2 3 4 5))

> (vector-shuffle vec)
#(2 1 5 4 3)

> (vector-shuffle vec)
#(4 2 5 1 3)

> vec
#(1 2 3 4 5)    ; vec is unaffected by the shuffling
```
:::

## vector-shuffle!
``` scheme
(vector-shuffle! vec) -> vector

  vec := vector to shuffle
```

Creates a pseudo-random permutation of the values in *vec*, but does so
in-place, which means that *vec* will be modified directly instead of allocating
a new vector.

Implementation detail: The shuffling is performed according to Sattolo's
algorithm, a Fisher-Yates shuffle variant.

::: tip Examples:
``` scheme
> (def vec #(1 2 3 4 5))

> (vector-shuffle! vec)
#(3 4 1 5 2)

> (vector-shuffle! vec)
#(3 1 5 4 2)

> vec
#(3 1 5 4 2)
```
:::

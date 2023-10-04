# Coroutines

The `:std/coroutine` library provides support for continuation-based and thread-based coroutines.

Continuation-based coroutines are created with `coroutine`, while thread-based coroutines are
created with `cothread`. Both types of coroutine are resumed with `continue` and yield results
with `yield`.

Continuation-based coroutines are more lightweight, but by virtue of implementation they cannot
use `yield` inside finalizer blocks.
Thread-based coroutines are more heavyweight, but don't suffer from this problem as they have
a delimited dynamic scope.

::: tip usage
(import :std/coroutine)
:::

## Interface

### coroutine
```
(coroutine proc arg ...)
  proc := procedure
-> <coroutine>
```

Creates a new coroutine that evaluates proc with arguments `(proc arg ...)`.
The coroutine is initially a suspended continuation, and can be resumed
with `continue`.

### coroutine?
```
(coroutine? obj)
-> boolean
```

Returns true if the object is a coroutine.

### cothread
```
(cothread proc arg ...)
  proc := procedure
-> <cothread>
```

Creates a new cothread that evaluates proc with arguments `(proc arg ...)`.
The thread is initially suspended, and can be resumed with `continue`.

### cothread?
```
(cothread? obj)
-> boolean
```

Returns true if the object is a cothread.


### continue
```
(continue co arg ...)
  co := coroutine or cothread
-> any
```

Resumes the coroutine or cothread, with the arguments becoming the values of the last yield.
If the continuable was in initial suspended state, then it is resumed and the arguments are ignored.

### yield
```
(yield arg ...)
```

Continues execution of the main routine or thread, with the arguments becoming the values of the last continue.

### cothread-stop!
```
(cothread-stop! co)
  co := cothread
```

Stops the execution of a cothread.

## Example

Here is a coroutine that iterates from 1 to n, yielding them as values and ending the generation
with the symbol `end`.

```
(def (1-to-n n)
  (let lp ((i 1))
    (when (<= i n)
      (yield i)
      (lp (1+ i))))
  'end)

;; iterate through the values yielded by the coroutine
(let (cort (coroutine 1-to-n 10))
  (let lp ()
    (let (next (continue cort))
      (unless (eq? next 'end)
        (displayln next)
        (lp)))))

;; displays:
1
2
3
4
5
6
7
8
9
10
```

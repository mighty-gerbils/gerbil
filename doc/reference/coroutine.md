# Coroutines

The `:std/coroutine` library provides support for continuation-based coroutines.

::: tip usage
(import :std/coroutine)
:::

## Interface

### coroutine
::: tip usage
```
(coroutine proc arg ...)
  proc := procedure
=> <coroutine>
```
:::

Creates a new coroutine that evaluates proc with arguments `(proc arg ...)`.
The coroutine is initially a suspended continuation, which can be resumed
with `continue`.

### coroutine?
::: tip usage
```
(coroutine? obj)
=> boolean
```
:::

Returns true if the object is a coroutine.

### continue
::: tip usage
```
(continue cort arg ...)
  cort := coroutine
=> any
```
:::

Resumes the coroutine continuation, with the arguments becoming the values of the last yield.

### yield
::: tip usage
```
(yield arg ...)
```
:::

Continues execution of the main routine, with the arguments becoming the values of the last continue.

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

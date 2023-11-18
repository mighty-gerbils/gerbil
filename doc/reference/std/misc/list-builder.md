# List builder

The `:std/misc/list-builder` library provides
common bindings for building lists.

::: tip To use the bindings from this module:
```scheme
(import :std/misc/list-builder)
```
:::

## with-list-builder

```scheme
(with-list-builder (put! [peek]) body ...) -> list

  put! := function identifier that modifies internal list
  peek := optional function identifier that retrieves internal list
```

A more efficient Syntax sugar for the `call-with-list-builder` procedure,
so *put!* and *peek* can be used without wrapping them in a lambda first.
`with-list-builder` returns the internal list at the end.

::: tip Examples:
```scheme
> (import :std/iter)
> (with-list-builder (put!)
    (for (n (in-iota 100 1))
      (let ((mod3 (zero? (modulo n 3)))
            (mod5 (zero? (modulo n 5))))
        (put! (cond ((and mod3 mod5) "fizzbuzz")
                    (mod3 "fizz")
                    (mod5 "buzz")
                    (else n))))))
(1 2 "fizz" 4 "buzz" "fizz" ... 97 98 "fizz" "buzz")
```
:::

## call-with-list-builder

```scheme
(call-with-list-builder proc) -> list

  proc := procedure that takes two proc identifiers as input
```

Takes a procedure or lambda *proc* which itself takes two procedures
that can have any name but are called *put!* and *peek* here:

- *put!* will append its input element onto the list being built.
- *peek* retrieves the elements collected so far (initially `[]`).

Note that the list is built my mutation, so that the result of `peek`
may be mutated by subsequent calls to `poke`, and you must copy it
with `copy-list` if you want not to be affected by these mutations.

Finally, `call-with-list-builder` returns the constructed list.

::: tip Examples:
```scheme
> (import :std/iter)
> (call-with-list-builder
    (lambda (put! peek)
      (for (x (in-range 5 10))
        (displayln (peek))
        (put! (random-integer (1+ x))))))
()           ; first call to peek, no prior put!
(5)
(5 6)
(5 6 2)
(5 6 2 8)    ; fifth explicit peek call
(5 6 2 8 6)  ; final result printed by the REPL after the call returns
```
:::

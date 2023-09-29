# Contracts and Type Annotations

The `:std/contract` package provides facilities for contract checking and type annotations.

::: tip To use the bindings from this module:
```scheme
(import :std/contract)
```
:::

## Macros
### using
```scheme
(using declaration body ...)
(using (declration ...) body ...)

declation:
 (var : Type)        ; contract check or cast with type
 (var :~ predicate)  ; contract check with predicate
 (var :- Type)       ; type assertion

 Type:
  struct identifier
  class identifier
  interface interfier
```

The macro expands the declarations and creates a block that evaluates the body with the following effects:
- If the declaration is a predicate check, the object identified by
  `var` will be checked to satisfy `predicate`. If the check fails, a
  `ContractViolation` will be raised.
- If the declaration is a type contract with `:`, which can be a struct, class, or interface type, then:
  - for structs and classes, the object identified by `var` will be predicate checked.
  - for interfaces, the object identified by `var` will be cast to the interface.
- If the declaration is a type assertion with `:-` then the relevant information will be
  propagated to the rest of the expansion and the compiler with an annotation.
- Within the `body ...` syntactic context:
  - for structs, references to `var.field` will resolve to the relevant field accessor/mutator.
  - for classes, references to `var.slot-or-field` will resolve to the relevant slot or field
    accessor/mutator.
  - for interfaces, calls of the form `(var.method ...)` will dispatch to the relevant interface
    method:
    - If the declaration is a checked declaration with `:`, then the safe, contract checking
      facade procedure will be used.
    - If the declaration is a type assertion with `:-`, then the unchecked facade procedure
      will be used.

### Example

Here is an example from the standard library:
```scheme
(def (lru-cache-ref lru key (default absent-obj))
  (using (lru : lru-cache)
    (cond
     ((hash-get lru.ht key)
      => (lambda (n)
           (using (n :- node)
             (lru-cache-touch! lru n)
             n.val)))
     ((eq? default absent-obj)
      (raise-unbound-key lru-cache-ref lru key))
     (else default))))

(def (lru-cache-touch! lru n)
  (using ((lru :- lru-cache)
          (n :- node))
    (let ((hd lru.hd)
          (tl lru.tl))
      (using ((hd :- node)
              (tl :- node))
        (cond
         ((eq? n hd))
         ((eq? n tl)
          (let (prev n.prev)
            (using (prev :- node)
              (set! prev.next #f)
              (set! lru.tl prev)
              (set! n.next hd)
              (set! hd.prev n)
              (set! n.prev #f)
              (set! lru.hd n))))
         (else
          (let ((prev n.prev)
                (next n.next))
            (using ((prev :- node)
                    (next :- node))
              (set! prev.next next)
              (set! next.prev prev)
              (set! n.next hd)
              (set! hd.prev n)
              (set! n.prev #f)
              (set! lru.hd n)))))))))
```

### maybe
```scheme
(maybe predicate) -> lambda (o) -> bool
```

Macro that creates a predicate that checks that the object is either
`#f` or satisfies `predicate`.

### in-range?
```scheme
(in-range? start end) -> lambda (o) -> bool
```

Macro that creates a predicate that checks that
- the object satisfies `fixnum?`
- the fixnum is in the `[start, end)` range, exclusive for the right bound.

### in-range-inclusive?
```scheme
(in-range-inclusive? start end) -> lambda (o) -> bool
```

Macro that creates a predicate that checks that
- the object satisfies `fixnum?`
- the fixnum is in the `[start, end]` range, inclusive for the right bound.

### nonnegative-fixnum?
```scheme
(nonnegative-fixnum? o)
```

Macro version of the builtin `nonnegative-fixnum?` procedure

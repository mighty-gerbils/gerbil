# Conditional Expansion

These forms support conditional expansion, where the result of the
expansion depends on the expansion-time environment.

## cond-expand
```
(cond-expand
  <cond-expand-clause> ...
  [(else body ...)])

cond-expand-clause:
 (<cond-expand-constraint> body ...)

cond-expand-constraint:
 <identifier>  ; satisfied if a feature binding exists in the scope for the identifier
 ,expression   ; satisfied if the expression evaluates truthy at phi+1
 (defined <identifier> ...) ; satisfied if the identifiers are bound in the scope
 (not <cond-expand-constraint> ...)
 (and <cond-expand-constraint> ...)
 (or  <cond-expand-constraint> ...)
```

The fundamental conditional expansion macro; sequentially tests the
constraints; the first satisfied constraint derives the expansion by
enclosing the body in a `begin` form. If no constraint is satisfied,
then the `else` body is derived. If no `else` clause is present, the
result of the expansion is an empty `(begin)`.

## provide
```
(provide <identifier> ...)
```

Binds a feature for each identifier, that can be used for conditional expansion.

This form can only appear at top or module scope.

## require
```
(require)
=> (begin)

(require constraint rest ...)
=>
(cond-expand
 (constraint
  (require rest ...))
 (else (syntax-error ...)))
```

Asserts that certain expansion time constraints are satisfied; fails
expansion with a syntax error if the constraints are not all satisfied.

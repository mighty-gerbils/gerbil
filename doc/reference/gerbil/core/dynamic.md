# Dynamic Extend Forms

The following forms effect the dynamic extend of a computation.

## parameterize
```
(parameterize ((paremeter expr) ...) body ...)

parameter: <expression> ; must produce a parameter object
```

Evaluates `body` in a dynamic extent where the `parameter` has
the value of `expr`.

## unwind-protect
```
(unwind-protect expr postlude ...)

expr: <expression>
postlude: <expression>
```

Evaluates `expr` in a dynamic extent where the `postlude`
is evaluated on exit or result from the extent. Note that the
postlude will only be executed once when the dynamic extend ends. Any
continuation inside the dynamic extent cannot be reentered once the
postlude has been executed.

## try
```
(try
  body ...
  <catch-clause> ...
  [<finally-clause>])

catch-clause:
 (catch (pred => handler) body ...)
 (catch (pred? var) body ...)
 (catch (var) body ...)
 (catch _ body ...)

finally-clase:
 (finally postlude ...)
```

Executes the `body` in a dynamic extent with an abortive exception
handler (aka exception catch) that conditionally dipatches exception
handling code as specified by `catch` clauses. If no handling clause
matches, the exception is reraised.

If a `finally` clause is present, then the postlude is executed on
exit from the scope. Note that the finalizer is executed after any
possible exception handler.

## catch
Syntactic token for exception handling clauses within a `try` macro scope.

## finally
Syntactic token for finalization clauses within a `try` macro scope.

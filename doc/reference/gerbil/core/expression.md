# Common Expression Forms

These are common macros used for expressions.

## cond
```
(cond
 <cond-clause> ...
 [(else body ...)])

cond-clause:
 (test => receiver)
 (test body ...)
```

The clauses are processed top down, util a `test` evaluates truthy, in
which case the the expression reduces to the value of the associated
clause body.  If a `test` dispatches to a `receiver` with `=>`, then
the receiver must be a single argument procedure, that receives the
value of the test and conditional expression reduces to the value of
the application of the `receiver` to the value of the `test`. If no
`test` produces a truthy value, then the expression reduces to the
body of the `else` clause. If no `else` clause is present, then the
expression produces a void value.

## and
```
(and expr ...)
```

The boolean conjunction macro.

Evalutes the expressions in order while they reduce to a truthy value;
once a `#f` value is produced, then the value of the `and` expression
is `#f`. If all expressions are truthy, the value of `and` expression
is the value of the last expression. The empty `(and`) reduces to
`#f`.

## or
```
(or expr ...)
```
The boolean disjunction macro.

Conditionally evaluates the expressions in order until one of them
reduces to a truthy value, which becomes the values of the `or`
expression. If no expression produces a truthy value, then the value
of the `or` expression is `#f`. The empty `(and)` reduces to `#t`.

## ?
```
(? <predicate-expr> expr)
(? <predicate-expr>)
(? <predicate-expr> => receiver)
(? <predicate-expr> :: continue)
(? <predicate-expr> :: continue => receiver)

predicate-expr:
 (and <predicate-expr> ...)
 (or  <predicate-expr> ...)
 (not <predicate-expr>)
 <expression>
```

The predicate composition macro:
- `(? <predicate-expr> expr)`, composes a predicate and applies it to `expr`.
- `(? <predicate-expr>)`, creates a new predicate (a procedure of one argument that produces a truthy value) composing the predicate expression.
- `(? <predicate-expr> => receiver) ` creates a new predicate that composes the predicate expression. If the predicate expression on the argument reduces to a truthy value, it the resulting value is applied to the `receiver`.
- `(? <predicate-expr> :: continue)` creates a new predicate that composes the predicate expression; if the predicate argument satisfies the predicate composition, the `continue` procedure is applied to the it.
- `(? <predicate-expr> :: continue => receiver)` creates a new predicate that composes the predicate expression. If the predicate argument satisfies the predicate composition, the result is the application of `receiver` to the result of application of the original o0bject to `continue`.

It is probably easier to understand all this from the actual definition of the macro:
```
(defrules ? (and or not =>)
  ((recur (and pred ...) obj)
   (and (recur pred obj) ...))
  ((recur (or pred ...) obj)
   (or (recur pred obj) ...))
  ((recur (not pred) obj)
   (not (recur pred obj)))
  ((_ pred obj)
   (pred obj))
  ((recur pred)
   (lambda ($obj) (recur pred $obj)))
  ((recur pred => K)
   (lambda ($obj)
     (alet ($val (recur pred $obj))
       (K $val))))
  ((recur pred :: K)
   (lambda ($obj)
     (and (recur pred $obj)
          (K $obj))))
  ((recur pred :: proc => K)
   (lambda ($obj)
     (and (recur pred $obj)
          (K (proc $obj))))))
```

## when
```
(when test expr ...)
=>
(if test (begin expr ...) (void))
```

One arm conditional expression.

## unless
```
(unless test expr ...)
=>
(if test (void) (begin expr ...))
```

Negated one arm conditional expression.

## case
```
(case expr
 <case-clause> ...
 [<else-clause>])

case-clause:
 ((<datum> ...) => receiver)
 ((<datum> ...) expr ...)

else-clause:
 (else => receiver)
 (else expr ...)
```

Evaluates the expression `expr` and dispatches the matching clause
based on the value being in the list of datums of the clause.

Datums can be symbols, characters, numbers, strings, or atoms.


## begin0
```
(begin0 expr rest ...)
=>
(let (val expr)
  rest ...
  val)
```

Evaluates a sequence of expressions and reduces to the value of the
expression.

## @list
```
\[<list-expression-body> ...\]
(@list <list-expression-body> ...)

list-expression-body ...:
 . '<s-expression>
 . `<s-expression>
 . tail
 :: <s-expr>
 <s-expr> \... <list-expression-body> ...
 <s-expr> <list-expression-body> ...
```

The list constructor expression, normally implied with the `[]` reader
macro.

## delay
```
(delay expr)
```

Creates a promise to evaluate `expr` when needed with the `force` primitive.
The value of the expression is memoized so it will only be evaluated once.

Delay internally calls `make-promise` with a thunk that evaluates `expr`.
Delay is efficient, but only safe in the simple case of evaluation in a single thread
of expressions that succeed (i.e. no escaping continuations that later restart).
Using it in the more complex case may cause incorrect or inconsistent behavior.
To support more such complex cases (at a slight extra cost), see `delay-atomic`.

## delay-atomic
```
(delay-atomic expr)
```

Creates a promise to evaluate `expr` when needed with the `force` primitive.
The value of the expression is memoized so it will only be evaluated once.

Delay-atomic internally calls `make-atomic-promise` with a thunk that evaluates `expr`.
Delay-atomic is only slightly less efficient than `delay`, and is safe even in the case of
concurrent evaluation in a multiple threads; it will also support failures and escapes from
the thunk, and will issue an error if someone attempts to reenter such escaped thunks.

## do
```scheme
(do ((var init step ...) ...)
    (test expr ...)
  command ...)
```

The `do` macro is Gerbil's most general and powerful imperative looping construct. It allows for the creation of loops with multiple, interdependent state variables.

The loop works as follows:
1.  First, each `var` is bound to its respective `init` value.
2.  At the beginning of each iteration, the `test` is evaluated.
3.  If `test` is true, the `result` expressions are evaluated, and the value of the last `result` expression is returned. If no `result` expressions are provided, a void value is returned.
4.  If `test` is false, the `command` expressions in the loop body are evaluated in order.
5.  Finally, the `step` expressions for each variable are evaluated. All `step` expressions are computed using the variable values from the *previous* iteration. After all steps are computed, the variables are simultaneously updated with their new values, and the loop proceeds to the next iteration (starting again at step 2).

### Examples:

**- Initializing a vector**
This example uses a counter `i` to fill a pre-allocated vector. The loop body is used for the side effect of setting the vector's elements.

```scheme
;; Create a 5-element vector and fill it with values 0 through 4.
(do ((vec (make-vector 5))
     (i 0 (+ i 1)))
    ((= i 5) vec)
  (vector-set! vec i i))

;; => #(0 1 2 3 4)
```

**- Reversing a list**
This example shows how `do` can build a result without a loop body. The logic is entirely contained in the variable updates and the termination clause.

```scheme
;; Reverse the list '(a b c d).
(do ((source '(a b c d) (cdr source))
     (result '() (cons (car source) result)))
    ((null? source) result))

;; => '(d c b a)
```

### Context and Usage

`do` is the appropriate tool for complex, stateful iteration.

* Compared to **`while`** and **`until`**, which are ideal for simple loops based on a single condition, `do` excels when you need to manage multiple state variables that update in parallel on each iteration.
* Compared to functional iteration constructs like **`foldl`** or **`map`**, `do` should be used when you specifically need imperative control, side effects in the loop body, or when the state updates are too complex to fit elegantly into a fold operation.


### See Also

- [`while`](#while)
- [`until`](#until)
- `let` (for named `let` loops)
- `foldl`
- [`do-while`](#do-while)

## do-while
TODO


## while
```
(while test body ...)
```

Imperative loop; the body is evaluated while the `test` expression is truthy.

## until
```
(util test body ...)
```

Imperative loop; the body is evaluated until the `test` expression is truthy.

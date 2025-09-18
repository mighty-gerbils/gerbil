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
    (test result ...)
  command ...)
```

The `do` macro is Gerbil's most general and powerful imperative looping construct. It allows for the creation of loops with multiple, interdependent state variables.

The loop works as follows:
1.  First, each `var` is bound to its respective `init` value.
2.  At the beginning of each iteration, the `test` is evaluated.
3.  If `test` is truthy, the `result` expressions are evaluated, and the value of the last `result` expression is returned. If no `result` expressions are provided, a void value is returned.
4.  If `test` is false, the `command` expressions in the loop body are evaluated in order.
5.  Finally, the `step` expressions for each variable are evaluated. All `step` expressions are computed using the variable values from the previous iteration. After all steps are computed, the variables are simultaneously updated with their new values, and the loop proceeds to the next iteration (starting again at step 2).

::: tip Examples

**- Initializing a vector:**
this example uses a counter `i` to fill a pre-allocated vector. The loop body is used for the side effect of setting the vector's elements.

```scheme
;; Create a 5-element vector and fill it with values 0 through 4.
(do ((vec (make-vector 5))
     (i 0 (+ i 1)))
    ((= i 5) vec)
  (vector-set! vec i i))

;; => #(0 1 2 3 4)
```

**- Reversing a list:**
this example shows how `do` can build a result without a loop body. The logic is entirely contained in the variable updates and the termination clause.

```scheme
;; Reverse the list '(a b c d).
(do ((source '(a b c d) (cdr source))
     (result '() (cons (car source) result)))
    ((null? source) result))

;; => '(d c b a)
```
:::

### Context and Usage

`do` is the appropriate tool for complex, stateful iteration.

* Compared to `while` and `until`, which are ideal for simple loops based on a single condition, `do` excels when you need to manage multiple state variables that update in parallel on each iteration.
* Compared to functional iteration constructs like `foldl` or `map`, `do` should be used when you specifically need imperative control, side effects in the loop body, or when the state updates are too complex to fit elegantly into a fold operation.

### See Also

- [`while`](#while)
- [`until`](#until)
- `foldl`
- [`do-while`](#do-while)

## do-while
```scheme
(do-while ((var init step ...) ...)
  (test result ...)
  command ...)
=>
(do ((var init step ...) ...)
  ((not test) result ...)
  command ...)
```

Inverted form of [`do`](#do) macro that executes its body **at least once**, and continues to iterate as long as the `test` evaluates to a truthy value.

The `do-while` macro provides a loop that checks its continuation condition **after** each execution of its body. This guarantees that the loop body is always executed at least once.

The evaluation order is as follows:
1.  The `var` bindings are established with their `init` values.
2.  The `command` expressions in the body are evaluated in order.
3.  The `test` is evaluated.
4.  If `test` is truthy, the `step` expressions are evaluated to compute the new values for the variables, and the loop continues from step 2.
5.  If `test` is false, the loop terminates. The `result` expressions are then evaluated, and the value of the last one is returned.

::: tip Example

Processing a message queue, each iteration must first fetch a message from the queue before checking whether to continue.

```scheme
;; read a message, process it, stop when dequeue! returns the sentinel 'no-msg
(do-while ((msg (dequeue! q 'no-msg') (dequeue! q 'no-msg')))
  (not (eq? msg 'no-msg'))
  (process-message msg))
```
:::

### Context and Usage

Use `do-while` for situations where an action must be performed before the condition to continue can be evaluated.

* Compared to `while` and `do`, which test the condition before the first iteration, `do-while` is useful when the loop body itself is what produces the value needed for the test (e.g., reading from a file, getting user input, fetching an item from a queue).
* Like `do`, it is an imperative construct. For functional transformations of lists, prefer higher-order functions like `foldl` or `map`.

### See Also

- [`do`](#do)
- [`while`](#while)
- [`until`](#until)


## while
```scheme
(while test body ...)
```

An imperative loop that executes its `body` repeatedly as long as the `test` expression evaluates to a truthy value.

At the beginning of each iteration, the `test` expression is evaluated. If the result is a truthy value (any value other than `#f`), the `body` expressions are executed in order, and the loop repeats. If the `test` expression evaluates to `#f`, the loop terminates immediately.

This behavior means the loop body may be executed **zero or more times**. If the initial `test` is false, the body will never be executed. The `while` macro always returns a void value.

::: tip Example

A simple counter from 0 to 4.

```scheme
(let ((i 0))
  (while (< i 5)
    (print i " ")
    (set! i (+ i 1))))

;; => 0 1 2 3 4
```
:::

### Context and Usage

`while` is the ideal construct for simple imperative loops where the condition must be checked before the loop body is executed for the first time.

* Compared to [`do-while`](#do-while), which executes its body at least once, `while` may not execute its body at all if the condition is initially false.
* Compared to [`do`](#do), which is designed to handle multiple, complex loop variables with dedicated update steps, `while` is simpler and better suited for loops controlled by a single condition where state is managed manually within the body (e.g., with `set!`).

### See Also

- [`do`](#do)
- [`do-while`](#do-while)
- [`until`](#until)


## until
```scheme
(until test body ...)
=>
(while (not test) body ...)
```

An imperative loop that is the semantic inverse of [`while`](#while). It executes its `body` repeatedly until the `test` expression evaluates to a truthy value.

At the beginning of each iteration, the `test` expression is evaluated. If the result is `#f`, the `body` expressions are executed in order, and the loop continues. If the `test` expression evaluates to a truthy value (any value other than `#f`), the loop terminates immediately.

Like [`while`](#while), the loop body may be executed **zero or more times**. The `until` macro always returns a void value.

::: tip Example
A simple countdown from 5 to 1.

```scheme
(let ((i 5))
  (until (zero? i)
    (print i " ")
    (set! i (- i 1))))

;; => 5 4 3 2 1
```
:::

### Context and Usage

`until` is a stylistic alternative to [`while`](#while) that improves code readability when the loop's logic is defined by its termination condition rather than its continuation condition.

Use `until` when you want to emphasize the condition that stops the loop, as it can make the code's intent more self-evident.

### See Also

- [`do`](#do)
- [`do-while`](#do-while)
- [`while`](#while)

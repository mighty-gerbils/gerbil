# Control Flow, Logic, and Iteration

This page covers the core macros that control the flow of evaluation in a Gerbil program. It provides the fundamental tools to direct a program's logic through **conditionals and logical operators** (`cond`, `and`, `?`), **iterative loops** (`do`, `while`), and primitives for **evaluation control** (`delay`). Together, these forms organize how and when things happen in a program.

## cond <Badge type="tip" text="R7RS" vertical="middle" />
```scheme
(cond
 <cond-clause> ...
 [(else body ...)])

cond-clause:
 (test => receiver)
 (test body ...)
```

Gerbil's most general multi-branch conditional. It evaluates a series of clauses and executes the body of the first one whose test is true.

The `cond` macro evaluates each `<cond-clause>` from top to bottom until a `test` expression evaluates to a truthy value (any value other than `#f`).

There are three forms of clauses:
* `(test body ...)`: If `test` is truthy, the `body` expressions are evaluated, and the result of the last expression is returned.
* `(test => receiver)`: If `test` is truthy, the `receiver` procedure (which must accept one argument) is called with the resulting truthy value. The value returned by the `receiver` is the final result.
* `(test)`: A clause with only a single `test` expression will return the value of the `test` itself if it is truthy.

The optional `else` clause, which must be the last clause, is executed if no preceding test is true. If no test is true and there is no `else` clause, an unspecified (void) value is returned.

::: tip Examples

- **Basic usage**:
this procedure uses standard clauses and an `else` clause to determine a letter grade from a score.

```scheme
> (def (get-letter-grade score)
    (cond
      ((>= score 90) "A")
      ((>= score 80) "B")
      ((>= score 70) "C")
      (else "D")))

> (get-letter-grade 85)
"B"
```

- **Using the receiver**:
the `=>` clause is useful when you need to use the specific truthy value returned by the test. This example finds the first user in a list who is an admin.

```scheme
;; (is-admin? (car users)) returns the user object if they are an admin, or #f.
(def (find-admin-in-list users)
  (cond
   ((null? users) #f)
   ((is-admin? (car users)) => (lambda (admin-user) admin-user))
   (else (find-admin-in-list (cdr users)))))
```
:::

### Context and Usage

`cond` is the most powerful and flexible conditional form in Gerbil.

* Use `cond` when you have multiple, arbitrary conditions to check.
* Compared to `case`, `cond` is more general. Use `case` only when you are comparing a single value against lists of constant datums (like symbols or numbers), as `case` can be more efficient and clearer for that specific task.

### See Also

- [`case`](#case)
- `if`
- [`when`](#when)
- [`unless`](#unless)

## case <Badge type="tip" text="R7RS" vertical="middle" />
```scheme
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

A multi-branch conditional that dispatches based on the value of an expression matching a set of constant datums.

The `expr` is evaluated **once**, and its result is compared using `eqv?` against the `<datum>` lists of each `<case-clause>` in order. When a match is found in a clause's datum list, the corresponding body is executed, and the value of the last expression in the body is returned.

If a matching clause uses the `=> receiver` syntax, the `receiver`, which must be a procedure of one argument, is called with the result of `expr` as that argument. The value returned by the `receiver` is the final result.

If no clause matches, the `else-clause` is executed. If there is no `else-clause`, an unspecified (void) value is returned. Each `<datum>` **must be a constant literal**, such as a symbol, character, number, string, boolean, or the empty list.

::: tip Example
`case` is ideal for dispatching actions based on a specific value, such as handling a command in a simple application.

```scheme
;; This function takes a command symbol and performs an action.
> (def (handle-command cmd)
    (case cmd
      ((up north u)
       (print "Moving north..."))

      ((down south d)
       (print "Moving south..."))

      ((quit exit)
       (print "Goodbye!"))

      (else
       (print (string-append "Unknown command: " (symbol->string cmd))))))

> (handle-command 'u)
Moving north...
```
:::

### Context and Usage

Use `case` when you need to compare a single value against several lists of constant data (`datum`).

* Compared to `cond`, `case` is more efficient and often more readable for this specific purpose. `cond` is more general and should be used when your conditions are arbitrary expressions (e.g., `(> x 10)`) rather than equality checks against constants.

### See Also

- [`cond`](#cond)
- `if`

## and <Badge type="tip" text="R7RS" vertical="middle" />
```scheme
(and expr ...)
```

A boolean conjunction macro that evaluates expressions from left to right, short-circuiting on the first false value.

The `expr ...` expressions are evaluated in order. If any expression evaluates to `#f`, `and` immediately stops and returns `#f` without evaluating the remaining expressions. If all expressions evaluate to a truthy value, the value of the *last expression* is returned.

An empty `(and)` expression evaluates to `#t`.

::: tip Example
`and` is commonly used to "guard" subsequent computations. In this example, `(andmap symbol? l)` is only evaluated if the first test, `(list? l)`, is true, thus preventing a type error if `l` is not a list.

```scheme
> (let ((l '(a b c)))
    (and (list? l) (andmap symbol? l)))
#t
```
:::

### Context and Usage

Use `and` for two main purposes:

* To check if **all** of several conditions are true.
* To create a **"guard"** for an operation. Because `and` stops at the first `#f`, you can use it to safely check a condition before running code that depends on it.

### See Also

[`or`](#or)

## or <Badge type="tip" text="R7RS" vertical="middle" />
```scheme
(or expr ...)
```
A boolean disjunction macro that evaluates expressions from left to right, short-circuiting on and returning the first truthy value.

The `expr ...` expressions are evaluated in order. If an expression evaluates to a truthy value (any value other than `#f`), `or` immediately stops and returns that value without evaluating the remaining expressions.

If all expressions evaluate to `#f`, or if there are no expressions, the value of the `or` expression is `#f`.

::: tip Example
`or` is idiomatically used to provide a default or fallback value. This function returns the user's name if it exists, otherwise it returns "Guest".

```scheme
> (def (get-display-name (user-name :? :string := #f))
    (or user-name "Guest"))

;; When the optional argument is provided:
> (get-display-name "Vyzo")
Vyzo

;; When the optional argument is omitted, it defaults to #f:
> (get-display-name)
Guest
```
:::

### Context and Usage

Use `or` for two main purposes:

* To check if **at least one** of several conditions is true.
* To provide a **fallback value**. Since or returns the first truthy value it finds, it is perfect for selecting a default when a preferred value might not exist.

### See Also

[`and`](#and)

## when <Badge type="tip" text="R7RS" vertical="middle" />
```scheme
(when test expr ...)
=>
(if test (begin expr ...) (void))
```

A one-armed conditional that executes its body only if the `test` expression evaluates to a truthy value.

The `test` expression is evaluated first. If the result is a truthy value (any value other than `#f`), the `expr ...` body expressions are evaluated in order. The value of the entire `when` expression is the value of the *last expression* in the body.

If the `test` evaluates to `#f`, the body is not executed, and an unspecified (void) value is returned.

::: tip Example
Delete a file if it exists.

```scheme
(when (file-exists? file)
  (delete-file file))
```
:::

### Context and Usage

`when` is a stylistic choice for clarity when you only care about the "then" case of a conditional and have no "else" branch.

* Functionally, `(when test expr ...)` is equivalent to `(if test (begin expr ...) (void))`
* Use `when` to make your code more readable by clearly signaling that there is no "else" case to consider. It is often preferred over a more verbose `if` for simple, guarded execution.

### See Also

- [`unless`](#unless)
- [`cond`](#cond)
- `if`

## unless <Badge type="tip" text="R7RS" vertical="middle" />
```scheme
(unless test expr ...)
=>
(if test (void) (begin expr ...))
```

A one-armed conditional that is the semantic inverse of [`when`](#when). It executes its body only if the `test` expression evaluates to false (`#f`).

The `test` expression is evaluated first. If the result is `#f`, the `expr ...` body expressions are evaluated in order, and the value of the entire `unless` expression is the value of the *last expression* in the body.

If the `test` evaluates to a truthy value, the body is not executed, and an unspecified (void) value is returned.

::: tip Example
Create a directory only if it doesn't already exist.

```scheme
(unless (file-exists? dir)
  (create-directory* dir))
```
:::

### Context and Usage

`unless` is a stylistic choice for clarity when you only care about the "false" case of a conditional.

* Functionally, `(unless test expr ...)` is equivalent to `(if (not test) (begin expr ...) (void))`.
* The choice between them is a matter of code readability. Use `unless` when the condition is a negative check, as it often reads more like natural language (e.g., "unless this file exists, create it").

### See Also

- [`when`](#when)
- [`cond`](#cond)
- `if`

## ? <Badge type="tip" text="Gerbil" vertical="middle" />
```scheme
(? <predicate-expr> expr)
(? <predicate-expr>)
(? <predicate-expr> => receiver)
(? <predicate-expr> :: continue)
(? <predicate-expr> :: continue => receiver)

predicate-expr:
 (and <predicate-expr> ...)
 (or  <predicate-expr> ...)
 (not <predicate-expr>)
 <predicate>
```

A powerful macro for composing, creating, and applying predicates (functions that return a boolean value).

The `<predicate>` is an expression that evaluates to a procedure of one argument that returns a truthy or falsey value (e.g., `string?`, `(lambda (x) (> x 10))`). It can be composed with `and`, `or`, and `not`.

```scheme
(? (and <predicate> ...) obj)
=> (and (? <predicate> obj) ...)

(? (or <predicate> ...) obj)
=> (or (? <predicate> obj) ...)

(? (not <predicate>) obj)
=> (not (? <predicate> obj))
```

The `?` macro has two main modes of operation:

#### Direct Application
In this mode, `?` immediately applies a predicate to an expression.

```scheme
(? <predicate-expr> expr)
=> (<predicate-expr> expr)
```
- `<predicate-expr>`: the predicate logic to apply
- `expr`: the expression whose value will be tested.

::: tip Example
```scheme
;; Simple test
> (? string? "hello")
#t

;; Composed test
> (? (and number? fixnum?) 1000)
#t
```
:::

#### Predicate Construction
In this mode, `?` does not test a value immediately. Instead, it returns a new predicate (a lambda function) that can be stored and used later.
  - **Simple Predicate**
    ```scheme
    (? <predicate-expr>)
    => (lambda (expr) (? <predicate-expr> expr))
    ```

    This creates a new function that takes one argument and applies the `<predicate-expr>` to it.

    ::: tip Example
    Create a predicate that checks if a value is a non-empty string.

    ```scheme
    > (def non-empty-string?
        (? (and string? (not string-empty?))))

    > (non-empty-string? "hello")
    #t
    > (non-empty-string? "")
    #f
    ```
    :::
  - **Predicate with a Chained Action**
    ```scheme
    (? <predicate-expr> :: continue)
    => (lambda (expr)
         (and (? <predicate-expr> expr)
              (continue expr)))
    ```
    * `continue` must be a procedure of one argument.

    This creates a new predicate that, when called, applies `<predicate-expr>` to its argument. If the result is truthy, it then calls the `continue` procedure with the original argument.

    Use `(? ... :: continue)` to **perform an action** on the **original object.** Think of it as: *"If this object passes the test, then do something with the object itself."* This is the most common pattern for chaining operations.

    ::: tip Example
    Create a predicate that prints a message if the value is a string.

    ```scheme
    > (def print-string (? string? :: print))

    > (print-string "Gerbil")
    Gerbil

    > (print-string 'hello)
    #f
    ```
    :::

  - **Predicate with a Result Transformer**
    ```scheme
    (? <predicate-expr> => receiver)
    => (lambda (expr)
         (alet (val (? <predicate-expr> expr))
           (receiver val)))
    ```
    * `receiver` must be a procedure of one argument.

    This creates a new predicate. If the `<predicate-expr>` test on an argument is truthy, the `receiver` procedure is called with that truthy value, and the result of the `receiver` is returned.

    Use `(? ... => receiver)` **to Transform** the **Predicate's Result**. Think of it as: *"Run this test, and if the result is interesting, transform that result into something else."* This is useful when the predicate itself is a search or extraction function.

    ::: tip Example
    Create a predicate that filters a list and extracts vowels from it.

    ```scheme
    > (def vowel (? (cut member <> '(a e o u y i)) => car))

    > (filter vowel '(g e r b i l))
    '(e i)

    > (filter vowel '(h l l))
    '()
    ```
    :::

  - **Full Pipeline**
    ```scheme
    (? <predicate-expr> :: continue => receiver)
    => (lambda (expr)
         (and (? <predicate-expr> expr)
              (receiver (continue expr))))
    ```
    This combines both forms. When the created predicate is called, it tests its argument. If the test is truthy, the `continue` procedure is called with the original argument. The result of that call is then passed to the `receiver` procedure, whose result is the final return value.

    ::: tip Example

    ```scheme
    > (def process-string-pipeline
        (? string? :: string-upcase => (lambda (u) (string-append "PROCESSED: " u))))

    > (process-string-pipeline "hello")
    "PROCESSED: HELLO!"
    ```
    :::

### Context and Usage

Use `?` when you need to build complex validation logic or create reusable predicate functions in a declarative style. It provides a concise syntax for compositions that would otherwise require multiple nested `if`, `and`, `or`, or `lambda` forms.

For simple, one-off conditional execution, `if`, `when`, or `cond` are often more direct and readable.

### See Also

- [`and`](#and)
- [`or`](#or)
- `not`
- [`cond`](#cond)

## Begin0 <Badge type="tip" text="Gerbil" vertical="middle" />
```scheme
(begin0 expr rest ...)
=>
(let (val expr)
  rest ...
  val)
```

Evaluates a sequence of expressions in order, but returns the value of the **first** expression.

The `begin0` macro first evaluates `expr` and saves its value. It then evaluates all subsequent `rest ...` expressions in order for their side effects, **ignoring their return values**. Finally, it returns the saved value of the initial `expr`.

This is in contrast to the standard `begin` form, which returns the value of the *last* expression.


::: tip Example
Retrieve a user's data and then evicts it from cache.

```scheme
> (def (get-and-evict! cache key)
    (begin0
      (hash-ref cache key)
      (hash-remove! cache key)))

> (def user-cache (hash ("user:1" "Alice") ("user:2" "Bob")))

> (get-and-evict! user-cache "user:1")
"Alice"

;; After the call, the cache no longer contains Alice's entry.
> (hash-key? user-cache "user:1")
#f
```
:::

### Context and Usage

Use `begin0` when you need to evaluate a series of expressions for their side effects but require the result of the very first expression. It elegantly combines retrieving a value and then performing cleanup or mutation operations related to that value.

### See Also

`begin`

## @list <Badge type="tip" text="Gerbil" vertical="middle" />

```scheme
[<list-item> ...]
(@list <list-item> ...)

list-item:
  <list-expression> "..."
  . <tail-expression>
  :: <tail-expression>
  <expression>
```

The primary list constructor, used with the `[...]` reader macro, which supports in-place list splicing and dotted-tail notation.

`@list` (and its reader macro `[...]`) provides a flexible way to construct lists. It evaluates its arguments and combines them into a new list. In almost all cases, you will use the convenient `[...]` syntax.

Unlike the standard `list` procedure, the `[...]` constructor gives special meaning to certain symbols:

* The ellipsis `...` has a conditional behavior based on the expression that precedes it:
    * If the preceding expression evaluates to a list, it acts as a **splicing operator**, unpacking the elements of that list into the new list.
    * If the preceding expression is *not* a list, it **discards** the value of that expression from the final result.

* Both the dot `.` and colon-colon `::` act as **dotted-tail constructors**. They are functionally equivalent and make the *following expression* the final `cdr` (tail) of the list. They must be the penultimate item in the expression.

There is also a special unwrapping rule: if a list construction with a splicing `...` results in a single-element list, the result is the element itself (e.g., `[42 ...] => 42`).


::: tip Examples

- **Basic list construction**
```scheme
> [1 (+ 2 3) "hello"]
'(1 5 "hello")
```

- **Splicing with `...`**
```scheme
> (let ((middle-items '(b c)))
    ['a middle-items ... 'd])
'(a b c d)
```

- **Dotted-Tail construction with `.` and `::`**
```scheme
;; Creating an improper list
> [1 2 . 3]
'(1 2 . 3)

> [1 2 :: 3]
'(1 2 . 3)

;; Creating a proper list by setting the tail to another list
> [1 2 . '(3 4)]
'(1 2 3 4)

> [1 2 :: '(3 4)]
'(1 2 3 4)
```
:::

### Context and Usage

The `[...]` syntax is the modern and idiomatic way to construct lists in Gerbil, especially when combining computed values with existing lists.
* Compared to the standard list procedure, `[...]` is more versatile due to the built-in `...` splicing operator.
* Compared to quasiquote (\`) , `[...]` can be more readable for list construction. The `...` operator is analogous tounquote-splicing (`,@`), but acts on the preceding element.

### See Also

- `list`
- `cons`
- `quasiquote`

## delay <Badge type="tip" text="R7RS" vertical="middle" />
```scheme
(delay expr)
```

Creates a promise, an object that encapsulates a delayed computation. The promise will evaluate `expr` only when its value is requested for the first time with the `force` procedure.

The value of the expression is **memoized**: it is computed only once, and subsequent calls to `force` on the same promise will return the cached value without re-evaluating the expression.

Internally, `delay` typically calls `make-promise` with a thunk (a zero-argument procedure) that evaluates `expr`. As an optimization, if `expr` is a literal constant, `delay` may return the value directly.

`delay` is efficient, but it is **not thread-safe**. If a promise might be forced by multiple threads concurrently, you must use `delay-atomic` to ensure correctness.

::: tip Example
This example demonstrates both lazy evaluation and memoization. The `print` statement inside the `delay` acts as a probe to show us exactly when the computation runs.

```scheme
;; Define a promise. The code inside is not executed yet.
> (def p
    (delay
      (begin (print "=> Heavy computation running...")
             (+ 10 20))))

> (println "Promise has been created.")
Promise has been created.

;; Force the promise for the first time.
> (println "Forcing the promise...")
Forcing the promise...

> (def result1 (force p))
=> Heavy computation running...

> (println "Result: " result1)
Result: 30

;; Force the promise again. The computation does not run a second time.
> (println "Forcing the promise again...")
Forcing the promise again...

> (def result2 (force p))

> (println "Result: " result2)
Result: 30
```
:::

### Context and Usage

`delay` and `force` are the fundamental building blocks for lazy evaluation in Scheme.

* Use `delay` to defer expensive computations until their results are actually needed.
* This pattern is the foundation for implementing lazy data structures like streams (infinite lists).
* **Important:** For code that runs in a multi-threaded environment, always prefer `delay-atomic` to prevent race conditions.

### See Also

- `force`
- [`delay-atomic`](#delay-atomic)
- `make-promise`

## delay-atomic <Badge type="tip" text="Gerbil" vertical="middle" />
```scheme
(delay-atomic expr)
```

Creates a thread-safe promise to evaluate `expr` when needed with the `force` primitive. The value of the expression is memoized so it will only be evaluated once.

Internally, `delay-atomic` calls `make-atomic-promise`, which wraps the computation in a mutex (a lock) to ensure that even if multiple threads try to `force` the promise simultaneously, the underlying expression is evaluated exactly once.

`delay-atomic` is only slightly less efficient than `delay` and is safe for concurrent evaluation in multiple threads. It also supports failures and escapes (via continuations) from the thunk, and will issue an error if a thread attempts to re-enter an escaped computation.

::: tip Example
This example simulates multiple threads trying to initialize a shared resource concurrently. Because `delay-atomic` is used, the initialization logic runs exactly once, regardless of which thread gets to it first.

```scheme
> (import :std/iter)

;; An atomic promise with a side effect to visualize its evaluation.
> (def shared-resource
    (delay-atomic
     (begin
       (displayln "=> Shared resource is being initialized...")
       (thread-sleep! 1) ; Simulate an expensive initialization
       "Resource Ready")))

;; Procedure executed by each thread
> (def (get-shared-resource id)
    (begin
      (displayln "Thread " id " is trying to access the shared resource...")
      (force shared-resource)))

;; Spawn several threads that all run the task.
> (def (spawn-threads)
    (map thread-join!
         (for/collect (i (in-range 5))
           (spawn (cut get-shared-resource i)))))

> (spawn-threads)
;; possible output:
;; "=> Shared resource is being initialized..." is printed only once.
Thread 0 is trying to access the shared resource...
=> Shared resource is being initialized...
Thread 1 is trying to access the shared resource...
Thread 2 is trying to access the shared resource...
Thread 3 is trying to access the shared resource...
Thread 4 is trying to access the shared resource...
...

```
:::

### Context and Usage

If a promise might be shared between threads, or if its computation involves complex control flow (like continuations that might be re-invoked), you must use `delay-atomic`.

Use the simpler `delay` only for lazy values in a single-threaded context with straightforward computations. The slight performance cost of `delay-atomic` is a small price to pay for correctness in concurrent programs.

### See Also

- [`delay`](#delay)
- `force`
- `make-atomic-promise`

## do <Badge type="tip" text="R7RS" vertical="middle" />
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
> (do ((vec (make-vector 5))
       (i 0 (+ i 1)))
      ((= i 5) vec)
    (vector-set! vec i i))
#(0 1 2 3 4)
```

**- Reversing a list:**
this example shows how `do` can build a result without a loop body. The logic is entirely contained in the variable updates and the termination clause.

```scheme
;; Reverse the list '(a b c d).
> (do ((source '(a b c d) (cdr source))
       (result '() (cons (car source) result)))
      ((null? source) result))
'(d c b a)
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

## do-while <Badge type="tip" text="Gerbil" vertical="middle" />
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


## while <Badge type="tip" text="Gerbil" vertical="middle" />
```scheme
(while test body ...)
```

An imperative loop that executes its `body` repeatedly as long as the `test` expression evaluates to a truthy value.

At the beginning of each iteration, the `test` expression is evaluated. If the result is a truthy value (any value other than `#f`), the `body` expressions are executed in order, and the loop repeats. If the `test` expression evaluates to `#f`, the loop terminates immediately.

This behavior means the loop body may be executed **zero or more times**. If the initial `test` is false, the body will never be executed. The `while` macro always returns a void value.

::: tip Example

A simple counter from 0 to 4.

```scheme
> (let ((i 0))
    (while (< i 5)
      (print i " ")
      (set! i (+ i 1))))
0 1 2 3 4
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


## until <Badge type="tip" text="Gerbil" vertical="middle" />
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
> (let ((i 5))
    (until (zero? i)
      (print i " ")
      (set! i (- i 1))))
5 4 3 2 1
```
:::

### Context and Usage

`until` is a stylistic alternative to [`while`](#while) that improves code readability when the loop's logic is defined by its termination condition rather than its continuation condition.

Use `until` when you want to emphasize the condition that stops the loop, as it can make the code's intent more self-evident.

### See Also

- [`do`](#do)
- [`do-while`](#do-while)
- [`while`](#while)

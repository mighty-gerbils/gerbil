# Bindings, Scope and Definitions

This page covers the forms used to create bindings in Gerbil, which give names to procedures, variables, and syntax.
It is organized by the scope of the binding, from top-level definitions that shape a module's interface to local bindings that structure the body of a procedure.

## Top-Level Definitions

These forms create bindings at the module or REPL top level. They are used to define the public and private procedures, variables, and syntax of a module.

### def <Badge type="tip" text="Gerbil" vertical="middle" />
```scheme
(def <variable> <expression>)
=> (define-values (<variable>) <expression>)

(def (<name> . <lambda-head>) <lambda-body> ...)
=> (define-values (<name>)
     (lambda <lambda-head> <lambda-body> ...))
```
The foundational macro for creating top-level and local runtime bindings. `def` is a powerful and flexible alternative to the standard Scheme [`define`](primitive.md#define_).

`def` has two main forms:

* **Variable Definition:** `(def <variable> <expression>)` evaluates the `<expression>` and binds its result to the `<variable>`.
* **Function Definition:** The general form `(def (<name> . <lambda-head>) ...)` is a powerful syntax that can be used to create several kinds of functions:
    * For a **simple function**, `<lambda-head>` is a list of arguments (e.g., `(add x y)`).
    * For a **curried function ([`SRFI-219`](https://srfi.schemers.org/srfi-219/srfi-219.html))**, `<lambda-head>` contains nested lists (e.g., `((greet prefix) suffix)`).
    * For a **variadic function** that accepts any number of arguments, `<lambda-head>` is a single symbol (e.g., `(log . messages)`).

::: tip Examples

- **Defining a variable**
```scheme
> (def +max-users+ 100)
> +max-users+
100
```

- **Defining a simple function**
```scheme
> (def (add x y)
    (+ x y))
> (add 1 2)
3
```

- **Currying and Partial application ([`SRFI-219`](https://srfi.schemers.org/srfi-219/srfi-219.html))**
The nested head syntax allows you to define a function that, when partially applied, returns a new function.

```scheme
;; `greet-with-prefix` is a function factory.
> (def ((greet-with-prefix prefix) suffix)
    (string-append prefix " " suffix))

;; Create a specialized greeter.
> (def greet (greet-with-prefix "Hello"))

;; Call the specialized greeter.
> (greet "Gerbil!")
"Hello Gerbil!"
```

- **Optional and Keyword arguments**
```scheme
;; Defines a function with one required, one optional, and one keyword argument.
> (def (create-user name (age 18) role: (role "guest"))
    (list name age role))

;; Call with only the required argument
> (create-user "Alice")
("Alice" 18 "guest")

;; Call with the optional positional argument
> (create-user "Bob" 30)
("Bob" 30 "guest")

;; Call with the keyword argument
> (create-user "Charlie" role: "admin")
("Charlie" 18 "admin")

;; Call with all arguments
> (create-user "David" 45 role: "moderator")
("David" 45 "moderator")
```
:::

#### Context and Usage

`def` is the idiomatic way to create most runtime definitions in Gerbil.

Compared to the R7RS [`define`](primitive.md#define_), `def` offers a more powerful and extensible syntax. The two main differences are:

* **Currying Syntax**: `def` supports the [`SRFI-219`](https://srfi.schemers.org/srfi-219/srfi-219.html) curried function definition syntax.
* **Underlying Lambda**: `def` expands using the high-level [`lambda`](#lambda_) macro, which supports Gerbil's full feature set for arguments (optional, keyword, contracts). In contrast, [`define`](primitive.md#define_) uses the lower-level [`lambda%`](primitive.md#lambda_) primitive.

**Rule of thumb**: Always prefer `def` over [`define`](primitive.md#define_) in Gerbil code for its extended features and idiomatic style.

#### See Also

- [`def*`](#def-star-_)
- [`define`](primitive.md#define_)
- [`let`](#let_)
- [`lambda`](#lambda_)

### def* <Badge type="tip" text="Gerbil" vertical="middle" />
```scheme
(def* <name>
  <clause> ...)
=>
(def <name>
  (case-lambda <clause> ...))
```

A convenient macro for defining a procedure that handles multiple arities (different numbers of arguments) using [`case-lambda`](#case-lambda_).

This form is syntactic sugar. An expression like `(def* name clause1 clause2 ...)` is exactly equivalent to `(def name (case-lambda clause1 clause2 ...))`. Each `<clause>` is a `(<formals> <body> ...)` list that defines the behavior for a specific number of arguments.

::: tip Example
Defines a 'sum' procedure with four different arity clauses.

```scheme
> (def* sum
    (() 0)
    ((x) x)
    ((x y) (+ x y))
    ((x y . rest) (apply + x y rest)))

> (sum) ; Matches the 0-arity clause
0
> (sum 10) ; Matches the 1-arity clause
10
> (sum 10 20) ; Matches the 2-arity clause
30
> (sum 10 20 30) ; Matches the variadic clause
60
```
:::

#### Context and Usage

Use `def*` as a concise alternative to `(def name (case-lambda ...))` whenever you need a single function name to have different behaviors based on the number of arguments it is called with.

* Compared to [`def`](#def_), which is used for defining a function with a single signature (that can include optional/keyword arguments), `def*` is used for defining a function that has **multiple, distinct signatures based on arity**.

#### See Also

- [`def`](#def_)
- [`case-lambda`](#case-lambda_)

### defvalues <Badge type="tip" text="Gerbil" vertical="middle" />
```scheme
(defvalues (<name> ...) <expression>)
=>
(define-values (<name> ...) <expression>)
```

A macro for creating multiple top-level or local bindings from an expression that produces multiple values.

This form is a convenient Gerbil-specific alias for the R7RS [`define-values`](primitive.md#define-values_) macro. The `<expression>` is evaluated, and it must produce as many values as there are `<name>`s in the list. Each name is then bound to the corresponding value.

::: tip Example
`defvalues` is the idiomatic way to capture multiple return values from a procedure. The standard procedure `floor/` is a perfect example, as it returns two values: the quotient and the remainder of a division.

```scheme
;; floor/ returns two values: (floor (/ 10 3)) and (remainder 10 3)
> (defvalues (quotient remainder) (floor/ 10 3))
> quotient
3
> remainder
1
```
:::

#### Context and Usage

Use `defvalues` whenever you need to bind multiple values returned by a single expression at the top level or in a local definition context.

* `defvalues` is a Gerbil alias for the R7RS [`define-values`](primitive.md#define-values_). It is provided for consistency with other Gerbil binding forms like [`def`](#def_).
* For creating local bindings from multiple values, [`let-values`](primitive.md#let-values_) is often preferred.

#### See Also

- [`define-values`](primitive.md#define-values_)
- `values`
- [`let-values`](primitive.md#let-values_)

### extern <Badge type="tip" text="Gerbil" vertical="middle" />
```scheme
(extern <extern-body> ...)

extern-body:
<identifier>
(<identifier> <identifier>)
(namespace: <identifier> <extern-body> ...)
```

Declares a name that is defined externally, for instance in a C library or another Gerbil namespace.

`extern` is a versatile macro that acts as a **declaration** or a *promise* to the compiler that a symbol's definition will be provided at runtime. Its applications range from interfacing with foreign libraries (FFI) to managing namespaces in dynamic contexts like `eval`.

> **Note:** `extern` can only appear at the top level of a module or script. When used inside `eval` in a compiled binary, the Gerbil expander must be loaded first.


::: tip Examples

- **Foreign Function Interface (FFI)**
The most common use of `extern` is to call a function from a C library. This example shows how to bind the C standard library function `strlen` (which prints the length of a null-terminated string) and then call it.

First, create the module file `ext-strlen.ss` (assuming a package name like `c-utils` is defined in `gerbil.pkg`):

```scheme
;;; ext-strlen.ss

(export c-strlen)
;; Declare to the Gerbil compiler that a symbol 'c-strlen' will exist.
(extern c-strlen)

;; link c-strlen to the C "strlen" function.
(begin-foreign
  (c-declare "#include <string.h>")
  (define c-strlen (c-lambda (char-string) size_t "strlen")))

```

After compiling this module with `gxc ext-strlen.ss`, it can be imported and used:

```scheme
> (import :c-utils/ext-strlen)

> (c-strlen "Hello Gerbil!")
13
```

- **Dynamic Binding with `eval`**
`extern` can also be used to dynamically introduce bindings from a module's namespace into the `eval` scope, which is useful in compiled binaries where module variables are not in the top-level scope.

```scheme
(import :gerbil/expander)
(export main)

(def greeting "hello world from module")

(def (main . args)
  ;; The expander must be loaded for 'extern' to work inside 'eval'.
  (gerbil-load-expander!)

  (eval '(begin
           ;; Creates a local alias 'greeting' that refers to the
           ;; fully-qualified module variable 'eval-example#greeting'.
           (extern namespace: eval-example
             greeting)
           (displayln greeting))))
```
When compiled with `gxc -exe eval-example.ss` and run, this program will correctly print `hello world from module`.
:::

#### Context and Usage

`extern` is a foundational tool for Gerbil's **Foreign Function Interface (FFI)**, which is delegated to the underlying Gambit C-interface. For a complete understanding of the FFI mechanism, it is highly recommended to also read the *C-interface* section of the Gambit manual.

* For **FFI**: `extern` serves as a high-level declaration for external symbols that will be available at link time.
* For `eval`: `extern` is the idiomatic tool to bridge the gap between module namespaces and the dynamic scope of `eval`.
* The `begin-foreign` macro is the primary mechanism for defining the actual C bindings by delegating directly to Gambit's FFI. It is often used to provide the definition for a symbol declared with `extern`.

#### See Also

- `begin-foreign`
- `eval`

### defsyntax <Badge type="tip" text="Gerbil" vertical="middle" />
```scheme
(defsyntax <name> <expander-expression>)
(defsyntax (<name> <stx-arg>) <body> ...)
```

The foundational macro for creating syntactic bindings, typically used to define procedural macros. It is a Gerbil-specific, convenient alias for the R7RS [`define-syntax`](primitive.md#define-syntax_) macro.

A macro defined with `defsyntax` is a procedure that receives a single argument: a syntax object representing the entire macro invocation. This procedure, called the *expander*, must then deconstruct this syntax object and return the new code to be substituted.

`defsyntax` has two main forms:

* **` (defsyntax <name> <expander-expression>)`**: Binds `<name>` to the result of `<expander-expression>`, which should be a macro expander procedure. This is equivalent to `(define-syntax <name> <expander-expression>)`.
* **` (defsyntax (<name> <stx-arg>) ...)`**: A convenient, `def`-like syntax for defining the expander procedure. It is equivalent to `(defsyntax <name> (lambda (<stx-arg>) ...))`.


::: tip Example
The most common use of `defsyntax` is to define a procedural macro using [`syntax-case`](syntax.md#syntax-case_). This example defines a `swap!` macro that swaps the values of two variables.

```scheme
;; The expander takes one argument, 'stx', representing the whole expression.
> (defsyntax (swap! stx)
    (syntax-case stx ()
      ;; This pattern matches an expression of the form (swap! a b)
      ((_ a b)
       ;; This guard ensures both 'a' and 'b' are identifiers (variables)
       (and (identifier? #'a) (identifier? #'b))
       ;; This is the template for the generated code
       #'(let ((tmp a))
           (set! a b)
           (set! b tmp)))
      ;; This is a catch-all pattern for incorrect usage
      (_
       (raise-syntax-error stx "Bad syntax" "expects two variable identifiers"))))

> (defvalues (a b) (values 1 2))
> (list a b)
'(1 2)
> (swap! a b)
> (list a b)
'(2 1)
```
:::

#### Context and Usage

`defsyntax` is the idiomatic Gerbil macro for defining procedural macros from scratch, especially when using syntax-case.

* Compared to the R7RS [`define-syntax`](primitive.md#define-syntax_), `defsyntax` provides a more convenient, def-like syntax for defining the expander procedure, but the underlying mechanism is identical. It is the preferred form in Gerbil code.
* For simpler, purely pattern-matching macros, [`defrules`](#defrules_) and [`defrule`](#defrule_) are often more concise alternatives to writing a full procedural macro with `defsyntax`.

#### See Also

- [`define-syntax`](primitive.md#define-syntax_)
- [`defrules`](#defrules_)
- [`defrule`](#defrules_)
- [`syntax-case`](syntax.md#syntax-case_)

### defrules <Badge type="tip" text="Gerbil" vertical="middle" />
```scheme
(defrules <name> (<literal> ...) <clause> ...)
=>
(defsyntax name
  (syntax-rules (<literal> ...)
    <clause> ...))
```

A macro for defining simple, pattern-matching macros, providing a convenient syntax on top of the standard R7RS [`syntax-rules`](syntax.md#syntax-rules_).

`defrules` allows you to define a macro by specifying a series of patterns and corresponding templates. When the macro is called, the expander finds the first matching pattern (`<clause>`) and replaces the macro call with the instantiated template.

* **`<name>`**: The name of the macro to be defined.
* **`(<literal> ...)`**: A list of symbols that must be treated as literal keywords inside the patterns, not as pattern variables.
* **`<clause>`**: A rule of the form `(<pattern>) <template>`.

::: tip Example

`defrules` is the ideal tool for creating "syntactic sugar"—macros that make existing code more readable. This example defines the `when*` macro, which extends the standard `when` form by allowing an optional => clause that applies a function to the result of the expressions when the test is true.

```scheme
>(defrules when* (=>)
   ((_ test expr rest ...)
    (when test expr rest ...))
   ((_ test => proc)
    (let ((val test))
      (if val (proc val) #!void))))

> (when* (> 5 3) (displayln "ok") (displayln "done"))
ok
done

> (when* (string-contains "scheme" "che") => displayln)
1
```
:::

#### Context and Usage

Use `defrules` to define macros that are based on simple structural transformation (pattern matching). It is the idiomatic way to create most helper macros in Gerbil.

* The underlying mechanism for `defrules` is the R7RS [`syntax-rules`](syntax.md#syntax-rules_) system. `defrules` is a Gerbil-specific macro that makes its usage more convenient.
* For macros that require more complex logic than simple pattern matching (e.g., inspecting syntax objects, raising custom errors), use the more powerful [`defsyntax`](#defsyntax_) to create a procedural macro.
* For macros that only have a single rule, [`defrule`](#defrule_) is an even more concise alternative.

#### See Also

- [`defrule`](#defrule_)
- [`defsyntax`](#defsyntax_)
- [`syntax-rules`](syntax.md#syntax-rules)

### defrule <Badge type="tip" text="Gerbil" vertical="middle" />
```scheme
(defrule (name . args) [fender] body)
=>
(defsyntax name
  (syntax-rules ()
    ((_ . args) [fender] body)))
```

A convenient macro for defining a simple, single-rule, pattern-matching macro.

`defrule` is a specialized version of [`defrules`](#defrules_) for the common case where a macro only needs one pattern-matching clause. It supports an optional `fender` expression, which acts as a guard: the macro will only expand if the fender evaluates to a truthy value.

::: tip Examples

- **Simple macro without a fender**
This example defines a `double` macro that takes an expression and expands into code that adds it to itself.

```scheme
> (defrule (double x)
    (* 2 x))
> (double 5)
10
```

- **Macro with a Fender (Guard)**
This example defines a `when-even` macro that only executes its body if the first argument is an even number. The `fender` expression is used to perform this check at expansion time.

```scheme
> (defrule (when-even n body ...)
    (stx-number? #'n)
    (when (? (and integer? even?) n)
      body ...))

> (when-even 2 (println "It's even!"))
It's even!

> (when-even 3 (println "It's even!"))

> (when-even '2 (println "It's even!"))
--- Syntax Error: Bad syntax; invalid match target
```
:::

#### Context and Usage

Use defrule as a shortcut for defrules when your macro only has a single transformation rule. The optional fender makes it powerful enough for many common use cases without needing the full complexity of a procedural macro.

* `defrule` is ideal for simple, single-purpose syntactic sugar.
* For macros with multiple patterns, use the more general [`defrules`](#defrules_).
* For macros requiring complex procedural logic, use [`defsyntax`](#defsyntax_).

#### See Also

- [`defrules`](#defrules_)
- [`defsyntax`](#defsyntax_)

### defalias <Badge type="tip" text="Gerbil" vertical="middle" />
```scheme
(defalias <new-name> <existing-name>)
```
Defines a syntactic alias from `<new-name>` to `<existing-name>`.

`defalias` is a compile-time mechanism that instructs the expander to treat any occurrence of `<new-name>` exactly as if it were `<existing-name>`. This is a zero-cost abstraction; the alias exists only during compilation and has no runtime overhead.

This is more powerful than a simple variable definition `(def new-name existing-name)` because it also works for aliasing macros and other syntactic forms.

::: tip Examples

- **Aliasing a procedure**
This is useful for creating shorter or more descriptive names for existing procedures.

```scheme
;; Create a shorter alias for 'string-append'
> (defalias str-cat string-append)

> (str-cat "Hello, " "Gerbil!")
Hello, Gerbil!
```

- **Aliasing a macro**
This demonstrates the syntactic nature of `defalias`. The new name `let-seq` behaves exactly like the [`let*`](#let-star-_) macro.

```scheme
;; Create an alias for the 'let*' macro
> (defalias let-seq let*)

;; Use the new alias. The second binding can see the first.
> (let-seq ((x 10)
           (y (+ x 5)))
       y)
15
```
:::

#### Context and Usage

Use `defalias` to create simple, direct aliases for existing names within a module's scope, especially when you need to rename macros.

* It is the most direct way to create a syntactic alias with zero runtime cost.
* While the `export` form has a `(rename: ...)` clause to change an identifier's name as it is exported from a module, `defalias` is used to create an alias for use inside the current module.


## Local Bindings

These `let` forms create new lexical scopes and bind variables within the body of a procedure. They are the primary tool for structuring local computations.

### let <Badge type="tip" text="R7RS" vertical="middle" />
```scheme
(let (<binding> ...) <body> ...)
(let <name> (<binding> ...) <body> ...)

binding:
(<variable> <expression>)
((values <variable> ...) <expression>)
```

The fundamental macro for creating local lexical bindings. `let` establishes a new scope where variables are bound to the results of expressions.

The entire `let` expression evaluates to the value of the **last expression** in its `<body>`.

`let` has two major forms:

* **` (let (<binding> ...) <body> ...)`**: This is the most common form. All binding expressions are evaluated in the **outer scope** (before any of the new variables are bound), and the new variables are then bound to these results in parallel for the evaluation of the `<body>`.

* **Named `let`**: `(let <name> (<binding> ...) <body> ...)`: This form creates a local recursive procedure. It is syntactic sugar for defining a local procedure named `<name>` and then immediately calling it. This is a common and idiomatic way to create loops in Scheme.

As an extension to the R7RS standard, Gerbil's `let` also supports binding multiple values from a single expression directly in its binding clauses.

::: tip Examples

- **Basic local bindings**
```scheme
> (let ((x (+ 1 2))
        (y (* 3 4)))
    (+ x y))
 15
```

- **Multiple value binding**
While the R7RS standard requires [`let-values`](primitive.md#let-values_) for this task, Gerbil's `let` can handle it directly for convenience.

```scheme
;; 'floor/' returns two values.
> (let (((values quotient remainder) (floor/ 10 3)))
    (list quotient remainder))
(3 1)
```

- **Named `let` for looping**
```scheme
> (let countdown ((i 5))
    (if (> i 0)
      (begin
        (print " " i)
        (countdown (- i 1)))
      (println " Done!")))
5 4 3 2 1 Done!
```
:::

#### Context and Usage

Use `let` for creating local bindings. The choice between `let`, [`let*`](#let-star-_), and [`letrec`](#letrec_) depends on the visibility you need between your variables.

* `let`: Use for simple, parallel bindings where the variables don't depend on each other.
* [`let*`](#let-star-_): Use when you need sequential bindings, where each variable is visible to the expressions of the subsequent variables.
* [`letrec`](#letrec_) or [`letrec*`](#letrec-star-_): Use when you need to create mutually recursive bindings.

#### See Also

- [`let*`](#let-star-_)
- [`letrec`](#letrec_)
- [`letrec*`](#letrec-star-_)
- [`let-values`](primitive.md#let-values_)

### let* <Badge type="tip" text="R7RS" vertical="middle" />
```scheme
(let* (<binding1> <binding2> ...) <body> ...)
=>
(let (<binding1>)
  (let* (<binding2> ...)
    <body> ...))

<binding>:
(<variable> <expression>)
((values <variable> ...) <expression>)
```

Creates local lexical bindings sequentially, where each binding is visible to the expressions of subsequent bindings within the same `let*` form.

The entire `let*` expression evaluates to the value of the **last expression** in its `<body>`.

Unlike [`let`](#let_) where bindings are evaluated in parallel, `let*` evaluates each binding sequentially. As the syntax shows, `let*` is syntactic sugar for a series of nested let blocks. This nested structure is what allows each binding expression to see the variables defined before it in the same `let*`.

Like [`let`](#let_), Gerbil extends the R7RS `let*` by allowing multiple-value bindings directly within its binding clauses.

::: tip Example

- **Sequential bindings**
This example works with `let*` because the binding for `y` can see the `x` that was defined just before it. This would be an error with a standard [`let`](#let_).

```scheme
> (let* ((x 10)
         (y (+ x 5))) ; 'y' can see 'x'
    y)
15
```

- **Multiple value binding**
Gerbil's let* also supports sequential multiple-value bindings.

```scheme
> (let* (((values q r) (floor/ 10 3))
         (result (format "q=~a, r=~a" q r)))
    result)
"q=3, r=1"
```
:::

#### Context and Usage

Use `let*` when you need to define local variables that depend on each other in sequence.

* [`let`](#let): Use for parallel bindings where variables are independent.
* `let*`: Use for sequential bindings where order matters.
* [`letrec`](#letrec) or [`letrec*`](#letrec*): Use when you need to create mutually recursive bindings, such as local procedures that call each other.

#### See Also

- [`let`](#let_)
- [`letrec`](#letrec_)
- [`letrec*`](#letrec-star-_)
- [`let-values`](primitive.md#let-values_)



### letrec <Badge type="tip" text="R7RS" vertical="middle" />
```scheme
(letrec (<binding> ...) <body> ...)

binding:
(<variable> <expression>)
((values <variable> ...) <expression>)
```

Creates local, **mutually recursive** lexical bindings.

With `letrec`, all `<variable>`s are in scope within all `<expression>`s, allowing for the definition of procedures that can call each other. However, it is an error to reference the *value* of a variable before it has been computed; for this reason, `letrec` is almost exclusively used to define mutually recursive procedures.

The `letrec` expression evaluates to the value of the **last expression** in its `<body>`. Gerbil extends the R7RS `letrec` to support multiple-value bindings.

::: tip Example
The classic use case for `letrec` is to define two or more procedures that call each other.

```scheme
;; Here, 'is-even?' can call 'is-odd?' before it is fully defined, and vice-versa.
> (letrec ((is-even? (lambda (n)
                       (if (zero? n)
                           #t
                           (is-odd? (- n 1)))))
           (is-odd? (lambda (n)
                      (if (zero? n)
                          #f
                          (is-even? (- n 1))))))
    (is-odd? 11))
#t
```
:::

#### Context and Usage

Use `letrec` when you need to define two or more local procedures that are mutually recursive.

* For the simpler case of creating a single self-referential expression (like a recursive lambda), the [`rec`](#rec_) macro can be a more concise shortcut.
* For most other situations, [`letrec*`](#letrec-star-_) is now generally preferred over `letrec` as it is more robust and has more predictable evaluation semantics.

#### See Also

- [`let`](#let_)
- [`let*`](#let-star-_)
- [`letrec*`](#letrec-star-_)
- [`rec`](#rec_)

### letrec* <Badge type="tip" text="R7RS" vertical="middle" />
```scheme
(letrec* (<binding> ...) <body> ...)

binding:
(<variable> <expression>)
((values <variable> ...) <expression>)
```

Creates local, **mutually recursive** lexical bindings, evaluating the binding expressions sequentially.

Like [`letrec`](#letrec_), `letrec*` makes all `<variable>`s available within all binding expressions. However, it evaluates the `<expression>`s from **left to right**, meaning a binding can use the value of a preceding binding. This makes `letrec*` more flexible and powerful than `letrec`.

The `letrec*` expression evaluates to the value of the **last expression** in its `<body>`. Gerbil extends the R7-RS `letrec*` to support multiple-value bindings.

::: tip Example
This example defines a recursive factorial procedure and then uses it immediately.
Because bindings are evaluated sequentially, `result` can refer to `fact`, which is defined just before it.

```scheme
> (letrec* ((fact (lambda (n)
                    (if (zero? n) 1 (* n (fact (- n 1))))))
            (result (fact 5)))
    result)
120
```

For mutually recursive definitions, each binding can refer to the others as well:

```scheme
> (letrec* ((even? (lambda (n) (if (zero? n) #t (odd? (- n 1)))))
            (odd?  (lambda (n) (if (zero? n) #f (even? (- n 1))))))
    (list (even? 10) (odd? 5)))
(#t #t)
```
:::

#### Context and Usage

`letrec*` is the most powerful and flexible `let` form, combining the sequential evaluation of [`let*`](#let_) with the mutual recursion of [`letrec`](#letrec_).

* It is generally recommended to use `letrec*` over [`letrec`](#letrec_) in most situations due to its more predictable, left-to-right evaluation order. It can do everything [`letrec`](#letrec_) can do, and more.
* While `letrec*` can define any recursive binding, the [`rec`](#rec_) macro offers a more concise syntax for the specific case of a single self-referential expression.

#### See Also

- [`let`](#let_)
- [`let*`](#let-star-_)
- [`letrec`](#letrec_)
- [`rec`](#rec_)

## Procedure Abstractions

These forms are the fundamental primitives for creating procedures (anonymous functions). They are the essential building blocks upon which named function definitions like `def` are built, allowing computation to be encapsulated and passed as a value.

### lambda <Badge type="tip" text="R7RS" vertical="middle" />
```scheme
(lambda <lambda-head> <lambda-body> ...)

lambda-head:
 <identifier>
 (<required-lambda-arg> ... <optional-and-keyword-lambda-arg> ... [. tail])

required-lambda-arg:
 <identifier>
 (<identifier> <contract-annotation> ...)

optional-and-keyword-lambda-arg:
 <optional-lambda-arg>
 <keyword-lambda-arg>

optional-lambda-arg:
 (<identifier> <default-value-expression>)
 (<identifier> <contract-annotation> <contract-default>)

keyword-lambda-arg:
 <required-keyword-lambda-arg>
 <optional-keyword-lambda-arg>

required-keyword-lambda-arg:
 <keyword> <identifier>
 <keyword> (<identifier> <contract-annotation>)

optional-keyword-lambda-arg:
 <keyword> (<identifier> <default-value-expression>)
 <keyword> (<identifier> <contract-annotation> <contract-default>)

contract-annotation:
 :~ <predicate>
 : <Type>
 :- <Type>
 :? <Type> [:= <expression>]

lambda-body ...:
 [=> <type>] local-body ...

```

The fundamental primitive for creating procedures (anonymous functions). Gerbil extends the R7RS `lambda` with a powerful syntax for handling optional arguments, keyword arguments, and contract annotations for gradual typing.

A `lambda` expression evaluates to a procedure. When this procedure is called, the formal parameters defined in the `<lambda-head>` are bound to the actual arguments, and the expressions in the `<lambda-body>` are evaluated in sequence. The value of the last expression in the body is returned.

Gerbil's `lambda` supports a rich syntax for its head:

* **Required Positional Arguments:** Simple identifiers that appear before any other form.
* **Variadic Arguments:** A dot (`.`) preceding the **last parameter**, which will collect all remaining arguments into a list. This can be used alone or after required arguments.
* **Optional Positional Arguments:** `(<identifier> <default-value-expression>)` forms after the required arguments.
* **Keyword Arguments:** `keyword: (<identifier> <default-value-expression>)` forms.
* **Contract Annotations:** Type and predicate constraints can be applied to arguments and the return value. See [Contract Notation and Macrology](contract.md) for details about contract syntax.

::: tip Examples

- **Basic and Variadic Arguments (R7RS)**
This creates a procedure that takes at least one required argument (`initial-value`) and any number of additional arguments which are collected into the list `numbers-to-add`.

```scheme
> (def adder
    (lambda (initial-value . numbers-to-add)
      (foldl + initial-value numbers-to-add)))

> (adder 10 1 2 3)
16
```

- **Optional Arguments (Gerbil extension)**
Optional arguments are specified in lists with a default

```scheme
> (def greet
    (lambda (name (greeting "Hello"))
      (format "~a, ~a" greeting name)))

> (greet "Alice")
"Hello, Alice"

> (greet "Bob" "Hi")
"Hi, Bob"
```

- **Keyword Arguments (Gerbil Extension)**
Keyword arguments are specified with a `keyword:` prefix.

```scheme
> (def create-user
    (lambda (name role: (role "guest") active?: (active? #t))
      (list name role active?)))

> (create-user "Alice")
("Alice" "guest" #t)

> (create-user "Bob" active?: #f role: "admin")
("Bob" "admin" #f)
```

- **Contract and Type Annotations (Gerbil Extension)**
Gerbil supports gradual typing via contract annotations directly in the lambda head, and a return type annotation in the body.

```scheme
;; This procedure takes two integers and returns an integer.
> (def sum
    (lambda ((x :~ integer?) (y : :integer)) => :integer
      (+ x y)))

> (sum 2 3)
5
```

```scheme
;; This procedure defines an optional argument with a type and default value.
> (def greeting
    (lambda ((name :? :string := "World!"))
      (println "Hello " name)))

> (greeting "Gerbil!")
Hello Gerbil!

> (greeting)
Hello World!
```
:::

#### Context and Usage

`lambda` is the essential building block for all procedures in Gerbil.

* While you can use `lambda` directly to create anonymous functions, it is most often used with the [`def`](#def_) macro to define named functions.
* The Gerbil `lambda` macro is a high-level form that expands to the lower-level [`lambda%`](#primitive.md#lambda_) and [`case-lambda`](#case-lambda) primitives, providing a rich and convenient syntax for defining complex function signatures.

#### See Also

- [`def`](#def_)
- [`case-lambda`](#case-lambda_)


### case-lambda <Badge type="tip" text="R7RS" vertical="middle" />
```scheme
(case-lambda <case-lambda-clause> ...)

case-lambda-clause:
 (<formals> <body> ...)
```

Creates a single procedure that dispatches to different implementations based on the number of arguments (arity) it is called with.

A `case-lambda` expression evaluates to a single procedure. When this procedure is called, it counts the number of arguments it received and executes the body of the **first clause** whose formal argument list (`<formals>`) matches that number.

The value of the `case-lambda` expression is the value of the **last expression** in the body of the matching clause. An error is signaled if the procedure is called with a number of arguments that does not match any of the clauses.

While `case-lambda` does not support optional, keyword, or variadic arguments like the full [`lambda`](#lambda_) macro, it **does support contract annotations** for gradual typing on its arguments and return values.

::: tip Examples

- **Basic Arity Dispatch**
`case-lambda` is ideal for creating functions that have fundamentally different behaviors for different numbers of arguments. This example creates a `describe` function that can describe one or two things.

```scheme
> (def describe
    (case-lambda
      ((thing1)
       (format "This is one thing: ~a" thing1))

      ((thing1 thing2)
       (format "These are two things: ~a and ~a" thing1 thing2))))

> (describe "Gerbil")
"This is one thing: Gerbil"

> (describe "Gerbil" "Scheme")
"These are two things: Gerbil and Scheme"

;; Calling with a non-matching number of arguments would be an error.
> (describe)
*** ERROR IN ? [Error]: No clause matching arguments
```

- **Arity Dispatch with Type Annotations**
This `add` procedure has two different implementations: one for adding two integers and another for adding three floating-point numbers.

```scheme
> (def add
    (case-lambda
      (((x : :integer) (y : :integer)) => :integer
       (+ x y))

      (((a : :number) (b : :number) (c : :number)) => :number
       (+ a b c))))

> (add 2 3)
5
> (add 1.0 2.5 3.5)
7.

;; This would raise a contract violation error:
> (add 2 3.5)
...
[ContractViolation]: contract violation
...
```
:::

#### Context and Usage

Use `case-lambda` when you need a single procedure to dispatch based on its arity.

* It is the fundamental primitive in Gerbil for creating multi-arity procedures.
* For defining a named procedure with this behavior, the [`def*`](#def-star-_) macro is a more convenient and idiomatic shortcut for `(def name (case-lambda ...))`.

#### See Also

- [`def*`](#def-star-_)
- [`lambda`](#lambda_)

## Derived and Auxiliary Forms

This section covers auxiliary binding macros that serve as convenient shortcuts for common or advanced patterns. These forms are not fundamental binding constructs, but they help make code more concise and expressive by reducing boilerplate for tasks like self-reference, conditional binding, or continuation capture.

### cut <Badge type="tip" text="SRFI-26" vertical="middle" />
```scheme
(cut <cut-argument> ... [<cut-tail>])

cut-argument:
 <>
 <s-expression>

cut-tail:
 <...>
```

Creates a procedure (a `lambda`) for partial application, where some arguments are pre-filled and others are left as open "slots". This is an implementation of [SRFI-26](https://srfi.schemers.org/srfi-26/srfi-26.html).

The `cut` macro is a concise way to create a new procedure by "cutting out" some arguments from an expression. It uses special placeholders:

* **`<>`** (pronounced "slot"): Represents a single required argument for the new procedure. The number of `<>`s determines the number of arguments the new procedure will accept.
* **`<...>`** (pronounced "rest-slot"): Represents all remaining arguments, which will be collected into a list. It must be the last slot in the expression.

::: tip Examples

- **Basic partial application:**
`cut` is often used to create specialized versions of existing procedures.

```scheme
;; Create a new procedure 'add-to-10' that adds its argument to 10.
> (def add-to-10 (cut + 10 <>))
> (add-to-10 5)
15
```

- **Using `cut` with Higher-Order Functions:**
`cut` shines when creating simple predicates or transformations for functions like `map` or `filter`, especially when you need to fix some arguments of a multi-argument procedure.

Without `cut`, you would write a full [`lambda`](#lambda_) to keep numbers greater than 10:
```scheme
> (filter (lambda (n)
            (> n 10))
          '(5 2 15 10 25))
(15 25)
```

With `cut`, the code becomes more concise:
```scheme
;; Keep only the even numbers from a list.
> (filter (cut > <> 10)
          '(5 2 15 10 25))
(15 25)
```

- **Using the Rest Slot:**
The `<...>` placeholder collects a variable number of arguments and passes them to the underlying procedure.

```scheme
;; Create a procedure that prepends a prefix to any number of arguments using format.
> (def prefixer (cut string-append "PREFIX: " <...>))

> (prefixer "hello" " " "world")
"PREFIX: hello world"
```
:::

#### Context and Usage

Use `cut` as a concise and readable alternative to writing a full [`lambda`](#lambda_) expression, especially for creating simple wrappers for partial application or when passing procedures to higher-order functions.

* Evaluation Semantics: It is important to note that any expression in a `cut` form that is not a slot (e.g., the `(random 100)` in `(cut + (random 100) <>)`) is re-evaluated every time the resulting procedure is called. Gerbil implements the `cut` variant of [SRFI-26](https://srfi.schemers.org/srfi-26/srfi-26.html), not the `cute` variant which would evaluate such expressions only once.
* `cut` is a specialized tool for partial application. For defining complex procedures with multiple expressions in their body, a full lambda is necessary.

#### See Also

[`lambda`](#lambda_)

### let/cc <Badge type="tip" text="R7RS" vertical="middle" />
```scheme
(let/cc <name> <body> ...)
=>
(call/cc (lambda (<name>) <body> ...))
```

A convenient macro for capturing the current continuation and binding it to a local variable `<name>`. This is syntactic sugar for the R7RS `call/cc` primitive.

A continuation represents the "rest of the computation" from the point where it is captured. Invoking the captured continuation (which is a procedure) immediately abandons the current computation and returns a value to the point where `let/cc` was called.

The entire `let/cc` expression evaluates to the value returned by the `<body>`, unless the captured continuation is invoked, in which case the value passed to the continuation becomes the value of the `let/cc` expression.

::: tip Example

`let/cc` is primarily used to implement non-local exits, allowing you to immediately exit from deeply nested computations or loops. This example searches for the first even number in a list and returns it immediately using the captured continuation `return`.

```scheme
> (def (find-first-even lst)
    (let/cc return
      (for-each (lambda (x)
                  (when (even? x)
                    (return x))) ; Immediately exit 'let/cc' with the value 'x'
                lst)
      #f)) ; Return #f if no even number is found

> (find-first-even '(1 3 5 6 7 8))
6
> (find-first-even '(1 3 5 7))
#f
```
:::

#### Context and Usage

Use `let/cc` for advanced control flow mechanisms like non-local exits, implementing simple exception handling, or coroutines.

* `let/cc` provides a more readable alternative to directly using `call/cc` by giving the continuation a clear local name.
* While powerful, continuations can make code harder to reason about. Use them judiciously when simpler control flow structures (`if`, loops, simple recursion) are insufficient.

#### See Also

`call/cc`

### rec <Badge type="tip" text="SRFI-31" vertical="middle" />
```scheme
(rec <name> <expression>)
(rec (values <name> ...) <expression>)
(rec (<name> . <head>) <body> ...)
```

Offers a simple syntax [SRFI-31](https://srfi.schemers.org/srfi-31/srfi-31.html) for creating self-referential expressions, most commonly used to define anonymous recursive functions directly within another expression.

`rec` allows the definition of recursive values and procedures directly within an expression, without needing external bindings like `define` or the verbosity of [`letrec`](#letrec_). It expands into a [`letrec`](#letrec_) or [`letrec-values`](primitive.md#letrec-values_) form.

It has three forms:
* **`(rec <name> <expression>)`**: Defines a single variable `<name>` whose `<expression>` can refer to `<name>`. It expands to `(letrec ((<name> <expression>)) <name>)` and returns the value of the expression.

* **`(rec (values <name> ...) <expression>)` (Gerbil Extension)**: Defines multiple mutually recursive variables `<name> ...` simultaneously. The `<expression>` must return as many values as there are names. Expands to `(letrec-values (((<name> ...) <expression>)) (values <name> ...))` and returns the values produced by the expression.

* **`(rec (<name> . <head>) <body> ...)`**: Defines a recursive procedure `<name>` using lambda syntax and returns the procedure. Expands to `(letrec ((<name> (lambda <head> <body> ...))) <name>)`. This is the primary [SRFI-31](https://srfi.schemers.org/srfi-31/srfi-31.html) use case.

::: tip Examples

- **Defining a recursive procedure (Primary use case)**
This form provides a simple and intuitive syntax for defining recursive functions inline.

```scheme
;; Using 'rec' to define the factorial function inline, passed to 'map'.
> (map (rec (fact n) ; Defines 'fact' locally for the lambda body
         (if (zero? n) 1 (* n (fact (- n 1)))))
       '(1 2 3 4 5))
(1 2 6 24 120)
```

- **Defining a recursive value (Stream)**
This creates a self-referential binding, often used for structures like infinite streams.

```scheme
;; An infinite stream of ones.
> (def ones (rec S (cons 1 (delay S))))

;; Helper function to take elements from a stream.
> (def (stream-take stream n)
    (do ((i n (1- i))
         (ones '() (cons (car stream) ones)))
        ((zero? i) (reverse ones))
      (force (cdr stream))))

;; Take the first 5 elements using the helper.
> (stream-take ones 5)
(1 1 1 1 1)
```

- **Multiple recursive values (Gerbil Extension)**
This Gerbil-specific form allows defining multiple mutually recursive values inline.

```scheme
;; Define mutually recursive 'is-even?' and 'odd?' checkers inline
> (let ((values is-even? is-odd?)
        (rec (values is-even? is-odd?)
          (values
           (lambda (n) (if (zero? n) #t (is-odd? (- n 1))))
           (lambda (n) (if (zero? n) #f (is-even? (- n 1)))))))
    (is-even? 4))
#t
```
:::

#### Context and Usage

Use `rec` as a concise alternative to [`letrec`](#letrec_) or [`letrec*`](#letrec-star-_) specifically when you need to define a single self-referential expression (especially a recursive procedure) or a set of mutually recursive values directly within another expression. It avoids introducing external bindings and is often more readable for anonymous recursion.

* For defining multiple, potentially complex, mutually recursive bindings (especially named procedures at the top level or within a function body), [`letrec`](#letrec_) or [`letrec*`](#letrec-star-_) remain the standard tools.

#### See Also

- [`letrec`](#letrec_)
- [`letrec*`](#letrec-star-_)
- [`lambda`](#lambda_)
- [`letrec-values`](#primitive.md#letrec-values_)

### alet <Badge type="tip" text="Gerbil" vertical="middle" />
```scheme
(alet (<binding> ...) <body> ...)

binding:
 (<var> <expr>)
 ((values <var> ...) <expr>)
 (<expr>)

```

A conditional binding form. It binds variables like [`let`](#let_), but only executes the `<body>` if all the bound values are truthy (any value other than `#f`).

The `alet` macro first evaluates all binding expressions in parallel, similar to [`let`](#let_). It then checks if every value bound to a variable is truthy.

* If all values are truthy, the `<body>` is evaluated in a new scope containing the bindings, and the result of the last expression in the `<body>` is returned.
* If at least one value is `#f`, the `<body>` is not evaluated, and the `alet` expression immediately returns `#f`.

Like [`let`](#let_), gerbil's `alet` supports both single and multiple-value bindings.

::: tip Example

**Safe lookup and computation**
`alet` is useful for guarding computations that depend on potentially missing values.

```scheme
(define data (hash (a 10) (b 20)))

> (alet ((x (hash-get data 'a))
         (y (hash-get data 'b)))
    (+ x y))
30

> (alet ((x (hash-get data 'a))
         (y (hash-get data 'c))) ; missing key
    (+ x y))
#f ;; body skipped because y is #f

```
:::

#### Context and Usage

Use `alet` when you need to bind variables and proceed only if all of them received a valid (truthy) value. It's a common pattern for safely handling results from functions that might return `#f` on failure (like lookups in hash tables or lists).

* Compared to [`let`](#let_), `alet` adds the conditional check before executing the body.
* For sequential conditional bindings (where each binding depends on the success of the previous one), use [`alet*`](#alet-star-_).

#### See Also

- [`alet*`](#alet-star-_)
- [`let`](#let_)
- [`and`](control-flow.md#and_)

### alet* <Badge type="tip" text="Gerbil" vertical="middle" />
```scheme
(alet* (<binding> ...) <body> ...)

binding:
  (<variable> <expr>)
  ((values <variable> ...) <expression>)
  (<expression>)

(alet* (hd . rest) body ...)
=>
(alet hd (alet* rest body ...))
```

A sequential conditional binding form. It binds variables like `let*`, but only proceeds to the next binding or the body if the current binding's value is truthy.

The `alet*` macro (also aliased as `and-let*`) evaluates its bindings sequentially. For each `<binding>`:
1. The `<expression>` is evaluated.
2. If the result is truthy, the `<variable>`(s) are bound to that value(s), and the evaluation proceeds to the next binding (or the body if it's the last binding). The newly bound variable(s) are visible to subsequent bindings.
3. If the result is `#f`, the entire `alet*` expression stops immediately and returns `#f`.

If all bindings succeed (evaluate to a truthy value), the `<body>` is executed, and the `alet*` expression evaluates to the value of the last expression in the `<body>`.

Like `alet`, Gerbil's `alet*` supports both single and multiple-value bindings.

::: tip Example

**Sequential conditional binding**
Each expression is evaluated in sequence, and later bindings can depend on earlier ones.

```scheme
> (alet* ((x 10)
          (y (> x 5))
          (z (+ x 1)))
    z)
11

> (alet* ((x 10)
          (y (< x 5))
          (z (+ x 1)))
  z)
#f ;; evaluation stops at y
```
:::

#### Context and Usage

Use `alet*` (or its alias `and-let*`) when you need to perform a sequence of dependent bindings, where each step must succeed (return a truthy value) for the next step to proceed. It's a very common pattern for safely navigating data structures or chaining operations that might fail.

* Compared to [`alet`](#alet_), which evaluates all bindings in parallel and checks them all at once, `alet*` evaluates and checks sequentially, short-circuiting on the first failure.
* Compared to [`let*`](#let-star-_), `alet*` adds the conditional check at each step.

#### See Also

- [`alet`](#alet_)
- [`let*`](#let-star-_)
- [`and`](control-flow.md#and_)

# Bindings, Scope and Definitions

This page covers the forms used to create bindings in Gerbil, which give names to procedures, variables, and syntax.
It is organized by the scope of the binding, from top-level definitions that shape a module's interface to local bindings that structure the body of a procedure.

## Top-Level Definitions

These forms create bindings at the module or REPL top level. They are used to define the public and private functions, variables, and syntax of a module.

### def <Badge type="tip" text="Gerbil" vertical="middle" />
```scheme
(def <variable> <expression>)
=> (define-values (<variable>) <expression>)

(def (<name> . <lambda-head>) <lambda-body> ...)
=> (define-values (<name>)
     (lambda <lambda-head> <lambda-body> ...))
```
The foundational macro for creating top-level and local runtime bindings. `def` is a powerful and flexible alternative to the standard Scheme `define`.

`def` has two main forms:

* **Variable Definition:** `(def <variable> <expression>)` evaluates the `<expression>` and binds its result to the `<variable>`.
* **Function Definition:** The general form `(def (<name> . <lambda-head>) ...)` is a powerful syntax that can be used to create several kinds of functions:
    * For a **simple function**, `<lambda-head>` is a list of arguments (e.g., `(add x y)`).
    * For a **curried function ([`SRFI 219`](https://srfi.schemers.org/srfi-219/srfi-219.html))**, `<lambda-head>` contains nested lists (e.g., `((greet prefix) suffix)`).
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

- **Currying and Partial application ([`SRFI 219`](https://srfi.schemers.org/srfi-219/srfi-219.html))**
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

Compared to the R7RS `define`, `def` offers a more powerful and extensible syntax. The two main differences are:

* **Currying Syntax**: `def` supports the [`SRFI 219`](https://srfi.schemers.org/srfi-219/srfi-219.html) curried function definition syntax.
* **Underlying Lambda**: `def` expands using the high-level `lambda` macro, which supports Gerbil's full feature set for arguments (optional, keyword, contracts). In contrast, `define` uses the lower-level `lambda%` primitive.

**Rule of thumb**: Always prefer `def` over `define` in Gerbil code for its extended features and idiomatic style.

#### See Also

- [`def*`](#def*)
- `define` (the R7RS primitive)
- [`let`](#let)
- [`lambda`](#lambda)

### def* <Badge type="tip" text="Gerbil" vertical="middle" />
```scheme
(def* name
  clause ...)
=>
(def name
  (case-lambda clause ...))
```

A convenient macro for defining a procedure that handles multiple arities (different numbers of arguments) using `case-lambda`.

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

* Compared to `def`, which is used for defining a function with a single signature (that can include optional/keyword arguments), `def*` is used for defining a function that has **multiple, distinct signatures based on arity**.

#### See Also

- [`def`](#def)
- [`case-lambda`](#case-lambda)

### defvalues <Badge type="tip" text="Gerbil" vertical="middle" />
```scheme
(defvalues (name ...) expr)
=>
(define-values (name ...) expr)
```

A macro for creating multiple top-level or local bindings from an expression that produces multiple values.

This form is a convenient Gerbil-specific alias for the R7RS `define-values` macro. The `<expression>` is evaluated, and it must produce as many values as there are `<name>`s in the list. Each name is then bound to the corresponding value.

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

* `defvalues` is a Gerbil alias for the R7RS `define-values`. It is provided for consistency with other Gerbil binding forms like `def`.
* For creating local bindings from multiple values, `let-values` is often preferred.

#### See Also

- `define-values`
- `values`
- `let-values`

### extern <Badge type="tip" text="Gerbil" vertical="middle" />
```scheme
(extern <extern-body> ...)

extern-body:
<identifier>
(<identifier> <identifier>)
(namespace: <identifier> <extern-body> ...)
```

Declares a name that is defined externally, for instance in a C library or another Gerbil namespace.

`extern` is a versatile macro that acts as a **declaration** or a "promise" to the compiler that a symbol's definition will be provided at runtime. Its applications range from interfacing with foreign libraries (FFI) to managing namespaces in dynamic contexts like `eval`.

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

`extern` is a foundational tool for Gerbil's **Foreign Function Interface (FFI)**, which is delegated to the underlying Gambit C-interface. For a complete understanding of the FFI mechanism, it is highly recommended to also read the "C-interface" section of the Gambit manual.

* For **FFI**: `extern` serves as a high-level declaration for external symbols that will be available at link time.
* For `eval`: `extern` is the idiomatic tool to bridge the gap between module namespaces and the dynamic scope of `eval`.
* The `begin-foreign` macro is the primary mechanism for defining the actual C bindings by delegating directly to Gambit's FFI. It is often used to provide the definition for a symbol declared with `extern**.

#### See Also

- `begin-foreign`
- `eval`

### defsyntax <Badge type="tip" text="Gerbil" vertical="middle" />
```scheme
(defsyntax <name> <expander-expression>)
(defsyntax (<name> <stx-arg>) <body> ...)
```

The foundational macro for creating syntactic bindings, typically used to define procedural macros. It is a Gerbil-specific, convenient alias for the R7RS `define-syntax` macro.

A macro defined with `defsyntax` is a procedure that receives a single argument: a syntax object representing the entire macro invocation. This procedure, called the *expander*, must then deconstruct this syntax object and return the new code to be substituted.

`defsyntax` has two main forms:

* **` (defsyntax <name> <expander-expression>)`**: Binds `<name>` to the result of `<expander-expression>`, which should be a macro expander procedure. This is equivalent to `(define-syntax <name> <expander-expression>)`.
* **` (defsyntax (<name> <stx-arg>) ...)`**: A convenient, `def`-like syntax for defining the expander procedure. It is equivalent to `(defsyntax <name> (lambda (<stx-arg>) ...))`.


::: tip Example
The most common use of `defsyntax` is to define a procedural macro using `syntax-case`. This example defines a `swap!` macro that swaps the values of two variables.

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

* Compared to the R7RS `define-syntax`, `defsyntax` provides a more convenient, def-like syntax for defining the expander procedure, but the underlying mechanism is identical. It is the preferred form in Gerbil code.
* For simpler, purely pattern-matching macros, [`defrules`](#defrules) and [`defrule`](#defrule) are often more concise alternatives to writing a full procedural macro with `defsyntax`.

#### See Also

- `define-syntax`
- [`defrules`](#defrules)
- [`defrule`](#defrules)
- `syntax-case`

### defrules <Badge type="tip" text="Gerbil" vertical="middle" />
```scheme
(defrules <name> (<literal> ...) <clause> ...)
=>
(defsyntax name
  (syntax-rules (<literal> ...)
    <clause> ...))
```

A macro for defining simple, pattern-matching macros, providing a convenient syntax on top of the standard R7RS `syntax-rules`.

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

* The underlying mechanism for `defrules` is the R7RS `syntax-rules` system. `defrules` is a Gerbil-specific macro that makes its usage more convenient.
* For macros that require more complex logic than simple pattern matching (e.g., inspecting syntax objects, raising custom errors), use the more powerful [`defsyntax`](#defsyntax) to create a procedural macro.
* For macros that only have a single rule, [`defrule`](#defrule) is an even more concise alternative.

#### See Also

- [`defrule`](#defrule)
- [`defsyntax`](#defsyntax)
- `syntax-rules`

### defrule <Badge type="tip" text="Gerbil" vertical="middle" />
```scheme
(defrule (name . args) [fender] body)
=>
(defsyntax name
  (syntax-rules ()
    ((_ . args) [fender] body)))
```

A convenient macro for defining a simple, single-rule, pattern-matching macro.

`defrule` is a specialized version of `defrules` for the common case where a macro only needs one pattern-matching clause. It supports an optional `fender` expression, which acts as a guard: the macro will only expand if the fender evaluates to a truthy value.

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
* For macros with multiple patterns, use the more general [`defrules`](#defrules).
* For macros requiring complex procedural logic, use [`defsyntax`](#defsyntax).

#### See Also

- [`defrules`](#defrules)
- [`defsyntax`](#defsyntax)

### defalias <Badge type="tip" text="Gerbil" vertical="middle" />
```scheme
(defalias name alias-name)
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
This demonstrates the syntactic nature of `defalias`. The new name `let-seq` behaves exactly like the [`let*`](#let*) macro.

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
```
(let <let-binding> <local-body> ...)
(let (<let-binding> ...) <local-body>)
(let <identifier> ((<lambda-required-argument> expr) ...) <lambda-body> ...)

let-binding:
 ((values <identifier> ...) <expression>)
 (<identifier> <expression>)
```

Create a new lexical scope, where the bindings are evaluated in an
unspecified order in the parent scope.

The named let constuct creates a recursive procedure that is applied
to the given arguments.

### let*
```
(let* (head . rest) body ...)
=>
(let head (let* rest body ...))
```

Sequential bindings where each binding is visible to subsequent
bindings.

### letrec
```
(letrec (<let-binding> ...) <local-body> ...)
```

Mutually recursive bindings.

### letrec*
```
(letrec* (<let-binding> ...) <local-body> ...)
```

Similar to `letrec`, but binding expressions are evaluated in order.

## Procedure Abstractions

These forms are the fundamental primitives for creating procedures (anonymous functions). They are the essential building blocks upon which named function definitions like `def` are built, allowing computation to be encapsulated and passed as a value.

### lambda
```
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
 (<identifier> <expression>)
 (<identifier> <contract-annotation> <contract-default>)

keyword-lambda-arg:
 <required-keyword-lambda-arg>
 <optional-keyword-lambda-arg>

required-keyword-lambda-arg:
 <keyword> <identifier>
 <keyword> (<identifier> <contract-annotation>)

optional-keyword-lambda-arg:
 <keyword> (<identifier> <expression>)
 <keyword> (<identifier> <contract-annotation> <contract-default>)

lambda-body ...:
 [=> <type>] local-body ...

```

Defines a procedure; see [Contract Notation and Macrology](contract.md) for details
about contract syntax.

### case-lambda
```
(case-lambda <case-lambda-clause) ...)

case-lambda-clause:
 <identifier>
 (required-lambda-arg ... [. identifier>])

```

Define a multiple dispatch by arity procedure.

## Derived and Auxiliary Forms

This section covers auxiliary binding macros that serve as convenient shortcuts for common or advanced patterns. These forms are not fundamental binding constructs, but they help make code more concise and expressive by reducing boilerplate for tasks like self-reference, conditional binding, or continuation capture.

### cut <Badge type="tip" text="Gerbil" vertical="middle" />
```
(cut <cut-argument> ... [<cut-tail>])

cut-argument:
 \<>
 <s-expression>

cut-tail:
 \<...>
```

Application parameter specialization, which produces a lambda; see [SRFI 26](https://srfi.schemers.org/srfi-26/srfi-26.html)

### let/cc
```
(let/cc name body ...)
=>
(call/cc (lambda (name) body ...))
```

Shortcut for local continuation capture.

A common use is to capture a continuation for abortive returns from a
dynamic scope; for instance:
```
(let/cc break
  (for (...)
    (unless something (break))
    ...))
```

### rec <Badge type="tip" text="Gerbil" vertical="middle" />
```
(rec name expr)
=>
(letrec ((name expr)) expr)

;-------------------------
(rec (values name ...) expr)
=>
(letrec (((values name ...) expr)) (values name ...))

;--------------------------
(rec (name . head) body ...)
=>
(letrec ((name (lambda head body ...))) name
```

Shortcut for self referential expressions.

### alet <Badge type="tip" text="Gerbil" vertical="middle" />
```
(alet <let-bind> <local-body> ...)
(alet (alet-bind> ...) <local-body> ...)
```

Conditional binding form. If all the bound identifiers in the bindings
are truthy, then the body is evaluated in a scope with the bindings
visible. Otherwise, the expression's value is `#f`.

### alet* <Badge type="tip" text="Gerbil" vertical="middle" />
```
(alet* (hd . rest) body ...)
=>
(alet hd (alet* rest body ...))
```

Sequential conditional bindings.

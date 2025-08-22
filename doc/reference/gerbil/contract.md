# More About Contracts

Contracts can be attached to definitions of procedures and interface
method signatures, as well as class slots. They can also be applied to
expressions using contract expressions, so that an expression can
be checked and appropriate type information propagated by the
compiler. See also [Contract Notation and Macrology](/reference/gerbil/core/contract.md)
for additional details.

## Contract Modifiers

Contracts use a few special identifiers, in context, in order to
declare constraints and provide type annotations:
- `:` denotes the basic, runtime checked if necessary, type annotation.
  For example, a procedure/method argument `(a : Type)` denotes that
  variable `a` has type `Type` in the body with the type asserted at
  runtime if it is not known or proven by the compiler.
  When used with interfaces, the check implies a cast.
- `:-` denotes an unchecked type assertion; the programmer asserts that
  the object is of the correct type. When pertaining to
  to interface types, method invocations are also unchecked and when
  pertaining to slots, mutations are also unchecked. So beware,
  this is a very powerful primitive that should be used with care; it literally
  instructs the compiler to trust you, the programmer, at the peril of imminent
  process death.
- `::-` is a combination of the two where the type itself is asserted
  by interface method contracts are not bypassed and slot mutations are
  checked.
- `:?` is a synthetic type annotation that allows an object to have a bottom value,
  ie `#f`. Note that once we have implemented sum types this will just inject
  a sum of the type and `:false`.
- `:~` is a generalized contract check where a predicate is used
  to verify potentially arbitrary constraints regarding an object. Note
  that `:~` can be chained with the type annotation modifier to assert the type
  after the check.
  Also note that currently generalized contracts are not usually checked
  at compile time, but this is something that we plan to implement in
  subsequent releases.
- `:=` is used in conjuction with contracts to denote a default value
  for optional arguments.

## Binding Contracts

By binding contracts we refer to contracts attached to:
- procedure arguments
- method signature arguments
- class slots

The general form of a binding contract is
```
(id [:~ predicate] [:|:?|:-|::- Type] [:= default-value-expression])
```
where `[...]` denotes an optional component, but note that at least on
of the optionals must be present.

For procedures, the `=> Type` notation can be used to denote return type.

Typed procedure definitions look like this:
```
(def (my-procedure (a : A) (b : B := (make-a-B))) => C
  ...
)
```

Interface method signatures look like this:
```
(interface MyInterface
  (my-method (a : A) (b : B := (make-a-B))) => C
   ...)
```

Lambda forms that carry contracts look like this:
```
(lambda ((a : A) (b : B := (make-a-B))) => C
 ...)

(case-lambda
 ((a : A) (b : B)) => C
  ...)
 ...)
```

And finally, class slots that carry contracts look like this:
```
(defclass MyClass
  ((a : A)
   (b : B := (make-a-B))))
```

## Contract Expressions

`:`, `:?`, `:-`, and `:~` can be used as standalone macros with an
expression.  This creates a dynamic contract check and type
propagation for an expression. Note that check may be possible to be
eliminated by the compiler, if it knows or can prove that it is
satisfied.

The form of a contract expression
```
(:|:?|:- expression Type)
(:~ expression predicate [:|:- Type])
```

## The using Macro

Contracts are enacted within a lexical scope using the `using` macro
from the core prelude. Note that procedure signatures automatically
inject an appropriate incantation of the using macro in procedure
bodies.

The general usage of the macro is as follows:
```
(using (id [expr] contract ...) body ...)
(using ((id [expr] contract ...) ...) body)
```

The first form is a single arm binding, while the second form is
sequentially expanded akin to `let*`.

The macro generates the appropriate contract check and constructs a
binding with the appoprriate type annotation. Within the body
expansion, the types attached to the bound identifiers are
syntactically known, so that dotted notation can be expanded.

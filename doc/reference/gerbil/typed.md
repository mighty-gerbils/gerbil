# The Gerbil Type System

Gerbil is a dialect of LISP, and as such its nature is highly dynamic;
types typically manifest at runtime, which allows us to write programs
that cannot be written in statically typed languages. However, this
does not mean that we don't appreciate the benefits static typing can
bring in program development, for safety, documentation, and
optimization opportunities.

Starting with the v0.18.2 development cycle, Gerbil has provisions for
gradual typing. In fact, the compiler is aware of types, performs
static type checks where possible or emits runtime type checks as
needed, and emits optimized code eliding dynamic checks when the type
is known or can be proven to be correct for the operation. The runtime
and builtin primitives provide base type information, so that types
can be inferred and used by the compiler even if the user does not
provide any annotations.

The core definition macros have been enhanced to allow the user to
attach type annotations and contracts, thus providing additional
information to the compiler to perform safety checks and
optimizations. Gerbil's annotations have a different flavor than those
in your typical statically typed language: they provide a contract.
The contract is in place for safe dynamic invocations; however, the
associated runtime checks can be completely elided in situations where
the compiler knows or can prove that the contract is satisfied.

We retain Gerbil's LISP dynamism, while providing mechanisms to assert
what can be statically expressed for safety and emit optimized code
without unnecessary runtime checks.

Note that the journey into typed Gerbil has just begun; this is the
first iteration, where the basic structure is laid. There are still a
lot of missing pieces that we plan to implement in subsequent releases
-- see [The Road Ahead](#the-road-ahead). Nonetheless, the type system
is already proving useful, catching type errors at compile time and
improving safety and performance of compiled code.

## Gradual Typing

The annotation philosophy of Gerbil is that of _gradual typing_. You
do not have to annotate anything to get a correct program; start your
prototype without any annotations, hack, understand the problem domain
and get your code working. As you are advancing in the program's
development lifecycle, start adding contracts to codify your
interfaces and abstraction boundaries and improve static safety. And
without any additional cost for you, let the compiler perform type
directed optimizations to eliminate the runtime overhead of dynamic
typing in places where it matters. At the same time, if you are
following a specification or working on a safety critical piece of
software, you can start with types and things will fall in place. The
choice is yours.

## Type Definitions

Any class or interface is a valid type: that includes runtime and
library predifined classes, system class for primitive objects, and
user defined type. Every class has an associated predicate, so that a
type annotation can be decomposed into a runtime type check and a type
assertion propagated to the compiler.

In addition, there is an appropriate macro for defining synthetic
types: `deftype`. At the moment, it is limited to type references
which are useful for defining mutually recursive types. In subsequent
releases this mechanism will be extended to allow union/sum/algebraic
type definitions, parametric, and dependent types -- see [The Road Ahead](#the-road-ahead).

## Contracts and Type Annotations

Type annotations and contracts can be attached to definitions with
`def` and `lambda` and `case-lambda` signatures. A type annotation is
a contract that requires or asserts that an argument has a specific
type. The contract implicit from the type is a check with the type
associated predicate. Contracts can provide more constraints however,
by attaching a predicate check (with an optional implied type
assertion).

See [More About Contracts](/reference/gerbil/contract.md) for more
information.

## Dotted Notation

A pleasant byproduct of type annotations is that within the scope of
the annotation, an object's type is known. This allows us to extend
the syntax of Gerbil to support dotted notation on objects. So slot
references (and mutations) and interfaces method invocations can use
the dot. Furthermore, by providing type annotations for slots at class
definition time, we can also perform deep dot resolution, following
the types associated with the slots.

## Type Safety

Note that by default, Gerbil is dynamically type safe unless an unsafe
primitive is used incorrectly by the programmer. Type errors should
not cause a hard crash and generate a runtime exception and fail
gracefully.

However, for many programs, especially the ones running without a
human operator, a runtime error is just as bad as a crash. The program
failed to perform its service because of a programmer error.  What's
worse, the error is sometimes something cryptic deep inside a
recursive computation, making it hard to identify where things went
wrong.

Contract annotations provide safety at compile time when certain
assertions can be proved: the program is correct and free of time
errors.  In addition, when contract requirements can be disproved at
compile time, the compiler can catch a bug and emit an error avoiding
runtime failures and helping the programmer debug. Finally, even when
contract requirements cannot be proved at compile time, the emitted
contract check will be at the right boundary to help the programmer
identify the error without having to guess.

## The Road Ahead

As we have mentioned, this is the first iteration of typed Gerbil
shipping with Gerbil v0.18.2. The objective of the first iteration is
to establish the semantics and syntactic forms, improve interface
boundary safety and provide the compiler with the means to perform
basic type directed optimization. We hope it is a good start, and you
will enjoy using these facilities... and oh the dots!

Of course, this is not the endgame. Our plans for the eventual v1.0
release is to have a fully featured type system so that entire classes
of programs can enjoy compile-time safety and the adjacent
optimizations with minimal effort by the programmer. We know that
nontrivial Gerbil/Gambit programs can be just as fast as hand written
C programs; vyzo and of course marc regularly do this. The objective
is to make this as easy as possible for all Gerbil hackers, from
fledgling to the seasoned, without needing to internalize the compiler
toolchain and debug segfaults for breakfast.

Here are some features we are planning for the type system:
- Higher order procedure types. Currently, higher order procedures
  are denoted simply as instances of the `:procedure` system class.
  This restricts our ability to check higher order invocation or
  express complex type relations.
- Union/Sum/Algebraic types. These are quite useful for expressing
  disjoint type relations and the like.
- Fully Parametric Types. So that we can say `(List (Pair :symbol :number))`
  or just `(Alist :symbol :number)`  and the like, parameterize our classes
  and containers, and template  optimized procedures based on type.
- Dependent Types. To the extent it makes sense of course, as this is
  a very active area of research; at the minimum provide the machinery
  to express range constraints and similar concepts.

In addition, we also plan to enhance the inference capabilities of the
compiler and introduce inference at expansion level in order to
improve ergonomics.

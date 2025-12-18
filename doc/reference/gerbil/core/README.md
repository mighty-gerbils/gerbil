# The Gerbil Core Prelude

The Gerbil core prelude provides the canonical Gerbil language. It is
the default prelude for modules, scripts and the `gxi` REPL.

## Syntax in Context

In order to describe the macros and syntactic meta objects provided by
the core prelude it is important to distinguish the expansion context
of expansion.
We distinguish:
- module context, which is a top level context with self-enclosed
  referential semantics. This is the code in the body of a module.
- top context, which is the top context for scripts and the REPL.
- meta expansion context: expansion context for module (or top) level code that
  executes at higher phases during expansion.
- local context, which is a new lexical scope in the body of scope
  introducing macros (`lambda`, `let`, and friends etc)
- expression context, which is expansion for an expression that does not introduce
  new bindings to the current context.

## Foundation Syntax

Given this, we can loosely define the base or foundation syntax of the
core prelude as following. Note that there are quite a few more macros
and meta syntactic objects in the prelude. This distinction is made to
bring the foundational language macros which give semantics to the
forefront. For complete prelude macrology reference see the
[Macrology Reference](#macrology-reference) below.

```
module context:
 <module-form> ....

top context:
  <top-form> ..

meta context:
 <meta-form> ...

local context:
 <local-form> ...

expression context:
 <expression> ...

expression context at meta context:
 <meta-expression> ...

module-form:
 <module-special-form>
 <top-form>

module-special-form:
 (module <identifier> <module-form> ...)
 (export ...)
 (provide ...)

top-form:
 (begin <top-form> ...)
 (begin-syntax <meta-form> ...)
 (begin-foreign ...)
 (import ...)
 (extern ...)
 (declare ...)
 (cond-expand ...)
 (include ...)
 <macro-application>
 <definition>
 <expression>

meta-form:
 (begin <meta-form> ...)
 (begin-syntax <meta-form> ...)
 (cond-expand ...)
 (include ...)
 <macro-application>
 <definition>
 <expression>

local-form:
 <macro-application>
 <definition>
 <expression>

macro-application:
 (<identifier> ...) ; where identifier is defined as a macro expanderin the lexical scope
 <identifier>       ; where identifier is defined as an identifier macro expander

definition:
  (define ...)
  (def ...)
  (def* ...)
  (defvalues ...)
  (defclass ...)
  (defstruct ...)
  (defmethod ...)
  (interface ...)
  (defsyntax ...)
  (deftype ...)
  (defalias ...)

expression:
 (begin <expression> ...)
 (begin-annotation <annotation> <expression>)
 (cond-expand ...)
 (include ...)
 (quote ...)
 (quote-syntax ...)
 (if ...)
 (set! ...)
 <lambda-form>
 <let-form>
 <match-form>
 <dynamic-method-call>
 <list-expression>
 <s-expression>

lambda-form:
 (lambda ...)
 (case-lambda ...)

let-form:
 (let ...)
 (let* ...)
 (letrec* ...)
 (let-syntax ...)
 (letrec-syntax ...)
 (using ...)

match-form:
 (match ...)
 (with ...)

dynamic-method-call:
 {<method-receiver>.<method-name> arg ...}
 {<method-name> <s-expression> <s-expression> ...}

method-receiver:
 <identifier>

method-name:
 <dotless-identifier>

list-expression:
 \[...\]

s-expression:
 (<s-exspression> <s-expression>...)
 <identifier>
 <self-quoting-primitive-expression>

self-quoting-primitive-expression:
 <keyword>
 <string>
 <number>
 <char>
 #t #f
```

## Macrology Reference

## Externs

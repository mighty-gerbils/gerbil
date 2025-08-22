# Gerbil Program Model

## Modules

Gerbil programs and libraries are structured in _modules_. A module
is a self contained unit of code, and it typically maps to a
source file in the file system. Note that modules can also be nested
within another module, in the same source file.

A module can _import_ other modules it depends on, which makes the
(possibly filtered or renamed) identifiers of each imported module
available within the lexical scope. A module can _export_ identifiers
defined within its boody or imported from another module (or the
prelude, see below), possibly renaming them. The exported identifiers
mark the public interface of the module; they can be procedures,
variables, other modules or a syntactic object, that is macros or
syntax level definitions.

Modules are strictly lexically scoped; all identifiers used within the
module source must be defined in the module body, imported from
another module or provided by the prelude.

### Module Identifiers
Each module has an identifier; this is typically the module name on
the file system, prefixed by a package defined based on the file
system directory structure. A package is marked by the presence of a
`gerbil.pkg` file, possibly higher up in the directory. The module
identifier is effectively the path from the `gerbil.pkg` and the
filename itself (without extension) joined using `/` as the
separator. If the `gerbil.pkg` contains a `package: <pkg-symbol>`
directive, then it will be prefixed (and joined with `/`) to the
module id constructed from the file system path.  Note that the
package can also been specified directly inside the module with a
`package: <pkg-symbol>` directive, which must precede any expression
within the module body. In this case, the module identifier becomes
`<pkg-symbol>/<file-name-sans-extension>`. If there is no package
defined by a `gerbil.pkg` or the `package:` directive, then the module
identifier is just the module name (the file name without extension).

Note that the module identifier must be unique within the context of a
complete program.

### Prelude Modules
Each module has a prelude, which can be any other module; the prelude
exports provide the base language and predefined identifiers in the
lexical scope of the module. The prelude can be specified with the
`prelude: <module-path>` directive within the source file; again the
directive must proceed any expression within the module body. The
prelude can also be specified in the `gerbil.pkg` file in the file
system hierarchy.

Gerbil also provides a special built-in prelude, identified as
`:<root>`.  This prelude only provides terminal core expansion
identifiers. It is useful mainly for building other preludes from
scratch -- for instance the [core prelude](core/README.md) uses it.

### Namespaces
Each module has a namespace, which is the prefix for every top level
symbol defined in the module. The namespace normally is the module
identifier itself, but can also be explicitly specified with the
`namespace: <symbol>` directive inside the module, or within a
gerbil.pkg file.

A special case exists for the global namespace; if the `namespace: #f`
directive is used, then the identifier names will map to symbols in
the global namespace, unprefixed. The [runtime](runtime/README.md)
uses this technique to define symbols at the global namespace and
override some definitions from the gambit runtime. Nonetheless, it is
generally advised to avoid using `#f` as the namespace, unless you
know what you are doing.

### Custom Languages

By default, module syntax is s-expressions parsed with the builtin
reader and readtable.  However, modules can customize their surface
syntax by using a _language_ module as a prelude.  A custom language
module is specified using the `#lang <module-id> <directive> ...`
syntax as the first line in the source file.

See the [Custom Languages tutorial](/tutorials/languages.md) for more
information about custom languages with hands on examples.

### Nested Modules
Nested module identifiers are constructed by joining the parent module
identifier joining the lexical module name with `~` as the separator.

Nested modules do not have an explicit prelude; they inherit the
lexical scope of the parent module at the time of
definition.

Nested modules are mainly useful for defining functionality that can
be imported by the parent module in both the runtime and higher
expansion phases; see [Expansion](#expansion) below for more
information about expansion. For instance, the [core prelude](core/README.md)
uses this technique extensively as it builds up the language.

### Executable Modules
Executable modules are top-level (ie not nested) modules that export a
`main` procedure.  These modules can be compiled into binary
executables, with all their dependencies statically linked
in. Alternatively, they can also be dynamically executed using `gerbil
run` as a standalone process or `gerbil ensemble run` as part of an
ensemble.



## Expansion

### The Module Reader
Before expanding the source, it has to be read into s-expressions form
from the source file.  By default, module source is handled by the
builtin reader, reading s-expressions with the gerbil readtable.

The default module reader handles directives (in the form `keyword:
<object>`) before encountering any body expressions. The output is the
is a tuple of (prelude, module-id namespace, body) where the body is a
list of s-expressions. If there are no directives are present (or are
partial) then the parameters of the tuple are inferred, using an
appropriate `gerbil.pkg` if it is present in the directory structure
moving up.

If the source file starts with the `#lang` token, then the specified
language module is used as the prelude. If the language prelude
exports a `read-module-body` procedure for syntax, it is used to read
the body, after the `#lang` line, into a list of s-expressions.

### The gerbil.pkg File
We have already mentioned the gerbil.pkg file as part of the directory
structure.  This file can contain any primitive objects, that satisfy
read-write invariance.  The expander is concerned with the first
object in the file, which must be a plist (possibly an empty list).

The expander only uses the values from the `package:`, `namespace:`,
and `prelude:` keys; other tools in the gerbil toolchain may use
additional keys; for instance the gerbil build tool and package
manager record dependencies in the plist and so on.

### The Module Context

In order to expand the code, an appropriate _expansion context_ needs
to be created for the module. This context is rooted on the builtin
`:<root>` context, which provides the expander builtin terminal
expanders. The lexical scope of the module context is initialized by
weakly injecting the prelude exports into it; by weak injection we
mean that all identifiers exported by the prelude are available within
the module but they can also be overriden by definitions or imports in
the module body.

### Module Body Expansion
#### Concepts
Once the module body has been read into a list of s-expressions (more
accurately, AST objects which wrap s-expressions together with the
source context) and the module context has been created, we are ready
to proceed with module body expansion. The expander wraps the body in
a `%%begin-module` form, which is an intermediate form allowing the
prelude to inject custom module expansion according to the language
semantics. By default, the `%%begin-module` form just wraps the
builtin module body expander, which is marked with the
`%#begin-module` terminal expander. If this intermediate expansion
yields a _sealed syntax_ `%#begin-module` form, the the expansion is
considered the terminal result of the expansion. If the result is not
sealed syntax, then the internal expander for `%#begin-module` is used
to expand the module body.

The term _sealed syntax_ is used to denote a syntax object that is
marked as sealed -- these are normally created by the
`core-quote-syntax` special expander or the `quote-syntax` special
form. Sealed syntax is not further decomposed by the expander and is
considered terminal output; it carries the appropriate syntactic
context and expander marks with it.

A note here is appropriate regarding the expansion algorithm used by
Gerbil. The core of the algorithm is the mark-antimark mechanism
introduced by Waddell and Dybvig in the seminar [Extending the Scope
of Syntactic Abstraction](https://dl.acm.org/doi/abs/10.1145/292540.292559)
paper (it was actually Waddell's thesis). Gerbil's expander somewhat extends
the mechanism in order to allow stable module references and phase
shifting and also utilizes the `quote-syntax` special form which to
the best of my (vyzo) knowledge first appeared in PLT Scheme as the
result of Matthew Flatt's work in hygienic macro expansion.

#### Expansion Process

Module body expansion happens in two passes: first, a top down passes
performs partial expansion to identify expressions, definitions, and
top special forms. When an expression is encountered, it remains
partially expanded for the second pass. When a runtime definition is
encountered, the the identifiers are recorded so that they can be
referred to by macros, but the expression binding to the definition(s)
remain unexpanded until the second phase. When a syntax definition is
encountered, the body is expanded and evaluated and the binding
recorded in the context defines a macro-like object.

In the second pass, the all expressions and runtime definition bodies
are fully expanded in reverse order. Full expansion proceeds by
repeated applying the expander associated with an s-expression until a
sealed syntax object is produced.  Finally, after the body has been
fully expanded, the exports are processed and recorded in the module
context.

#### Primitive Special Forms

Here we briefly document the internal, primitive special forms that
are understood by the expander and the compiler. Please refer to the
[Core Prelude](/reference/gerbil/core/README.md) for the syntactic
abstractions that implement the Gerbil language on top of those
primitives.

::: tip Note
You should avoid using the low level special forms directly; use the
prelude macros instead as they are much more ergonomic and provide
many expressive enhancements.
:::

##### Expressions
Expressions are forms that do not modify the syntactic context and are
denoted by the following special forms:
- `%#quote` which creates a verbatim object
- `%#quote-syntax` which creates a sealed syntax object; note that it should
   only be used with identifiers in user code.
- `%#lambda` which denotes a procedure.
- `%#case-lambda` which denotes a multiple arity dispatch procedure.
- `%#let-values` which creates a local scope.
- `%#letrec-values` which creates a recursive local scope.
- `%#letrec*-values` which creates a recursive local scope with sequential
   evaluation order.
- `%#let-syntax` which creates a local scope with syntax bindings.
- `%#letrec-syntax` which creates a local scope with recursive syntax bindings.
- `%#ref` which references an identifier.
- `%#call` which denotes a procedure call.
- `%#if` which denotes a conditional expression.
- `%#set!` which mutates a binding.
- `%#begin-annotation` which creates an annotated expression, passing information
   to the compiler.
- `%#expression` which forces expansion of its body as an expression.

##### Definitions
Definitions are denoted by the following special forms:
- a `%#define-values` special form, which creates runtime bindings for
  the identifier in the head of the form; not that `_` is treated
  specially as a non referrable identifier.
- a `%#define-syntax` form defines a binding accessible as syntax. The
  object bound can be used as a macro expander if it is a procedure or
  an object with the `apply-macro-expander` method. Otherwise it is an
  arbitray object defined at syntax level that can be resolved within
  an expander using the `syntax-local-value` expander procedure. The
  body of the binding is expanded and _evaluated_ with the _expansion
  phase_ shifted by 1.
- a `%#define-alias` form denotes an identifier as an alias for another identifier.
- an `%#extern` special form, which binds runtime identifiers visible at the
  module's runtime without a visible definition.
- a `%#define-runtime` special form, which binds runtime identifiers that
  are defined within the module but do not otherwise have definitions visible
  to the expander.

##### Top Forms

The special forms at module scope have the following semantics:
- a `%#begin` special form, which splices its body in the module body.
- a `%#declare` special form, which is preserved to pass declarations to the compiler.
- a `%#provide` special form that defines syntax level feature that can be used to
  drive conditional expansion with `cond-expand`.
- an `%#import` special form, which denotes a dependency to another module.
  The import is processed by expanding the module and then picking the appropriate
  import bindings according to the expansion of the import form, which are injected
  into the module context (and thus become immediately visible to subsequent forms).
  Note that it is possible to just import the module without injecting any identifiers,
  for a stateful runtime dependency that is guaranteed to be present at runtime.
- an`%#export` special form, which denotes identifier in the module context that become
  visible to other modules that depend on it with an import. As we mentioned above,
  exports are only processed after the module body has been fully expanded.
- a `%#module` special form that defines a nested module. Nested modules are immediately
  expanded at point, with the same expander used by the enclosing modules. This allows
  nested modules to be imported later in the module body; in particular, this is useful
  to provide functionality that is imported for syntax and used by macros.
- an `%#include` special forms which reads a file and splices it into the module body.
- a `%#cond-expand` special form which conditionally expands and splices the
  matching arm to the body.
- a `%#begin-syntax` special form that shifts the expansion phase by 1 and proceeds
  to expand and _evaluate_ its body such that it provides functionality for macros.
- a `%#begin-foreign` special form, which passes the body directly to the backend
  compiler, unmodified.

### Expansion Phases and Evaluation

We have already mentioned the concept of _expansion phase_; this
pertains to the expansion and evaluation context of code. The body of
a module, outside of code inside a `%#begin-syntax` phase shift or the
body of a syntax definition, lives in the _runtime_ or phase 0. This
code is _not evaluated_ at expansion time, it is simply processed to
generate the code that will be evaluated at runtime -- that is, when
the program runs.

On the same time, there is code that needs to be evaluated at
expansion time, like syntax definitions (macros) and code that lives
in higher phases. Such code is part of the expansion and compilation
process and is the primary vehicle for extending the language with
unrestricted computation and semantics. In general, this code is not
present at runtime and not included in compiled binaries (unless the
user wishes so), but it is still available (in general in compiled
form) for libraries that can use it to extend the syntactic
abstractions of the language.

It is possible to force evaluation of a module at expansion time when
one is imported for syntax (at phase 1 or higher). This allows modules
to be used both by compiled programs at runtime and the
expander/compiler while expanding or compiling libraries and
programs. It is also useful for creating macro support libraries, that
are only used at expansion time.

When a module is expanded, the initial expansion phase is 0 (runtime);
the code is not evaluated, just expanded to its terminal form. When
the phase is shifted, say because of an import for syntax or in the
body of a syntax definition or within a `%#begin-syntax` block, then
it a shifted syntactic context is constucted on top of the active
context. The shifted context only contains the higher phase imports,
and is again rooted at the root context. This is allows for the
creation of bindings that are only present in higher order phases to
provide functionality necessary for meta programming and macros.

Note that it is also possible to have negative phase shifts for
imports, also known as for template imports. Such shifts effectively
inject bindings into the referring context of a macro at a lower
phase, and ensure that those bindings are visible there. This is
useful for creating macros that refer to identifiers that might not be
otherwise visible in the importing module or ensuring that some
modules are linked (and evaluated at runtime) by code that uses
certain abstractions.


## Compilation

Gerbil fundamentally compiles to low level and often highly optimized
Gambit code. Note that the low level Gambit language is itself a
nonstandard dialect of Scheme; think of it as a very low level Scheme
on top of which the standard Scheme facade is implemented.

We can distinguish between Ahead of Time compilation and
Interpretation Time compilation.  With Ahead of Time compilation we
produce binary object files, either executables or dynamically
loadable libraries. Interpreter time compilation happens in the
compiler or when the interpreter is used, e.g. in the repl or a
script, and transforms fully expanded core Gerbil code to code that
can be evaluated by Gambit with `eval`.

### Interpreter Time Compilation

This is a very direct source to source transformation, that is handled
by the Gerbil runtime; there no optimization performed. The
transformation is fast and simple, and lets us run code in a repl or
in a dynamic interpreter framework (e.g. using servlets in the Gerbil
HTTP daemon).

Note that Interpreter time compilation does not imply binary Just In
Time (JIT) compilation. Interpreter time compilation refers to the
process of transforming fully expanded Gerbil code to fully expanded
low level Gambit code. The Gambit interpreter does not currently
perform JIT compilation (but this may change in the future).

### Ahead Of Time Compilation
Gerbil can be compiled directly to highly efficient binary executables
or dynamically loadable libraries. This can be accompiled by using the
Gerbil compiler by invoking `gxc` or the `gerbil build` tool. The
latter uses the standard `:std/make` library for programatically
invoking the compiler, which any user tool or program can use as well.

#### Dynamic Libraries
Library modules are compiled to a number of separate binary objects and
meta source files. The binary objects are object files that can be
dynamically loaded and contain machine code, as produced by the Gambit
compiler `gsc`.

For every library module, the output consists of 2 binary object files
and one or two source metadata files. So for a library module with
identifier `module`:
- `module.o1` is the loader object that handles loading
   runtime dependent modules and the module code itself from `module~0.o1`.
- `module~0.o1` is the runtime code of the module.
- `module.ssi` is the module interface descriptor, which is
  interpreted in order to load a module in a dynamic interpreter
  environment.
- `module.ssxi.ss` is a compile time metadata module which is
  interpreted by the compiler in order to load in memory information
  required for optimization and time inference. Note that this file is
  produced and loaded by the compiler when optimizations are enabled.
  Also note that this module can be loaded by source analysis tools
  and IDE servers as it contains a lot of critically useful metadata
  for such tools.

In addition to those outputs, if the module defines macros or has
expansion time evaluation parts (i.e. `%#begin-syntax` blocks), then
at least one section file (starting with with `module~1.o1`) is
produced in order to enable the expander to evaluate the higher phase
code.

Furthermore, for each nested module the equivalent object files are
also produced. The `.ssi` and `.ssxi.ss` files are not produced for
nested modules, as all the relevant metadata is included in the main
module `.ss` and `.ssxi.ss` files.

Finally, a copy for the raw Gambit source for the runtime part of the
module is retained as an `.scm` file. These files are used to lazily
produce static linkage object files (`.o`) for linking into
executables with separate compilation. They are also used for
performing full program optiization for producing minimal binaries
that have been tree-shaken and flat compiled including their
dependencies, which allows `gsc` to perform additional optimizations.

#### Binary Executables

Binary executables are built by linking together the runtime part of
the main module together with the runtime parts of all dependent
modules in transitive order, together with `libgambit.a`. By default,
unless the user explicitly imports the expander or the compiler
packages, the expander and the compiler are not linked.

The default linkage module is separate compilation, with all module
runtime parts compiled into statically linked object files. The modules
are also recorded so that they are not accidentally
dynamically loaded in executables that use dynamic loading.

It is also possible to use the compiler in _full program optimization_
mode, in which case all the raw source files of the runtimes parts of
the relevant modules are included together, while enabling the tree
shaker with an `optimize-dead-definitions` declaration. This produces
smaller executables (althought the cost of `libgambit.a` cannot be
avoided) that can also result in somewhat faster code. The downsides
is that compilation time can be quite long and the program quite hard to
debug.

## Execution

Execution is really evaluation of the (compiled) runtime code for a
program or module. Note that Gerbil uses stateful single module
instantiation and evaluations. So module code is guaranteed to be
executed exactly once in a program, allowing deterministic side
effects.

### Binary Executables

The binary is linked in such a way such that:
- libgambit initialization code is executed first
- module code initialization code is executed in transitive dependency order
- finally the `main` procedure is executed, passing the command line arguments.

### Scripts

Scripts use the Gerbil interpreter (`gxi`) which expands and
interprets the code in a top context so that modules can be (compiled)
imported and used as normal. After the script is expanded, it is
evaluated with interperter time compilation. Finally, if a `main`
procedure is defined, it is invoked with the command line arguments.

### Interactive REPL

When used interactively, the Gerbil interpreter defines a top context,
reads, expands and evaluates expressions and top-level special forms.

### Compile Time Execution

Finally, we should not ignore the fact that code can be executed at
compile time in the presence of macros and meta phase
incantations. Note that the runtime part of a module being compiled is
never evaluated implicitly -- it can only be evaluated as a result a
for syntax (or higher phase) import.

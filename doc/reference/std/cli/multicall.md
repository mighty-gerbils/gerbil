# Multicall Binaries

The `:std/cli/multicall` module provides facilities to define multicall binaries
the behavior of which differs depending on the name of the binary,
just like the gerbil binary itself, or famously like `busybox`.

::: tip usage
```scheme
(import :std/cli/multicall)
```
:::

An earlier version of this library used to be available as `:clan/multicall`
in gerbil-utils.

## Interface

### current-program
```scheme
(def current-program (make-parameter []))
```
A parameter that contains the name of the current program or subprogram,
as a list in reverse of the successive subcommands used to invoke it.

### current-program-string
```scheme
(def current-program (make-parameter []))
```
Return as a string of space-separated commands and subcommands in order
the name of the current program or subprogram.

### entry-points
```scheme
entry-points => table
```
A table, indexed by symbols, of `entry-point` structs,
describing the available shell entry points.

### entry-point
```scheme
(defstruct entry-point (name function help getopt) transparent: #t)
```
A struct type describing an available entry-point:
  - `name` is a symbol, whose `symbol->string` is used as command or subcommand
     to select the entry-point from the CLI.
  - `function` is the Scheme function to call if the entry-point is selected.
  - `help` is a short help string describing the purpose of the entry-point,
     to be displayed to the user when help is requested.
  - `getopt` is a `getopt-spec`
    based on which the rest of the command-line will be parsed, and
    based on which help about the available options is displayed.

### entry-points-getopt-spec
```scheme
(entry-points-getopt-spec [table])
```
Given a `table` of entry-points which default to the variable `entry-points`,
return a getopt-spec (suitable to be passed to `(apply getopt ...)`) of
`command` specifiers, one for each registered entry-point, in asciibetical order.

### register-entry-point
```scheme
(register-entry-point function
  [id: #f] [name: #f] [help: #f] [getopt: #f])
```
Register the function as entry-point,
with given `name` (argument passed to `make-symbol`),
or if not specified, a symbol made of only the
[`easy-shell-characters?`](shell.md#easy-shell-characters) of `id`.
The entry-point will have the given `help` and `getopt` fields.

### define-entry-point
```scheme
(define-entry-point (id . formals) (options ...) body ...)
```
Syntax that expands to both
  1. defining in the current scope function with the given name `id`
     and specified Scheme function formals, and the given `body`.
  2. register an entry-point for that function,
     with given `id` and `options`.

### multicall-default
```scheme
multicall-default
```
A mutable variable that contains the default function to call
if the command doesn’t match any of the specified commands.

### set-default-entry-point!
```scheme
(set-default-entry-point! symbol)
```
Set the default entry-point in `multicall-default` as given `symbol`.

### help
```scheme
(help [command])
```
Global entry-point to print a help message (about the command, if specified)
about the current overall command and subcommands.

### meta
```scheme
(meta)
```
Global entry-point to print the available completions for the command,
for use with CLI syntax autodetection.

### version
```scheme
(version [all?: #f] [layer])
```
Global entry-point to print the current version.
If `all?` (flag `-a`) is passed, print all components from build manifest.
If `layer` (flag `-l`) is passed, print the thus-named component.

### call-entry-point
```scheme
(call-entry-point . args)
```
Call an entry point as specified by `args`,
or else the `multicall-default` entry point.

### define-multicall-main
```scheme
define-multicall-main
```
Define `call-entry-point` as a suitable `main` function
in the current scope.

# Command Line Argument Parsing

The `:std/cli/getopt` library provides facilities for command line argument parsing.

::: tip usage
```scheme
(import :std/cli/getopt)
```
:::

This library used to be available as `:std/getopt` up to Gerbil v0.18,
and is still available under that name for now, but its use is deprecated.

## Interface

### getopt
```scheme
(getopt <specifier> ...)
=> <parser>

specifier:
 (command id [help: text] <cmd-specifier>)
 <cmd-specifier> ...

cmd-specifier:
 (flag id short [long])
 (option id short [long] [help: text] [value: proc] [default: value])
 (argument id [help: text] [value: proc])
 (optional-argument id [help: text] [value: proc] [default: value])
 (rest-arguments id [help: text] [value: proc])
```

`getopt` creates a command line parser, which can be used to parse arguments
with `getopt-parse`.

### getopt-parse
```scheme
(getopt-parse <parser> args)
=> (values cmd-id options)
   options
```

`getopt-parse` accepts a parser and a list of string arguments and parses
according to the parser specification. If it is parsing a specification with
subcommands, it returns two values, the command id and a hash table with the
parsed options. Otherwise it just returns the hash table with the parsed options.
An exception is raised if parsing the arguments fails.

### getopt-error?
```scheme
(getopt-error? obj)
=> boolean
```

If parsing fails, then a `getopt-error` is raised, which can be guarded with
`getopt-error?`.

### getopt-display-help
```scheme
(getopt-display-help <tip> program-name [port = (current-output-port)])

tip:
 <getopt-error>
 <parser>
 <command>
```

The procedure `getopt-display-help` can be used to display
a help message for a getopt error according to the argument specification.

### getopt-display-help-topic
```scheme
(getopt-display-help-topic <parser> topic program-name [port = (current-output-port)])
```

The procedure `getopt-display-help-topic` can be used to display a help page
for a subcommand.

### getopt?
```scheme
(getopt? obj)
=> boolean
```

Returns true if the object is a getopt parser

### getopt-object?
```scheme
(getopt-object? obj)
=> boolean
```

Returns true if the object is a getopt command or command specifier.

### call-with-getopt
```scheme
(call-with-getopt proc args
                  program: program
                  help: (help #f)
                  exit-on-error: (exit-on-error? #t)
                  . gopts)
```

This shim around getopt parsing eliminates all the repetitive
boilerplate around argument parsing with getopt.

It creates a getopt parser that parses with options `gopts`, automatically
including a help option or command accordingly.

It then uses the parser to pair `args`, handling the exceptions and
displayin help accordingly; if `exit-on-error` is true (the default),
then parsing errors will exit the program.

If the parse succeeds it invokes `proc` with the output of the parse.

## Example

For an example, here the a command line parser for the `gxpkg` program:
```scheme
(def (main . args)
  (def install-cmd
    (command 'install help: "install one or more packages"
             (rest-arguments 'pkg help: "package to install")))
  (def uninstall-cmd
    (command 'uninstall help: "uninstall one or more packages"
             (flag 'force "-f" help: "force uninstall even if there are orphaned dependencies")
             (rest-arguments 'pkg help: "package to uninstall")))
  (def update-cmd
    (command 'update help: "update one or more packages"
             (rest-arguments 'pkg help: "package to update; all for all packages")))
  (def link-cmd
    (command 'link help: "link a local development package"
             (argument 'pkg help: "package to link")
             (argument 'src help: "path to package source directory")))
  (def unlink-cmd
    (command 'unlink help: "unlink one or more local development packages"
             (flag 'force "-f" help: "force unlink even if there are orphaned dependencies")
             (rest-arguments 'pkg help: "package to unlink")))
  (def build-cmd
    (command 'build help: "rebuild one or more packages and their dependents"
             (rest-arguments 'pkg help: "package to build; all for all packages")))
  (def clean-cmd
    (command 'clean help: "clean compilation artefacts from one or more packages"
             (rest-arguments 'pkg help: "package to clean")))
  (def list-cmd
    (command 'list help: "list installed packages"))
  (def retag-cmd
    (command 'retag help: "retag installed packages"))
  (def search-cmd
    (command 'search help: "search the package directory"
             (rest-arguments 'keywords help: "keywords to search for")))

  (call-with-getopt gxpkg-main args
    program: "gxpkg"
    help: "The Gerbil Package Manager"
    install-cmd
    uninstall-cmd
    update-cmd
    link-cmd
    unlink-cmd
    build-cmd
    clean-cmd
    list-cmd
    retag-cmd
    search-cmd))

(def (gxpkg-main cmd opt)
  (let-hash opt
    (case cmd
      ((install)
       (install-pkgs .pkg))
      ((uninstall)
       (uninstall-pkgs .pkg .?force))
      ((update)
       (update-pkgs .pkg))
      ((link)
       (link-pkg .pkg .src))
      ((unlink)
       (unlink-pkgs .pkg .?force))
      ((build)
       (build-pkgs .pkg))
      ((clean)
       (clean-pkgs .pkg))
      ((list)
       (list-pkgs))
      ((retag)
       (retag-pkgs))
      ((search)
       (search-pkgs .keywords)))))
```

### getopt-parse->function-arguments
```scheme
(getopt-parse->function-arguments getopt h) => list-of-arguments
```

This function takes a `getopt` specification and table `h` of arguments
resulting from calling `getopt-parse`, and returns a list of argument
with which to call a Scheme function that has an analogous call convention:
  - supplied positional arguments are passed in order
  - they are followed by all the rest arguments
  - they are followed by the remaining specified keyword arguments.

Omitted option arguments without default will be omitted.
Omitted option arguments with a default will be included with the default value;
the programmer must ensure that this default value is the same as
the default value from the Scheme function being called, or there will be
a semantic discrepancy between the CLI interface and the underlying Scheme function.

NB: `h` will be modified in place, removing positional and rest arguments.
Make sure to use `hash-copy` if you want to preserve the original data.

TODO: add examples

### call-with-getopt-parse
```scheme
(call-with-getopt-parse gopt hash fun) => results-of-fun
```

Given a getopt specification `gopt`, the `hash` resulting from calling
`getopt-parse` on some provided command-line arguments, and a function `fun`
that has a calling convention analogous to that specified by `gopt`,
call the function with arguments that correspond to those provided by `hash`,
as per `getopt-parse->function-arguments`.

TODO: add examples, discuss abort-on-error behavior,
lack of automatic help, etc.

### call-with-processed-command-line
```scheme
(call-with-processed-command-line processor command-line function) => results-of-function
```

Generic function of three arguments:
  - a `processor` that describes a `getopt` specification,
  - a `command-line`, list of strings as provided by the invoking process, and
  - a `function` to be called with the results of processing the command-line.

The function is generic in the first argument.
The default method recognizes a `getopt` specification as first argument,
and appropriately calls `getopt-parse` and `call-with-getopt-parse`
to process the command-line. It also recognizes a list as being arguments
to which to apply `getopt` to obtain a specification,
with which to proceed as above.

You may define more methods, to work with your own variant of `getopt`,
or with innovative ways to incrementally compose `getopt` specifications
e.g. with prototype objects like `gerbil-poo`.

TODO: add examples, discuss abort-on-error behavior,
lack of automatic help, etc.

### ->getopt-spec
```scheme
(->getopt-spec arg) => list-of-getopt-arguments
```
Given an argument `arg`, return a list *lst* of getopt arguments
to which one can `(apply getopt lst)` to specify a getopt object to parse with.

Default behavior:
  - If `arg` is a list, `flatten` it.
  - If `arg` is a natural integer *n*,
    specify a list of *n* positional `argument`s.
  - If `arg` is `#f`, specify a single `rest-argument` named `rest`,
    i.e. let it be a passthrough to be processed by the function being called.
  - Otherwise, raise an error.

This function is useful for calls not just to `getopt` directly,
but also to `command` that itself calls `getopt`, etc.

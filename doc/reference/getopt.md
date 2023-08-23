# Command Line Argument Parsing

The `:std/getopt` library provides facilities for command line argument parsing.

::: tip usage
(import :std/getopt)
:::

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

It then uses the parser to pare `args`, handling the exceptions and
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

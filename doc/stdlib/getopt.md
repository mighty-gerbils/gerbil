# Command Line Argument Parsing

The `:std/getopt` library provides facilities for command line argument parsing.

::: tip usage
(import :std/getopt)
:::

## Argument Parsing

::: tip usage
```
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

```
:::

`getopt` creates a command line parser, which can be used to parse arguments
with `getopt-parse`.


::: tip usage
```
(getopt-parse <parser> args)
=> (values cmd-id options)
   options
```
:::
`getopt-parse` accepts a parser and a list of string arguments and parses
according to the parser specification. If it is parsing a specification with
subcommands, it returns two values, the command id and a hash table with the
parsed options. Otherwise it just returns the hash table with the parsed options.


::: tip usage
```
(getopt-error? obj)
=> boolean

(getopt-display-help <tip> program-name [port = (current-error-port)])


tip:
 <getopt-error>
 <parser>
 <command>

(getopt-display-help-topic <parser> topic program-name [port = (current-error-port)])
```
:::

If parsing fails, then a `getopt-error` is raised, which can be guarded with
`getopt-error?`. The procedure `getopt-display-help` can be used to display
a help message for a getopt error according to the argument specification.
The procedure `getopt-display-help-topic` can be used to display a help page
for a subcommand.

## Example

For an example, here is a command line parser for the `gxpkg` program:
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
  (def help-cmd
    (command 'help help: "display help; help <command> for command help"
             (optional-argument 'command value: string->symbol)))
  (def gopt
    (getopt install-cmd
            uninstall-cmd
            update-cmd
            link-cmd
            unlink-cmd
            build-cmd
            clean-cmd
            list-cmd
            retag-cmd
            help-cmd))

  (try
   (let ((values cmd opt) (getopt-parse gopt args))
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
         ((help)
          (getopt-display-help-topic gopt .?command "gxkpg")))))
   (catch (getopt-error? exn)
     (getopt-display-help exn "gxpkg" (current-error-port))
     (exit 1))
   (catch (e)
     (display-exception e (current-error-port))
     (exit 2))))
```

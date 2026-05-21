# The Gerbil Universal Binary and Tools

If you look at the Gerbil installation bin directory, you will see someghing like the following:
```shell
$ ll -h /usr/local/gerbil/bin/
total 11M
-rwxrwxr-x 1 vyzo vyzo  19K Sep 24 10:20 gambuild-C
-rwxrwxr-x 1 vyzo vyzo  11M Sep 24 10:23 gerbil
-rwxrwxr-x 1 vyzo vyzo 151K Sep 24 10:20 gsc
lrwxrwxrwx 1 vyzo vyzo    6 Sep 24 10:23 gxc -> gerbil
lrwxrwxrwx 1 vyzo vyzo    6 Sep 24 14:43 gxensemble -> gerbil
lrwxrwxrwx 1 vyzo vyzo    6 Sep 24 10:23 gxi -> gerbil
lrwxrwxrwx 1 vyzo vyzo    6 Sep 24 14:43 gxpkg -> gerbil
lrwxrwxrwx 1 vyzo vyzo    6 Sep 24 14:43 gxprof -> gerbil
lrwxrwxrwx 1 vyzo vyzo    6 Sep 24 14:43 gxtags -> gerbil
lrwxrwxrwx 1 vyzo vyzo    6 Sep 24 14:43 gxtest -> gerbil
```

As you notice all the programs distributed with Gerbil link to a
single universal binary, `gerbil`.  We call this program
affectionately **Bach** after the great composer of timeless music.

The `gerbil` binary includes all modules from the core system compiled
in and has specialized main functions for the interpreter and
compiler.

It also fronts for all tooling, which is implemented with dynamic
loading of dynamically compiled executable modules depending on the
linked executable name.  Some of the tooling functionality is actually
explicitly lifted at top level: things like the build tool and
dependency management commands of the `gxpkg` tool.

Here we give an overview of all commands and tools supported by Bach.

## Using Bach

The Gerbil universal binary has the following usage:
```shell
Usage: gerbil [option ...] arguments ...

Options:
  -h|--help                        display this help message exit
  -v|--version                     display the system version and exit

Arguments:
  <cmd> cmd-arg ...                execute a builtin tool command
  arg ...                          drop to the gerbil interpreter

Commands:
  new                              create a new project template (gxpkg new)
  build                            build a gerbil package (gxpkg build)
  deps                             manage dependencies for a package (gxpkg deps)
  clean                            clean build artifactacts for a package (gxpkg clean)
  env                              eval a shell command in the local package environment (gxpkg env)
  pkg                              invoke the gerbil package manager (gxpkg)
  test                             run tests (gxtest)
  tags                             create emacs tags (gxtags)
  prof                             profile a dynamic executable module (gxprof)
  ensemble                         invoke the gerbil actor ensemble manager (gxensemble)
  httpd                            invoke the gerbil httpd (gxhttpd)
  interactive                      invoke the gerbil interpreter (gxi)
  compile                          invoke the gerbil compiler (gxc)
  help <cmd>                       display help for a tool command

Try gerbil help <cmd> for help on tool command usage
```

### `gxi`

The Gerbil interpreter is `gxi`, but can also be invoked with `gerbil interactve`.
It has the following usage:
```shell
$ gxi -h
Usage: gxi [options ...] arguments ...

Options:
  -h|--help|help                   display this help message exit
  -v||--version|version            display the system version and exit
  -l|--lang module                 set the current interpretation language; must precede any evaluation
  -e|--eval <expr>                 evaluate an expression

Arguments:
  -                                enter the repl
  :module                          import library module; if it exports a main function, apply it with the remaining arguments
  file                             load file; if it defines a main function, apply it with the remaining arguments

When no arguments or options other than --lang are supplied, enters the interactive repl
```

### `gxc`

The Gerbil compiler is `gxc`, but can also be invoked with `gerbil compile`.
It has the following usage:
```shell
$ gxc -h
gxc [options...] <file> ...
Options:
 -h,--help                   display this help message and exit
 -d <dir>                    set compiler output directory; defaults to $GERBIL_PATH/lib
 -exe                        compile an executable
 -o <file>                   set executable output file
 -O                          optimize gerbil source
 -full-program-optimization  perform full program optimization
 -static                     link the executable's external library dependencies statically
 -s                          keep intermediate .scm files
 -S                          don't invoke gsc
 -v                          be verbose during compilation
 -g                          compile with debug symbols; c code is compiled with -g
 -no-ssxi                    don't generate .ssxi modules for cross-module optimization
 -include-gambit-sharp       include _gambit# with necessary cond expand features
 -prelude <sexpr>            add [-prelude <sexpr>] to gsc options
 -cc-options <string>        add [-cc-options <string>] to gsc options
 -ld-options <string>        add [-ld-options <string>] to gsc options
 -gsc-flag   <opt>           add [<opt>] to gsc options
 -gsc-option <opt> <string>  add [<opt> <string>] to gsc options
```

### `gerbil new`
```shell
$ gerbil help new
Usage: gxpkg new [command-option ...]
       create a new package template in the current directory

Command Options:
 -p --package <package>           the package prefix for your project; defaults to the current username [default: vyzo]
 -n --name <name>                 the package name; defaults to the current directory name [default: gerbil]
 -l --link <link>                 link this package with a public package name; for example: github.com/your-user/your-package [default: #f]
```

### `gerbil build`
```shell
$ gerbil help build
Usage: gxpkg build [command-option ...] <pkg> ...
       rebuild one or more packages and their dependents

Command Options:
 -l --local                       do the action in the local package context, unless GERBIL_PATH is set
 -R --release                     build released (static) executables
 -O --optimized                   build full program optimized executables

Arguments:
 pkg                              package to build; all for all packages, omit to build in current directory
```

### `gerbil clean`
```shell
$ gerbil help clean
Usage: gxpkg clean [command-option ...] <pkg> ...
       clean compilation artefacts from one or more packages

Command Options:
 -l --local                       do the action in the local package context, unless GERBIL_PATH is set

Arguments:
 pkg                              package to clean; all for all packages, omit to clean in current directory
```

### `gerbil env`
```shell
$ gerbil help env
Usage: gxpkg env <command> <command-args> ...
       execute a command within the local package context

Arguments:
 command                          the command to execute
 command-args                     the command arguments
```

### `gerbil pkg`
```shell
$ gerbil help pkg
gxpkg: The Gerbil Package Manager

Usage: gxpkg  <command> command-arg ...

Commands:
 new                              create a new package template in the current directory
 build                            rebuild one or more packages and their dependents
 clean                            clean compilation artefacts from one or more packages
 deps                             manage dependencies for the current project
 link                             link a local development package
 unlink                           unlink one or more local development packages
 install                          install one or more packages
 uninstall                        uninstall one or more packages
 update                           update one or more packages
 list                             list installed packages
 retag                            retag installed packages
 search                           search the package directory
 dir                              manage the directory list
 env                              execute a command within the local package context
 help                             display help; help <command> for command help
```

### `gerbil test`
```shell
$ gerbil help test
gxtest: run Gerbil tests in the command line

Usage: gxtest [option ...] <args> ...

Options:
 -g --global-env                  use the user global env even in local package context
 -v                               run in verbose mode where all test execution progress is displayed in stdout.
 -q --quiet                       run in in quiet mode where only errors are displayed
 -r --run <run>                   only run test suites whose name matches a given regex [default: #f]
 -D  <features>                   define one or more conditional expansion feature (comma separated) for enabling tests that require external services [default: #f]
 -h --help                        display help

Arguments:
 args                             test files or directories to execute tests in; appending /... to a directory will recursively execute or tests in it. If no arguments are passed, all tests in the current directory are executed.
```

### `gerbil tags`
```shell
$ gerbil help tags
gxtags: generate emacs/vim tags for Gerbil code

Usage: gxtags [option ...] <input> ...

Options:
 -g --global-env                  use the user global env even in local package context
 -a                               append to existing tag file
 -o  <output>                     explicit name of file for tag table [default: TAGS]
 -t --tag-format <format>         TAGS index format; emacs or vim; uses the GERBIL_TAGS_FORMAT environment variable, with default value of emacs if it is not set [default: emacs]
 -h --help                        display help

Arguments:
 input                            source file or directory
```

### `gerbil prof`
```shell
$ gerbil help prof
gxprof: The Gerbil profiler

Usage: gxprof [option ...] [<module>] <module-args> ...

Options:
 -g --global-env                  use the user global env even in local package context
 -o --output <output>             gxprof output file [default: gxprof.out]
 --heartbeat  <heartbeat>         heartbeat interval for sampling, in seconds [default: .001]
 -k --ignore-kernel-frames        ignore kernel functions in the analysis
 -h --help                        display help

Arguments:
 module                           dynamic executable module to run; analyze an existing output file if omitted [default: #f]
 module-args                      arguments to pass to the executable module's main
```

### `gerbil ensemble`
```shell
$ gerbil help ensemble
gxensemble: the Gerbil Actor Ensemble Manager

Usage: gxensemble [option ...] <command> command-arg ...

Options:
 -g --global-env                  use the user global env even in local package context
 -G --gerbil-path <gerbil-path>   specifies the GERBIL_PATH for ensemble operations [default: #f]

Commands:
 supervisor                       runs the ensemble supervisor
 registry                         runs the ensemble registry
 run                              run a server in the ensemble
 env                              ensemble environment operations
 control                          ensemble supervisory control operations
 load                             loads code in a running server
 eval                             evals code in a running server
 repl                             provides a repl for a running server
 ping                             pings a server or actor in the server
 lookup                           looks up a server by id or role
 shutdown                         shuts down an actor, server, or the entire ensemble
 admin                            ensemble administrative operations
 list                             list server state
 ca                               ensemble CA operations
 package                          package ensemble state to ship an actor server environment
 config                           configure the ensemble
 help                             display help; help <command> for command help
```

### `gerbil httpd`
```shell
$ gerbil help httpd
gxhttpd: The Gerbil HTTP Daemon

Usage: gxhttpd [option ...] <command> command-arg ...

Options:
 -g --global-env                  use the user global env even in local package context
 -G --gerbil-path <gerbil-path>   specifies the GERBIL_PATH for ensemble operations [default: #f]

Commands:
 server                           runs a single httpd server
 ensemble                         runs a supervised httpd server ensemble
 config                           edit httpd server or ensemble configuration
 help                             display help; help <command> for command help
```

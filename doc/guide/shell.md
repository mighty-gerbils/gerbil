# The Interactive Gerbil Shell

The interactive shell that you get when you run `gxi` is a larger environment than the Gerbil core language. It imports the `:gerbil/gambit` prelude and also provides some functionality that is mainly useful for interactive development.

## Interactive Development Macros

These macros are only available in the interactive shell.

### reload

```
(reload module-path ...)
```

Reloads the module given by the module path and then imports the freshly reloaded module. The module path is the same as you would use in a import form; a string will reload a source loaded module while a library module path will reload a compiled module as applicable in the load path. Top defined modules are ignored.

### enter!

```
(enter! module-path)
```

Starts a repl using the syntactic context of a given module, which is first evaluated.

### @expand and @expand1

```
(@expand form)
(@expand1 form)
```

These two macros perform macro expansion, pretty print the result, and return the expanded syntax for inspection. The difference lies in the function used to perform the expansion. `@expand` uses core-expand* which expands until the outer form is a core macro. `@expand1` uses core-expand1 which performs a single step expansion.

### macro-expand and macro-expand1

```
(macro-expand quoted-form)
(macro-expand1 quoted-form)
```

Procedural forms of `@expand` and `@expand1`.

## Customizing the Interactive Shell

Whenever gxi is run interactively, after loading and initializing the runtime and expander, it loads the library interactive initialization file `$GERBIL_INSTALL_PREFIX/lib/init.ss` (source: init.ss) which greets the user, imports the `:gerbil/gambit` prelude module and provides the interactive development forms documented above.

After loading the library initialization file, gxi checks for a user specific interactive initialization file. If the file `~/.gerbil/init.ss` exists, then it is loaded in the top (interaction) environment. This allows you to customize your interactive Gerbil shell.

Here is a small example `~/.gerbil/init.ss` that provides useful functionality:

```
;;; -*- Gerbil -*-

;; add your work environment's source tree to the load path
(add-load-path "/path/to/your/gerbil/project/src")

;; only useful if you intend to do core Gerbil development
;; (add-load-path (path-expand "src" (getenv "GERBIL_SRCDIR")))

;; import your personal gerbil libraries
(import :my/stuff :more/of/my/stuff)
```

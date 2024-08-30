# Eval

## Overview

The `eval` function in Gerbil Scheme is a powerful tool for dynamic code execution. However, its behavior and usage differ between runtime and compile-time, and it has some key differences compared to Gambit Scheme. This document outlines how to use `eval` effectively in various scenarios.

## Runtime Behavior

### Interactive Environment

In the Gerbil interpreter (`gxi`), `eval` works similarly to other Scheme implementations:

```scheme
> (def greeting "hello world")
> (eval '(displayln greeting))
hello world
```

### Compiled Binaries

When using `eval` in compiled binaries, additional steps are necessary.
To demonstrate this let's slightly modify code from previous example, save it into the file:

> `eval-example.ss`

```scheme
(export main)
(def greeting "hello world")
(def (main . args)
  (eval '(displayln greeting)))
```

Then compile into executable and run:

```console
$ gxc -exe eval-example.ss
...
$ ./eval-example
*** ERROR -- Unbound variable: greeting
--- continuation backtrace:
[0] ##primordial-exception-handler-hook
```

An error is reported because eval operates on top-level namespace while `greeting` is defined a module namespace which is added implicitly.

This may be fixed by adding a namespace to `greeting`:

```scheme
(export main)
(def greeting "hello world")
(def (main . args)
  (eval '(displayln eval-example#greeting))
```

```console
$ gxc -exe eval-example.ss
...
$ ./eval-example
hello world
```

Adding namespace to each symbol referenced under `eval` may be a bit tedious, there is a better way to do this with `(extern ...)` form.
Eval expression may be modified to look like this:

```scheme
(begin
  (extern namespace: eval-example
    greeting)
  (displayln greeting))
```

Using `extern` will make `eval-example#greeting` available as `greeting` at runtime. But there is one more thing to do before it will work without errors, because `extern` relies on `:gerbil/expander` which should be loaded. In interactive mode this happens implicitly, while inside compiled binaries expander need to be loaded manually. Here is the final version:

```scheme
(import :gerbil/expander)
(export main)
(def greeting "hello world")
(def (main . args)
  (gerbil-load-expander!)
  (eval '(begin
           (extern namespace: eval-example
             greeting)
           (displayln greeting))))
```

Which works as expected:

```console
$ gxc -exe eval-example.ss
...
$ ./eval-example
hello world
```

## Use case: loading a configuration file at run-time.

Suppose you'd like to use scheme as the configuration language for your program. For the sake of simplicity, let's assume that the config file is `$HOME/.config/eval-test/config.scm`.

Let's create a project like this:

- guide
  - gerbil.pkg
  - build.ss
  - eval
    - main.ss
    - lib.ss

In `eval/main.ss`, there is a call to `(eval (include ...) ...)`.
```scheme
(import :gerbil/expander
        ./lib)

(export main)

(def (main . args)
  (gerbil-load-expander!)
  (eval '(include "~/.config/eval-test/config.scm")))
```

If the configuration file only needs symbols from your main program, then you already know what to do. But if it also needs functions from a library use provide, then you'll need to find the correct namespace. Let's define the library, `eval/lib.ss`:

```scheme
(export #t)

(def (greeting)
  (displayln "Hello from module!"))
```

The exact namespace name can be determined in multiple ways, I'll show one.

Inside `gerbil.pkg`, there is this:

```scheme
(package: guide)
```

This means that the root of the namespace is 'guide'. The library file was `eval/lib.ss`, so the namespace name is `guide/eval/lib`.

This is `build.ss` so that you can replicate the project easier.

```scheme
#!/usr/bin/env gxi
;;; -*- Gerbil -*-
(import :std/build-script)

(defbuild-script
  '("eval/lib"
    (exe: "eval/main" bin: "eval")))
```

The config file (`~/.config/eval-test/config.scm`) will look like this:

```scheme
(extern namespace: guide/eval/lib
  greeting)

(greeting)
```

## Tips and tricks

Sometimes, you can use quasiquotation in eval to "smuggle" variables into the code, to avoid having to define externs:

```scheme
> (let ((a 1))
>   (eval `(+ ,a 2)))
3
```

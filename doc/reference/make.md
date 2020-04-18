# Build Tool

The `:std/make` library provides support for building source Gerbil projects.
See also the [guide](/guide/build.md).

::: tip usage
(import :std/make)
:::

## Overview

By convention, Gerbil projects are built by invoking a `./build.ss` script,
typically starting with `#!/usr/bin/env gxi` that defines a function `main`
that will build the project when called with an empty list.
The libraries documented below are meant to be used in such a script,
to do most of the work in building your project.
Note that if you're using low-level Gambit functions or FFI, you may want to use
`#!/usr/bin/env gxi-build-script` at which point you also need to
explicitly call `(main)` in your script.

The `:std/make` library exports a function `make` that will build your project,
compiling files in automatically-detected dependency order.
It takes a *build-spec* argument, followed by keyword arguments.
The *build-spec* is a list of individual target specifications, described below.
The keyword arguments specify some configuration settings, also described below.

A trivial wrapper is available for simple projects, in the `:std/build-script` library,
exporting a macro `defbuild-script`.
The macro takes a *build-spec* first followed by keyword settings,
and defines a function `main` in the context of the current file.
The function `main`, when invoked with the argument `"compile"` or with no arguments,
will compile the project in the current directory:
The Gerbil `load-path` will be augmented with the current directory while compiling
(by passing a `srcdir:` parameter to `make`), while
the prefix from a `gerbil.pkg` file in the current directory (if defined) will be used
(by passing a `prefix:` parameter to `make`).

### Target specifications

The *build-spec* passed to `make` or to `defbuild-script` is
a list of individual target specifications.
Each target specification can be:

  - A string, which specifies a Scheme module.
    The `".ss"` extension is automatically added if no extension is specified.
    Dependencies will be automatically detected.

  - A list of the form `(gxc: file dep: (extra-file ...) opts ...)` or just `(gxc: file opts ...)`,
    where (a) the file is a string as above, (b) the optional `dep:` option allows to specify
    extra dependencies that may not be automatically detected, such as files included by
    an `(include ...)` form, and (c) the remainder of the options are passed to `gsc`
    while compiling the file.

  - A list of the form `(gsc: file dep: (extra-file ...) opts ...)` or just `(gsc: file opts ...)`,
    with arguments as for `gxc`, except the file is a raw Gambit Scheme file
    and won't be compiled by Gerbil Scheme file.
    This is useful for FFI and other low-level interactions with the Gambit runtime.
    To integrate the Gambit Scheme definitions from that file into Gerbil Scheme,
    there must be a subsequent `ssi:` target, before any other Gerbil-invoking target is specified
    (any target but one starting with the `gsc:` or `static-include:` keyword).

  - A list of the form `(static-include: file)` where the file is a C file
    (or C++, if Gambit was compiled in C++) that will be compiled into the application.
    Once again, a subsequent `ssi:` target is required, with only `gsc:` or `static-include:`
    targets in between.

  - A list of the form `(ssi: file submodules ...)` where the file is a Scheme interface file.
    The `".ssi"` extension is automatically added to the file if no extension is specified.
    The specified *submodules* may be `gsc:` or `static-include:` target specification as above.
    Targets specified either immediately before the `ssi:` target or within as submodules
    are appended into a single list before processing.
    Dependencies specified in the `.ssi` file will be compiled and loaded
    before any of the submodule targets are compiled.

  - A list of the form `(exe: file opts ...)` where the file is a Gerbil Scheme module source file
    (with the `".ss"` extension automatically added by default) that exports a function `main`.
    The file will be compiled by `gxc` with the provided options into an executable, that,
    when invoked, calls the `main` function with a single argument, the list of command-line parameters
    (excluding the `argv[0]` command location). Note that this executable will dynamically load
    libraries from your `GERBIL_PATH` and/or your `~/.gerbil/lib` as needed.

  - A list of the form `(static-exe: file opts ...)` which is similar to the `exe:` case above,
    except that the executable will statically include all the compiled Gerbil code rather than
    dynamically load it from your Gerbil path, etc.
    Note that from the point of view of the "C" world, it is still a "dynamically linked" executable
    that is linked against the `libc`, `libgambit`, etc. ---
    only the Scheme code is statically compiled.

  - A list of the form `(copy: file)` which specifies a file that will be copied
    to the Gerbil library path. It can be a precompiled C object, Scheme file, data file, etc.,
    that your library uses and needs be present wherever your library is installed.

### Build Settings

The `make` function and the `defbuild-script` macro after it accept
the following keyword arguments, that may configure how your project is built.

  - `srcdir:` specifies the top directory under which to find the source code
    for your project, such that if you specify a target `"foo/bar"` or `"foo/bar.ss"`
    then it will refer to a file `"foo/bar.ss"` under this directory.
    This argument is mandatory when calling `make`, and is the only mandatory settings argument.
    However, this argument is prohibited when using the `defbuild-script` macro,
    since the macro uses `(path-normalize (path-directory (this-source-file)))`
    to automatically extract this directory from the current `./build.ss` file containing it
    and pass it to `make` (and you cannot override it).
    You may use the same trick in your `./build.ss` if for some reason you don't use that macro.
    (The trick is similar to `$(realpath "$(dirname "${BASH_SOURCE[0]}")")` in *bash*
    or `$(realpath "$(dirname "$0")")` in *zsh*).

  - `prefix:` specifies a prefix to the path of your Gerbil modules.
    This prefix will affect how your modules are named and where they will be installed
    within your *libdir*. Thus, a prefix of `legs` means that a file `"foo/bar.ss"`
    will be compiled into a module `legs/foo/bar` that you can import with `(import :legs/foo/bar)`
    and that will be installed under your *libdir* as a bunch of files starting with the prefix
    `legs/foo/bar`. The default, `#f`, means that no prefix will be prepended.

  - `libdir:` specifies the directory under which compiled library files will be installed.
    If left unspecified, the default `#f` designates that
    the content of your `GERBIL_PATH` environment variable be used if it is defined,
    or else your `~/.gerbil/lib/` directory.

  - `bindir:` specifies the directory under which compiled executable files will be installed.
    If left unspecified, the default `#f` designates that
    your `~/.gerbil/bin/` directory shall be used.

  - `force:` specifies a boolean that if true forces the recompilation
    of every target in the current build. If for some reason a subtle change
    causes the build system to incorrectly believe some targets are up-to-date
    when they are not, you can use `force: #t` to force a complete rebuild.
    Note that usually, this means that you failed to specify a dependency
    (for instance, by using `(include ...)` and not specifying the file
    in a `dep:` argument to a `(gxc: ...)` target).
    It may also be a bug in Gerbil, in which case, please report it.

  - `optimize:` specifies a boolean that if true tells Gerbil to optimize the code some more,
    which should result in faster code, at the cost of compilation taking more time.

  - `debug:` specifies one of `#f`, `src` or `env`, and controls how much debugging information
    Gerbil will include in the compiled file.
    TODO: further document that.

  - `static:` specifies a boolean.
    TODO: further document that.

  - `static-debug:` specifies a boolean.
    TODO: further document that.

  - `verbose:` specifies a boolean or a real number.
    The default `#f` should print a minimal amount of information,
    mostly telling you which module is bein compiled and that's all.
    If any value but `#f`, some extra messages may be printed.
    If it is a number, even more messages may be printed (try up to 8 or 9).

  - `build-deps:` specifies the path to a file under *libdir*/*prefix*
    that will store a cache of which files were built at what time from what dependencies,
    which can somewhat accelerate the build.
    If your prefix is shared between many projects (and in particular if you don't use a prefix),
    then you should provide a reasonably unique name here,
    or dependency caching performance may suffer.

  - `depgraph:` is an obsolete argument, only present for backward compatibility.
    You should delete it as well as any call to `make-depgraph` or `make-depgraph/spec`.
    All matters regarding dependency caching is now managed internally inside `make`
    based on the `build-deps` argument above.


## Interface

### make
::: tip usage
```
(make build-spec settings-keyword-arguments ...)
```
:::

Compile all parts of the project that are not up-to-date.



### shell-config
::: tip usage
```
(shell-config ...)
```
:::

Please document me!

### env-cppflags
::: tip usage
```
(env-cppflags ...)
```
:::

Please document me!

### env-ldflags
::: tip usage
```
(env-ldflags ...)
```
:::

Please document me!

### include-gambit-sharp
::: tip usage
```
(include-gambit-sharp ...)
```
:::

Please document me!

### pkg-config
::: tip usage
```
(pkg-config ...)
```
:::

Please document me!

### pkg-config-libs
::: tip usage
```
(pkg-config-libs ...)
```
:::

Please document me!

### pkg-config-cflags
::: tip usage
```
(pkg-config-cflags ...)
```
:::

Please document me!

### ldflags
::: tip usage
```
(ldflags ...)
```
:::

Please document me!

### cppflags
::: tip usage
```
(cppflags ...)
```
:::

Please document me!


## Standard Package Build Script
::: tip usage
(import :std/build-script)
:::

### defbuild-script
::: tip usage
```
(defbuild-script build-spec settings-keyword-arguments ...)
```
:::

Define a `main` function that will built the project.
See above.

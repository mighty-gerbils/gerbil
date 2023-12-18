# Build Tool

The `:std/make` library provides support for building source Gerbil projects.
See also the [Guide](/reference/dev/build.md).

::: tip usage
(import :std/make)
:::

## Overview

By convention, Gerbil projects are built by invoking a `./build.ss` script,
typically starting with `#!/usr/bin/env gxi` that defines a function `main`
that will build the project when called with an empty list.
The libraries documented below are meant to be used in such a script,
to do most of the work in building your project.
Note that if your project has syntax dependencies on low-level Gambit macros
in `gambit/lib/_gambit#.scm`, you should import `:std/gambit-sharp`
in your build script.

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

  - A list of the form `(gxc: file (plist ...) opts ...)` or just `(gxc: file opts ...)`,
    where (a) the file is a string as above, (b) the optional plist allows to specify
    extra build options, and (c) the remainder of the options are passed to `gsc`
    while compiling the file. The only supported extra build options so far are:
    (1) `extra-inputs:` followed by a list of extra inputs, e.g. files that are `include`'d
    or otherwise `read` at build-time, and (2) `foreground:` followed by a boolean
    (default `#f`, so only useful value `#t`) that forces the Gerbil compilation to happen
    in the foreground, e.g. because it requires side-effects to the Gerbil compiler
    not available when invoking `gxc` but already done before calling `make`,
    such as having loaded `~~lib/_gambc#.scm` at syntax-expansion time.

  - A list of the form `(gsc: file (plist ...) opts ...)` or just `(gsc: file opts ...)`,
    which is similar to `gxc:`, except the file is a raw Gambit Scheme file directly compiled with `gsc`
    and rather a Gerbil Scheme file first compiled to Gambit files by `gxc`.
    As for `gxc:` above, (a) the file is a string as above, (b) the optional plist allows to specify
    extra build options, and (c) the remainder of the options are passed to `gsc`
    while compiling the file. The only supported extra build option so far is:
    `extra-inputs:` followed by a list of extra inputs, e.g. files that are `include`'d
    or otherwise `read` at build-time.
    Such a target is useful for FFI and other low-level interactions with the Gambit runtime.
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
    The file will be compiled by `gxc` with the provided options into an executable binary, that,
    when invoked, calls the `main` function with a single argument, the list of command-line parameters
    (excluding the `argv[0]` command location).

  - A list of the form `(static-exe: file opts ...)` which is similar to the `exe:` case above,
    except that the executable will be fully statically linked.

  - A list of the form `(optimized-exe: file opts ..)` which is similar to `exe:` above, but
    builds the executable with full program optimization. Note that you may have to pass
    library dependencies expclitly in this case, using `"-ld-options" "-lyourlib" ...` in the
    options.

  - A list of thhe form `(optimized-static-exe: file opts ...)` which is similar to
    `optimized-exe:` above, except that it use fully static linkage for the executable
    binary.

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
    `legs/foo/bar`. The default, `#f`, means that a prefix will be extracted from the the `package:`
    value in the `gerbil.pkg` file in the `srcdir`, if it is defined and a symbol,
    and otherwise no prefix at all (all module names must then be fully-qualified).

  - `libdir:` specifies the directory under which compiled library files will be installed.
    If left unspecified, the default `#f` designates
    the shell value of `$GERBIL_PATH/lib` if the according environment variable is defined,
    or else your `~/.gerbil/lib/` directory.

  - `bindir:` specifies the directory under which compiled executable files will be installed.
    If left unspecified, the default `#f` designates
    the shell value of `$GERBIL_PATH/bin/` if the according environment variable is defined,
    or else your `~/.gerbil/bin/` directory.

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
    The default is `#t`.

  - `debug:` specifies one of `#f`, `env` or `src`, and controls how much debugging information
    Gerbil will include in the compiled file. The default is `env`.
    With `#f` Gerbil drops all debug information;
    with `env` it keeps a lot of information about the variables;
    with `src` it additionally keeps around the expanded source code in the compiled output.
    Each level makes debugging easier at the cost of larger output, and larger compilation time.
    In production, you probably want `#f` or maybe `env` if operators can sometimes debug there;
    for development, you probably want `src` for libraries you don't compile often,
    and `env` for code you compile over and over.
    Be sure to properly quote the symbol when passing it as argument to a function, as in
    `(make build-spec debug: 'src)`.

  - `static-debug:` specifies the same thing as `debug:` but for the statically linked objects
    that will be used to build static executables. The default is `#f`.

  - `verbose:` specifies a boolean or a real number.
    The default `#f` should print a minimal amount of information,
    mostly telling you which module is bein compiled and that's all.
    If any value but `#f`, some extra messages may be printed.
    If it is a number, even more messages may be printed (try up to 8 or 9).

  - `build-deps:` specifies the path to a file, by default under *srcdir*,
    that will store a cache of which files were built at what time from what dependencies,
    which can somewhat accelerate the build.
    If you have multiple projects in the same directory,
    i.e. invocations of `defbuild-script` or `make` with different `build-spec` arguments,
    then you need to have these invocations specify distinct `build-deps:` arguments
    to avoid clashes; otherwise projects will overwrite each other's cache.

  - `parallelize:` specifies the number of multiprocessor cores that Gerbil will attempt
    to use while compiling code. If it's a number _n_ no less than 2, then
    Gerbil will spawn as many as _n_ subprocesses to compile. If it's `0` or less,
    then Gerbil will not spawn processes to compile files from Gerbil `.ss`
    to Gambit `.scm` but compile them in the current image.
    It will still spawn processes for Gambit compilation as such.
    If it's `1`, then Gerbil will spawn a subprocess for the Gerbil compilation steps
    as well as for the Gambit compilation step, but only one process at a time.
    If it's `#t` (the default), then the environment variable `GERBIL_BUILD_CORES` is consulted,
    and used as above if it's an integer (represented as a decimal string).
    Otherwise (including if it's `#f`), then no parallelism is used, same as `0`.
    Note how the default behavior is to compile in parallel according to a specified number of cores,
    but that the default behavior's default number of cores is `0`, which disables parallelism.
    An older release of Gerbil (v0.16) did use `(##cpu-count)` by default, but this was disabled
    and the current behavior is to default to `0` because parallelism has
    known failure modes with rough edges when you try to compile on a machine with a lot of cores
    but not a lot of memory, as seems to be frequent enough these days:
    Gerbil will spawn off a lot of GCC processes via Gambit, and these may try to allocate
    more memory than is available, and die in bad ways that Gambit and Gerbil don't handle
    in a very user-friendly way). If you have enough memory
    (e.g. I am fine with 16GB of memory on 4 cores), you could use:
    `export GERBIL_BUILD_CORES="$(gsi -e '(display (##cpu-count)) (newline)')"`
    In the future, we may try to automatically estimate how many cores to use,
    and/or implement more robust handling of this failure mode.
    But for now, we disable parallelism. by default.

## Interface

### make
```
(make build-spec settings-keyword-arguments ...)
```

Compile all parts of the project that are not up-to-date.



### shell-config
```
(shell-config ...)
```

Please document me!

### env-cppflags
```
(env-cppflags ...)
```

Please document me!

### env-ldflags
```
(env-ldflags ...)
```

Please document me!

### include-gambit-sharp
```
(include-gambit-sharp ...)
```

Please document me!

### pkg-config
```
(pkg-config ...)
```

Please document me!

### pkg-config-libs
```
(pkg-config-libs ...)
```

Please document me!

### pkg-config-cflags
```
(pkg-config-cflags ...)
```

Please document me!

### ldflags
```
(ldflags ...)
```

Please document me!

### cppflags
```
(cppflags ...)
```

Please document me!


## Standard Package Build Script
::: tip usage
(import :std/build-script)
:::

### defbuild-script
```
(defbuild-script build-spec settings-keyword-arguments ...)
```

Define a `main` function that will built the project.
See above.

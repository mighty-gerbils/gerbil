# The Standard Library Build Tool

Building complex libraries and executables by invoking `gxc` quickly gets tedious. When you reach that point of complexity and you need a build tool, you can use the [`:std/make` library module](/reference/std/make.md) which provides a modest build tool that can handle reasonably complex project building.

## The project source code

For illustration purposes, we'll make a hello world library module and an executable that uses it.

``` scheme
$ cat gerbil.pkg
(package: example)

$ cat util.ss
(export #t)
(def (hello who)
  (displayln "hello, " who))

$ cat hello.ss
(import :example/util)
(export main)

(def (main . args)
  (for-each hello args))
```

## The standard build script template

The recommended way to write a build script is to use the template provided by the standard library.
You can do this by importing `:std/build-script` and using the `defbuild-script` macro.

The macro defines a main function suitable for building packages either directly or through gpxkg.
The syntax is
``` scheme
(defbuild-script build-spec . settings)
```

Using this, the build script for our project is the following:

``` scheme
$ cat build.ss
#!/usr/bin/env gxi
(import :std/build-script)
(defbuild-script
  '("util"
    (exe: "hello")))
```

And we can build by invoking the script:
``` bash
$ chmod +x build.ss
$ ./build.ss
...
```

## Intermediate build scripts

Here is a build script that uses an environment variable to determine
whether to build an optimized fully static binary or a normally linked binary:

```bash
$ cat build.ss
#!/usr/bin/env gxi
(import :std/build-script)
(defbuild-script
  `("util"
    ,(if (getenv "GERBIL_BUILD_RELEASE" #f)
       '(optimized-static-exe: "hello")
       '(exe: "hello"))))
```

If you are in your development environment and building executables for your host, then you can just invoke it as
```bash
$ ./build.ss
```

On the other hand, if you are building inside a docker container that
supports fully static binaries (say alpine or void linux), you can
just use the following to build an optimized fully static binary:
```bash
GERBIL_BUILD_RELEASE=t ./build.ss
```

::: tip Note
You may need to pass some linker flags in your build spec when using
`(optimized-static-exe: <module> "-ld-options" "...")`.  This may be
necessary because the compiler cannot tell in advance what the tree
shaker will eliminate and thus it is not prudent to automatically
link all stdlib foreign dependencies.
:::

## Using the Gerbil build tool

You don't normally have to run `build.ss` directly, you use the
`gerbil build` which will run it for you:

```shell
$ gerbil build
...
```

Also note, you don't have to use `optimized-exe:` or `static-exe:`
explicitly in your build scripts, you can use `exe:` which is context
dependent.  If you invoke the build tool with the `--optimized` and/or
`--release` flags it will automatically translate `exe:` build specs
to `optimized-exe:`, `static-exe:` or `optimized-static-exe:` as
applicable.  You can also define `GERBIL_BUILD_OPTIMIZED` and
`GERBIL_BUILD_RELEASE` environment variables, which has the same effect.

So to build executables with full program optimization:
```shell
$ gerbil build --optimized
```

And to build optimized release executables, you can do this inside
your [docker build container](/guide/docker.md):
```shell
gerbil build --release --optimized
```

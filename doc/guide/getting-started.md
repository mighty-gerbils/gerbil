# Getting Started with Gerbil Development

This is a quick start guide to setting up your Gerbil development environment, starting from scratch.

## Install Gerbil

::: tip Note
Older versions of Gerbil, prior to the v0.18 release cycle, required
you to configure and install Gambit separately. This is no longer the
case, as Gambit has been integrated as a git submodule.

Also note that there is no longer a need to set your GERBIL_HOME
variable; in fact you should not set this unless you have special
requirements.
:::

* Clone the repo from [github](https://github.com/mighty-gerbils/gerbil)

* Install dependencies

The default configuration has some dependencies you may need to install: sqlite, zlib, and libcrypto/openssl
You can install them in ubuntu with:
```shell
$ sudo apt install libssl-dev zlib1g-dev libsqlite3-dev
```

* Configure Gerbil

I usually configure Gerbil for devlopment with the following incantation:
```shell
./configure --prefix=/usr/local/gerbil --enable-shared
```

This will install Gerbil in `/usr/local/gerbil`; you should add
`/usr/local/gerbil/bin` to your path.

Note that this configuration enables share libraries: all gerbil
programs will use shared libraries for `libgambit` and `libgerbil`
linkage, resulting in significantly smaller executables.

If you are on Linux or BSD, I also recommend using `--enable-poll`,
which will use the more scalable `poll`-based i/o scheduler (instead
of the default `select`-based one).

::: warning Note
Do not use `--enable-poll` if you are on MacOS, as console polling is broken.
:::

If you intend to build static executables for servers, then you should
remove `--enable-shared` to configure the system to use static
`libgerbil.a` and `libgambit.a` libraries.

Also note, that it is _strongly_ recommended to use `gcc` as your
compiler, as LLVM-based compilers compile gerbil code very slowly
(some times 10x slower than gcc) and also produce slower binary code.

You can configure the use of a specific compiler by
configuring with the `CC=compiler` variable and setting the
`GERBIL_GCC` environment variable to point to your preferred compiler.

If you are having problems with your system's ar, you can also set the
`GERBIL_AR` environment variable to point to a specific `ar` that works.

Finally, Gerbil consults the `GERBIL_BUILD_CORES` environment variable
to determine whether to build its code in parallel, e.g.
`export GERBIL_BUILD_CORES=4` to build using 4 cores.

If you want to enable standard library modules that are not built by
default, you can do so by configuring with `./configure ... --enable-<feature> ...`.
You can see what the default features are
and aren't by using `./configure --help`: it will offer you options
that modify the defaults by enabling features that aren't enabled by
default, or disabling features that are enabled by default.

## Configure your Shell
To complete your installation, you have to configure your shell to find Gerbil,
by editing e.g. your `$HOME/.profile`, `$HOME/.bashrc` or `$HOME/.zshenv`.

Whether you install Gerbil to some directory or not,
be sure to add your `$GERBIL_INSTALL_PREFIX/bin` to your `PATH`
so your shell and other programs can find `gxi` and `gxc`;
alternatively, you could symlink the installed gerbil binaries
into a directory already in your `$PATH`.

In addition, you should add your personal gerbil path's bin (by default
`~/.gerbil` but overridable with the `GERBIL_PATH` environment
variable) into your path.

I (vyzo) have the following in my `.bashrc`:
```shell
add_path() {
    if [[ ! "$PATH" =~ $1 ]]; then
        export PATH="$PATH:$1"
    fi
}

GERBIL_INSTAL_PREFIX=/usr/local/gerbil # no need to export this
add_path $GERBIL_INSTALL_PREFIX/bin
add_path $HOME/.gerbil/bin
```

## Prepare your Project
You can get started right away and write a script, but let's do a simple
compiled library module and an executable as it is more relevant for real
world development.

First create your namespace -- I recommend you use a top package for
your libs so that you don't have conflicts with other packages.

The `gerbil build` tool uses your username by default.

So, let's start a simple project, which we will put into the `hello-world` directory:
```shell
$ mkdir hello-world
$ cd hello-world/

$ gerbil help new
Usage: gxpkg new [command-option ...]
       Create a new package template in the current directory

Command Options:
 -p --package <package>           The package prefix for your project; defaults to the current username [default: vyzo]
 -n --name <name>                 The package name; defaults to the current directory name [default: hello-world]
 -l --link <link>                 Optionally link this package with a public package name; for example: github.com/your-user/your-package [default: #f]

$ gerbil new -n hello

$ ls -latR
.:
total 24
drwxrwxr-x 3 vyzo vyzo 4096 Sep 15 09:54 .
-rwxr-xr-x 1 vyzo vyzo  138 Sep 15 09:54 build.ss
-rw-rw-r-- 1 vyzo vyzo   16 Sep 15 09:54 gerbil.pkg
-rw-rw-r-- 1 vyzo vyzo   14 Sep 15 09:54 .gitignore
drwxrwxr-x 2 vyzo vyzo 4096 Sep 15 09:54 hello
-rw-rw-r-- 1 vyzo vyzo  555 Sep 15 09:54 Makefile
drwxrwxr-x 3 vyzo vyzo 4096 Sep 15 09:54 ..

./hello:
total 16
drwxrwxr-x 2 vyzo vyzo 4096 Sep 15 09:54 .
drwxrwxr-x 3 vyzo vyzo 4096 Sep 15 09:54 ..
-rw-rw-r-- 1 vyzo vyzo   90 Sep 15 09:54 lib.ss
-rw-rw-r-- 1 vyzo vyzo  617 Sep 15 09:54 main.ss

$ cat gerbil.pkg
(package: vyzo)

$ cat build.ss
#!/usr/bin/env gxi
;;; -*- Gerbil -*-
(import :std/build-script)

(defbuild-script
  '("hello/lib"
    (exe: "hello/main" bin: "hello")))
```

At this point we have a new project template, which is ready to build
and is waiting for you to fill your code.

The tool has created the following files in the current directory:
- `gerbil.pkg` -- this includes project meta-data, the most important being the package namesace.
  As we can see, this is my `vyzo` user name in this example
- `build.ss` -- this is the project build script, pre-filled with the two source files the
  tool generated.
- `Makefile` -- this is the project release Makefile, which you can use to build release
  executables with docker.

It also created two source file templates, one for library code and one for the executable:
```shell
$ cat hello/lib.ss
;;; -*- Gerbil -*-
(import :std/sugar)
(export #t)

;;; Your library support code
;;; ...


$ cat hello/main.ss
;;; -*- Gerbil -*-
(import :std/sugar
        :std/getopt
        ./lib)
(export main)

(def (main . args)
  (call-with-getopt hello-main args
    program: "hello"
    help: "A one line description of your program"
    ;; commands/options/flags for your program; see :std/getopt
    ;; ...
    ))

(def* hello-main
  ((opt)
   (hello-main/options opt))
  ((cmd opt)
   (hello-main/command cmd opt)))

;;; Implement this if your CLI doesn't have commands
(def (hello-main/options opt)
  (error "Implement me!"))

;;; Implement this if your CLI has commands
(def (hello-main/command cmd opt)
  (error "Implement me!"))
```

Next, let's build it:
```shell
$ gerbil help build
Usage: gxpkg build [command-option ...] <pkg> ...
       rebuild one or more packages and their dependents

Command Options:
 -R --release                     build released (static) executables
 -O --optimized                   build full program optimized executables

Arguments:
 pkg                              package to build; all for all packages, omit to build in current directory

$ gerbil build
... build in current directory
... compile hello/lib
... compile hello/main
... compile exe hello/main -> ~/.gerbil/bin/hello
/tmp/gxc.1694761212.5571132/vyzo__hello__main.scm:
/home/vyzo/.gerbil/bin/hello.scmx:
/tmp/gxc.1694761212.5571132/vyzo__hello__main.c:
/home/vyzo/.gerbil/bin/hello.c:
/home/vyzo/.gerbil/bin/hello_.c:

```

And we have an executable, which is placed by default in `~/.gerbil/bin`.
You can change this by exporting the `GERBIL_PATH` variable.

Of course our executable doesn't do anything right now, as we haven't filled any code:
```shell
$ hello
*** ERROR -- Implement me!
```

## Write Some Code

We'll structure our (admittedly trivial) code in some library code and the executable's main logic.

In the generated `hello/lib.ss` file, we add our greeting procedure:
```scheme
$ cat hello/lib.ss
;;; -*- Gerbil -*-
(import :std/sugar)
(export #t)

(def greeting "hello")
(def (greet who)
  (displayln greeting ", " who))
```

And in the generated `hello/main.ss` file, we add a [getopt](/reference/std/getopt.md) option for a single argument and implement `hello-main/options` to greet:
```scheme
$ cat hello/main.ss
;;; -*- Gerbil -*-
(import :std/sugar
        :std/getopt
        ./lib)
(export main)

(def (main . args)
  (call-with-getopt hello-main args
    program: "hello"
    help: "Greetings from my first Gerbil program"
    (argument 'who
      help: "your name or handle")))

(def* hello-main
  ((opt)
   (hello-main/options opt))
  ((cmd opt)
   (hello-main/command cmd opt)))

;;; Implement this if your CLI doesn't have commands
(def (hello-main/options opt)
  (greet (hash-ref opt 'who)))

;;; Implement this if your CLI has commands
(def (hello-main/command cmd opt)
  (error "Implement me!"))

```

So let's build it and run it:
```shell
$ gerbil build
... build in current directory
... compile hello/lib
... compile hello/main
... compile exe hello/main -> ~/.gerbil/bin/hello
/tmp/gxc.1694761770.3361619/vyzo__hello__lib.scm:
/tmp/gxc.1694761770.3361619/vyzo__hello__main.scm:
/home/vyzo/.gerbil/bin/hello.scmx:
/tmp/gxc.1694761770.3361619/vyzo__hello__lib.c:
/tmp/gxc.1694761770.3361619/vyzo__hello__main.c:
/home/vyzo/.gerbil/bin/hello.c:
/home/vyzo/.gerbil/bin/hello_.c:

$ hello world
hello, world
```

## More Build Options

Note that by default your program will be compiled with separate
module compilation semantics and link to `libgerbil`.  If you are
willing to wait a bit for your proggram to compile, you can build
your project with `gerbil build --optimized` or use the `optimized-exe:`
build spec for your executable in the build script.

This will instruct the compiler to perform full program
optimization.

For example:
```shell
$ ldd $(which hello)
	linux-vdso.so.1 (0x00007ffc3ffb0000)
	libgerbil.so => /usr/local/gerbil/v0.17.0-247-gfba4fc7f/lib/libgerbil.so (0x00007f1304600000)
	libgambit.so => /usr/local/gerbil/v0.17.0-247-gfba4fc7f/lib/libgambit.so (0x00007f1303c00000)
	libz.so.1 => /lib/x86_64-linux-gnu/libz.so.1 (0x00007f1306588000)
	libssl.so.3 => /lib/x86_64-linux-gnu/libssl.so.3 (0x00007f130455c000)
	libsqlite3.so.0 => /lib/x86_64-linux-gnu/libsqlite3.so.0 (0x00007f1303ab3000)
	libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007f1303800000)
	/lib64/ld-linux-x86-64.so.2 (0x00007f13065c4000)
	libm.so.6 => /lib/x86_64-linux-gnu/libm.so.6 (0x00007f1303719000)
	libcrypto.so.3 => /lib/x86_64-linux-gnu/libcrypto.so.3 (0x00007f1303200000)

$ gerbil clean
... clean current package
... remove ~/.gerbil/lib/vyzo/hello/lib.ssi
... remove ~/.gerbil/lib/static/vyzo__hello__lib.scm
... remove ~/.gerbil/bin/hello
... remove ~/.gerbil/lib/static/vyzo__hello__main.scm

$ gerbil build --optimized
... build in current directory
... compile hello/lib
... compile hello/main
... compile exe hello/main -> ~/.gerbil/bin/hello

$ ldd $(which hello)
	linux-vdso.so.1 (0x00007ffc8e93a000)
	libgambit.so => /usr/local/gerbil/v0.17.0-247-gfba4fc7f/lib/libgambit.so (0x00007f58ba000000)
	libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007f58b9c00000)
	libm.so.6 => /lib/x86_64-linux-gnu/libm.so.6 (0x00007f58ba956000)
	/lib64/ld-linux-x86-64.so.2 (0x00007f58bab1b000)

```

If you want your program to be statically linked to dependent
libraries, so that you can ship it as a _release_, you can specify the
`--release` flag, which may be combined with `--optimized`.

Note that for release builds, your system must be configured without
`--enable-shared` and have all foreign dependencies available as
static library archives. Of course, you can do that by maintaining a
separate gerbil build in your system for releases, but the recommended
way to build release binaries is by using [docker](docker.md).

## Using the Makefile

The generated Makefile has two main rules: the default `linux-static`
rule which builds static executables for your poject, and the utility
`clean` rule to clean static build artifacts.

So all you have to do to build a release executable is this:
```shell
$ make
```

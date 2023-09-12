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

* Clone the repo from [github](https://github.com/vyzo/gerbil)

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
```
add_path() {
    if [[ ! "$PATH" =~ $1 ]]; then
        export PATH="$PATH:$1"
    fi
}

GERBIL_INSTAL_PREFIX=/usr/local/gerbil # no need to export this
add_path $GERBIL_INSTALL_PREFIX/bin
add_path $HOME/.gerbil/bin
```

## Write some code
You can get started right away and write a script, but let's do a simple
compiled library module and an executable as it is more relevant for real
world development.

First create your workspace -- I recommend you use a top package for your libs
so that you don't have namespace conflicts.
So let's make our project using `myproject` as the package.
You should of course pick something more
representative for your top package namespace, like your github user id.

So, let's make a simple library module:
```
$ mkdir -p myproject
$ cd myproject

# Create a gerbil.pkg file for our project
$ cat > gerbil.pkg <<EOF
(package: myproject)
EOF

$ cat > mylib.ss <<EOF
(export #t) ; export all symbols
(def (hello who)
 (displayln "hello, " who))
EOF
```

Now let's compile it. By default, gxc will place compiler artefacts in `~/.gerbil/lib`.
You can change this by exporting the `GERBIL_PATH` variable.
You may also explicitly use the `-d` option, but then you'll have to add
your libdir to `GERBIL_LOADPATH`.
```
$ gxc -O mylib.ss
```

You now have a compiled module, which you can use in the interpreter:
```
$ gxi
> (import :myproject/mylib)
> (hello "world")
hello, world
```

Next let's make an executable:
```
$ cat > mybin.ss <<EOF
(import ./mylib)
(export main)
(def (main who)
 (hello who))
EOF
```
and let's compile it and run it:
```
$ gxc -O -exe -o mybin mybin.ss
$ ./mybin world
hello world
```

Finally, let's create a build script to automate our build:
```
$ cat > build.ss <<EOF
#!/usr/bin/env gxi
(import :std/build-script)
(defbuild-script '("mylib" (exe: "mybin")))
EOF
$ chmod +x build.ss
```

And you can now build by invoking the build script.

Note that by default your program will be compiled with separate
module compilation semantics and link to `libgerbil`.  If you are
willing to wait a bit for your proggram to compile, you can specify
`-full-program-optimization` or use the `optimized-exe:` build spec
for your executable in the build script.  This will instruct the
compiler to perform full program optimization. When the system is
configured without `--enable-shared` this results in significantly
smaller binaries with better execution performance.

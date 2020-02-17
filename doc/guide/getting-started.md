# Getting Started with Gerbil Development

This is a quick start guide to setting up your Gerbil development environment, starting from scratch.

## Install Gambit
* Clone the repo from [github](https://github.com/gambit/gambit)
* Follow the instructions from `gambit/INSTALL.txt` to install configure and install gambit, as the process for building from source tends to change frequently.

I usually configure Gambit for development with the following incantation:
```
 ./configure --prefix=/usr/local/gambit \
             --enable-single-host \
             --enable-multiple-versions \
             --enable-shared \
             --enable-openssl \
             --enable-default-runtime-options=f8,-8,t8 \
             --enable-poll # For Linux and BSD; don't use this on macOS
```

With this configuration, you need to add `$GAMBIT_PREFIX/current/bin` to your `PATH` and `$GAMBIT_PREFIX/current/lib` to your `LD_LIBRARY_PATH`.

If you are on Linux or BSD, I also recommend using `--enable-poll`, which will use the more
scalable poll-based i/o scheduler (instead of the default select-based one).

If you intend to build static applications for servers, then you should use the following
configuration:
```
./configure --prefix=/usr/local/gambit \
            --enable-single-host \
            --enable-multiple-versions \
            --enable-openssl \
            --enable-default-runtime-options=f8,-8,t8 \
            --enable-poll

```
This removes `--enable-shared`, which will build gambit without shared libraries and thus result in static linkage of Gambit in executables.

I have the following in my `.bashrc`:
```
GAMBIT=/usr/local/gambit/current
add_path $GAMBIT/bin
add_ldpath $GAMBIT/lib
```

with the helper functions defined as:
```
add_path() {
    if [[ ! "$PATH" =~ $1 ]]; then
        export PATH="$PATH:$1"
    fi
}

add_ldpath() {
    if [ -z "$LD_LIBRARY_PATH" ]; then
        export LD_LIBRARY_PATH="$1"
    elif [[ ! "$LD_LIBRARY_PATH" =~ $1 ]]; then
        export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$1"
    fi
}

```

## Install Gerbil
Clone the repo from [github](https://github.com/vyzo/gerbil) and build:
```
$ cd gerbil/src
$ ./build.sh
```

In order to have a fully usable installation, you should export `GERBIL_HOME` and add `$GERBIL_HOME/bin` to your `PATH`. I have the following in my `.bashrc`:
```
export GERBIL_HOME=$HOME/gerbil
add_path $GERBIL_HOME/bin
```

## Write some code
You can get started right away and write a script, but let's do a simple
compiled library module and an executable as it is more relevant for real
world development.

First create your workspace -- I recommend you use a top package for your libs
so that you don't have namespace conflicts.
So let's make our project with you using `myuser` as the top package name, and
your source live in `myproject`. You should of course pick something more
representative  for your top package namespace, like your github user id.

So, let's make a simple library module:
```
$ mkdir -p myproject/src/myuser
$ cd myproject/src/myuser

# Create a gerbil.pkg file for our project
$ cat > gerbil.pkg <<EOF
(package: myuser)
EOF

$ cat > mylib.ss <<EOF
(export #t) ; export all symbols
(def (hello who)
 (displayln "hello " who))
EOF
```

Now let's compile it. By default, gxc will place compiler artefacts in `~/.gerbil/lib`.
You can change this with the `-d` option, but then you'll have to add your libdir to `GERBIL_LOADPATH`.

```

$ gxc mylib.ss
```

You now have a compiled module, which you can use in the interpreter:
```
$ gxi
> (import :myuser/mylib)
> (hello "world")
hello world
```

Next let's make an executable:
```
$ cat > mybin.ss <<EOF
(import :myuser/mylib)
(export main)
(def (main who)
 (hello who))
EOF
```
and let's compile it and run it:
```
$ gxc -exe -o mybin mybin.ss
$ ./mybin world
hello world
```

Note that this is a dynamically linked executable, the module has been
compiled dynamically in the gerbil libdir and the executable is a stub
that loads it and executes main, which means that your `GERBIL_HOME`
(and `GERBIL_LOADPATH` if you are putting your artefacts in a different
place, like `myproject/lib`) must be set.

You can also compile a statically linked executable, which can work without
a local gerbil environment:
```
$ gxc -static mylib.ss  # compile dependent library statically first
$ gxc -static -exe -o mybin-static mybin.ss
$ ./mybin-static world
hello world
```

The advantage of static executables is that they can work without a local
Gerbil installation, which makes them suitable for binary distribution.
They also start a little faster, as there is no dynamic module loading at runtime.
In addition, because all dependencies from the stdlib are compiled in together, you
can apply global declarations like `(declare (not safe))` to the whole program, which
can result in significant performance gains. And as of `Gerbil-v0.13-DEV-50-gaf81bba`
the compiler performs full program optimization, resulting in further performance
benefits.

The downside is long compilation times and the limitation that the executable
won't be able to use the expander or the compiler, as the meta parts of the Gerbil
runtime are not linked in.

Note that when creating static executables, you will need to pass on options to
the linker if you're relying on foreign libraries. For example, to
include a dependency on `zlib`:

```
$ gxc -static -exe -o mybin-static -ld-options -lz mybin.ss

```

The `-ld-options` are being passed on to `gsc` which in turn adds the
specified options to the command that invokes the C linker.

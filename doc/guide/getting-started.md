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

Importantly, for other programs (including your shell and Gerbil) to find Gambit,
you must add `$GAMBIT_PREFIX/bin` to your `PATH`.
Furthermore, for the dynamic linker to find the Gambit libraries, you must add
`$GAMBIT_PREFIX/lib` to your `LD_LIBRARY_PATH`.

Note that on Gambit v4.9.4 or later (actually, `v4.9.3-1101-g1f1ce436`),
you may omit the `--enable-default-runtime-options=f8,-8,t8` option, that has become default,
and/or you should add the new `i8` to be complete.

Also, if you are on Linux or BSD, I recommend using `--enable-poll`, which will use the more
scalable `poll`-based i/o scheduler (instead of the default `select`-based one).

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

I (vyzo) have the following in my `.bashrc`:
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
Clone the repo from [github](https://github.com/vyzo/gerbil), optionally configure, and build.
If you use the default options, you may just use the command below,
and skip to the next section about configuring your shell:
```
$ ./src/build.sh
```

If you want to configure Gerbil with non-default options, instead use some variant of the below:
```
$ cd gerbil/src
$ ./configure --prefix=/path/to/which/to/install/gerbil --gambit=/path/to/installed/gambit \
  --enable-feature1 --enable-feature2 --disable-feature3 --disable-feature4 --enable-feature5
$ ./build.sh
$ ./install
```

The configure step is not necessary if you use the default options.
However, it recommended when installing Gerbil
to some target destination different from its source directory,
at which point you will also want the `./install` step.
The install step is not needed if you don't specify a prefix.

The Gerbil compiler depends on many files installed in its "home directory".
When determining what directory to use as the Gerbil home directory,
Gerbil will look at the `GERBIL_HOME` environment variable.
If it is defined, Gerbil will use the location specified as its home directory.
When the variable isn't defined, then the behavior depends on
the `--prefix` option specified while configuring Gerbil.
If Gerbil was configured with `--prefix=/some/path`, then the specified path is used
as its home directory.
You can specify `--prefix=/usr/local` or `--prefix=/opt/gerbil` or
`--prefix=$HOME/local/stow/gerbil-v0.17` or whatever follows your software installation discipline.
Finally, if Gerbil was configured without `--prefix`, then Gerbil uses
the parent directory of the directory in which `gxi` is installed.
Note that in this final case, the autodetection relies on `gxi` not being a symlink,
but on your `PATH` pointing to its physical directory or an absolute path being used;
then again you can define `GERBIL_HOME` or configure with `--prefix` so autodetection isn't needed.
(Note that incompatibility with a previously defined `GERBIL_HOME` is
a frequent source of trouble in newbies who make multiple attempts at building from source).

Similarly, Gerbil will use the path specified by the `GERBIL_GSC` environment variable
to find the Gambit Scheme compiler. If the path is not specified,
then it will look at the path specified by the `--gambit` option when it was configured.
If not specified, then it will assume that the command `gsc` in your `PATH`
is the version of Gambit you use. It is then important that `gsc` and `gcc` in your `PATH`
are the same as were used to compile Gerbil and Gambit respectively.

Finally, Gerbil consults the `GERBIL_BUILD_CORES` environment variable
to determine whether to build its code in parallel, e.g. `export GERBIL_BUILD_CORES=4`.
This is disabled by default. See details and explanations in
[the documentation for :std/make](../reference/make.md).

You can see what the default features are and aren't by using `./configure --help`:
it will offer you options that modify the defaults
by enabling features that aren't enabled by default,
or disabling features that are enabled by default.

## Configure your Shell
To complete your installation, you have to configure your shell to find Gerbil,
by editing e.g. your `$HOME/.profile`, `$HOME/.bashrc` or `$HOME/.zshenv`.
Whether you install Gerbil to some directory or not,
be sure to add your `$GERBIL_HOME/bin` to your `PATH`
so your shell and other programs can find `gxi` and `gxc`;
alternatively, you could symlink the installed `gxi` and `gxc` binaries
into a directory already in your `$PATH`.
You may also define `GERBIL_HOME`, or leave it undefined (or unexported)
and let Gerbil autodetect where it was installed.
I (vyzo) have the following in my `.bashrc`:
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
You can change this by exporting the `GERBIL_PATH` variable.
You may also explicitly use the `-d` option;
but then you'll have to add your libdir to `GERBIL_LOADPATH`.
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

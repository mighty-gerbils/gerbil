# Gerbil Scheme

Gerbil is an opinionated dialect of Scheme designed for Systems Programming,
with a state of the art macro and module system on top of the Gambit runtime.

The macro system is based on quote-syntax, and provides the full
meta-syntactic tower with a native implementation of syntax-case.
It also provides a full-blown module system, similar to PLT Scheme's
(sorry, Racket) modules. The main difference from Racket is that
Gerbil modules are single instantiation, supporting high performance
ahead of time compilation and compiled macros.

<!-- toc -->

- [Installation](#installation)
- [Using Gerbil](#using-gerbil)
- [Documentation](#documentation)
- [License and Copyright](#license-and-copyright)
- [Epilogue](#epilogue)

<!-- tocstop -->

# Installation
## Source Code
The source code for Gerbil is hosted on [Github](https://github.com/vyzo/gerbil),
with the latest release available in [releases](https://github.com/vyzo/gerbil/releases).

For the latest Gerbil, you can clone the repository:
```
$ git clone https://github.com/vyzo/gerbil.git
```

## Dependencies

The latest Gerbil release (v0.12) requires Gambit v4.8.9.

The core system has no dependencies outside Gambit, but the standard
library has several mostly optional dependencies. The only hard dependency
is `libcrypto` from OpenSSL; important parts of the standard library
require it.

All the other dependencies are soft.
Most library modules with foreign dependencies are not built by default,
with the exception of `zlib` and `sqlite`. These are ubiquitous, stable
and generally useful enough to warrant being present by default;
you can still disable them if you want for a minimal installation.

In ubuntu, you can install the dependencies for a default installation with:
```
$ sudo apt-get install openssl libssl-dev sqlite3 libsqlite3-dev
```

The optional libraries can be enabled or disabled at build-time
by editing `$GERBIL_HOME/src/std/build-features.ss`.
You can also enable features later, by editing `build-features.ss` and
running `./build.sh stdlib` in `$GERBIL_HOME/src/`.


## Build Instructions
After unpacking a release or checking out the source code from Github, let
`$GERBIL_HOME` be the top directory of Gerbil.

Then:
```
$ cd $GERBIL_HOME/src
$ ./build.sh
```

If you are building in MacOSX and want to use the homebrew OpenSSL,
then you need to specify appropriate `CPPFLAGS` and `LDFLAGS`.
For instance:
```
$ LDFLAGS=-L/usr/local/opt/openssl/lib \
  CPPFLAGS=-I/usr/local/opt/openssl/include \
  ./build.sh
```

# Using Gerbil
The Gerbil interpreter is `$GERBIL_HOME/bin/gxi`, and the compiler is
`$GERBIL_HOME/bin/gxc`.

If you want an interactive Gerbil shell just execute the interpreter
directly by running `gxi`.

For "hello, world" see the [Guide](doc/guide.md#hello-world).

# Documentation

The [documentation](doc) is a work in progress, but there are some resources
that should get you started:
- The [Introduction to Gerbil](doc/guide.md) is an introductory guide for seasoned Schemers.
- The [Gerbil wiki](https://github.com/vyzo/gerbil/wiki/Gerbil-Scheme) at Github
  contains a small but growing collection of pages that can help you
  get started with Gerbil programming.
- The [Getting Started](https://github.com/vyzo/gerbil/wiki/Getting-Started-with-Gerbil-development)
  wiki page in particular covers the very basics for setting up your Gerbil installation
  and writing your first code.
- The [Gerbil Tutorial](doc/tutorial.md) provides a few hands-on guides on Gerbil programming.
- The [Gerbil Core Prelude](doc/core-prelude.md) documents the core
  language prelude.
- The [Gerbil Standard Library Overview](doc/stdlib.md) provides an overview of the Gerbil
  stdlib.

Probably the best way to dive into Gerbil is by reading the sources,
as all the main language features are exercised in one way or another
within the implementation.

Depending on your inclinations, there are several starting points:
- If you are interested in general purpose programming, then you should look at
  the [stdlib sources](src/std).
- If you are interested in Gerbil macrology, then the place to start is the [core prelude](src/gerbil/prelude/core.ss).
  This is the language that you get in the interpreter and what is available
  when writing a new module without explicitly specifying a prelude.
- If you are interested in the Gerbil expander internals, then you should look at
  the [expander sources](src/gerbil/expander).
- If you are interested in the Gerbil compiler internals, then you should look at
  the [compiler sources](src/gerbil/compiler).

For questions and support, you can come say hi in `#gerbil-scheme` on irc at freenode.net.

# License and Copyright

The source code is distributed with the Gambit license; that means
that Gerbil on Gambit is dual licensed under LGPLv2.1 and Apache 2.0.

Gerbil's primary author and maintainer is vyzo-at-hackzen.org, aka in
the Net as Dimitris Vyzovitis. The obligatory copyright notice, had I
bothered and polluted everything with more than a (C) vyzo, would read
like this:

```
© 2007-2018 Dimitris Vyzovitis <vyzo -at- hackzen.org>
Gerbil is Free Software, distributed under the GNU LGPLv2.1 or later
and the Apache 2.0 license.
```

# Epilogue

Gerbil has been my private Scheme for many years, evolved out of a set
of common macros that i used across different implementations and
eventually a full-blown PLT macro language. As such I have had
multiple backends that supported the Gerbil dialect, but I have
elected to base the canonical version of Gerbil on Gambit.

At the prompting of some friends (they know who they are), who
had seen private versions of Gerbil, I decided to release it in public
with a clean bootstrap version that bootstraps on gambit with a precompiled
version of the macro system and compiler.
That means that the system is entirely self-hosted in Gambit.

Gerbil is under continuous use and development.
The core language has been stable for a while, but we are busy porting
batteries, adding features, fixing bugs, and expanding the scope of
syntactic abstraction.

Patches (even for typos in the comments) are always welcome.
No copyright assignment ever, you keep what you contribute.

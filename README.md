# Gerbil Scheme

Gerbil is an opinionated, some might even say tendentious, dialect of
Scheme designed for Systems Programming. It provides a state of the
art macro and module system on top of the Gambit runtime and compiler
and an extensive standard library. One way to think of Gerbil is as
the C++ to Marc Feeley's C.

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
The source code for Gerbil is hosted on [Github](https://github.com/mighty-gerbils/gerbil),
with the latest release available in [releases](https://github.com/mighty-gerbils/gerbil/releases).

**If you are on Linux** installation from source is straightforward:
```shell
$ git clone git@github.com:mighty-gerbils/gerbil.git
$ cd gerbil
$ ./configure
$ make -j4
$ sudo make install
```

This will install Gerbil in `/opt/gerbil`; all you have to do then is
add `/opt/gerbil/bin` to your path. Obviously, you can customize the
install prefix by using the `--prefix=/path/to/gerbil/installation`
configure option.

**Note** the default configuration has some dependencies you may need
to install: sqlite, zlib, and libcrypto/openssl.
You can install them in ubuntu with:
```shell
$ sudo apt install libssl-dev zlib1g-dev libsqlite3-dev
```

**If you are on MacOS** you can install Gerbil using our [brew formula](https://github.com/mighty-gerbils/gerbil/blob/master/homebrew/gerbil-scheme.rb):
```shell
$ wget https://raw.githubusercontent.com/mighty-gerbils/gerbil/master/homebrew/gerbil-scheme.rb

## to use 4 cores for the build
$ export GERBIL_BUILD_CORES=4

## to install latest release
$ brew install --formula -vd gerbil-scheme.rb

## to install latest Gerbil from master
$ brew install --HEAD --formula -vd gerbil-scheme.rb
```

for more detailed installation instructions see the [Guide](https://cons.io/guide/).

# Using Gerbil
The Gerbil interpreter is `gxi`, and the compiler is `gxc`.

If you want an interactive Gerbil shell just execute the interpreter
directly by running `gxi`.

For "hello, world" see the [Guide](https://cons.io/guide/intro.html#hello-world).

# Documentation

The [documentation](https://cons.io) is a work in progress, but there are some resources
that should get you started:
- The [Introduction to Gerbil](https://cons.io/guide/intro.html) is an introductory guide
  for seasoned Schemers.
- The [Getting Started](https://cons.io/guide/getting-started.html) page covers the very basics
  of setting up your Gerbil installation and writing your first code.
- The [Gerbil Tutorial](https://cons.io/tutorials/) provides a few hands-on guides
  on Gerbil programming.
- The [Gerbil Reference Documentation](https://cons.io/reference/) is the reference documentation
  for the Gerbil runtime and standard library.
- See also the [Developing Software with Gerbil](https://cons.io/reference/dev) section in the
  hyperspec for general software development practices with Gerbil.

The documentation is automatically rendered online at [cons.io](https://cons.io).
You can render it locally by running `doc/build.sh`, which will leave
the html output in `doc/.vuepress/dist`; the script uses vuepress and
requires npm to be installed.

## Deep Dive

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

For questions and support, you can find us on gitter in [#gerbil-scheme](https://gitter.im/gerbil-scheme/community).

# License and Copyright

## Source Code

The source code is distributed with the Gambit license; that means
that Gerbil on Gambit is dual licensed under LGPLv2.1 and Apache 2.0.

Gerbil's original author and primary maintainer is vyzo, aka in the
Net as Dimitris Vyzovitis. The obligatory copyright notice, had I
bothered and polluted everything with more than a (C) vyzo, would read
like this:

```
© 2007-2023 Dimitris Vyzovitis and contributors
Gerbil is Free Software, distributed under the GNU LGPLv2.1 or later
and the Apache 2.0 license.
```

The implementations of srfi 115 and srfi 159 come from Chibi, as these
are the only available reference implementations. As such, they are
© Alex Shinn and distributed under a BSD-style license.


## Logo

The Gerbil Scheme logo is © 2019 Brad Christensen. The logo, its
variations, and derivatives found within the official Gerbil Scheme
code repository are provided under a royalty-free non-exclusive
license for use by any person or entity wanting to use them solely
in the context of the Gerbil Scheme programming language, including
for commercial use, and grants them the rights to copy, distribute,
display, and create derivative works so long as those derivatives
are made available under this same license.

Creators of derivatives are encouraged to offer them for inclusion
to the official code or associated Gerbil Scheme repository, where
upon acceptance they will be easier to find and use (for example
in documentation and acticles) by the community at large.
Furthermore, a derivative's terms of use will be made available
by the statements here.

This license in no way guarantees the availability of the logo, or
any of its variations or derivitives in the future.

# Epilogue

Gerbil had been vyzo's private Scheme for many years, evolved out of a
set of common macros that were used across different implementations
and eventually a full-blown PLT macro language for actor oriented
distributed programming.  As such, there have been multiple backends
that supported the evolution of the Gerbil dialect, but vyzo elected
to base the canonical version of Gerbil on Gambit because it is the
most portable, performant and low-level Scheme kernel available.

At the prompting of some friends (they know who they are), who had
seen private versions of Gerbil, vyzo decided to release it in public
with a clean source-based bootstrap version that bootstraps on gambit
with a precompiled version of the macro system and compiler.  That
means that the system could be (and now is) entirely self-hosted.

Gerbil is under continuous use and development.
The core language has been stable for a while, but we are busy porting
batteries, adding features, fixing bugs, and expanding the scope of
syntactic abstraction.

Patches (even for typos in the comments) are always welcome.
No copyright assignment ever, you keep what you contribute.

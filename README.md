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
The source code for Gerbil is hosted on [Github](https://github.com/vyzo/gerbil),
with the latest release available in [releases](https://github.com/vyzo/gerbil/releases).

For installation instructions see the [Guide](doc/guide/README.md), rendered
online [here](https://cons.io/guide/).

# Using Gerbil
The Gerbil interpreter is `$GERBIL_HOME/bin/gxi`, and the compiler is
`$GERBIL_HOME/bin/gxc`.

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
- The [Gerbil Reference](https://cons.io/reference/) is the reference documentation for the
  Gerbil runtime and standard library.

The documentation is automatically rendered online at [cons.io](https://cons.io).
You can render it locally by running `doc/build.sh`, which will leave
the html output in `doc/.vuepress/dist`; the script uses vuepress and
requires npm to be installed.

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
You can also find us on gitter in [#gerbil-scheme](https://gitter.im/gerbil-scheme/community).

# License and Copyright

## Source Code

The source code is distributed with the Gambit license; that means
that Gerbil on Gambit is dual licensed under LGPLv2.1 and Apache 2.0.

Gerbil's primary author and maintainer is vyzo-at-hackzen.org, aka in
the Net as Dimitris Vyzovitis. The obligatory copyright notice, had I
bothered and polluted everything with more than a (C) vyzo, would read
like this:

```
© 2007-2019 Dimitris Vyzovitis and contributors
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

# Gerbil Scheme

Gerbil is an opinionated dialect of Scheme with a state of the
art macro and module system on the Gambit runtime. 

The macro system is based on quote-syntax, and provides the full
meta-syntactic tower with a native implementation of syntax-case.
It also provides a full-blown module system, similar to PLT Scheme's
(sorry, Racket) modules. The main difference from Racket is that
Gerbil modules are single instantiation, supporting high performance
ahead of time compilation and compiled macros.

## History of Gerbil
Gerbil has been my private Scheme for many years, evolved out of a set
of common macros that i used across different implementations and
eventually a full-blown PLT macro language. As such I have had
multiple backends that work with the Gerbil macro system, but I have
elected to base the canonical version of Gerbil on Gambit.

At the prompting of some friends (they know who they are), who
had seen private versions of Gerbil, I decided to release it in public
with a clean bootstrap version that bootstraps on gambit with a precompiled
version of the macro system and compiler.
That means that the system is entirely self-hosted in Gambit.

# License and Copyright

The source code is distributed with the Gambit license; that means
that Gerbil on Gambit is dual licensed under LGPLv2.1 and Apache 2.0.

Gerbil's primary author and maintainer is vyzo-at-hackzen.org, aka in
the Net as Dimitris Vyzovitis. The obligatory copyright notice, had I
bothered polluted everything with more than a (C) vyzo at hackzen.org,
would read like this:

```
(C) 2007-2017 Dimitris Vyzovitis <vyzo -at- hackzen.org>
Gerbil is Free Software, distributed under the GNU LGPLv2.1 or later
and the Apache 2.0 license.
```

# Installation
## Source Code
The source code for Gerbil is hosted on [Github](https://github.com/vyzo/gerbil).
You can obtain the source tree directly in the command line by cloning
the repository:
```
$ git clone https://github.com/vyzo/gerbil.git
```

## Dependencies
I have tested the bootstrap with Gambit v4.8.4, but older versions
starting with v4.6.0 should work as well.

The only hard dependency is `libcrypto` from OpenSSL; important parts
of the standard library require it. You may need to install `openssl-dev`
in ubuntu and similar systems.

All the other dependencies are soft; library modules with foreign
dependencies are not built by default. These optional libraries can
be enabled at build-time by editing `$GERBIL_HOME/src/std/build-config.ss`.

## Build Instructions
After checking out the source code from Github, let `$GERBIL_HOME` be
the top directory of Gerbil.
Then:
```
$ cd $GERBIL_HOME/src
$ ./build.sh
```

# Using Gerbil
The Gerbil interpreter is `$GERBIL_HOME/bin/gxi`, and the compiler is
`$GERBIL_HOME/bin/gxc`.

If you want an interactive Gerbil shell just execute the interpreter
directly by running gxi.

If you want to write an executable Gerbil script, add `$GERBIL_HOME/bin`
to your `PATH` and use the following for your magic:
```
#!/usr/bin/env gxi-script
```

You can define a main procedure in your script that will receive
the command line arguments.

For an example script, put the following in hello.ss
```
#!/usr/bin/env gxi-script

(def (main . args)
 (displayln "Hello world! My arguments are " args))
```

Running the script with
```
chmod +x hello.ss
./hello.ss 1 2 3
```

should produce the following output:
```
Hello world! My arguments are (1 2 3)
```

# Documentation

There is some documentation at [$GERBIL_HOME/doc](doc/), most notably
a introductory guide in markdown for seasoned Schemers.
You can read it rendered online at Github:
[guide.md](https://github.com/vyzo/gerbil/blob/master/doc/guide.md).

There is also the [Gerbil wiki](https://github.com/vyzo/gerbil/wiki) at Github, 
which contains a small but growing collection of pages that can help you
get started with Gerbil.

Beyond that, there is little further documentation at this point,
because I haven't had the time to prepare some nice and coherent
documentation that can help Scheme neophytes -- or people who like
neat documentation before using a new Scheme system.

Probably the best way to dive into gerbil is by reading the sources,
as all the main language features are exercised in one way or another
within the implementation.
The core language macros are defined in the [core prelude](src/gerbil/prelude/core.ss).
This is the language that you get in the interpreter and what is available
when writing a new module without explicitly specifying a prelude.

# Epilogue

Gerbil is under continuous use and development.
The core language has been stable for a while, but I am busy porting
batteries for the std library.

Patches (even for typos in the comments) are always welcome.
No copyright assignment ever, you keep what you contribute.

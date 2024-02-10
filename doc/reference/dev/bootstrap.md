# The Gerbil Bootstrap

Gerbil is fully self-hosted, with both its compiler and runtime 100% written in itself.
So how does it all fit together?

## Overview of Bootstrapping in General

At all times, a bootstrapped language keeps alongside the source code
of its implementation (runtime and compiler), written in the language itself,
a precompiled "bootstrap" version of its implementation,
sufficient to build the current version.
This "bootstrap" version is either source code in a *host* language,
or object code for a host environment or collection of host environments
(typically, either a single bytecode binary for a VM implemented in C, or
a series of executables for each of many supported platforms,
e.g. each of Linux, Windows, macOS on each of x86-64, aa64, etc.).

When building the bootstrapped language,
we start from the host language or environment,
use it to build and run the bootstrap version of the implementation,
with which build the current version of the implementation.
That current version can at times be blessed as a new bootstrap implementation.

A bootstrapped implementation is in contrast with a *cross-implementation*:
an implementation _manually_ written in a *host* language
that differs from the target language being implemented.
Confusingly, the host language is often called
the meta-language when talking about a compiler, or
the base language when talking a runtime or an interpreter,
even though meta- and base- are used as mutual opposites in such context.

Every bootstrapped implementation started with a regular cross-implementation
as its bootstrap implementation, though that cross-implementation may have
long since been superseded by many subsequent compiled versions where
the manually written host code was replaced by code automatically generated
from source code in the bootstrapped language.

In the case of Gerbil, we use Gambit Scheme as a host language, and
we keep a precompiled bootstrap implementation in the directory
`GERBIL_SRCDIR/src/bootstrap/`.

## Pros and Cons of Bootstrapping

### Pros of Bootstrapping

There are many advantages to bootstrapping the implementation of
a programming language:

  - You can use all the features of your language while developping it,
    instead of being stuck with another language, necessarily unsatisfying
    in enough ways that you're developing a different one.

  - You don't have to rely on other people with respect to
    the implementation language: bugs, tooling, standards, compatibility,
    release cycles, etc. You can do it all yourself!

  - If there is a language or compiler feature you wish you had
    while developing your implementation, you can first implement it
    then later use it to write further features or rewrite existing ones.

  - You don't have to cultivate and simultaneously hold in your head
    two different languages, their semantics, pragmatics, libraries, and
    colloquial styles as you develop your implementation.

### Cons of Bootstrapping

There are also a few disadvantages to bootstrapping the implementation of
a programming language:

  - Once you bootstrap, you forfeit any advanced feature or tooling of
    your previous cross-implementation's host language that
    you haven't yet reimplemented in your own language.

  - You can't rely on other people with respect to the implementation language:
    bugs, tooling, standards, compatibility, release cycles, etc.
    You must do it all yourself!

  - You must follow strict constraints (detailed below for Gerbil)
    to ensure that at any time you have a working bootstrap implementation
    capable of running all programs in your language
    including your current implementation.

  - In particular, when making changes to implementation, you cannot make
    incompatible changes to any feature used by the implementation itself:
    renaming a function, deleting anything, modifying some encoding, etc.
    Changes must be introduced in several steps, each generation maintaining
    compatibility with both the immediate previous and next generations.

  - The semantics of your language, the meaning of programs written in it,
    become more difficult to assess by either humans or automated analyses,
    each time you regenerate the bootstrap implementation.

  - In some rare but egregious cases, unintended bugs introduced in one version
    of the code can cause problems after several "generations" of bootstrapping
    especially in the case of insufficient regression testing,
    causing a lot of confusion and ultimately necessitating for developers
    to "go back in time" and run again a potentially long chain
    of bootstrap versions each suitably fixed.

  - In extreme cases, malicious behavior can be deliberately hidden
    in the bootstrap implementation without visible trace in the source code.
    See Ken Thompson's famous 1984 Turing Award Lecture
    ["Reflections on Trusting Trust"](http://genius.cat-v.org/ken-thompson/texts/trusting-trust/).

## The Chain of Trust

The last point on "trusting trust" has implications, whereby
the security of your software against "supply chain attacks"
depends on a chain of trust that includes your host environment
and every part of your language implementation.
Gerbil's choice of bootstrapping with Gambit Scheme as a host language
has several implications:

  - There is _no precompiled binary involved_, nor will there ever be one.
    The bootstrap is purely source based, which means you can
    actually read and audit the bootstrap sources in Gambit Scheme.
    That code is not pretty, yet remains readable and amenable to audit;
    if you feel so inclined you may take a look at
    `GERBIL_SRCDIR/src/bootstrap`.

  - Just like Gerbil bootstraps from precompiled Gambit code,
    Gambit bootstraps from precompiled C code.
    This is also auditable, albeit not an easy read.

  - The bootstrap chain is anchored on the C compiler.
    Ultimately, If you trust your C compiler,
    then you can _verifiably_ trust the Gerbil bootstrap.

For the Gerbil core team, where we all use GCC,
this can be summarized in a quotable one liner:

> In GNU we trust; everyone else pays cash.

## The Long and Arduous History of Bootstrap

The first version of the Gerbil, let’s call that the proto-Gerbil, was
bootstrapped by vyzo a long time ago using a hand-written unhygienic
interpreter for the core language.  Once that was done, vyzo wrote the
expander and the first version of the compiler, then the expander
expanded the compiler and the compiler compiled the expander and
itself... and Gerbil was born.

Initially, the runtime was written in Gambit with a set of macros;
that was called `gx-gambc`.  In the v0.18 release cycle, where Gerbil
became fully self hosted, all the traces have disappeared from the
source tree, as they are dead code. They still exist in the
repo’s commit history if you want to do some historical research and
peek into the deep past to understand the evolution of Gerbil.

## How Gerbil Builds Itself

The build process can be summarized in the following steps:
1. `configure` configures the system and creates `build-env.sh`.
2. `make` invokes the [top level build script](https://github.com/mighty-gerbils/gerbil/blob/master/build.sh)
3. `build.sh` sources `build-env.sh` and dispatches to the [worker build script](https://github.com/mighty-gerbils/gerbil/blob/master/src/build.sh).
4. The worker `build.sh` sets up the build environment and proceeds in stages:
   1. the build directory structure is prepared
   2. Gambit is bootstrapped and built.
   3. the `boot-gxi` shim is compiled using `gcc`.
   4. the Gerbil bootstrap is compiled to object code using `gsc` (stage 0).
   5. the Gerbil core system and universal binary is compiled using the bootstrap compiler with `boot-gxi` (stage 1).
   6. the newly compiled `gerbil` binary compiles the rest of the system.

## Practical Matters

### Recompiling the Bootstrap
If you have made non-breaking changes to the core runtime, prelude, expander, or
the compiler itself, then you may also want to update the precompiled
bootstrap modules (e.g. because of a bug fix).

This can be accomplished with the following incantations in `$GERBIL_SRCDIR/src`:

```
# nuke the old bootstrap
$ rm -rf bootstrap/*

# copy the builtin ssxi module
$ mkdir bootstrap/gerbil
$ cp gerbil/prelude/builtin.ssxi.ss bootstrap/gerbil

# compile the bootstrap with the current compiler
$ gxc -O -d bootstrap -s -S gerbil/prelude/core.ss gerbil/runtime/{gambit,util,system,loader,control,c3,mop,error,thread,syntax,eval,repl,init}.ss gerbil/runtime.ss gerbil/expander/{common,stx,core,top,module,compile,root,stxcase}.ss gerbil/expander.ss gerbil/compiler/{base,compile,optimize-base,optimize-xform,optimize-top,optimize-spec,optimize-ann,optimize-call,optimize,driver,ssxi}.ss gerbil/compiler.ss gerbil/prelude/gambit.ss
```

### Recursively Recompiling the bootstrap

If you have made incompatible changes (see strictures below) in the
core, the simple recompilation approach outlined above is
insufficient.  What you want to do in this case is a recursive
bootstrap recompilation.

- First build the base bootstrap, using your extant installed gxc, without generating the cross module optimization meta modules:
```
$ cd src
$ rm -rf bootstrap/*
$ gxc -no-ssxi -O -d bootstrap -s -S gerbil/prelude/core.ss gerbil/runtime/{gambit,util,system,loader,control,c3,mop,error,thread,syntax,eval,repl,init}.ss gerbil/runtime.ss gerbil/expander/{common,stx,core,top,module,compile,root,stxcase}.ss gerbil/expander.ss gerbil/compiler/{base,compile,optimize-base,optimize-xform,optimize-top,optimize-spec,optimize-ann,optimize-call,optimize,driver,ssxi}.ss gerbil/compiler.ss gerbil/prelude/gambit.ss
$ ../build.sh stage0
...
$ ../build.sh stage1
...
```

Once you have built stage1, you can use it to build the recursive bootstrap, generating the cross module optimization meta modules this time.

```
$ cd src
$ rm -rf bootstrap/*
$ mkdir -p bootstrap/gerbil
$ cp gerbil/prelude/builtin.ssxi.ss bootstrap/gerbil
$ ../build.sh env gxc -O -d bootstrap -s -S gerbil/prelude/core.ss gerbil/runtime/{gambit,util,system,loader,control,c3,mop,error,thread,syntax,eval,repl,init}.ss gerbil/runtime.ss gerbil/expander/{common,stx,core,top,module,compile,root,stxcase}.ss gerbil/expander.ss gerbil/compiler/{base,compile,optimize-base,optimize-xform,optimize-top,optimize-spec,optimize-ann,optimize-call,optimize,driver,ssxi}.ss gerbil/compiler.ss gerbil/prelude/gambit.ss
```

And you have a brand new recursive bootstrap.

### Strictures on Modifying Parts of the Gerbil Bootstrap

***Every change to the Gerbil Bootstrap
must be API-compatible from one version to the next***:
both the old and new versions of Gerbil
(before and after recompiling the bootstrap) must be able to use them.

You *can* make API-incompatible changes from one version to another version,
but this must necessarily involve *several steps*
each of which will be API-compatible:

- First, you cannot make any backward-incompatible API change, such as
  changing the calling convention of a function or macro e.g.
  so you must use a symbol instead of a string,
  or a 1-based index instead of a 0-based index, etc.
- You *could* modify a function to temporarily accept either a symbol or string
  and do a conversion inside; but you obviously cannot determine whether
  an user-provided index should be interpreted as 1-based or 0-based.
- The solution is to create a *new* API with *new* names that
  must absolutely not clash with the old names.
  Add a suffix or prefix such as `*`, `/2` or `%`, or take the opportunity
  to give functions better and/or more systematic names.
- The *old* API will temporarily coexist with use the *new* API.
- When shared data structures are involved, the *old* API
  as called by the previous bootstrap implementation may have to be
  reimplemented in terms of the *new* API used by the next generation.
- The internal representations used by the new API may thus have to include
  extra information needed by the old API that it doesn’t need,
  or the new API may have to maintain two redundant representations together,
  until after the old API is removed. This extra information
  or redundant representation can be removed in a later phase.
- You can use the old bootstrap implementation to generate a next version
  of the bootstrap implementation that uses the new API,
  while the old API remains available to the old version.
- In one or many iterations, you can make sure the old API is not used anywhere
  anymore in Gerbil and its libraries.
- Only after you bootstrapped a version of Gerbil that does not at all
  use the old API, you may wholly remove that old API:
  this is now a backward-compatible change.
- If for some reason you really like the old name or hate the new name,
  and “just” want to make an incompatible API change,
  the name is made available anew after the old API was wholly removed
  and a version that doesn’t use it has been bootstrapped into existence.
  You may therefore start a new cycle of API changes as above to modify the API
  to use this now-available-again name.
- As a cultural requirement meant to facilitate semantic analysis and
  a well-founded reproducible and debuggable bootstrapping history,
  we ask you to commit a separate PR for each phase of such an API change,
  such that each committed version of Gerbil can be compiled
  by the immediate previous one (but usually not by arbitrary older ones,
  which would be overconstraining and prevent refactoring and progress).

These strictures mean that you must stage your changes in multiple commits,
and regenerate the bootstrap compiler at each step.

### Debugging

If you have been making changes in the core system and building a new
bootstrap, you might have some bugs and need to debug. The gerbil
build script is modular, which allows you to build certain stages at
will and supports serveral commands:
- `prepare` prepares the build environment.
- `gambit` bootstraps and builds Gambit.
- `boot-gxi` builds and bootstrap gxi shim.
- `stage0` builds the Gerbil bootstrap.
- `stage1` builds the Gerbil core modules and the `gerbil` universal
  binary (aka Bach, affectionally named after the great composer of
  timeless music).
- `stdlib` builds the Gerbil standard library.
- `libgerbil` builds the Gerbil (shared) library; this includes the
  Gerbil runtime, prelude, expander and compiler, together with the
  entiry of stdlib.
- `lang` builds the bundled alternative language preludes.
- `r7rs-large` builds the R7RS large libraries included in Gerbil.
- `srfi` builds the top level srfi package shims.
- `tools` builds the gerbil tools.
- `tags` builds a TAGS file for the Gerbil sources so that you can
  easily navigate code in emacs.
- `env` applies the arguments in the build environment.

So if you have made changes and want to rebuild gerbil, you don’t have
to redo everything from scratch with `make`; you can simply build the
stage you want, and once you are satisfied you can move to the next
stage or push your branch so that CI does the job for you.

If you have introduced a bug and `gerbil` crashes, do not despair. You
can simply run with `gdb` and get the exact location of the crash to
pinpoint the bug.

Here is an example from debugging a real crash during development:
```
$ ./build.sh stdlib
[*] Building gerbil stdlib
Segmentation fault (core dumped)

$ ./build.sh env gdb gerbil
...
For help, type "help".
Type "apropos word" to search for commands related to "word"...
Reading symbols from gerbil...
(gdb) r ./std/build.ss
Starting program: /home/vyzo/gerbil/build/bin/gerbil ./std/build.ss
[Thread debugging using libthread_db enabled]
Using host libthread_db library "/lib/x86_64-linux-gnu/libthread_db.so.1".

Program received signal SIGSEGV, Segmentation fault.
___H_gerbil____runtime____gambit (___ps=0x7ffff7eda000 <___gstate0>) at /home/vyzo/gerbil/build/lib/static/gerbil__runtime__gambit.scm:4
4	  (define ##max-char (let () (declare (not safe)) (##max-char-code))))
```

Once you have successfully debugged and finished the build, you should run the tests:
```
$ ./build.sh env gerbil test ./...
...
```

And that’s it! Happy Hacking.

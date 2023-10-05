# Gerbil Release Notes
## Gerbil v0.18, Nimzowitsch

- Gerbil v0.18; to be released soon
- Gerbil v0.18-rc1; October 6, 2023

**TL;DR** Gerbil v0.18 is a milestone release, which sets the
**foundation** for Gerbil v1.0 in the near future. We affectionately
call it the **Nimzowitsch** release, after the great Chess player who
formulated the basis of modern Chess theory.

There have been cataclysmic changes, as we have finally achieved full
self hosting bootstrap (the Bootstrap Singularity) and the entirety of
the language is written in itself. Gambit is now integrated as a git
submodule, with the only dependency being on `libgambit` and `gsc` as
the compiler backend.  `gsi` is only needed for the bootstrap
compilation, after that is out of the picture and we don't even
install it.

The build system has been reworked from the ground up. We start from
the precompiled bootstrap sources, which we compile with a build
script using gsi.  The bootstrap compiler then compiles the runtime,
the expander and the prelude, and after that we build the universal
`gerbil` binary to build the rest of the system. All this is described
in detail in [The Gerbil
Bootstrap](https://cons.io/reference/dev/bootstrap.html).

The executable compilation model has been also reworked from the
ground up.  Gone are the dynamic executable stubs, we don't need them
any more as you can just run any dynamically compiled executable
module with the `gerbil` binary. Instead all executables are proper
binaries which either link to `libgerbil` and `libgambit` (as shared
libraries by default, or baked into the binary if the system is
configured with `--disable-shared`) or compiled with full program
optimization, which is akin to the old static binary compilation
model. The nomenclature has also changed, as the dynamic -vs- static
distinction refers to the _linkage_ of the executable, in line
with the native system toolchain.

The runtime has been rewritten in pure Gerbil; gone are the `gx-gambc`
gambit "modules" that provided the core runtime functionality. This
has allowed us great freedom and some very important features. We have
completely reworked the exception hierarchy to be class based and we
define our own versions of `raise`, `with-exception-handler` and
`with-catch` and ensure that all exceptions have stack traces. We have
also lifted all restrictions with regards to embedding the expander in
binary executables.  The code is there in libgerbil, and you can just
load the expander environment on demand.

The tooling has been greatly improved, with emphasis on build
isolation so that each individual project has its own GERBIL_PATH
bundling dependencies and solving once and for all the dirty `~/.gerbil`
problem that plagued earlier version of Gerbil. The tooling
improvements don't stop there of course, see [Getting Started with
Gerbil Development](https://cons.io/guide/getting-started.html), [The
Gerbil Universal Binary and
Tools](https://cons.io/reference/dev/bach.html), and [The Gerbil Build
Tool](https://cons.io/reference/dev/build.html) for more details. The
package manager has also been greatly enhanced to support a
distributed directory model and semantic versionong for dependencies;
see [The Gerbil Package
Manager](https://cons.io/guide/package-manager.html) for more details.

Speaking of tooling, we now have a dedicated test running tool which
can run your tests in the command line and works similar to `go
test`. This has allowed us to greatly increased our development
velocity and bring an "always test" mentality to Gerbil
development. You no longer have to stand in your head to run your
tests, you just write them and run them with `gerbil test`.

Moving on to linguistic and standard library changes, there is a
monumental shift with the introduction of _interfaces_, which are akin
to type-classes and similar to Go's interfaces. In short, interfaces
allow us to create facades to complex functionality and complete our
object orientation story. See [Objective
Gerbil](https://cons.io/guide/intro.html#objective-gerbil) in the
guide and [Interfaces](https://cons.io/reference/std/interface.html)
in the reference documentation.

Introducing interfaces allowed us to bring on the [Standard IO
Interfaces](https://cons.io/reference/std/stdio.html) and completely
redefine the way we do IO in Gerbil. This allowed us to rewrite almost
everything that touches IO in the standard library, with cleaner and
more performant code.

Moving on from IO, the Actor package in the standard library has been
rewritten from scratch and brings a simpler and more powerful low
level protocol and very important new functionality for managing actor
ensembles. See [Actors](https://cons.io/guide/intro.html#actors) in
the guide, the all new [Working with Actor
Ensembles](https://cons.io/tutorials/ensemble.html) tutorial, and the
[:std/actor package](https://cons.io/reference/std/actor.html) in the
reference documentation.

Another very important change, also enabled by interfaces, is the full
on embrace of openssl3 in the standard library; see [TLS/SSL
Sockets](https://cons.io/reference/std/net/ssl.html) in the reference
documentation. Everything that uses the [socket
interfaces](https://cons.io/reference/std/stdio.html#sockets) can also
transparently use SSL, with the added ability to upgrade existing
sockets after negotiation.

Following that, the
[httpd](https://cons.io/reference/std/net/httpd.html) can natively
serve requests over SSL without needing a front end proxy like
`nginx`.

Naturally, the [request library](https://cons.io/reference/std/net/request.html) has been rewriten internally to utilize interfaces, and so has the [protobuf](https://cons.io/reference/std/protobuf.html) library.

We also have completely rewritten [WebSockets](https://cons.io/reference/std/net/websocket.html#websocket-interface) and [SOCKS](https://cons.io/reference/std/net/socks.html) libraries, now with server side support.

JSON RPC has also become a first class citizen, with both client and server-side support. See [JSON RPC](https://cons.io/reference/std/net/json-rpc.html) in the reference documentation for details.

Other than that, we also have a lot of new code integrated in the
standard library, graduating from its
[gerbil-utils](https://github.com/mighty-gerbils/gerbil-utils/)
incubation.

We have also refactored out libraries with foreign dependencies that
were not built by default into external packages, listed in the
[mighty gerbils
directory](https://github.com/mighty-gerbils/gerbil-directory). This
includes the `libxml`, `leveldb`, `lmdb`, and `leveldb` lbiraries.

And last but not least, we introduced [Contracts and Type
Annotations](https://cons.io/reference/std/contract.html). Contracts
can be attached to interfaces or enacted by the all powerful `using`
macro with the meta-linguistic ability to perform dotted access for
interface calls and struct and class accessors and mutators.  This
greatly reduces boilerplate and makes the code much more pleasant to
read.  See the [Proxies](https://cons.io/tutorials/proxy.html)
tutorial for the natural progression culminating in the `using` macro.

Of course this is just the bird's eye view of the changes; see the
[release
notes](https://github.com/mighty-gerbils/gerbil/releases/tag/v0.18-rc1)
for the full changelog pointing to every pr commited in this
development cycle.

In conclusion, it is safe to say that at this point Gerbil is becoming
production ready; you should already be able to use it production for
experimental and non-mission critical projects with out fear.

Happy Hacking!

## Pre-Singularity Release Notes

This is the release Changelog for releases prior to Gerbil v0.18; these are releases before the bootstrap singularity that occured in the v0.18 development cycle.

### 1-10-2022: Gerbil-v0.17

Highlights:
- Gambit v4.9.4 support.
- we now have configure and make scripts to better align with common practices.
- gxi is now a binary shim, written in C, so that we can reliably use it as script interpreter.
- the parallel build has been disabled by default to avoid problems with low memory systems.
- the expander now allows exports in top context, so that scripts can also be modules.
- the append-* primitives have been renamed to *-concatenate following Gambit. The old names
  are still available, aliased to the new primitives, for backwards comaptibility.
- def now supports curried definitions.
- inline list accumulators with list-builder.
- std/logger has been rewritten.
- std/crypto now supports SHA3, BLAKE2, and ED25519.
- std/json now sorts hash keys in output by default.
- srfi-124 now has a real ephemeron implementation, based on wills.
- the postgres driver now supports stacked queries.
- assert! has been moved from std/sugar to its own std/assert module with significantly improved
  failure messages.
- many small fixes and documentation improvements.

### 5-17-2020: Gerbil-v0.16

Highlights:
- R7RS Tangerine, Polydactyl Gerbil, Class Sealing and more.
- Overhauled std/make library and parallelized builds.
- Configure and install scripts.
- Overhauled documentation, with a beautiful new logo!
- A new Gitter chat room at https://gitter.im/gerbil-scheme/community

Incompatibilities:
- std/iter:`in-range` has been renamed to `in-iota`, with a new `in-range` compatible with Racket

Pull Requests:
- #505 - [fix] updated Gambit UTF8 options
- #504 - [fix] more twiddling with #! interpreter lines
- #503 - [doc] minor doc fix: Option name is --with-gambit
- #502 - [fix] more fixes to configure and install scripts
- #501 - [fix] don't use realpath, non-standard on BSD
- #500 - [doc] update Getting Started wrt configuration
- #499 - [fix] more build tweaks
- #498 - [fix] fix build issue when git is not present
- #497 - [fix] patch gxc's shebang at install, rather than configure, time
- #496 - [new] std/test: allow computed name in test-case
- #495 - [fix] handle architectures on which ##cpu-count is 0
- #494 - [fix] use ##cpu-count instead of reinventing it badly
- #492 - [new] std/misc/list: alias delete-duplicates to unique
- #491 - [new] Configure script
- #489 - [fix] tweaks
- #488 - [fix] refactor run-tests
- #487 - [fix] tweaks
- #486 - [fix] force UTF8 in source files
- #484 - [new] parallelize stage0
- #482 - [doc] emacs example config
- #481 - [new] parallelize the build of stdlib, to a point
- #480 - [fix] change pred-after-sequence to pred-sequence
- #479 - [new] std/misc/list: take-until take-until! drop-until
- #477 - [new] pred-after-sequence
- #476 - [fix] small fixes
- #475 - [fix] fix vector comparator
- #474 - [new] custom writers
- #472 - [fix] fix safety issues with structs
- #471 - [fix] make
- #469 - [docker] use the gerbil/gambit layer broken out
- #464 - [fix] improve docs for hash-merge
- #463 - [fix] make improvements
- #462 - [fix] conditionally import libyaml to fix tests
- #461 - [new] add yaml-key-format parameter
- #460 - [fix] string >uninterned symbol
- #458 - [fix] use ##file-exists? instead of ##os-file-info
- #456 - [fix] :std/misc/func expand pred-limit to accept #f as limit parameter too
- #455 - [fix] fix :std/misc/func pred-limit to return always #f when limit is < 1
- #454 - [new] misc/func: pred-limit
- #451 - [new] net/request: add auth: parameter supporting basic auth
- #450 - [new] misc/ports: write-file-string & write-file-lines
- #449 - [fix] fix :std/sugar chain macro
- #448 - [doc] minor doc copy edit
- #447 - [fix] improve repr for values, separate-prefix?
- #446 - [doc] document stx-source and stx-wrap-source
- #443 - [doc] add subsections for Interactive Development Macros
- #442 - [new] add ~r format specifier for repr
- #440 - [fix] dix srfi-115 regexp-replace
- #432 - [fix] check for out-of-date build-deps
- #431 - [fix] srfi-159: fix incorrect "col" calculation with ANSI escape codes
- #430 - [fix] add redirect support for put and delete
- #426 - [fix] improve split from :std/misc/list
- #424 - [new] std/sugar - chain macro
- #420 - [fix] add typecast for malloc to work with c++ compilers
- #418 - [new] add define-c-struct macro for ffi with c structs
- #416 - [fix] some more generic tuning
- #415 - [fix] generic dispatch: unroll apply for generic methods of up to 3 arguments
- #411 - [fix] make: print full binary path when compiling executables
- #410 - [fix] build system improvements
- #409 - [fix] json: go fast please!
- #408 - [fix] avoid internal expansion in @expand and @expand1
- #407 - [fix] some iterator optimizations
- #406 - [doc] gitter links
- #405 - [new] iterator comprehension filters
- #404 - [doc] unmess srfi table from 160 long line
- #403 - [gerbil.el] gerbil.el - Lexical-binding fixes and improvements
- #402 - [gerbil.el] add package header and replace global keybinding in Gerbil.el
- #401 - [fix] some more httpd bumming
- #400 - [fix] some more httpd bumming
- #399 - [new] static mux for httpd
- #398 - [fix] create target directories in make
- #397 - [fix] gxpkg: create GERBIL_PATH/lib/static if it doesn't exist
- #395 - [fix] improve the pget* family of functions
- #394 - [fix] improvements for functional composition
- #393 - [fix] compiler: refactor specializer generation out of optimize-top
- #392 - [fix] fix gxpkg: Use create-directory* to allow for existing dirs.
- #391 - [fix] some httpd optimizations
- #390 - [fix] some runtime optimizations
- #389 - [fix] fix iter-input-port bug
- #388 - [fix] optimize case-lambda dispatch and values check/list conversion
- #387 - [fix] tune iterators
- #386 - [new] function composition operators
- #385 - [fix] optimize expansion for in-naturals for loops
- #384 - [fix] optimize for loop expansion for in-iota and in-range loops
- #383 - [new] add read-all-as-u8vector and read-file-u8vector to std/misc/ports
- #382 - [fix] optimize call-method
- #381 - [doc] more documentation for sealed class performance
- #380 - [new] better sugar for local method binding
- #379 - [fix] improve specializers
- #377 - [new] add random-string to misc/string
- #376 - [fix] gxpkg: create the GERBIL_PATH hierarchy if the directories don't exist
- #375 - [new] Class sealing
- #374 - [fix] std/os/kqueue uses begin-ffi
- #371 - [fix] runtime: hook the display exception hook before trying to import any modules
- #370 - [new] add -h and -v options to gxi, understand --help in gxc
- #369 - [fix] clean up code duplication related to define-with-errno
- #368 - [new] misc/list: add 'limit' argument to split procedure
- #367 - [fix] don't use call-with-values in sort
- #366 - [fix] make gxprof work again
- #365 - [new] more file descriptor io support
- #364 - [fix] std/net/bio/file: fix bug in file-output-write
- #363 - [fix] fix issues with building languages and r7rs-large
- #362 - [new] allow read/write on raw file descriptors
- #361 - [fix] std/os/flock: close needs to be idempotent
- #359 - [fix] unlock ports created with lock on close-port
- #358 - [new] Advisory File Locking
- #357 - [new] polydactyl as a first class language in gxi
- #356 - [doc] fix assorted typos
- #355 - [doc] update documentation for utf8 encoding and decoding procedures
- #354 - [doc] fix various typos
- #353 - [fix] gxtags: correctly handle non-locat positions
- #351 - [doc] pr-338 review
- #349 - [fix] a couple of bug fixes
- #348 - [fix] skip multicast sourcing socket on NetBSD
- #347 - [fix] use C99 stdint types
- #346 - [new] polydactyl gerbil
- #344 - [fix] code cleanup: use a gerbil.pkg for stdlib and lang
- #340 - [new] misc/list: group
- #339 - [fix] std/net/bio/file: add missing package declaration
- #338 - [new] R7RS large Tangerine Edition
- #337 - [new] misc/string: string-whitespace?
- #336 - [fix] fix incompatibilities with gambit head
- #335 - [doc] normalize std/sugar documentation to new format
- #334 - [new] relative library module import paths
- #332 - [new] add awhen to std/sugar.
- #331 - [new] support .sld and .scm as valid module extensions in the expander
- #330 - [new] compiler: use .scmx extension for executable stubs
- #329 - [fix] fix predicate constructor expansion with continuation functions
- #328 - [doc] fix documentation for predicate constructor macro `?`
- #327 - [new] add non-destructive u8vector-reverse to std/misc/bytes
- #326 - [fix] build documentation from build.sh script
- #325 - [doc] add Gerbil Logo Vector Art
- #324 - [fix] prelude: fix bug in match
- #323 - [doc] update Docker section in guide
- #322 - [fix] refactor stdlib to use format-id instead of stx-identifier
- #321 - [docker] set GERBIL_HOME in Docker
- #320 - [fix] fix misspelled word in error message.
- #317 - [docker] put Gerbil binaries in PATH in the Docker container
- #310 - [fix] fix issue in r7rs prelude
- #304 - [fix] in-range not handling negative stepping
- #303 - [new] defsyntax-parameter* macro
- #302 - [new] standard syntax utilities
- #301 - [new] rename in-range to in-iota, make in-range and in-naturals Racket-compatible
- #299 - [doc] correct documentation to work with docker ci
- #297 - [fix] raise an error when in-range arguments are not integers.
- #294 - [new] new u8vector->uint function, delimiter param to u8vector->bytestring
- #293 - [new] add bytestring functions to std/misc/bytes
- #292 - [fix] hex (~x,~X) formatter now pads with #\0
- #290 - [doc] fixed typos in core builtins documentation
- #289 - [new] std/misc/bytes module
- #288 - [fix] add tty mode reset
- #287 - [fix] support $GERBIL_GSC in build0.scm
- #285 - [doc] mechanical changes to update builtin to use new doc template
- #284 - [doc] some guide / reference Cleanup
- #283 - [doc] typofix
- #282 - [doc] doc overhaul for xml.md
- #281 - [doc] update web.md to use new doc template
- #280 - [gerbil.el] use seq-subseq in gerbil-send-string function
- #277 - [doc] update std/text to use new doc template
- #276 - [fix] do not break when git cannot find any tags
- #275 - [doc] shorten function keyword syntax in misc.md
- #274 - [doc] update std/net/request to match new document template
- #271 - [doc] update MacOS homebrew $PATH instructions
- #270 - [new] split
- #269 - [new] butlast
- #268 - [new] add slice! macro
- #262 - [fix] error when trying to print u8vector representation
- #261 - [doc] more std/misc reference overhauling
- #260 - [new] add slice procedure
- #259 - [new] add redirect to http-post
- #258 - [doc] fix typos.
- #256 - [doc] typo fix
- #255 - [doc] a few smaller additions to std/misc documentation
- #254 - [fix] fix std/misc/uuid#string->uuid and confine regex to hex vals
- #253 - [doc] overhaul std/misc/list documentation, adding example code
- #252 - [doc] when-list-or-empty documentation and name doesn't match impl
- #251 - [new] add rassoc function to std/misc/list
- #249 - [fix] simplify shell scripts
- #248 - [fix] allow numbers in group-in components
- #247 - [doc] fix and clarify srfi declaration in group-in
- #246 - [new] group-in import expander
- #245 - [fix] some buffer trivia
- #243 - [new] file raw device buffers
- #241 - [gerbil.el] - quote paren-face in gerbil.el
- #239 - [fix] update for ##make-readenv signature changes in Gambit head
- #237 - [docker] remove invalid arguments to docker pull
- #235 - [fix] fix setenv arity in core prelude
- #234 - [fix] hanlde quote tails in `@list`


### 2-9-2019: Gerbil-v0.15.1

Patch release to support Gambit v4.9.3

Details:
- #231 - Updates for Gambit v4.9.3
- #226 - std/misc/string: new string-subst procedure

### 1-25-2019: Gerbil-v0.15

R7RS Red edition and many new libraries, improvements and bug fixes.

Details:
- r7rs
  - #165 - R7RS Red Edition libraries
  - #201 - Use r7rs-compliant builtins in Gambit v4.9.2
- stdlib
  - [new] std/ref
    - #164, #209 - new generic accessor and mutators, ref and ~
  - [new] std/misc/func
    - #157 - new utility procedures always and repeat
  - [new] std/misc/deque
    - #183 - double ended queues
  - [new] std/srfi/{41,121,127}-iter
    - #189 - iterators for common SRFI sequences
  - [new] std/amb
    - #192 - the AMB operator
  - [new] std/misc/rbtree
    - #197, #203, #218 - Red Black trees
  - std/coroutine
    - #204 [outdated]
    - #205 lightweight coroutines using continuations
    - #207 cothreads as heavy weight thread-based coroutines
  - [new] std/interactive
    - #208 - modularize interactive utilities used by interactive/init
  - [new] std/misc/barrier
    - #214 - thread barriers
  - std/iter
    - #218 - simplify iterator protocol
- gxpkg
  - #158 - add support for gitlab and bitbucket
  - #187, #199 - search command to search the gerbil package directory
- bug fixes and improvements
  - #156 - doc: fix example shebang
  - #157 - std/misc/list: new utility procedures flatten, flatten1
  - #162 - std/parser: fix typos in parser
  - #166 - std/srfi/1: fix typo in srfi/1 delete-duplicates!
  - #167 - std/srfi: tidy up usages of receive in std/srfi
  - #168 - runtime: better implementation for hash-clear!
  - #169 - doc: updates for gxpkg documentation
  - #170 - gxi: fix expansion of inline expressions in letrec*
  - #172 - std/misc/repr: keywords are recognized to have simple repr
  - #173 - gerbil.el: make gxc path a variable
  - #174 - std/srfi/135: break into submodules, dockercloud build was OOMing
  - #176, #181, #182 - Dockerfile improvements
  - #177, #178, #193 - make alet* expansion fully srfi compliant
  - #184 - std/misc: documentation and tests for queues and friends
  - #186 - the Gerbil package directory
  - #188 - gerbi.el: add mode hook
  - #190 - std/getopt: fix a small nit in command help display
  - #191 - doc: typo fix
  - #194, #222 - doc: links to srfi reference documentation
  - #195 - core: unify direct-struct-instance? and direct-class-instance to direct-instance?
  - #196 - doc: misc updates
  - #198 - the Gerbil Treadmill!
  - #200 - core: Support compile-time eval in cond-expand clauses
  - #206 - expander: add parameter to control rebinding
  - #210 - prelude: fix expansion of definline references
  - #212 - std/net/repl: explicitly set the interrupt handler
  - #213 - std/misc/uuid: equal? for uuids
  - #215 - std/misc/lru: normalized lru cache interface
  - #217 - doc: some fixes for iterator documentation
  - #218 - std/misc/{rbtree,lru}: iterators
  - #219 - std/make: fix gsc compilation prefix
  - #220 - std/foreign: begin-ffi macro
  - #221 - std/os/pipe: enhance interface, counter bitrot in mysql driver
  - #223 - runtime: normalize string-prefix? argument order to match srfi/13
  - #224 - std/net/sasl: better naming for client api procedures
  - #225 - std/misc/list: a new helper macro
  - #227 - HomeBrew!

Notice the new detailed Changelog format referencing all PRs in the release.

### 11-19-2018: Gerbil-v0.14

Protobufs and misc improvements and fixes; tag for Gambit v4.9.1.

- system
  - remove dependency of scripts from bash
  - GERBIL_GSC environment variable for gsc executable path
  - Dockerfile
  - some progress in the documentation project
- stdlib
  - [new] std/protobuf: Protobuf package, with custom language for direct imports.
  - [new] std/text/base58: base58 encoding and decoding
  - [feat] std/net/bio: more bio input methods, input subbuffers
  - [feat] std/misc/channel: iterators for channels
  - [feat] std/text/yaml: yaml-load-string for parsing YAML strings
  - [fix] std/text/json: fix encoding of unicode characters
  - [fix] std/crypto/libcrypto: fix OpenSSL-v1.1 support
  - [fix] std/db/postgresql: fix database name parameter in driver


### 9-6-2018: Gerbil-v0.13

The focus on performance, fixes, and documentation.

- New documentation website: https://cons.io
- prelude
  - core:
    - optimize case macro to do index-based binary search dispatch
    - defconst macro
  - gerbil/gambit/threads: thread-local variables
- runtime
  - the destroy method binding for ports was moved to :std/misc/ports
- compiler
  - full program optimization for static executables
  - deterministic names for lifted opt-lambdas
  - no longer needs GERBIL_CACHE to compile executables
  - inline cons*, specialize 2 argument foldings (foldl, foldr, andmap, ormap, filter-map)
  - inline values-count, values-ref, values->list
  - compile time check values count where possible
  - optimize keyword lambda dispatch
  - sanitize core file names [#33]
  - fix recursion bug in optimizer introduced symbol resolution
  - fix handling of optimizer introduced symbols; if it's a naked symbol, it was introduced
  - optimize match expansion; match tree fusion and common structural check elimination
  - optimize syntax-case expansion
  - optimize code for phi>0
  - don't compile debug symbols in phi in env/src debug levels; use env/phi and src/phi instead
  - arity checking for all direct calls to procedures of known arity
- expander
  - tuning and performance optimizations: 2x gxi startup time improvement
  - #lang reader has a default read-module-body for sexp syntax
- stdlib
  - std/actor: send never queues messages for dead or uninitialized threads
  - std/iter: speculatively inline list iteration in for macros
  - std/make:
    - static-include: build directive
    - pkg-config helpers
  - std/misc
    - [new] std/misc/lru: LRU caches
    - [new] std/misc/lazy: R7RS/SRFI-45 iterative lazy algorithm primives
    - [new] std/misc/text: include-text macro
  - std/net
    - std/net/httpd:
      - http-response-file for serving files
      - http-response-chunk accepts range arguments
    - std/net/websocket: hard close websockets
    - std/net/socket: support kqueue server in BSDs
  - std/text/utf8: string-utf8-length accepts substring range
  - std/os
    - std/os/fdio: add open system call
    - std/os/socket: system undefined constants have a value of #f
    - std/os/fcntl: more linux specific constants
    - [new] std/os/kqueue: kqueue support for BSDs
    - [new] signal handling:
      - std/os/signal: kill and signal definitions
      - std/os/signalfd [linux]
      - std/os/signal-handler: signal handler interface
  - std/srfi/1: tune for dispatch perfomance
- r7rs compliance
  - read-string, write-string
  - member, assoc, map, for-each
  - case else =>
  - guard
  - string/vector->list string/vector-fill!
  - fix eval in executables; implicitly load expander as needed
  - implement input-port-open? and output-port-open?
  - r7rs cond-expand, understands library features
  - fix make-promise
  - implement delay-force using :std/misc/lazy
- tools
  - gxprof samples at 1kHz


### 2-27-2018: Gerbil-v0.12

The 1500 commit monster has landed!

- language features:
  - gerbil.pkg: gerbil package directives, recognized by the expander and package manager
  - properly support read-only GERBIL_HOME
  - GERBIL_PATH and ~/.gerbil for user environment
  - support the SMP scheduler
  - new versioning scheme with git describe
- tools:
  - gxprof: the Gerbil proflier
  - gxtags: emacs TAGS for Gerbil sources
  - gxpkg: the Gerbil Package Manager
- build: new build script [david varela]
- prelude:
  - gerbil/core:
    - defstruct/defclass:
      - accept printer and equality specification
      - type macro is applicable
      - unchecked accessor/mutators for dragon power up
    - for-syntax, for-tempate import/export expanders
    - definline macro
    - defmethod defines @next-method macro
    - match understands apply patterns
  - gerbil/gambit/threads: spawn zoo
- expander:
  - support internal declares
  - parse gerbil.pkg for implicit package declarations and load path rebasing
  - fix evaluation time for negative phase imports; eval templates at phi=0 import time.
  - fix mark tracking in syntax (the macro)
  - datum->syntax accepts optional parameter to borrow marks from syntax quotes
- compiler:
  - compiled syntax marks; MacroMacro Liberation day.
  - support debug options
  - correctly track imports for side-effects
  - optimize struct-instance-init! and unchecked accessors/mutators
  - new options for gxc: -gsc-flag -gsc-option -genv -gsrc -include-gambit-sharp
- runtime:
  - reduce weight of gx-gambc1, cond-expand out the now unused bootstrap eval
  - absent-obj
  - custom structure equality and printing
  - load path consing
  - replx
  - implement class->list
  - methods for builtin record types
- interpreter:
  - system wide interactive init
  - reload
  - enter!
- stdlib:
  - the stdlib is now built with debug environments and sources to allow debug introspection
  - NEW packages and libraries:
    - std/build-script: easy package build scripts.
    - std/crypto
      - std/crypto/hmac: HMAC support
    - std/debug: debugging utilities.
      - std/debug/heap: heap walking and statistics
      - std/debug/memleak: memory leak monitoring
      - std/debug/threads: thread stack dumping
    - std/db
      - std/db/postgres: pure Gerbil PostgreSQL driver
    - std/misc
      - std/misc/completion: asynchronous completion tokens
      - std/misc/channel: buffered channels
      - std/misc/list: list utilities [fare]
      - std/misc/pqueue: heap-based priority queues
      - std/misc/process: process utilities [fare]
      - std/misc/rtd: safe runtime type descriptor accessors
      - std/misc/repr: sourcable object representation [fare]
      - std/misc/shared: equal-shared? for infinite-structure safe equality
      - std/misc/string: string utilities [fare]
      - std/misc/sync: synchronous data structures
      - std/misc/threads: thread utilities
    - std/net
      - std/net/bio: binary i/o buffers.
      - std/net/httpd: embedded HTTP/1.1 server.
      - std/net/repl: network REPL
      - std/net/sasl: SASL SCRAM authentication.
      - std/net/socket: easy raw device socket api.
      - std/net/websocket: websocket client.
      - std/net/wamp: wamp client.
    - std/os: programming with raw devices
      - ... let there be dragons
    - std/stxparam: syntax parameters.
    - std/text
      - std/text/utf8: fast utf8 encoding and decoding.
      - std/text/csv: csv parser [fare]
    - std/xml:
      - std/xml/ssax: Oleg's SSAX parser
      - std/xml/sxpath: Oleg's SXPath library
  - REWRITTEN packages and libraries:
    - std/actor: the RPC subsystem has been rewritten for performance and raw devices; streams support synchronization.
    - std/coroutine: new implementation without using sync.
    - std/event: the library internals have been rewritten; new wait and select primitives.
    - std/db/mysql: the driver has been rewritten to use dediceted threads per connection.
    - std/generic: package has been rewritten for fast cached type-based dispatch.
  - features and fixes
    - std/crypto: more consistent api, more digests and cipers
    - std/db/conpool: timeouts, release, api improvements
    - std/db/leveldb: iterators
    - std/error: timeout errors
    - std/getopt: bug fixes, help topic display
    - std/make: deterministic order for depgraphs, renamed binaries, debug options
    - std/misc/ports: more utilities
    - std/net/request: request-close for explicitly closing the request socket
    - std/text/json: json-symbolic-keys parameter
    - std/srfi/19: several fixes
    - std/sugar: let-hash, with-destroy, using macros
- languages:
  - r7rs
    - gxi --lang r7rs for repl
    - raise-continuable and r7rs-compliant exception handling
- doc:
   - stdlib.md: overview of standard library
   - core-prelude: document :gerbil/gambit symbols
   - tutorial:
     - proxy: network programming in Gerbil
     - httpd: web programming with the Gerbil httpd

### 6-5-2017: Gerbil-v0.11
- stdlib:
  - std/db
    - std/db/mysql: MySQL dbi interface with FFI driver [new]
    - std/db/leveldb: LevelDB interface with FFI driver [new]
    - std/db/conpool: connection pools for SQL databases [new]
    - std/db/dbi: reset statements after exec and query evaluation
    - std/db/sqlite: Fix SMP-safety on FFI (removes ffi_last_error)
  - std/getopt: command line argument parsing library [new]
  - std/misc/ports: port utilites (copy-port) [new]
  - std/sugar: while and until macros
  - std/iter: add iter-fini! to iteration protocol for stateful iterator cleanup
  - std/make:
    - track preludes in make-depgraph
    - use build-specs for depgraph generation with make-depgraph/spec
    - check library dependencies on build decisions
  - std/actor: final structs for messages
- r7rs:
  - scheme/base: [gambiteer] implement exact-integer-sqrt
- prelude:
  - gerbil/core
    - add u8vector primitives to <host-runtime>
    - eval is there
    - syntax/loc macro from Racket
  - gerbil/gambit:
    - gerbil/gambit/bytes: refactored synonyms for u8vector ops [new]
- expander:
  - bind core features at root context, including system-type features
  - strict refernces for positive phis
- compiler:
  - update exe stubs to hook display-exception
- runtime:
  - clean up confusing direct-* MOP functions
- doc:
  - guide.md#databases: document the :std/db package [new]
  - tutorial/kvstore.md: a key-value store server tutorial [new]

### 5-31-2017: Gerbil-v0.10
- lang/scheme: R7RS implementation
- doc/core-prelude: core prelude documentation
- prelude:
  - core:
    - more import and export expanders
    - fix @-set! expansion for multislot
  - gambit: add gc-report-set!
- compiler: fix compile-static-exe to honor gsc-options
- expander: fix core-expand-exports for nested expansions

### 5-26-2017: Gerbil-v0.9
- expander:
  - %%ref, %%app, and %%begin-module indirections for custom expansion
  - #lang reader support for custom language preludes
  - allow arbitrary extensions for modules (not just .ss)
  - fix resolution of displaced syntax-quotes
- std/parser:
  - parsing and lexing package in stdlib
  - std/parser/grammar prelude for declarative parser specification
- core prelude:
  - inline struct-instance? and direct-struct-instance?
  - remove catch, add read-line
- stdlib
  - std/make: recompile static exes when the static module is stale
  - [targit] std/crypto/libcrypto: fix compatibility issues with openssl-1.1.x
- tutorial: Custom Languages tutorial

### 5-17-2017: Gerbil-v0.8.2
Bug fix release:
- fix shell script shebangs to work on ubuntu with bash + set -eu

### 5-17-2017: Gerbil-v0.8.1
Bug fix release:
- compiler/optimize: fix bug where prelude ssxi loading short-circuited further deps
- compiler/driver: fix bug in static exe dependency collection where the prelude module deps where short-circuited
- std/make: honour verbosity in exe compilation

### 5-16-2017: Gerbil-v0.8
- compiler: optimizer improvements and static executables
  - optimizer:
    - track types for local bindings
    - lift locally defined opt/case-lambdas
    - attach inline rules to !lambdas for more complex call optimization transforms
    - track prelude imports to optimize custom preludes deeply
  - driver:
    - support static compilation
      - static: option for compiling library modules for static linkage
      - compile-static-exe for statically linked executables
    - default output directory for executables to current dir
  - gxc:
    - -static option for static compilation
    - -gsc-option and -gsc-option2 for adding arbitrary compilation options for gsc
    - print usage when invoked with no files and fix error when invoked with only options
- runtime:
  - find-method now caches struct method resolutions to the rtd vtab
- prelude:
  - extend core.ssxi to include more of the runtime and inline all simple procedures
- stdlib:
  - build static linkage modules for all stdlib
  - std/make supports static library compilation and executables
  - actor/rpc fix latent arity bug caught by the optimizer
- build:
  - [fare] use /bin/sh -eu for build scripts

### 5-11-2017: Gerbil-v0.7
- compiler: modularize and implement optimizer pass
  - optimizations:
    - lift opt lambdas and case-lambdas and optimize direct call dispatch
    - recognize struct MOP definitions and inline direct struct operations
    - cross module optimization with concurrent compilation and ssxi module generation
    - ssxi prelude for writing type declarations for the optimizer
  - gxc:
    - add -O and -no-ssxi options for optimization
    - add -cc-options and -ld-options for gsc compilation flags
    - add -h option for printing usage
- runtime:
  - new MOP functions: class-subtype? next-method call-next-method
- stdlib
  - std/text/zlib
    - support transparent gzip/deflate decompression
    - support gz compression
    - support compression and decompression of input ports
  - std/net/request
    - accept gzip/deflate encoding with transparent content decompression
  - std/iter
    - accept when and unless filters in for and it's variants
    - optimize iter transforms to use a direct iterator instead of a coroutine
    - make coroutine and input-port iter-value idempotent between iter-next calls
  - std/srfi/9
    - generate record constructor that is recognized by the optimizer
    - use interned symbols for module scoped records, as in defstruct
  - std/misc/queue and std/test
    - fix accessor bugs caught by the optimizer

### 5-3-2017: Gerbil-v0.6.1
Bug fix release:
- fix issues with disabled compiler optimizations from gce memory [gambit#249]

### 5-2-2017: Gerbil-v0.6
- gerbil/runtime:
  - MOP allows mixin structs in make-class-type; classes can now mixin structs
  - gerbil-version and gerbil-system-version
- prelude:
  - defclass allows mixing arbitrary types and defers to runtime for composition
    validation
  - fix extend-class-type-info type id
- stdlib
  - actor/rpc:
    - stream support
    - up [arbitrary] max message size to 1MB
    - offload message writes from dispatch thread to dedicated writer thread
  - db/lmdb: LMDB bindings and high level interface
  - db/dbi: add explicit methods for transactions with cached statements
  - update ffi code to use ___return instead of ___result[_voidstar]
  - fix regression with thread-interrupt! raising exceptions in recent gambit

### 4-5-2016: Gerbil-v0.5.1
- support compilation of dynamically linked executables

### 3-24-2016: Gerbil-v0.5
- Revamped build system
  - by default, build.sh builds a stage1 gerbil for faster build times
  - std/make now supports dependency graphs
  - std/build-config for optionally build libraries with foreign dependencies
  - std/build builds with depgraph and optional libraries
  - std/xml is now optionally built to avoid hard dependency on libxml2
- Optionally built libraries with foreign dependencies
  - std/text/yaml: YAML support with libyaml bindings
  - std/text/zlib: zlib support for compression/decompression
  - std/db/sqlite: sqlite3 database interface
- std/db/dbi: generic database interface
- bug fixes and small improvements

### 3-9-2016: Gerbil-v0.4
- std/web/rack: web application support with rack-style interface
- std/net/fastcgi: fastcgi support
- std/logger: basic logging support
- std/actor: more casual syntax for defproto
- prelude: struct-out export expander
- bug fixes and small improvements

### 2-28-2016: Gerbil-v0.3
- std/test unit testing and basic tests for stdlib
- std/iter iteration macros (for,for/collect,for/fold)
- bug fixes and small  improvements

### 2-20-2016: Gerbil-v0.2
- Unification of object type hierarchy
- More specific errors from stdlib
- Generics

### 2-15-2016: Gerbil-v0.1
- first gerbil release tag; core gerbil with batteries and introductory documentation

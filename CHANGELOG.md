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

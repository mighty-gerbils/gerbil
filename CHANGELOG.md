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

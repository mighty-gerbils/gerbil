## Runtime Symbol Bindings

The runtime bindings exported by the prelude are all externs collected in nested modules,
which allows for easy reuse in custom languages.

### Runtime [phi=0] Bindings

This includes the `<runtime>` prelude module, which is composed by the `<r5rs-runtime>` and
`<host-runtime>` modules.

#### &lt;r5rs-runtime&gt;

Defines the following symbols as externs:
```
    ;; 6.1 equivalence
    eq? eqv? equal?
    ;; 6.2 numbers
    number? complex? real? rational? integer?
    exact? inexact?
    = < > <= >=
    zero? positive? negative? odd? even?
    max min
    + * - /
    abs quotient remainder modulo gcd lcm
    floor ceiling truncate round
    numerator denominator rationalize
    exp log sin cos tan asin acos atan
    sqrt expt
    make-rectangular make-polar real-part imag-part magnitude angle
    exact->inexact inexact->exact
    number->string string->number
    ;; 6.3 other data types
    ;;  6.3.1 bool
    not boolean?
    ;;  6.3.2 pairs
    pair? cons car cdr set-car! set-cdr!
    caar cadr cdar cddr
    caaar cadar caadr caddr
    cdaar cddar cdadr cdddr
    caaaar caadar caaadr caaddr
    cadaar caddar cadadr cadddr
    cdaaar cdadar cdaadr cdaddr
    cddaar cdddar cddadr cddddr
    null? list? list length append reverse list-tail list-ref
    memq memv member
    assq assv assoc
    ;;  6.3.3 symbols
    symbol? symbol->string string->symbol
    ;;  6.3.4 characters
    char? char=? char<? char>? char<=? char>=?
    char-ci=? char-ci<? char-ci>? char-ci<=? char-ci>=?
    char-alphabetic? char-numeric? char-whitespace?
    char-upper-case? char-lower-case?
    char->integer integer->char
    char-upcase char-downcase
    ;;  6.3.5 strings
    string? make-string string
    string-length string-ref string-set!
    string=? string-ci=?
    string<? string>? string<=? string>=?
    string-ci<? string-ci>? string-ci<=? string-ci>=?
    substring string-append
    string->list list->string
    string-copy string-fill!
    ;;  6.3.6 vectors
    vector? make-vector vector
    vector-length vector-ref vector-set!
    vector->list list->vector
    vector-fill!
    ;; 6.4 control
    procedure? apply
    map for-each
    force
    call-with-current-continuation
    call-with-values values
    dynamic-wind
    ;; 6.5 eval
    eval interaction-environment scheme-report-environment
    ;; 6.6 i/o
    call-with-input-file call-with-output-file
    input-port? output-port?
    current-input-port current-output-port
    with-input-from-file with-output-to-file
    open-input-file open-output-file
    close-input-port close-output-port
    read read-char peek-char
    eof-object? char-ready?
    write display newline write-char
    load
```

#### &lt;host-runtime&gt;

Defines the following symbols as externs:
```
    immediate?
    finite? infinite? nan?
    1+ 1- fx+ fx1+ fx- fx1- fx* fx/
    fixnum? nonnegative-fixnum?
    fxzero? fxpositive? fxnegative? fxodd? fxeven?
    fixnum->char char->fixnum fixnum->flonum
    fxmax fxmin fxabs fxnot fxand fxior fxxor fxand fxmodulo
    fxbit-set? fxarithmetic-shift fxshift
    fx< fx<= fx= fx>= fx>
    flonum?
    fl+ fl- fl* fl/ fl< fl<= fl= fl>= fl>
    flzero? flpositive? flnegative?
    flnan? flinfinite? flfinite? flinteger?
    flmax flmin
    box? box unbox set-box!
    make-list cons*
    foldl foldr andmap ormap filter filter-map iota last last-pair
    memf assgetq find
    remove1 remq remv remf
    pgetq pgetv pget
    subvector subvector->list subvector-fill!
    vector-map vector-copy vector-append
    true true? false void void? eof-object identity
    dssl-object? dssl-key-object? dssl-rest-object? dssl-optional-object?
    values-count values->list
    make-hash-table make-hash-table-eq make-hash-table-eqv
    hash-table?
    hash->list hash->plist
    list->hash-table list->hash-table-eq list->hash-table-eqv
    plist->hash-table plist->hash-table-eq plist->hash-table-eqv
    hash-length hash-ref hash-get hash-put! hash-remove! hash-update! hash-key?
    hash-find hash-for-each hash-map hash-fold
    hash-keys hash-values
    hash-copy hash-copy!
    hash-merge hash-merge!
    uninterned-symbol? interned-symbol? string->uninterned-symbol
    gensym make-symbol make-uninterned-symbol symbol-hash
    keyword? uninterned-keyword? interned-keyword? keyword-hash
    string->bytes bytes->string
    string->keyword keyword->string make-uninterned-keyword
    symbol->keyword keyword->symbol
    substring-fill! substring-move! string-shrink!
    string-concatenate
    string-map string-index string-rindex
    string-split string-join string-empty?
    ;; MOP
    type-descriptor?
    struct-type?
    class-type?
    make-struct-type
    make-struct-predicate
    make-struct-field-accessor
    make-struct-field-mutator
    struct-field-ref
    struct-field-set!
    direct-field-ref
    direct-field-set!
    make-class-type
    make-class-predicate
    make-class-slot-accessor
    make-class-slot-mutator
    class-slot-ref
    class-slot-set!
    direct-slot-ref
    direct-slot-set!
    object? object-type
    struct-instance? class-instance?
    direct-struct-instance? direct-class-instance?
    make-object
    struct-copy
    struct->list class->list
    make-struct-instance make-direct-struct-instance
    make-class-instance make-direct-class-instance
    direct-struct-instance-init!
    direct-class-instance-init!
    direct-constructor-init!
    slot-ref slot-set!
    call-method
    bind-method!
    method-ref direct-method-ref bound-method-ref
    find-method
    next-method call-next-method
    struct-subtype? class-subtype?
    ;; generics
    make-generic generic? generic-id
    generic-add-method!
    generic-dispatch
    ;; control
    current-error-port
    make-promise promise?
    make-parameter call-with-parameters
    call-with-escape
    with-unwind-protect
    current-exception-handler with-exception-handler
    with-catch
    error raise raise-type-error
    exception? error-object? type-error?
    exception::t error::t
    error? error-trace error-message error-irritants
    ;; OS
    exit getenv setenv
    current-directory create-directory create-directory*
    delete-file copy-file rename-file
    delete-directory directory-files
    file-exists? file-newer? file-type
    path-expand path-normalize
    path-extension path-strip-extension
    path-directory path-strip-directory
    path-strip-trailing-directory-separator
    ;; reader
    AST::t AST? AST-e AST-source make-AST
    read-syntax read-syntax-from-file
    source-location? source-location-path? source-location-path
    ;; required by the module reader to support #lang
    datum-parsing-exception? datum-parsing-exception-filepos
    read-line read-all
    ;; string and vector moves
    vector-concatenate subvector-move! vector-shrink!
    string-concatenate substring-move! string-shrink!
    ;; string I/O
    write-substring
    open-input-string open-output-string get-output-string
    call-with-input-string with-input-from-string
    call-with-output-string with-output-to-string
    ;; bytes
    u8vector? u8vector
    make-u8vector u8vector-length u8vector-ref u8vector-set!
    u8vector->list list->u8vector
    u8vector-fill! u8vector-shrink!
    u8vector-copy u8vector-append
    subu8vector subu8vector-fill! subu8vector-move!
    u8vector-concatenate
    object->u8vector u8vector->object
    ;; bytes I/O
    write-subu8vector
    open-input-u8vector open-output-u8vector get-output-u8vector
    call-with-input-u8vector with-input-from-u8vector
    call-with-output-u8vector with-output-to-u8vector
    ;; generic I/O
    displayln display*
    ;;flush-output-port
    ;; etc...
    ;; Module loading
    load-module
    ;; keyword argument dispatch
    keyword-dispatch
    ;; gerbil specifics
    gerbil-version-string gerbil-system-version-string
    ;; system type information
    gerbil-system system-type
```

Also defines the following aliases:
```
  (define-alias transcript-on void)
  (define-alias transcript-off void)
  (define-alias car-set! set-car!)
  (define-alias cdr-set! set-cdr!)
  (define-alias box-set! set-box!)
  (define-alias call/cc         call-with-current-continuation)
  (define-alias call/esc        call-with-escape)
  (define-alias call/values     call-with-values)
  (define-alias call/parameters call-with-parameters)

```

### Syntax [phi=1] Bindings

The bindings include `<runtime>` and `<expander-runtime>`, which contains symbols
defined by the expander.

#### &lt;expander-runtime&gt;

Defines the following symbols as extern:
```
    ;; syntax and friends
    raise-syntax-error syntax-error?
    identifier? identifier-list? free-identifier=? bound-identifier=?
    datum->syntax syntax->datum syntax-e syntax->list
    genident gentemps
    stx-identifier
    stx-boolean? stx-keyword? stx-char? stx-number? stx-fixnum? stx-string?
    stx-null? stx-pair? stx-pair/null? stx-list?
    stx-box? stx-vector? stx-datum?
    stx-eq? stx-eqv? stx-equal? stx-false?
    stx-e stx-source stx-wrap-source
    stx-car stx-cdr stx-length
    stx-for-each stx-map stx-foldl stx-foldr stx-reverse
    stx-last stx-last-pair stx-list-tail stx-list-ref
    stx-andmap stx-ormap
    stx-plist? stx-getq
    macro-expand-syntax
    macro-expand-syntax-case
    syntax-pattern? syntax-local-pattern?
    make-syntax-pattern syntax-pattern-id syntax-pattern-depth
    syntax-check-splice-targets
    syntax-split-splice
    underscore? ellipsis?
    check-duplicate-identifiers
    ;; core expander -- user api
    current-expander-context
    current-expander-marks
    current-expander-path
    current-expander-phi
    current-module-reader-path
    current-module-reader-args
    local-context? top-context? module-context? prelude-context?
    expander-context-id  module-context-ns
    make-local-context
    eval-syntax core-expand core-expand-head core-expand-expression+1
    import-module eval-module
    core-library-module-path? core-resolve-library-module-path
    core-resolve-module-path
    core-quote-syntax
    core-identifier=? core-identifier-key
    core-apply-expander
    syntax-local-introduce syntax-local-rewrap syntax-local-unwrap
    syntax-local-e syntax-local-value
    resolve-identifier core-resolve-identifier
    binding? binding-id
    runtime-binding? top-binding? module-binding? extern-binding?
    syntax-binding? syntax-binding-e
    alias-binding? alias-binding-e
    import-binding? import-binding-e
    expander? expander-binding? expander-e expander-binding-e
    feature-expander?
    user-expander? make-user-expander
    user-expander-context user-expander-phi
    import-expander? make-import-expander
    export-expander? make-export-expander
    module-import? make-module-import
    module-import-source module-import-name module-import-phi
    module-import-weak?
    module-export? make-module-export
    module-export-context module-export-key module-export-phi
    module-export-name module-export-weak?
    import-set? import-set-source import-set-phi import-set-imports
    export-set? export-set-source export-set-phi export-set-exports
    core-resolve-module-export
    core-module-export->import
    core-expand-import-source
    core-expand-export-source

```

### More Gambit Symbols

There are more symbols provided by the Gambit runtime, which you may find useful
in systems programming. These are not defined in the core prelude by default to
avoid bloat. Instead, they are defined in the `:gerbil/gambit` module and
its submodules in the `gerbil/gambit` package.

So in order to have the full Gerbil on Gambit symbols available, in addition to
the core prelude, you need to import the extended symbols with
``` scheme
(import :gerbil/gambit)
```

The package module aggregates and re-exports the following modules.

#### :gerbil/gambit/bits
Symbols related to bit manipulation.

```
  arithmetic-shift
  bitwise-merge bitwise-and bitwise-ior bitwise-xor bitwise-not
  bit-count integer-length bit-set? any-bits-set? all-bits-set?
  first-set-bit
  extract-bit-field test-bit-field? clear-bit-field
  replace-bit-field copy-bit-field
```

#### :gerbil/gambit/bytes
Aliases u8vector to bytes names, `@bytes` macro.

```
  @bytes
  bytes?
  make-bytes
  bytes
  bytes-length
  bytes-ref
  bytes-set!
  bytes->list
  list->bytes
  bytes-fill!
  subbytes-fill!
  bytes-concatenate
  bytes-copy
  bytes-append
  subbytes
  bytes-move!
  bytes-shrink!
  object->bytes
  bytes->object
  open-input-bytes
  open-output-bytes
  get-output-bytes
  call-with-input-bytes
  with-input-from-bytes
  call-with-output-bytes
  with-output-to-bytes
  read-byte
  write-byte
  read-subbytes
  write-subbytes
  write-bytes
  read-bytes
```

#### :gerbil/gambit/continuations
Symbols related to continuation management.

```
  continuation? continuation-capture continuation-graft continuation-return
  display-exception-in-context display-procedure-environment
  display-continuation-environment
  display-continuation-dynamic-environment
  display-continuation-backtrace

```

#### :gerbil/gambit/exceptions
Symbols related to gambit exceptions.

```
  display-exception

  primordial-exception-handler
  err-code->string

  fixnum-overflow-exception?
  fixnum-overflow-exception-procedure
  fixnum-overflow-exception-arguments

  initialized-thread-exception?
  initialized-thread-exception-procedure
  initialized-thread-exception-arguments
  uninitialized-thread-exception?
  uninitialized-thread-exception-procedure
  uninitialized-thread-exception-arguments
  inactive-thread-exception?
  inactive-thread-exception-procedure
  inactive-thread-exception-arguments

  unterminated-process-exception?
  unterminated-process-exception-procedure
  unterminated-process-exception-arguments

  nonempty-input-port-character-buffer-exception?
  nonempty-input-port-character-buffer-exception-arguments
  nonempty-input-port-character-buffer-exception-procedure

  unbound-serial-number-exception?
  unbound-serial-number-exception-procedure
  unbound-serial-number-exception-arguments
  unbound-table-key-exception?
  unbound-table-key-exception-procedure
  unbound-table-key-exception-arguments

  mailbox-receive-timeout-exception?
  mailbox-receive-timeout-exception-procedure
  mailbox-receive-timeout-exception-arguments
  heap-overflow-exception?
  stack-overflow-exception?
  os-exception?
  os-exception-procedure
  os-exception-arguments
  os-exception-code
  os-exception-message
  no-such-file-or-directory-exception?
  no-such-file-or-directory-exception-procedure
  no-such-file-or-directory-exception-arguments
  unbound-os-environment-variable-exception?
  unbound-os-environment-variable-exception-procedure
  unbound-os-environment-variable-exception-arguments
  scheduler-exception?
  scheduler-exception-reason
  deadlock-exception?
  abandoned-mutex-exception?
  join-timeout-exception?
  join-timeout-exception-procedure
  join-timeout-exception-arguments
  started-thread-exception?
  started-thread-exception-procedure
  started-thread-exception-arguments
  terminated-thread-exception?
  terminated-thread-exception-procedure
  terminated-thread-exception-arguments
  uncaught-exception?
  uncaught-exception-procedure
  uncaught-exception-arguments
  uncaught-exception-reason
  cfun-conversion-exception?
  cfun-conversion-exception-procedure
  cfun-conversion-exception-arguments
  cfun-conversion-exception-code
  cfun-conversion-exception-message
  sfun-conversion-exception?
  sfun-conversion-exception-procedure
  sfun-conversion-exception-arguments
  sfun-conversion-exception-code
  sfun-conversion-exception-message
  multiple-c-return-exception?
  datum-parsing-exception?
  datum-parsing-exception-kind
  datum-parsing-exception-parameters
  datum-parsing-exception-readenv
  expression-parsing-exception?
  expression-parsing-exception-kind
  expression-parsing-exception-parameters
  expression-parsing-exception-source
  unbound-global-exception?
  unbound-global-exception-variable
  unbound-global-exception-code
  unbound-global-exception-rte
  type-exception?
  type-exception-procedure
  type-exception-arguments
  type-exception-arg-num
  type-exception-type-id
  range-exception?
  range-exception-procedure
  range-exception-arguments
  range-exception-arg-num
  divide-by-zero-exception?
  divide-by-zero-exception-procedure
  divide-by-zero-exception-arguments
  improper-length-list-exception?
  improper-length-list-exception-procedure
  improper-length-list-exception-arguments
  improper-length-list-exception-arg-num
  wrong-number-of-arguments-exception?
  wrong-number-of-arguments-exception-procedure
  wrong-number-of-arguments-exception-arguments
  number-of-arguments-limit-exception?
  number-of-arguments-limit-exception-procedure
  number-of-arguments-limit-exception-arguments
  nonprocedure-operator-exception?
  nonprocedure-operator-exception-operator
  nonprocedure-operator-exception-arguments
  nonprocedure-operator-exception-code
  nonprocedure-operator-exception-rte
  unknown-keyword-argument-exception?
  unknown-keyword-argument-exception-procedure
  unknown-keyword-argument-exception-arguments
  keyword-expected-exception?
  keyword-expected-exception-procedure
  keyword-expected-exception-arguments
  error-exception?
  error-exception-message
  error-exception-parameters

  invalid-hash-number-exception?
  invalid-hash-number-exception-procedure
  invalid-hash-number-exception-arguments
```

#### :gerbil/gambit/fixnum
Symbols related to fixnum arithmetic.

```
  fxarithmetic-shift-left fxarithmetic-shift-right
  fxbit-count fxfirst-set-bit fxif fxlength
  fxquotient fxremainder
  fxwrap* fxwrap+ fxwrap-
  fxwrapabs fxwraparithmetic-shift fxwraparithmetic-shift-left
  fxwraplogical-shift-right fxwrapquotient
```

#### :gerbil/gambit/flonum
Symbols related to flonum arithmetic.

```
  flabs flacos flasin flatan flatan flceiling flcos fldenominator
  fleven? flexp flexpt flfloor fllog flround flsin flsqrt fltan fltruncate
  flnumerator fldenominator
```

#### :gerbil/gambit/foreign
Symbols related to foreign objects.

```
  foreign? foreign-tags foreign-address
  foreign-release! foreign-released?
```

#### :gerbil/gambit/hash
Symbols related to hash-tables and hashing.

```
  object->serial-number
  serial-number->object
  string=?-hash
  string-ci=?-hash
  eq?-hash
  eqv?-hash
  equal?-hash
  make-table
  table?
  table-length
  table-ref
  table-set!
  table-search
  table-for-each
  table->list
  list->table
  table-copy
  table-merge!
  table-merge
```

#### :gerbil/gambit/hvectors
Symbols related to homogeneous numeric vectors.

```
  s8vector?
  make-s8vector
  s8vector
  s8vector-length
  s8vector-ref
  s8vector-set!
  s8vector->list
  list->s8vector
  s8vector-fill!
  subs8vector-fill!
  s8vector-concatenate
  s8vector-copy
  s8vector-append
  subs8vector
  subs8vector-move!
  s8vector-shrink!
  u8vector?
  make-u8vector
  u8vector
  u8vector-length
  u8vector-ref
  u8vector-set!
  u8vector->list
  list->u8vector
  u8vector-fill!
  subu8vector-fill!
  u8vector-concatenate
  u8vector-copy
  u8vector-append
  subu8vector
  subu8vector-move!
  u8vector-shrink!
  s16vector?
  make-s16vector
  s16vector
  s16vector-length
  s16vector-ref
  s16vector-set!
  s16vector->list
  list->s16vector
  s16vector-fill!
  subs16vector-fill!
  s16vector-concatenate
  s16vector-copy
  s16vector-append
  subs16vector
  subs16vector-move!
  s16vector-shrink!
  u16vector?
  make-u16vector
  u16vector
  u16vector-length
  u16vector-ref
  u16vector-set!
  u16vector->list
  list->u16vector
  u16vector-fill!
  subu16vector-fill!
  u16vector-concatenate
  u16vector-copy
  u16vector-append
  subu16vector
  subu16vector-move!
  u16vector-shrink!
  s32vector?
  make-s32vector
  s32vector
  s32vector-length
  s32vector-ref
  s32vector-set!
  s32vector->list
  list->s32vector
  s32vector-fill!
  subs32vector-fill!
  s32vector-concatenate
  s32vector-copy
  s32vector-append
  subs32vector
  subs32vector-move!
  s32vector-shrink!
  u32vector?
  make-u32vector
  u32vector
  u32vector-length
  u32vector-ref
  u32vector-set!
  u32vector->list
  list->u32vector
  u32vector-fill!
  subu32vector-fill!
  u32vector-concatenate
  u32vector-copy
  u32vector-append
  subu32vector
  subu32vector-move!
  u32vector-shrink!
  s64vector?
  make-s64vector
  s64vector
  s64vector-length
  s64vector-ref
  s64vector-set!
  s64vector->list
  list->s64vector
  s64vector-fill!
  subs64vector-fill!
  s64vector-concatenate
  s64vector-copy
  s64vector-append
  subs64vector
  subs64vector-move!
  s64vector-shrink!
  u64vector?
  make-u64vector
  u64vector
  u64vector-length
  u64vector-ref
  u64vector-set!
  u64vector->list
  list->u64vector
  u64vector-fill!
  subu64vector-fill!
  u64vector-concatenate
  u64vector-copy
  u64vector-append
  subu64vector
  subu64vector-move!
  u64vector-shrink!
  f32vector?
  make-f32vector
  f32vector
  f32vector-length
  f32vector-ref
  f32vector-set!
  f32vector->list
  list->f32vector
  f32vector-fill!
  subf32vector-fill!
  f32vector-concatenate
  f32vector-copy
  f32vector-append
  subf32vector
  subf32vector-move!
  f32vector-shrink!
  f64vector?
  make-f64vector
  f64vector
  f64vector-length
  f64vector-ref
  f64vector-set!
  f64vector->list
  list->f64vector
  f64vector-fill!
  subf64vector-fill!
  f64vector-concatenate
  f64vector-copy
  f64vector-append
  subf64vector
  subf64vector-move!
  f64vector-shrink!

```

#### :gerbil/gambit/misc
Miscellaneous symbols.

```
  pretty-print pp
  integer-sqrt integer-nth-root
  touch
  current-user-interrupt-handler defer-user-interrupts
  make-will
  will?
  will-testator
  will-execute!
```
#### :gerbil/gambit/os
OS-related symbols, including time.

```
  create-fifo
  create-link
  create-symbolic-link
  shell-command
  command-line
  current-time
  time?
  time->seconds
  timeout->time
  seconds->time
  process-times
  cpu-time
  real-time
  time
  file-info
  file-info?
  file-info-type
  file-info-device
  file-info-inode
  file-info-mode
  file-info-number-of-links
  file-info-owner
  file-info-group
  file-info-size
  file-info-last-access-time
  file-info-last-modification-time
  file-info-last-change-time
  file-info-attributes
  file-info-creation-time
  file-device
  file-inode
  file-mode
  file-number-of-links
  file-owner
  file-group
  file-size
  file-last-access-time
  file-last-modification-time
  file-last-change-time
  file-attributes
  file-creation-time
  group-info
  group-info?
  group-info-name
  group-info-gid
  group-info-members
  user-name
  user-info
  user-info?
  user-info-name
  user-info-uid
  user-info-gid
  user-info-home
  user-info-shell
  host-name
  host-info
  host-info?
  host-info-name
  host-info-aliases
  host-info-addresses
  address-infos
  address-info?
  address-info-family
  address-info-socket-type
  address-info-protocol
  address-info-socket-info
  service-info
  service-info?
  service-info-name
  service-info-aliases
  service-info-port-number
  service-info-protocol
  protocol-info
  protocol-info?
  protocol-info-name
  protocol-info-aliases
  protocol-info-number
  network-info
  network-info?
  network-info-name
  network-info-aliases
  network-info-number

  tcp-client-peer-socket-info
  tcp-client-self-socket-info
  tcp-server-socket-info
  socket-info?
  socket-info-address socket-info-family socket-info-port-number

  tty?
  tty-history tty-history-set! tty-history-max-length-set!
  tty-text-attributes-set! tty-mode-reset tty-mode-set!
  tty-type-set!

```
#### :gerbil/gambit/ports
Symbols related to i/o ports, with a couple of Gerbil specific primitives.

```
  ;; Gerbil specific
  write-string read-string write-u8vector read-u8vector

  ;; Gambit primitives
  port? close-port force-output

  input-port-timeout-set!
  output-port-timeout-set!
  input-port-line
  input-port-column
  output-port-line
  output-port-column

  output-port-width
  read-all
  read-line
  read-substring
  write-substring
  input-port-readtable
  output-port-readtable
  input-port-readtable-set!
  output-port-readtable-set!

  read-u8
  write-u8
  read-subu8vector
  write-subu8vector
  open-file
  input-port-byte-position
  output-port-byte-position
  open-tcp-client
  open-tcp-server
  tcp-service-register!
  tcp-service-unregister!

  ;; v4.8+
  make-tls-context

  socket-info?
  socket-info-family
  socket-info-port-number
  socket-info-address
  tcp-client-peer-socket-info
  tcp-client-self-socket-info
  tcp-server-socket-info

  open-directory

  open-vector
  open-input-vector
  open-output-vector
  call-with-input-vector
  call-with-output-vector
  with-input-from-vector
  with-output-to-vector
  open-vector-pipe
  get-output-vector

  open-string
  open-input-string
  open-output-string
  call-with-input-string
  call-with-output-string
  with-input-from-string
  with-output-to-string
  open-string-pipe
  get-output-string
  object->string

  print
  println

  open-u8vector open-input-u8vector open-output-u8vector
  call-with-input-u8vector with-input-from-u8vector
  call-with-output-u8vector with-output-to-u8vector
  open-u8vector-pipe
  get-output-u8vector
  object->u8vector

  open-process open-input-process open-output-process
  call-with-input-process call-with-output-process
  with-input-from-process with-output-to-process
  process-pid process-status

  with-input-from-port with-output-to-port
  input-port-char-position output-port-char-position
  open-event-queue
  open-dummy
  port-settings-set!
  input-port-bytes-buffered
  input-port-characters-buffered
  repl-input-port repl-output-port console-port

```

#### :gerbil/gambit/random
Symbols related to pseudorandom number generation and initialization of default-random-source.

```
  default-random-source
  random-integer random-real random-u8vector random-f64vector
  make-random-source random-source?
  random-source-state-ref random-source-state-set!
  random-source-randomize! random-source-pseudo-randomize!
  random-source-make-integers random-source-make-reals
  random-source-make-u8vectors random-source-make-f64vectors

  ;; aliases
  random-bytes random-source-make-bytes
```

#### :gerbil/gambit/readtables
Readtable-related symbols.

```
  current-readtable
  readtable?
  readtable-case-conversion?
  readtable-case-conversion?-set
  readtable-keywords-allowed?
  readtable-keywords-allowed?-set
  readtable-sharing-allowed?
  readtable-sharing-allowed?-set
  readtable-eval-allowed?
  readtable-eval-allowed?-set
  readtable-write-cdr-read-macros?
  readtable-write-cdr-read-macros?-set
  readtable-write-extended-read-macros?
  readtable-write-extended-read-macros?-set
  readtable-max-write-level
  readtable-max-write-level-set
  readtable-max-write-length
  readtable-max-write-length-set
  readtable-max-unescaped-char
  readtable-max-unescaped-char-set

```

#### :gerbil/gambit/system
Symbols related to the Gambit system.

```
  system-version system-version-string system-type system-type-string
  configure-command-string system-stamp
  gc-report-set!
```

#### :gerbil/gambit/threads

Symbols related to thread programming; spawn and with-lock primitives.

```
;; Gerbil thread primitives
  spawn spawn/name spawn/group spawn-actor spawn-thread
  thread-local-ref thread-local-get thread-local-set! thread-local-clear!
  thread-local-table
  with-lock
  current-thread-group

;; Gambit primitives
  current-thread
  thread?
  make-thread
  make-root-thread
  thread-name
  thread-specific
  thread-specific-set!
  thread-base-priority
  thread-base-priority-set!
  thread-priority-boost
  thread-priority-boost-set!
  thread-quantum
  thread-quantum-set!
  thread-start!
  thread-yield!
  thread-sleep!
  thread-terminate!
  thread-join!
  thread-send
  thread-receive
  thread-mailbox-next
  thread-mailbox-rewind
  thread-mailbox-extract-and-rewind
  mutex?
  make-mutex
  mutex-name
  mutex-specific
  mutex-specific-set!
  mutex-state
  mutex-lock!
  mutex-unlock!
  condition-variable?
  make-condition-variable
  condition-variable-name
  condition-variable-specific
  condition-variable-specific-set!
  condition-variable-signal!
  condition-variable-broadcast!

  make-thread-group thread-group? thread-group-name
  thread-group-parent thread-group-resume! thread-group-suspend!
  thread-group-terminate! thread-group->thread-group-list
  thread-group->thread-group-vector thread-group->thread-list
  thread-group->thread-vector
  thread-state thread-state-uninitialized? thread-state-initialized?
  thread-state-running? thread-state-running-processor
  thread-state-waiting? thread-state-waiting-for thread-state-waiting-timeout
  thread-state-normally-terminated?
  thread-state-normally-terminated-result
  thread-state-abnormally-terminated?
  thread-state-abnormally-terminated-reason
  top thread-interrupt! thread-suspend! thread-resume!
  thread-thread-group thread-init!

  processor? current-processor processor-id

```


;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; :gerbil/core prelude
prelude: :<root>
package: gerbil

(export #t
        (import: <runtime> <sugar> <MOP> <match> <more-sugar>
                 <module-sugar> <special>)
        (phi: +1 (import: <runtime> <sugar> <MOP> <macro-object>
                          <match> <more-sugar> <special>
                          <expander-runtime> <syntax-case> <syntax-sugar>
                          <more-syntax-sugar>))
        (phi: +2 (import: <runtime> <expander-runtime>)))

(provide gerbil-core)

;;;
;;; r5rs procedures
;;;
(module <r5rs-runtime>
  (export #t)
  (extern namespace: #f
    ;; 6.1 equivalnce
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
    input-port? output-port? port?
    current-input-port current-output-port
    with-input-from-file with-output-to-file
    open-input-file open-output-file
    close-input-port close-output-port
    read read-char
    eof-object?
    write display newline write-char
    load
    ;; transcript-on transcript-off ; void
    ))


;;;
;;; Gerbil Host Runtime
;;;
(module <host-runtime>
  (export #t)
  (extern namespace: #f
    immediate?
    finite? infinite? nan?
    1+ 1- fx+ fx1+ fx- fx1- fx* fx/
    fixnum? nonnegative-fixnum?
    fxzero? fxpositive? fxnegative? fxodd? fxeven?
    fixnum->flonum
    fxmax fxmin fxabs fxnot fxand fxior fxxor fxmodulo
    fxbit-set? fxarithmetic-shift fxarithmetic-shift-left fxarithmetic-shift-right
    fxshift
    fx< fx<= fx= fx>= fx> fx<0? fx<=0? fx=0? fx>=0? fx>0?
    flonum?
    fl+ fl- fl* fl/ fl< fl<= fl= fl>= fl>
    flzero? flpositive? flnegative?
    flnan? flinfinite? flfinite? flinteger?
    flmax flmin
    arithmetic-shift bitwise-and bitwise-ior bitwise-xor bitwise-not
    bitwise-merge integer-length
    box? box unbox set-box!
    make-list cons*
    foldl foldr andmap ormap filter filter-map iota last last-pair
    memf assgetq assgetv assget find
    list-set list-set!
    remove1 remq remv remf
    pgetq pgetv pget
    append-reverse append1! remove-nulls!
    subvector subvector->list subvector-fill!
    vector-copy!
    vector-map vector-for-each vector-copy vector-copy! vector-append
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
    hash-clear!
    eq?-hash eqv?-hash equal?-hash
    uninterned-symbol? interned-symbol? string->uninterned-symbol
    gensym make-symbol make-uninterned-symbol symbol-hash as-string display-as-string
    keyword? uninterned-keyword? interned-keyword? keyword-hash make-keyword
    string-map string-for-each
    string-copy string-copy! substring-fill!
    string->bytes substring->bytes bytes->string
    string->vector vector->string
    string-concatenate
    string-index string-rindex
    string-split string-join string-empty? string-prefix?
    string->keyword keyword->string make-uninterned-keyword
    symbol->keyword keyword->symbol
    ;; class linearization with C4
    c4-linearize

    ;; MOP
    class-type?
    class-type-id
    class-type-precedence-list
    class-type-all-slots
    class-type-slot-table
    class-type-properties
    class-type-constructor
    class-type-methods
    class-type-slot-list
    class-type-fields

    class-type-struct?
    class-type-final?
    class-type-sealed?

    make-struct-slot-accessor
    make-struct-slot-mutator
    make-struct-slot-unchecked-accessor
    make-struct-slot-unchecked-mutator

    make-struct-field-accessor
    make-struct-field-mutator
    make-struct-field-unchecked-accessor
    make-struct-field-unchecked-mutator

    base-struct
    class-precedence-list
    unchecked-field-ref
    unchecked-field-set!
    make-class-type
    make-class-predicate
    make-class-slot-accessor
    make-class-slot-mutator
    make-class-slot-unchecked-accessor
    make-class-slot-unchecked-mutator
    class-slot-ref
    class-slot-set!
    class-slot-offset
    unchecked-slot-ref
    unchecked-slot-set!
    object? object-type
    struct-instance? class-instance?
    direct-instance?
    make-object object-fill!
    struct-copy
    struct->list class->list
    new-instance
    make-instance
    struct-instance-init!
    class-instance-init!
    slot-ref slot-set!
    call-method
    bind-method! bind-specializer!
    seal-class!
    method-ref direct-method-ref bound-method-ref
    checked-method-ref checked-bound-method-ref
    find-method
    next-method call-next-method
    substruct? subclass?
    ;; write-env style
    write-style
    ;; control
    current-error-port
    make-promise promise?
    make-parameter call-with-parameters
    ;;call-with-prompt abort!
    with-unwind-protect
    current-exception-handler
    with-exception-handler
    with-catch
    error raise
    exception? error-object?
    error-message error-irritants error-trace
    display-exception dump-stack-trace?
    ;; OS
    exit getenv setenv
    current-directory create-directory create-directory*
    delete-file copy-file rename-file
    delete-directory directory-files
    delete-file-or-directory
    file-exists? file-newer? file-type
    path-expand path-normalize
    path-extension path-strip-extension
    path-directory path-strip-directory
    path-strip-trailing-directory-separator
    ;; reader
    AST? AST::t make-AST AST-e AST-source
    read-syntax read-syntax-from-file
    source-location? source-location-path? source-location-path
    make-syntax-error syntax-error?
    read-line read-all
    ;; string and vector moves
    vector-concatenate subvector-move! vector-shrink!
    string-concatenate substring-move! string-shrink!
    ;; string I/O
    read-substring write-substring
    open-input-string open-output-string get-output-string
    call-with-input-string with-input-from-string
    call-with-output-string with-output-to-string
    ;; bytes
    u8vector? u8vector
    make-u8vector u8vector-length u8vector-ref u8vector-set!
    u8vector->list list->u8vector
    u8vector-fill! u8vector-shrink!
    u8vector-copy u8vector-copy! u8vector-append
    subu8vector subu8vector-fill! subu8vector-move!
    u8vector-concatenate
    object->u8vector u8vector->object
    ;; bytes I/O
    read-subu8vector write-subu8vector
    open-input-u8vector open-output-u8vector get-output-u8vector
    call-with-input-u8vector with-input-from-u8vector
    call-with-output-u8vector with-output-to-u8vector
    ;; generic I/O
    displayln display*
    ;; formerly ##max-char
    max-char-code
    ;;flush-output-port
    ;; etc...
    absent-obj   ; gambit api missing optional parameter
    absent-value ; unbound hash reference atom
    ;; Module loading
    load-module
    ;; keyword argument dispatch
    keyword-dispatch keyword-rest
    ;; gerbil specifics
    gerbil-version-string gerbil-system-version-string system-version gerbil-system-manifest
    ;; build manifest
    build-manifest build-manifest/layer build-manifest/head display-build-manifest build-manifest-string
    ;; system type information
    gerbil-system system-type
    ;; voodoo doll
    gerbil-runtime-smp?
    ;; expander loading for executables
    gerbil-load-expander!
    ;; our home
    gerbil-home
    ;; path to which to compile modules and from which to load them
    gerbil-path

    ;; concurrency primitives
    spawn spawn/name spawn/group
    thread-local-ref thread-local-get thread-local-set! thread-local-clear!
    unhandled-actor-exception-hook-set!

    thread? actor-thread?
    thread-sleep! thread-join! thread-send thread-receive
    thread-specific thread-specific-set!
    make-thread thread-start! thread-yield!
    thread-name
    current-thread

    thread-thread-group
    thread-group?
    thread-group-name
    current-thread-group

    make-mutex mutex? mutex-lock! mutex-unlock! with-lock with-dynamic-lock
    make-condition-variable condition-variable?
    condition-variable-signal!
    condition-variable-broadcast!

    ;; continuation primitives
    continuation? continuation-capture continuation-graft continuation-return
    display-continuation-backtrace

    ;; time objects
    current-time
    time?
    time->seconds
    seconds->time

    ;; port utilities
    port? close-port force-output
    read-all
    read-line
    peek-char
    read-u8 peek-u8 write-u8
    char-ready?

    read-string write-string
    read-u8vector write-u8vector

    concatenate

    ;; misc r7rs procedures
    list-copy list-set!
    string-downcase string-upcase
    exact-integer?
    exact inexact
    exact-integer-sqrt
    )


  (define-alias transcript-on void)
  (define-alias transcript-off void)
  (define-alias car-set! set-car!)
  (define-alias cdr-set! set-cdr!)
  (define-alias box-set! set-box!)
  (define-alias vector-ref-set! vector-set!)
  (define-alias u8vector-ref-set! u8vector-set!)
  (define-alias call/cc         call-with-current-continuation)
  (define-alias call/esc        call-with-current-continuation)
  (define-alias call/values     call-with-values)
  (define-alias call/parameters call-with-parameters)
  ;;(define-alias call/prompt     call-with-prompt)
  )

(module <runtime>
  (import <r5rs-runtime> <host-runtime>)
  (export (import: <r5rs-runtime> <host-runtime>)))

(module <expander-runtime>
  (export #t)
  (extern namespace: gx
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
    current-expander-compiling?
    current-module-reader-path
    current-module-reader-args
    local-context? top-context? module-context? prelude-context?
    expander-context-id  module-context-ns
    module-context-import module-context-export module-context-code
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
    import-export-expander? make-import-export-expander
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
    core-expand-export-source))

(import <runtime>
        (phi: +1 <runtime> <expander-runtime>)
        (phi: +2 <runtime> <expander-runtime>))

(module <syntax-case>
  (export #t)
  (import <expander-runtime>)           ; for template
  (define-syntax syntax
    macro-expand-syntax)
  (define-syntax syntax-case
    macro-expand-syntax-case))

(import (phi: +1 <syntax-case>))

(module <syntax-sugar>
  (export #t)
  (import <expander-runtime> <syntax-case>)

  (define-syntax syntax-rules
    (lambda% (stx)
      (syntax-case stx ()
        ((_ ids clauses ...)
         (identifier-list? #'ids)
         (let-values (((body)
                       (stx-map
                        (lambda% (clause)
                          (syntax-case clause ()
                            ((hd body)
                             #'(hd (syntax body)))
                            ((hd fender body)
                             #'(hd fender (syntax body)))))
                        #'(clauses ...))))
           (syntax-case body ()
             ((clause ...)
              #'(lambda% ($stx)
                  (syntax-case $stx ids
                    clause ...)))))))))

  (define-syntax with-syntax
    (lambda% (stx)
      (syntax-case stx ()
        ((_ () body ...)
         #'(let-values () body ...))
        ((_ ((pat e)) body ...)
         #'(syntax-case e ()
             (pat (let-values () body ...))))
        ((_ ((pat e) ...) body ...)
         #'(syntax-case (list e ...) ()
             ((pat ...) (let-values () body ...)))))))

  (define-syntax with-syntax*
    (lambda% (stx)
      (syntax-case stx (values)
        ((_ () body ...)
         #'(let-values () body ...))
        ((recur (((values . hd) e) . rest) body ...)
         #'(let-values ((hd e))
             (recur rest body ...)))
        ((recur (hd . rest) body ...)
         #'(with-syntax (hd)
             (recur rest body ...))))))

  (define-syntax syntax/loc
    (lambda% (stx)
      (syntax-case stx ()
        ((_ src-stx form)
         #'(stx-wrap-source
            (syntax form)
            (stx-source src-stx)))))))

(import (phi: +1 <syntax-sugar>))

(module <sugar>
  (export (import: <sugar:1> <sugar:2> <sugar:3>))

  (module <sugar:1>
    (export #t)
    (define-syntax defrules
      (syntax-rules ()
        ((_ id kws clauses ...)
         (identifier? #'id)
         (define-syntax id
           (syntax-rules kws clauses ...)))))

    (define-alias define-rules defrules)

    (defrules defsyntax% ()
      ((_ (id . args) body ...)
       (identifier? #'id)
       (define-syntax id
         (lambda% args body ...)))
      ((_ id expr)
       (identifier? #'id)
       (define-syntax id expr)))

    (defrules defalias ()
      ((_ id alias-id)
       (define-alias id alias-id)))

    (defrules define ()
      ((_ (id . args) body ...)
       (identifier? #'id)
       (define-values (id)
         (lambda% args body ...)))
      ((_ id expr)
       (identifier? #'id)
       (define-values (id)
         expr)))

    (defrules let*-values ()
      ((_ () body ...)
       (let-values () body ...))
      ((recur (hd . rest) body ...)
       (let-values (hd)
         (recur rest body ...))))

    (defrules let ()
      ((_ id ((var arg) ... . rest) body ...)
       (identifier? #'id)
       ((letrec-values (((id) (lambda% (var ... . rest) body ...)))
          id)
        arg ...))
      ((_ hd body ...)
       (~let let-values hd body ...)))

    (defrules let* ()
      ((_ hd body ...)
       (~let let*-values hd body ...)))

    (defrules letrec ()
      ((_ hd body ...)
       (~let letrec-values hd body ...)))

    (defrules letrec* ()
      ((_ hd body ...)
       (~let letrec*-values hd body ...)))

    (defsyntax% (~let stx)
      (define-values (let-head?)
        (lambda% (x)
          (syntax-case x (values)
            ((values . ids)
             (stx-andmap identifier? #'ids))
            (_ (identifier? x)))))

      (define-values (let-head)
        (lambda% (x)
          (syntax-case x (values)
            ((values . ids) #'ids)
            (_ (list x)))))

      (syntax-case stx ()
        ((recur form (hd e) . body)
         (let-head? #'hd)
         #'(recur form ((hd e)) . body))
        ((_ form ((hd e) ...) body ...)
         (stx-andmap let-head? #'(hd ...))
         (with-syntax (((hd-bind ...)
                        (stx-map let-head #'(hd ...))))
           #'(form ((hd-bind e) ...) body ...)))))

    (defrules and ()
      ((_) #t)
      ((_ x) x)
      ((recur x . rest)
       (if x (recur . rest) #f)))

    (defrules or ()
      ((_) #f)
      ((_ x) x)
      ((recur x . rest)
       (let ($e x)
         (if $e $e (recur . rest)))))

    (defrules cond (else =>)
      ((_) #!void)
      ((_ (else body ...))
       (%#expression (begin body ...)))
      ((_ (else . _) . _)
       (syntax-error "bad syntax; misplaced else"))
      ((recur (test) . rest)
       (let ($e test)
         (if $e $e (recur . rest))))
      ((recur (test => K) . rest)
       (let ($e test)
         (if $e (K $e) (recur . rest))))
      ((recur (test body ...) . rest)
       (if test (begin body ...) (recur . rest))))

    (defrules when ()
      ((_ test expr ...)
       (if test (begin expr ...) #!void)))

    (defrules unless ()
      ((_ test expr ...)
       (if test #!void (begin expr ...))))

    (defsyntax% (syntax-error stx)
      (syntax-case stx ()
        ((_ message detail ...)
         (stx-string? #'message)
         (apply raise-syntax-error #f (stx-e #'message) stx
                (syntax->list #'(detail ...))))))

    (defrules defmutable ()
      ((_ var value)
       (begin
         (def var value)
         (set! var var)
         (void)))))

  (import <sugar:1>
          (phi: +1 <sugar:1>))

  (module <sugar:2>
    (export #t)
    ;; begin with lambda
    (defsyntax% (lambda stx)
      (define (simple-lambda? hd)
        (stx-andmap identifier? hd))

      (define (opt-lambda? hd)
        (let lp ((rest hd) (opt? #f))
          (syntax-case rest ()
            ((hd . hd-rest)
             (syntax-case #'hd ()
               ((id _)
                (identifier? #'id)
                (lp #'hd-rest #t))
               (_ (and (identifier? #'hd) (not opt?)
                       (lp #'hd-rest #f)))))
            (_ (and opt? (or (stx-null? rest)
                             (identifier? rest)))))))

      (define (opt-lambda-split hd)
        (let lp ((rest hd) (pre '()) (opt '()))
          (syntax-case rest ()
            ((hd . hd-rest)
             (syntax-case #'hd ()
               ((id e)
                (lp #'hd-rest pre
                    (cons (cons (generate-bind #'id) #'e)
                          opt)))
               (_ (lp #'hd-rest
                      (cons (generate-bind #'hd)
                            pre)
                      opt))))
            (_ (values (reverse pre)
                       (reverse opt)
                       (if (identifier? rest)
                         (generate-bind rest)
                         rest))))))

      (define (kw-lambda? hd)
        (let lp ((rest hd) (opt? #f) (key? #f))
          (syntax-case rest ()
            ((key bind . hd-rest)
             (stx-keyword? #'key)
             (syntax-case #'bind ()
               ((id _)
                (and (identifier? #'id)
                     (lp #'hd-rest opt? #t)))
               (_ (and (identifier? #'bind)
                       (lp #'hd-rest opt? #t)))))
            ((#!key id . hd-rest)
             (and (identifier? #'id)
                  (lp #'hd-rest opt? #t)))
            ((hd . hd-rest)
             (syntax-case #'hd ()
               ((id _)
                (and (identifier? #'id)
                     (lp #'hd-rest #t key?)))
               (_ (and (identifier? #'hd) (not opt?)
                       (lp #'hd-rest #f key?)))))
            (_ (and key? (or (stx-null? rest)
                             (identifier? rest)))))))

      (define (kw-lambda-split hd)
        (let lp ((rest hd) (kwvar #f) (kwargs '()) (args '()))
          (syntax-case rest ()
            ((kw bind . hd-rest)
             (stx-keyword? #'kw)
             (let (key (stx-e #'kw))
               (if (find (lambda% (kwarg) (eq? key (car kwarg))) kwargs)
                 (raise-syntax-error #f "bad syntax; duplicate keyword argument"
                                     stx hd key)
                 (syntax-case #'bind ()
                   ((id default)
                    (lp #'hd-rest kwvar
                        (cons (list key (generate-bind #'id) #'default)
                              kwargs)
                        args))
                   (_
                    (lp #'hd-rest kwvar
                        (cons (list key (generate-bind #'bind)
                                    #'(error "Missing required keyword argument"
                                        kw))
                              kwargs)
                        args))))))
            ((#!key id . hd-rest)
             (if kwvar
               (raise-syntax-error #f "bad syntax; duplicate #!key argument"
                                   stx hd #'id)
               (lp #'hd-rest
                   (generate-bind #'id)
                   kwargs args)))
            ((hd . hd-rest)
             (lp #'hd-rest kwvar kwargs (cons #'hd args)))
            (_ (values kwvar (reverse kwargs) (foldl cons rest args))))))

      (define (generate-bind e)
        (if (underscore? e)
          (genident e)
          e))

      (define (check-duplicate-bindings hd)
        (define (cons-id id ids)
          (if (underscore? id) ids (cons id ids)))

        (let lp ((rest hd) (ids '()))
          (syntax-case rest ()
            ((hd . hd-rest)
             (cond
              ((identifier? #'hd)
               (lp #'hd-rest (cons-id #'hd ids)))
              ((stx-pair? #'hd)
               (syntax-case #'hd ()
                 ((id _)
                  (lp #'hd-rest (cons-id #'id ids)))))
              ((stx-keyword? #'hd)
               (syntax-case #'hd-rest ()
                 ((hd . hd-rest)
                  (syntax-case #'hd ()
                    ((id _)
                     (lp #'hd-rest (cons-id #'id ids)))
                    (_ (lp #'hd-rest (cons-id #'hd ids)))))))
              ((eq? (stx-e #'hd) #!key)
               (syntax-case #'hd-rest ()
                 ((id . hd-rest)
                  (lp #'hd-rest (cons-id #'id ids)))))
              (else
               (error "BUG: check-duplicate-bindings" stx rest))))
            (_
             (check-duplicate-identifiers
              (if (stx-null? rest) ids (cons-id rest ids))
              stx)))))

      (define (generate-opt-primary pre opt tail body)
        (with-syntax (((pre ...)
                       pre)
                      ((opt ...)
                       (map car opt))
                      (tail tail)
                      (body body))
          #'(lambda% (pre ... opt ... . tail) . body)))

      (define (generate-opt-dispatch primary pre opt tail)
        (cons (list pre (generate-opt-clause primary pre opt))
              (generate-opt-dispatch* primary pre opt tail)))

      (define (generate-opt-dispatch* primary pre opt tail)
        (let recur ((opt-rest opt) (right '()))
          (cond
           ((pair? opt-rest)
            (with-syntax* (((values hd)
                            (caar opt-rest))
                           ((values rest)
                            (cdr opt-rest))
                           ((values right*)
                            (cons hd right))
                           ((pre-bind ...)
                            pre)
                           ((opt-bind ...)
                            (reverse right))
                           (bind hd))
              (cons
               (list #'(pre-bind ... opt-bind ... bind)
                     (generate-opt-clause primary
                       (foldr cons (reverse right*) pre)
                       rest))
               (recur rest right*))))
           ((stx-null? tail) '())
           (else
            (with-syntax (((pre ...)
                           pre)
                          ((opt ...)
                           (reverse right))
                          (tail tail)
                          (primary primary))
              (list
               (list #'(pre ... opt ... . tail)
                     (syntax/loc stx
                       (apply primary pre ... opt ... tail)))))))))

      (define (generate-opt-clause primary pre opt)
        (let recur ((opt-rest opt) (right '()))
          (if (pair? opt-rest)
            (with-syntax* (((values hd)
                            (car opt-rest))
                           ((values rest)
                            (cdr opt-rest))
                           (bind (car hd))
                           (expr (cdr hd))
                           (body (recur rest (cons #'bind right))))
              #'(let-values (((bind) expr))
                  body))
            (with-syntax (((pre ...)
                           pre)
                          ((opt ...)
                           (reverse right))
                          (primary primary))
              (syntax/loc stx
                (primary pre ... opt ...))))))

      (define (generate-kw-primary key kwargs args body)
        (define (make-body kwargs kwvals)
          (if (pair? kwargs)
            (let* ((kwarg (car kwargs))
                   (var (cadr kwarg))
                   (default (caddr kwarg))
                   (kwval (car kwvals))
                   (rest-kwargs (cdr kwargs))
                   (rest-kwvals (cdr kwvals)))
              (with-syntax ((var var)
                            (kwval kwval)
                            (default default)
                            (body (make-body rest-kwargs rest-kwvals)))
                #'(let-values (((var) (if (eq? kwval absent-value) default kwval)))
                    body)))
            (cons 'begin body)))

        (define (make-main)
          (with-syntax* ((kwvar (or key '_))
                         ((kwval ...) (gentemps (map cadr kwargs)))
                         (args args)
                         (body (make-body kwargs #'(kwval ...))))
            (syntax/loc stx
              (lambda (kwvar kwval ... . args)
                body))))

        (define (make-dispatch main)
          (with-syntax* ((kwvar (or key (genident 'keys)))
                         ((get-kw ...)
                          (map (lambda% (kwarg)
                                 (with-syntax ((key (car kwarg)))
                                   #'(hash-ref kwvar 'key absent-value)))
                               kwargs))
                          (main main))
            (syntax/loc stx
              (lambda (kwvar . args)
                (apply main kwvar get-kw ... args)))))

        (with-syntax* ((main-id (genident 'kw-lambda-main))
                       (dispatch (make-dispatch #'main-id))
                       (main (make-main)))
          #'(let-values (((main-id) main))
              dispatch)))

      (define (generate-kw-dispatch primary kwargs strict?)
        ;; when the procedure doesn't accept arbitrary keywords (strict? = #t)
        ;; generate a "perfect hash table" as a vector for the keywords
        ;; this is compile-time generated, with no associated runtime-cost.
        ;; at runtime, keyword-dispatch parses the arguments and builds
        ;; a hash table that is passed as first argument to primary.
        (with-syntax ((pht (and strict? (generate-kw-table (map car kwargs))))
                      (K primary)
                      ($args (genident 'args)))
          #'(lambda% $args (apply keyword-dispatch 'pht K $args))))

      (define (generate-kw-table kws)
        (let rehash ((pht (make-vector (length kws) #f)))
          (let lp ((rest kws))
            (if (pair? rest)
              (let* ((key  (car rest))
                     (rest (cdr rest))
                     (pos  (fxmodulo (keyword-hash key) (vector-length pht))))
                (if (vector-ref pht pos) ; collision?
                  (if (fx< (vector-length pht) 8192)
                    (rehash (make-vector (quotient (fx* 3 (vector-length pht)) 2) #f))
                    (error "Unresolvable keyword collision" kws))
                  (begin
                    (vector-set! pht pos key)
                    (lp rest))))
              pht))))

      (syntax-case stx ()
        ((_ hd . body)
         (simple-lambda? #'hd)
         #'(lambda% hd . body))
        ((_ hd . body)
         (opt-lambda? #'hd)
         (with-syntax* (((values pre opt tail)
                         (opt-lambda-split #'hd))
                        ($primary (genident 'opt-lambda))
                        (primary
                         (stx-wrap-source
                          (generate-opt-primary pre opt tail #'body)
                          (stx-source stx)))
                        ((clause ...)
                         (generate-opt-dispatch #'$primary pre opt tail))
                        (dispatch
                         (syntax/loc stx
                           (case-lambda clause ...))))
           #'(let-values ((($primary) primary))
               dispatch)))
        ((_ hd . body)
         (kw-lambda? #'hd)
         (with-syntax* ((_ (check-duplicate-bindings #'hd))
                        ((values key kwargs args)
                         (kw-lambda-split #'hd))
                        ($primary (genident 'kw-lambda))
                        (primary
                         (stx-wrap-source
                          (generate-kw-primary key kwargs args #'body)
                          (stx-source stx)))
                        (dispatch
                         (stx-wrap-source
                          (generate-kw-dispatch #'$primary kwargs (not key))
                          (stx-source stx))))
           #'(let-values ((($primary) primary))
               dispatch)))))

    (defrules def ()
      ((_ ((head . rest) . args) body ...)
       (def (head . rest)
         (lambda args body ...)))
      ((_ (id . args) body ...)
       (identifier? #'id)
       (define-values (id)
         (lambda args body ...)))
      ((_ id expr)
       (identifier? #'id)
       (define-values (id) expr)))

    (defrules def* ()
      ((_ id clauses ...)
       (identifier? #'id)
       (define-values (id)
         (case-lambda clauses ...))))

    (defrules defvalues ()
      ((_ hd expr)
       (identifier-list? #'hd)
       (define-values hd expr)))

    (defrules case ()
      ((_ expr clause ...)
       (let ($e expr)
         (~case $e clause ...))))

    (defsyntax% (~case stx)
      (define (parse-clauses e clauses)
        (let lp ((rest clauses) (datums '()) (dispatch '()) (default #f))
          (syntax-case rest ()
            ((clause . rest)
             (syntax-case #'clause (else =>)
               ((else => K)
                (if (stx-null? #'rest)
                  (with-syntax ((e e))
                    (lp '() datums dispatch #'(K e)))
                  (raise-syntax-error #f "Misplaced else clause" stx #'clause)))
               ((else body ...)
                (if (stx-null? #'rest)
                  (lp '() datums dispatch #'(begin body ...))
                  (raise-syntax-error #f "Misplaced else clause" stx #'clause)))
               (((datum ...) => K)
                (if (null? #'(datum ...))
                  (lp #'rest datums dispatch default)
                  (with-syntax ((e e))
                    (lp #'rest
                        (cons (map stx-e #'(datum ...)) datums)
                        (cons #'(K e) dispatch)
                        default))))
               (((datum ...) body ...)
                (if (null? #'(datum ...))
                  (lp #'rest datums dispatch default)
                  (lp #'rest
                      (cons (map stx-e #'(datum ...)) datums)
                      (cons #'(begin body ...) dispatch)
                      default)))))
            (()
             (begin
               (check-duplicate-datums datums)
               (values (reverse datums) (reverse dispatch) (or default #!void)))))))

      (define (check-duplicate-datums datums)
        (let (ht (make-hash-table))
          (for-each
            (lambda% (lst)
              (for-each
                (lambda% (datum)
                  (if (hash-get ht datum)
                    (raise-syntax-error #f "Duplicate datum" stx datum)
                    (hash-put! ht datum #t)))
                lst))
            datums)))

      (define (count-datums datums)
        (foldl (lambda% (lst r) (+ (length lst) r)) 0 datums))

      (define (symbolic-datums? datums)
        (andmap (lambda% (lst) (andmap symbol? lst)) datums))

      (define (char-datums? datums)
        (andmap (lambda% (lst) (andmap char? lst)) datums))

      (define (fixnum-datums? datums)
        (andmap (lambda% (lst) (andmap fixnum? lst)) datums))

      (define (eq-datums? datums)
        (andmap (lambda% (lst)
                  (andmap (lambda% (x)
                            (or (symbol? x)
                                (keyword? x)
                                (immediate? x)))
                          lst))
                datums))

      (define (generate-simple-case e datums dispatch default)
        (with-syntax ((e e))
          (let recur ((datums datums) (dispatch dispatch))
            (syntax-case datums ()
              (((datum ...) . datums)
               (syntax-case dispatch ()
                 ((cont . rest)
                  (with-syntax ((E (recur #'datums #'rest)))
                    #'(if (or (~case-test datum e) ...)
                        cont E)))))
              (_ default)))))

      (define (datum-dispatch-index datums)
        (let lp ((rest datums) (ix 0) (r '()))
          (syntax-case rest ()
            (((datum ...) . rest)
             (lp #'rest (fx1+ ix)
                 (foldl (lambda% (x r) (cons (cons x ix) r))
                        r #'(datum ...))))
            (_ r))))

      (define (duplicate-indexes? xs)
        (let (ht (make-hash-table-eq))
          (let lp ((rest xs))
            (if (pair? rest)
              (let (ix (car rest))
                (or (hash-get ht ix)
                    (begin
                      (hash-put! ht ix #t)
                      (lp (cdr rest)))))
              #f))))

      (define (generate-hash-dispatch-table indexes hash-e)
        (let lp ((len (*  2 (length indexes))))
          (let* ((hs (map (lambda% (x) (hash-e (car x))) indexes))
                 (xs (map (lambda% (h) (fxmodulo h len)) hs)))
            (if (duplicate-indexes? xs)
              (if (< len 131072)
                (lp (quotient (fx* len 3) 2))
                (raise-syntax-error #f "Cannot create perfect dispatch table" stx indexes))
              (let (tab (make-vector len #f))
                (for-each (lambda% (entry x) (vector-set! tab x entry))
                          indexes xs)
                tab)))))

      (define (generate-symbolic-dispatch e datums dispatch default)
        (let* ((indexes (datum-dispatch-index datums))
               (tab (generate-hash-dispatch-table indexes symbol-hash)))
          (if (= (length dispatch) 1)
            (let (tab (vector-map (lambda% (x) (and x (car x))) tab))
              (with-syntax ((e e)
                            (E (genident'default))
                            (t (genident'table))
                            ((cont) dispatch)
                            (default default)
                            (tab tab)
                            (tablen (vector-length tab)))
                #'(let ((E (lambda () default))
                        (t (quote tab)))
                    (if (symbol? e)
                      (let* ((h (##symbol-hash e))
                             (ix (##fxmodulo h tablen))
                             (q (##vector-ref t ix)))
                        (if (eq? q e)
                          cont
                          (E)))
                      (E)))))
            (with-syntax ((e e)
                        (E (genident'default))
                        (t (genident'table))
                        ((dispatch ...) dispatch)
                        (default default)
                        (tab tab)
                        (tablen (vector-length tab)))
            #'(let ((E (lambda () default))
                    (t (quote tab)))
                (if (symbol? e)
                  (let* ((h (##symbol-hash e))
                         (ix (##fxmodulo h tablen))
                         (q (##vector-ref t ix)))
                    (if q
                      (if (eq? (##car q) e)
                        (let (x (##cdr q))
                          (~case-dispatch x dispatch ...))
                        (E))
                      (E)))
                  (E)))))))

      (define (max-char datums)
        (foldl (lambda% (lst r) (foldl (lambda% (char r) (max (char->integer char) r))
                                 r lst))
               0 datums))

      (define (generate-char-dispatch-table indexes)
        (let* ((ixs (map (lambda% (x) (char->integer (car x))) indexes))
               (len (fx1+ (foldl max 0 ixs)))
               (vec (make-vector len #f)))
          (for-each (lambda% (entry x) (vector-set! vec x (cdr entry)))
                    indexes ixs)
          vec))

      (define (simple-char-range? tab)
        (let (end (vector-length tab))
          (let lp ((i 0))
            (let (ix (vector-ref tab i))
              (if ix
                (let lp2 ((i (fx1+ i)))
                  (if (fx< i end)
                    (let (ix* (vector-ref tab i))
                      (if (eq? ix ix*)
                        (lp2 (fx1+ i))
                        #f))
                    #t))
                (lp (fx1+ i)))))))

      (define (char-range-start tab)
        (let lp ((i 0))
          (if (vector-ref tab i)
            i
            (lp (fx1+ i)))))

      (define (generate-char-dispatch e datums dispatch default)
        (if (< (max-char datums) 128)   ; ascii
          (let* ((indexes (datum-dispatch-index datums))
                 (tab (generate-char-dispatch-table indexes)))
            (if (simple-char-range? tab)
              (let ((start (char-range-start tab))
                    (end (vector-length tab)))
                (with-syntax ((e e)
                              (E (genident 'default))
                              ((cont) dispatch)
                              (default default)
                              (start start)
                              (end end))
                  #'(let (E (lambda () default))
                      (if (char? e)
                        (let (ix (##char->integer e))
                          (if (and (##fx>= ix start) (##fx< ix end))
                            cont
                            (E)))
                        (E)))))
              (with-syntax ((e e)
                            (E (genident'default))
                            (t (genident'table))
                            ((dispatch ...) dispatch)
                            (default default)
                            (tab tab)
                            (tablen (vector-length tab)))
                #'(let ((E (lambda () default))
                        (t (quote tab)))
                    (if (char? e)
                      (let (ix (##char->integer e))
                        (if (##fx< ix tablen)
                          (let (x (##vector-ref t ix))
                            (if x
                              (~case-dispatch x dispatch ...)
                              (E)))
                          (E)))
                      (E))))))
          (generate-char-dispatch/hash e datums dispatch default)))

      (define (generate-char-dispatch/hash e datums dispatch default)
        (let* ((indexes (datum-dispatch-index datums))
               (tab (generate-hash-dispatch-table indexes char->integer)))
          (with-syntax ((e e)
                        (E (genident'default))
                        (t (genident'table))
                        ((dispatch ...) dispatch)
                        (default default)
                        (tab tab)
                        (tablen (vector-length tab)))
            #'(let ((E (lambda () default))
                    (t (quote tab)))
                (if (char? e)
                  (let* ((h (##char->integer e))
                         (ix (##fxmodulo h tablen))
                         (q (##vector-ref t ix)))
                    (if q
                      (if (eq? (##car q) e)
                        (let (x (##cdr q))
                          (~case-dispatch x dispatch ...))
                        (E))
                      (E)))
                  (E))))))

      (define (min-fixnum datums)
        (foldl (lambda% (lst r) (foldl min r lst))
               ##max-fixnum datums))

      (define (max-fixnum datums)
        (foldl (lambda% (lst r) (foldl max r lst))
               ##min-fixnum datums))

      (define (generate-fixnum-dispatch-table indexes)
        (let* ((ixs (map car indexes))
               (len (fx1+ (foldl max 0 ixs)))
               (vec (make-vector len #f)))
          (for-each (lambda% (entry x) (vector-set! vec x (cdr entry)))
                    indexes ixs)
          vec))

      (define (generate-fixnum-dispatch e datums dispatch default)
        (if (and (>= (min-fixnum datums) 0)
                 (< (max-fixnum datums) 1024))
          (let* ((indexes (datum-dispatch-index datums))
                 (tab (generate-fixnum-dispatch-table indexes))
                 (dense? (andmap values (vector->list tab))))
            (with-syntax ((e e)
                          (E (genident'default))
                          (t (genident'table))
                          ((dispatch ...) dispatch)
                          (default default)
                          (tab tab)
                          (tablen (vector-length tab)))
              (with-syntax ((do-dispatch
                             (if dense?
                               #'(~case-dispatch x dispatch ...)
                               #'(if x
                                   (~case-dispatch x dispatch ...)
                                   (E)))))
                #'(let ((E (lambda () default))
                        (t (quote tab)))
                    (if (fixnum? e)
                      (if (and (##fx>= e 0) (##fx< e tablen))
                        (let (x (##vector-ref t e))
                          do-dispatch)
                        (E))
                      (E))))))
          (generate-fixnum-dispatch/hash e datums dispatch default)))

      (define (generate-fixnum-dispatch/hash e datums dispatch default)
        (let* ((indexes (datum-dispatch-index datums))
               (tab (generate-hash-dispatch-table indexes values)))
          (with-syntax ((e e)
                        (E (genident'default))
                        (t (genident'table))
                        ((dispatch ...) dispatch)
                        (default default)
                        (tab tab)
                        (tablen (vector-length tab)))
            #'(let ((E (lambda () default))
                    (t (quote tab)))
                (if (fixnum? e)
                  (let* ((ix (##fxmodulo e tablen))
                         (q (##vector-ref t ix)))
                    (if q
                      (if (eq? (##car q) e)
                        (let (x (##cdr q))
                          (~case-dispatch x dispatch ...))
                        (E))
                      (E)))
                  (E))))))

      (define (generate-generic-dispatch e datums dispatch default)
        (let* (((values hash-e hashf eqf)
                (if (eq-datums? datums)
                  (values eq?-hash 'eq?-hash 'eq?)
                  (values equal?-hash 'equal?-hash 'equal?)))
               (indexes (datum-dispatch-index datums))
               (tab (generate-hash-dispatch-table indexes hash-e)))
          (with-syntax ((e e)
                        (E (genident 'default))
                        (t (genident 'table))
                        ((dispatch ...) dispatch)
                        (default default)
                        (tab tab)
                        (tablen (vector-length tab))
                        (hashf hashf)
                        (eqf eqf))
            #'(let ((E (lambda () default))
                    (t (quote tab)))
                (let* ((h (hashf e))
                       (ix (##fxmodulo h tablen))
                       (q (##vector-ref t ix)))
                  (if q
                    (if (eqf (##car q) e)
                      (let (x (##cdr q))
                        (~case-dispatch x dispatch ...))
                      (E))
                    (E)))))))

      (syntax-case stx ()
        ((_ e clause ...)
         (let* (((values datums dispatch default)
                 (parse-clauses #'e #'(clause ...)))
                (datum-count (count-datums datums)))
           (cond
            ((< datum-count 6)
             (generate-simple-case #'e datums dispatch default))
            ((char-datums? datums)
             (generate-char-dispatch #'e datums dispatch default))
            ((fixnum-datums? datums)
             (generate-fixnum-dispatch #'e datums dispatch default))
            ((< datum-count 12)
             (generate-simple-case #'e datums dispatch default))
            ((symbolic-datums? datums)
             (generate-symbolic-dispatch #'e datums dispatch default))
            (else
             (generate-generic-dispatch #'e datums dispatch default)))))))

    (defsyntax% (~case-test stx)
      (syntax-case stx ()
        ((_ datum e)
         (let (datum-e (stx-e #'datum))
           (cond
            ((or (symbol? datum-e)
                 (keyword? datum-e)
                 (immediate? datum-e))
             #'(eq? 'datum e))
            ((number? datum-e)
             #'(eqv? 'datum e))
            (else
             #'(equal? 'datum e)))))))

    (defrules ~case-dispatch ()
      ((_ x K ...)
       (~case-dispatch* 0 x K ...)))

    (defsyntax% (~case-dispatch* stx)
      (syntax-case stx ()
        ((_ d x)
         #'(quote #!void))
        ((_ d x K)
         #'K)
        ((_ d x K1 K2)
         (with-syntax ((x0 (stx-e #'d)))
           #'(if (##fx= x x0) K1 K2)))
        ((_ d x K1 K2 K3)
         (with-syntax ((x0 (stx-e #'d))
                       (x1 (fx1+ (stx-e #'d))))
           #'(if (##fx= x x0) K1 (if (##fx= x x1) K2 K3))))
        ((_ d x K ...)
         #'(~case-dispatch-bsearch d x K ...))))

    (defsyntax% (~case-dispatch-bsearch stx)
      (define (split lst mid)
        (let lp ((i 0) (rest lst) (left '()))
          (if (fx< i mid)
            (lp (fx1+ i) (cdr rest) (cons (car rest) left))
            (values (reverse left) rest))))

      (syntax-case stx ()
        ((_ d x K ...)
         (let* ((len (length #'(K ...)))
                (mid (quotient len 2))
                ((values left right)
                 (split #'(K ...) mid)))
           (with-syntax ((mid mid)
                         ((K-left ...) left)
                         ((K-right ...) right)
                         (d* (fx+ mid (stx-e #'d))))
             #'(if (##fx< x d*)
                 (~case-dispatch* d x K-left ...)
                 (~case-dispatch* d* x K-right ...)))))))

    (defrules do ()
      ((_ ((var init step ...) ...)
          (test fini ...)
          body ...)
       (stx-andmap identifier? #'(var ...))
       (let $loop ((var init) ...)
         (if test
           (begin #!void fini ...)
           (begin body ... ($loop (begin var step ...) ...))))))

    (defrules do-while ()
      ((_ hd (test . fini) . body)
       (do hd ((not test) . fini) . body)))

    (defrules begin0 ()
      ((_ expr) expr)
      ((_ expr rest ...)
       (let ($r expr)
         (%#expression (begin rest ...))
         $r)))

    (defrules rec (values)
      ((_ id expr)
       (identifier? #'id)
       (letrec ((id expr)) id))
      ((_ (values . ids) expr)
       (identifier-list? #'ids)
       (letrec-values ((ids expr))
         (values . ids)))
      ((_ (id . hd) body ...)
       (identifier? #'id)
       (letrec ((id (lambda hd body ...)))
         id)))

    (defsyntax% (alet stx)
      (define (let-bind? x)
        (syntax-case x ()
          ((hd e) (let-head?  #'hd))
          ((e) #t)
          (_ #f)))

      (define (let-bind x)
        (syntax-case x ()
          ((hd e) x)
          ((e) #'(_ e))))

      (define (let-head? x)
        (syntax-case x (values)
          ((values . ids)
           (stx-andmap identifier? #'ids))
          (_ (identifier? x))))

      (define (let-head x)
        (syntax-case x (values)
          ((values . ids) #'ids)
          (_ (list x))))

      (syntax-case stx ()
        ((recur (hd e) . body)
         (let-head? #'hd)
         #'(recur ((hd e)) . body))
        ((_ ((e)) body ...)     ; fast path for alet* test expressions
         #'(and e (let () body ...)))
        ((_ (bind ...) body ...)
         (stx-andmap let-bind? #'(bind ...))
         (with-syntax* ((((hd e) ...)
                         (stx-map let-bind #'(bind ...)))
                        (($e ...)
                         (gentemps #'(hd ...)))
                        ((hd-bind ...)
                         (stx-map let-head #'(hd ...))))
           #'(let-values ((($e) e) ...)
               (and $e ...
                    (let-values ((hd-bind $e) ...)
                      body ...)))))))

    (defrules alet* ()
      ((_ ()) #t)
      ((_ () body ...)
       (let () body ...))
      ((recur (hd . rest) body ...)
       (alet (hd)
         (recur rest body ...))))

    (defalias and-let* alet*)

    ;; [] ML-style list constructor
    (defrules @list (quote quasiquote)
      ((_) '())
      ((_ quote tl)
       (quote tl))
      ((_ quasiquote tl)
       (quasiquote tl))
      ((_ :: tl) tl)
      ((_ xs dots)
       (ellipsis? #'dots)
       xs)
      ((recur xs dots . rest)
       (ellipsis? #'dots)
       (foldr cons (recur . rest) xs))
      ((recur x . xs)
       (cons x (recur . xs)))
      ((_ . tl) tl))

    ;; and its cousin, the quasiquote
    (defsyntax% (quasiquote stx)
      (define (simple-quote? e)
        (syntax-case e (unquote unquote-splicing)
          ((unquote _) #f)
          ((unquote-splicing _) #f)
          ((hd . tl)
           (and (simple-quote? #'hd)
                (simple-quote? #'tl)))
          (#(e ...)
            (simple-quote? #'(e ...)))
          (#&e
           (simple-quote? #'e))
          (_ #t)))

      (define (generate e d)
        (syntax-case e (quasiquote unquote unquote-splicing)
          ((quasiquote e)
           (with-syntax ((e (generate #'e (fx1+ d))))
             #'(list 'quasiquote e)))
          ((unquote e)
           (if (fxzero? d) #'e
               (with-syntax ((e (generate #'e (fx1- d))))
                 #'(list 'unquote e))))
          ((unquote-splicing e)
           (if (fxzero? d)
             #'(foldr cons '() e)
             (with-syntax ((e (generate #'e (fx1- d))))
               #'(list 'unquote-splicing e))))
          (((unquote-splicing hd) . rest)
           (fxzero? d)
           (with-syntax ((tl (generate #'rest d)))
             #'(foldr cons tl hd)))
          ((hd . tl)
           (with-syntax ((hd (generate #'hd d))
                         (tl (generate #'tl d)))
             #'(cons hd tl)))
          (#(e ...)
            (with-syntax ((es (generate #'(e ...) d)))
              #'(list->vector es)))
          (#&e
           (with-syntax ((e (generate #'e d)))
             #'(box e)))
          (e #'(quote e))))

      (syntax-case stx ()
        ((_ e)
         (if (simple-quote? #'e)
           #'(quote e)
           (generate #'e 0)))))

    (defrules delay ()
      ((_ datum)
       (stx-datum? #'datum)
       (quote datum))
      ((_ expr)
       (make-promise (lambda% () expr))))

    ;; and end with partial lambda
    (defsyntax% (cut stx)
      (define (generate rest)
        (let lp ((rest rest) (hd '()) (body '()))
          (syntax-case rest ()
            ((e . rest)
             (syntax-case #'e (<> <...>)
               (<>
                (let (arg (genident))
                  (lp #'rest (cons arg hd) (cons arg body))))
               (<...>
                (if (stx-null? #'rest)
                  (let (tail (genident))
                    (values (foldl cons tail hd)
                            (foldl cons (list tail) body)
                            #t))
                  (raise-syntax-error #f "bad syntax; cut ellipsis <...> not in tail position" stx #'e)))
               (_ (lp #'rest hd (cons #'e body)))))
            (_ (values (reverse hd) (reverse body) #f)))))

      (syntax-case stx ()
        ((_ . body)
         (and (stx-list? #'body)
              (not (stx-null? #'body)))
         (with-syntax* (((values hd body tail?)
                         (generate #'body))
                        (hd hd)
                        (body body))
           (if tail?
             #'(lambda% hd (apply . body))
             #'(lambda% hd body))))))

    (defrules <> ())
    (defrules <...> ()))

  (import <sugar:2> (phi: +1 <sugar:2>))

  (module <sugar:3>
    (export #t)

    (defrules defsyntax ()
      ((_ (id . args) body ...)
       (identifier? #'id)
       (define-syntax id
         (lambda args body ...)))
      ((_ id expr)
       (identifier? #'id)
       (define-syntax id expr)))

    (defsyntax (definline stx)
      (syntax-case stx ()
        ((_ (id arg ...) body ...)
         (and (identifier? #'id)
              (identifier-list? #'(arg ...)))
         (with-syntax* ((impl (stx-identifier #'id #'id "__impl"))
                        ((xarg ...) (gentemps #'(arg ...)))
                        (defstx
                          (syntax/loc stx
                            (defrules id ()
                              ((_ xarg ...)
                               ((lambda (arg ...) body ...) xarg ...))
                              (ref (identifier? #'ref) impl))))
                        (defimpl
                          (syntax/loc stx
                            (def (impl arg ...) body ...))))
           (syntax/loc stx
             (begin defimpl defstx))))))

    (defrules defconst (quote)
      ((_ id (quote expr))
       (identifier? #'id)
       (defrules id ()
         (x (identifier? #'x) (quote expr))))
      ((recur id expr)
       (and (identifier? #'id) (stx-datum? #'expr))
       (recur id (quote expr)))))

  (import <sugar:3>))

(import <sugar> (phi: +1 <sugar>))

(module <MOP>
  (export  (import: <MOP:1> <MOP:4>)
           (phi: +1 (import: <MOP:1> <MOP:2> <MOP:3> <MOP:4>)))

  (module <MOP:1>
    (export #t (phi: +1 module-type-id make-class-type-id))

    (begin-syntax
      (def (module-type-id type-t)
        (cond
         ((module-context-ns (current-expander-context))
          => (lambda (ns) (stx-identifier type-t ns "#" type-t "::t")))
         (else
          (let (mid (expander-context-id (current-expander-context)))
            (stx-identifier type-t mid "#" type-t "::t")))))

      (def (make-class-type-id type-t)
        (if (module-context? (current-expander-context))
          (module-type-id type-t)
          (make-symbol "__" (gensym (stx-e type-t)) "::t")))

      (def (generate-typedef stx struct?)
        (def (wrap e-stx)
          (stx-wrap-source e-stx (stx-source stx)))

        (def (slot-name slot-spec)
          (syntax-case slot-spec ()
            ((slot getf setf) #'slot)))

        (def (class-opt? key)
          (memq (stx-e key) '(struct: slots: id: name: properties: constructor: final: mixin:)))

        (syntax-case stx ()
          ((_ type-t super make instance? . rest)
           (and (identifier? #'type-t)
                (identifier-list? #'super)
                (or (identifier? #'make)
                    (stx-false? #'make))
                (identifier? #'instance?)
                (stx-plist? #'rest class-opt?))

           (with-syntax* (((values struct?)
                           (cond
                            (struct?)
                            ((stx-getq struct: #'rest) => stx-e)
                            (else #f)))
                          ((values slots)
                           (or (stx-getq slots: #'rest)
                               []))
                          ((values mixin-slots)
                           (or (stx-getq mixin: #'rest)
                               []))
                          ((values accessible-slots)
                           (append (syntax->list slots) (syntax->list mixin-slots)))
                          ((slot ...)
                           (stx-map slot-name slots))
                          (type-id
                           (or (stx-getq id: #'rest)
                               (make-class-type-id #'type-t)))
                          (type-name
                           (or (stx-getq name: #'rest)
                               #'type-t))
                          (type-constructor
                           (stx-getq constructor: #'rest))
                          (mop-type-t (core-quote-syntax #'type-t))
                          (mop-super
                           (stx-map core-quote-syntax #'super))
                          (mop-struct? struct?)
                          (mop-final? (stx-getq final: #'rest))
                          (type-properties
                           (or (stx-getq properties: #'rest)
                               #'[]))
                          (type-properties
                           (if (stx-e #'mop-final?)
                             #'[[final: . #t] :: type-properties]
                             #'type-properties))
                          (type-properties
                           (if struct?
                             #'[[struct: . #t] :: type-properties]
                             #'type-properties))
                          (type-super
                           (cons #'list #'super))
                          (make-type-rtd
                           #'(make-class-type 'type-id 'type-name
                                              type-super '(slot ...)
                                              type-properties 'type-constructor))
                          (def-type
                            (wrap
                             #'(def type-t
                                 (begin-annotation (@mop.class type-id
                                                               mop-super
                                                               (slot ...)
                                                               type-constructor
                                                               mop-struct?
                                                               mop-final?)
                                   make-type-rtd))))
                          (def-make
                            (if (stx-false? #'make)
                              #'(begin)
                              (wrap
                               #'(def make
                                   (begin-annotation (@mop.constructor mop-type-t)
                                     (lambda $args
                                       (apply make-instance type-t $args)))))))
                          (def-predicate
                            (wrap
                             #'(def instance?
                                 (begin-annotation (@mop.predicate mop-type-t)
                                   (make-class-predicate type-t)))))

                          (((def-getf def-setf) ...)
                           (stx-map
                            (lambda (ref)
                              (syntax-case ref ()
                                ((slot getf setf)
                                 [(wrap
                                   #'(def getf
                                       (begin-annotation (@mop.accessor mop-type-t
                                                                        slot #t)
                                         (make-class-slot-accessor type-t 'slot))))
                                  (wrap
                                   #'(def setf
                                       (begin-annotation (@mop.mutator mop-type-t
                                                                       slot #t)
                                         (make-class-slot-mutator type-t 'slot))))])))
                            accessible-slots))
                          (((def-ugetf def-usetf) ...)
                           (stx-map
                            (lambda (ref)
                              (syntax-case ref ()
                                ((slot getf setf)
                                 (with-syntax ((ugetf (stx-identifier #'getf "&" #'getf))
                                               (usetf (stx-identifier #'setf "&" #'setf)))
                                   [(wrap
                                     #'(def ugetf
                                         (begin-annotation (@mop.accessor mop-type-t
                                                                          slot #f)
                                           (make-class-slot-unchecked-accessor type-t 'slot))))
                                    (wrap
                                     #'(def usetf
                                         (begin-annotation (@mop.mutator mop-type-t
                                                                         slot #f)
                                           (make-class-slot-unchecked-mutator type-t 'slot))))]))))
                            accessible-slots)))
             (wrap
              #'(begin def-type
                       def-predicate
                       def-make
                       def-getf ...
                       def-setf ...
                       def-ugetf ...
                       def-usetf ...)))))))

    (defsyntax (defstruct-type stx)
      (generate-typedef stx #t))

    (defsyntax (defclass-type stx)
      (generate-typedef stx #f)))

  (module <MOP:2>
    (import <expander-runtime> <syntax-case> <MOP:1>)
    (export #t)
    ;; class meta type; expansion time class reflection.
    (defclass-type class-type-info::t ()
      make-class-type-info
      class-type-info?
      id: gerbil.core#class-type-info::t
      name: class-type-info
      slots:
      ((id ;; Symbol
        ;; the class's type id
        !class-type-id !class-type-id-set!)
       (name ;; Symbol
        ;; the class's name
        !class-type-name !class-type-name-set!)
       (super ;; ListOf Identifier
        ;; the class's super list; identifiers point to class-type-infos
        !class-type-super !class-type-super-set!)
       (slots ;; ListOf Symbol
        ;; the class's direct slot list
        !class-type-slots !class-type-slots-set!)
       (struct? ;; Boolean
        ;; #t if the class is a struct type
        !class-type-struct? !class-type-struct?-set!)
       (final? ;; Boolean
        ;; #t if the class is final
        !class-type-final? !class-type-final?-set!)
       (constructor-method ;; OrFalse Symbol
        ;; the class's constructor method name, if any
        !class-type-constructor-method !class-type-constructor-method-set!)
       (type-descriptor ;; Identifier
        ;; the runtime identifier of the class's type descriptor
        !class-type-descriptor !class-type-descriptor-set!)
       (constructor ;; OrFalse Identifier
        ;; the class's constructor procudure identifier, if any
        !class-type-constructor !class-type-constructor-set!)
       (predicate ;; Identifier
        ;; the class's defined predicate
        !class-type-predicate !class-type-predicate-set!)
       (accessors ;; AListOf Symbol -> Identifier
        ;; the class's defined slot accessors
        !class-type-accessors !class-type-accessors-set!)
       (mutators ;; AListOf Symbol -> Identifier
        ;; the class's defined slot mutators
        !class-type-mutators !class-type-mutators-set!)
       (unchecked-accessors ;; AListOf Symbol -> Identifier
        ;; the class's defined unchecked slot accessors
        !class-type-unchecked-accessors !class-type-unchecked-accessors-set!)
       (unchecked-mutators ;; AListOf Symbol -> Identifier
        ;; the class's defined unchecked slot mutators
        !class-type-unchecked-mutators !class-type-unchecked-mutators-set!)))

    (def (class-type-info::apply-macro-expander self stx)
      (syntax-case stx ()
        ((_ arg ...)
         (cond
          ((!class-type-constructor self)
           => (lambda (make)
                (cons make #'(arg ...))))
          (else
           (raise-syntax-error #f "no constructor defined for class" stx self))))))

    (bind-method! class-type-info::t 'apply-macro-expander
                  class-type-info::apply-macro-expander)

    (def (syntax-local-class-type-info? stx (is? true))
      (and (identifier? stx)
           (alet (e (syntax-local-value stx false))
             (and (class-type-info? e)
                  (is? e))))))

  (module <MOP:3>
    (import <MOP:2> (phi: +1 <MOP:2>))
    (export #t)

    ;; meta-circular
    (defsyntax class-type-info
      (make-class-type-info
       id: 'gerbil.core#class-type-info::t
       name: 'class-type-info
       super: []
       slots: '(id name super slots struct? final? constructor-method
                   type-descriptor constructor predicate
                   accessors mutators
                   unchecked-accessors unchecked-mutators)
       struct?: #f
       final?: #f
       constructor-method: #f
       type-descriptor: (quote-syntax class-type-info::t)
       constructor: (quote-syntax make-class-type-info)
       predicate: (quote-syntax class-type-info?)
       accessors:
       [['id :: (quote-syntax !class-type-id)]
        ['name :: (quote-syntax !class-type-name)]
        ['super :: (quote-syntax !class-type-super)]
        ['slots :: (quote-syntax !class-type-slots)]
        ['struct? :: (quote-syntax !class-type-struct?)]
        ['final? :: (quote-syntax !class-type-final?)]
        ['constructor-method :: (quote-syntax !class-type-constructor-method)]
        ['type-descriptor :: (quote-syntax !class-type-descriptor)]
        ['constructor :: (quote-syntax !class-type-constructor)]
        ['predicate :: (quote-syntax !class-type-predicate)]
        ['accessors :: (quote-syntax !class-type-accessors)]
        ['mutators :: (quote-syntax !class-type-mutators)]
        ['unchecked-accessors :: (quote-syntax !class-type-unchecked-accessors)]
        ['unchecked-mutators :: (quote-syntax !class-type-unchecked-mutators)]]
       mutators:
       [['id :: (quote-syntax !class-type-id-set!)]
        ['name :: (quote-syntax !class-type-name-set!)]
        ['super :: (quote-syntax !class-type-super-set!)]
        ['slots :: (quote-syntax !class-type-slots-set!)]
        ['struct? :: (quote-syntax !class-type-struct?-set!)]
        ['final? :: (quote-syntax !class-type-final?-set!)]
        ['constructor-method :: (quote-syntax !class-type-constructor-method-set!)]
        ['type-descriptor :: (quote-syntax !class-type-descriptor-set!)]
        ['constructor :: (quote-syntax !class-type-constructor-set!)]
        ['predicate :: (quote-syntax !class-type-predicate-set!)]
        ['accessors :: (quote-syntax !class-type-accessors-set!)]
        ['mutators :: (quote-syntax !class-type-mutators-set!)]
        ['unchecked-accessors :: (quote-syntax !class-type-unchecked-accessors-set!)]
        ['unchecked-mutators :: (quote-syntax !class-type-unchecked-mutators-set!)]]
       unchecked-accessors:
       [['id :: (quote-syntax &!class-type-id)]
        ['name :: (quote-syntax &!class-type-name)]
        ['super :: (quote-syntax &!class-type-super)]
        ['slots :: (quote-syntax &!class-type-slots)]
        ['struct? :: (quote-syntax &!class-type-struct?)]
        ['final? :: (quote-syntax &!class-type-final?)]
        ['constructor-method :: (quote-syntax &!class-type-constructor-method)]
        ['type-descriptor :: (quote-syntax &!class-type-descriptor)]
        ['constructor :: (quote-syntax &!class-type-constructor)]
        ['predicate :: (quote-syntax &!class-type-predicate)]
        ['accessors :: (quote-syntax &!class-type-accessors)]
        ['mutators :: (quote-syntax &!class-type-mutators)]
        ['unchecked-accessors :: (quote-syntax &!class-type-unchecked-accessors)]
        ['unchecked-mutators :: (quote-syntax &!class-type-unchecked-mutators)]]
       unchecked-mutators:
       [['id :: (quote-syntax &!class-type-id-set!)]
        ['name :: (quote-syntax &!class-type-name-set!)]
        ['super :: (quote-syntax &!class-type-super-set!)]
        ['slots :: (quote-syntax &!class-type-slots-set!)]
        ['struct? :: (quote-syntax &!class-type-struct?-set!)]
        ['final? :: (quote-syntax &!class-type-final?-set!)]
        ['constructor-method :: (quote-syntax &!class-type-constructor-method-set!)]
        ['type-descriptor :: (quote-syntax &!class-type-descriptor-set!)]
        ['constructor :: (quote-syntax &!class-type-constructor-set!)]
        ['predicate :: (quote-syntax &!class-type-predicate-set!)]
        ['accessors :: (quote-syntax &!class-type-accessors-set!)]
        ['mutators :: (quote-syntax &!class-type-mutators-set!)]
        ['unchecked-accessors :: (quote-syntax &!class-type-unchecked-accessors-set!)]
        ['unchecked-mutators :: (quote-syntax &!class-type-unchecked-mutators-set!)]])))

  (module <MOP:4>
    (import <MOP:1> (phi: +1 <MOP:1> <MOP:2> <MOP:3>))
    (export #t)

    ;; and here we define the general MOP macros
    (begin-syntax
      (def (typedef-body? stx)
        (def (body-opt? key)
          (memq (stx-e key)
                '(id: struct: name: constructor: transparent: final: print: equal:)))
        (stx-plist? stx body-opt?))

      (def (generate-defclass stx id super-ref slots body)
        (def (wrap e-stx)
          (stx-wrap-source e-stx (stx-source stx)))

        (def make-id
          (if (uninterned-symbol? (stx-e id))
            (lambda _ (genident id))
            (lambda args
              (apply stx-identifier id args))))

        (def (get-mixin-slots super slots)
          (def tab (make-hash-table-eq))
          (def (dedup mixins)
            (let lp ((rest mixins) (r []))
              (if (pair? rest)
                (let (slot (car rest))
                  (if (hash-get tab slot)
                    (lp (cdr rest) r)
                    (begin
                      (hash-put! tab slot #t)
                      (lp (cdr rest) (cons slot r)))))
                (reverse r))))

          (stx-for-each (lambda (slot) (hash-put! tab (stx-e slot) #t)) slots)
          (cond
           ((not super) [])
           ((identifier? super)
            (dedup (get-mixin-slots-r super)))
           (else
            (dedup (concatenate (map get-mixin-slots-r super))))))

        (def (get-mixin-slots-r type-id)
          (let (info (syntax-local-value type-id))
            (append
              (!class-type-slots info)
              (concatenate (map get-mixin-slots-r (!class-type-super info))))))

        (check-duplicate-identifiers slots stx)

        (with-syntax* (((values name)
                        (symbol->string (stx-e id)))
                       ((values super)
                        (map syntax-local-value super-ref))
                       ((values struct?)
                        (stx-getq struct: body))
                       (type id)
                       (type::t   (make-id name "::t"))
                       (make-type (make-id "make-" name))
                       (type?     (make-id name "?"))
                       (type-super
                        (map !class-type-descriptor super))
                       ((slot ...)
                        slots)
                       ((getf ...)
                        (stx-map (cut make-id name "-" <>) slots))
                       ((setf ...)
                        (stx-map (cut make-id name "-" <> "-set!") slots))
                       ((values mixin-slots)
                        (get-mixin-slots super-ref slots))
                       ((mixin-slot ...)
                        mixin-slots)
                       ((mixin-getf ...)
                        (stx-map (cut make-id name "-" <>) mixin-slots))
                       ((mixin-setf ...)
                        (stx-map (cut make-id name "-" <> "-set!") mixin-slots))
                       ((ugetf ...)
                        (stx-map (cut make-id "&" <>) #'(getf ...)))
                       ((usetf ...)
                        (stx-map (cut make-id "&" <>) #'(setf ...)))
                       ((mixin-ugetf ...)
                        (stx-map (cut make-id "&" <>) #'(mixin-getf ...)))
                       ((mixin-usetf ...)
                        (stx-map (cut make-id "&" <>) #'(mixin-setf ...)))
                       ((values type-slots)
                        (cond
                         ((stx-null? slots) [])
                         (else [slots: #'((slot getf setf) ...)])))
                       ((values type-mixin-slots)
                        (cond
                         ((stx-null? mixin-slots) [])
                         (else [mixin: #'((mixin-slot mixin-getf mixin-setf) ...)])))
                       ((values type-name)
                        [name: (or (stx-getq name: body) id)])
                       ((values type-id)
                        [id: (or (stx-getq id: body) (make-class-type-id #'type))])
                       ((values type-constructor)
                        (or (alet (e (stx-getq constructor: body))
                              [constructor: e])
                            []))
                       ((values properties)
                        (let* ((properties
                                (if (stx-e (stx-getq transparent: body))
                                  [[transparent: . #t]]
                                  []))
                               (properties
                                (cond
                                 ((stx-e (stx-getq print: body))
                                  => (lambda (print)
                                       (let (print (if (eq? print #t) slots print))
                                         (cons [print: . print] properties))))
                                 (else properties)))
                               (properties
                                (cond
                                 ((stx-e (stx-getq equal: body))
                                  => (lambda (equal)
                                       (let (equal (if (eq? equal #t) slots equal))
                                         (cons [equal: . equal] properties))))
                                 (else properties))))
                          properties))
                       ((values type-properties)
                        (if (null? properties)
                          []
                          (with-syntax ((properties properties))
                            [properties: #'(quote properties)])))
                       ((values final?)
                        (stx-e (stx-getq final: body)))
                       ((values type-struct)
                        [struct: struct?])
                       ((values type-final)
                        [final: final?])
                       ((type-body ...)
                        [type-id ...
                         type-name ...
                         type-constructor ...
                         type-struct ...
                         type-final ...
                         type-properties ...
                         type-slots ...
                         type-mixin-slots ...])
                       (typedef
                        (wrap
                         #'(defclass-type type::t type-super
                             make-type type?
                             type-body ...)))
                       (meta-type-id
                        (with-syntax (((id: id) type-id))
                          #'(quote id)))
                       (meta-type-name
                        (with-syntax ((type-name (cadr type-name)))
                          #'(quote type-name)))
                       (meta-type-super
                        (with-syntax (((super-id ...) super-ref))
                          #'[(quote-syntax super-id) ...]))
                       (meta-type-slots #'(quote (slot ...)))
                       (meta-type-struct? struct?)
                       (meta-type-final? final?)
                       (meta-type-constructor-method
                        (if (null? type-constructor)
                          #f
                          (with-syntax (((constructor: kons) type-constructor))
                            #'(quote kons))))
                       (meta-type-descriptor #'(quote-syntax type::t))
                       (meta-type-constructor #'(quote-syntax make-type))
                       (meta-type-predicate #'(quote-syntax type?))
                       (meta-type-accessors
                        #'[['slot :: (quote-syntax getf)] ...
                           ['mixin-slot :: (quote-syntax mixin-getf)]...])
                       (meta-type-mutators
                        #'[['slot :: (quote-syntax setf)] ...
                           ['mixin-slot :: (quote-syntax mixin-setf)]...])
                       (meta-type-unchecked-accessors
                        #'[['slot :: (quote-syntax ugetf)] ...
                           ['mixin-slot :: (quote-syntax mixin-ugetf)]...])
                       (meta-type-unchecked-mutators
                        #'[['slot :: (quote-syntax usetf)] ...
                           ['mixin-slot :: (quote-syntax mixin-usetf)]...])
                       (metadef
                        (wrap
                         #'(defsyntax type
                             (make-class-type-info
                              id: meta-type-id
                              name: meta-type-name
                              slots: meta-type-slots
                              super: meta-type-super
                              struct?: meta-type-struct?
                              final?: meta-type-final?
                              constructor-method: meta-type-constructor-method
                              type-descriptor: meta-type-descriptor
                              constructor: meta-type-constructor
                              predicate: meta-type-predicate
                              accessors: meta-type-accessors
                              mutators: meta-type-mutators
                              unchecked-accessors: meta-type-unchecked-accessors
                              unchecked-mutators: meta-type-unchecked-mutators)))))
          (wrap
           #'(begin typedef metadef)))))

    (defrules defstruct ()
      ((_ hd slots . rest) (defclass hd slots struct: #t . rest)))

    (defalias define-struct defstruct)

    (defsyntax (defclass stx)
      (def (generate hd slots body)
        (syntax-case hd ()
          ((id . super)
           (and (stx-list? #'super)
                (stx-andmap syntax-local-class-type-info? #'super))
           (generate-defclass stx #'id (syntax->list #'super) slots body))
          (_ (if (identifier? hd)
               (generate-defclass stx hd [] slots body)
               (raise-syntax-error #f "bad syntax; class name should be an identifier" stx hd)))))

      (syntax-case stx ()
        ((_ hd slots . rest)
         (and (identifier-list? #'slots)
              (typedef-body? #'rest))
         (generate #'hd #'slots #'rest))))

    (defalias define-class defclass)

    (defsyntax (defmethod stx)
      (def (wrap e-stx)
        (stx-wrap-source e-stx (stx-source stx)))

      (def (method-opt? x)
        (memq (stx-e x) '(rebind:)))

      (syntax-case stx (@method)
        ((_ (@method id type) impl . rest)
         (cond
          ((and (identifier? #'id)
                (syntax-local-class-type-info? #'type)
                (stx-plist? #'rest method-opt?))
           (with-syntax* (((values klass)
                           (syntax-local-value #'type))
                          ((values rebind?)
                           (stx-e (stx-getq rebind: #'rest)))
                          (type::t
                           (!class-type-descriptor klass))
                          (name
                           (stx-identifier #'type #'type "::" #'id))
                          (@next-method
                           (stx-identifier #'type '@next-method))
                          (defimpl
                            (wrap
                             #'(def name
                                 (let-syntax
                                     ((@next-method
                                       (syntax-rules ()
                                         ((_ obj arg (... ...))
                                          (call-next-method type::t obj 'id arg (... ...))))))
                                   impl))))
                          (rebind? rebind?)
                          (bind
                           (wrap #'(bind-method! type::t 'id name rebind?))))
             (wrap #'(begin defimpl bind))))
          ((not (identifier? #'id))
           (raise-syntax-error #f "bad syntax; expected method identifier" stx #'id))
          ((not (syntax-local-class-type-info? #'type))
           (raise-syntax-error #f "bad syntax; expected type identifier" stx #'type))
          (else
           (raise-syntax-error #f "bad syntax; illegal method options" stx))))))

    (defsyntax (@method stx)
      (def (dotted-identifier? id)
        (and (identifier? id)
             (let (id-str (symbol->string (stx-e id)))
               (and (string-index id-str #\.)
                    (let (split (string-split id-str #\.))
                      (fx= (length split) 2))))))

      (def (split-dotted id)
        (let* ((id-str (symbol->string (stx-e id)))
               (split (string-split id-str #\.)))
          [(stx-identifier id (car split))
           (stx-identifier id (cadr split))]))

      (syntax-case stx ()
        ((_ id arg ... last)
         (and (dotted-identifier? #'id)
              (stx-ormap ellipsis? #'(arg ...)))
         (with-syntax (((object method) (split-dotted #'id)))
           #'(apply call-method object 'method [arg ...])))
        ((_ id arg ...)
         (dotted-identifier? #'id)
         (with-syntax (((object method) (split-dotted #'id)))
           #'(call-method object 'method arg ...)))
        ((_ id obj arg ...)
         (and (identifier? #'id)
              (stx-ormap ellipsis? #'(arg ...)))
         #'(apply call-method obj 'id [arg ...]))
        ((_ id obj arg ...)
         (identifier? #'id)
         #'(call-method obj 'id arg ...))))

    (defrules @ ()
      ((_ obj id)
       (identifier? #'id)
       (slot-ref obj 'id))
      ((recur obj id rest ...)
       (recur (recur obj id) rest ...)))

    (defrules @-set! ()
      ((_ obj id val)
       (identifier? #'id)
       (slot-set! obj 'id val))
      ((recur obj id path ... last val)
       (recur (@ obj id path ...) last val))))

  (import <MOP:1> <MOP:4> (phi: +1 <MOP:1> <MOP:2> <MOP:3> <MOP:4>)))

(import <MOP> (phi: +1 <MOP>))

(module <macro-object>
  (import <expander-runtime>)
  (export #t)

  (defclass macro-object (macro)
    id: gerbil.core#macro-object::t)

  (defmethod {apply-macro-expander macro-object}
    (lambda (self stx)
      (core-apply-expander (macro-object-macro self) stx))))

(import (phi: +1 <macro-object>))

(module <match>
  (export #t
          (phi: +1 match-macro match-macro::t
                make-match-macro match-macro?
                syntax-local-match-macro?
                match-pattern?))

  (begin-syntax
    (defclass (match-macro macro-object) ()
      id: gerbil.core#match-macro::t)

    (def (syntax-local-match-macro? stx)
      (and (identifier? stx)
           (match-macro? (syntax-local-value stx false))))

    ;; private
    (def (parse-match-pattern stx (match-stx #f))
      (def (parse1 hd)
        (syntax-case hd (? and or not
                           cons cons* @list
                           values vector box
                           quote quasiquote
                           eq? eqv? equal?
                           apply)
          ;; gated match
          ((? test . body)
           (syntax-case #'body (=>)
             (()
              [?: #'test])
             ((pat)
              [?: #'test (parse1 #'pat)])
             ((=> pat)
              [?: #'test =>: (parse1 #'pat)])
             ((:: proc => pat)
              [?: #'test :: #'proc =>: (parse1 #'pat)])
             (_ (parse-error hd))))
          ;; algebraic
          ((and . body)
           (stx-list? #'body)
           (syntax-case #'body ()
             ((pat)
              (parse1 #'pat))
             (_ [and: (stx-map parse1 #'body) ...])))
          ((or . body)
           (stx-list? #'body)
           (syntax-case #'body()
             ((pat)
              (parse1 #'pat))
             (_ [or: (stx-map parse1 #'body) ...])))
          ((not pat)
           [not: (parse1 #'pat)])
          ;; conses
          ((cons hd tl)
           [cons: (parse1 #'hd) (parse1 #'tl)])
          ((cons* hd tl . rest)
           (if (stx-null? #'rest)
             [cons: (parse1 #'hd) (parse1 #'tl)]
             [cons: (parse1 #'hd) (parse1 #'(cons* tl . rest))]))
          ((@list . body)
           (parse-list #'body))
          ;; boxes
          ((box pat)
           [box: (parse1 #'pat)])
          (#&pat
           [box: (parse1 #'pat)])
          ;; vectors
          ((values pat)
           (parse1 #'pat))
          ((values . body)
           [values: (parse-vector #'body)])
          ((vector . body)
           [vector: (parse-vector #'body)])
          (#(body ...)
            [vector: (parse-vector #'(body ...))])
          ((struct-id . body)
           (syntax-local-class-type-info? #'struct-id !class-type-struct?)
           [struct: (syntax-local-value #'struct-id)
                    (parse-vector #'body)])
          ((class-id . body)
           (syntax-local-class-type-info? #'class-id)
           [class: (syntax-local-value #'class-id)
                   (parse-class-body #'body)])
          ;; equality
          ((eql e)
           (and (identifier? #'eql)
                (or (free-identifier=? #'eql #'eq?)
                    (free-identifier=? #'eql #'eqv?)
                    (free-identifier=? #'eql #'equal?)))
           [?: #'(cut eql <> e)])
          ;; quotes
          ((quote datum)
           [datum: (stx-e #'datum)])
          ((quasiquote qp)
           (parse-qq #'qp))
          ;; applicative destructuring
          ((apply getf pat)
           [apply: #'getf (parse1 #'pat)])
          ;; user expansion
          ((match-id . _)
           (syntax-local-match-macro? #'match-id)
           (parse1
            (core-apply-expander (syntax-local-e #'match-id)
              (stx-wrap-source
               (cons match: hd)
               (or (stx-source hd)
                   (stx-source stx))))))
          ;; terminals
          (us (underscore? #'us)
              [any:])
          (id (and (identifier? #'id)
                   (not (ellipsis? #'id)))
              [var: #'id])
          (datum (stx-datum? #'datum)
                 [datum: (stx-e #'datum)])
          (_ (parse-error hd))))

      (def (parse-list body)
        (syntax-case body ()
          ((:: tl)
           (parse1 #'tl))
          ((hd dots . rest)
           (ellipsis? #'dots)
           [splice: (parse1 #'hd) (parse-list #'rest)])
          ((hd . rest)
           (not (ellipsis? #'hd))
           [cons: (parse1 #'hd) (parse-list #'rest)])
          (_
           (cond
            ((stx-null? body)
             [null:])
            ((not (stx-pair? body))
             (parse1 body))
            (else
             (parse-error body))))))

      (def (parse-vector body)
        (if (simple-vector? body)
          [simple: (stx-map parse1 body)]
          [list: (parse-list body)]))

      (def (simple-vector? body)
        (syntax-case body ()
          ((hd . rest)
           (and (not (ellipsis? #'hd))
                (simple-vector? #'rest)))
          (_ (stx-null? body))))

      (def (parse-class-body body)
        (let recur ((rest body))
          (syntax-case rest ()
            ((key pat . rest)
             (stx-keyword? #'key)
             (cons* #'key (parse1 #'pat) (recur #'rest)))
            (_ (if (stx-null? rest) []
                   (parse-error rest))))))

      (def (parse-qq hd)
        (syntax-case hd ()
          ;; XXX
          ))

      (def (parse-error hd)
        (apply raise-syntax-error
          #f "bad syntax; illegal pattern"
          (if match-stx
            [match-stx stx hd]
            [stx hd])))

      (parse1 stx))

    (def (match-pattern? stx)
      (call/cc
       (lambda (E)
         (with-exception-handler
          (let (E! (current-exception-handler))
            (lambda (e)
              (if (syntax-error? e)
                (E #f)
                (E! e))))
          (lambda () (parse-match-pattern stx) #t)))))

    (def (match-pattern-vars ptree)
      (def (loop ptree vars K)
        (syntax-case ptree ()
          ((?: _ . body)
           (syntax-case #'body ()
             ((pat)
              (loop #'pat vars K))
             ((=>: pat)
              (loop #'pat vars K))
             ((:: _ =>: pat)
              (loop #'pat vars K))
             (_ (K vars))))
          ((key . body)
           (or (stx-eq? and: #'key)
               (stx-eq? or: #'key))
           (syntax-case #'body ()
             ((hd . rest)
              (loop #'hd vars (cut loop #'(key . rest) <> K)))
             (_ (K vars))))
          ((not: pat)
           (loop #'pat vars K))
          ((cons: hd tl)
           (loop #'hd vars (cut loop #'tl <> K)))
          ((splice: hd rest)
           (loop #'hd vars (cut loop #'rest <> K)))
          ((box: pat)
           (loop #'pat vars K))
          ((key body)
           (or (stx-eq? values: #'key)
               (stx-eq? vector: #'key))
           (loop-vector #'body vars K))
          ((struct: _ body)
           (loop-vector #'body vars K))
          ((class: _ body)
           (loop-class-list #'body vars K))
          ((apply: getf pat)
           (loop #'pat vars K))
          ((var: id)
           (if (find (cut bound-identifier=? <> #'id) vars)
             (K vars)
             (K (cons #'id vars))))
          (_ (K vars))))

      (def (loop-vector body vars K)
        (syntax-case body ()
          ((simple: body)
           (loop-list #'body vars K))
          ((list: body)
           (loop #'body vars K))))

      (def (loop-list rest vars K)
        (syntax-case rest ()
          ((hd . rest)
           (loop #'hd vars (cut loop-list #'rest <> K)))
          (_ (K vars))))

      (def (loop-class-list rest vars K)
        (syntax-case rest ()
          ((_ pat . rest)
           (loop #'pat vars (cut loop-class-list #'rest <> K)))
          (_ (K vars))))

      (loop ptree [] values))

    (def (generate-match1 stx tgt ptree K E)
      (def (generate1 tgt ptree K E)
        (with-syntax ((target tgt))
          (syntax-case ptree ()
            ((?: hd . rest)
             (syntax-case #'rest ()
               (()
                ['if #'(? hd target) K E])
               ((pat)
                ['if #'(? hd target)
                     (generate1 tgt #'pat K E)
                     E])
               ((=>: pat)
                (with-syntax (($tgt (genident 'e)))
                  ['let #'(($tgt (hd target)))
                        ['if #'$tgt
                          (generate1 #'$tgt #'pat K E)
                          E]]))
               ((:: proc =>: pat)
                (with-syntax (($tgt (genident 'e)))
                  ['if #'(? hd target)
                       ['let #'(($tgt (proc target)))
                             (generate1 #'$tgt #'pat K E)]
                       E]))))
            ((and: . rest)
             (syntax-case #'rest ()
               ((hd . rest)
                (generate1 tgt #'hd
                           (generate1 tgt #'(and: . rest) K E)
                           E))
               (_ K)))
            ((or: . rest)
             (syntax-case #'rest ()
               ((hd . rest)
                (generate1 tgt #'hd K
                           (generate1 tgt #'(or: . rest) K E)))
               (_ E)))
            ((not: pat)
             (generate1 tgt #'pat E K))
            ((cons: hd tl)
             (with-syntax (($hd (genident 'hd))
                           ($tl (genident 'tl)))
               ['if #'(##pair? target)
                    (let ((hd-pat (stx-e #'hd))
                          (tl-pat (stx-e #'tl)))
                      (cond
                       ((and (equal? hd-pat '(any:))
                             (equal? tl-pat '(any:)))
                        K)
                       ((equal? tl-pat '(any:))
                        ['let #'(($hd (##car target)))
                              (generate1 #'$hd #'hd K E)])
                       ((equal? hd-pat '(any:))
                        ['let #'(($tl (##cdr target)))
                              (generate1 #'$tl #'tl K E)])
                       (else
                        ['let #'(($hd (##car target))
                                 ($tl (##cdr target)))
                              (generate1 #'$hd #'hd
                                         (generate1 #'$tl #'tl K E)
                                         E)])))
                    E]))
            ((null:)
             ['if #'(##null? target) K E])
            ((splice: hd rest)
             (generate-splice tgt #'hd #'rest K E))
            ((box: pat)
             (with-syntax (($tgt (genident 'e)))
               ['if #'(##box? target)
                    ['let #'(($tgt (##unbox target)))
                          (generate1 #'$tgt #'pat K E)]
                    E]))
            ((values: body)
             (syntax-case #'body ()
               ((simple: body)
                (with-syntax ((len (stx-length #'body)))
                  ['if #'(##fx= (values-count target) len)
                       (generate-simple-vector tgt #'body 0 K E)
                       E]))
               ((list: body)
                (generate-list-vector tgt #'body 'values->list K E))))
            ((vector: body)
             (syntax-case #'body ()
               ((simple: body)
                (with-syntax ((len (stx-length #'body)))
                  ['if #'(##vector? target)
                       ['if #'(##fx= (##vector-length target) len)
                            (generate-simple-vector tgt #'body 0 K E)
                            E]
                       E]))
               ((list: body)
                ['if #'(##vector? target)
                     (generate-list-vector tgt #'body 'vector->list K E)
                     E])))
            ((struct: info body)
             (generate-struct (stx-e #'info) tgt #'body K E))
            ((class: info body)
             (generate-class (stx-e #'info) tgt #'body K E))
            ((datum: datum)
             (with-syntax ((eql (let (e (stx-e #'datum))
                                  (cond
                                   ((or (symbol? e)
                                        (keyword? e)
                                        (immediate? e))
                                    '##eq?)
                                   ((number? e) 'eqv?)
                                   (else 'equal?)))))
               ['if #'(eql target (quote datum)) K E]))
            ((apply: getf pat)
             (with-syntax (($tgt (genident 'e)))
               ['let #'(($tgt (getf target)))
                     (generate1 #'$tgt #'pat K E)]))
            ((var: id)
             ['let #'((id target)) K])
            ((any:) K))))

      (def (generate-splice tgt hd rest K E)
        (with-syntax* (((var ...)
                        (match-pattern-vars hd))
                       ((var-r ...)
                        (gentemps #'(var ...)))
                       ((init ...)
                        (make-list (stx-length #'(var ...)) #'[]))
                       (target tgt)
                       ($splice-rest (genident 'splice-rest))
                       ($loop        (genident 'splice-loop))
                       ($loop-try    (genident 'splice-try))
                       ($hd          (genident 'hd))
                       ($rest        (genident 'rest))
                       (splice-rest-body
                        (generate1 #'$rest rest K E))
                       (loop-K
                        #'($loop (##cdr $rest) (cons var var-r) ...))
                       (loop-E
                        #'($splice-rest $rest (reverse var-r) ...))
                       (loop-try-body
                        (generate1 #'$hd hd #'loop-K #'loop-E)))
          #'(letrec (($splice-rest
                      (lambda ($rest var ...) splice-rest-body))
                     ($loop-try
                      (lambda ($hd $rest var-r ...) loop-try-body))
                     ($loop
                      (lambda ($rest var-r ...)
                        (if (pair? $rest)
                          ($loop-try (##car $rest) $rest var-r ...)
                          loop-E))))
              ($loop target init ...))))

      (def (generate-simple-vector tgt body start K E)
        (let recur ((rest body) (off start))
          (syntax-case rest ()
            ((hd . rest)
             (with-syntax (($tgt (genident 'e))
                           (target tgt)
                           (k off))
               ['let #'(($tgt (##vector-ref target k)))
                     (generate1 #'$tgt #'hd
                                (recur #'rest (fx1+ off))
                                E)]))
            (_ K))))

      (def (generate-list-vector tgt body ->list K E)
        (with-syntax* (($tgt (genident 'e))
                       (target tgt)
                       (target->list
                        (case ->list
                          ((values->list)
                           #'(values->list target))
                          ((vector->list)
                           #'(##vector->list target))
                          ((struct->list)
                           #'(##cdr (##structure->list target)))
                          (else
                           (raise-syntax-error #f "Unexpected list conversion" stx ->list)))))
          ['let #'(($tgt target->list))
                (generate1 #'$tgt body K E)]))

      (def (generate-struct info tgt body K E)
        (syntax-case body ()
          ((simple: body)
           (let ((fields (struct-field-accessors info)))
             ['if [(!class-type-predicate info) tgt]
               (generate-simple-struct-body info tgt #'body K E)
               E]))
          ((list: body)
           ['if [(!class-type-predicate info) tgt]
             (generate-list-vector tgt #'body 'struct->list K E)
             E])))

      (def (generate-simple-struct-body info tgt body K E)
        (let recur ((rest body) (fields (struct-field-accessors info)))
          (syntax-case rest ()
            ((hd . rest)
             (if (null? fields)
               (raise-syntax-error #f "too many parts for struct" stx info (!class-type-name info))
               (let (($tgt (genident 'e))
                     (getf (car fields)))
                 ['let [[$tgt [getf tgt]]]
                   (generate1 $tgt #'hd
                              (recur #'rest (cdr fields))
                              E)])))
            (_ K))))

      (def (struct-field-accessors info)
        (let recur ((next [info]))
          (if (null? next)
            []
            (let (ti (car next))
              (append (recur (map syntax-local-value (!class-type-super ti)))
                      (map (lambda (slot)
                             (or (assgetq slot (!class-type-unchecked-accessors ti))
                                 (raise-syntax-error #f "no accessor for struct slot" stx info slot)))
                           (!class-type-slots ti)))))))

      (def (generate-class info tgt body K E)
        ['if [(!class-type-predicate info) tgt]
          (generate-class-body info tgt body K E)
          E])

      (def (generate-class-body info tgt body K E)
        (let recur ((rest body))
          (syntax-case rest ()
            ((key pat . rest)
             (cond
              ((assgetq (string->symbol (keyword->string (stx-e #'key)))
                        (!class-type-unchecked-accessors info))
               => (lambda (getf)
                    (let ($tgt (genident 'e))
                      ['let [[$tgt [getf tgt]]]
                        (generate1 $tgt #'pat
                                   (recur #'rest)
                                   E)])))
              (else
               (raise-syntax-error #f "no slot accessor" stx info #'key))))
            (_ K))))

      (generate1 tgt ptree K E))

    (def (generate-match* stx tgt-lst clauses)
      (def (parse-body hd-len)
        (let lp ((rest clauses) (r []))
          (syntax-case rest ()
            ((hd . rest)
             (syntax-case #'hd (else)
               ((else . body)
                (and (stx-list? #'body)
                     (not (stx-null? #'body)))
                (if (stx-null? #'rest)
                  (cons [(genident 'else) #f
                         (stx-wrap-source
                          #'(begin . body)
                          (or (stx-source #'hd)
                              (stx-source stx)))]
                        r)
                  (raise-syntax-error #f
                    "bad syntax; misplaced else" stx #'hd)))
               ((hd-pat . body)
                (and (stx-list? #'hd-pat)
                     (fx= (stx-length #'hd-pat) hd-len)
                     (stx-list? #'body)
                     (not (stx-null? #'body)))
                (lp #'rest
                    (cons [(genident 'try-match)
                           (stx-map (cut parse-match-pattern <> stx) #'hd-pat)
                           (stx-wrap-source
                            #'(begin . body)
                            (or (stx-source #'hd)
                                (stx-source stx)))]
                          r)))
               (_ (raise-syntax-error #f "bad syntax; illegal match clause"
                                      stx #'hd))))
            (_ r))))

      (def (generate-body body)
        (with-syntax* (($E (genident 'E))
                       ((target ...)
                        tgt-lst)
                       (fail
                        (syntax/loc stx
                          (lambda () (error "No clause matching" target ...))))
                       (body
                        (generate-clauses body #'($E)))
                       (match-expr
                        (syntax/loc stx
                          (let (($E fail))
                            body))))
          #'(begin-annotation @match match-expr)))

      (def (generate-clauses rest E)
        (syntax-case rest ()
          ((hd)
           (syntax-case #'hd ()
             ((_ clause body)
              ['begin-annotation '@match-body
                (if (stx-e #'clause)
                  (generate1 #'clause #'body E)
                  #'body)])))
          ((hd . rest)
           (syntax-case #'hd ()
             ((try clause body)
              (if (stx-e #'clause)
                (with-syntax ((body (generate1 #'clause #'body E))
                              (rest-body (generate-clauses #'rest #'(try))))
                  #'(let ((try (lambda () body)))
                      rest-body))
                (with-syntax ((rest-body (generate-clauses #'rest #'(try))))
                  #'(let ((try (begin-annotation @match-else (lambda () body))))
                      rest-body))))))
          (_ ['begin-annotation '@match-body E])))

      (def (generate1 clause body E)
        (with-syntax (($K (genident 'K))
                      ((var ...)
                       (apply append (map match-pattern-vars clause))))
          (check-duplicate-identifiers #'(var ...) stx)
          (with-syntax*
              ((dispatch
                (let recur ((rest clause) (rest-targets tgt-lst))
                  (syntax-case rest ()
                    ((ptree . rest)
                     (syntax-case rest-targets ()
                       ((target . rest-targets)
                        (generate-match1 stx #'target #'ptree
                                         (recur #'rest #'rest-targets)
                                         E))))
                    (_ #'($K var ...)))))
               (body body)
               (kont
                (syntax/loc stx
                  (lambda (var ...) body))))
            (syntax/loc stx
              (let ($K kont)
                dispatch)))))

      (generate-body (parse-body (stx-length tgt-lst))))

    (def (generate-match stx tgt clauses)
      (def (reclause clause)
        (syntax-case clause (else)
          ((else . _) clause)
          ((hd . body)
           (syntax/loc #'clause
             ((hd) . body)))
          (_ (raise-syntax-error #f
               "bad syntax; illegal match clause" stx clause))))

      (generate-match* stx [tgt] (stx-map reclause clauses))))

  (defsyntax (match stx)
    (syntax-case stx (<> <...>)
      ((_ <> . clauses)
       (stx-list? #'clauses)
       (with-syntax* (($e (genident 'e))
                      (body
                       (syntax/loc stx
                         (match $e . clauses))))
         #'(lambda ($e) body)))
      ((_ <...> . clauses)
       (stx-list? #'clauses)
       (with-syntax* (($args (genident 'args))
                      (body
                       (syntax/loc stx
                         (match $args . clauses))))
         #'(lambda $args body)))
      ((_ e . clauses)
       (stx-list? #'clauses)
       (with-syntax* (($e (genident #'e))
                      (body (generate-match stx #'$e #'clauses)))
         #'(let (($e e))
             body)))))

  (defsyntax (match* stx)
    (syntax-case stx ()
      ((_ (e ...) . clauses)
       (stx-list? #'clauses)
       (with-syntax* ((($e ...)
                       (gentemps #'(e ...)))
                      (body
                       (generate-match* stx #'($e ...) #'clauses)))
         #'(let (($e e) ...)
             body)))))

  (defrules with ()
    ((_ () body ...)
     (let () body ...))
    ((recur (hd expr) body ...)
     (match-pattern? #'hd)
     (recur ((hd expr)) body ...))
    ((_ ((hd expr) ...) body ...)
     (match* (expr ...) ((hd ...) body ...))))

  (defrules with* ()
    ((recur ((hd e) . rest) body ...)
     (with ((hd e))
       (recur rest body ...)))
    ((_ () body ...)
     (let () body ...)))

  (defrules ? (and or not =>)
    ((recur (and pred ...) obj)
     (and (recur pred obj) ...))
    ((recur (or pred ...) obj)
     (or (recur pred obj) ...))
    ((recur (not pred) obj)
     (not (recur pred obj)))
    ((_ pred obj)
     (pred obj))
    ((recur pred)
     (lambda ($obj) (recur pred $obj)))
    ((recur pred => K)
     (lambda ($obj)
       (alet ($val (recur pred $obj))
         (K $val))))
    ((recur pred :: K)
     (lambda ($obj)
       (and (recur pred $obj)
            (K $obj))))
    ((recur pred :: proc => K)
     (lambda ($obj)
       (and (recur pred $obj)
            (K (proc $obj))))))

  (defrules defsyntax-for-match ()
    ((_ id match-e macro-e)
     (identifier? #'id)
     (defsyntax id
       (make-match-macro
        macro:
        (let (($match-e match-e)
              ($macro-e macro-e))
          (lambda ($stx)
            (syntax-case $stx ()
              ((match: . body)
               (core-apply-expander $match-e
                 (stx-wrap-source #'body (stx-source $stx))))
              (_ (core-apply-expander $macro-e $stx))))))))
    ((recur id match-e)
     (recur id match-e
            (lambda ($stx)
              (raise-syntax-error #f "bad syntax; no macro definition for defsyntax-for-match" $stx)))))

  (defrules defrules-for-match ()
    ((_ id . body)
     (defsyntax-for-match id
       (syntax-rules . body)))))

(import <match> (phi: +1 <match>))

(module <more-sugar>
  (export #t (phi: +1 #t))

  ;; checked type contract
  (defrules : ())

  ;; checked predicate contract
  (defrules :~ ())

  ;; type assertion
  (defrules :- ())

  ;; default value
  (defrules := ())

  (begin-syntax
    (defclass (setq-macro macro-object) ()
      id: gerbil.core#setq-macro::t)
    (defclass (setf-macro macro-object) ()
      id: gerbil.core#setf-macro::t)

    (def (syntax-local-setf-macro? stx)
      (and (identifier? stx)
           (setf-macro? (syntax-local-value stx false))))

    (def (syntax-local-setq-macro? stx)
      (and (identifier? stx)
           (setq-macro? (syntax-local-value stx false)))))

  (defsyntax (set! stx)
    (syntax-case stx ()
      ((_ (setf-id . _) . _)
       (syntax-local-setf-macro? #'setfid)
       (core-apply-expander (syntax-local-e #'setf-id) stx))
      ((_ (getf arg ...) expr)
       (identifier? #'getf)
       (with-syntax ((setf (stx-identifier #'getf #'getf "-set!")))
         #'(setf arg ... expr)))
      ((_ setq-id . _)
       (syntax-local-setq-macro? #'setq-id)
       (core-apply-expander (syntax-local-e #'setq-id) stx))
      ((_ id expr)
       (identifier? #'id)
       #'(%#set! id expr))))

  (defsyntax (values-set! stx)
    (syntax-case stx ()
      ((_ tgt ... expr)
       (with-syntax ((($e ...) (gentemps #'(tgt ...))))
         #'(let-values ((($e ...) expr))
             (set! tgt $e) ...)))))

  (defsyntax (parameterize stx)
    (syntax-case stx ()
      ((_ () body ...)
       #'(let () body ...))
      ((_ ((param expr) ...) body ...)
       (with-syntax* ((thunk
                       (syntax/loc stx
                         (lambda () body ...)))
                      ((arg ...)
                       (foldr cons* []
                              (syntax->list #'(param ...))
                              (syntax->list #'(expr ...)))))
         #'(call-with-parameters thunk arg ...)))))

  (defrules let/cc ()
    ((_ id body ...)
     (identifier? #'id)
     (call/cc (lambda (id) body ...))))

  (defrules let/esc ()
    ((_ id body ...)
     (identifier? #'id)
     (call/esc (lambda (id) body ...))))

  (defrules unwind-protect ()
    ((_ body postlude rest ...)
     (with-unwind-protect
      (lambda () body)
      (lambda () postlude rest ...))))

  (defsyntax (@bytes stx)
    (syntax-case stx ()
      ((_ str)
       (stx-string? #'str)
       (with-syntax ((e (string->bytes (stx-e #'str))))
         #'(quote e)))))

  ;; ...
  )

(import <more-sugar> (phi: +1 <more-sugar>))

(module <more-syntax-sugar>
  (export #t)
  (import <expander-runtime> <syntax-case> <syntax-sugar>
          (phi: -1 <more-sugar>))       ; make-setq-macro

  (defrules identifier-rules ()
    ((_ . body)
     (make-setq-macro
      macro: (syntax-rules . body))))

  (defrules quasisyntax ())
  ;; ...
  )

(import (phi: +1 <more-syntax-sugar>))

(module <module-sugar>
  (export #t)

  (defrules require ()
    ((_) (begin))
    ((recur feature . rest)
     (cond-expand
       (feature
        (recur . rest))
       (else
        (syntax-error "Missing required feature" feature)))))

  (defrules defsyntax-for-import ()
    ((_ id expr)
     (identifier? #'id)
     (defsyntax id
       (make-import-expander expr)))
    ((recur (id . args) body ...)
     (identifier? #'id)
     (recur id (lambda args body ...))))

  (defrules defsyntax-for-export ()
    ((_ id expr)
     (identifier? #'id)
     (defsyntax id
       (make-export-expander expr)))
    ((recur (id . args) body ...)
     (identifier? #'id)
     (recur id (lambda args body ...))))

  (defrules defsyntax-for-import-export ()
    ((_ id expr)
     (identifier? #'id)
     (defsyntax id
       (make-import-export-expander expr)))
    ((recur (id . args) body ...)
     (identifier? #'id)
     (recur id (lambda args body ...))))

  (defsyntax-for-import-export (for-syntax stx)
    (syntax-case stx ()
      ((_ body ...)
       #'(phi: +1 body ...))))

  (defsyntax-for-import-export (for-template stx)
    (syntax-case stx ()
      ((_ body ...)
       #'(phi: -1 body ...))))

  (defsyntax-for-import (only-in stx)
    (syntax-case stx ()
      ((_ hd id ...)
       (identifier-list? #'(id ...))
       (let* ((keys (stx-map core-identifier-key #'(id ...)))
              (keytab
               (let (ht (make-hash-table))
                 (for-each (cut hash-put! ht <> #t) keys)
                 ht))
              (imports (core-expand-import-source #'hd))
              (fold-e
               (rec (fold-e in r)
                 (cond
                  ((module-import? in)
                   (if (hash-get keytab (module-import-name in))
                     (cons in r)
                     r))
                  ((import-set? in)
                   (foldl fold-e r (import-set-imports in)))
                  (else r)))))
         (cons begin: (foldl fold-e [] imports))))))

  (defsyntax-for-import (except-in stx)
    (syntax-case stx ()
      ((_ hd id ...)
       (identifier-list? #'(id ...))
       (let* ((keys (stx-map core-identifier-key #'(id ...)))
              (keytab
               (let (ht (make-hash-table))
                 (for-each (cut hash-put! ht <> #t) keys)
                 ht))
              (imports (core-expand-import-source #'hd))
              (fold-e
               (rec (fold-e in r)
                 (cond
                  ((module-import? in)
                   (if (hash-get keytab (module-import-name in))
                     r
                     (cons in r)))
                  ((import-set? in)
                   (foldl fold-e r (import-set-imports in)))
                  (else (cons in r))))))
         (cons begin: (foldl fold-e [] imports))))))

  (begin-syntax
    (def (module-import-rename in rename)
      (make-module-import (module-import-source in)
                          rename
                          (module-import-phi in)
                          (module-import-weak? in)))

    (def (prefix-identifier-key name pre)
      (match name
        ([id . mark]
         (cons (make-symbol pre id) mark))
        (else
         (make-symbol pre name )))))

  (defsyntax-for-import (rename-in stx)
    (syntax-case stx ()
      ((_ hd (id new-id) ...)
       (and (identifier-list? #'(id ...))
            (identifier-list? #'(new-id ...)))
       (let* ((keytab (make-hash-table))
              (found (make-hash-table))
              (_
               (for-each
                 (lambda (id new-id)
                   (hash-put! keytab (core-identifier-key id) (core-identifier-key new-id)))
                 #'(id ...)
                 #'(new-id ...)))
              (imports (core-expand-import-source #'hd))
              (fold-e
               (rec (fold-e in r)
                 (cond
                  ((module-import? in)
                   (let (name (module-import-name in))
                     (cond
                      ((hash-get keytab name)
                       => (lambda (rename)
                            (hash-put! found name #t)
                            (cons (module-import-rename in rename) r)))
                      (else
                       (cons in r)))))
                  ((import-set? in)
                   (foldl fold-e r (import-set-imports in)))
                  (else
                   (cons in r)))))
              (new-imports (foldl fold-e [] imports)))
         ;; check to see if we found all identifiers in the rename set
         (for-each
           (lambda (id)
             (unless (hash-get found (core-identifier-key id))
               (raise-syntax-error #f "bad syntax; identifier is not in the import set" stx id)))
           #'(id ...))
         (cons begin: new-imports)))))

  (defsyntax-for-import (prefix-in stx)
    (syntax-case stx ()
      ((_ hd pre)
       (identifier? #'pre)
       (let* ((pre (stx-e #'pre))
              (imports (core-expand-import-source #'hd))
              (rename-e
               (lambda (name)
                 (prefix-identifier-key name pre)))
              (fold-e
               (rec (fold-e in r)
                 (cond
                  ((module-import? in)
                   (cons (module-import-rename in (rename-e (module-import-name in)))
                         r))
                  ((import-set? in)
                   (foldl fold-e r (import-set-imports in)))
                  (else
                   (cons in r))))))
         (cons begin: (foldl fold-e [] imports))))))

  (defsyntax-for-import (group-in stx)
    (def (flatten list-of-lists)
      (foldr (lambda (v acc)
	           (cond
	            ((null? v) acc)
	            ((pair? v) (append (flatten v) acc))
	            (else (cons v acc))))
	         []
	         list-of-lists))

    (def (expand-path top mod)
      (syntax-case mod ()
        ((nested mod ...)
         (map (lambda (mod) (stx-identifier top top "/" mod))
              (flatten (map (cut expand-path #'nested <>) #'(mod ...)))))
        (id
         (or (identifier? #'id) (stx-fixnum? #'id))
         (stx-identifier top top "/" #'id))))

    (syntax-case stx ()
      ((_ top mod ...)
       (cons begin: (flatten (map (cut expand-path #'top <>) #'(mod ...)))))))

  (defsyntax-for-export (except-out stx)
    (syntax-case stx ()
      ((_ hd id ...)
       (identifier-list? #'(id ...))
       (let* ((keys (stx-map core-identifier-key #'(id ...)))
              (keytab
               (let (ht (make-hash-table))
                 (for-each (cut hash-put! ht <> #t) keys)
                 ht))
              (exports (core-expand-export-source #'hd))
              (fold-e
               (rec (fold-e out r)
                 (cond
                  ((module-export? out)
                   (if (hash-get keytab (module-export-name out)) r
                       (cons out r)))
                  ((export-set? out)
                   (foldl fold-e r (export-set-exports out)))
                  (else r)))))
         (cons begin: (foldl fold-e [] exports))))))

  (begin-syntax
    (def (module-export-rename out rename)
      (make-module-export (module-export-context out)
                          (module-export-key out)
                          (module-export-phi out)
                          rename
                          (module-export-weak? out))))

  (defsyntax-for-export (rename-out stx)
    (syntax-case stx ()
      ((_ hd (id new-id) ...)
       (and (identifier-list? #'(id ...))
            (identifier-list? #'(new-id ...)))
       (let* ((keytab (make-hash-table))
              (found (make-hash-table))
              (_ (for-each
                   (lambda (id new-id)
                     (hash-put! keytab (core-identifier-key id) (core-identifier-key new-id)))
                   #'(id ...)
                   #'(new-id ...)))
              (exports (core-expand-export-source #'hd))
              (fold-e
               (rec (fold-e out r)
                 (cond
                  ((module-export? out)
                   (let (name (module-export-name out))
                     (cond
                      ((hash-get keytab name)
                       => (lambda (rename)
                            (hash-put! found name #t)
                            (cons (module-export-rename out rename)
                                  r)))
                      (else
                       (cons out r)))))
                  ((export-set? out)
                   (foldl fold-e r (export-set-exports out)))
                  (else
                   (cons out r)))))
              (new-exports
               (foldl fold-e [] exports)))
         ;; check to see if we found all identifiers in the rename set
         (for-each
           (lambda (id)
             (unless (hash-get found (core-identifier-key id))
               (raise-syntax-error #f "bad syntax; identifier is not in the export set" stx id)))
           #'(id ...))
         (cons begin: new-exports)))))

  (defsyntax-for-export (prefix-out stx)
    (syntax-case stx ()
      ((_ hd pre)
       (identifier? #'pre)
       (let* ((pre (stx-e #'pre))
              (exports (core-expand-export-source #'hd))
              (rename-e
               (lambda (name)
                 (prefix-identifier-key name pre)))
              (fold-e
               (rec (fold-e out r)
                 (cond
                  ((module-export? out)
                   (cons (module-export-rename out (rename-e (module-export-name out)))
                         r))
                  ((export-set? out)
                   (foldl fold-e r (export-set-exports out)))
                  (else (cons out r))))))
         (cons begin: (foldl fold-e [] exports))))))

  (defsyntax-for-export (struct-out stx)
    (def (identifiers id unchecked?)
      (let (info (syntax-local-value id false))
        (if (class-type-info? info)
          [id
           (!class-type-descriptor info)
           (let (ctor (!class-type-constructor info))
             (if ctor [ctor] []))
           ...
           (!class-type-predicate info)
           (map cdr (!class-type-accessors info)) ...
           (map cdr (!class-type-mutators info)) ...
           (if unchecked?
             [(map cdr (!class-type-unchecked-accessors info)) ...
              (map cdr (!class-type-unchecked-mutators info)) ...]
             [])
           ...]
          (raise-syntax-error #f "no class type info" stx id))))

    (syntax-case stx ()
      ((_ unchecked: unchecked? id ...)
       (cons 'begin:
             (concatenate (stx-map (cut identifiers <> (stx-e #'unchecked?))
                                   #'(id ...)))))
       ((_ id ...)
       (cons 'begin:
             (concatenate (stx-map (cut identifiers <> #f)
                                   #'(id ...))))))))

(import <module-sugar>)

(module <special>
  (export #t)

  (defsyntax (eval-when-compile stx)
    (syntax-case stx ()
      ((_ expr)
       (begin
         (when (current-expander-compiling?)
           (eval-syntax #'expr))
         #'(void))))))

(import <special>)

;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; :gerbil/core prelude
prelude: :<root>
package: gerbil

(export #t
        (import: <runtime> <sugar> <MOP> <match> <more-sugar> 
                 <module-sugar>)
        (phi: +1 (import: <runtime> <sugar> <MOP> <match> <more-sugar>
                          <expander-runtime> <syntax-case> <syntax-sugar>
                          <more-syntax-sugar>)))

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
    numerator denumenator rationalize
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
    ;; 6.5 eval ; userland
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
    ;; transcript-on transcript-off ; void
    ))
    

;;;
;;; Common Runtime
;;;
(module <host-runtime>
  (export #t)
  (extern namespace: #f
    immediate?
    finite? infinite? nan?
    1+ 1- fx+ fx1+ fx- fx1- fx* fx/
    fixnum? nonnegative-fixnum? 
    fxzero? fxpositive? fxnegative? fxodd? fxeven?
    fixnum->char char->fixnum fixnum->flonum
    fxmax fxmin fxabs fxnot fxand fxior fxxor fxand fxmodulo
    fxbit-set? fxarithmetic-shift
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
    remove remq remv remf
    pgetq pgetv pget
    subvector subvector->list subvector-fill!
    vector-map vector-copy vector-append 
    true true? false void void? eof-object identity
    dssl-object? dssl-key-object? dssl-rest-object? dssl-optional-object?
    ;;bytes? 
    ;;make-bytes bytes-length bytes-ref bytes-set! 
    ;;subbytes subbytes->list subbytes-fill! 
    ;;bytes->list list->bytes
    ;;bytes-fill! bytes-copy bytes-copy! bytes-move! bytes-append 
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
    uninterned-symbol? interned-symbol? 
    gensym make-symbol make-uninterned-symbol symbol-hash
    keyword? uninterned-keyword? interned-keyword? keyword-hash
    string->bytes bytes->string
    string->keyword keyword->string make-uninterned-keyword
    symbol->keyword keyword->symbol
    substring->list substring-fill!
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
    ;;call-with-prompt abort!
    with-unwind-protect
    current-exception-handler with-exception-handler
    with-catch 
    error raise raise-type-error
    error::t type-error::t
    exception? error? type-error? 
    error-trace error-message error-irritants
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
    ;; string I/O
    open-input-string open-output-string get-output-string
    call-with-input-string with-input-from-string
    call-with-output-string with-output-to-string
    ;; bytes I/O
    ;;open-input-bytes open-output-bytes get-output-bytes
    ;;call-with-input-bytes with-input-from-bytes
    ;;call-with-output-bytes with-output-to-bytes
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
    )
  
  (define-alias transcript-on void)
  (define-alias transcript-off void)
  (define-alias car-set! set-car!)
  (define-alias cdr-set! set-cdr!)
  (define-alias box-set! set-box!)
  (define-alias call/cc         call-with-current-continuation)
  (define-alias call/esc        call-with-escape)
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
    core-expand-export-source))

(import <runtime> 
        (phi: +1 <runtime> <expander-runtime>)
        (phi: +2 <runtime> <expander-runtime>)
        (phi: +3 <runtime> <expander-runtime>))

(module <syntax-case>
  (export #t)
  (import <expander-runtime>)           ; for template
  (define-syntax syntax
    macro-expand-syntax)
  (define-syntax syntax-case
    macro-expand-syntax-case))

(import (phi: +1 <syntax-case>)
        (phi: +2 <syntax-case>))

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
             (recur rest body ...)))))))

(import (phi: +1 <syntax-sugar>)
        (phi: +2 <syntax-sugar>))

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
       (syntax-error "Bad syntax; misplaced else"))
      ((recur (test => K) . rest)
       (let ($e test)
         (if $e (K $e) (recur . rest))))
      ((recur (test) . rest)
       (recur (test => values) . rest))
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
                (syntax->list #'(detail ...)))))))
  
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
                 (raise-syntax-error #f "Bad syntax; duplicate keyword argument"
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
               (raise-syntax-error #f "Bad syntax; duplicate #!key argument"
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
                     (stx-wrap-source 
                      #'(apply primary pre ... opt ... tail)
                      (stx-source stx)))))))))
      
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
              (stx-wrap-source
               #'(primary pre ... opt ...)
               (stx-source stx))))))

      (define (generate-kw-primary kwvar kwargs args body)
        (define absent (genident 'absent))
        
        (define (make-body kwargs body)
          (if (pair? kwargs)
            (let* ((next (car kwargs))
                   (rest (cdr kwargs))
                   (key (car next))
                   (var (cadr next))
                   (default  (caddr next)))
              (with-syntax ((kwvar kwvar)
                            (key key)
                            (var var)
                            (tmp (genident var))
                            (default default)
                            (body (make-body rest body))
                            (absent absent))
                #'(let-values (((tmp) (hash-ref kwvar 'key absent)))
                    (let-values (((var) (if (eq? tmp absent) default tmp)))
                      body))))
            (cons 'begin body)))
        
        (with-syntax* ((kwvar kwvar)
                       (args args)
                       (body (make-body kwargs body))
                       (impl (stx-wrap-source
                              #'(lambda (kwvar . args) body)
                              (stx-source stx)))
                       (absent absent))
          #'(let-values (((absent) (make-vector 0)))
              impl)))
      
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
                    (rehash (make-vector (fx1+ (* 2 (vector-length pht))) #f))
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
                         (stx-wrap-source
                          #'(case-lambda clause ...)
                          (stx-source stx))))
           #'(let-values ((($primary) primary)) 
               dispatch)))
        ((_ hd . body)
         (kw-lambda? #'hd)
         (with-syntax* ((_ (check-duplicate-bindings #'hd))
                        ((values key kwargs args)
                         (kw-lambda-split #'hd))
                        (kwvar (or key (genident 'key)))
                        ($primary (genident 'kw-lambda))
                        (primary
                         (stx-wrap-source
                          (generate-kw-primary #'kwvar kwargs args #'body)
                          (stx-source stx)))
                        (dispatch
                         (stx-wrap-source
                          (generate-kw-dispatch #'$primary kwargs (not key))
                          (stx-source stx))))
           #'(let-values ((($primary) primary))
               dispatch)))))
    
    (defrules def ()
      ((_ (id . args) body ...)
       (identifier? #'id)
       (define-values (id)
         (lambda args body ...)))
      ((_ id expr)
       (identifier? #'id)
       (define-values (id) expr)))
    
    ;; XXX curried case-lambda
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
    
    (defrules ~case (else =>)
      ((_ _) #!void)
      ((_ e (else body ...))
       (begin body ...))
      ((_ e (else . _) . _)
       (syntax-error "Bad syntax; misplaced else"))
      ((recur e (hd => K) . rest)
       (stx-list? #'hd)
       (if (~case-test e hd)
         (K e)
         (recur e . rest)))
      ((recur e (hd body ...) . rest)
       (stx-list? #'hd)
       (if (~case-test e hd)
         (begin body ...)
         (recur e . rest))))
    
    (defsyntax% (~case-test stx)
      (define (memq-datum? x)
        (let (e (stx-e x))
          (or (symbol? e)
              (keyword? e)
              (immediate? e))))
      
      (define (memv-datum? x)
        (or (memq-datum? x)
            (stx-number? x)))
      
      (syntax-case stx ()
        ((_ e ()) #f)
        ((_ e (datum))
         (with-syntax ((testf
                        (cond
                         ((memq-datum? #'datum) #'eq?)
                         ((memv-datum? #'datum) #'eqv?)
                         (else #'equal?))))
           #'(testf e 'datum)))
        ((_ e (datum ...))
         (with-syntax ((testf
                        (cond
                         ((stx-andmap memq-datum? #'(datum ...)) #'memq)
                         ((stx-andmap memv-datum? #'(datum ...)) #'memv)
                         (else #'member))))
           #'(testf e '(datum ...))))))
    
    (defrules do ()
      ((_ ((var init step ...) ...)
          (test fini ...)
          body ...)
       (stx-andmap identifier? #'(var ...))
       (let $loop ((var init) ...)
         (if (not test)
           (begin body ... ($loop (begin var step ...) ...))
           (begin #!void fini ...)))))
    
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
        ((_ ((hd e) ...) body ...)
         (stx-andmap let-head? #'(hd ...))
         (with-syntax ((($e ...) 
                        (gentemps #'(hd ...)))
                       ((hd-bind ...) 
                        (stx-map let-head #'(hd ...))))
           #'(let-values ((($e) e) ...)
               (and $e ...
                    (let-values ((hd-bind $e) ...)
                      body ...)))))))
    
    (defrules alet* ()
      ((_ () body ...)
       (let () body ...))
      ((recur (hd . rest) body ...)
       (alet (hd)
         (recur rest body ...))))

    (defalias and-let* alet*)
    
    ;; [] ML-style list constructor
    (defrules @list ()
      ((_) '())
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
                  (raise-syntax-error #f "Bad syntax" stx #'e)))
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
       (define-syntax id expr))))
  
  (import <sugar:3>))

(import <sugar> (phi: +1 <sugar>) (phi: +2 <sugar>))

(module <MOP>
  (export (import: <MOP:1> <MOP:2>)
          (phi: +1 (import: <MOP:2> <MOP:3>)))
  
  (module <MOP:1>
    (export #t)
    
    (begin-syntax
      (def (generate-typedef stx struct?)
        (def (wrap e-stx)
          (stx-wrap-source e-stx (stx-source stx)))
        
        (def (slotify field off)
          (syntax-case field ()
            ((getf setf)
             [off #'getf #'setf])))
        
        (def (struct-opt? key)
          (memq (stx-e key) '(fields: id: name: plist: constructor:)))
        
        (def (class-opt? key)
          (memq (stx-e key) '(slots: id: name: plist: constructor:)))

        (def (module-type-id type-t)
          (cond
           ((module-context-ns (current-expander-context))
            => (lambda (ns) (stx-identifier type-t ns "#" type-t)))
           (else
            (let (mid (expander-context-id (current-expander-context)))
              (stx-identifier type-t mid "#" type-t)))))
        
        (syntax-case stx ()
          ((_ type-t super make instance? . rest)
           (and (identifier? #'type-t)
                (or (identifier? #'make)
                    (stx-false? #'make))
                (identifier? #'instance?)
                (stx-plist? #'rest (if struct? struct-opt? class-opt?)))
           
           (with-syntax* (((values els)
                           (or (stx-getq (if struct? fields: slots:) #'rest)
                               []))
                          ((make-instance make-predicate make-getf make-setf)
                           (if struct?
                             #'(make-struct-instance
                                make-struct-predicate
                                make-struct-field-accessor
                                make-struct-field-mutator)
                             #'(make-class-instance
                                make-class-predicate
                                make-class-slot-accessor
                                make-class-slot-mutator)))
                          (type-id 
                           (or (stx-getq id: #'rest)
                               (if (module-context? (current-expander-context))
                                 (module-type-id #'type-t)
                                 (genident #'type-t))))
                          (type-name 
                           (or (stx-getq name: #'rest)
                               #'type-t))
                          (type-plist 
                           (or (stx-getq plist: #'rest)
                               #'[]))
                          (type-ctor 
                           (stx-getq constructor: #'rest))
                          (type-rtd
                           (if struct?
                             (with-syntax ((fields (stx-length els)))
                               #'(make-struct-type 'type-id 
                                   super fields
                                   'type-name type-plist 'type-ctor))
                             (with-syntax (((super ...) 
                                            #'super)
                                           ((slot ...)
                                            (stx-map stx-car els)))
                               #'(make-class-type 'type-id
                                   [super ...] '(slot ...)
                                   'type-name type-plist 'type-ctor))))
                          (def-type
                            (wrap #'(def type-t type-rtd)))
                          (def-make
                            (if (stx-false? #'make)
                              #'(begin)
                              (wrap 
                               #'(def (make . $args)
                                   (apply make-instance type-t $args)))))
                          (def-predicate
                            (wrap #'(def instance? (make-predicate type-t))))
                          (((def-getf def-setf) ...)
                           (stx-map 
                            (lambda (ref)
                              (syntax-case ref ()
                                ((key getf setf)
                                 [(wrap 
                                   #'(def getf (make-getf type-t 'key)))
                                  (wrap 
                                   #'(def setf (make-setf type-t 'key)))])))
                            (if struct?
                              (stx-map slotify els (iota (stx-length els)))
                              els))))
             (wrap
              #'(begin def-type
                       def-predicate
                       def-make
                       def-getf ...
                       def-setf ...)))))))
    
    (defsyntax (defstruct-type stx)
      (generate-typedef stx #t))

    (defsyntax (defclass-type stx)
      (generate-typedef stx #f)))
  
  (import <MOP:1> (phi: +1 <MOP:1>))
  
  (module <MOP:2>
    (export #t 
            (phi: +1 
                  runtime-type-info::t runtime-type-info?
                  runtime-struct-info::t runtime-struct-info?
                  runtime-class-info::t  runtime-class-info?
                  expander-type-info::t expander-type-info?
                  extended-runtime-type-info::t extended-runtime-type-info?
                  extended-struct-info::t extended-struct-info?
                  extended-class-info::t extended-class-info?
                  runtime-rtd-exhibitor::t runtime-type-exhibitor?
                  runtime-struct-exhibitor::t runtime-struct-exhibitor?
                  runtime-class-exhibitor::t runtime-class-exhibitor?
                  runtime-type-identifier runtime-type-identifier-set!
                  runtime-type-exhibitor  runtime-type-exhibitor-set!
                  runtime-type-id    runtime-type-id-set!
                  runtime-type-super runtime-type-super-set!
                  runtime-type-name  runtime-type-name-set!
                  runtime-type-ctor  runtime-type-ctor-set!
                  runtime-type-plist runtime-type-plist-set!
                  runtime-struct-fields runtime-struct-fields-set!
                  runtime-class-slots runtime-class-slots-set!
                  expander-type-identifiers expander-type-identifiers-set!
                  make-runtime-struct-info 
                  make-runtime-class-info
                  make-extended-struct-info
                  make-extended-class-info
                  make-runtime-struct-exhibitor 
                  make-runtime-class-exhibitor 
                  syntax-local-type-info?
                  syntax-local-struct-info?
                  syntax-local-class-info?
                  runtime-type-exhibitor-e))
    
    (begin-syntax
      (defclass-type runtime-type-info::t ()
        #f runtime-type-info?
        slots: 
        ((runtime-identifier 
          runtime-type-identifier runtime-type-identifier-set!))
        id:   gerbil.core#runtime-type-info::t)
      
      (defclass-type runtime-struct-info::t (runtime-type-info::t)
        make-runtime-struct-info runtime-struct-info?
        id:   gerbil.core#runtime-struct-info::t
        name: struct-info)
      
      (defclass-type runtime-class-info::t (runtime-type-info::t)
        make-runtime-class-info runtime-class-info?
        id:   gerbil.core#runtime-class-info::t
        name: class-info)
      
      (defclass-type expander-type-info::t ()
        #f expander-type-info?
        slots:
        ((expander-identifiers 
          expander-type-identifiers expander-type-identifiers-set!))
        id:   gerbil.core#expander-type-info::t)
      
      (defclass-type extended-runtime-type-info::t (runtime-type-info::t)
        #f extended-runtime-type-info?
        slots:
        ((type-exhibitor 
          runtime-type-exhibitor runtime-type-exhibitor-set!))
        id:   gerbil.core#extended-runtime-type-info)
      
      (defclass-type extended-struct-info::t (runtime-struct-info::t 
                                              extended-runtime-type-info::t
                                              expander-type-info::t)
        make-extended-struct-info extended-struct-info?
        id:   gerbil.core#extended-stuct-info::t
        name: struct-info)
      
      (defclass-type extended-class-info::t (runtime-class-info::t 
                                             extended-runtime-type-info::t
                                             expander-type-info::t)
        make-extended-class-info extended-class-info?
        id:   gerbil.core#extended-class-info::t
        name: class-info)
      
      (defstruct-type runtime-rtd-exhibitor::t #f
        #f runtime-type-exhibitor?
        fields:
        ((runtime-type-id    runtime-type-id-set!)
         (runtime-type-super runtime-type-super-set!)
         (runtime-type-name  runtime-type-name-set!)
         (runtime-type-ctor  runtime-type-ctor-set!)
         (runtime-type-plist runtime-type-plist-set!))
        id:   gerbil.core#runtime-rtd-exhibitor::t)
      
      (defstruct-type runtime-struct-exhibitor::t runtime-rtd-exhibitor::t
        make-runtime-struct-exhibitor runtime-struct-exhibitor?
        fields:
        ((runtime-struct-fields runtime-struct-fields-set!))
        id:   gerbil.core#runtime-struct-exhibitor::t
        name: struct-exhibitor)
      
      (defstruct-type runtime-class-exhibitor::t runtime-rtd-exhibitor::t
        make-runtime-class-exhibitor runtime-class-exhibitor?
        fields:
        ((runtime-class-slots runtime-class-slots-set!))
        id:   gerbil.core#runtime-class-exhibitor::t
        name: class-exhibitor)
      
      (def (syntax-local-type-info? stx (is? true))
        (and (identifier? stx)
             (alet (e (syntax-local-value stx false))
               (and (runtime-type-info? e)
                    (is? e)))))
      (def (syntax-local-struct-info? stx)
        (syntax-local-type-info? stx runtime-struct-info?))
      (def (syntax-local-class-info? stx)
        (syntax-local-type-info? stx runtime-class-info?))
      
      (def (runtime-type-exhibitor-e id)
        (and id (let ((info (syntax-local-value id)))
                  (and (extended-runtime-type-info? info)
                       (runtime-type-exhibitor info)))))
      
      ;; private
      (def (typedef-body? stx)
        (def (body-opt? key)
          (memq (stx-e key)
                '(id: name: constructor: transparent: final: plist:)))
        (stx-plist? stx body-opt?))
      
      (def (generate-typedef stx id super-ref els body struct?)
        (def (wrap e-stx)
          (stx-wrap-source e-stx (stx-source stx)))
        
        (def make-id
          (if (uninterned-symbol? (stx-e id))
            (lambda _ (genident id))
            (lambda args
              (apply stx-identifier id args))))
        
        (check-duplicate-identifiers els stx)
        
        (with-syntax* (((values name)
                        (symbol->string (stx-e id)))
                       ((values super)
                        (if struct?
                          (and super-ref (syntax-local-value super-ref))
                          (map syntax-local-value super-ref)))
                       (deftype-type
                         (if struct? 
                           #'defstruct-type
                           #'defclass-type))
                       (type id)
                       (type::t   (make-id name "::t"))
                       (make-type (make-id "make-" name))
                       (type?     (make-id name "?"))
                       (type-super 
                        (if struct?
                          (and super (runtime-type-identifier super))
                          (map runtime-type-identifier super)))
                       ((attr ...)
                        els)
                       ((getf ...)
                        (stx-map (cut make-id name "-" <>) els))
                       ((setf ...)
                        (stx-map (cut make-id name "-" <> "-set!") els))
                       ((values type-attr)
                        (cond
                         ((stx-null? els) [])
                         (struct?         [fields: #'((getf setf) ...)])
                         (else            [slots:  #'((attr getf setf) ...)])))
                       ((values type-name)
                        [name: (or (stx-getq name: body) id)])
                       ((values type-id)
                        (or (alet (e (stx-getq id: body))
                              [id: e])
                            []))
                       ((values type-ctor)
                        (or (alet (e (stx-getq constructor: body))
                              [constructor: e])
                            []))
                       ((values plist)
                        (let* ((plist (or (stx-getq plist: body) 
                                          []))
                               (plist (if (stx-e (stx-getq transparent: body))
                                        (cons [transparent: . #t] plist)
                                        plist))
                               (plist (if (stx-e (stx-getq final: body))
                                        (cons [final: . #t] plist)
                                        plist)))
                          plist))
                       ((values type-plist)
                        (if (null? plist) plist
                            (with-syntax ((plist plist))
                              [plist: #'(quote plist)])))
                       ((type-body ...)
                        [type-attr ... 
                         type-id ... 
                         type-name ... 
                         type-ctor ...
                         type-plist ...])
                       (typedef
                         (wrap
                          #'(deftype-type type::t type-super
                              make-type type?
                              type-body ...)))
                       (make-type-info
                        (if struct?
                          #'make-extended-struct-info
                          #'make-extended-class-info))
                       (meta-type-super
                        (if struct?
                          (and super #'(quote-syntax type-super))
                          (with-syntax (((super-id ...) #'type-super))
                            #'[(quote-syntax super-id) ...])))
                       (make-exhibitor
                        (if struct?
                          #'make-runtime-struct-exhibitor
                          #'make-runtime-class-exhibitor))
                       (meta-rtd-id
                        (and (not (null? type-id)) 
                             (cadr type-id)))
                       (meta-rtd-super
                        (let (quote-e
                              (lambda (x-ref)
                                (and x-ref
                                     (with-syntax ((x-ref x-ref))
                                       #'(quote-syntax x-ref)))))
                          (if struct?
                            (quote-e super-ref)
                            (cons 'list (map quote-e super-ref)))))
                       (meta-rtd-name
                        (cadr type-name))
                       (meta-rtd-ctor
                        (and (not (null? type-ctor))
                             (cadr type-ctor)))
                       (meta-rtd-plist plist)
                       (metadef
                        (wrap
                         #'(defsyntax type
                             (make-type-info 
                              runtime-identifier: (quote-syntax type::t)
                              expander-identifiers:
                              [meta-type-super
                               (quote-syntax type::t)
                               (quote-syntax make-type)
                               (quote-syntax type?)
                               [(quote-syntax getf) ...]
                               [(quote-syntax setf) ...]]
                              type-exhibitor:
                              (make-exhibitor (quote meta-rtd-id)
                                              meta-rtd-super
                                              (quote meta-rtd-name)
                                              (quote meta-rtd-ctor)
                                              (quote meta-rtd-plist)
                                              (quote (attr ...))))))))
          (wrap 
           #'(begin typedef metadef)))))
    
    (defsyntax (defstruct stx)
      (def (generate hd fields body)
        (syntax-case hd ()
          ((id super)
           (and (identifier? #'id)
                (syntax-local-struct-info? #'super))
           (generate-typedef stx #'id #'super fields body #t))
          (_ (if (identifier? hd)
               (generate-typedef stx hd #f fields body #t)
               (raise-syntax-error #f "Bad syntax" stx hd)))))
      
      (syntax-case stx ()
        ((_ hd fields . rest)
         (and (identifier-list? #'fields)
              (typedef-body? #'rest))
         (generate #'hd #'fields #'rest))))

    (defalias define-struct defstruct)
    
    (defsyntax (defclass stx)
      (def (generate hd slots body)
        (syntax-case hd ()
          ((id . super)
           (and (stx-list? #'super)
                (stx-andmap syntax-local-type-info? #'super))
           (generate-typedef stx #'id (syntax->list #'super) slots body #f))
          (_ (if (identifier? hd)
               (generate-typedef stx hd [] slots body #f)
               (raise-syntax-error #f "Bad syntax" stx hd)))))
      
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
         (and (identifier? #'id)
              (syntax-local-type-info? #'type)
              (stx-plist? #'rest method-opt?))
         (with-syntax* (((values klass)
                         (syntax-local-value #'type))
                        ((values rebind?)
                         (and (stx-e (stx-getq rebind: #'rest)) #t))
                        (type::t 
                         (runtime-type-identifier klass))
                        (name 
                         (stx-identifier #'id #'type "::" #'id))
                        (defimpl
                          (wrap #'(def name impl)))
                        (rebind? rebind?)
                        (bind
                         (wrap #'(bind-method! type::t 'id name rebind?))))
           (wrap #'(begin defimpl bind))))))
    
    (defrules @method ()
      ((_ id obj arg ...)
       (and (identifier? #'id)
            (stx-ormap ellipsis? #'(arg ...)))
       (apply call-method obj 'id [arg ...]))
      ((_ id obj arg ...)
       (identifier? #'id)
       (call-method obj 'id arg ...)))
    
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
      ((_ obj id path ... val)
       (slot-set! (@ obj path ...) 'id val))))
  
  (import <MOP:2> (phi: +1 <MOP:2>))
  
  (module <MOP:3>
    (export (phi: +1 #t))
    (begin-syntax
      (defsyntax runtime-type-info
        (make-runtime-class-info 
         runtime-identifier: (quote-syntax runtime-type-info::t)))
      
      (defsyntax runtime-struct-info
        (make-runtime-class-info 
         runtime-identifier: (quote-syntax runtime-struct-info::t)))
      
      (defsyntax runtime-class-info
        (make-runtime-class-info
         runtime-identifier: (quote-syntax runtime-class-info::t)))
      
      (defsyntax expander-type-info
        (make-runtime-class-info
         runtime-identifier: (quote-syntax expander-type-info::t)))
      
      (defsyntax extended-runtime-type-info
        (make-runtime-class-info 
         runtime-identifier: (quote-syntax extended-runtime-type-info::t)))
      
      (defsyntax extended-struct-info
        (make-runtime-class-info 
         runtime-identifier: (quote-syntax extended-struct-info::t)))
      
      (defsyntax extended-class-info
        (make-runtime-class-info
         runtime-identifier: (quote-syntax extended-class-info::t)))
      
      (defsyntax runtime-rtd-exhibitor
        (make-runtime-class-info 
         runtime-identifier: (quote-syntax runtime-rtd-exhibitor::t)))
      
      (defsyntax runtime-struct-exhibitor
        (make-runtime-class-info 
         runtime-identifier: (quote-syntax runtime-struct-exhibitor::t)))
      
      (defsyntax runtime-class-exhibitor
        (make-runtime-class-info 
         runtime-identifier: (quote-syntax runtime-class-exhibitor::t)))
      
      (defclass macro-object (macro)
        id: gerbil.core#macro-object::t)
      
      (defmethod {apply-macro-expander macro-object}
        (lambda (self stx)
          (core-apply-expander (macro-object-macro self) stx)))))
  
  (import <MOP:3>))

(import <MOP> (phi: +1 <MOP>) (phi: +2 <MOP>))

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
                           eq? eqv? equal?)
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
           (syntax-local-struct-info? #'struct-id)
           [struct: (syntax-local-value #'struct-id) 
                    (parse-vector #'body)])
          ((class-id . body)
           (syntax-local-class-info? #'class-id)
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
          #f "Bad syntax; illegal pattern" 
          (if match-stx
            [match-stx stx hd]
            [stx hd])))
      
      (parse1 stx))
    
    (def (match-pattern? stx)
      (call/esc
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
             ((_ =>: pat)
              (loop #'pat vars K))
             ((_ :: _ =>: pat)
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
                [#'if #'(? hd target) K E])
               ((pat)
                [#'if #'(? hd target) 
                      (generate1 tgt #'pat K E) 
                      E])
               ((=>: pat)
                (with-syntax (($tgt (genident 'e)))
                  [#'let #'(($tgt (hd target)))
                         [#'if #'$tgt 
                               (generate1 #'$tgt #'pat K E) 
                               E]]))
               ((:: proc =>: pat)
                (with-syntax (($tgt (genident 'e)))
                  [#'if #'(? hd target)
                        [#'let #'(($tgt (proc target)))
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
               [#'if #'(##pair? target)
                     [#'let #'(($hd (##car target))
                               ($tl (##cdr target)))
                            (generate1 #'$hd #'hd
                                       (generate1 #'$tl #'tl K E)
                                       E)]
                     E]))
            ((null:)
             [#'if #'(##null? target) K E])
            ((splice: hd rest)
             (generate-splice tgt #'hd #'rest K E))
            ((box: pat)
             (with-syntax (($tgt (genident 'e)))
               [#'if #'(##box? target)
                     [#'let #'(($tgt (##unbox target)))
                            (generate1 #'$tgt #'pat K E)]
                     E]))
            ((values: body)
             (syntax-case #'body ()
               ((simple: body)
                (with-syntax ((len (stx-length #'body)))
                  [#'if #'(##fx= (values-count target) len)
                        (generate-simple-vector tgt #'body 0 K E)
                        E]))
               ((list: body)
                (generate-list-vector tgt #'body #'values->list 0 K E))))
            ((vector: body)
             (syntax-case #'body ()
               ((simple: body)
                (with-syntax ((len (stx-length #'body)))
                  [#'if #'(and (##vector? target)
                               (##fx= (##vector-length target) len))
                        (generate-simple-vector tgt #'body 0 K E)
                        E]))
               ((list: body)
                [#'if #'(vector? target)
                      (generate-list-vector tgt #'body #'subvector->list 0 K E)
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
                                    #'##eq?)
                                   ((number? e) #'eqv?)
                                   (else #'equal?)))))
               [#'if #'(eql target (quote datum)) K E]))
            ((var: id)
             [#'let #'((id target)) K])
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
               [#'let #'(($tgt (##vector-ref target k)))
                      (generate1 #'$tgt #'hd 
                                 (recur #'rest (fx1+ off))
                                 E)]))
            (_ K))))
      
      (def (generate-list-vector tgt body tgt->list start K E)
        (with-syntax (($tgt (genident 'e))
                      (target tgt)
                      (target->list tgt->list))
          [#'let #'(($tgt (target->list target)))
                 (generate1 #'$tgt body K E)]))
      
      (def (generate-struct info tgt body K E)
        (with-syntax* (((values rtd)
                        (and (extended-struct-info? info)
                             (runtime-type-exhibitor info)))
                       ((values fields)
                        (let lp ((rtd rtd) (k 0))
                          (if rtd
                            (lp (runtime-type-exhibitor-e 
                                 (runtime-type-super rtd))
                                (fx+ (length (runtime-struct-fields rtd)) k))
                            k)))
                       ((values final?)
                        (and rtd (assgetq final: (runtime-type-plist rtd))))
                       (target tgt)
                       (type::t 
                        (runtime-type-identifier info))
                       (type-instance?
                        (if final?
                          #'direct-struct-instance?
                          #'struct-instance?)))
          (syntax-case body ()
            ((simple: body)
             (let (K (generate-simple-vector tgt #'body 1 K E))
               (if (and rtd (fx<= (stx-length #'body) fields))
                 [#'if #'(type-instance? type::t target)
                       K E]
                 (with-syntax ((len (stx-length #'body)))
                   [#'if #'(and (type-instance? type::t target)
                                (##fx< len (##vector-length target)))
                         K E]))))
            ((list: body)
             [#'if #'(type-instance? type::t target)
                   (generate-list-vector tgt #'body #'struct->list 1 K E)
                   E]))))
      
      (def (generate-class info tgt body K E)
        (def rtd 
          (and (extended-class-info? info) 
               (runtime-type-exhibitor info)))
        
        (def known-slot?
          (if rtd
            (lambda (key)
              (let (slot (keyword->symbol (stx-e key)))
                (rtd-known-slot? rtd slot)))
            false))
        
        (def final?
          (and rtd (assgetq final: (runtime-type-plist rtd))))
        
        (def (rtd-known-slot? rtd slot)
          (and rtd
               (or (memq slot (runtime-class-slots rtd))
                   (ormap (cut rtd-known-slot? <> slot)
                          (map runtime-type-exhibitor-e 
                               (runtime-type-super rtd))))))
        
        (def (recur klass rest)
          (syntax-case rest ()
            ((key pat . rest)
             (with-syntax* ((target tgt)
                            ($klass klass)
                            ($off (genident 'slot))
                            ($tgt (genident 'e))
                            ((values K)
                             [#'let #'(($tgt (##vector-ref target (fx1+ $off))))
                                   (generate1 #'$tgt #'pat
                                              (recur klass #'rest)
                                              E)]))
               (if (known-slot? #'key)
                 [#'let #'(($off (class-slot-offset $klass key)))
                        K]
                 [#'let #'(($off (class-slot-offset $klass key)))
                        [#'if #'$off K E]])))
            (_ K)))
        
        (with-syntax* (($klass (genident 'class))
                       (target tgt)
                       (type::t 
                        (runtime-type-identifier info))
                       (type-instance?
                        (if final?
                          #'direct-class-instance?
                          #'class-instance?)))
          [#'if #'(type-instance? type::t target)
                [#'let #'(($klass (object-type target)))
                       (recur #'$klass body)]
                E]))
      
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
                    "Bad syntax; misplaced else" stx #'hd)))
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
               (_ (raise-syntax-error #f "Bad syntax; illegal match clause"
                                      stx #'hd))))
            (_ r))))
      
      (def (generate-body body)
        (with-syntax* (($E (genident 'E))
                       ((target ...)
                        tgt-lst)
                       (fail 
                        (stx-wrap-source
                         #'(lambda () (error "No clause matching" target ...))
                         (stx-source stx)))
                       (body
                        (generate-clauses body #'($E))))
          #'(let (($E fail))
              body)))
      
      (def (generate-clauses rest E)
        (syntax-case rest ()
          ((hd)
           (syntax-case #'hd ()
             ((_ clause body)
              (if (stx-e #'clause)
                (generate1 #'clause #'body E)
                #'body))))
          ((hd . rest)
           (syntax-case #'hd ()
             ((try clause body)
              (with-syntax ((body 
                             (if (stx-e #'clause)
                               (generate1 #'clause #'body E)
                               #'body))
                            (rest-body 
                             (generate-clauses #'rest #'(try))))
                #'(let ((try (lambda () body)))
                    rest-body)))))
          (_ E)))
      
      (def (generate1 clause body E)
        (let recur ((rest clause) (rest-targets tgt-lst))
          (syntax-case rest ()
            ((ptree . rest)
             (syntax-case rest-targets ()
               ((target . rest-targets)
                (with-syntax* (($K (genident 'K))
                               ((var ...)
                                (match-pattern-vars #'ptree))
                               (body 
                                (recur #'rest #'rest-targets))
                               (dispatch
                                (generate-match1 stx #'target #'ptree
                                                 #'($K var ...)
                                                 E)))
                  #'(let (($K (lambda (var ...) body)))
                      dispatch)))))
            (_ body))))
      
      (generate-body (parse-body (stx-length tgt-lst))))
    
    (def (generate-match stx tgt clauses)
      (def (reclause clause)
        (syntax-case clause (else)
          ((else . _) clause)
          ((hd . body) 
           (stx-wrap-source 
            #'((hd) . body)
            (stx-source #'clause)))
          (_ (raise-syntax-error #f 
               "Bad syntax; illegal match clause" stx clause))))
      
      (generate-match* stx [tgt] (stx-map reclause clauses))))
  
  (defsyntax (match stx)
    (syntax-case stx (<> <...>)
      ((_ <> . clauses)
       (stx-list? #'clauses)
       (with-syntax* (($e (genident 'e))
                      (body 
                       (stx-wrap-source 
                        #'(match $e . clauses)
                        (stx-source stx))))
         #'(lambda ($e) body)))
      ((_ <...> . clauses)
       (stx-list? #'clauses)
       (with-syntax* (($args (genident 'args))
                      (body
                       (stx-wrap-source
                        #'(match $args . clauses)
                        (stx-source stx))))
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
       (and (recur pred $obj)
            (K $obj))))
    ((recur pred :: K)
     (lambda ($obj)
       (alet ($val (recur pred $obj))
         (K $val))))
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
              (raise-syntax-error #f "Bad syntax" $stx)))))
  
  (defrules defrules-for-match ()
    ((_ id . body)
     (defsyntax-for-match id
       (syntax-rules . body)))))

(import <match> (phi: +1 <match>) (phi: +2 <match>))

(module <more-sugar>
  (export #t (phi: +1 #t))
  
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
                       (stx-wrap-source
                        #'(lambda () body ...)
                        (stx-source stx)))
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
    ((_ body postlude)
     (with-unwind-protect (lambda () body) (lambda () postlude))))
  ;; ...
  )

(import <more-sugar> (phi: +1 <more-sugar>) (phi: +2 <more-sugar>))

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

(import (phi: +1 <more-syntax-sugar>)
        (phi: +2 <more-syntax-sugar>))

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

  (defsyntax-for-export (struct-out stx)
    (syntax-case stx ()
      ((_ id ...)
       (let lp ((rest #'(id ...)) (ids []))
         (syntax-case rest ()
           ((id . rest)
            (let (info (syntax-local-value #'id false))
              (if (expander-type-info? info)
                (with ([super type::t make-type type? getf setf]
                       (@ info expander-identifiers))
                  (lp #'rest [#'id type::t make-type type? getf ... setf ... ids ...]))
                (raise-syntax-error #f "Incomplete type info" stx #'id))))
           (_ (cons 'begin: ids)))))))
  
  ;; ...
  )

(import <module-sugar>)

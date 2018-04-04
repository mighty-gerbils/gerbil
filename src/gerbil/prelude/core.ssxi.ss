;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; :gerbil/core prelude ssxi
prelude: :gerbil/compiler/ssxi
package: gerbil

;; gx-gambc0: struct-instance? and direct-struct-instance? [pattern matcher]
(declare-type*
 (struct-instance?
  (@lambda 2 inline:
      (ast-rules (%#call)
        ((%#call _ klass obj)
         (%#call (%#ref ##structure-instance-of?)
                 obj
                 (%#call (%#ref ##type-id) klass))))))
 (direct-struct-instance?
  (@lambda 2 inline:
      (ast-rules (%#call)
        ((%#call _ klass obj)
         (%#call (%#ref ##structure-direct-instance-of?)
                 obj
                 (%#call (%#ref ##type-id) klass)))))))

;; gx-gambc0: struct-instance-init! [custom struct constructors]
(declare-type*
 (struct-instance-init!
  (@lambda (1) inline:
      (lambda (ast)
        (ast-case ast (%#call %#ref)
          ((%#call _ self)
           #'(%#quote #!void))
          ((%#call _ (%#ref self) arg ...)
           (with-syntax* (((values arg-count) (length #'(arg ...)))
                          ((off ...) (iota arg-count 1))
                          (count arg-count))
             #'(%#if (%#call (%#ref ##fx<)
                             (%#quote count)
                             (%#call (%#ref ##vector-length) (%#ref self)))
                 (%#begin
                  (%#call (%#ref ##vector-set!) (%#ref self) (%#quote off) arg)
                  ...)
                 (%#call (%#ref error)
                         (%#quote "struct-instance-init!: too many arguments for struct")
                         (%#ref self)))))
          ((%#call recur self arg ...)
           (with-syntax (($self (make-symbol (gensym '__self))))
             #'(%#let-values ((($self) self))
                  (%#call recur (%#ref $self) arg ...)))))))))

;; gx-gambc0: simple runtime functions that should be inlined
(declare-type*
 (true (@lambda (0) inline:
           (ast-rules (%#call %#ref)
             ((%#call _ (%#ref arg) ...)
              (%#quote #t))
             ((%#call _ arg ...)
              (%#begin arg ... (%#quote #t))))))
 (true? (@lambda 1 inline:
            (ast-rules (%#call)
              ((%#call _ arg)
               (%#call (%#ref eq?) arg (%#quote #t))))))
 (false (@lambda (0) inline:
            (ast-rules (%#call %#ref)
              ((%#call _ (%#ref arg) ...)
               (%#quote #f))
              ((%#call _ arg ...)
               (%#begin arg ... (%#quote #f))))))
 (void (@lambda (0) inline:
           (ast-rules (%#call %#ref)
             ((%#call _ (%#ref arg) ...)
              (%#quote #!void))
             ((%#call _ arg ...)
              (%#begin arg ... (%#quote #!void))))))
 (void? (@lambda 1 inline:
            (ast-rules (%#call)
              ((%#call _ arg)
               (%#call (%#ref eq?) arg (%#quote #!void))))))
 (identity (@lambda 1 inline:
               (ast-rules (%#call)
                 ((%#call _ arg)
                  arg))))
 (cons* (@lambda (2) inline:
            (ast-rules (%#call)
              ((%#call _ x y)
               (%#call (%#ref cons) x y))
              ((%#call recur x y rest ...)
               (%#call (%#ref cons) x (%#call recur y rest ...))))))
 (values-count (@lambda 1 inline:
                   (lambda (ast)
                     (ast-case ast (%#call %#ref)
                       ((%#call _ (%#ref var))
                        #'(%#if (%#call (%#ref ##values?) (%#ref var))
                                (%#call (%#ref ##vector-length) (%#ref var))
                                (%#quote 1)))
                       ((%#call recur expr)
                        (with-syntax (($values (make-symbol (gensym '__values))))
                          #'(%#let-values ((($values) expr))
                                          (%#call recur (%#ref $values)))))))))
 (values->list (@lambda 1 inline:
                   (lambda (ast)
                     (ast-case ast (%#call %#ref)
                       ((%#call _ (%#ref var))
                        #'(%#if (%#call (%#ref ##values?) (%#ref var))
                                (%#call (%#ref ##vector->list) (%#ref var))
                                (%#call (%#ref list) (%#ref var))))
                       ((%#call recur expr)
                        (with-syntax (($values (make-symbol (gensym '__values))))
                          #'(%#let-values ((($values) expr))
                                          (%#call recur (%#ref $values))))))))))

;; gx-gambc0: simple hash-table ops
(declare-type*
 (make-hash-table (@lambda (0) make-table))
 (make-hash-table-eq (@lambda (0) inline:
                         (ast-rules (%#call)
                           ((%#call _ arg ...)
                            (%#call (%#ref make-table) (%#quote test:) (%#ref eq?) arg ...)))))
 (make-hash-table-eqv (@lambda (0) inline:
                          (ast-rules (%#call)
                            ((%#call _ arg ...)
                             (%#call (%#ref make-table) (%#quote test:) (%#ref eqv?) arg ...)))))
 (list->hash-table (@lambda (1) list->table))
 (list->hash-table-eq (@lambda (1) inline:
                          (ast-rules (%#call)
                            ((%#call _ lst arg ...)
                             (%#call (%#ref list->table) lst (%#quote test:) (%#ref eq?) arg ...)))))
 (list->hash-table-eqv (@lambda (1) inline:
                           (ast-rules (%#call)
                             ((%#call _ lst arg ...)
                              (%#call (%#ref list->table) lst (%#quote test:) (%#ref eqv?) arg ...)))))
 (hash? (@lambda 1 table?))
 (hash-table? (@lambda 1 table?))
 (hash-length (@lambda 1 table-length))
 (hash-ref (@case-lambda (2 table-ref) (3 table-ref)))
 (hash-get (@lambda 2 inline:
               (ast-rules (%#call)
                 ((%#call _ ht key)
                  (%#call (%#ref table-ref) ht key (%#quote #f))))))
 (hash-put! (@lambda 3 table-set!))
 (hash-remove! (@lambda 2 table-set!))
 (hash->list (@lambda 1 table->list))
 (hash-for-each (@lambda 2 table-for-each))
 (hash-find (@lambda 2 table-search)))

;; gx-gambc0: simple arithmetic
(declare-type*
 (1+ (@lambda 1 inline:
         (ast-rules (%#call)
           ((%#call _ arg)
            (%#call (%#ref +) arg (%#quote 1))))))
 (1- (@lambda 1 inline:
         (ast-rules (%#call)
           ((%#call _ arg)
            (%#call (%#ref -) arg (%#quote 1))))))
 (fx1+ (@lambda 1 inline:
           (ast-rules (%#call)
             ((%#call _ arg)
              (%#call (%#ref fx+) arg (%#quote 1))))))
 (fx1- (@lambda 1 inline:
           (ast-rules (%#call)
             ((%#call _ arg)
              (%#call (%#ref fx-) arg (%#quote 1))))))
 (fx/ (@lambda 2 fxquotient))
 (fxshift (@lambda 2 fxarithmetic-shift)))

;; gx-gambc0: foldings
(declare-type*
 (foldl (@case-lambda (3 foldl1) (4 foldl2) ((5) #f)))
 (foldr (@case-lambda (3 foldr1) (4 foldr2) ((5) #f)))
 (andmap (@case-lambda (2 andmap1) (3 andmap2) ((4) #f)))
 (ormap (@case-lambda (2 ormap1) (3 ormap2) ((4) #f)))
 (filter-map (@case-lambda (2 filter-map1) (3 filter-map2) ((4) #f))))

;; gx-gambc0: call/cc and friends
(declare-type*
 (call-with-escape (@lambda 1 call-with-current-continuation))
 (with-catch (@lambda 2 with-exception-catcher)))

;; gx-gambc0: promises
(declare-type*
 (promise? (@lambda 1 ##promise?))
 (make-promise (@lambda 1 ##make-promise)))

;; gx-gambc1: AST type for optimizing the expander
(declare-type*
 (AST::t (@struct-type gerbil#AST::t #f 2))
 (AST? (@struct-pred AST::t))
 (AST-e (@struct-getf AST::t 0))
 (AST-source (@struct-getf AST::t 1))
 (make-AST (@struct-cons AST::t)))

;;; runtime procedure signatures
(defrules declare-primitive/0 ()
  ((_ prim ...)
   (declare-primitive* (prim 0) ...)))

(defrules declare-primitive/1 ()
  ((_ prim ...)
   (declare-primitive* (prim 1) ...)))

(defrules declare-primitive/2 ()
  ((_ prim ...)
   (declare-primitive* (prim 2) ...)))

(defrules declare-primitive/3 ()
  ((_ prim ...)
   (declare-primitive* (prim 3) ...)))

(defrules declare-primitive/4 ()
  ((_ prim ...)
   (declare-primitive* (prim 4) ...)))

(defrules declare-primitive/5 ()
  ((_ prim ...)
   (declare-primitive* (prim 5) ...)))

;; r5rs primitives -- <r5rs-runtime>
(declare-primitive/0
 interaction-environment)

(declare-primitive/1
 not boolean?
 number? complex? real? rational? integer?
 exact? inexact?
 zero? positive? negative? odd? even?
 exact->inexact inexact->exact
 abs
 pair? null? list?
 car cdr
 caar cadr cdar cddr
 caaar cadar caadr caddr
 cdaar cddar cdadr cdddr
 caaaar caadar caaadr caaddr
 cadaar caddar cadadr cadddr
 cdaaar cdadar cdaadr cdaddr
 cddaar cdddar cddadr cddddr
 reverse
 symbol? symbol->string string->symbol
 char?
 char-alphabetic? char-numeric? char-whitespace?
 char-upper-case? char-lower-case?
 char->integer integer->char
 char-upcase char-downcase
 string?
 string-length
 string->list list->string
 string-copy
 vector?
 vector-length
 vector->list list->vector
 procedure?
 force
 call-with-current-continuation
 input-port? output-port?
 open-input-file
 open-output-file
 close-input-port
 close-output-port
 eof-object?
 scheme-report-environment
 load)

(declare-primitive/2
 eq? eqv? equal?
 cons set-car! set-cdr!
 list-tail list-ref
 memq memv member
 assq assv assoc
 quotient remainder modulo
 string-ref
 string-fill!
 vector-ref
 vector-fill!
 call-with-values
 call-with-input-file
 call-with-output-file
 with-input-from-file
 with-output-to-file)

(declare-primitive/3
 string-set!
 substring
 vector-set!
 dynamic-wind)

(declare-primitive*
 (number->string 1 2)
 (string->number 1 2)
 (make-string 1 2)
 (make-vector 1 2)
 (map (2))
 (for-each (2))
 (eval 1 2)
 (current-input-port 0 1)
 (current-output-port 0 1)
 (read 0 1)
 (read-char 0 1)
 (peek-char 0 1)
 (char-ready? 0 1)
 (write 1 2)
 (display 1 2)
 (newline 0 1)
 (write-char 1 2))

;; core runtime primitives -- <host-runtime>
(declare-primitive/0
 gerbil-system system-type)

(declare-primitive/1
 immediate?
 finite? infinite? nan?
 fixnum? nonnegative-fixnum?
 fxzero? fxpositive? fxnegative? fxodd? fxeven?
 fixnum->flonum
 flonum?
 flzero? flpositive? flnegative?
 flnan? flinfinite? flfinite? flinteger?
 box? box unbox
 last last-pair
 vector-copy
 dssl-object? dssl-key-object? dssl-rest-object? dssl-optional-object?
 plist->hash-table-eq plist->hash-table-eqv
 hash-keys
 hash-values
 eq?-hash eqv?-hash equal?-hash
 uninterned-symbol? interned-symbol?
 symbol-hash
 keyword? uninterned-keyword? interned-keyword? keyword-hash
 string->keyword keyword->string make-uninterned-keyword
 symbol->keyword keyword->symbol
 string-empty?
 type-descriptor?
 struct-type?
 class-type?
 make-struct-predicate
 make-class-predicate
 object? object-type
 struct->list class->list
 raise
 exception? error-object? type-error?
 error? error-message error-irritants error-trace
 create-directory create-directory*
 delete-file delete-directory
 file-type
 path-extension path-strip-extension
 path-directory path-strip-directory
 path-strip-trailing-directory-separator
 read-syntax-from-file
 u8vector?
 u8vector-length
 u8vector->list list->u8vector
 u8vector-copy
 object->u8vector u8vector->object
 get-output-u8vector)

(declare-primitive/2
 fxmodulo
 fxbit-set?
 fxarithmetic-shift
 set-box!
 memf find
 remq remv remf
 hash-key?
 hash-map
 string-shrink!
 vector-shrink!
 string-split string-join
 string-prefix?
 make-struct-field-accessor
 make-struct-field-mutator
 make-struct-field-unchecked-accessor
 make-struct-field-unchecked-mutator
 make-class-slot-accessor
 make-class-slot-mutator
 make-class-slot-unchecked-accessor
 make-class-slot-unchecked-mutator
 class-slot-offset
 unchecked-field-ref
 unchecked-slot-ref
 struct-instance? class-instance?
 direct-struct-instance? direct-class-instance?
 method-ref direct-method-ref bound-method-ref
 checked-method-ref checked-bound-method-ref
 find-method
 struct-subtype? class-subtype?
 with-unwind-protect
 with-exception-handler
 with-exception-catcher
 setenv
 copy-file rename-file
 file-newer?
 call-with-input-string with-input-from-string
 call-with-output-string with-output-to-string
 u8vector-ref
 u8vector-fill!
 u8vector-shrink!
 call-with-input-u8vector with-input-from-u8vector
 call-with-output-u8vector with-output-to-u8vector)

(declare-primitive/3
 subvector
 hash-fold
 struct-field-ref
 class-slot-ref
 unchecked-field-set!
 unchecked-slot-set!
 next-method
 u8vector-set!
 subu8vector)

(declare-primitive/4
 subvector-fill!
 struct-field-set!
 class-slot-set!
 subu8vector-fill!)

(declare-primitive/5
 subvector-move!
 substring-move!
 subu8vector-move!)

(declare-primitive*
 (make-list 1 2)
 (iota 1 2 3)
 (assgetq 2 3)
 (assgetv 2 3)
 (assget 2 3)
 (remove 2 3)
 (pgetq 2 3)
 (pgetv 2 3)
 (pget 2 3)
 (subvector->list 1 2)
 (vector-map (2))
 (plist->hash-table 1 2)
 (hash-update! 3 4)
 (hash-copy (1))
 (hash-copy! (1))
 (hash-merge (1))
 (hash-merge! (1))
 (gensym 0 1)
 (string->bytes 1 2)
 (substring->bytes 3 4)
 (bytes->string 1 2)
 (substring-fill! 4)
 (substring-move! 5)
 (string-index 2 3)
 (string-rindex 2 3)
 (make-struct-type 6 7)
 (make-class-type 6)
 (make-struct-instance (1))
 (make-class-instance (1))
 (struct-instance-init! (1))
 (class-instance-init! (1))
 (slot-ref 2 3)
 (slot-set! 3 4)
 (call-method (2))
 (bind-method! 3 4)
 (call-next-method (3))
 (current-error-port 0 1)
 (make-parameter 1 2)
 (call-with-parameters (1))
 (current-exception-handler 0 1)
 (exit 0 1)
 (getenv 1 2)
 (current-directory 0 1)
 (directory-files 0 1)
 (file-exists? 1 2)
 (path-expand 1 2)
 (path-normalize 1 2 3)
 (read-syntax 0 1)
 (read-line 0 1 2 3 4)
 (read-all 0 1 2)
 (read-substring 3 4 5)
 (write-substring 3 4)
 (open-input-string 0 1)
 (open-output-string 0 1)
 (make-u8vector 1 2)
 (read-subu8vector 3 4 5)
 (write-subu8vector 3 4)
 (open-input-u8vector 0 1)
 (open-output-u8vector 0 1)
 (load-module 1 2))

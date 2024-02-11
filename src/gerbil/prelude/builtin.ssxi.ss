;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; :gerbil/core prelude ssxi
prelude: :gerbil/compiler/ssxi
package: gerbil

;; gx-gambc0: struct-instance? and direct-instance? [pattern matcher]
(declare-type*
 (struct-instance?
  (@lambda 2 inline:
      (ast-rules (%#call)
        ((%#call _ klass obj)
         (%#call (%#ref ##structure-instance-of?)
                 obj
                 (%#call (%#ref ##type-id) klass))))))
 (direct-instance?
  (@lambda 2 inline:
      (ast-rules (%#call)
        ((%#call _ klass obj)
         (%#call (%#ref ##structure-direct-instance-of?)
                 obj
                 (%#call (%#ref ##type-id) klass)))))))


;; runtime: make-object with known size
(declare-type*
 (make-object
  (@lambda (2) inline:
      (lambda (ast)
        (ast-case ast (%#call %#quote)
          ((%#call make-object klass (%#quote len))
           (with-syntax (((init ...) (make-list (fx1- (stx-e #'len)) '(%#quote #f))))
             #'(%#call (%#ref ##structure) klass init ...)))
          ((%#call make-object klass len)
           (with-syntax (($obj (make-symbol (gensym '__obj))))
             #'(%#let-values ((($obj) (%#call (%#ref ##make-structure) klass len)))
                             (%#begin
                              (%#call (%#ref object-fill!) (%#ref $obj) (%#quote #f))
                              (%#ref $obj))))))))))

;; runtime: struct-instance-init! [custom struct constructors]
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
                             (%#call (%#ref ##structure-length) (%#ref self)))
                 (%#begin
                  (%#call (%#ref ##unchecked-structure-set!) (%#ref self) arg (%#quote off) (%#call (%#ref ##structure-type) (%#ref self)) (%#quote #f))
                  ...)
                 (%#call (%#ref error)
                         (%#quote "struct-instance-init!: too many arguments for struct")
                         (%#ref self)
                         (%#quote count)
                         (%#call (%#ref ##vector-length) (%#ref self))))))
          ((%#call recur self arg ...)
           (with-syntax (($self (make-symbol (gensym '__self))))
             #'(%#let-values ((($self) self))
                  (%#call recur (%#ref $self) arg ...)))))))))

;; runtime: call-method
(declare-type*
 (call-method
  (@lambda (2) inline:
      (lambda (ast)
        (ast-case ast (%#call %#ref)
          ((%#call _ (%#ref self) method arg ...)
           (with-syntax (($method (make-symbol (gensym '__method))))
             #'(%#let-values ((($method) (%#call (%#ref method-ref) (%#ref self) method)))
                             (%#if (%#ref $method)
                                   (%#call (%#ref $method) (%#ref self) arg ...)
                                   (%#call (%#ref error) (%#quote "Missing method")
                                           (%#ref self) method)))))
          ((%#call recur self method arg ...)
           (with-syntax (($self (make-symbol (gensym '__self))))
             #'(%#let-values ((($self) self))
                             (%#call recur (%#ref $self) method arg ...)))))))))


;; runtime: simple runtime functions that should be inlined
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

;; runtime: simple hash-table ops
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

;; runtime: simple arithmetic
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

;; runtime: foldings
(declare-type*
 (foldl (@case-lambda (3 foldl1) (4 foldl2) ((5) foldl*)))
 (foldr (@case-lambda (3 foldr1) (4 foldr2) ((5) foldr*)))
 (andmap (@case-lambda (2 andmap1) (3 andmap2) ((4) andmap*)))
 (ormap (@case-lambda (2 ormap1) (3 ormap2) ((4) ormap*)))
 (filter-map (@case-lambda (2 filter-map1) (3 filter-map2) ((4) filter-map*))))

;;; runtime procedure signatures
(defrules declare-primitive/0 ()
  ((_ prim ...)
   (declare-primitive* (prim 0) ...)))

(defrules declare-primitive/0/unchecked ()
  ((_ prim ...)
   (declare-primitive/unchecked* (prim 0) ...)))

(defrules declare-primitive/1 ()
  ((_ prim ...)
   (declare-primitive* (prim 1) ...)))

(defrules declare-primitive/1/unchecked ()
  ((_ prim ...)
   (declare-primitive/unchecked* (prim 1) ...)))

(defrules declare-primitive/2 ()
  ((_ prim ...)
   (declare-primitive* (prim 2) ...)))

(defrules declare-primitive/2/unchecked ()
  ((_ prim ...)
   (declare-primitive/unchecked* (prim 2) ...)))

(defrules declare-primitive/3 ()
  ((_ prim ...)
   (declare-primitive* (prim 3) ...)))

(defrules declare-primitive/3/unchecked ()
  ((_ prim ...)
   (declare-primitive/unchecked* (prim 3) ...)))

(defrules declare-primitive/4 ()
  ((_ prim ...)
   (declare-primitive* (prim 4) ...)))

(defrules declare-primitive/4/unchecked ()
  ((_ prim ...)
   (declare-primitive/unchecked* (prim 4) ...)))

(defrules declare-primitive/5 ()
  ((_ prim ...)
   (declare-primitive* (prim 5) ...)))

(defrules declare-primitive/5/unchecked()
  ((_ prim ...)
   (declare-primitive/unchecked* (prim 5) ...)))

(defrules declare-primitive/6/unchecked()
  ((_ prim ...)
   (declare-primitive/unchecked* (prim 6) ...)))
;; r5rs primitives -- <r5rs-runtime>
(declare-primitive/0/unchecked
 interaction-environment)

(declare-primitive/1/unchecked
 not boolean?
 number? complex? real? rational? integer?
 exact? inexact?
 zero? positive? negative? odd? even?
 pair? null? list?
 symbol?
 char?
 string?
 vector?
 procedure?
 input-port? output-port?
 eof-object?)

(declare-primitive/1
 exact->inexact inexact->exact
 abs
 car cdr
 caar cadr cdar cddr
 caaar cadar caadr caddr
 cdaar cddar cdadr cdddr
 caaaar caadar caaadr caaddr
 cadaar caddar cadadr cadddr
 cdaaar cdadar cdaadr cdaddr
 cddaar cdddar cddadr cddddr
 reverse
 symbol->string string->symbol
 char-alphabetic? char-numeric? char-whitespace?
 char-upper-case? char-lower-case?
 char->integer integer->char
 char-upcase char-downcase
 string-length
 list->string
 vector-length
 list->vector
 force
 call-with-current-continuation
 open-input-file
 open-output-file
 close-input-port
 close-output-port
 scheme-report-environment
 load)

(declare-primitive/2/unchecked
 eq? eqv? equal?
 cons)

(declare-primitive/2
 set-car! set-cdr!
 list-tail list-ref
 memq memv
 assq assv
 quotient remainder modulo
 string-ref
 vector-ref
 call-with-values
 call-with-input-file
 call-with-output-file
 with-input-from-file
 with-output-to-file)

(declare-primitive/3
 string-set!
 substring
 vector-set!
 list-set!
 dynamic-wind)

(declare-primitive*
 (number->string 1 2)
 (string->number 1 2)
 (make-string 1 2)
 (make-vector 1 2)
 (string-fill! 2 3 4)
 (vector-fill! 2 3 4)
 (map (2))
 (for-each (2))
 (member 2 3)
 (assoc 2 3)
 (max (1))
 (min (1))
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
(declare-primitive/0/unchecked
 gerbil-system system-type)

(declare-primitive/1/unchecked
 immediate?
 fixnum? nonnegative-fixnum?
 fxzero?
 flonum?
 box? box
 last last-pair
 dssl-object? dssl-key-object? dssl-rest-object? dssl-optional-object?
 plist->hash-table-eq plist->hash-table-eqv
 hash-keys
 hash-values
 eq?-hash eqv?-hash equal?-hash
 keyword? uninterned-keyword? interned-keyword?
 string-empty?
 type-descriptor?
 struct-type?
 class-type?
 make-struct-predicate
 make-class-predicate
 object? object-type
 struct->list class->list
 exception? error-object?
 error? error-message error-irritants error-trace
 read-syntax-from-file
 u8vector?
 promise?)

(declare-primitive/1
 fixnum? nonnegative-fixnum?
 fxpositive? fxnegative? fxodd? fxeven?
 fixnum->flonum
 flzero? flpositive? flnegative?
 flnan? flinfinite? flfinite? flinteger?
 unbox
 uninterned-symbol? interned-symbol? string->uninterned-symbol
 symbol-hash
 keyword? uninterned-keyword? interned-keyword? keyword-hash
 string->keyword keyword->string make-uninterned-keyword
 symbol->keyword keyword->symbol
 string-concatenate
 raise
 create-directory
 delete-file delete-directory
 file-type
 path-extension path-strip-extension
 path-directory path-strip-directory
 path-strip-trailing-directory-separator
 u8vector-length
 u8vector->list list->u8vector
 u8vector-concatenate
 object->u8vector u8vector->object
 get-output-u8vector
 make-promise)

(declare-primitive/2/unchecked
 memf find
 remove1 remq remv remf
 hash-key?
 hash-map
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
 method-ref direct-method-ref bound-method-ref
 checked-method-ref checked-bound-method-ref
 find-method
 substruct? subclass?
 with-unwind-protect
 with-catch
 file-newer?)

(declare-primitive/2
 fxmodulo
 fxbit-set?
 fxarithmetic-shift
 set-box!
 remove1 remq remv remf
 string-shrink!
 vector-shrink!
 with-exception-handler
 copy-file rename-file
 call-with-input-string with-input-from-string
 call-with-output-string with-output-to-string
 u8vector-ref
 u8vector-shrink!
 call-with-input-u8vector with-input-from-u8vector
 call-with-output-u8vector with-output-to-u8vector)

(declare-primitive/3/unchecked
 hash-fold
 struct-field-ref
 class-slot-ref
 unchecked-field-set!
 unchecked-slot-set!
 next-method)

(declare-primitive/3
 subvector
 u8vector-set!
 subu8vector)

(declare-primitive/4/unchecked
 struct-field-set!
 class-slot-set!)

(declare-primitive/4
 subvector-fill!
 subu8vector-fill!)

(declare-primitive/5
 subvector-move!
 substring-move!
 subu8vector-move!)

(declare-primitive/6/unchecked
 make-class-type)

(declare-primitive/unchecked*
 (iota 1 2 3)
 (assgetq 2 3)
 (assgetv 2 3)
 (assget 2 3)
 (pgetq 2 3)
 (pgetv 2 3)
 (pget 2 3)
 (plist->hash-table 1 2)
 (hash-update! 3 4)
 (hash-copy (1))
 (hash-copy! (1))
 (hash-merge (1))
 (hash-merge! (1))
 (hash-clear! 1 2)
 (string->bytes 1 2)
 (substring->bytes 3 4)
 (bytes->string 1 2)
 (string-index 2 3)
 (string-rindex 2 3)
 (make-instance (1))
 (class-instance-init! (1))
 (slot-ref 2 3)
 (slot-set! 3 4)
 (bind-method! 3 4)
 (call-next-method (3))
 (call-with-parameters (1))
 (read-syntax 0 1)
 (load-module 1 2)
 (create-directory* 1 2))

(declare-primitive*
 (make-list 1 2)
 (subvector->list 1 2)
 (vector->list 1 2 3)
 (vector->string 1 2 3)
 (vector-map (2))
 (vector-for-each (2))
 (vector-copy 1 2 3)
 (vector-copy! 3 4 5)
 (string->list 1 2 3)
 (string->vector 1 2 3)
 (string-map (2))
 (string-for-each (2))
 (string-copy 1 2 3)
 (string-copy! 3 4 5)
 (u8vector-fill! 2 3 4)
 (u8vector-copy 1 2 3)
 (u8vector-copy! 3 4 5)
 (gensym 0 1)
 (string->bytes 1 2)
 (substring->bytes 3 4)
 (bytes->string 1 2)
 (substring-fill! 4)
 (substring-move! 5)
 (current-error-port 0 1)
 (make-parameter 1 2)
 (current-exception-handler 0 1)
 (exit 0 1)
 (getenv 1 2)
 (setenv 1 2)
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
 (open-output-u8vector 0 1))

;; extended runtime procedures -- :gerbil/gambit
(declare-primitive/0
 defer-user-interrupts
 command-line
 current-time
 process-times
 cpu-time
 real-time
 user-name
 host-name
 open-dummy
 repl-input-port repl-output-port
 console-port
 default-random-source
 random-real
 make-random-source
 system-version system-version-string
 configure-command-string system-stamp

 current-thread
 thread-yield!
 thread-mailbox-rewind
 thread-mailbox-extract-and-rewind

 current-processor)

(declare-primitive/1
 bitwise-not
 bit-count
 integer-length
 first-set-bit
 continuation?
 continuation-capture
 primordial-exception-handler
 err-code->string

 fxbit-count
 fxfirst-set-bit
 fxlength
 fxabs
 flabs flacos flasin  flceiling flcos
 fleven? flexp flfloor fllog flround flsin flsqrt fltan fltruncate
 flnumerator fldenominator

 foreign? foreign-tags foreign-address
 foreign-release! foreign-released?

 object->serial-number
 serial-number->object
 string=?-hash
 string-ci=?-hash
 eq?-hash
 eqv?-hash
 equal?-hash

 table?
 table-length
 table->list
 table-copy

 integer-sqrt
 touch

 will?
 will-testator
 will-execute!

 create-fifo

 time?
 time->seconds
 timeout->time
 seconds->time

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

 user-info
 user-info?
 user-info-name
 user-info-uid
 user-info-gid
 user-info-home
 user-info-shell

 host-info
 host-info?
 host-info-name
 host-info-aliases
 host-info-addresses

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
 tcp-client-local-socket-info
 tcp-server-socket-info
 socket-info?
 socket-info-address socket-info-family socket-info-port-number

 tty?
 tty-history

 port? close-port
 input-port-line
 input-port-column
 output-port-line
 output-port-column
 output-port-width

 input-port-readtable
 output-port-readtable

 open-file
 open-tcp-client
 open-tcp-server
 open-udp
 open-directory

 udp-local-socket-info
 udp-source-socket-info

 tcp-service-unregister!

 get-output-vector
 get-output-string

 object->string

 open-process open-input-process open-output-process
 process-pid

 input-port-char-position output-port-char-position
 input-port-bytes-buffered
 input-port-characters-buffered

 open-event-queue

 random-integer
 random-u8vector random-f64vector
 random-source?
 random-source-state-ref
 random-source-randomize!
 random-source-make-integers
 random-source-make-u8vectors

 readtable-case-conversion?
 readtable-keywords-allowed?
 readtable-sharing-allowed?
 readtable-eval-allowed?
 readtable-write-cdr-read-macros?
 readtable-write-extended-read-macros?
 readtable-max-write-level
 readtable-max-write-length
 readtable-max-unescaped-char

 gc-report-set!

 thread?
 thread-name
 thread-specific
 thread-base-priority
 thread-priority-boost
 thread-quantum
 thread-start!
 thread-sleep!
 thread-terminate!

 mutex?
 mutex-name
 mutex-specific
 mutex-state

 condition-variable?
 condition-variable-name
 condition-variable-specific
 condition-variable-signal!
 condition-variable-broadcast!

 thread-group? thread-group-name
 thread-group-specific
 thread-group-parent
 thread-group-resume! thread-group-suspend!
 thread-group-terminate!
 thread-group->thread-group-list
 thread-group->thread-group-vector
 thread-group->thread-list
 thread-group->thread-vector

 thread-state thread-state-uninitialized? thread-state-initialized?
 thread-state-running? thread-state-running-processor
 thread-state-waiting? thread-state-waiting-for thread-state-waiting-timeout
 thread-state-normally-terminated?
 thread-state-normally-terminated-result
 thread-state-abnormally-terminated?
 thread-state-abnormally-terminated-reason

 thread-suspend! thread-resume!
 thread-thread-group

 processor? processor-id)

(declare-primitive/2
 arithmetic-shift
 bit-set? any-bits-set? all-bits-set?
 fxarithmetic-shift-right fxarithmetic-shift-left
 fxwraparithmetic-shift fxwraparithmetic-shift-left
 fxwraplogical-shift-right fxwrapquotient
 fxquotient fxremainder
 fxwrapquotient
 flatan flexpt

 table-search
 table-for-each

 integer-nth-root

 make-will

 create-link
 create-symbolic-link

 tty-history-set! tty-history-max-length-set!

 input-port-timeout-set!
 output-port-timeout-set!
 input-port-readtable-set!
 output-port-readtable-set!

 call-with-input-vector
 with-input-from-vector

 call-with-input-string
 with-input-from-string
 call-with-input-u8vector
 with-input-from-u8vector


 call-with-input-process call-with-output-process
 with-input-from-process with-output-to-process

 with-input-from-port with-output-to-port

 random-source-state-set!

 readtable-case-conversion?-set
 readtable-keywords-allowed?-set
 readtable-sharing-allowed?-set
 readtable-eval-allowed?-set
 readtable-write-cdr-read-macros?-set
 readtable-write-extended-read-macros?-set
 readtable-max-write-level-set
 readtable-max-write-length-set
 readtable-max-unescaped-char-set

 thread-specific-set!
 thread-base-priority-set!
 thread-priority-boost-set!
 thread-quantum-set!
 thread-send

 mutex-specific-set!
 condition-variable-specific-set!
 thread-group-specific-set!)

(declare-primitive/3
 bitwise-merge
 extract-bit-field test-bit-field? clear-bit-field
 fxif
 random-source-pseudo-randomize!
 tty-text-attributes-set!
 tty-type-set!)

(declare-primitive/4
 replace-bit-field copy-bit-field)

(declare-primitive*
 (error (1))
 (continuation-graft (2))
 (continuation-return (1))
 (display-exception 1 2)
 (display-exception-in-context 2 3)
 (display-procedure-environment 1 2)
 (display-continuation-environment 1 2)
 (display-continuation-dynamic-environment 1 2)
 (display-continuation-backtrace 1 2 3 4 5 6 7)
 (fxmax (1))
 (fxmin (1))
 (flmax (1))
 (flmin (1))
 (table-ref 2 3)
 (table-set! 2 3)
 (list->table (1))
 (table-merge! 2 3)
 (table-merge 2 3)
 (pretty-print 1 2)
 (pp 1 2)
 (current-user-interrupt-handler 0 1)
 (shell-command 1 2)
 (file-info 1 2)
 (force-output 0 1 2)
 (read-u8 0 1)
 (write-u8 1 2)
 (call-with-output-vector 1 2)
 (with-output-to-vector 1 2)
 (call-with-output-string 1 2)
 (with-output-to-string 1 2)
 (call-with-output-u8vector 1 2)
 (with-output-to-u8vector 1 2)

 (input-port-byte-position 1 2 3)
 (output-port-byte-position 1 2 3)
 (tcp-service-register! 2 3)
 (make-tls-context 0 1)
 (udp-destination-set! 2 3)
 (udp-read-subu8vector 3 4)
 (udp-write-subu8vector 3 4)
 (udp-read-u8vector 0 1)
 (udp-write-u8vector 1 2)
 (open-vector 0 1)
 (open-input-vector 0 1)
 (open-output-vector 0 1)
 (open-vector-pipe 0 1 2)
 (open-string 0 1)
 (open-input-string 0 1)
 (open-output-string 0 1)
 (open-string-pipe 0 1 2)
 (open-u8vector 0 1)
 (open-input-u8vector 0 1)
 (open-output-u8vector 0 1)
 (open-u8vector-pipe 0 1 2)
 (process-status 1 2 3)
 (random-source-make-reals 1 2)
 (random-source-make-f64vectors 1 2)
 (current-readtable 0 1)
 (make-thread 1 2 3)
 (make-root-thread 1 2 3 4 5)
 (thread-join! 1 2 3)
 (thread-receive 0 1 2)
 (thread-mailbox-next 0 1 2)
 (make-mutex 0 1)
 (mutex-lock! 1 2 3)
 (mutex-unlock! 1 2 3)
 (make-condition-variable 0 1)
 (make-thread-group 0 1 2)
 (thread-interrupt! 1 2)
 (thread-init! 2 3 4)
 (tty-mode-set! 5 6))

;; exceptions
(declare-primitive/1
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
 invalid-hash-number-exception-arguments)

;; hvectors
(declare-primitive*
 (s8vector? 1)
 (make-s8vector 1 2)
 (s8vector-length 1)
 (s8vector-ref 2)
 (s8vector-set! 3)
 (s8vector->list 1)
 (list->s8vector 1)
 (s8vector-fill! 1 2 3 4)
 (subs8vector-fill! 3 4)
 (s8vector-concatenate 1)
 (subs8vector 3)
 (s8vector-copy 1 2 3)
 (s8vector-copy! 3 4 5)
 (subs8vector-move! 5)
 (s8vector-shrink! 2)

 (s16vector? 1)
 (make-s16vector 1 2)
 (s16vector-length 1)
 (s16vector-ref 2)
 (s16vector-set! 3)
 (s16vector->list 1)
 (list->s16vector 1)
 (s16vector-fill! 1 2 3 4)
 (subs16vector-fill! 3 4)
 (s16vector-concatenate 1)
 (subs16vector 3)
 (s16vector-copy 1 2 3)
 (s16vector-copy! 3 4 5)
 (subs16vector-move! 5)
 (s16vector-shrink! 2)

 (u16vector? 1)
 (make-u16vector 1 2)
 (u16vector-length 1)
 (u16vector-ref 2)
 (u16vector-set! 3)
 (u16vector->list 1)
 (list->u16vector 1)
 (u16vector-fill! 1 2 3 4)
 (subu16vector-fill! 3 4)
 (u16vector-concatenate 1)
 (subu16vector 3)
 (u16vector-copy 1 2 3)
 (u16vector-copy! 3 4 5)
 (subu16vector-move! 5)
 (u16vector-shrink! 2)

 (s32vector? 1)
 (make-s32vector 1 2)
 (s32vector-length 1)
 (s32vector-ref 2)
 (s32vector-set! 3)
 (s32vector->list 1)
 (list->s32vector 1)
 (s32vector-fill! 1 2 3 4)
 (subs32vector-fill! 3 4)
 (s32vector-concatenate 1)
 (subs32vector 3)
 (s32vector-copy 1 2 3)
 (s32vector-copy! 3 4 5)
 (subs32vector-move! 5)
 (s32vector-shrink! 2)

 (u32vector? 1)
 (make-u32vector 1 2)
 (u32vector-length 1)
 (u32vector-ref 2)
 (u32vector-set! 3)
 (u32vector->list 1)
 (list->u32vector 1)
 (u32vector-fill! 1 2 3 4)
 (subu32vector-fill! 3 4)
 (u32vector-concatenate 1)
 (subu32vector 3)
 (u32vector-copy 1 2 3)
 (u32vector-copy! 3 4 5)
 (subu32vector-move! 5)
 (u32vector-shrink! 2)

 (s64vector? 1)
 (make-s64vector 1 2)
 (s64vector-length 1)
 (s64vector-ref 2)
 (s64vector-set! 3)
 (s64vector->list 1)
 (list->s64vector 1)
 (s64vector-fill! 1 2 3 4)
 (subs64vector-fill! 3 4)
 (s64vector-concatenate 1)
 (subs64vector 3)
 (s64vector-copy 1 2 3)
 (s64vector-copy! 3 4 5)
 (subs64vector-move! 5)
 (s64vector-shrink! 2)

 (u64vector? 1)
 (make-u64vector 1 2)
 (u64vector-length 1)
 (u64vector-ref 2)
 (u64vector-set! 3)
 (u64vector->list 1)
 (list->u64vector 1)
 (u64vector-fill! 1 2 3 4)
 (subu64vector-fill! 3 4)
 (u64vector-concatenate 1)
 (subu64vector 3)
 (u64vector-copy 1 2 3)
 (u64vector-copy! 3 4 5)
 (subu64vector-move! 5)
 (u64vector-shrink! 2)

 (f32vector? 1)
 (make-f32vector 1 2)
 (f32vector-length 1)
 (f32vector-ref 2)
 (f32vector-set! 3)
 (f32vector->list 1)
 (list->f32vector 1)
 (f32vector-fill! 1 2 3 4)
 (subf32vector-fill! 3 4)
 (f32vector-concatenate 1)
 (subf32vector 3)
 (f32vector-copy 1 2 3)
 (f32vector-copy! 3 4 5)
 (subf32vector-move! 5)
 (f32vector-shrink! 2)

 (f64vector? 1)
 (make-f64vector 1 2)
 (f64vector-length 1)
 (f64vector-ref 2)
 (f64vector-set! 3)
 (f64vector->list 1)
 (list->f64vector 1)
 (f64vector-fill! 1 2 3 4)
 (subf64vector-fill! 3 4)
 (f64vector-concatenate 1)
 (subf64vector 3)
 (f64vector-copy 1 2 3)
 (f64vector-copy! 3 4 5)
 (subf64vector-move! 5)
 (f64vector-shrink! 2))

(declare-primitive/unchecked*
 (spawn (1))
 (spawn/name (2))
 (spawn/group (2))
 (spawn-actor 4)
 (spawn-thread 1 2 3)
 (thread-local-ref 1 2)
 (thread-local-set! 2)
 (thread-local-clear! 1)
 (current-thread-group 0)
 (actor-thread? 1)
 (read-string 2)
 (write-string 2)
 (read-u8vector 2)
 (write-u8vector 2))

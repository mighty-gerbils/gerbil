;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil compiler optimization passes
prelude: "../core"
package: gerbil/compiler
namespace: gxc

(import "../core/expander"
        "../expander"
        "base"
        "method"
        "compile"
        "optimize-base"
        "optimize-xform"
        "optimize-top")
(export #t)

;; method to generate specializers
(defcompile-method (apply-generate-method-specializers)
  (::generate-method-specializers ::identity)
  ()
  final:
  (%#begin         xform-begin%)
  (%#begin-syntax  xform-begin-syntax%)
  (%#module        xform-module%)
  (%#define-values generate-method-specializers-define-values%))

;; method to extract the receiver of a method
(defcompile-method (apply-extract-receiver)
  (::extract-receiver ::false)
  ()
  final:
  (%#begin                   apply-last-begin%)
  (%#begin-annotation        extract-receiver-begin-annotation%)
  (%#let-values              apply-body-last-let-values%)
  (%#letrec-values           apply-body-last-let-values%)
  (%#letrec*-values          apply-body-last-let-values%)
  (%#if                      extract-receiver-if%))

;; method to collect method receiver references
(defcompile-method (apply-collect-object-refs receiver: receiver methods: methods slots: slots)
  (::collect-object-refs ::void)
  (receiver methods slots)
  final:
  (%#begin                   apply-begin%)
  (%#begin-annotation        apply-begin-annotation%)
  (%#lambda                       apply-body-lambda%)
  (%#case-lambda                  apply-body-case-lambda%)
  (%#let-values              apply-body-let-values%)
  (%#letrec-values           apply-body-let-values%)
  (%#letrec*-values          apply-body-let-values%)
  (%#call                    collect-object-refs-call%)
  (%#if                      apply-operands)
  (%#set!                    apply-body-setq%)
  (%#struct-ref              apply-operands)
  (%#struct-set!             apply-operands)
  (%#struct-direct-ref       apply-operands)
  (%#struct-direct-set!      apply-operands)
  (%#struct-unchecked-ref    apply-operands)
  (%#struct-unchecked-set!   apply-operands))

;; method to substitute method receiver references
(defcompile-method (apply-subst-object-refs receiver: receiver klass: klass methods: methods slots: slots)
  (::subst-object-refs ::basic-xform-expression)
  (receiver klass methods slots)
  final:
  (%#begin xform-begin%)
  (%#call  subst-object-refs-call%))

;;; apply-generate-method-specializers
(def (generate-method-specializers-define-values% self stx)
  (def (generate-method-bind $klass $method-table id $id)
    (let ($tmp (make-symbol (gensym '__method)))
      [[$id]
       ['%#call ['%#ref 'make-promise]
                ['%#lambda []
                      ['%#let-values [[[$tmp]
                                       ['%#call ['%#ref 'symbolic-table-ref]
                                                ['%#ref $method-table]
                                                ['%#quote id]
                                                ['%#quote #f]]]]
                                     ['%#if ['%#ref $tmp]
                                            ['%#ref $tmp]
                                            ['%#call ['%#ref 'error]
                                                     ['%#quote "Missing method"]
                                                     ['%#quote id]]]]]]]))

  (def (generate-slot-bind $klass id $id)
    (let ($tmp (make-symbol (gensym '__slot)))
      [[$id]
       ['%#let-values [[[$tmp]
                        ['%#call ['%#ref 'class-slot-offset]
                                 ['%#ref $klass]
                                 ['%#quote id]]]]
                      ['%#if ['%#ref $tmp]
                             ['%#ref $tmp]
                             ['%#call ['%#ref 'error]
                                      ['%#quote "Unknown slot"]
                                      ['%#quote id]]]]]))

  (def (generate-specializer-impl $klass $method-table
                                  methods-bind slots-bind
                                  specializer-impl)
    (xform-wrap-source
     ['%#lambda [$klass $method-table]
           ['%#let-values [methods-bind ... slots-bind ...]
                          specializer-impl]]
     stx))

  (def (generate-specializer-def id specializer-id specializer-impl)
    (xform-wrap-source
     ['%#begin stx
               (xform-wrap-source
                ['%#define-values [specializer-id] specializer-impl]
                stx)
               (xform-wrap-source
                ['%#call ['%#ref 'bind-specializer!] ['%#ref id] ['%#ref specializer-id]]
                stx)]
     stx))

  (ast-case stx ()
    ((_ (id) expr)
     (optimizer-top-level-method? (identifier-symbol #'id))
     (let ((method-calls (make-hash-table-eq))
           (slot-refs (make-hash-table-eq))
           (empty (make-hash-table-eq)))
       (def (no-specializer?)
         (and (fxzero? (hash-length method-calls))
              (fxzero? (hash-length slot-refs))))

       (defsyntax (with-specializer stx)
         (syntax-case stx ()
           ((macro (bind ...) body ...)
            (with-syntax ((specializer-id    (syntax-local-introduce 'specializer-id))
                          ($klass            (syntax-local-introduce '$klass))
                          ($method-table     (syntax-local-introduce '$method-table))
                          (methods           (syntax-local-introduce 'methods))
                          ($methods          (syntax-local-introduce '$methods))
                          (methods-bind      (syntax-local-introduce 'methods-bind))
                          (slots             (syntax-local-introduce 'slots))
                          ($slots            (syntax-local-introduce '$slots))
                          (slots-bind        (syntax-local-introduce 'slots-bind)))
              #'(if (no-specializer?)
                  stx
                  (let* ((specializer-id
                          (let* ((id (make-symbol (stx-e #'id) "::specialize"))
                                 (specializer-id (core-quote-syntax id (stx-source stx))))
                            (core-bind-runtime! specializer-id)
                            specializer-id))
                         ($klass (make-symbol (gensym '__klass)))
                         ($method-table (make-symbol (gensym '__method-table)))
                         (methods (hash-keys method-calls))
                         ($methods (map (lambda (id) (make-symbol "__" (gensym id))) methods))
                         (_ (for-each (cut hash-put! method-calls <> <>) methods $methods))
                         (methods-bind (map (cut generate-method-bind $klass $method-table <> <>) methods $methods))
                         (slots (hash-keys slot-refs))
                         ($slots (map (lambda (id) (make-symbol "__" (gensym id))) slots))
                         (_ (for-each (cut hash-put! slot-refs <> <>) slots $slots))
                         (slots-bind (map (cut generate-slot-bind $klass <> <>) slots $slots))
                         bind ...)
                    body ...))))))

       (cond
        ((lambda-expr? #'expr)
         (ast-case #'expr ()
           ((_ (self . args) . body)
            (let (receiver (or (apply-extract-receiver #'(%#begin . body)) #'self))
              (for-each
                (cut apply-collect-object-refs <> receiver: receiver methods: method-calls slots: slot-refs)
                #'body)
              (with-specializer
               ((specializer-body
                 (map (cut apply-subst-object-refs <> receiver: receiver klass: $klass methods: method-calls slots: slot-refs)
                      #'body))
                (specializer-impl
                 (xform-wrap-source
                  ['%#lambda #'(self . args) . specializer-body]
                  stx))
                (specializer-impl
                 (generate-specializer-impl $klass $method-table methods-bind slots-bind specializer-impl)))
               (verbose "generate method specializer " (stx-e #'id) " => " (stx-e specializer-id))
               (generate-specializer-def #'id specializer-id specializer-impl))))
           ;; no self discriminant, nothing to specialize
           (_ stx)))

        ((case-lambda-expr? #'expr)
         (ast-case #'expr ()
           ((_ clause ...)
            (begin
              (for-each
                (lambda (clause)
                  (ast-case clause ()
                    (((self . args) . body)
                     (let (receiver (or (apply-extract-receiver #'(%#begin . body)) #'self))
                       (for-each
                         (cut apply-collect-object-refs <> receiver: receiver methods: method-calls slots: slot-refs)
                         #'body)))
                    (_ (void))))
                #'(clause ...))
              (with-specializer
               ((specializer-clauses
                 (map
                   (lambda (clause)
                     (ast-case clause ()
                       (((self . args) . body)
                        (let* ((receiver (or (apply-extract-receiver #'(%#begin . body)) #'self))
                               (body
                                (map (cut apply-subst-object-refs <> receiver: receiver klass: $klass methods: method-calls slots: slot-refs)
                                     #'body)))
                          [#'(self . args) . body]))
                       (_ clause)))
                   #'(clause ...)))
                (specializer-impl
                 (xform-wrap-source
                  ['%#case-lambda specializer-clauses ...]
                  stx))
                (specializer-impl
                 (generate-specializer-impl $klass $method-table methods-bind slots-bind
                                            specializer-impl)))
               (verbose "generate method specializer " (stx-e #'id) " => " (stx-e specializer-id))
               (generate-specializer-def #'id specializer-id specializer-impl))))))

        ((opt-lambda-expr? #'expr)
         (ast-case #'expr ()
           ((_ (((xid) lambda-expr)) case-lambda-expr)
            (begin
              (ast-case #'lambda-expr ()
                ((_ (self . args) . body)
                 (let (receiver (or (apply-extract-receiver #'(%#begin . body)) #'self))
                   (for-each
                     (cut apply-collect-object-refs <> receiver: receiver methods: method-calls slots: slot-refs)
                     #'body))))
              (ast-case #'case-lambda-expr ()
                ((_ clause ...)
                 (for-each
                   (lambda (clause)
                     (ast-case clause ()
                       (((self . args) . body)
                        (let (receiver (or (apply-extract-receiver #'(%#begin . body)) #'self))
                          (for-each
                            (cut apply-collect-object-refs <> receiver: receiver methods: method-calls slots: slot-refs)
                            #'body)))))
                   #'(clause ...))))
              (with-specializer
               ((specializer-lambda-expr
                 (ast-case #'lambda-expr ()
                   ((_ (self . args) . body)
                    (let* ((receiver (or (apply-extract-receiver #'(%#begin . body)) #'self))
                           (body (map (cut apply-subst-object-refs <> receiver: receiver klass: $klass methods: method-calls slots: slot-refs)
                                      #'body)))
                      (xform-wrap-source
                       ['%#lambda #'(self . args) . body]
                       #'lambda-expr)))))
                (specializer-case-lambda-expr
                 (ast-case #'case-lambda-expr ()
                   ((_ clause ...)
                    (let (clauses
                          (map
                            (lambda (clause)
                              (ast-case clause ()
                                (((self . args) . body)
                                 (let* ((receiver (or (apply-extract-receiver #'(%#begin . body)) #'self))
                                        (body (map (cut apply-subst-object-refs <> receiver: receiver klass: $klass methods: method-calls slots: slot-refs)
                                                   #'body)))
                                   [#'(self . args) . body]))
                                (_ clause)))
                            #'(clause ...)))
                      (xform-wrap-source
                       ['%#case-lambda clauses ...]
                       #'case-lambda-expr)))))
                (specializer-impl
                 (xform-wrap-source
                  ['%#let-values [[[#'xid] specializer-lambda-expr]]
                                 specializer-case-lambda-expr]
                  stx))
                (specializer-impl
                 (generate-specializer-impl $klass $method-table methods-bind slots-bind
                                            specializer-impl)))
               (verbose "generate method specializer " (stx-e #'id) " => " (stx-e specializer-id))
               (generate-specializer-def #'id specializer-id specializer-impl))))))

        ((kw-lambda-expr? #'expr)
         (ast-case #'expr (%#let-values)
           ((%#let-values (((get-kws)
                            (%#let-values (((kw-lambda-main) kw-lambda-main-expr))
                                          get-kws-expr)))
                          kw-dispatch)
            (ast-case #'get-kws-expr (%#lambda %#call %#ref)
              ((%#lambda _ (%#call (%#ref -apply) (%#ref -kw-lambda-main) (%#ref -kw-table) kw-ref ... args))
               (let* ((kw-count (length #'(kw-ref ...)))
                      (self-index (fx1+ kw-count)))
                 (cond
                  ((lambda-expr? #'kw-lambda-main-expr)
                   (ast-case #'kw-lambda-main-expr ()
                     ((_ hd . body)
                      (let* ((self (list-ref #'hd self-index))
                             (receiver (or (apply-extract-receiver #'(%#begin . body)) self)))
                        (for-each
                          (cut apply-collect-object-refs <> receiver: receiver methods: method-calls slots: slot-refs)
                          #'body)
                        (with-specializer
                         ((specializer-impl
                           (let (specializer-body
                                 (map
                                   (cut apply-subst-object-refs <> receiver: receiver klass: $klass methods: method-calls slots: slot-refs)
                                   #'body))
                             (xform-wrap-source
                              ['%#let-values [[[#'get-kws]
                                               ['%#let-values [[[#'kw-lambda-main]
                                                                (xform-wrap-source
                                                                 ['%#lambda #'hd . specializer-body]
                                                                 #'kw-lambda-main-expr)]]
                                                              #'get-kws-expr]]]
                                             #'kw-dispatch]
                              stx)))
                          (specializer-impl
                           (generate-specializer-impl $klass $method-table methods-bind slots-bind specializer-impl)))
                         (verbose "generate method specializer " (stx-e #'id) " => " (stx-e specializer-id))
                         (generate-specializer-def #'id specializer-id specializer-impl))))))

                  ((opt-lambda-expr? #'kw-lambda-main-expr)
                   (ast-case #'kw-lambda-main-expr ()
                     ((_ (((xid) lambda-expr)) case-lambda-expr)
                      (begin
                        (ast-case #'lambda-expr ()
                          ((_ hd . body)
                           (let* ((self (list-ref #'hd self-index))
                                  (receiver (or (apply-extract-receiver #'(%#begin . body)) self)))
                             (for-each
                               (cut apply-collect-object-refs <> receiver: receiver methods: method-calls slots: slot-refs)
                               #'body))))
                        (ast-case #'case-lambda-expr ()
                          ((_ clause ...)
                           (for-each
                             (lambda (clause)
                               (ast-case clause ()
                                 ((hd . body)
                                  (let* ((self (list-ref #'hd self-index))
                                         (receiver (or (apply-extract-receiver #'(%#begin . body)) self)))
                                    (for-each
                                      (cut apply-collect-object-refs <> receiver: receiver methods: method-calls slots: slot-refs)
                                      #'body)))))
                             #'(clause ...))))
                        (with-specializer
                         ((specializer-lambda-expr
                           (ast-case #'lambda-expr ()
                             ((_ hd . body)
                              (let* ((self (list-ref #'hd self-index))
                                     (receiver (or (apply-extract-receiver #'(%#begin . body)) self))
                                     (body (map (cut apply-subst-object-refs <> receiver: receiver klass: $klass methods: method-calls slots: slot-refs)
                                                #'body)))
                                (xform-wrap-source
                                 ['%#lambda #'hd . body]
                                 #'lambda-expr)))))
                          (specializer-case-lambda-expr
                           (ast-case #'case-lambda-expr ()
                             ((_ clause ...)
                              (let (clauses
                                    (map
                                      (lambda (clause)
                                        (ast-case clause ()
                                          ((hd . body)
                                           (let* ((self (list-ref #'hd self-index))
                                                  (receiver (or (apply-extract-receiver #'(%#begin . body)) self))
                                                  (body (map (cut apply-subst-object-refs <> receiver: receiver klass: $klass methods: method-calls slots: slot-refs)
                                                             #'body)))
                                             [#'hd . body]))))
                                      #'(clause ...)))
                                (xform-wrap-source
                                 ['%#case-lambda clauses ...]
                                 #'case-lambda-expr)))))
                          (specializer-impl
                           (xform-wrap-source
                            ['%#let-values [[[#'get-kws]
                                             ['%#let-values [[[#'kw-lambda-main]
                                                              (xform-wrap-source
                                                               ['%#let-values [[[#'xid] specializer-lambda-expr]]
                                                                              specializer-case-lambda-expr]
                                                               stx)]]
                                                            #'get-kws-expr]]]
                                           #'kw-dispatch]
                            stx))
                          (specializer-impl
                           (generate-specializer-impl $klass $method-table methods-bind slots-bind specializer-impl)))
                         (verbose "generate method specializer " (stx-e #'id) " => " (stx-e specializer-id))
                         (generate-specializer-def #'id specializer-id specializer-impl))))))

                  (else stx))))))))

        (else stx))))
       (_ stx)))

;; apply-extract-receiver
(def (extract-receiver-begin-annotation% self stx)
  (ast-case stx (@receiver)
    ((_ (@receiver receiver) _)
     #'receiver)
    ((_ ann expr) (compile-e self #'expr))))

(def (extract-receiver-if% self stx)
  (ast-case stx ()
    ((_ test K E)
     (compile-e self #'K))))

;;; apply-collect-objec-refs
(def (collect-object-refs-call% self stx)
  (begin-annotation @match:prefix
    (ast-case stx (%#ref %#quote)
      ((_ (%#ref -call-method) (%#ref -self) (%#quote method) args ...)
       (and (runtime-identifier=? #'-call-method 'call-method)
            (free-identifier=? #'-self (@ self receiver)))
       (begin
         (hash-put! (@ self methods) (stx-e #'method) #t)
         (for-each (cut compile-e self <>) #'(args ...))))

      ((_ (%#ref -apply) (%#ref -call-method) (%#ref -self) (%#quote method) args ...)
       (and (runtime-identifier=? #'-apply 'apply)
            (runtime-identifier=? #'-call-method 'call-method)
            (free-identifier=? #'-self (@ self receiver)))
       (begin
         (hash-put! (@ self methods) (stx-e #'method) #t)
         (for-each (cut compile-e self <>) #'(args ...))))
      ((_ (%#ref -slot-ref) (%#ref -self) (%#quote slot))
       (and (or (runtime-identifier=? #'-slot-ref 'slot-ref)
                (runtime-identifier=? #'-slot-ref 'unchecked-slot-ref))
            (free-identifier=? #'-self (@ self receiver)))
       (hash-put! (@ self slots) (stx-e #'slot) #t))
      ((_ (%#ref -slot-set!) (%#ref -self) (%#quote slot) expr)
       (and (or (runtime-identifier=? #'-slot-set! 'slot-set!)
                (runtime-identifier=? #'-slot-set! 'unchecked-slot-set!))
            (free-identifier=? #'-self (@ self receiver)))
       (begin
         (hash-put! (@ self slots) (stx-e #'slot) #t)
         (compile-e self #'expr)))

      ;; MOP
      ((_ (%#ref getf) (%#ref -self))
       (and (!accessor? (optimizer-resolve-type (identifier-symbol #'getf)))
            (free-identifier=? #'-self (@ self receiver)))
       (let* ((accessor (optimizer-resolve-type (identifier-symbol #'getf)))
              (klass (optimizer-resolve-class stx (!type-id accessor)))
              (slot (!accessor-slot accessor)))
         (unless (and (not (!accessor-checked? accessor))
                      (or (!class-struct-slot? klass slot)
                          (!class-final? klass)))
           (hash-put! (@ self slots) (!accessor-slot accessor) #t))))

      ((_ (%#ref setf) (%#ref -self) expr)
       (and (!mutator? (optimizer-resolve-type (identifier-symbol #'setf)))
            (free-identifier=? #'-self (@ self receiver)))
       (let* ((mutator (optimizer-resolve-type (identifier-symbol #'setf)))
              (klass (optimizer-resolve-class stx (!type-id mutator)))
              (slot (!mutator-slot mutator)))
         (unless (and (not (!mutator-checked? mutator))
                      (or (!class-struct-slot? klass slot)
                          (!class-final? klass)))
           (hash-put! (@ self slots) slot #t))
         (compile-e self #'expr)))

      (_ (apply-operands self stx)))))

;;; apply-subst-object-refs
(def (subst-object-refs-call% self stx)
  (def (force-e target)
    ['%#call ['%#ref 'force] ['%#ref target]])

  (begin-annotation @match:prefix
    (ast-case stx (%#ref %#quote)
      ((_ (%#ref -call-method) (%#ref -self) (%#quote method) args ...)
       (and (runtime-identifier=? #'-call-method 'call-method)
            (free-identifier=? #'-self (@ self receiver)))
       (let (($method (hash-ref (@ self methods) (stx-e #'method)))
             (args (map (cut compile-e self <>) #'(args ...))))
         (xform-wrap-source
          ['%#call (force-e $method) ['%#ref (@ self receiver)] args ...]
          stx)))
      ((_ (%#ref -apply) (%#ref -call-method) (%#ref -self) (%#quote method) args ...)
       (and (runtime-identifier=? #'-apply 'apply)
            (runtime-identifier=? #'-call-method 'call-method)
            (free-identifier=? #'-self (@ self receiver)))
       (let (($method (hash-ref (@ self methods) (stx-e #'method)))
             (args (map (cut compile-e self <>) #'(args ...))))
         (xform-wrap-source
          ['%#call ['%#ref 'apply] (force-e $method) ['%#ref (@ self receiver)] args ...]
          stx)))
      ((_ (%#ref -slot-ref) (%#ref -self) (%#quote slot))
       (and (or (runtime-identifier=? #'-slot-ref 'slot-ref)
                (runtime-identifier=? #'-slot-ref 'unchecked-slot-ref))
            (free-identifier=? #'-self (@ self receiver)))
       (let ($field (hash-ref (@ self slots) (stx-e #'slot)))
         (xform-wrap-source
          ['%#struct-unchecked-ref ['%#ref (@ self klass)] ['%#ref $field] ['%#ref (@ self receiver)]]
          stx)))
      ((_ (%#ref -slot-set!) (%#ref -self) (%#quote slot) expr)
       (and (or (runtime-identifier=? #'-slot-set! 'slot-set!)
                (runtime-identifier=? #'-slot-set! 'unchecked-slot-set!))
            (free-identifier=? #'-self (@ self receiver)))
       (let (($field (hash-ref (@ self slots) (stx-e #'slot)))
             (expr (compile-e self #'expr)))
         (xform-wrap-source
          ['%#struct-unchecked-set! ['%#ref (@ self klass)] ['%#ref $field] ['%#ref (@ self receiver)] expr]
          stx)))

      ;; MOP
      ((_ (%#ref getf) (%#ref -self))
       (and (free-identifier=? #'-self (@ self receiver))
            (!accessor? (optimizer-resolve-type (identifier-symbol #'getf))))
       (let* ((accessor (optimizer-resolve-type (identifier-symbol #'getf)))
              (klass (optimizer-resolve-class stx (!type-id accessor)))
              (slot (!accessor-slot accessor)))
         (if (and (not (!accessor-checked? accessor))
                  (or (!class-struct-slot? klass slot)
                      (!class-final? klass)))
           stx
           (let ($field (hash-ref (@ self slots) slot))
             (xform-wrap-source
              ['%#struct-unchecked-ref ['%#ref (@ self klass)] ['%#ref $field] ['%#ref (@ self receiver)]]
              stx)))))

    ((_ (%#ref setf) (%#ref -self) expr)
     (and (free-identifier=? #'-self (@ self receiver))
          (!mutator? (optimizer-resolve-type (identifier-symbol #'setf))))
     (let* ((mutator (optimizer-resolve-type (identifier-symbol #'setf)))
            (klass (optimizer-resolve-class stx (!type-id mutator)))
            (slot (!mutator-slot mutator))
            (expr (compile-e self #'expr)))
       (if (and (not (!mutator-checked? mutator))
                (or (!class-struct-slot? klass slot)
                    (!class-final? klass)))
         (xform-wrap-source
          ['%#call #'(%#ref setf) #'(%#ref -self) expr]
          stx)
         (let ($field (hash-ref (@ self slots) slot))
           (xform-wrap-source
            ['%#struct-unchecked-set! ['%#ref (@ self klass)] ['%#ref $field] ['%#ref (@ self receiver)] expr]
            stx)))))

    (_ (xform-operands self stx)))))

;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil compiler optimization passes
prelude: "../prelude/core"
package: gerbil/compiler
namespace: gxc

(import "../expander"
        "base"
        "compile"
        "optimize-base"
        "optimize-xform"
        "optimize-top")
(export #t)

(defcompile-method apply-generate-method-specializers (&generate-method-specializers &identity)
  (%#begin         xform-begin%)
  (%#begin-syntax  xform-begin-syntax%)
  (%#module        xform-module%)
  (%#define-values generate-method-specializers-define-values%))

(defcompile-method apply-collect-object-refs (&collect-object-refs &void)
  (%#begin                   collect-begin%)
  (%#begin-annotation        collect-begin-annotation%)
  (%#lambda                       collect-body-lambda%)
  (%#case-lambda                  collect-body-case-lambda%)
  (%#let-values              collect-body-let-values%)
  (%#letrec-values           collect-body-let-values%)
  (%#letrec-values*          collect-body-let-values%)
  (%#call                    collect-object-refs-call%)
  (%#if                      collect-operands)
  (%#set!                    collect-body-setq%)
  (%#struct-ref              collect-operands)
  (%#struct-set!             collect-operands)
  (%#struct-direct-ref       collect-operands)
  (%#struct-direct-set!      collect-operands)
  (%#struct-unchecked-ref    collect-operands)
  (%#struct-unchecked-set!   collect-operands))

(defcompile-method apply-subst-object-refs (&subst-object-refs &basic-xform-expression)
  (%#begin xform-begin%)
  (%#call  subst-object-refs-call%))

;;; apply-generate-method-specializers

(def (generate-method-specializers-define-values% stx)
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
            (begin
              (for-each
                (cut apply-collect-object-refs <> #'self method-calls slot-refs)
                #'body)
              (with-specializer
               ((specializer-body
                 (map (cut apply-subst-object-refs <> #'self $klass method-calls slot-refs)
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
                     (for-each
                       (cut apply-collect-object-refs <> #'self method-calls slot-refs)
                       #'body))
                    (_ (void))))
                #'(clause ...))
              (with-specializer
               ((specializer-clauses
                 (map
                   (lambda (clause)
                     (ast-case clause ()
                       (((self . args) . body)
                        (let (body
                              (map (cut apply-subst-object-refs <> #'self $klass method-calls slot-refs)
                                   #'body))
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
                 (for-each
                   (cut apply-collect-object-refs <> #'self method-calls slot-refs)
                   #'body)))
              (ast-case #'case-lambda-expr ()
                ((_ clause ...)
                 (for-each
                   (lambda (clause)
                     (ast-case clause ()
                       (((self . args) . body)
                        (for-each
                          (cut apply-collect-object-refs <> #'self method-calls slot-refs)
                          #'body))))
                   #'(clause ...))))
              (with-specializer
               ((specializer-lambda-expr
                 (ast-case #'lambda-expr ()
                   ((_ (self . args) . body)
                    (let (body (map (cut apply-subst-object-refs <> #'self $klass method-calls slot-refs)
                                    #'body))
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
                                 (let (body (map (cut apply-subst-object-refs <> #'self $klass method-calls slot-refs)
                                                 #'body))
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
                      (let (self (list-ref #'hd self-index))
                        (for-each
                          (cut apply-collect-object-refs <> self method-calls slot-refs)
                          #'body)
                        (with-specializer
                         ((specializer-impl
                           (let (specializer-body
                                 (map
                                   (cut apply-subst-object-refs <> self $klass method-calls slot-refs)
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
                           (let (self (list-ref #'hd self-index))
                             (for-each
                               (cut apply-collect-object-refs <> self method-calls slot-refs)
                               #'body))))
                        (ast-case #'case-lambda-expr ()
                          ((_ clause ...)
                           (for-each
                             (lambda (clause)
                               (ast-case clause ()
                                 ((hd . body)
                                  (let (self (list-ref #'hd self-index))
                                    (for-each
                                      (cut apply-collect-object-refs <> self method-calls slot-refs)
                                      #'body)))))
                             #'(clause ...))))
                        (with-specializer
                         ((specializer-lambda-expr
                           (ast-case #'lambda-expr ()
                             ((_ hd . body)
                              (let* ((self (list-ref #'hd self-index))
                                     (body (map (cut apply-subst-object-refs <> self $klass method-calls slot-refs)
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
                                                  (body (map (cut apply-subst-object-refs <> self $klass method-calls slot-refs)
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

;;; apply-collect-objec-refs
(def (collect-object-refs-call% stx self methods slots)
  (begin-annotation @match:prefix
    (ast-case stx (%#ref %#quote)
      ((_ (%#ref -call-method) (%#ref -self) (%#quote method) args ...)
       (and (runtime-identifier=? #'-call-method 'call-method)
            (free-identifier=? #'-self self))
       (begin
         (hash-put! methods (stx-e #'method) #t)
         (for-each (cut compile-e <> self methods slots)
                   #'(args ...))))
      ((_ (%#ref -apply) (%#ref -call-method) (%#ref -self) (%#quote method) args ...)
       (and (runtime-identifier=? #'-apply 'apply)
            (runtime-identifier=? #'-call-method 'call-method)
            (free-identifier=? #'-self self))
       (begin
         (hash-put! methods (stx-e #'method) #t)
         (for-each
           (cut compile-e <> self methods slots)
           #'(args ...))))
      ((_ (%#ref -slot-ref) (%#ref -self) (%#quote slot))
       (and (or (runtime-identifier=? #'-slot-ref 'slot-ref)
                (runtime-identifier=? #'-slot-ref 'unchecked-slot-ref))
            (free-identifier=? #'-self self))
       (hash-put! slots (stx-e #'slot) #t))
      ((_ (%#ref -slot-set!) (%#ref -self) (%#quote slot) expr)
       (and (or (runtime-identifier=? #'-slot-set! 'slot-set!)
                (runtime-identifier=? #'-slot-set! 'unchecked-slot-set!))
            (free-identifier=? #'-self self))
       (begin
         (hash-put! slots (stx-e #'slot) #t)
         (compile-e #'expr self methods slots)))

      ;; MOP
      ((_ (%#ref getf) (%#ref -self))
       (and (!accessor? (optimizer-resolve-type (identifier-symbol #'getf)))
            (free-identifier=? #'-self self))
       (let* ((accessor (optimizer-resolve-type (identifier-symbol #'getf)))
              (klass (optimizer-resolve-class stx (!type-id accessor)))
              (slot (!accessor-slot accessor)))
         (unless (and (not (!accessor-checked? accessor))
                      (or (!class-struct-slot? klass slot)
                          (!class-final? klass)))
           (hash-put! slots (!accessor-slot accessor) #t))))

      ((_ (%#ref setf) (%#ref -self) expr)
       (and (!mutator? (optimizer-resolve-type (identifier-symbol #'setf)))
            (free-identifier=? #'-self self))
       (let* ((mutator (optimizer-resolve-type (identifier-symbol #'setf)))
              (klass (optimizer-resolve-class stx (!type-id mutator)))
              (slot (!mutator-slot mutator)))
         (unless (and (not (!mutator-checked? mutator))
                      (or (!class-struct-slot? klass slot)
                          (!class-final? klass)))
           (hash-put! slots slot #t))
         (compile-e #'expr self methods slots)))

      (_ (collect-operands stx self methods slots)))))

;;; apply-subst-object-refs
(def (subst-object-refs-call% stx self $klass methods slots)
  (def (force-e target)
    ['%#call ['%#ref 'force] ['%#ref target]])

  (begin-annotation @match:prefix
    (ast-case stx (%#ref %#quote)
      ((_ (%#ref -call-method) (%#ref -self) (%#quote method) args ...)
       (and (runtime-identifier=? #'-call-method 'call-method)
            (free-identifier=? #'-self self))
       (let (($method (hash-ref methods (stx-e #'method)))
             (args (map (cut compile-e <> self $klass methods slots)
                        #'(args ...))))
         (xform-wrap-source
          ['%#call (force-e $method) ['%#ref self] args ...]
          stx)))
      ((_ (%#ref -apply) (%#ref -call-method) (%#ref -self) (%#quote method) args ...)
       (and (runtime-identifier=? #'-apply 'apply)
            (runtime-identifier=? #'-call-method 'call-method)
            (free-identifier=? #'-self self))
       (let (($method (hash-ref methods (stx-e #'method)))
             (args (map (cut compile-e <> self $klass methods slots)
                        #'(args ...))))
         (xform-wrap-source
          ['%#call ['%#ref 'apply] (force-e $method) ['%#ref self] args ...]
          stx)))
      ((_ (%#ref -slot-ref) (%#ref -self) (%#quote slot))
       (and (or (runtime-identifier=? #'-slot-ref 'slot-ref)
                (runtime-identifier=? #'-slot-ref 'unchecked-slot-ref))
            (free-identifier=? #'-self self))
       (let ($field (hash-ref slots (stx-e #'slot)))
         (xform-wrap-source
          ['%#struct-unchecked-ref ['%#ref $klass] ['%#ref $field] ['%#ref self]]
          stx)))
      ((_ (%#ref -slot-set!) (%#ref -self) (%#quote slot) expr)
       (and (or (runtime-identifier=? #'-slot-set! 'slot-set!)
                (runtime-identifier=? #'-slot-set! 'unchecked-slot-set!))
            (free-identifier=? #'-self self))
       (let (($field (hash-ref slots (stx-e #'slot)))
             (expr (compile-e #'expr self $klass methods slots)))
         (xform-wrap-source
          ['%#struct-unchecked-set! ['%#ref $klass] ['%#ref $field] ['%#ref self] expr]
          stx)))

      ;; MOP
      ((_ (%#ref getf) (%#ref -self))
       (and (free-identifier=? #'-self self)
            (!accessor? (optimizer-resolve-type (identifier-symbol #'getf))))
       (let* ((accessor (optimizer-resolve-type (identifier-symbol #'getf)))
              (klass (optimizer-resolve-class stx (!type-id accessor)))
              (slot (!accessor-slot accessor)))
         (if (and (not (!accessor-checked? accessor))
                  (or (!class-struct-slot? klass slot)
                      (!class-final? klass)))
           stx
           (let ($field (hash-ref slots slot))
             (xform-wrap-source
              ['%#struct-unchecked-ref ['%#ref $klass] ['%#ref $field] ['%#ref self]]
              stx)))))

    ((_ (%#ref setf) (%#ref -self) expr)
     (and (free-identifier=? #'-self self)
          (!mutator? (optimizer-resolve-type (identifier-symbol #'setf))))
     (let* ((mutator (optimizer-resolve-type (identifier-symbol #'setf)))
            (klass (optimizer-resolve-class stx (!type-id mutator)))
            (slot (!mutator-slot mutator))
            (expr (compile-e #'expr self $klass methods slots)))
       (if (and (not (!mutator-checked? mutator))
                (or (!class-struct-slot? klass slot)
                    (!class-final? klass)))
         (xform-wrap-source
          ['%#call #'(%#ref setf) #'(%#ref -self) expr]
          stx)
         (let ($field (hash-ref slots slot))
           (xform-wrap-source
            ['%#struct-unchecked-set! ['%#ref $klass] ['%#ref $field] ['%#ref self] expr]
            stx)))))

    (_ (xform-operands stx self $klass methods slots)))))

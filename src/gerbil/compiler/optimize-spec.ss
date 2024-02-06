;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil compiler optimization passes
package: gerbil/compiler
namespace: gxc

(import :gerbil/expander
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
  (def (generate-method-bind $t id $id)
    (let ($tmp (make-symbol (gensym '__tmp)))
      [[$id]
       ['%#call ['%#ref 'make-promise]
                ['%#lambda []
                      ['%#let-values [[[$tmp]
                                       ['%#call ['%#ref 'direct-method-ref]
                                                ['%#ref $t]
                                                ['%#quote id]]]]
                                     ['%#if ['%#ref $tmp]
                                            ['%#ref $tmp]
                                            ['%#call ['%#ref 'error]
                                                     ['%#quote "Missing method"]
                                                     ['%#quote id]]]]]]]))

  (def (generate-slot-bind $t id $id)
    (let ($tmp (make-symbol (gensym '__tmp)))
      [[$id]
       ['%#let-values [[[$tmp]
                        ['%#call ['%#ref 'class-slot-offset*]
                                 ['%#ref $t]
                                 ['%#quote id]]]]
                      ['%#if ['%#ref $tmp]
                             ['%#ref $tmp]
                             ['%#call ['%#ref 'error]
                                      ['%#quote "Unknown slot"]
                                      ['%#quote id]]]]]))

  (def (generate-class-check-bind $t class-type $class-type)
    [[$class-type]
     ['%#call ['%#ref 'class-subtype?] ['%#ref class-type] ['%#ref $t]]])

  (def (generate-struct-check-bind $t class-type $class-type)
    [[$class-type]
     ['%#call ['%#ref 'struct-subtype?] ['%#ref class-type] ['%#ref $t]]])

  (def (generate-specializer-impl $t
         methods-bind slots-bind class-check-bind struct-check-bind
         specializer-impl lifted-specializer-id unchecked-specializer-impl)
    (xform-wrap-source
     ['%#lambda [$t]
           ['%#let-values [methods-bind ... slots-bind ... class-check-bind ... struct-check-bind ...]
                          (if (or lifted-specializer-id unchecked-specializer-impl)
                            (let ($specializer (make-symbol (gensym '__specializer)))
                              ['%#let-values [[[$specializer] specializer-impl]]
                                             (let recur ((rest (map caar struct-check-bind)))
                                               (match rest
                                                 ([checkq . rest]
                                                  ['%#if ['%#ref checkq]
                                                         (recur rest)
                                                         ['%#ref $specializer]])
                                                 (else
                                                  (if lifted-specializer-id
                                                    ['%#ref lifted-specializer-id]
                                                    unchecked-specializer-impl))))])
                            specializer-impl)]]
     stx))

  (def (generate-specializer-def id
                                 specializer-id specializer-impl
                                 lifted-specializer-id unchecked-specializer-impl)
    (xform-wrap-source
     ['%#begin stx
               (xform-wrap-source
                ['%#define-values [specializer-id] specializer-impl]
                stx)
               (if lifted-specializer-id
                 [(xform-wrap-source
                   ['%#define-values [lifted-specializer-id] unchecked-specializer-impl]
                   stx)]
                 []) ...
               (xform-wrap-source
                ['%#call ['%#ref 'bind-specializer!] ['%#ref id] ['%#ref specializer-id]]
                stx)]
     stx))

  (ast-case stx ()
    ((_ (id) expr)
     (optimizer-top-level-method? (identifier-symbol #'id))
     (let ((method-calls (make-hash-table-eq))
           (slot-refs (make-hash-table-eq))
           (class-type-check (make-hash-table-eq))
           (struct-type-check (make-hash-table-eq))
           (struct-type-assert (make-hash-table-eq))
           (empty (make-hash-table-eq)))

       (def (no-specializer?)
         (and (fxzero? (hash-length method-calls))
              (fxzero? (hash-length slot-refs))
              (fxzero? (hash-length class-type-check))
              (fxzero? (hash-length struct-type-check))
              (fxzero? (hash-length struct-type-assert))))

       (def (unchecked-specializer?)
         (or (not (fxzero? (hash-length struct-type-check)))
             (not (fxzero? (hash-length struct-type-assert)))))

       (def (lift-unchecked-specializer?)
         (and (fxzero? (hash-length method-calls))
              (fxzero? (hash-length slot-refs))
              (fxzero? (hash-length class-type-check))))

       (defsyntax (with-specializer stx)
         (syntax-case stx ()
           ((macro (bind ...) body ...)
            (with-syntax ((specializer-id    (syntax-local-introduce 'specializer-id))
                          (lifted-id         (syntax-local-introduce 'lifted-specializer-id))
                          ($t                (syntax-local-introduce '$t))
                          (methods           (syntax-local-introduce 'methods))
                          ($methods          (syntax-local-introduce '$methods))
                          (methods-bind      (syntax-local-introduce 'methods-bind))
                          (slots             (syntax-local-introduce 'slots))
                          ($slots            (syntax-local-introduce '$slots))
                          (slots-bind        (syntax-local-introduce 'slots-bind))
                          (class-check       (syntax-local-introduce 'class-check))
                          ($class-check      (syntax-local-introduce '$class-check))
                          (class-check-bind  (syntax-local-introduce 'class-check-bind))
                          (struct-check-all  (syntax-local-introduce 'struct-check-all))
                          (struct-check      (syntax-local-introduce 'struct-check))
                          ($struct-check     (syntax-local-introduce '$struct-check))
                          (struct-check-bind (syntax-local-introduce 'struct-check-bind)))
              #'(if (no-specializer?)
                  stx
                  (let* ((specializer-id
                          (let* ((id (make-symbol (stx-e #'id) "::specialize"))
                                 (specializer-id (core-quote-syntax id (stx-source stx))))
                            (core-bind-runtime! specializer-id)
                            specializer-id))
                         (lifted-id
                          (and (lift-unchecked-specializer?)
                               (let* ((id (make-symbol (stx-e #'id) "::specialize::unchecked"))
                                      (lifted-id (core-quote-syntax id (stx-source stx))))
                                 (core-bind-runtime! lifted-id)
                                 lifted-id)))
                         ($t (make-symbol (gensym '__t)))
                         (methods (hash-keys method-calls))
                         ($methods (map (lambda (id) (make-symbol "__" (gensym id))) methods))
                         (_ (for-each (cut hash-put! method-calls <> <>) methods $methods))
                         (methods-bind (map (cut generate-method-bind $t <> <>) methods $methods))
                         (slots (hash-keys slot-refs))
                         ($slots (map (lambda (id) (make-symbol "__" (gensym id))) slots))
                         (_ (for-each (cut hash-put! slot-refs <> <>) slots $slots))
                         (slots-bind (map (cut generate-slot-bind $t <> <>) slots $slots))
                         (class-check (hash-keys class-type-check))
                         ($class-check (map (lambda (_) (make-symbol (gensym '__class))) class-check))
                         (_ (for-each (cut hash-put! class-type-check <> <>) class-check $class-check))
                         (class-check-bind
                          (map (cut generate-class-check-bind $t <> <>) class-check $class-check))
                         (struct-check-all
                          (hash-merge struct-type-check struct-type-assert))
                         (struct-check (hash-keys struct-check-all))
                         ($struct-check (map (lambda (_) (make-symbol (gensym '__class))) struct-check))
                         (_ (for-each (cut hash-put! struct-check-all <> <>) struct-check $struct-check))
                         (struct-check-bind
                          (map (cut generate-struct-check-bind $t <> <>) struct-check $struct-check))
                         bind ...)
                    body ...))))))

       (cond
        ((lambda-expr? #'expr)
         (ast-case #'expr ()
           ((_ (self . args) . body)
            (begin
              (for-each
                (cut apply-collect-object-refs <> #'self
                     method-calls slot-refs class-type-check struct-type-check struct-type-assert)
                #'body)
              (with-specializer
               ((make-specializer-impl
                 (lambda (struct-type-check1 struct-type-check2)
                   (let (specializer-body
                         (map
                           (cut apply-subst-object-refs <> #'self $t
                                method-calls slot-refs class-type-check struct-type-check1 struct-type-check2)
                           #'body))
                     (xform-wrap-source
                      ['%#lambda #'(self . args) . specializer-body]
                      stx))))
                (specializer-impl
                 (make-specializer-impl struct-check-all empty))
                (unchecked-specializer-impl
                 (and (unchecked-specializer?)
                      (make-specializer-impl empty struct-check-all)))
                (specializer-impl
                 (generate-specializer-impl $t
                   methods-bind slots-bind class-check-bind struct-check-bind
                   specializer-impl lifted-specializer-id unchecked-specializer-impl)))
               (verbose "generate method specializer " (stx-e #'id) " => " (stx-e specializer-id))
               (generate-specializer-def #'id
                                         specializer-id specializer-impl
                                         lifted-specializer-id unchecked-specializer-impl))))
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
                       (cut apply-collect-object-refs <> #'self
                            method-calls slot-refs class-type-check struct-type-check struct-type-assert)
                       #'body))
                    (_ (void))))
                #'(clause ...))
              (with-specializer
               ((make-specializer-impl
                 (lambda (struct-type-check1 struct-type-check2)
                   (let (specializer-clauses
                         (map
                           (lambda (clause)
                             (ast-case clause ()
                               (((self . args) . body)
                                (let (body
                                      (map
                                        (cut apply-subst-object-refs <> #'self $t
                                             method-calls slot-refs class-type-check struct-type-check1 struct-type-check2)
                                        #'body))
                                  [#'(self . args) . body]))
                               (_ clause)))
                           #'(clause ...)))
                     (xform-wrap-source
                      ['%#case-lambda specializer-clauses ...]
                      stx))))
                (specializer-impl
                 (make-specializer-impl struct-check-all empty))
                (unchecked-specializer-impl
                 (and (unchecked-specializer?)
                      (make-specializer-impl empty struct-check-all)))
                (specializer-impl
                 (generate-specializer-impl $t
                   methods-bind slots-bind class-check-bind struct-check-bind
                   specializer-impl lifted-specializer-id unchecked-specializer-impl)))
               (verbose "generate method specializer " (stx-e #'id) " => " (stx-e specializer-id))
               (generate-specializer-def #'id
                                         specializer-id specializer-impl
                                         lifted-specializer-id unchecked-specializer-impl))))))

        ((opt-lambda-expr? #'expr)
         (ast-case #'expr ()
           ((_ (((xid) lambda-expr)) case-lambda-expr)
            (begin
              (ast-case #'lambda-expr ()
                ((_ (self . args) . body)
                 (for-each
                   (cut apply-collect-object-refs <> #'self
                        method-calls slot-refs class-type-check struct-type-check struct-type-assert)
                   #'body)))
              (ast-case #'case-lambda-expr ()
                ((_ clause ...)
                 (for-each
                   (lambda (clause)
                     (ast-case clause ()
                       (((self . args) . body)
                        (for-each
                          (cut apply-collect-object-refs <> #'self
                               method-calls slot-refs class-type-check struct-type-check struct-type-assert)
                          #'body))))
                   #'(clause ...))))
              (with-specializer
               ((make-specializer-lambda-expr
                 (lambda (struct-type-check1 struct-type-check2)
                   (ast-case #'lambda-expr ()
                     ((_ (self . args) . body)
                      (let (body (map
                                   (cut apply-subst-object-refs <> #'self $t
                                        method-calls slot-refs class-type-check struct-type-check1 struct-type-check2)
                                   #'body))
                        (xform-wrap-source
                         ['%#lambda #'(self . args) . body]
                         #'lambda-expr))))))
                (make-specializer-case-lambda-expr
                 (lambda (struct-type-check1 struct-type-check2)
                   (ast-case #'case-lambda-expr ()
                     ((_ clause ...)
                      (let (clauses
                            (map
                              (lambda (clause)
                                (ast-case clause ()
                                  (((self . args) . body)
                                   (let (body (map
                                                (cut apply-subst-object-refs <> #'self $t
                                                     method-calls slot-refs class-type-check struct-type-check1 struct-type-check2)
                                                #'body))
                                     [#'(self . args) . body]))
                                  (_ clause)))
                              #'(clause ...)))
                        (xform-wrap-source
                         ['%#case-lambda clauses ...]
                         #'case-lambda-expr))))))
                (make-specializer-impl
                 (lambda (specializer-lambda-expr specializer-case-lambda-expr)
                   (xform-wrap-source
                    ['%#let-values [[[#'xid] specializer-lambda-expr]]
                                   specializer-case-lambda-expr]
                    stx)))
                (specializer-lambda-expr
                 (make-specializer-lambda-expr struct-check-all empty))
                (specializer-case-lambda-expr
                 (make-specializer-case-lambda-expr struct-check-all empty))
                (specializer-impl
                 (make-specializer-impl specializer-lambda-expr specializer-case-lambda-expr))
                (unchecked-specializer-lambda-expr
                 (and (unchecked-specializer?)
                      (make-specializer-lambda-expr empty struct-check-all)))
                (unchecked-specializer-case-lambda-expr
                 (and (unchecked-specializer?)
                      (make-specializer-case-lambda-expr empty struct-check-all)))
                (unchecked-specializer-impl
                 (and (unchecked-specializer?)
                      (make-specializer-impl unchecked-specializer-lambda-expr unchecked-specializer-case-lambda-expr)))
                (specializer-impl
                 (generate-specializer-impl $t
                   methods-bind slots-bind class-check-bind struct-check-bind
                   specializer-impl lifted-specializer-id unchecked-specializer-impl)))
               (verbose "generate method specializer " (stx-e #'id) " => " (stx-e specializer-id))
               (generate-specializer-def #'id
                                         specializer-id specializer-impl
                                         lifted-specializer-id unchecked-specializer-impl))))))

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
                          (cut apply-collect-object-refs <> self
                               method-calls slot-refs class-type-check struct-type-check struct-type-assert)
                          #'body)
                        (with-specializer
                         ((make-specializer-impl
                           (lambda (struct-type-check1 struct-type-check2)
                             (let (specializer-body
                                   (map
                                     (cut apply-subst-object-refs <> self $t
                                          method-calls slot-refs class-type-check struct-type-check1 struct-type-check2)
                                     #'body))
                               (xform-wrap-source
                                ['%#let-values [[[#'get-kws]
                                                 ['%#let-values [[[#'kw-lambda-main]
                                                                  (xform-wrap-source
                                                                   ['%#lambda #'hd . specializer-body]
                                                                   #'kw-lambda-main-expr)]]
                                                                #'get-kws-expr]]]
                                               #'kw-dispatch]
                                stx))))
                          (specializer-impl
                           (make-specializer-impl struct-check-all empty))
                          (unchecked-specializer-impl
                           (and (unchecked-specializer?)
                                (make-specializer-impl empty struct-check-all)))
                          (specializer-impl
                           (generate-specializer-impl $t
                             methods-bind slots-bind class-check-bind struct-check-bind
                             specializer-impl lifted-specializer-id unchecked-specializer-impl)))
                         (verbose "generate method specializer " (stx-e #'id) " => " (stx-e specializer-id))
                         (generate-specializer-def #'id
                                                   specializer-id specializer-impl
                                                   lifted-specializer-id unchecked-specializer-impl))))))

                  ((opt-lambda-expr? #'kw-lambda-main-expr)
                   (ast-case #'kw-lambda-main-expr ()
                     ((_ (((xid) lambda-expr)) case-lambda-expr)
                      (begin
                        (ast-case #'lambda-expr ()
                          ((_ hd . body)
                           (let (self (list-ref #'hd self-index))
                             (for-each
                               (cut apply-collect-object-refs <> self
                                    method-calls slot-refs class-type-check struct-type-check struct-type-assert)
                               #'body))))
                        (ast-case #'case-lambda-expr ()
                          ((_ clause ...)
                           (for-each
                             (lambda (clause)
                               (ast-case clause ()
                                 ((hd . body)
                                  (let (self (list-ref #'hd self-index))
                                    (for-each
                                      (cut apply-collect-object-refs <> self
                                           method-calls slot-refs class-type-check struct-type-check struct-type-assert)
                                      #'body)))))
                             #'(clause ...))))
                        (with-specializer
                         ((make-specializer-lambda-expr
                           (lambda (struct-type-check1 struct-type-check2)
                             (ast-case #'lambda-expr ()
                               ((_ hd . body)
                                (let* ((self (list-ref #'hd self-index))
                                       (body (map
                                               (cut apply-subst-object-refs <> self $t
                                                    method-calls slot-refs class-type-check struct-type-check1 struct-type-check2)
                                               #'body)))
                                  (xform-wrap-source
                                   ['%#lambda #'hd . body]
                                   #'lambda-expr))))))
                          (make-specializer-case-lambda-expr
                           (lambda (struct-type-check1 struct-type-check2)
                             (ast-case #'case-lambda-expr ()
                               ((_ clause ...)
                                (let (clauses
                                      (map
                                        (lambda (clause)
                                          (ast-case clause ()
                                            ((hd . body)
                                             (let* ((self (list-ref #'hd self-index))
                                                    (body (map
                                                            (cut apply-subst-object-refs <> self $t
                                                                 method-calls slot-refs class-type-check struct-type-check1 struct-type-check2)
                                                            #'body)))
                                               [#'hd . body]))))
                                        #'(clause ...)))
                                  (xform-wrap-source
                                   ['%#case-lambda clauses ...]
                                   #'case-lambda-expr))))))
                          (make-specializer-impl
                           (lambda (specializer-lambda-expr specializer-case-lambda-expr)
                             (xform-wrap-source
                              ['%#let-values [[[#'get-kws]
                                               ['%#let-values [[[#'kw-lambda-main]
                                                                (xform-wrap-source
                                                                 ['%#let-values [[[#'xid] specializer-lambda-expr]]
                                                                                specializer-case-lambda-expr]
                                                                 stx)]]
                                                              #'get-kws-expr]]]
                                             #'kw-dispatch]
                              stx)))
                          (specializer-lambda-expr
                           (make-specializer-lambda-expr struct-check-all empty))
                          (specializer-case-lambda-expr
                           (make-specializer-case-lambda-expr struct-check-all empty))
                          (specializer-impl
                           (make-specializer-impl specializer-lambda-expr specializer-case-lambda-expr))
                          (unchecked-specializer-lambda-expr
                           (and (unchecked-specializer?)
                                (make-specializer-lambda-expr empty struct-check-all)))
                          (unchecked-specializer-case-lambda-expr
                           (and (unchecked-specializer?)
                                (make-specializer-case-lambda-expr empty struct-check-all)))
                          (unchecked-specializer-impl
                           (and (unchecked-specializer?)
                                (make-specializer-impl unchecked-specializer-lambda-expr unchecked-specializer-case-lambda-expr)))

                          (specializer-impl
                           (generate-specializer-impl $t
                             methods-bind slots-bind class-check-bind struct-check-bind
                             specializer-impl lifted-specializer-id unchecked-specializer-impl)))
                         (verbose "generate method specializer " (stx-e #'id) " => " (stx-e specializer-id))
                         (generate-specializer-def #'id
                                                   specializer-id specializer-impl
                                                   lifted-specializer-id unchecked-specializer-impl))))))

                  (else stx))))))))

        (else stx))))
    (_ stx)))

;;; apply-collect-objec-refs

;; TODO: simplify this (and the caller) after (re)boostrap when the old MOP residues
;; disappear.
(def (collect-object-refs-call% stx self methods slots class-check struct-check struct-assert)
  (begin-annotation @match:prefix
  (ast-case stx (%#ref %#quote)
    ((_ (%#ref -call-method) (%#ref -self) (%#quote method) args ...)
     (and (runtime-identifier=? #'-call-method 'call-method)
          (free-identifier=? #'-self self))
     (begin
       (hash-put! methods (stx-e #'method) #t)
       (for-each (cut compile-e <> self methods slots class-check struct-check struct-assert)
                 #'(args ...))))
    ((_ (%#ref -apply) (%#ref -call-method) (%#ref -self) (%#quote method) args ...)
     (and (runtime-identifier=? #'-apply 'apply)
          (runtime-identifier=? #'-call-method 'call-method)
          (free-identifier=? #'-self self))
     (begin
       (hash-put! methods (stx-e #'method) #t)
       (for-each
         (cut compile-e <> self methods slots class-check struct-check struct-assert)
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
       (compile-e #'expr self methods slots class-check struct-check struct-assert)))

    ;; MOP
    ((_ (%#ref getf) (%#ref -self))
     (and (!accessor? (optimizer-resolve-type (identifier-symbol #'getf)))
          (free-identifier=? #'-self self))
     (hash-put! slots (!accessor-slot (optimizer-resolve-type (identifier-symbol #'getf)) ) #t))
    ((_ (%#ref setf) (%#ref -self) expr)
     (and (!mutator? (optimizer-resolve-type (identifier-symbol #'setf)))
          (free-identifier=? #'-self self))
     (begin
       (hash-put! slots (!mutator-slot (optimizer-resolve-type (identifier-symbol #'setf))) #t)
       (compile-e #'expr self methods slots class-check struct-check struct-assert)))

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;; TODO DEPRECATED; remove after (re)bootstrap
    ((_ (%#ref getf) (%#ref -self))
     (and (!class-getf? (optimizer-resolve-type (identifier-symbol #'getf)))
          (free-identifier=? #'-self self))
     (hash-put! slots (!class-getf-slot (optimizer-resolve-type (identifier-symbol #'getf))) #t))
    ((_ (%#ref setf) (%#ref -self) expr)
     (and (!class-setf? (optimizer-resolve-type (identifier-symbol #'setf)))
          (free-identifier=? #'-self self))
     (begin
       (hash-put! slots (!class-setf-slot (optimizer-resolve-type (identifier-symbol #'setf))) #t)
       (compile-e #'expr self methods slots class-check struct-check struct-assert)))
    ((_ (%#ref is?) (%#ref -self))
     (and (!class-pred? (optimizer-resolve-type (identifier-symbol #'is?)))
          (free-identifier=? #'-self self))
     (hash-put! class-check (!type-id (optimizer-resolve-type (identifier-symbol #'is?))) #t))
    ((_ (%#ref is?) (%#ref -self))
     (and (!struct-pred? (optimizer-resolve-type (identifier-symbol #'is?)))
          (free-identifier=? #'-self self))
     (hash-put! struct-check (!type-id (optimizer-resolve-type (identifier-symbol #'is?))) #t))
    ((_ (%#ref getf) (%#ref -self))
     (cond
      ((not (free-identifier=? #'-self self)) #f)
      ((optimizer-resolve-type (identifier-symbol #'getf))
       => (lambda (t)
            (and (!struct-getf? t)
                 (alet (struct-t (optimizer-resolve-type (!type-id t)))
                   (!struct-type-xfields struct-t)))))
      (else #f))
     (let (getf (optimizer-resolve-type (identifier-symbol #'getf)))
       (unless (!struct-getf-unchecked? getf)
         (hash-put! struct-assert (!type-id getf) #t))))
    ((_ (%#ref setf) (%#ref -self) expr)
     (cond
      ((not (free-identifier=? #'-self self)) #f)
      ((optimizer-resolve-type (identifier-symbol #'setf))
       => (lambda (t)
            (and (!struct-setf? t)
                 (alet (struct-t (optimizer-resolve-type (!type-id t)))
                   (!struct-type-xfields struct-t)))))
      (else #f))
     (let (setf (optimizer-resolve-type (identifier-symbol #'setf)))
       (unless (!struct-setf-unchecked? setf)
         (hash-put! struct-assert (!type-id setf) #t))
       (compile-e #'expr self methods slots class-check struct-check struct-assert)))
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    (_ (collect-operands stx self methods slots class-check struct-check struct-assert)))))

;;; apply-subst-object-refs

;; TODO: simplify this (and the caller) after (re)boostrap when the old MOP residues
;; disappear.
(def (subst-object-refs-call% stx self $t methods slots class-check struct-check struct-assert)
  (def (force-e what)
    ['%#call ['%#ref 'force] ['%#ref what]])

  (begin-annotation @match:prefix
  (ast-case stx (%#ref %#quote)
    ((_ (%#ref -call-method) (%#ref -self) (%#quote method) args ...)
     (and (runtime-identifier=? #'-call-method 'call-method)
          (free-identifier=? #'-self self))
     (let (($method (hash-ref methods (stx-e #'method)))
           (args (map (cut compile-e <> self $t methods slots class-check struct-check struct-assert)
                      #'(args ...))))
       (xform-wrap-source
        ['%#call (force-e $method) ['%#ref self] args ...]
        stx)))
    ((_ (%#ref -apply) (%#ref -call-method) (%#ref -self) (%#quote method) args ...)
     (and (runtime-identifier=? #'-apply 'apply)
          (runtime-identifier=? #'-call-method 'call-method)
          (free-identifier=? #'-self self))
     (let (($method (hash-ref methods (stx-e #'method)))
           (args (map (cut compile-e <> self $t methods slots class-check struct-check struct-assert)
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
        ['%#struct-unchecked-ref ['%#ref $t] ['%#ref $field] ['%#ref self]]
        stx)))
    ((_ (%#ref -slot-set!) (%#ref -self) (%#quote slot) expr)
     (and (or (runtime-identifier=? #'-slot-set! 'slot-set!)
              (runtime-identifier=? #'-slot-set! 'unchecked-slot-set!))
          (free-identifier=? #'-self self))
     (let (($field (hash-ref slots (stx-e #'slot)))
           (expr (compile-e #'expr self $t methods slots class-check struct-check struct-assert)))
       (xform-wrap-source
        ['%#struct-unchecked-set! ['%#ref $t] ['%#ref $field] ['%#ref self] expr]
        stx)))

    ;; MOP
    ((_ (%#ref getf) (%#ref -self))
     (and (free-identifier=? #'-self self)
          (!accessor? (optimizer-resolve-type (identifier-symbol #'getf))))
     (let* ((slot (!accessor-slot (optimizer-resolve-type (identifier-symbol #'getf))))
            ($field (hash-ref slots slot)))
       (xform-wrap-source
        ['%#struct-unchecked-ref ['%#ref $t] ['%#ref $field] ['%#ref self]]
        stx)))

    ((_ (%#ref setf) (%#ref -self) expr)
     (and (free-identifier=? #'-self self)
          (!mutator? (optimizer-resolve-type (identifier-symbol #'setf))))
     (let* ((slot (!mutator-slot (optimizer-resolve-type (identifier-symbol #'setf))))
            ($field (hash-ref slots slot))
            (expr (compile-e #'expr self $t methods slots class-check struct-check struct-assert)))
       (xform-wrap-source
        ['%#struct-unchecked-set! ['%#ref $t] ['%#ref $field] ['%#ref self]]
        stx)))

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;; TODO DEPRECATED remove after (re)bootstrap
    ((_ (%#ref getf) (%#ref -self))
     (and (free-identifier=? #'-self self)
          (!class-getf? (optimizer-resolve-type (identifier-symbol #'getf))))
     (let* ((slot (!class-getf-slot (optimizer-resolve-type (identifier-symbol #'getf))))
            ($field (hash-ref slots slot)))
       (xform-wrap-source
        ['%#struct-unchecked-ref ['%#ref $t] ['%#ref $field] ['%#ref self]]
        stx)))
    ((_ (%#ref setf) (%#ref -self) expr)
     (and (free-identifier=? #'-self self)
          (!class-setf? (optimizer-resolve-type (identifier-symbol #'setf))))
     (let* ((slot (!class-setf-slot (optimizer-resolve-type (identifier-symbol #'setf))))
            ($field (hash-ref slots slot))
            (expr (compile-e #'expr self $t methods slots class-check struct-check struct-assert)))
       (xform-wrap-source
        ['%#struct-unchecked-set! ['%#ref $t] ['%#ref $field] ['%#ref self] expr]
        stx)))
    ((_ (%#ref is?) (%#ref -self))
     (and (free-identifier=? #'-self self)
          (!class-pred? (optimizer-resolve-type (identifier-symbol #'is?))))
     ['%#ref (hash-ref class-check (!type-id (optimizer-resolve-type (identifier-symbol #'is?))))])
    ((_ (%#ref is?) (%#ref -self))
     (and (free-identifier=? #'-self self)
          (!struct-pred? (optimizer-resolve-type (identifier-symbol #'is?))))
     (let (t (!type-id (optimizer-resolve-type (identifier-symbol #'is?))))
       (cond
        ((hash-get struct-assert t)
         '(%#quote #t))
        ((hash-get struct-check t)
         => (lambda (checkq) ['%#ref checkq]))
        (else stx))))
    ((_ (%#ref getf) (%#ref -self))
     (cond
      ((not (free-identifier=? #'-self self)) #f)
      ((optimizer-resolve-type (identifier-symbol #'getf))
       => (lambda (t)
            (and (!struct-getf? t)
                 (alet (struct-t (optimizer-resolve-type (!type-id t)))
                   (!struct-type-xfields struct-t)))))
      (else #f))
     (let* ((getf (optimizer-resolve-type (identifier-symbol #'getf)))
            (t (!type-id getf)))
       (cond
        ((!struct-getf-unchecked? getf)
         stx)
        ((hash-get struct-assert t)
         (let* ((struct-t (optimizer-resolve-type t))
                (off (fx+ (!struct-getf-off getf) (!struct-type-xfields struct-t) 1)))
           ['%#struct-unchecked-ref ['%#ref t] ['%#quote off] ['%#ref self]]))
        ((hash-get struct-check t)
         => (lambda (checkq)
              (let* ((struct-t (optimizer-resolve-type t))
                     (off (fx+ (!struct-getf-off getf) (!struct-type-xfields struct-t) 1)))
                ['%#if ['%#ref checkq]
                       ['%#struct-unchecked-ref ['%#ref t] ['%#quote off] ['%#ref self]]
                       ['%#call ['%#ref 'error]
                                ['%#quote "Type error; concrete type is not a subclass of expected type"]
                                ['%#ref t]
                                ['%#ref self]]])))
        (else stx))))
    ((_ (%#ref setf) (%#ref -self) expr)
     (cond
      ((not (free-identifier=? #'-self self)) #f)
      ((optimizer-resolve-type (identifier-symbol #'setf))
       => (lambda (t)
            (and (!struct-setf? t)
                 (alet (struct-t (optimizer-resolve-type (!type-id t)))
                   (!struct-type-xfields struct-t)))))
      (else #f))
     (let* ((setf (optimizer-resolve-type (identifier-symbol #'setf)))
            (t (!type-id setf))
            (expr (compile-e #'expr self $t methods slots class-check struct-check struct-assert)))
       (cond
        ((!struct-setf-unchecked? setf)
         ['%#call #'(%#ref setf) #'(%#ref -self) expr])
        ((hash-get struct-assert t)
         (let* ((struct-t (optimizer-resolve-type t))
                (off (fx+ (!struct-setf-off setf) (!struct-type-xfields struct-t) 1)))
           ['%#struct-unchecked-set! ['%#ref t] ['%#quote off] ['%#ref self] expr]))
        ((hash-get struct-check t)
         => (lambda (checkq)
              (let* ((struct-t (optimizer-resolve-type t))
                     (off (fx+ (!struct-setf-off setf) (!struct-type-xfields struct-t) 1)))
                ['%#if ['%#ref checkq]
                       ['%#struct-unchecked-set! ['%#ref t] ['%#quote off] ['%#ref self] expr]
                       ['%#call ['%#ref 'error]
                                ['%#quote "Type error; concrete type is not a subclass of expected type"]
                                ['%#ref t]
                                ['%#ref self]]])))
        (else
         ['%#call #'(%#ref setf) #'(%#ref -self) expr]))))
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    (_ (xform-operands stx self $t methods slots class-check struct-check struct-assert)))))

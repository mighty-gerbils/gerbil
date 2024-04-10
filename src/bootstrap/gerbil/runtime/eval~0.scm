(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1712784665)
  (begin
    (define __syntax::t
      (let ((__tmp112316 (list)) (__tmp112315 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp112316
         '(e id)
         __tmp112315
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args112120%_
        (apply make-instance __syntax::t _%$args112120%_)))
    (define __syntax-e
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __syntax::t 'e)))
    (define __syntax-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __syntax::t 'id)))
    (define __syntax-e-set!
      (let () (declare (not safe)) (__make-class-slot-mutator __syntax::t 'e)))
    (define __syntax-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __syntax::t 'id)))
    (define &__syntax-e
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __syntax::t 'e)))
    (define &__syntax-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __syntax::t 'id)))
    (define &__syntax-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __syntax::t 'e)))
    (define &__syntax-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __syntax::t 'id)))
    (define __core-form::t
      (let ((__tmp112318 (list __syntax::t))
            (__tmp112317 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp112318
         '()
         __tmp112317
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args112117%_
        (apply make-instance __core-form::t _%$args112117%_)))
    (define __core-form-e
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __core-form::t 'e)))
    (define __core-form-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __core-form::t 'id)))
    (define __core-form-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __core-form::t 'e)))
    (define __core-form-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __core-form::t 'id)))
    (define &__core-form-e
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __core-form::t 'e)))
    (define &__core-form-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __core-form::t 'id)))
    (define &__core-form-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __core-form::t 'e)))
    (define &__core-form-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __core-form::t 'id)))
    (define __core-expression::t
      (let ((__tmp112320 (list __core-form::t))
            (__tmp112319 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp112320
         '()
         __tmp112319
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args112114%_
        (apply make-instance __core-expression::t _%$args112114%_)))
    (define __core-expression-e
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __core-expression::t 'e)))
    (define __core-expression-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __core-expression::t 'id)))
    (define __core-expression-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __core-expression::t 'e)))
    (define __core-expression-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __core-expression::t 'id)))
    (define &__core-expression-e
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __core-expression::t 'e)))
    (define &__core-expression-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __core-expression::t 'id)))
    (define &__core-expression-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __core-expression::t 'e)))
    (define &__core-expression-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __core-expression::t 'id)))
    (define __core-special-form::t
      (let ((__tmp112322 (list __core-form::t))
            (__tmp112321 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp112322
         '()
         __tmp112321
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args112111%_
        (apply make-instance __core-special-form::t _%$args112111%_)))
    (define __core-special-form-e
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __core-special-form::t 'e)))
    (define __core-special-form-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __core-special-form::t 'id)))
    (define __core-special-form-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __core-special-form::t 'e)))
    (define __core-special-form-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __core-special-form::t 'id)))
    (define &__core-special-form-e
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __core-special-form::t 'e)))
    (define &__core-special-form-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __core-special-form::t 'id)))
    (define &__core-special-form-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __core-special-form::t 'e)))
    (define &__core-special-form-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __core-special-form::t 'id)))
    (define __core (let () (declare (not safe)) (make-hash-table-eq)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve
      (lambda (_%id112109%_)
        (let ((__tmp112323
               (let () (declare (not safe)) (__AST-e _%id112109%_))))
          (declare (not safe))
          (hash-get __core __tmp112323))))
    (define __core-bound-id?__%
      (lambda (_%id112092%_ _%is?112093%_)
        (let ((_%$e112095%_ (__core-resolve _%id112092%_)))
          (if _%$e112095%_ (_%is?112093%_ _%$e112095%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id112102%_)
        (let ((_%is?112104%_ true))
          (__core-bound-id?__% _%id112102%_ _%is?112104%_))))
    (define __core-bound-id?
      (lambda _g112325_
        (let ((_g112324_ (let () (declare (not safe)) (##length _g112325_))))
          (cond ((let () (declare (not safe)) (##fx= _g112324_ 1))
                 (apply __core-bound-id?__0 _g112325_))
                ((let () (declare (not safe)) (##fx= _g112324_ 2))
                 (apply __core-bound-id?__% _g112325_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g112325_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id112075%_ _%e112076%_ _%make112077%_)
        (let ((__tmp112326
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e112076%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e112076%_
                   (_%make112077%_ _%e112076%_ _%id112075%_))))
          (declare (not safe))
          (hash-put! __core _%id112075%_ __tmp112326))))
    (define __core-bind-syntax!__0
      (lambda (_%id112082%_ _%e112083%_)
        (let ((_%make112085%_ make-__syntax))
          (__core-bind-syntax!__% _%id112082%_ _%e112083%_ _%make112085%_))))
    (define __core-bind-syntax!
      (lambda _g112328_
        (let ((_g112327_ (let () (declare (not safe)) (##length _g112328_))))
          (cond ((let () (declare (not safe)) (##fx= _g112327_ 2))
                 (apply __core-bind-syntax!__0 _g112328_))
                ((let () (declare (not safe)) (##fx= _g112327_ 3))
                 (apply __core-bind-syntax!__% _g112328_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g112328_))))))
    (define __SRC__%
      (lambda (_%e112055%_ _%src-stx112056%_)
        (if (or (pair? _%e112055%_) (symbol? _%e112055%_))
            (let ((__tmp112329
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx112056%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx112056%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e112055%_ __tmp112329))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e112055%_ 'gerbil#AST::t))
                (let ((__tmp112331
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e112055%_ '1 '#f '#f)))
                      (__tmp112330
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e112055%_)))))
                  (declare (not safe))
                  (##make-source __tmp112331 __tmp112330))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e112055%_))))))
    (define __SRC__0
      (lambda (_%e112067%_)
        (let ((_%src-stx112069%_ '#f))
          (__SRC__% _%e112067%_ _%src-stx112069%_))))
    (define __SRC
      (lambda _g112333_
        (let ((_g112332_ (let () (declare (not safe)) (##length _g112333_))))
          (cond ((let () (declare (not safe)) (##fx= _g112332_ 1))
                 (apply __SRC__0 _g112333_))
                ((let () (declare (not safe)) (##fx= _g112332_ 2))
                 (apply __SRC__% _g112333_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g112333_))))))
    (define __locat
      (lambda (_%loc112052%_)
        (if (let () (declare (not safe)) (##locat? _%loc112052%_))
            _%loc112052%_
            '#f)))
    (define __check-values
      (lambda (_%obj112047%_ _%k112048%_)
        (let ((_%count112050%_
               (if (let () (declare (not safe)) (##values? _%obj112047%_))
                   (let ()
                     (declare (not safe))
                     (##vector-length _%obj112047%_))
                   '1)))
          (if (fx= _%count112050%_ _%k112048%_)
              '#!void
              (let ((__tmp112335
                     (if (fx< _%count112050%_ _%k112048%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp112334
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj112047%_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _%obj112047%_))
                         _%obj112047%_)))
                (declare (not safe))
                (error __tmp112335 __tmp112334 _%k112048%_))))))
    (define __compile
      (lambda (_%stx112016%_)
        (let* ((_%$e112018%_ _%stx112016%_)
               (_%$E112020112026%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e112018%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e112018%_))
              (let* ((_%$tgt112021112029%_
                      (let () (declare (not safe)) (__AST-e _%$e112018%_)))
                     (_%$hd112022112032%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt112021112029%_)))
                     (_%$tl112023112035%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt112021112029%_)))
                     (_%form112039%_ _%$hd112022112032%_)
                     (_%$e112041%_ (__core-resolve _%form112039%_)))
                (if _%$e112041%_
                    ((lambda (_%bind112044%_)
                       ((##structure-ref _%bind112044%_ '1 __syntax::t '#f)
                        _%stx112016%_))
                     _%$e112041%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx112016%_
                       _%form112039%_))))
              (_%$E112020112026%_)))))
    (define __compile-error__%
      (lambda (_%stx112003%_ _%detail112004%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx112003%_
           _%detail112004%_))))
    (define __compile-error__0
      (lambda (_%stx112009%_)
        (let ((_%detail112011%_ '#f))
          (__compile-error__% _%stx112009%_ _%detail112011%_))))
    (define __compile-error
      (lambda _g112337_
        (let ((_g112336_ (let () (declare (not safe)) (##length _g112337_))))
          (cond ((let () (declare (not safe)) (##fx= _g112336_ 1))
                 (apply __compile-error__0 _g112337_))
                ((let () (declare (not safe)) (##fx= _g112336_ 2))
                 (apply __compile-error__% _g112337_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g112337_))))))
    (define __compile-ignore%
      (lambda (_%stx112000%_) (__SRC__% ''#!void _%stx112000%_)))
    (define __compile-begin%
      (lambda (_%stx111975%_)
        (let* ((_%$e111977%_ _%stx111975%_)
               (_%$E111979111985%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111977%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111977%_))
              (let* ((_%$tgt111980111988%_
                      (let () (declare (not safe)) (__AST-e _%$e111977%_)))
                     (_%$hd111981111991%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111980111988%_)))
                     (_%$tl111982111994%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111980111988%_)))
                     (_%body111998%_ _%$tl111982111994%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body111998%_))
                 _%stx111975%_))
              (_%$E111979111985%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx111950%_)
        (let* ((_%$e111952%_ _%stx111950%_)
               (_%$E111954111960%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111952%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111952%_))
              (let* ((_%$tgt111955111963%_
                      (let () (declare (not safe)) (__AST-e _%$e111952%_)))
                     (_%$hd111956111966%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111955111963%_)))
                     (_%$tl111957111969%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111955111963%_)))
                     (_%body111973%_ _%$tl111957111969%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body111973%_)))
                 _%stx111950%_))
              (_%$E111954111960%_)))))
    (define __compile-import%
      (lambda (_%stx111925%_)
        (let* ((_%$e111927%_ _%stx111925%_)
               (_%$E111929111935%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111927%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111927%_))
              (let* ((_%$tgt111930111938%_
                      (let () (declare (not safe)) (__AST-e _%$e111927%_)))
                     (_%$hd111931111941%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111930111938%_)))
                     (_%$tl111932111944%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111930111938%_)))
                     (_%body111948%_ _%$tl111932111944%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body111948%_ '())) '()))
                 _%stx111925%_))
              (_%$E111929111935%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx111872%_)
        (let* ((_%$e111874%_ _%stx111872%_)
               (_%$E111876111888%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111874%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111874%_))
              (let* ((_%$tgt111877111891%_
                      (let () (declare (not safe)) (__AST-e _%$e111874%_)))
                     (_%$hd111878111894%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111877111891%_)))
                     (_%$tl111879111897%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111877111891%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111879111897%_))
                    (let* ((_%$tgt111880111901%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111879111897%_)))
                           (_%$hd111881111904%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111880111901%_)))
                           (_%$tl111882111907%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111880111901%_)))
                           (_%ann111911%_ _%$hd111881111904%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl111882111907%_))
                          (let* ((_%$tgt111883111913%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111882111907%_)))
                                 (_%$hd111884111916%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111883111913%_)))
                                 (_%$tl111885111919%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111883111913%_)))
                                 (_%expr111923%_ _%$hd111884111916%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl111885111919%_))
                                        '())
                                (__compile _%expr111923%_)
                                (_%$E111876111888%_)))
                          (_%$E111876111888%_)))
                    (_%$E111876111888%_)))
              (_%$E111876111888%_)))))
    (define __compile-define-values%
      (lambda (_%stx111763%_)
        (let* ((_%$e111765%_ _%stx111763%_)
               (_%$E111767111779%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111765%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111765%_))
              (let* ((_%$tgt111768111782%_
                      (let () (declare (not safe)) (__AST-e _%$e111765%_)))
                     (_%$hd111769111785%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111768111782%_)))
                     (_%$tl111770111788%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111768111782%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111770111788%_))
                    (let* ((_%$tgt111771111792%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111770111788%_)))
                           (_%$hd111772111795%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111771111792%_)))
                           (_%$tl111773111798%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111771111792%_)))
                           (_%hd111802%_ _%$hd111772111795%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl111773111798%_))
                          (let* ((_%$tgt111774111804%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111773111798%_)))
                                 (_%$hd111775111807%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111774111804%_)))
                                 (_%$tl111776111810%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111774111804%_)))
                                 (_%expr111814%_ _%$hd111775111807%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl111776111810%_))
                                        '())
                                (let* ((_%$e111816%_ _%hd111802%_)
                                       (_%$E111818111859%_
                                        (lambda ()
                                          (let ((_%$E111819111844%_
                                                 (lambda ()
                                                   (let* ((_%$E111820111831%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e111816%_))))
                  (_%ids111834%_ _%hd111802%_)
                  (_%len111836%_ (length _%ids111834%_))
                  (_%tmp111838%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp111838%_
                                       (cons (__compile _%expr111814%_) '())))
                           _%stx111763%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp111838%_
                                             (cons _%len111836%_ '())))
                                 _%stx111763%_)
                                (let ((__tmp112338
                                       (let ((__tmp112340
                                              (lambda (_%id111841%_
                                                       _%k111842%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id111841%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id111841%_)
                         (cons (cons '##vector-ref
                                     (cons _%tmp111838%_
                                           (cons _%k111842%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx111763%_)
                                                    '#f)))
                                             (__tmp112339
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len111836%_))))
                                         (declare (not safe))
                                         (__filter-map2
                                          __tmp112340
                                          _%ids111834%_
                                          __tmp112339))))
                                  (declare (not safe))
                                  (__foldr1 cons '() __tmp112338)))))
              _%stx111763%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e111816%_))
                                                (let* ((_%$tgt111821111847%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e111816%_)))
                                                       (_%$hd111822111850%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt111821111847%_)))
                                                       (_%$tl111823111853%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt111821111847%_)))
                                                       (_%id111857%_
                                                        _%$hd111822111850%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl111823111853%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id111857%_)
                           (cons (__compile _%expr111814%_) '())))
               _%stx111763%_)
              (_%$E111819111844%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E111819111844%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e111816%_))
                                      (let* ((_%$tgt111824111862%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e111816%_)))
                                             (_%$hd111825111865%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt111824111862%_)))
                                             (_%$tl111826111868%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt111824111862%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd111825111865%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl111826111868%_))
                                                        '())
                                                (__compile _%expr111814%_)
                                                (_%$E111818111859%_))
                                            (_%$E111818111859%_)))
                                      (_%$E111818111859%_)))
                                (_%$E111767111779%_)))
                          (_%$E111767111779%_)))
                    (_%$E111767111779%_)))
              (_%$E111767111779%_)))))
    (define __compile-head-id
      (lambda (_%e111761%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e111761%_))
             _%e111761%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd111718%_)
        (let _%recur111720%_ ((_%rest111722%_ _%hd111718%_))
          (let* ((_%$e111724%_ _%rest111722%_)
                 (_%$E111726111744%_
                  (lambda ()
                    (let ((_%$E111727111741%_
                           (lambda ()
                             (let* ((_%$E111728111736%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e111724%_))))
                                    (_%tail111739%_ _%$e111724%_))
                               (__compile-head-id _%tail111739%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e111724%_))
                                  '())
                          '()
                          (_%$E111727111741%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e111724%_))
                (let* ((_%$tgt111729111747%_
                        (let () (declare (not safe)) (__AST-e _%$e111724%_)))
                       (_%$hd111730111750%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt111729111747%_)))
                       (_%$tl111731111753%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt111729111747%_)))
                       (_%hd111757%_ _%$hd111730111750%_)
                       (_%rest111759%_ _%$tl111731111753%_))
                  (cons (__compile-head-id _%hd111757%_)
                        (_%recur111720%_ _%rest111759%_)))
                (_%$E111726111744%_))))))
    (define __compile-lambda%
      (lambda (_%stx111665%_)
        (let* ((_%$e111667%_ _%stx111665%_)
               (_%$E111669111681%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111667%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111667%_))
              (let* ((_%$tgt111670111684%_
                      (let () (declare (not safe)) (__AST-e _%$e111667%_)))
                     (_%$hd111671111687%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111670111684%_)))
                     (_%$tl111672111690%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111670111684%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111672111690%_))
                    (let* ((_%$tgt111673111694%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111672111690%_)))
                           (_%$hd111674111697%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111673111694%_)))
                           (_%$tl111675111700%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111673111694%_)))
                           (_%hd111704%_ _%$hd111674111697%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl111675111700%_))
                          (let* ((_%$tgt111676111706%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111675111700%_)))
                                 (_%$hd111677111709%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111676111706%_)))
                                 (_%$tl111678111712%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111676111706%_)))
                                 (_%body111716%_ _%$hd111677111709%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl111678111712%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd111704%_)
                                             (cons (__compile _%body111716%_)
                                                   '())))
                                 _%stx111665%_)
                                (_%$E111669111681%_)))
                          (_%$E111669111681%_)))
                    (_%$E111669111681%_)))
              (_%$E111669111681%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx111457%_)
        (letrec ((_%variadic?111459%_
                  (lambda (_%hd111630%_)
                    (let* ((_%$e111632%_ _%hd111630%_)
                           (_%$E111634111650%_
                            (lambda ()
                              (let ((_%$E111635111647%_
                                     (lambda ()
                                       (let ((_%$E111636111644%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e111632%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e111632%_))
                                            '())
                                    '#f
                                    (_%$E111635111647%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e111632%_))
                          (let* ((_%$tgt111637111653%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e111632%_)))
                                 (_%$hd111638111656%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111637111653%_)))
                                 (_%$tl111639111659%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111637111653%_)))
                                 (_%rest111663%_ _%$tl111639111659%_))
                            (_%variadic?111459%_ _%rest111663%_))
                          (_%$E111634111650%_)))))
                 (_%arity111460%_
                  (lambda (_%hd111595%_)
                    (let _%lp111597%_ ((_%rest111599%_ _%hd111595%_)
                                       (_%k111600%_ '0))
                      (let* ((_%$e111602%_ _%rest111599%_)
                             (_%$E111604111615%_
                              (lambda ()
                                (let ((_%$E111605111612%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e111602%_)))))
                                  _%k111600%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e111602%_))
                            (let* ((_%$tgt111606111618%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e111602%_)))
                                   (_%$hd111607111621%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt111606111618%_)))
                                   (_%$tl111608111624%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt111606111618%_)))
                                   (_%rest111628%_ _%$tl111608111624%_))
                              (_%lp111597%_
                               _%rest111628%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%k111600%_ '1))))
                            (_%$E111604111615%_))))))
                 (_%generate111461%_
                  (lambda (_%rest111522%_ _%args111523%_ _%len111524%_)
                    (let* ((_%$e111526%_ _%rest111522%_)
                           (_%$E111528111539%_
                            (lambda ()
                              (let ((_%$E111529111536%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e111526%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args111523%_ '())))
                                 _%stx111457%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e111526%_))
                          (let* ((_%$tgt111530111542%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e111526%_)))
                                 (_%$hd111531111545%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111530111542%_)))
                                 (_%$tl111532111548%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111530111542%_)))
                                 (_%clause111552%_ _%$hd111531111545%_)
                                 (_%rest111554%_ _%$tl111532111548%_)
                                 (_%$e111556%_ _%clause111552%_)
                                 (_%$E111558111567%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e111556%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e111556%_))
                                (let* ((_%$tgt111559111570%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e111556%_)))
                                       (_%$hd111560111573%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt111559111570%_)))
                                       (_%$tl111561111576%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt111559111570%_)))
                                       (_%hd111580%_ _%$hd111560111573%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl111561111576%_))
                                      (let* ((_%$tgt111562111582%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl111561111576%_)))
                                             (_%$hd111563111585%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt111562111582%_)))
                                             (_%$tl111564111588%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt111562111582%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl111564111588%_))
                                                    '())
                                            (let ((_%clen111592%_
                                                   (_%arity111460%_
                                                    _%hd111580%_))
                                                  (_%cmp111593%_
                                                   (if (_%variadic?111459%_
                                                        _%hd111580%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp111593%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len111524%_ (cons _%clen111592%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause111552%_))
                                      (cons _%args111523%_ '())))
                          _%stx111457%_)
                         (cons (_%generate111461%_
                                _%rest111554%_
                                _%args111523%_
                                _%len111524%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx111457%_))
                                            (_%$E111558111567%_)))
                                      (_%$E111558111567%_)))
                                (_%$E111558111567%_)))
                          (_%$E111528111539%_))))))
          (let* ((_%$e111463%_ _%stx111457%_)
                 (_%$E111465111497%_
                  (lambda ()
                    (let ((_%$E111466111479%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e111463%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e111463%_))
                          (let* ((_%$tgt111467111482%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e111463%_)))
                                 (_%$hd111468111485%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111467111482%_)))
                                 (_%$tl111469111488%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111467111482%_)))
                                 (_%clauses111492%_ _%$tl111469111488%_))
                            (let ((_%args111494%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx111457%_))
                                  (_%len111495%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx111457%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args111494%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len111495%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args111494%_ '()))
                                         _%stx111457%_)
                                        '()))
                            '())
                      (cons (_%generate111461%_
                             _%clauses111492%_
                             _%args111494%_
                             _%len111495%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx111457%_)
                                                 '())))
                               _%stx111457%_)))
                          (_%$E111466111479%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e111463%_))
                (let* ((_%$tgt111470111500%_
                        (let () (declare (not safe)) (__AST-e _%$e111463%_)))
                       (_%$hd111471111503%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt111470111500%_)))
                       (_%$tl111472111506%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt111470111500%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl111472111506%_))
                      (let* ((_%$tgt111473111510%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl111472111506%_)))
                             (_%$hd111474111513%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt111473111510%_)))
                             (_%$tl111475111516%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt111473111510%_)))
                             (_%clause111520%_ _%$hd111474111513%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl111475111516%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause111520%_))
                            (_%$E111465111497%_)))
                      (_%$E111465111497%_)))
                (_%$E111465111497%_))))))
    (define __compile-let-form
      (lambda (_%stx111226%_ _%compile-simple111227%_ _%compile-values111228%_)
        (letrec ((_%simple-bind?111230%_
                  (lambda (_%hd111415%_)
                    (let* ((_%hd111416111426%_ _%hd111415%_)
                           (_%else111419111434%_ (lambda () '#f)))
                      (let ((_%K111422111447%_ (lambda (_%id111445%_) '#t))
                            (_%K111421111439%_ (lambda () '#t)))
                        (let ((_%try-match111418111442%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd111416111426%_ '#f))
                                     (_%K111421111439%_)
                                     (_%else111419111434%_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%hd111416111426%_))
                              (let ((_%tl111424111452%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd111416111426%_)))
                                    (_%hd111423111450%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd111416111426%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _%tl111424111452%_))
                                    (let ((_%id111455%_ _%hd111423111450%_))
                                      (_%K111422111447%_ _%id111455%_))
                                    (_%try-match111418111442%_)))
                              (_%try-match111418111442%_)))))))
                 (_%car-e111231%_
                  (lambda (_%hd111413%_)
                    (if (pair? _%hd111413%_)
                        (car _%hd111413%_)
                        _%hd111413%_))))
          (let* ((_%$e111233%_ _%stx111226%_)
                 (_%$E111235111378%_
                  (lambda ()
                    (let ((_%$E111236111258%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e111233%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e111233%_))
                          (let* ((_%$tgt111237111261%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e111233%_)))
                                 (_%$hd111238111264%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111237111261%_)))
                                 (_%$tl111239111267%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111237111261%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl111239111267%_))
                                (let* ((_%$tgt111240111271%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl111239111267%_)))
                                       (_%$hd111241111274%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt111240111271%_)))
                                       (_%$tl111242111277%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt111240111271%_)))
                                       (_%hd111281%_ _%$hd111241111274%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl111242111277%_))
                                      (let* ((_%$tgt111243111283%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl111242111277%_)))
                                             (_%$hd111244111286%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt111243111283%_)))
                                             (_%$tl111245111289%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt111243111283%_)))
                                             (_%body111293%_
                                              _%$hd111244111286%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl111245111289%_))
                                                    '())
                                            (let* ((_%hd-ids111333%_
                                                    (map (lambda (_%bind111295%_)
                                                           (let* ((_%$e111297%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind111295%_)
                          (_%$E111299111308%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e111297%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e111297%_))
                         (let* ((_%$tgt111300111311%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e111297%_)))
                                (_%$hd111301111314%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt111300111311%_)))
                                (_%$tl111302111317%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt111300111311%_)))
                                (_%ids111321%_ _%$hd111301111314%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl111302111317%_))
                               (let* ((_%$tgt111303111323%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl111302111317%_)))
                                      (_%$hd111304111326%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt111303111323%_)))
                                      (_%$tl111305111329%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt111303111323%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl111305111329%_))
                                             '())
                                     _%ids111321%_
                                     (_%$E111299111308%_)))
                               (_%$E111299111308%_)))
                         (_%$E111299111308%_))))
                 _%hd111281%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs111373%_
                                                    (map (lambda (_%bind111335%_)
                                                           (let* ((_%$e111337%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind111335%_)
                          (_%$E111339111348%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e111337%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e111337%_))
                         (let* ((_%$tgt111340111351%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e111337%_)))
                                (_%$hd111341111354%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt111340111351%_)))
                                (_%$tl111342111357%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt111340111351%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl111342111357%_))
                               (let* ((_%$tgt111343111361%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl111342111357%_)))
                                      (_%$hd111344111364%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt111343111361%_)))
                                      (_%$tl111345111367%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt111343111361%_)))
                                      (_%expr111371%_ _%$hd111344111364%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl111345111367%_))
                                             '())
                                     (__compile _%expr111371%_)
                                     (_%$E111339111348%_)))
                               (_%$E111339111348%_)))
                         (_%$E111339111348%_))))
                 _%hd111281%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body111375%_
                                                    (__compile
                                                     _%body111293%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__andmap1
                                                     _%simple-bind?111230%_
                                                     _%hd-ids111333%_))
                                                  (_%compile-simple111227%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e111231%_
                                                            _%hd-ids111333%_))
                                                   _%exprs111373%_
                                                   _%body111375%_)
                                                  (_%compile-values111228%_
                                                   _%hd-ids111333%_
                                                   _%exprs111373%_
                                                   _%body111375%_)))
                                            (_%$E111236111258%_)))
                                      (_%$E111236111258%_)))
                                (_%$E111236111258%_)))
                          (_%$E111236111258%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e111233%_))
                (let* ((_%$tgt111246111381%_
                        (let () (declare (not safe)) (__AST-e _%$e111233%_)))
                       (_%$hd111247111384%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt111246111381%_)))
                       (_%$tl111248111387%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt111246111381%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl111248111387%_))
                      (let* ((_%$tgt111249111391%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl111248111387%_)))
                             (_%$hd111250111394%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt111249111391%_)))
                             (_%$tl111251111397%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt111249111391%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd111250111394%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl111251111397%_))
                                (let* ((_%$tgt111252111401%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl111251111397%_)))
                                       (_%$hd111253111404%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt111252111401%_)))
                                       (_%$tl111254111407%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt111252111401%_)))
                                       (_%body111411%_ _%$hd111253111404%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl111254111407%_))
                                              '())
                                      (__compile _%body111411%_)
                                      (_%$E111235111378%_)))
                                (_%$E111235111378%_))
                            (_%$E111235111378%_)))
                      (_%$E111235111378%_)))
                (_%$E111235111378%_))))))
    (define __compile-let-values%
      (lambda (_%stx111038%_)
        (letrec ((_%compile-simple111040%_
                  (lambda (_%hd-ids111222%_ _%exprs111223%_ _%body111224%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp112341
                                        (map __compile-head-id
                                             _%hd-ids111222%_)))
                                   (declare (not safe))
                                   (##map list __tmp112341 _%exprs111223%_))
                                 (cons _%body111224%_ '())))
                     _%stx111038%_)))
                 (_%compile-values111041%_
                  (lambda (_%hd-ids111137%_ _%exprs111138%_ _%body111139%_)
                    (let _%lp111141%_ ((_%rest111143%_ _%hd-ids111137%_)
                                       (_%exprs111144%_ _%exprs111138%_)
                                       (_%bind111145%_ '())
                                       (_%post111146%_ '()))
                      (let* ((_%rest111147111161%_ _%rest111143%_)
                             (_%else111150111169%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind111145%_)
                                             (cons (_%compile-post111042%_
                                                    _%post111146%_
                                                    _%body111139%_)
                                                   '())))
                                 _%stx111038%_))))
                        (let ((_%K111155111205%_
                               (lambda (_%rest111202%_ _%id111203%_)
                                 (_%lp111141%_
                                  _%rest111202%_
                                  (cdr _%exprs111144%_)
                                  (cons (cons (__compile-head-id _%id111203%_)
                                              (cons (car _%exprs111144%_) '()))
                                        _%bind111145%_)
                                  _%post111146%_)))
                              (_%K111152111187%_
                               (lambda (_%rest111173%_ _%hd111174%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd111174%_))
                                     (_%lp111141%_
                                      _%rest111173%_
                                      (cdr _%exprs111144%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd111174%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs111144%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind111145%_)
                                      _%post111146%_)
                                     (if (list? _%hd111174%_)
                                         (let* ((_%len111178%_
                                                 (length _%hd111174%_))
                                                (_%tmp111180%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp111141%_
                                            _%rest111173%_
                                            (cdr _%exprs111144%_)
                                            (cons (cons _%tmp111180%_
                                                        (cons (car _%exprs111144%_)
                                                              '()))
                                                  _%bind111145%_)
                                            (cons (cons _%tmp111180%_
                                                        (cons _%len111178%_
                                                              (let ((__tmp112343
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id111183%_ _%k111184%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id111183%_))
                                   (cons (__SRC__0 _%id111183%_) _%k111184%_)
                                   '#f)))
                            (__tmp112342
                             (let ()
                               (declare (not safe))
                               (##iota _%len111178%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp112343 _%hd111174%_ __tmp112342))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post111146%_)))
                                         (__compile-error__%
                                          _%stx111038%_
                                          _%hd111174%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest111147111161%_))
                              (let ((_%tl111157111210%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest111147111161%_)))
                                    (_%hd111156111208%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest111147111161%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd111156111208%_))
                                    (let ((_%tl111159111215%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd111156111208%_)))
                                          (_%hd111158111213%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd111156111208%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl111159111215%_))
                                          (let ((_%id111218%_
                                                 _%hd111158111213%_)
                                                (_%rest111220%_
                                                 _%tl111157111210%_))
                                            (_%K111155111205%_
                                             _%rest111220%_
                                             _%id111218%_))
                                          (let ((_%hd111195%_
                                                 _%hd111156111208%_)
                                                (_%rest111197%_
                                                 _%tl111157111210%_))
                                            (_%K111152111187%_
                                             _%rest111197%_
                                             _%hd111195%_))))
                                    (let ((_%hd111195%_ _%hd111156111208%_)
                                          (_%rest111197%_ _%tl111157111210%_))
                                      (_%K111152111187%_
                                       _%rest111197%_
                                       _%hd111195%_))))
                              (_%else111150111169%_)))))))
                 (_%compile-post111042%_
                  (lambda (_%post111044%_ _%body111045%_)
                    (let _%lp111047%_ ((_%rest111049%_ _%post111044%_)
                                       (_%check111050%_ '())
                                       (_%bind111051%_ '()))
                      (let* ((_%rest111052111064%_ _%rest111049%_)
                             (_%else111054111072%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp112344
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind111051%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body111045%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx111038%_)
                                                    '())))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp112344
                                          _%check111050%_)))
                                 _%stx111038%_)))
                             (_%K111056111111%_
                              (lambda (_%rest111075%_
                                       _%init111076%_
                                       _%len111077%_
                                       _%tmp111078%_)
                                (_%lp111047%_
                                 _%rest111075%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp111078%_
                                                    (cons _%len111077%_ '())))
                                        _%stx111038%_)
                                       _%check111050%_)
                                 (let ((__tmp112345
                                        (lambda (_%hd111080%_ _%r111081%_)
                                          (let* ((_%hd111082111089%_
                                                  _%hd111080%_)
                                                 (_%E111084111093%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd111082111089%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K111085111099%_
                                                  (lambda (_%k111096%_
                                                           _%id111097%_)
                                                    (cons (cons _%id111097%_
                                                                (cons (cons '##vector-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp111078%_
                                          (cons _%k111096%_ '())))
                              '()))
                  _%r111081%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd111082111089%_))
                                                (let ((_%hd111086111102%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd111082111089%_)))
                                                      (_%tl111087111104%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd111082111089%_))))
                                                  (let* ((_%id111107%_
                                                          _%hd111086111102%_)
                                                         (_%k111109%_
                                                          _%tl111087111104%_))
                                                    (_%K111085111099%_
                                                     _%k111109%_
                                                     _%id111107%_)))
                                                (_%E111084111093%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp112345
                                    _%bind111051%_
                                    _%init111076%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest111052111064%_))
                            (let ((_%hd111057111114%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest111052111064%_)))
                                  (_%tl111058111116%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest111052111064%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd111057111114%_))
                                  (let ((_%hd111059111119%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd111057111114%_)))
                                        (_%tl111060111121%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd111057111114%_))))
                                    (let ((_%tmp111124%_ _%hd111059111119%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl111060111121%_))
                                          (let ((_%hd111061111126%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl111060111121%_)))
                                                (_%tl111062111128%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl111060111121%_))))
                                            (let* ((_%len111131%_
                                                    _%hd111061111126%_)
                                                   (_%init111133%_
                                                    _%tl111062111128%_)
                                                   (_%rest111135%_
                                                    _%tl111058111116%_))
                                              (_%K111056111111%_
                                               _%rest111135%_
                                               _%init111133%_
                                               _%len111131%_
                                               _%tmp111124%_)))
                                          (_%else111054111072%_))))
                                  (_%else111054111072%_)))
                            (_%else111054111072%_)))))))
          (__compile-let-form
           _%stx111038%_
           _%compile-simple111040%_
           _%compile-values111041%_))))
    (define __compile-letrec-values%
      (lambda (_%stx110835%_)
        (letrec ((_%compile-simple110837%_
                  (lambda (_%hd-ids111034%_ _%exprs111035%_ _%body111036%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp112346
                                        (map __compile-head-id
                                             _%hd-ids111034%_)))
                                   (declare (not safe))
                                   (##map list __tmp112346 _%exprs111035%_))
                                 (cons _%body111036%_ '())))
                     _%stx110835%_)))
                 (_%compile-values110838%_
                  (lambda (_%hd-ids110945%_ _%exprs110946%_ _%body110947%_)
                    (let _%lp110949%_ ((_%rest110951%_ _%hd-ids110945%_)
                                       (_%exprs110952%_ _%exprs110946%_)
                                       (_%pre110953%_ '())
                                       (_%bind110954%_ '())
                                       (_%post110955%_ '()))
                      (let* ((_%rest110956110970%_ _%rest110951%_)
                             (_%else110959110978%_
                              (lambda ()
                                (_%compile-inner110839%_
                                 _%pre110953%_
                                 _%bind110954%_
                                 _%post110955%_
                                 _%body110947%_))))
                        (let ((_%K110964111017%_
                               (lambda (_%rest111014%_ _%id111015%_)
                                 (_%lp110949%_
                                  _%rest111014%_
                                  (cdr _%exprs110952%_)
                                  _%pre110953%_
                                  (cons (cons (__compile-head-id _%id111015%_)
                                              (cons (car _%exprs110952%_) '()))
                                        _%bind110954%_)
                                  _%post110955%_)))
                              (_%K110961110999%_
                               (lambda (_%rest110982%_ _%hd110983%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd110983%_))
                                     (_%lp110949%_
                                      _%rest110982%_
                                      (cdr _%exprs110952%_)
                                      _%pre110953%_
                                      (cons (cons (__compile-head-id
                                                   _%hd110983%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs110952%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind110954%_)
                                      _%post110955%_)
                                     (if (list? _%hd110983%_)
                                         (let* ((_%len110987%_
                                                 (length _%hd110983%_))
                                                (_%tmp110989%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp110949%_
                                            _%rest110982%_
                                            (cdr _%exprs110952%_)
                                            (let ((__tmp112347
                                                   (lambda (_%id110992%_
                                                            _%r110993%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id110992%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id110992%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r110993%_)
                 _%r110993%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (__foldl1
                                               __tmp112347
                                               _%pre110953%_
                                               _%hd110983%_))
                                            (cons (cons _%tmp110989%_
                                                        (cons (car _%exprs110952%_)
                                                              '()))
                                                  _%bind110954%_)
                                            (cons (cons _%tmp110989%_
                                                        (cons _%len110987%_
                                                              (let ((__tmp112349
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id110995%_ _%k110996%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id110995%_))
                                   (cons (__SRC__0 _%id110995%_) _%k110996%_)
                                   '#f)))
                            (__tmp112348
                             (let ()
                               (declare (not safe))
                               (##iota _%len110987%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp112349 _%hd110983%_ __tmp112348))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post110955%_)))
                                         (__compile-error__%
                                          _%stx110835%_
                                          _%hd110983%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest110956110970%_))
                              (let ((_%tl110966111022%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest110956110970%_)))
                                    (_%hd110965111020%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest110956110970%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd110965111020%_))
                                    (let ((_%tl110968111027%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd110965111020%_)))
                                          (_%hd110967111025%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd110965111020%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl110968111027%_))
                                          (let ((_%id111030%_
                                                 _%hd110967111025%_)
                                                (_%rest111032%_
                                                 _%tl110966111022%_))
                                            (_%K110964111017%_
                                             _%rest111032%_
                                             _%id111030%_))
                                          (let ((_%hd111007%_
                                                 _%hd110965111020%_)
                                                (_%rest111009%_
                                                 _%tl110966111022%_))
                                            (_%K110961110999%_
                                             _%rest111009%_
                                             _%hd111007%_))))
                                    (let ((_%hd111007%_ _%hd110965111020%_)
                                          (_%rest111009%_ _%tl110966111022%_))
                                      (_%K110961110999%_
                                       _%rest111009%_
                                       _%hd111007%_))))
                              (_%else110959110978%_)))))))
                 (_%compile-inner110839%_
                  (lambda (_%pre110940%_
                           _%bind110941%_
                           _%post110942%_
                           _%body110943%_)
                    (if (null? _%pre110940%_)
                        (_%compile-bind110840%_
                         _%bind110941%_
                         _%post110942%_
                         _%body110943%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre110940%_)
                                     (cons (_%compile-bind110840%_
                                            _%bind110941%_
                                            _%post110942%_
                                            _%body110943%_)
                                           '())))
                         _%stx110835%_))))
                 (_%compile-bind110840%_
                  (lambda (_%bind110936%_ _%post110937%_ _%body110938%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind110936%_)
                                 (cons (_%compile-post110841%_
                                        _%post110937%_
                                        _%body110938%_)
                                       '())))
                     _%stx110835%_)))
                 (_%compile-post110841%_
                  (lambda (_%post110843%_ _%body110844%_)
                    (let _%lp110846%_ ((_%rest110848%_ _%post110843%_)
                                       (_%check110849%_ '())
                                       (_%bind110850%_ '()))
                      (let* ((_%rest110851110863%_ _%rest110848%_)
                             (_%else110853110871%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp112350
                                              (let ((__tmp112351
                                                     (cons _%body110844%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp112351
                                                 _%bind110850%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp112350
                                          _%check110849%_)))
                                 _%stx110835%_)))
                             (_%K110855110910%_
                              (lambda (_%rest110874%_
                                       _%init110875%_
                                       _%len110876%_
                                       _%tmp110877%_)
                                (_%lp110846%_
                                 _%rest110874%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp110877%_
                                                    (cons _%len110876%_ '())))
                                        _%stx110835%_)
                                       _%check110849%_)
                                 (let ((__tmp112352
                                        (lambda (_%hd110879%_ _%r110880%_)
                                          (let* ((_%hd110881110888%_
                                                  _%hd110879%_)
                                                 (_%E110883110892%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd110881110888%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K110884110898%_
                                                  (lambda (_%k110895%_
                                                           _%id110896%_)
                                                    (cons (cons 'set!
                                                                (cons _%id110896%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##vector-ref
                                          (cons _%tmp110877%_
                                                (cons _%k110895%_ '())))
                                    '())))
                  _%r110880%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd110881110888%_))
                                                (let ((_%hd110885110901%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd110881110888%_)))
                                                      (_%tl110886110903%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd110881110888%_))))
                                                  (let* ((_%id110906%_
                                                          _%hd110885110901%_)
                                                         (_%k110908%_
                                                          _%tl110886110903%_))
                                                    (_%K110884110898%_
                                                     _%k110908%_
                                                     _%id110906%_)))
                                                (_%E110883110892%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp112352
                                    _%bind110850%_
                                    _%init110875%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest110851110863%_))
                            (let ((_%hd110856110913%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest110851110863%_)))
                                  (_%tl110857110915%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest110851110863%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd110856110913%_))
                                  (let ((_%hd110858110918%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd110856110913%_)))
                                        (_%tl110859110920%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd110856110913%_))))
                                    (let ((_%tmp110923%_ _%hd110858110918%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl110859110920%_))
                                          (let ((_%hd110860110925%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl110859110920%_)))
                                                (_%tl110861110927%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl110859110920%_))))
                                            (let* ((_%len110930%_
                                                    _%hd110860110925%_)
                                                   (_%init110932%_
                                                    _%tl110861110927%_)
                                                   (_%rest110934%_
                                                    _%tl110857110915%_))
                                              (_%K110855110910%_
                                               _%rest110934%_
                                               _%init110932%_
                                               _%len110930%_
                                               _%tmp110923%_)))
                                          (_%else110853110871%_))))
                                  (_%else110853110871%_)))
                            (_%else110853110871%_)))))))
          (__compile-let-form
           _%stx110835%_
           _%compile-simple110837%_
           _%compile-values110838%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx110586%_)
        (letrec ((_%compile-simple110588%_
                  (lambda (_%hd-ids110831%_ _%exprs110832%_ _%body110833%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp112353
                                        (map __compile-head-id
                                             _%hd-ids110831%_)))
                                   (declare (not safe))
                                   (##map list __tmp112353 _%exprs110832%_))
                                 (cons _%body110833%_ '())))
                     _%stx110586%_)))
                 (_%compile-values110589%_
                  (lambda (_%hd-ids110738%_ _%exprs110739%_ _%body110740%_)
                    (let _%lp110742%_ ((_%rest110744%_ _%hd-ids110738%_)
                                       (_%exprs110745%_ _%exprs110739%_)
                                       (_%bind110746%_ '())
                                       (_%post110747%_ '()))
                      (let* ((_%rest110748110762%_ _%rest110744%_)
                             (_%else110751110770%_
                              (lambda ()
                                (_%compile-bind110590%_
                                 _%bind110746%_
                                 _%post110747%_
                                 _%body110740%_))))
                        (let ((_%K110756110814%_
                               (lambda (_%rest110809%_ _%hd110810%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd110810%_))
                                     (let ((_%id110812%_
                                            (__SRC__0 _%hd110810%_)))
                                       (_%lp110742%_
                                        _%rest110809%_
                                        (cdr _%exprs110745%_)
                                        (cons (cons _%id110812%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind110746%_)
                                        (cons (cons _%id110812%_
                                                    (cons (car _%exprs110745%_)
                                                          '()))
                                              _%post110747%_)))
                                     (_%lp110742%_
                                      _%rest110809%_
                                      (cdr _%exprs110745%_)
                                      _%bind110746%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs110745%_)
                                                        '()))
                                            _%post110747%_)))))
                              (_%K110753110794%_
                               (lambda (_%rest110774%_ _%hd110775%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd110775%_))
                                     (let ((_%id110778%_
                                            (__SRC__0 _%hd110775%_)))
                                       (_%lp110742%_
                                        _%rest110774%_
                                        (cdr _%exprs110745%_)
                                        (cons (cons _%id110778%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind110746%_)
                                        (cons (cons _%id110778%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs110745%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post110747%_)))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (__AST-e _%hd110775%_)))
                                         (_%lp110742%_
                                          _%rest110774%_
                                          (cdr _%exprs110745%_)
                                          _%bind110746%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs110745%_)
                                                            '()))
                                                _%post110747%_))
                                         (if (list? _%hd110775%_)
                                             (let* ((_%len110782%_
                                                     (length _%hd110775%_))
                                                    (_%tmp110784%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp110742%_
                                                _%rest110774%_
                                                (cdr _%exprs110745%_)
                                                (let ((__tmp112354
                                                       (lambda (_%id110787%_
                                                                _%r110788%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id110787%_))
                     (cons (cons (__SRC__0 _%id110787%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r110788%_)
                     _%r110788%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldl1
                                                   __tmp112354
                                                   _%bind110746%_
                                                   _%hd110775%_))
                                                (cons (cons _%tmp110784%_
                                                            (cons (car _%exprs110745%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len110782%_
                                (let ((__tmp112356
                                       (lambda (_%id110790%_ _%k110791%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id110790%_))
                                             (cons (__SRC__0 _%id110790%_)
                                                   _%k110791%_)
                                             '#f)))
                                      (__tmp112355
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len110782%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp112356
                                   _%hd110775%_
                                   __tmp112355)))))
              _%post110747%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx110586%_
                                              _%hd110775%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest110748110762%_))
                              (let ((_%tl110758110819%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest110748110762%_)))
                                    (_%hd110757110817%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest110748110762%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd110757110817%_))
                                    (let ((_%tl110760110824%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd110757110817%_)))
                                          (_%hd110759110822%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd110757110817%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl110760110824%_))
                                          (let ((_%hd110827%_
                                                 _%hd110759110822%_)
                                                (_%rest110829%_
                                                 _%tl110758110819%_))
                                            (_%K110756110814%_
                                             _%rest110829%_
                                             _%hd110827%_))
                                          (let ((_%hd110802%_
                                                 _%hd110757110817%_)
                                                (_%rest110804%_
                                                 _%tl110758110819%_))
                                            (_%K110753110794%_
                                             _%rest110804%_
                                             _%hd110802%_))))
                                    (let ((_%hd110802%_ _%hd110757110817%_)
                                          (_%rest110804%_ _%tl110758110819%_))
                                      (_%K110753110794%_
                                       _%rest110804%_
                                       _%hd110802%_))))
                              (_%else110751110770%_)))))))
                 (_%compile-bind110590%_
                  (lambda (_%bind110734%_ _%post110735%_ _%body110736%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind110734%_)
                                 (cons (_%compile-post110591%_
                                        _%post110735%_
                                        _%body110736%_)
                                       '())))
                     _%stx110586%_)))
                 (_%compile-post110591%_
                  (lambda (_%post110593%_ _%body110594%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp112357
                                  (let ((__tmp112359
                                         (lambda (_%hd110596%_ _%r110597%_)
                                           (let* ((_%hd110598110621%_
                                                   _%hd110596%_)
                                                  (_%E110602110625%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd110598110621%_
                                                              '([#f expr])
                                                              '([id expr])
                                                              '([tmp
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         expr
                         len
                         .
                         init])))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K110615110719%_
                                                    (lambda (_%expr110717%_)
                                                      (cons _%expr110717%_
                                                            _%r110597%_)))
                                                   (_%K110610110697%_
                                                    (lambda (_%expr110694%_
                                                             _%id110695%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id110695%_ (cons _%expr110694%_ '())))
                     _%stx110586%_)
                    _%r110597%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K110603110664%_
                                                    (lambda (_%init110629%_
                                                             _%len110630%_
                                                             _%expr110631%_
                                                             _%tmp110632%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp110632%_
                                             (cons _%expr110631%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp110632%_
                                                    (cons _%len110630%_ '())))
                                        _%stx110586%_)
                                       (let ((__tmp112360
                                              (map (lambda (_%hd110634%_)
                                                     (let* ((_%hd110635110642%_
                                                             _%hd110634%_)
                                                            (_%E110637110646%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd110635110642%_
                                '([id . k])))
                       '#!void))
                    (_%K110638110652%_
                     (lambda (_%k110649%_ _%id110650%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id110650%_
                                    (cons (cons '##vector-ref
                                                (cons _%tmp110632%_
                                                      (cons _%k110649%_ '())))
                                          '())))
                        _%stx110586%_))))
               (if (let () (declare (not safe)) (##pair? _%hd110635110642%_))
                   (let ((_%hd110639110655%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd110635110642%_)))
                         (_%tl110640110657%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd110635110642%_))))
                     (let* ((_%id110660%_ _%hd110639110655%_)
                            (_%k110662%_ _%tl110640110657%_))
                       (_%K110638110652%_ _%k110662%_ _%id110660%_)))
                   (_%E110637110646%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init110629%_)))
                                         (declare (not safe))
                                         (__foldr1 cons '() __tmp112360)))))
                     _%stx110586%_)
                    _%r110597%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match112213112214%_
                                                       (lambda (_%hd110604110667%_
                                                                _%tl110605110669%_
                                                                _%hd110606110674%_
                                                                _%tl110607110676%_)
                                                         (let ((_%tmp110672%_
                                                                _%hd110604110667%_)
                                                               (_%expr110679%_
                                                                _%hd110606110674%_))
                                                           (_%E110602110625%_))))
                                                      (_%__match112207112208%_
                                                       (lambda (_%hd110604110667%_
                                                                _%tl110605110669%_)
                                                         (let ((_%tmp110672%_
                                                                _%hd110604110667%_))
                                                           (_%E110602110625%_)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##pair? _%hd110598110621%_))
                                                     (let ((_%tl110617110724%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd110598110621%_)))
                                                           (_%hd110616110722%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd110598110621%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd110616110722%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _%tl110617110724%_))
                       (let ((_%tl110619110729%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl110617110724%_)))
                             (_%hd110618110727%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl110617110724%_))))
                         (if (let ()
                               (declare (not safe))
                               (##null? _%tl110619110729%_))
                             (let ((_%expr110732%_ _%hd110618110727%_))
                               (_%K110615110719%_ _%expr110732%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%tl110619110729%_))
                                 (let ((_%tl110609110683%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl110619110729%_)))
                                       (_%hd110608110681%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl110619110729%_))))
                                   (let ((_%tmp110672%_ _%hd110616110722%_)
                                         (_%expr110679%_ _%hd110618110727%_)
                                         (_%len110686%_ _%hd110608110681%_)
                                         (_%init110688%_ _%tl110609110683%_))
                                     (_%K110603110664%_
                                      _%init110688%_
                                      _%len110686%_
                                      _%expr110679%_
                                      _%tmp110672%_)))
                                 (_%__match112213112214%_
                                  _%hd110616110722%_
                                  _%tl110617110724%_
                                  _%hd110618110727%_
                                  _%tl110619110729%_))))
                       (_%__match112207112208%_
                        _%hd110616110722%_
                        _%tl110617110724%_))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _%tl110617110724%_))
                       (let ((_%tl110614110709%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl110617110724%_)))
                             (_%hd110613110707%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl110617110724%_))))
                         (if (let ()
                               (declare (not safe))
                               (##null? _%tl110614110709%_))
                             (let ((_%id110705%_ _%hd110616110722%_)
                                   (_%expr110712%_ _%hd110613110707%_))
                               (_%K110610110697%_ _%expr110712%_ _%id110705%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%tl110614110709%_))
                                 (let ((_%tl110609110683%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl110614110709%_)))
                                       (_%hd110608110681%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl110614110709%_))))
                                   (let ((_%tmp110672%_ _%hd110616110722%_)
                                         (_%expr110679%_ _%hd110613110707%_)
                                         (_%len110686%_ _%hd110608110681%_)
                                         (_%init110688%_ _%tl110609110683%_))
                                     (_%K110603110664%_
                                      _%init110688%_
                                      _%len110686%_
                                      _%expr110679%_
                                      _%tmp110672%_)))
                                 (_%__match112213112214%_
                                  _%hd110616110722%_
                                  _%tl110617110724%_
                                  _%hd110613110707%_
                                  _%tl110614110709%_))))
                       (_%__match112207112208%_
                        _%hd110616110722%_
                        _%tl110617110724%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E110602110625%_)))))))
                                        (__tmp112358 (list _%body110594%_)))
                                    (declare (not safe))
                                    (__foldl1
                                     __tmp112359
                                     __tmp112358
                                     _%post110593%_))))
                             (declare (not safe))
                             (__foldr1 cons '() __tmp112357)))
                     _%stx110586%_))))
          (__compile-let-form
           _%stx110586%_
           _%compile-simple110588%_
           _%compile-values110589%_))))
    (define __compile-call%
      (lambda (_%stx110546%_)
        (let* ((_%$e110548%_ _%stx110546%_)
               (_%$E110550110559%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110548%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110548%_))
              (let* ((_%$tgt110551110562%_
                      (let () (declare (not safe)) (__AST-e _%$e110548%_)))
                     (_%$hd110552110565%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110551110562%_)))
                     (_%$tl110553110568%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110551110562%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl110553110568%_))
                    (let* ((_%$tgt110554110572%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl110553110568%_)))
                           (_%$hd110555110575%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt110554110572%_)))
                           (_%$tl110556110578%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt110554110572%_)))
                           (_%rator110582%_ _%$hd110555110575%_)
                           (_%rands110584%_ _%$tl110556110578%_))
                      (__SRC__%
                       (cons (__compile _%rator110582%_)
                             (map __compile _%rands110584%_))
                       _%stx110546%_))
                    (_%$E110550110559%_)))
              (_%$E110550110559%_)))))
    (define __compile-ref%
      (lambda (_%stx110508%_)
        (let* ((_%$e110510%_ _%stx110508%_)
               (_%$E110512110521%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110510%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110510%_))
              (let* ((_%$tgt110513110524%_
                      (let () (declare (not safe)) (__AST-e _%$e110510%_)))
                     (_%$hd110514110527%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110513110524%_)))
                     (_%$tl110515110530%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110513110524%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl110515110530%_))
                    (let* ((_%$tgt110516110534%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl110515110530%_)))
                           (_%$hd110517110537%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt110516110534%_)))
                           (_%$tl110518110540%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt110516110534%_)))
                           (_%id110544%_ _%$hd110517110537%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl110518110540%_))
                                  '())
                          (__SRC__% _%id110544%_ _%stx110508%_)
                          (_%$E110512110521%_)))
                    (_%$E110512110521%_)))
              (_%$E110512110521%_)))))
    (define __compile-setq%
      (lambda (_%stx110455%_)
        (let* ((_%$e110457%_ _%stx110455%_)
               (_%$E110459110471%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110457%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110457%_))
              (let* ((_%$tgt110460110474%_
                      (let () (declare (not safe)) (__AST-e _%$e110457%_)))
                     (_%$hd110461110477%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110460110474%_)))
                     (_%$tl110462110480%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110460110474%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl110462110480%_))
                    (let* ((_%$tgt110463110484%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl110462110480%_)))
                           (_%$hd110464110487%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt110463110484%_)))
                           (_%$tl110465110490%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt110463110484%_)))
                           (_%id110494%_ _%$hd110464110487%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl110465110490%_))
                          (let* ((_%$tgt110466110496%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl110465110490%_)))
                                 (_%$hd110467110499%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110466110496%_)))
                                 (_%$tl110468110502%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110466110496%_)))
                                 (_%expr110506%_ _%$hd110467110499%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl110468110502%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id110494%_
                                              _%stx110455%_)
                                             (cons (__compile _%expr110506%_)
                                                   '())))
                                 _%stx110455%_)
                                (_%$E110459110471%_)))
                          (_%$E110459110471%_)))
                    (_%$E110459110471%_)))
              (_%$E110459110471%_)))))
    (define __compile-if%
      (lambda (_%stx110387%_)
        (let* ((_%$e110389%_ _%stx110387%_)
               (_%$E110391110406%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110389%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110389%_))
              (let* ((_%$tgt110392110409%_
                      (let () (declare (not safe)) (__AST-e _%$e110389%_)))
                     (_%$hd110393110412%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110392110409%_)))
                     (_%$tl110394110415%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110392110409%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl110394110415%_))
                    (let* ((_%$tgt110395110419%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl110394110415%_)))
                           (_%$hd110396110422%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt110395110419%_)))
                           (_%$tl110397110425%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt110395110419%_)))
                           (_%p110429%_ _%$hd110396110422%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl110397110425%_))
                          (let* ((_%$tgt110398110431%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl110397110425%_)))
                                 (_%$hd110399110434%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110398110431%_)))
                                 (_%$tl110400110437%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110398110431%_)))
                                 (_%t110441%_ _%$hd110399110434%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl110400110437%_))
                                (let* ((_%$tgt110401110443%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl110400110437%_)))
                                       (_%$hd110402110446%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt110401110443%_)))
                                       (_%$tl110403110449%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt110401110443%_)))
                                       (_%f110453%_ _%$hd110402110446%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl110403110449%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p110429%_)
                                                   (cons (__compile
                                                          _%t110441%_)
                                                         (cons (__compile
                                                                _%f110453%_)
                                                               '()))))
                                       _%stx110387%_)
                                      (_%$E110391110406%_)))
                                (_%$E110391110406%_)))
                          (_%$E110391110406%_)))
                    (_%$E110391110406%_)))
              (_%$E110391110406%_)))))
    (define __compile-quote%
      (lambda (_%stx110349%_)
        (let* ((_%$e110351%_ _%stx110349%_)
               (_%$E110353110362%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110351%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110351%_))
              (let* ((_%$tgt110354110365%_
                      (let () (declare (not safe)) (__AST-e _%$e110351%_)))
                     (_%$hd110355110368%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110354110365%_)))
                     (_%$tl110356110371%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110354110365%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl110356110371%_))
                    (let* ((_%$tgt110357110375%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl110356110371%_)))
                           (_%$hd110358110378%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt110357110375%_)))
                           (_%$tl110359110381%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt110357110375%_)))
                           (_%e110385%_ _%$hd110358110378%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl110359110381%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e110385%_))
                                       '()))
                           _%stx110349%_)
                          (_%$E110353110362%_)))
                    (_%$E110353110362%_)))
              (_%$E110353110362%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx110311%_)
        (let* ((_%$e110313%_ _%stx110311%_)
               (_%$E110315110324%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110313%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110313%_))
              (let* ((_%$tgt110316110327%_
                      (let () (declare (not safe)) (__AST-e _%$e110313%_)))
                     (_%$hd110317110330%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110316110327%_)))
                     (_%$tl110318110333%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110316110327%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl110318110333%_))
                    (let* ((_%$tgt110319110337%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl110318110333%_)))
                           (_%$hd110320110340%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt110319110337%_)))
                           (_%$tl110321110343%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt110319110337%_)))
                           (_%e110347%_ _%$hd110320110340%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl110321110343%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e110347%_ '()))
                           _%stx110311%_)
                          (_%$E110315110324%_)))
                    (_%$E110315110324%_)))
              (_%$E110315110324%_)))))
    (__core-bind-syntax!__% '%#begin __compile-begin% make-__core-special-form)
    (__core-bind-syntax!__%
     '%#begin-syntax
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#begin-foreign
     __compile-begin-foreign%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#module
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#import
     __compile-import%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#export
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#provide
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#define-values
     __compile-define-values%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#define-syntax
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#define-alias
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#define-runtime
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#extern
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#declare
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#begin-annotation
     __compile-begin-annotation%
     make-__core-expression)
    (__core-bind-syntax!__% '%#quote __compile-quote% make-__core-expression)
    (__core-bind-syntax!__%
     '%#quote-syntax
     __compile-quote-syntax%
     make-__core-expression)
    (__core-bind-syntax!__% '%#lambda __compile-lambda% make-__core-expression)
    (__core-bind-syntax!__%
     '%#case-lambda
     __compile-case-lambda%
     make-__core-expression)
    (__core-bind-syntax!__%
     '%#let-values
     __compile-let-values%
     make-__core-expression)
    (__core-bind-syntax!__%
     '%#letrec-values
     __compile-letrec-values%
     make-__core-expression)
    (__core-bind-syntax!__%
     '%#letrec*-values
     __compile-letrec*-values%
     make-__core-expression)
    (__core-bind-syntax!__% '%#call __compile-call% make-__core-expression)
    (__core-bind-syntax!__% '%#if __compile-if% make-__core-expression)
    (__core-bind-syntax!__% '%#ref __compile-ref% make-__core-expression)
    (__core-bind-syntax!__% '%#set! __compile-setq% make-__core-expression)
    (__core-bind-syntax!__% '%#cond-expand __compile-error make-__core-form)
    (__core-bind-syntax!__% '%#include __compile-error make-__core-form)
    (__core-bind-syntax!__% '%#let-syntax __compile-error make-__core-form)
    (__core-bind-syntax!__%
     '%#letrec-syntax
     __compile-error
     make-__core-form)))

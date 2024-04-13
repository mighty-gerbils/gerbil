(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1713000277)
  (begin
    (define __syntax::t
      (let ((__tmp114406 (list)) (__tmp114405 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp114406
         '(e id)
         __tmp114405
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args114210%_
        (apply make-instance __syntax::t _%$args114210%_)))
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
      (let ((__tmp114408 (list __syntax::t))
            (__tmp114407 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp114408
         '()
         __tmp114407
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args114207%_
        (apply make-instance __core-form::t _%$args114207%_)))
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
      (let ((__tmp114410 (list __core-form::t))
            (__tmp114409 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp114410
         '()
         __tmp114409
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args114204%_
        (apply make-instance __core-expression::t _%$args114204%_)))
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
      (let ((__tmp114412 (list __core-form::t))
            (__tmp114411 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp114412
         '()
         __tmp114411
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args114201%_
        (apply make-instance __core-special-form::t _%$args114201%_)))
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
      (lambda (_%id114199%_)
        (let ((__tmp114413
               (let () (declare (not safe)) (__AST-e _%id114199%_))))
          (declare (not safe))
          (__hash-get __core __tmp114413))))
    (define __core-bound-id?__%
      (lambda (_%id114182%_ _%is?114183%_)
        (let ((_%$e114185%_ (__core-resolve _%id114182%_)))
          (if _%$e114185%_ (_%is?114183%_ _%$e114185%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id114192%_)
        (let ((_%is?114194%_ true))
          (__core-bound-id?__% _%id114192%_ _%is?114194%_))))
    (define __core-bound-id?
      (lambda _g114415_
        (let ((_g114414_ (let () (declare (not safe)) (##length _g114415_))))
          (cond ((let () (declare (not safe)) (##fx= _g114414_ 1))
                 (apply __core-bound-id?__0 _g114415_))
                ((let () (declare (not safe)) (##fx= _g114414_ 2))
                 (apply __core-bound-id?__% _g114415_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g114415_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id114165%_ _%e114166%_ _%make114167%_)
        (let ((__tmp114416
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e114166%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e114166%_
                   (_%make114167%_ _%e114166%_ _%id114165%_))))
          (declare (not safe))
          (__hash-put! __core _%id114165%_ __tmp114416))))
    (define __core-bind-syntax!__0
      (lambda (_%id114172%_ _%e114173%_)
        (let ((_%make114175%_ make-__syntax))
          (__core-bind-syntax!__% _%id114172%_ _%e114173%_ _%make114175%_))))
    (define __core-bind-syntax!
      (lambda _g114418_
        (let ((_g114417_ (let () (declare (not safe)) (##length _g114418_))))
          (cond ((let () (declare (not safe)) (##fx= _g114417_ 2))
                 (apply __core-bind-syntax!__0 _g114418_))
                ((let () (declare (not safe)) (##fx= _g114417_ 3))
                 (apply __core-bind-syntax!__% _g114418_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g114418_))))))
    (define __SRC__%
      (lambda (_%e114145%_ _%src-stx114146%_)
        (if (or (pair? _%e114145%_) (symbol? _%e114145%_))
            (let ((__tmp114419
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx114146%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx114146%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e114145%_ __tmp114419))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e114145%_ 'gerbil#AST::t))
                (let ((__tmp114421
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e114145%_ '1 '#f '#f)))
                      (__tmp114420
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e114145%_)))))
                  (declare (not safe))
                  (##make-source __tmp114421 __tmp114420))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e114145%_))))))
    (define __SRC__0
      (lambda (_%e114157%_)
        (let ((_%src-stx114159%_ '#f))
          (__SRC__% _%e114157%_ _%src-stx114159%_))))
    (define __SRC
      (lambda _g114423_
        (let ((_g114422_ (let () (declare (not safe)) (##length _g114423_))))
          (cond ((let () (declare (not safe)) (##fx= _g114422_ 1))
                 (apply __SRC__0 _g114423_))
                ((let () (declare (not safe)) (##fx= _g114422_ 2))
                 (apply __SRC__% _g114423_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g114423_))))))
    (define __locat
      (lambda (_%loc114142%_)
        (if (let () (declare (not safe)) (##locat? _%loc114142%_))
            _%loc114142%_
            '#f)))
    (define __check-values
      (lambda (_%obj114137%_ _%k114138%_)
        (let ((_%count114140%_
               (if (let () (declare (not safe)) (##values? _%obj114137%_))
                   (let ()
                     (declare (not safe))
                     (##vector-length _%obj114137%_))
                   '1)))
          (if (fx= _%count114140%_ _%k114138%_)
              '#!void
              (let ((__tmp114425
                     (if (fx< _%count114140%_ _%k114138%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp114424
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj114137%_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _%obj114137%_))
                         _%obj114137%_)))
                (declare (not safe))
                (error __tmp114425 __tmp114424 _%k114138%_))))))
    (define __compile
      (lambda (_%stx114106%_)
        (let* ((_%$e114108%_ _%stx114106%_)
               (_%$E114110114116%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114108%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114108%_))
              (let* ((_%$tgt114111114119%_
                      (let () (declare (not safe)) (__AST-e _%$e114108%_)))
                     (_%$hd114112114122%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114111114119%_)))
                     (_%$tl114113114125%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114111114119%_)))
                     (_%form114129%_ _%$hd114112114122%_)
                     (_%$e114131%_ (__core-resolve _%form114129%_)))
                (if _%$e114131%_
                    ((lambda (_%bind114134%_)
                       ((##structure-ref _%bind114134%_ '1 __syntax::t '#f)
                        _%stx114106%_))
                     _%$e114131%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx114106%_
                       _%form114129%_))))
              (_%$E114110114116%_)))))
    (define __compile-error__%
      (lambda (_%stx114093%_ _%detail114094%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx114093%_
           _%detail114094%_))))
    (define __compile-error__0
      (lambda (_%stx114099%_)
        (let ((_%detail114101%_ '#f))
          (__compile-error__% _%stx114099%_ _%detail114101%_))))
    (define __compile-error
      (lambda _g114427_
        (let ((_g114426_ (let () (declare (not safe)) (##length _g114427_))))
          (cond ((let () (declare (not safe)) (##fx= _g114426_ 1))
                 (apply __compile-error__0 _g114427_))
                ((let () (declare (not safe)) (##fx= _g114426_ 2))
                 (apply __compile-error__% _g114427_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g114427_))))))
    (define __compile-ignore%
      (lambda (_%stx114090%_) (__SRC__% ''#!void _%stx114090%_)))
    (define __compile-begin%
      (lambda (_%stx114065%_)
        (let* ((_%$e114067%_ _%stx114065%_)
               (_%$E114069114075%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114067%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114067%_))
              (let* ((_%$tgt114070114078%_
                      (let () (declare (not safe)) (__AST-e _%$e114067%_)))
                     (_%$hd114071114081%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114070114078%_)))
                     (_%$tl114072114084%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114070114078%_)))
                     (_%body114088%_ _%$tl114072114084%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body114088%_))
                 _%stx114065%_))
              (_%$E114069114075%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx114040%_)
        (let* ((_%$e114042%_ _%stx114040%_)
               (_%$E114044114050%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114042%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114042%_))
              (let* ((_%$tgt114045114053%_
                      (let () (declare (not safe)) (__AST-e _%$e114042%_)))
                     (_%$hd114046114056%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114045114053%_)))
                     (_%$tl114047114059%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114045114053%_)))
                     (_%body114063%_ _%$tl114047114059%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body114063%_)))
                 _%stx114040%_))
              (_%$E114044114050%_)))))
    (define __compile-import%
      (lambda (_%stx114015%_)
        (let* ((_%$e114017%_ _%stx114015%_)
               (_%$E114019114025%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114017%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114017%_))
              (let* ((_%$tgt114020114028%_
                      (let () (declare (not safe)) (__AST-e _%$e114017%_)))
                     (_%$hd114021114031%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114020114028%_)))
                     (_%$tl114022114034%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114020114028%_)))
                     (_%body114038%_ _%$tl114022114034%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body114038%_ '())) '()))
                 _%stx114015%_))
              (_%$E114019114025%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx113962%_)
        (let* ((_%$e113964%_ _%stx113962%_)
               (_%$E113966113978%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113964%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113964%_))
              (let* ((_%$tgt113967113981%_
                      (let () (declare (not safe)) (__AST-e _%$e113964%_)))
                     (_%$hd113968113984%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt113967113981%_)))
                     (_%$tl113969113987%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt113967113981%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl113969113987%_))
                    (let* ((_%$tgt113970113991%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl113969113987%_)))
                           (_%$hd113971113994%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt113970113991%_)))
                           (_%$tl113972113997%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt113970113991%_)))
                           (_%ann114001%_ _%$hd113971113994%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl113972113997%_))
                          (let* ((_%$tgt113973114003%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl113972113997%_)))
                                 (_%$hd113974114006%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt113973114003%_)))
                                 (_%$tl113975114009%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt113973114003%_)))
                                 (_%expr114013%_ _%$hd113974114006%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl113975114009%_))
                                        '())
                                (__compile _%expr114013%_)
                                (_%$E113966113978%_)))
                          (_%$E113966113978%_)))
                    (_%$E113966113978%_)))
              (_%$E113966113978%_)))))
    (define __compile-define-values%
      (lambda (_%stx113853%_)
        (let* ((_%$e113855%_ _%stx113853%_)
               (_%$E113857113869%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113855%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113855%_))
              (let* ((_%$tgt113858113872%_
                      (let () (declare (not safe)) (__AST-e _%$e113855%_)))
                     (_%$hd113859113875%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt113858113872%_)))
                     (_%$tl113860113878%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt113858113872%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl113860113878%_))
                    (let* ((_%$tgt113861113882%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl113860113878%_)))
                           (_%$hd113862113885%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt113861113882%_)))
                           (_%$tl113863113888%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt113861113882%_)))
                           (_%hd113892%_ _%$hd113862113885%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl113863113888%_))
                          (let* ((_%$tgt113864113894%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl113863113888%_)))
                                 (_%$hd113865113897%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt113864113894%_)))
                                 (_%$tl113866113900%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt113864113894%_)))
                                 (_%expr113904%_ _%$hd113865113897%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl113866113900%_))
                                        '())
                                (let* ((_%$e113906%_ _%hd113892%_)
                                       (_%$E113908113949%_
                                        (lambda ()
                                          (let ((_%$E113909113934%_
                                                 (lambda ()
                                                   (let* ((_%$E113910113921%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e113906%_))))
                  (_%ids113924%_ _%hd113892%_)
                  (_%len113926%_ (length _%ids113924%_))
                  (_%tmp113928%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp113928%_
                                       (cons (__compile _%expr113904%_) '())))
                           _%stx113853%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp113928%_
                                             (cons _%len113926%_ '())))
                                 _%stx113853%_)
                                (let ((__tmp114428
                                       (let ((__tmp114430
                                              (lambda (_%id113931%_
                                                       _%k113932%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id113931%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id113931%_)
                         (cons (cons '##vector-ref
                                     (cons _%tmp113928%_
                                           (cons _%k113932%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx113853%_)
                                                    '#f)))
                                             (__tmp114429
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len113926%_))))
                                         (declare (not safe))
                                         (__filter-map2
                                          __tmp114430
                                          _%ids113924%_
                                          __tmp114429))))
                                  (declare (not safe))
                                  (__foldr1 cons '() __tmp114428)))))
              _%stx113853%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e113906%_))
                                                (let* ((_%$tgt113911113937%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e113906%_)))
                                                       (_%$hd113912113940%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt113911113937%_)))
                                                       (_%$tl113913113943%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt113911113937%_)))
                                                       (_%id113947%_
                                                        _%$hd113912113940%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl113913113943%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id113947%_)
                           (cons (__compile _%expr113904%_) '())))
               _%stx113853%_)
              (_%$E113909113934%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E113909113934%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e113906%_))
                                      (let* ((_%$tgt113914113952%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e113906%_)))
                                             (_%$hd113915113955%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt113914113952%_)))
                                             (_%$tl113916113958%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt113914113952%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd113915113955%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl113916113958%_))
                                                        '())
                                                (__compile _%expr113904%_)
                                                (_%$E113908113949%_))
                                            (_%$E113908113949%_)))
                                      (_%$E113908113949%_)))
                                (_%$E113857113869%_)))
                          (_%$E113857113869%_)))
                    (_%$E113857113869%_)))
              (_%$E113857113869%_)))))
    (define __compile-head-id
      (lambda (_%e113851%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e113851%_))
             _%e113851%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd113808%_)
        (let _%recur113810%_ ((_%rest113812%_ _%hd113808%_))
          (let* ((_%$e113814%_ _%rest113812%_)
                 (_%$E113816113834%_
                  (lambda ()
                    (let ((_%$E113817113831%_
                           (lambda ()
                             (let* ((_%$E113818113826%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e113814%_))))
                                    (_%tail113829%_ _%$e113814%_))
                               (__compile-head-id _%tail113829%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e113814%_))
                                  '())
                          '()
                          (_%$E113817113831%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e113814%_))
                (let* ((_%$tgt113819113837%_
                        (let () (declare (not safe)) (__AST-e _%$e113814%_)))
                       (_%$hd113820113840%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt113819113837%_)))
                       (_%$tl113821113843%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt113819113837%_)))
                       (_%hd113847%_ _%$hd113820113840%_)
                       (_%rest113849%_ _%$tl113821113843%_))
                  (cons (__compile-head-id _%hd113847%_)
                        (_%recur113810%_ _%rest113849%_)))
                (_%$E113816113834%_))))))
    (define __compile-lambda%
      (lambda (_%stx113755%_)
        (let* ((_%$e113757%_ _%stx113755%_)
               (_%$E113759113771%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113757%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113757%_))
              (let* ((_%$tgt113760113774%_
                      (let () (declare (not safe)) (__AST-e _%$e113757%_)))
                     (_%$hd113761113777%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt113760113774%_)))
                     (_%$tl113762113780%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt113760113774%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl113762113780%_))
                    (let* ((_%$tgt113763113784%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl113762113780%_)))
                           (_%$hd113764113787%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt113763113784%_)))
                           (_%$tl113765113790%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt113763113784%_)))
                           (_%hd113794%_ _%$hd113764113787%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl113765113790%_))
                          (let* ((_%$tgt113766113796%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl113765113790%_)))
                                 (_%$hd113767113799%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt113766113796%_)))
                                 (_%$tl113768113802%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt113766113796%_)))
                                 (_%body113806%_ _%$hd113767113799%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl113768113802%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd113794%_)
                                             (cons (__compile _%body113806%_)
                                                   '())))
                                 _%stx113755%_)
                                (_%$E113759113771%_)))
                          (_%$E113759113771%_)))
                    (_%$E113759113771%_)))
              (_%$E113759113771%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx113547%_)
        (letrec ((_%variadic?113549%_
                  (lambda (_%hd113720%_)
                    (let* ((_%$e113722%_ _%hd113720%_)
                           (_%$E113724113740%_
                            (lambda ()
                              (let ((_%$E113725113737%_
                                     (lambda ()
                                       (let ((_%$E113726113734%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e113722%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e113722%_))
                                            '())
                                    '#f
                                    (_%$E113725113737%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e113722%_))
                          (let* ((_%$tgt113727113743%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e113722%_)))
                                 (_%$hd113728113746%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt113727113743%_)))
                                 (_%$tl113729113749%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt113727113743%_)))
                                 (_%rest113753%_ _%$tl113729113749%_))
                            (_%variadic?113549%_ _%rest113753%_))
                          (_%$E113724113740%_)))))
                 (_%arity113550%_
                  (lambda (_%hd113685%_)
                    (let _%lp113687%_ ((_%rest113689%_ _%hd113685%_)
                                       (_%k113690%_ '0))
                      (let* ((_%$e113692%_ _%rest113689%_)
                             (_%$E113694113705%_
                              (lambda ()
                                (let ((_%$E113695113702%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e113692%_)))))
                                  _%k113690%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e113692%_))
                            (let* ((_%$tgt113696113708%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e113692%_)))
                                   (_%$hd113697113711%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt113696113708%_)))
                                   (_%$tl113698113714%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt113696113708%_)))
                                   (_%rest113718%_ _%$tl113698113714%_))
                              (_%lp113687%_
                               _%rest113718%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%k113690%_ '1))))
                            (_%$E113694113705%_))))))
                 (_%generate113551%_
                  (lambda (_%rest113612%_ _%args113613%_ _%len113614%_)
                    (let* ((_%$e113616%_ _%rest113612%_)
                           (_%$E113618113629%_
                            (lambda ()
                              (let ((_%$E113619113626%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e113616%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args113613%_ '())))
                                 _%stx113547%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e113616%_))
                          (let* ((_%$tgt113620113632%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e113616%_)))
                                 (_%$hd113621113635%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt113620113632%_)))
                                 (_%$tl113622113638%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt113620113632%_)))
                                 (_%clause113642%_ _%$hd113621113635%_)
                                 (_%rest113644%_ _%$tl113622113638%_)
                                 (_%$e113646%_ _%clause113642%_)
                                 (_%$E113648113657%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e113646%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e113646%_))
                                (let* ((_%$tgt113649113660%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e113646%_)))
                                       (_%$hd113650113663%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt113649113660%_)))
                                       (_%$tl113651113666%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt113649113660%_)))
                                       (_%hd113670%_ _%$hd113650113663%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl113651113666%_))
                                      (let* ((_%$tgt113652113672%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl113651113666%_)))
                                             (_%$hd113653113675%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt113652113672%_)))
                                             (_%$tl113654113678%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt113652113672%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl113654113678%_))
                                                    '())
                                            (let ((_%clen113682%_
                                                   (_%arity113550%_
                                                    _%hd113670%_))
                                                  (_%cmp113683%_
                                                   (if (_%variadic?113549%_
                                                        _%hd113670%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp113683%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len113614%_ (cons _%clen113682%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause113642%_))
                                      (cons _%args113613%_ '())))
                          _%stx113547%_)
                         (cons (_%generate113551%_
                                _%rest113644%_
                                _%args113613%_
                                _%len113614%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx113547%_))
                                            (_%$E113648113657%_)))
                                      (_%$E113648113657%_)))
                                (_%$E113648113657%_)))
                          (_%$E113618113629%_))))))
          (let* ((_%$e113553%_ _%stx113547%_)
                 (_%$E113555113587%_
                  (lambda ()
                    (let ((_%$E113556113569%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e113553%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e113553%_))
                          (let* ((_%$tgt113557113572%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e113553%_)))
                                 (_%$hd113558113575%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt113557113572%_)))
                                 (_%$tl113559113578%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt113557113572%_)))
                                 (_%clauses113582%_ _%$tl113559113578%_))
                            (let ((_%args113584%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx113547%_))
                                  (_%len113585%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx113547%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args113584%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len113585%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args113584%_ '()))
                                         _%stx113547%_)
                                        '()))
                            '())
                      (cons (_%generate113551%_
                             _%clauses113582%_
                             _%args113584%_
                             _%len113585%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx113547%_)
                                                 '())))
                               _%stx113547%_)))
                          (_%$E113556113569%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e113553%_))
                (let* ((_%$tgt113560113590%_
                        (let () (declare (not safe)) (__AST-e _%$e113553%_)))
                       (_%$hd113561113593%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt113560113590%_)))
                       (_%$tl113562113596%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt113560113590%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl113562113596%_))
                      (let* ((_%$tgt113563113600%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl113562113596%_)))
                             (_%$hd113564113603%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt113563113600%_)))
                             (_%$tl113565113606%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt113563113600%_)))
                             (_%clause113610%_ _%$hd113564113603%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl113565113606%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause113610%_))
                            (_%$E113555113587%_)))
                      (_%$E113555113587%_)))
                (_%$E113555113587%_))))))
    (define __compile-let-form
      (lambda (_%stx113316%_ _%compile-simple113317%_ _%compile-values113318%_)
        (letrec ((_%simple-bind?113320%_
                  (lambda (_%hd113505%_)
                    (let* ((_%hd113506113516%_ _%hd113505%_)
                           (_%else113509113524%_ (lambda () '#f)))
                      (let ((_%K113512113537%_ (lambda (_%id113535%_) '#t))
                            (_%K113511113529%_ (lambda () '#t)))
                        (let ((_%try-match113508113532%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd113506113516%_ '#f))
                                     (_%K113511113529%_)
                                     (_%else113509113524%_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%hd113506113516%_))
                              (let ((_%tl113514113542%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd113506113516%_)))
                                    (_%hd113513113540%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd113506113516%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _%tl113514113542%_))
                                    (let ((_%id113545%_ _%hd113513113540%_))
                                      (_%K113512113537%_ _%id113545%_))
                                    (_%try-match113508113532%_)))
                              (_%try-match113508113532%_)))))))
                 (_%car-e113321%_
                  (lambda (_%hd113503%_)
                    (if (pair? _%hd113503%_)
                        (let () (declare (not safe)) (##car _%hd113503%_))
                        _%hd113503%_))))
          (let* ((_%$e113323%_ _%stx113316%_)
                 (_%$E113325113468%_
                  (lambda ()
                    (let ((_%$E113326113348%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e113323%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e113323%_))
                          (let* ((_%$tgt113327113351%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e113323%_)))
                                 (_%$hd113328113354%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt113327113351%_)))
                                 (_%$tl113329113357%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt113327113351%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl113329113357%_))
                                (let* ((_%$tgt113330113361%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl113329113357%_)))
                                       (_%$hd113331113364%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt113330113361%_)))
                                       (_%$tl113332113367%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt113330113361%_)))
                                       (_%hd113371%_ _%$hd113331113364%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl113332113367%_))
                                      (let* ((_%$tgt113333113373%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl113332113367%_)))
                                             (_%$hd113334113376%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt113333113373%_)))
                                             (_%$tl113335113379%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt113333113373%_)))
                                             (_%body113383%_
                                              _%$hd113334113376%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl113335113379%_))
                                                    '())
                                            (let* ((_%hd-ids113423%_
                                                    (map (lambda (_%bind113385%_)
                                                           (let* ((_%$e113387%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind113385%_)
                          (_%$E113389113398%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e113387%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e113387%_))
                         (let* ((_%$tgt113390113401%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e113387%_)))
                                (_%$hd113391113404%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt113390113401%_)))
                                (_%$tl113392113407%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt113390113401%_)))
                                (_%ids113411%_ _%$hd113391113404%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl113392113407%_))
                               (let* ((_%$tgt113393113413%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl113392113407%_)))
                                      (_%$hd113394113416%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt113393113413%_)))
                                      (_%$tl113395113419%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt113393113413%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl113395113419%_))
                                             '())
                                     _%ids113411%_
                                     (_%$E113389113398%_)))
                               (_%$E113389113398%_)))
                         (_%$E113389113398%_))))
                 _%hd113371%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs113463%_
                                                    (map (lambda (_%bind113425%_)
                                                           (let* ((_%$e113427%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind113425%_)
                          (_%$E113429113438%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e113427%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e113427%_))
                         (let* ((_%$tgt113430113441%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e113427%_)))
                                (_%$hd113431113444%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt113430113441%_)))
                                (_%$tl113432113447%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt113430113441%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl113432113447%_))
                               (let* ((_%$tgt113433113451%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl113432113447%_)))
                                      (_%$hd113434113454%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt113433113451%_)))
                                      (_%$tl113435113457%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt113433113451%_)))
                                      (_%expr113461%_ _%$hd113434113454%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl113435113457%_))
                                             '())
                                     (__compile _%expr113461%_)
                                     (_%$E113429113438%_)))
                               (_%$E113429113438%_)))
                         (_%$E113429113438%_))))
                 _%hd113371%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body113465%_
                                                    (__compile
                                                     _%body113383%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__andmap1
                                                     _%simple-bind?113320%_
                                                     _%hd-ids113423%_))
                                                  (_%compile-simple113317%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e113321%_
                                                            _%hd-ids113423%_))
                                                   _%exprs113463%_
                                                   _%body113465%_)
                                                  (_%compile-values113318%_
                                                   _%hd-ids113423%_
                                                   _%exprs113463%_
                                                   _%body113465%_)))
                                            (_%$E113326113348%_)))
                                      (_%$E113326113348%_)))
                                (_%$E113326113348%_)))
                          (_%$E113326113348%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e113323%_))
                (let* ((_%$tgt113336113471%_
                        (let () (declare (not safe)) (__AST-e _%$e113323%_)))
                       (_%$hd113337113474%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt113336113471%_)))
                       (_%$tl113338113477%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt113336113471%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl113338113477%_))
                      (let* ((_%$tgt113339113481%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl113338113477%_)))
                             (_%$hd113340113484%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt113339113481%_)))
                             (_%$tl113341113487%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt113339113481%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd113340113484%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl113341113487%_))
                                (let* ((_%$tgt113342113491%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl113341113487%_)))
                                       (_%$hd113343113494%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt113342113491%_)))
                                       (_%$tl113344113497%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt113342113491%_)))
                                       (_%body113501%_ _%$hd113343113494%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl113344113497%_))
                                              '())
                                      (__compile _%body113501%_)
                                      (_%$E113325113468%_)))
                                (_%$E113325113468%_))
                            (_%$E113325113468%_)))
                      (_%$E113325113468%_)))
                (_%$E113325113468%_))))))
    (define __compile-let-values%
      (lambda (_%stx113128%_)
        (letrec ((_%compile-simple113130%_
                  (lambda (_%hd-ids113312%_ _%exprs113313%_ _%body113314%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp114431
                                        (map __compile-head-id
                                             _%hd-ids113312%_)))
                                   (declare (not safe))
                                   (##map list __tmp114431 _%exprs113313%_))
                                 (cons _%body113314%_ '())))
                     _%stx113128%_)))
                 (_%compile-values113131%_
                  (lambda (_%hd-ids113227%_ _%exprs113228%_ _%body113229%_)
                    (let _%lp113231%_ ((_%rest113233%_ _%hd-ids113227%_)
                                       (_%exprs113234%_ _%exprs113228%_)
                                       (_%bind113235%_ '())
                                       (_%post113236%_ '()))
                      (let* ((_%rest113237113251%_ _%rest113233%_)
                             (_%else113240113259%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind113235%_)
                                             (cons (_%compile-post113132%_
                                                    _%post113236%_
                                                    _%body113229%_)
                                                   '())))
                                 _%stx113128%_))))
                        (let ((_%K113245113295%_
                               (lambda (_%rest113292%_ _%id113293%_)
                                 (_%lp113231%_
                                  _%rest113292%_
                                  (cdr _%exprs113234%_)
                                  (cons (cons (__compile-head-id _%id113293%_)
                                              (cons (car _%exprs113234%_) '()))
                                        _%bind113235%_)
                                  _%post113236%_)))
                              (_%K113242113277%_
                               (lambda (_%rest113263%_ _%hd113264%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd113264%_))
                                     (_%lp113231%_
                                      _%rest113263%_
                                      (cdr _%exprs113234%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd113264%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs113234%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind113235%_)
                                      _%post113236%_)
                                     (if (list? _%hd113264%_)
                                         (let* ((_%len113268%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd113264%_)))
                                                (_%tmp113270%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp113231%_
                                            _%rest113263%_
                                            (cdr _%exprs113234%_)
                                            (cons (cons _%tmp113270%_
                                                        (cons (car _%exprs113234%_)
                                                              '()))
                                                  _%bind113235%_)
                                            (cons (cons _%tmp113270%_
                                                        (cons _%len113268%_
                                                              (let ((__tmp114433
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id113273%_ _%k113274%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id113273%_))
                                   (cons (__SRC__0 _%id113273%_) _%k113274%_)
                                   '#f)))
                            (__tmp114432
                             (let ()
                               (declare (not safe))
                               (##iota _%len113268%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp114433 _%hd113264%_ __tmp114432))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post113236%_)))
                                         (__compile-error__%
                                          _%stx113128%_
                                          _%hd113264%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest113237113251%_))
                              (let ((_%tl113247113300%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest113237113251%_)))
                                    (_%hd113246113298%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest113237113251%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd113246113298%_))
                                    (let ((_%tl113249113305%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd113246113298%_)))
                                          (_%hd113248113303%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd113246113298%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl113249113305%_))
                                          (let ((_%id113308%_
                                                 _%hd113248113303%_)
                                                (_%rest113310%_
                                                 _%tl113247113300%_))
                                            (_%K113245113295%_
                                             _%rest113310%_
                                             _%id113308%_))
                                          (let ((_%hd113285%_
                                                 _%hd113246113298%_)
                                                (_%rest113287%_
                                                 _%tl113247113300%_))
                                            (_%K113242113277%_
                                             _%rest113287%_
                                             _%hd113285%_))))
                                    (let ((_%hd113285%_ _%hd113246113298%_)
                                          (_%rest113287%_ _%tl113247113300%_))
                                      (_%K113242113277%_
                                       _%rest113287%_
                                       _%hd113285%_))))
                              (_%else113240113259%_)))))))
                 (_%compile-post113132%_
                  (lambda (_%post113134%_ _%body113135%_)
                    (let _%lp113137%_ ((_%rest113139%_ _%post113134%_)
                                       (_%check113140%_ '())
                                       (_%bind113141%_ '()))
                      (let* ((_%rest113142113154%_ _%rest113139%_)
                             (_%else113144113162%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp114434
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind113141%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body113135%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx113128%_)
                                                    '())))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp114434
                                          _%check113140%_)))
                                 _%stx113128%_)))
                             (_%K113146113201%_
                              (lambda (_%rest113165%_
                                       _%init113166%_
                                       _%len113167%_
                                       _%tmp113168%_)
                                (_%lp113137%_
                                 _%rest113165%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp113168%_
                                                    (cons _%len113167%_ '())))
                                        _%stx113128%_)
                                       _%check113140%_)
                                 (let ((__tmp114435
                                        (lambda (_%hd113170%_ _%r113171%_)
                                          (let* ((_%hd113172113179%_
                                                  _%hd113170%_)
                                                 (_%E113174113183%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd113172113179%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K113175113189%_
                                                  (lambda (_%k113186%_
                                                           _%id113187%_)
                                                    (cons (cons _%id113187%_
                                                                (cons (cons '##vector-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp113168%_
                                          (cons _%k113186%_ '())))
                              '()))
                  _%r113171%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd113172113179%_))
                                                (let ((_%hd113176113192%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd113172113179%_)))
                                                      (_%tl113177113194%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd113172113179%_))))
                                                  (let* ((_%id113197%_
                                                          _%hd113176113192%_)
                                                         (_%k113199%_
                                                          _%tl113177113194%_))
                                                    (_%K113175113189%_
                                                     _%k113199%_
                                                     _%id113197%_)))
                                                (_%E113174113183%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp114435
                                    _%bind113141%_
                                    _%init113166%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest113142113154%_))
                            (let ((_%hd113147113204%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest113142113154%_)))
                                  (_%tl113148113206%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest113142113154%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd113147113204%_))
                                  (let ((_%hd113149113209%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd113147113204%_)))
                                        (_%tl113150113211%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd113147113204%_))))
                                    (let ((_%tmp113214%_ _%hd113149113209%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl113150113211%_))
                                          (let ((_%hd113151113216%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl113150113211%_)))
                                                (_%tl113152113218%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl113150113211%_))))
                                            (let* ((_%len113221%_
                                                    _%hd113151113216%_)
                                                   (_%init113223%_
                                                    _%tl113152113218%_)
                                                   (_%rest113225%_
                                                    _%tl113148113206%_))
                                              (_%K113146113201%_
                                               _%rest113225%_
                                               _%init113223%_
                                               _%len113221%_
                                               _%tmp113214%_)))
                                          (_%else113144113162%_))))
                                  (_%else113144113162%_)))
                            (_%else113144113162%_)))))))
          (__compile-let-form
           _%stx113128%_
           _%compile-simple113130%_
           _%compile-values113131%_))))
    (define __compile-letrec-values%
      (lambda (_%stx112925%_)
        (letrec ((_%compile-simple112927%_
                  (lambda (_%hd-ids113124%_ _%exprs113125%_ _%body113126%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp114436
                                        (map __compile-head-id
                                             _%hd-ids113124%_)))
                                   (declare (not safe))
                                   (##map list __tmp114436 _%exprs113125%_))
                                 (cons _%body113126%_ '())))
                     _%stx112925%_)))
                 (_%compile-values112928%_
                  (lambda (_%hd-ids113035%_ _%exprs113036%_ _%body113037%_)
                    (let _%lp113039%_ ((_%rest113041%_ _%hd-ids113035%_)
                                       (_%exprs113042%_ _%exprs113036%_)
                                       (_%pre113043%_ '())
                                       (_%bind113044%_ '())
                                       (_%post113045%_ '()))
                      (let* ((_%rest113046113060%_ _%rest113041%_)
                             (_%else113049113068%_
                              (lambda ()
                                (_%compile-inner112929%_
                                 _%pre113043%_
                                 _%bind113044%_
                                 _%post113045%_
                                 _%body113037%_))))
                        (let ((_%K113054113107%_
                               (lambda (_%rest113104%_ _%id113105%_)
                                 (_%lp113039%_
                                  _%rest113104%_
                                  (cdr _%exprs113042%_)
                                  _%pre113043%_
                                  (cons (cons (__compile-head-id _%id113105%_)
                                              (cons (car _%exprs113042%_) '()))
                                        _%bind113044%_)
                                  _%post113045%_)))
                              (_%K113051113089%_
                               (lambda (_%rest113072%_ _%hd113073%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd113073%_))
                                     (_%lp113039%_
                                      _%rest113072%_
                                      (cdr _%exprs113042%_)
                                      _%pre113043%_
                                      (cons (cons (__compile-head-id
                                                   _%hd113073%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs113042%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind113044%_)
                                      _%post113045%_)
                                     (if (list? _%hd113073%_)
                                         (let* ((_%len113077%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd113073%_)))
                                                (_%tmp113079%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp113039%_
                                            _%rest113072%_
                                            (cdr _%exprs113042%_)
                                            (let ((__tmp114437
                                                   (lambda (_%id113082%_
                                                            _%r113083%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id113082%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id113082%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r113083%_)
                 _%r113083%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (__foldl1
                                               __tmp114437
                                               _%pre113043%_
                                               _%hd113073%_))
                                            (cons (cons _%tmp113079%_
                                                        (cons (car _%exprs113042%_)
                                                              '()))
                                                  _%bind113044%_)
                                            (cons (cons _%tmp113079%_
                                                        (cons _%len113077%_
                                                              (let ((__tmp114439
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id113085%_ _%k113086%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id113085%_))
                                   (cons (__SRC__0 _%id113085%_) _%k113086%_)
                                   '#f)))
                            (__tmp114438
                             (let ()
                               (declare (not safe))
                               (##iota _%len113077%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp114439 _%hd113073%_ __tmp114438))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post113045%_)))
                                         (__compile-error__%
                                          _%stx112925%_
                                          _%hd113073%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest113046113060%_))
                              (let ((_%tl113056113112%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest113046113060%_)))
                                    (_%hd113055113110%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest113046113060%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd113055113110%_))
                                    (let ((_%tl113058113117%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd113055113110%_)))
                                          (_%hd113057113115%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd113055113110%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl113058113117%_))
                                          (let ((_%id113120%_
                                                 _%hd113057113115%_)
                                                (_%rest113122%_
                                                 _%tl113056113112%_))
                                            (_%K113054113107%_
                                             _%rest113122%_
                                             _%id113120%_))
                                          (let ((_%hd113097%_
                                                 _%hd113055113110%_)
                                                (_%rest113099%_
                                                 _%tl113056113112%_))
                                            (_%K113051113089%_
                                             _%rest113099%_
                                             _%hd113097%_))))
                                    (let ((_%hd113097%_ _%hd113055113110%_)
                                          (_%rest113099%_ _%tl113056113112%_))
                                      (_%K113051113089%_
                                       _%rest113099%_
                                       _%hd113097%_))))
                              (_%else113049113068%_)))))))
                 (_%compile-inner112929%_
                  (lambda (_%pre113030%_
                           _%bind113031%_
                           _%post113032%_
                           _%body113033%_)
                    (if (null? _%pre113030%_)
                        (_%compile-bind112930%_
                         _%bind113031%_
                         _%post113032%_
                         _%body113033%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre113030%_)
                                     (cons (_%compile-bind112930%_
                                            _%bind113031%_
                                            _%post113032%_
                                            _%body113033%_)
                                           '())))
                         _%stx112925%_))))
                 (_%compile-bind112930%_
                  (lambda (_%bind113026%_ _%post113027%_ _%body113028%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind113026%_)
                                 (cons (_%compile-post112931%_
                                        _%post113027%_
                                        _%body113028%_)
                                       '())))
                     _%stx112925%_)))
                 (_%compile-post112931%_
                  (lambda (_%post112933%_ _%body112934%_)
                    (let _%lp112936%_ ((_%rest112938%_ _%post112933%_)
                                       (_%check112939%_ '())
                                       (_%bind112940%_ '()))
                      (let* ((_%rest112941112953%_ _%rest112938%_)
                             (_%else112943112961%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp114440
                                              (let ((__tmp114441
                                                     (cons _%body112934%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp114441
                                                 _%bind112940%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp114440
                                          _%check112939%_)))
                                 _%stx112925%_)))
                             (_%K112945113000%_
                              (lambda (_%rest112964%_
                                       _%init112965%_
                                       _%len112966%_
                                       _%tmp112967%_)
                                (_%lp112936%_
                                 _%rest112964%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp112967%_
                                                    (cons _%len112966%_ '())))
                                        _%stx112925%_)
                                       _%check112939%_)
                                 (let ((__tmp114442
                                        (lambda (_%hd112969%_ _%r112970%_)
                                          (let* ((_%hd112971112978%_
                                                  _%hd112969%_)
                                                 (_%E112973112982%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd112971112978%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K112974112988%_
                                                  (lambda (_%k112985%_
                                                           _%id112986%_)
                                                    (cons (cons 'set!
                                                                (cons _%id112986%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##vector-ref
                                          (cons _%tmp112967%_
                                                (cons _%k112985%_ '())))
                                    '())))
                  _%r112970%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd112971112978%_))
                                                (let ((_%hd112975112991%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd112971112978%_)))
                                                      (_%tl112976112993%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd112971112978%_))))
                                                  (let* ((_%id112996%_
                                                          _%hd112975112991%_)
                                                         (_%k112998%_
                                                          _%tl112976112993%_))
                                                    (_%K112974112988%_
                                                     _%k112998%_
                                                     _%id112996%_)))
                                                (_%E112973112982%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp114442
                                    _%bind112940%_
                                    _%init112965%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest112941112953%_))
                            (let ((_%hd112946113003%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest112941112953%_)))
                                  (_%tl112947113005%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest112941112953%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd112946113003%_))
                                  (let ((_%hd112948113008%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd112946113003%_)))
                                        (_%tl112949113010%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd112946113003%_))))
                                    (let ((_%tmp113013%_ _%hd112948113008%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl112949113010%_))
                                          (let ((_%hd112950113015%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl112949113010%_)))
                                                (_%tl112951113017%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl112949113010%_))))
                                            (let* ((_%len113020%_
                                                    _%hd112950113015%_)
                                                   (_%init113022%_
                                                    _%tl112951113017%_)
                                                   (_%rest113024%_
                                                    _%tl112947113005%_))
                                              (_%K112945113000%_
                                               _%rest113024%_
                                               _%init113022%_
                                               _%len113020%_
                                               _%tmp113013%_)))
                                          (_%else112943112961%_))))
                                  (_%else112943112961%_)))
                            (_%else112943112961%_)))))))
          (__compile-let-form
           _%stx112925%_
           _%compile-simple112927%_
           _%compile-values112928%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx112676%_)
        (letrec ((_%compile-simple112678%_
                  (lambda (_%hd-ids112921%_ _%exprs112922%_ _%body112923%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp114443
                                        (map __compile-head-id
                                             _%hd-ids112921%_)))
                                   (declare (not safe))
                                   (##map list __tmp114443 _%exprs112922%_))
                                 (cons _%body112923%_ '())))
                     _%stx112676%_)))
                 (_%compile-values112679%_
                  (lambda (_%hd-ids112828%_ _%exprs112829%_ _%body112830%_)
                    (let _%lp112832%_ ((_%rest112834%_ _%hd-ids112828%_)
                                       (_%exprs112835%_ _%exprs112829%_)
                                       (_%bind112836%_ '())
                                       (_%post112837%_ '()))
                      (let* ((_%rest112838112852%_ _%rest112834%_)
                             (_%else112841112860%_
                              (lambda ()
                                (_%compile-bind112680%_
                                 _%bind112836%_
                                 _%post112837%_
                                 _%body112830%_))))
                        (let ((_%K112846112904%_
                               (lambda (_%rest112899%_ _%hd112900%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd112900%_))
                                     (let ((_%id112902%_
                                            (__SRC__0 _%hd112900%_)))
                                       (_%lp112832%_
                                        _%rest112899%_
                                        (cdr _%exprs112835%_)
                                        (cons (cons _%id112902%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind112836%_)
                                        (cons (cons _%id112902%_
                                                    (cons (car _%exprs112835%_)
                                                          '()))
                                              _%post112837%_)))
                                     (_%lp112832%_
                                      _%rest112899%_
                                      (cdr _%exprs112835%_)
                                      _%bind112836%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs112835%_)
                                                        '()))
                                            _%post112837%_)))))
                              (_%K112843112884%_
                               (lambda (_%rest112864%_ _%hd112865%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd112865%_))
                                     (let ((_%id112868%_
                                            (__SRC__0 _%hd112865%_)))
                                       (_%lp112832%_
                                        _%rest112864%_
                                        (cdr _%exprs112835%_)
                                        (cons (cons _%id112868%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind112836%_)
                                        (cons (cons _%id112868%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs112835%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post112837%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd112865%_))
                                         (if (list? _%hd112865%_)
                                             (let* ((_%len112872%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd112865%_)))
                                                    (_%tmp112874%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp112832%_
                                                _%rest112864%_
                                                (cdr _%exprs112835%_)
                                                (let ((__tmp114444
                                                       (lambda (_%id112877%_
                                                                _%r112878%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id112877%_))
                     (cons (cons (__SRC__0 _%id112877%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r112878%_)
                     _%r112878%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldl1
                                                   __tmp114444
                                                   _%bind112836%_
                                                   _%hd112865%_))
                                                (cons (cons _%tmp112874%_
                                                            (cons (car _%exprs112835%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len112872%_
                                (let ((__tmp114446
                                       (lambda (_%id112880%_ _%k112881%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id112880%_))
                                             (cons (__SRC__0 _%id112880%_)
                                                   _%k112881%_)
                                             '#f)))
                                      (__tmp114445
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len112872%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp114446
                                   _%hd112865%_
                                   __tmp114445)))))
              _%post112837%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx112676%_
                                              _%hd112865%_))
                                         (_%lp112832%_
                                          _%rest112864%_
                                          (cdr _%exprs112835%_)
                                          _%bind112836%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs112835%_)
                                                            '()))
                                                _%post112837%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest112838112852%_))
                              (let ((_%tl112848112909%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest112838112852%_)))
                                    (_%hd112847112907%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest112838112852%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd112847112907%_))
                                    (let ((_%tl112850112914%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd112847112907%_)))
                                          (_%hd112849112912%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd112847112907%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl112850112914%_))
                                          (let ((_%hd112917%_
                                                 _%hd112849112912%_)
                                                (_%rest112919%_
                                                 _%tl112848112909%_))
                                            (_%K112846112904%_
                                             _%rest112919%_
                                             _%hd112917%_))
                                          (let ((_%hd112892%_
                                                 _%hd112847112907%_)
                                                (_%rest112894%_
                                                 _%tl112848112909%_))
                                            (_%K112843112884%_
                                             _%rest112894%_
                                             _%hd112892%_))))
                                    (let ((_%hd112892%_ _%hd112847112907%_)
                                          (_%rest112894%_ _%tl112848112909%_))
                                      (_%K112843112884%_
                                       _%rest112894%_
                                       _%hd112892%_))))
                              (_%else112841112860%_)))))))
                 (_%compile-bind112680%_
                  (lambda (_%bind112824%_ _%post112825%_ _%body112826%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind112824%_)
                                 (cons (_%compile-post112681%_
                                        _%post112825%_
                                        _%body112826%_)
                                       '())))
                     _%stx112676%_)))
                 (_%compile-post112681%_
                  (lambda (_%post112683%_ _%body112684%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp114447
                                  (let ((__tmp114449
                                         (lambda (_%hd112686%_ _%r112687%_)
                                           (let* ((_%hd112688112711%_
                                                   _%hd112686%_)
                                                  (_%E112692112715%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd112688112711%_
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
                                             (let ((_%K112705112809%_
                                                    (lambda (_%expr112807%_)
                                                      (cons _%expr112807%_
                                                            _%r112687%_)))
                                                   (_%K112700112787%_
                                                    (lambda (_%expr112784%_
                                                             _%id112785%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id112785%_ (cons _%expr112784%_ '())))
                     _%stx112676%_)
                    _%r112687%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K112693112754%_
                                                    (lambda (_%init112719%_
                                                             _%len112720%_
                                                             _%expr112721%_
                                                             _%tmp112722%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp112722%_
                                             (cons _%expr112721%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp112722%_
                                                    (cons _%len112720%_ '())))
                                        _%stx112676%_)
                                       (let ((__tmp114450
                                              (map (lambda (_%hd112724%_)
                                                     (let* ((_%hd112725112732%_
                                                             _%hd112724%_)
                                                            (_%E112727112736%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd112725112732%_
                                '([id . k])))
                       '#!void))
                    (_%K112728112742%_
                     (lambda (_%k112739%_ _%id112740%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id112740%_
                                    (cons (cons '##vector-ref
                                                (cons _%tmp112722%_
                                                      (cons _%k112739%_ '())))
                                          '())))
                        _%stx112676%_))))
               (if (let () (declare (not safe)) (##pair? _%hd112725112732%_))
                   (let ((_%hd112729112745%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd112725112732%_)))
                         (_%tl112730112747%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd112725112732%_))))
                     (let* ((_%id112750%_ _%hd112729112745%_)
                            (_%k112752%_ _%tl112730112747%_))
                       (_%K112728112742%_ _%k112752%_ _%id112750%_)))
                   (_%E112727112736%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init112719%_)))
                                         (declare (not safe))
                                         (__foldr1 cons '() __tmp114450)))))
                     _%stx112676%_)
                    _%r112687%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match114303114304%_
                                                       (lambda (_%hd112694112757%_
                                                                _%tl112695112759%_
                                                                _%hd112696112764%_
                                                                _%tl112697112766%_)
                                                         (let ((_%tmp112762%_
                                                                _%hd112694112757%_)
                                                               (_%expr112769%_
                                                                _%hd112696112764%_))
                                                           (_%E112692112715%_))))
                                                      (_%__match114297114298%_
                                                       (lambda (_%hd112694112757%_
                                                                _%tl112695112759%_)
                                                         (let ((_%tmp112762%_
                                                                _%hd112694112757%_))
                                                           (_%E112692112715%_)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##pair? _%hd112688112711%_))
                                                     (let ((_%tl112707112814%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd112688112711%_)))
                                                           (_%hd112706112812%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd112688112711%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd112706112812%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _%tl112707112814%_))
                       (let ((_%tl112709112819%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl112707112814%_)))
                             (_%hd112708112817%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl112707112814%_))))
                         (if (let ()
                               (declare (not safe))
                               (##null? _%tl112709112819%_))
                             (let ((_%expr112822%_ _%hd112708112817%_))
                               (_%K112705112809%_ _%expr112822%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%tl112709112819%_))
                                 (let ((_%tl112699112773%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl112709112819%_)))
                                       (_%hd112698112771%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl112709112819%_))))
                                   (let ((_%tmp112762%_ _%hd112706112812%_)
                                         (_%expr112769%_ _%hd112708112817%_)
                                         (_%len112776%_ _%hd112698112771%_)
                                         (_%init112778%_ _%tl112699112773%_))
                                     (_%K112693112754%_
                                      _%init112778%_
                                      _%len112776%_
                                      _%expr112769%_
                                      _%tmp112762%_)))
                                 (_%__match114303114304%_
                                  _%hd112706112812%_
                                  _%tl112707112814%_
                                  _%hd112708112817%_
                                  _%tl112709112819%_))))
                       (_%__match114297114298%_
                        _%hd112706112812%_
                        _%tl112707112814%_))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _%tl112707112814%_))
                       (let ((_%tl112704112799%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl112707112814%_)))
                             (_%hd112703112797%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl112707112814%_))))
                         (if (let ()
                               (declare (not safe))
                               (##null? _%tl112704112799%_))
                             (let ((_%id112795%_ _%hd112706112812%_)
                                   (_%expr112802%_ _%hd112703112797%_))
                               (_%K112700112787%_ _%expr112802%_ _%id112795%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%tl112704112799%_))
                                 (let ((_%tl112699112773%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl112704112799%_)))
                                       (_%hd112698112771%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl112704112799%_))))
                                   (let ((_%tmp112762%_ _%hd112706112812%_)
                                         (_%expr112769%_ _%hd112703112797%_)
                                         (_%len112776%_ _%hd112698112771%_)
                                         (_%init112778%_ _%tl112699112773%_))
                                     (_%K112693112754%_
                                      _%init112778%_
                                      _%len112776%_
                                      _%expr112769%_
                                      _%tmp112762%_)))
                                 (_%__match114303114304%_
                                  _%hd112706112812%_
                                  _%tl112707112814%_
                                  _%hd112703112797%_
                                  _%tl112704112799%_))))
                       (_%__match114297114298%_
                        _%hd112706112812%_
                        _%tl112707112814%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E112692112715%_)))))))
                                        (__tmp114448 (list _%body112684%_)))
                                    (declare (not safe))
                                    (__foldl1
                                     __tmp114449
                                     __tmp114448
                                     _%post112683%_))))
                             (declare (not safe))
                             (__foldr1 cons '() __tmp114447)))
                     _%stx112676%_))))
          (__compile-let-form
           _%stx112676%_
           _%compile-simple112678%_
           _%compile-values112679%_))))
    (define __compile-call%
      (lambda (_%stx112636%_)
        (let* ((_%$e112638%_ _%stx112636%_)
               (_%$E112640112649%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e112638%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e112638%_))
              (let* ((_%$tgt112641112652%_
                      (let () (declare (not safe)) (__AST-e _%$e112638%_)))
                     (_%$hd112642112655%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt112641112652%_)))
                     (_%$tl112643112658%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt112641112652%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl112643112658%_))
                    (let* ((_%$tgt112644112662%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl112643112658%_)))
                           (_%$hd112645112665%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt112644112662%_)))
                           (_%$tl112646112668%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt112644112662%_)))
                           (_%rator112672%_ _%$hd112645112665%_)
                           (_%rands112674%_ _%$tl112646112668%_))
                      (__SRC__%
                       (cons (__compile _%rator112672%_)
                             (map __compile _%rands112674%_))
                       _%stx112636%_))
                    (_%$E112640112649%_)))
              (_%$E112640112649%_)))))
    (define __compile-ref%
      (lambda (_%stx112598%_)
        (let* ((_%$e112600%_ _%stx112598%_)
               (_%$E112602112611%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e112600%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e112600%_))
              (let* ((_%$tgt112603112614%_
                      (let () (declare (not safe)) (__AST-e _%$e112600%_)))
                     (_%$hd112604112617%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt112603112614%_)))
                     (_%$tl112605112620%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt112603112614%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl112605112620%_))
                    (let* ((_%$tgt112606112624%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl112605112620%_)))
                           (_%$hd112607112627%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt112606112624%_)))
                           (_%$tl112608112630%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt112606112624%_)))
                           (_%id112634%_ _%$hd112607112627%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl112608112630%_))
                                  '())
                          (__SRC__% _%id112634%_ _%stx112598%_)
                          (_%$E112602112611%_)))
                    (_%$E112602112611%_)))
              (_%$E112602112611%_)))))
    (define __compile-setq%
      (lambda (_%stx112545%_)
        (let* ((_%$e112547%_ _%stx112545%_)
               (_%$E112549112561%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e112547%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e112547%_))
              (let* ((_%$tgt112550112564%_
                      (let () (declare (not safe)) (__AST-e _%$e112547%_)))
                     (_%$hd112551112567%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt112550112564%_)))
                     (_%$tl112552112570%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt112550112564%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl112552112570%_))
                    (let* ((_%$tgt112553112574%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl112552112570%_)))
                           (_%$hd112554112577%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt112553112574%_)))
                           (_%$tl112555112580%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt112553112574%_)))
                           (_%id112584%_ _%$hd112554112577%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl112555112580%_))
                          (let* ((_%$tgt112556112586%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl112555112580%_)))
                                 (_%$hd112557112589%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112556112586%_)))
                                 (_%$tl112558112592%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112556112586%_)))
                                 (_%expr112596%_ _%$hd112557112589%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl112558112592%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id112584%_
                                              _%stx112545%_)
                                             (cons (__compile _%expr112596%_)
                                                   '())))
                                 _%stx112545%_)
                                (_%$E112549112561%_)))
                          (_%$E112549112561%_)))
                    (_%$E112549112561%_)))
              (_%$E112549112561%_)))))
    (define __compile-if%
      (lambda (_%stx112477%_)
        (let* ((_%$e112479%_ _%stx112477%_)
               (_%$E112481112496%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e112479%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e112479%_))
              (let* ((_%$tgt112482112499%_
                      (let () (declare (not safe)) (__AST-e _%$e112479%_)))
                     (_%$hd112483112502%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt112482112499%_)))
                     (_%$tl112484112505%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt112482112499%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl112484112505%_))
                    (let* ((_%$tgt112485112509%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl112484112505%_)))
                           (_%$hd112486112512%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt112485112509%_)))
                           (_%$tl112487112515%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt112485112509%_)))
                           (_%p112519%_ _%$hd112486112512%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl112487112515%_))
                          (let* ((_%$tgt112488112521%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl112487112515%_)))
                                 (_%$hd112489112524%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112488112521%_)))
                                 (_%$tl112490112527%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112488112521%_)))
                                 (_%t112531%_ _%$hd112489112524%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl112490112527%_))
                                (let* ((_%$tgt112491112533%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl112490112527%_)))
                                       (_%$hd112492112536%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt112491112533%_)))
                                       (_%$tl112493112539%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt112491112533%_)))
                                       (_%f112543%_ _%$hd112492112536%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl112493112539%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p112519%_)
                                                   (cons (__compile
                                                          _%t112531%_)
                                                         (cons (__compile
                                                                _%f112543%_)
                                                               '()))))
                                       _%stx112477%_)
                                      (_%$E112481112496%_)))
                                (_%$E112481112496%_)))
                          (_%$E112481112496%_)))
                    (_%$E112481112496%_)))
              (_%$E112481112496%_)))))
    (define __compile-quote%
      (lambda (_%stx112439%_)
        (let* ((_%$e112441%_ _%stx112439%_)
               (_%$E112443112452%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e112441%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e112441%_))
              (let* ((_%$tgt112444112455%_
                      (let () (declare (not safe)) (__AST-e _%$e112441%_)))
                     (_%$hd112445112458%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt112444112455%_)))
                     (_%$tl112446112461%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt112444112455%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl112446112461%_))
                    (let* ((_%$tgt112447112465%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl112446112461%_)))
                           (_%$hd112448112468%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt112447112465%_)))
                           (_%$tl112449112471%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt112447112465%_)))
                           (_%e112475%_ _%$hd112448112468%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl112449112471%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e112475%_))
                                       '()))
                           _%stx112439%_)
                          (_%$E112443112452%_)))
                    (_%$E112443112452%_)))
              (_%$E112443112452%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx112401%_)
        (let* ((_%$e112403%_ _%stx112401%_)
               (_%$E112405112414%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e112403%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e112403%_))
              (let* ((_%$tgt112406112417%_
                      (let () (declare (not safe)) (__AST-e _%$e112403%_)))
                     (_%$hd112407112420%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt112406112417%_)))
                     (_%$tl112408112423%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt112406112417%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl112408112423%_))
                    (let* ((_%$tgt112409112427%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl112408112423%_)))
                           (_%$hd112410112430%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt112409112427%_)))
                           (_%$tl112411112433%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt112409112427%_)))
                           (_%e112437%_ _%$hd112410112430%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl112411112433%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e112437%_ '()))
                           _%stx112401%_)
                          (_%$E112405112414%_)))
                    (_%$E112405112414%_)))
              (_%$E112405112414%_)))))
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

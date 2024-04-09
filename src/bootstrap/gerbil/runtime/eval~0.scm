(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1712643207)
  (begin
    (define __syntax::t
      (let ((__tmp111064 (list)) (__tmp111063 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp111064
         '(e id)
         __tmp111063
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args110868%_
        (apply make-instance __syntax::t _%$args110868%_)))
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
      (let ((__tmp111066 (list __syntax::t))
            (__tmp111065 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp111066
         '()
         __tmp111065
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args110865%_
        (apply make-instance __core-form::t _%$args110865%_)))
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
      (let ((__tmp111068 (list __core-form::t))
            (__tmp111067 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp111068
         '()
         __tmp111067
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args110862%_
        (apply make-instance __core-expression::t _%$args110862%_)))
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
      (let ((__tmp111070 (list __core-form::t))
            (__tmp111069 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp111070
         '()
         __tmp111069
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args110859%_
        (apply make-instance __core-special-form::t _%$args110859%_)))
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
      (lambda (_%id110857%_)
        (let ((__tmp111071
               (let () (declare (not safe)) (__AST-e _%id110857%_))))
          (declare (not safe))
          (hash-get __core __tmp111071))))
    (define __core-bound-id?__%
      (lambda (_%id110840%_ _%is?110841%_)
        (let ((_%$e110843%_ (__core-resolve _%id110840%_)))
          (if _%$e110843%_ (_%is?110841%_ _%$e110843%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id110850%_)
        (let ((_%is?110852%_ true))
          (__core-bound-id?__% _%id110850%_ _%is?110852%_))))
    (define __core-bound-id?
      (lambda _g111073_
        (let ((_g111072_ (let () (declare (not safe)) (##length _g111073_))))
          (cond ((let () (declare (not safe)) (##fx= _g111072_ 1))
                 (apply __core-bound-id?__0 _g111073_))
                ((let () (declare (not safe)) (##fx= _g111072_ 2))
                 (apply __core-bound-id?__% _g111073_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g111073_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id110823%_ _%e110824%_ _%make110825%_)
        (let ((__tmp111074
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e110824%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e110824%_
                   (_%make110825%_ _%e110824%_ _%id110823%_))))
          (declare (not safe))
          (hash-put! __core _%id110823%_ __tmp111074))))
    (define __core-bind-syntax!__0
      (lambda (_%id110830%_ _%e110831%_)
        (let ((_%make110833%_ make-__syntax))
          (__core-bind-syntax!__% _%id110830%_ _%e110831%_ _%make110833%_))))
    (define __core-bind-syntax!
      (lambda _g111076_
        (let ((_g111075_ (let () (declare (not safe)) (##length _g111076_))))
          (cond ((let () (declare (not safe)) (##fx= _g111075_ 2))
                 (apply __core-bind-syntax!__0 _g111076_))
                ((let () (declare (not safe)) (##fx= _g111075_ 3))
                 (apply __core-bind-syntax!__% _g111076_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g111076_))))))
    (define __SRC__%
      (lambda (_%e110803%_ _%src-stx110804%_)
        (if (or (pair? _%e110803%_) (symbol? _%e110803%_))
            (let ((__tmp111077
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx110804%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx110804%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e110803%_ __tmp111077))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e110803%_ 'gerbil#AST::t))
                (let ((__tmp111079
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e110803%_ '1 '#f '#f)))
                      (__tmp111078
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e110803%_)))))
                  (declare (not safe))
                  (##make-source __tmp111079 __tmp111078))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e110803%_))))))
    (define __SRC__0
      (lambda (_%e110815%_)
        (let ((_%src-stx110817%_ '#f))
          (__SRC__% _%e110815%_ _%src-stx110817%_))))
    (define __SRC
      (lambda _g111081_
        (let ((_g111080_ (let () (declare (not safe)) (##length _g111081_))))
          (cond ((let () (declare (not safe)) (##fx= _g111080_ 1))
                 (apply __SRC__0 _g111081_))
                ((let () (declare (not safe)) (##fx= _g111080_ 2))
                 (apply __SRC__% _g111081_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g111081_))))))
    (define __locat
      (lambda (_%loc110800%_)
        (if (let () (declare (not safe)) (##locat? _%loc110800%_))
            _%loc110800%_
            '#f)))
    (define __check-values
      (lambda (_%obj110795%_ _%k110796%_)
        (let ((_%count110798%_
               (if (let () (declare (not safe)) (##values? _%obj110795%_))
                   (let ()
                     (declare (not safe))
                     (##vector-length _%obj110795%_))
                   '1)))
          (if (fx= _%count110798%_ _%k110796%_)
              '#!void
              (let ((__tmp111083
                     (if (fx< _%count110798%_ _%k110796%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp111082
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj110795%_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _%obj110795%_))
                         _%obj110795%_)))
                (declare (not safe))
                (error __tmp111083 __tmp111082 _%k110796%_))))))
    (define __compile
      (lambda (_%stx110764%_)
        (let* ((_%$e110766%_ _%stx110764%_)
               (_%$E110768110774%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110766%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110766%_))
              (let* ((_%$tgt110769110777%_
                      (let () (declare (not safe)) (__AST-e _%$e110766%_)))
                     (_%$hd110770110780%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110769110777%_)))
                     (_%$tl110771110783%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110769110777%_)))
                     (_%form110787%_ _%$hd110770110780%_)
                     (_%$e110789%_ (__core-resolve _%form110787%_)))
                (if _%$e110789%_
                    ((lambda (_%bind110792%_)
                       ((##structure-ref _%bind110792%_ '1 __syntax::t '#f)
                        _%stx110764%_))
                     _%$e110789%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx110764%_
                       _%form110787%_))))
              (_%$E110768110774%_)))))
    (define __compile-error__%
      (lambda (_%stx110751%_ _%detail110752%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx110751%_
           _%detail110752%_))))
    (define __compile-error__0
      (lambda (_%stx110757%_)
        (let ((_%detail110759%_ '#f))
          (__compile-error__% _%stx110757%_ _%detail110759%_))))
    (define __compile-error
      (lambda _g111085_
        (let ((_g111084_ (let () (declare (not safe)) (##length _g111085_))))
          (cond ((let () (declare (not safe)) (##fx= _g111084_ 1))
                 (apply __compile-error__0 _g111085_))
                ((let () (declare (not safe)) (##fx= _g111084_ 2))
                 (apply __compile-error__% _g111085_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g111085_))))))
    (define __compile-ignore%
      (lambda (_%stx110748%_) (__SRC__% ''#!void _%stx110748%_)))
    (define __compile-begin%
      (lambda (_%stx110723%_)
        (let* ((_%$e110725%_ _%stx110723%_)
               (_%$E110727110733%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110725%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110725%_))
              (let* ((_%$tgt110728110736%_
                      (let () (declare (not safe)) (__AST-e _%$e110725%_)))
                     (_%$hd110729110739%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110728110736%_)))
                     (_%$tl110730110742%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110728110736%_)))
                     (_%body110746%_ _%$tl110730110742%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body110746%_))
                 _%stx110723%_))
              (_%$E110727110733%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx110698%_)
        (let* ((_%$e110700%_ _%stx110698%_)
               (_%$E110702110708%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110700%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110700%_))
              (let* ((_%$tgt110703110711%_
                      (let () (declare (not safe)) (__AST-e _%$e110700%_)))
                     (_%$hd110704110714%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110703110711%_)))
                     (_%$tl110705110717%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110703110711%_)))
                     (_%body110721%_ _%$tl110705110717%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body110721%_)))
                 _%stx110698%_))
              (_%$E110702110708%_)))))
    (define __compile-import%
      (lambda (_%stx110673%_)
        (let* ((_%$e110675%_ _%stx110673%_)
               (_%$E110677110683%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110675%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110675%_))
              (let* ((_%$tgt110678110686%_
                      (let () (declare (not safe)) (__AST-e _%$e110675%_)))
                     (_%$hd110679110689%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110678110686%_)))
                     (_%$tl110680110692%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110678110686%_)))
                     (_%body110696%_ _%$tl110680110692%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body110696%_ '())) '()))
                 _%stx110673%_))
              (_%$E110677110683%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx110620%_)
        (let* ((_%$e110622%_ _%stx110620%_)
               (_%$E110624110636%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110622%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110622%_))
              (let* ((_%$tgt110625110639%_
                      (let () (declare (not safe)) (__AST-e _%$e110622%_)))
                     (_%$hd110626110642%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110625110639%_)))
                     (_%$tl110627110645%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110625110639%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl110627110645%_))
                    (let* ((_%$tgt110628110649%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl110627110645%_)))
                           (_%$hd110629110652%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt110628110649%_)))
                           (_%$tl110630110655%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt110628110649%_)))
                           (_%ann110659%_ _%$hd110629110652%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl110630110655%_))
                          (let* ((_%$tgt110631110661%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl110630110655%_)))
                                 (_%$hd110632110664%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110631110661%_)))
                                 (_%$tl110633110667%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110631110661%_)))
                                 (_%expr110671%_ _%$hd110632110664%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl110633110667%_))
                                        '())
                                (__compile _%expr110671%_)
                                (_%$E110624110636%_)))
                          (_%$E110624110636%_)))
                    (_%$E110624110636%_)))
              (_%$E110624110636%_)))))
    (define __compile-define-values%
      (lambda (_%stx110511%_)
        (let* ((_%$e110513%_ _%stx110511%_)
               (_%$E110515110527%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110513%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110513%_))
              (let* ((_%$tgt110516110530%_
                      (let () (declare (not safe)) (__AST-e _%$e110513%_)))
                     (_%$hd110517110533%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110516110530%_)))
                     (_%$tl110518110536%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110516110530%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl110518110536%_))
                    (let* ((_%$tgt110519110540%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl110518110536%_)))
                           (_%$hd110520110543%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt110519110540%_)))
                           (_%$tl110521110546%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt110519110540%_)))
                           (_%hd110550%_ _%$hd110520110543%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl110521110546%_))
                          (let* ((_%$tgt110522110552%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl110521110546%_)))
                                 (_%$hd110523110555%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110522110552%_)))
                                 (_%$tl110524110558%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110522110552%_)))
                                 (_%expr110562%_ _%$hd110523110555%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl110524110558%_))
                                        '())
                                (let* ((_%$e110564%_ _%hd110550%_)
                                       (_%$E110566110607%_
                                        (lambda ()
                                          (let ((_%$E110567110592%_
                                                 (lambda ()
                                                   (let* ((_%$E110568110579%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e110564%_))))
                  (_%ids110582%_ _%hd110550%_)
                  (_%len110584%_ (length _%ids110582%_))
                  (_%tmp110586%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp110586%_
                                       (cons (__compile _%expr110562%_) '())))
                           _%stx110511%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp110586%_
                                             (cons _%len110584%_ '())))
                                 _%stx110511%_)
                                (let ((__tmp111086
                                       (let ((__tmp111088
                                              (lambda (_%id110589%_
                                                       _%k110590%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id110589%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id110589%_)
                         (cons (cons '##vector-ref
                                     (cons _%tmp110586%_
                                           (cons _%k110590%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx110511%_)
                                                    '#f)))
                                             (__tmp111087
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len110584%_))))
                                         (declare (not safe))
                                         (__filter-map2
                                          __tmp111088
                                          _%ids110582%_
                                          __tmp111087))))
                                  (declare (not safe))
                                  (__foldr1 cons '() __tmp111086)))))
              _%stx110511%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e110564%_))
                                                (let* ((_%$tgt110569110595%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e110564%_)))
                                                       (_%$hd110570110598%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt110569110595%_)))
                                                       (_%$tl110571110601%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt110569110595%_)))
                                                       (_%id110605%_
                                                        _%$hd110570110598%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl110571110601%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id110605%_)
                           (cons (__compile _%expr110562%_) '())))
               _%stx110511%_)
              (_%$E110567110592%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E110567110592%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e110564%_))
                                      (let* ((_%$tgt110572110610%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e110564%_)))
                                             (_%$hd110573110613%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt110572110610%_)))
                                             (_%$tl110574110616%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt110572110610%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd110573110613%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl110574110616%_))
                                                        '())
                                                (__compile _%expr110562%_)
                                                (_%$E110566110607%_))
                                            (_%$E110566110607%_)))
                                      (_%$E110566110607%_)))
                                (_%$E110515110527%_)))
                          (_%$E110515110527%_)))
                    (_%$E110515110527%_)))
              (_%$E110515110527%_)))))
    (define __compile-head-id
      (lambda (_%e110509%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e110509%_))
             _%e110509%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd110466%_)
        (let _%recur110468%_ ((_%rest110470%_ _%hd110466%_))
          (let* ((_%$e110472%_ _%rest110470%_)
                 (_%$E110474110492%_
                  (lambda ()
                    (let ((_%$E110475110489%_
                           (lambda ()
                             (let* ((_%$E110476110484%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e110472%_))))
                                    (_%tail110487%_ _%$e110472%_))
                               (__compile-head-id _%tail110487%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110472%_))
                                  '())
                          '()
                          (_%$E110475110489%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e110472%_))
                (let* ((_%$tgt110477110495%_
                        (let () (declare (not safe)) (__AST-e _%$e110472%_)))
                       (_%$hd110478110498%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt110477110495%_)))
                       (_%$tl110479110501%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt110477110495%_)))
                       (_%hd110505%_ _%$hd110478110498%_)
                       (_%rest110507%_ _%$tl110479110501%_))
                  (cons (__compile-head-id _%hd110505%_)
                        (_%recur110468%_ _%rest110507%_)))
                (_%$E110474110492%_))))))
    (define __compile-lambda%
      (lambda (_%stx110413%_)
        (let* ((_%$e110415%_ _%stx110413%_)
               (_%$E110417110429%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110415%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110415%_))
              (let* ((_%$tgt110418110432%_
                      (let () (declare (not safe)) (__AST-e _%$e110415%_)))
                     (_%$hd110419110435%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110418110432%_)))
                     (_%$tl110420110438%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110418110432%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl110420110438%_))
                    (let* ((_%$tgt110421110442%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl110420110438%_)))
                           (_%$hd110422110445%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt110421110442%_)))
                           (_%$tl110423110448%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt110421110442%_)))
                           (_%hd110452%_ _%$hd110422110445%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl110423110448%_))
                          (let* ((_%$tgt110424110454%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl110423110448%_)))
                                 (_%$hd110425110457%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110424110454%_)))
                                 (_%$tl110426110460%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110424110454%_)))
                                 (_%body110464%_ _%$hd110425110457%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl110426110460%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd110452%_)
                                             (cons (__compile _%body110464%_)
                                                   '())))
                                 _%stx110413%_)
                                (_%$E110417110429%_)))
                          (_%$E110417110429%_)))
                    (_%$E110417110429%_)))
              (_%$E110417110429%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx110205%_)
        (letrec ((_%variadic?110207%_
                  (lambda (_%hd110378%_)
                    (let* ((_%$e110380%_ _%hd110378%_)
                           (_%$E110382110398%_
                            (lambda ()
                              (let ((_%$E110383110395%_
                                     (lambda ()
                                       (let ((_%$E110384110392%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e110380%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e110380%_))
                                            '())
                                    '#f
                                    (_%$E110383110395%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e110380%_))
                          (let* ((_%$tgt110385110401%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110380%_)))
                                 (_%$hd110386110404%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110385110401%_)))
                                 (_%$tl110387110407%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110385110401%_)))
                                 (_%rest110411%_ _%$tl110387110407%_))
                            (_%variadic?110207%_ _%rest110411%_))
                          (_%$E110382110398%_)))))
                 (_%arity110208%_
                  (lambda (_%hd110343%_)
                    (let _%lp110345%_ ((_%rest110347%_ _%hd110343%_)
                                       (_%k110348%_ '0))
                      (let* ((_%$e110350%_ _%rest110347%_)
                             (_%$E110352110363%_
                              (lambda ()
                                (let ((_%$E110353110360%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e110350%_)))))
                                  _%k110348%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e110350%_))
                            (let* ((_%$tgt110354110366%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e110350%_)))
                                   (_%$hd110355110369%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt110354110366%_)))
                                   (_%$tl110356110372%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt110354110366%_)))
                                   (_%rest110376%_ _%$tl110356110372%_))
                              (_%lp110345%_
                               _%rest110376%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%k110348%_ '1))))
                            (_%$E110352110363%_))))))
                 (_%generate110209%_
                  (lambda (_%rest110270%_ _%args110271%_ _%len110272%_)
                    (let* ((_%$e110274%_ _%rest110270%_)
                           (_%$E110276110287%_
                            (lambda ()
                              (let ((_%$E110277110284%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e110274%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args110271%_ '())))
                                 _%stx110205%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e110274%_))
                          (let* ((_%$tgt110278110290%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110274%_)))
                                 (_%$hd110279110293%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110278110290%_)))
                                 (_%$tl110280110296%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110278110290%_)))
                                 (_%clause110300%_ _%$hd110279110293%_)
                                 (_%rest110302%_ _%$tl110280110296%_)
                                 (_%$e110304%_ _%clause110300%_)
                                 (_%$E110306110315%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e110304%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e110304%_))
                                (let* ((_%$tgt110307110318%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e110304%_)))
                                       (_%$hd110308110321%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt110307110318%_)))
                                       (_%$tl110309110324%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt110307110318%_)))
                                       (_%hd110328%_ _%$hd110308110321%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl110309110324%_))
                                      (let* ((_%$tgt110310110330%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl110309110324%_)))
                                             (_%$hd110311110333%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt110310110330%_)))
                                             (_%$tl110312110336%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt110310110330%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl110312110336%_))
                                                    '())
                                            (let ((_%clen110340%_
                                                   (_%arity110208%_
                                                    _%hd110328%_))
                                                  (_%cmp110341%_
                                                   (if (_%variadic?110207%_
                                                        _%hd110328%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp110341%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len110272%_ (cons _%clen110340%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause110300%_))
                                      (cons _%args110271%_ '())))
                          _%stx110205%_)
                         (cons (_%generate110209%_
                                _%rest110302%_
                                _%args110271%_
                                _%len110272%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx110205%_))
                                            (_%$E110306110315%_)))
                                      (_%$E110306110315%_)))
                                (_%$E110306110315%_)))
                          (_%$E110276110287%_))))))
          (let* ((_%$e110211%_ _%stx110205%_)
                 (_%$E110213110245%_
                  (lambda ()
                    (let ((_%$E110214110227%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e110211%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e110211%_))
                          (let* ((_%$tgt110215110230%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110211%_)))
                                 (_%$hd110216110233%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110215110230%_)))
                                 (_%$tl110217110236%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110215110230%_)))
                                 (_%clauses110240%_ _%$tl110217110236%_))
                            (let ((_%args110242%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx110205%_))
                                  (_%len110243%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx110205%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args110242%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len110243%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args110242%_ '()))
                                         _%stx110205%_)
                                        '()))
                            '())
                      (cons (_%generate110209%_
                             _%clauses110240%_
                             _%args110242%_
                             _%len110243%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx110205%_)
                                                 '())))
                               _%stx110205%_)))
                          (_%$E110214110227%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e110211%_))
                (let* ((_%$tgt110218110248%_
                        (let () (declare (not safe)) (__AST-e _%$e110211%_)))
                       (_%$hd110219110251%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt110218110248%_)))
                       (_%$tl110220110254%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt110218110248%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl110220110254%_))
                      (let* ((_%$tgt110221110258%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl110220110254%_)))
                             (_%$hd110222110261%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt110221110258%_)))
                             (_%$tl110223110264%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt110221110258%_)))
                             (_%clause110268%_ _%$hd110222110261%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl110223110264%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause110268%_))
                            (_%$E110213110245%_)))
                      (_%$E110213110245%_)))
                (_%$E110213110245%_))))))
    (define __compile-let-form
      (lambda (_%stx109974%_ _%compile-simple109975%_ _%compile-values109976%_)
        (letrec ((_%simple-bind?109978%_
                  (lambda (_%hd110163%_)
                    (let* ((_%hd110164110174%_ _%hd110163%_)
                           (_%else110167110182%_ (lambda () '#f)))
                      (let ((_%K110170110195%_ (lambda (_%id110193%_) '#t))
                            (_%K110169110187%_ (lambda () '#t)))
                        (let ((_%try-match110166110190%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd110164110174%_ '#f))
                                     (_%K110169110187%_)
                                     (_%else110167110182%_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%hd110164110174%_))
                              (let ((_%tl110172110200%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd110164110174%_)))
                                    (_%hd110171110198%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd110164110174%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _%tl110172110200%_))
                                    (let ((_%id110203%_ _%hd110171110198%_))
                                      (_%K110170110195%_ _%id110203%_))
                                    (_%try-match110166110190%_)))
                              (_%try-match110166110190%_)))))))
                 (_%car-e109979%_
                  (lambda (_%hd110161%_)
                    (if (pair? _%hd110161%_)
                        (car _%hd110161%_)
                        _%hd110161%_))))
          (let* ((_%$e109981%_ _%stx109974%_)
                 (_%$E109983110126%_
                  (lambda ()
                    (let ((_%$E109984110006%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e109981%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e109981%_))
                          (let* ((_%$tgt109985110009%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e109981%_)))
                                 (_%$hd109986110012%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt109985110009%_)))
                                 (_%$tl109987110015%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt109985110009%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl109987110015%_))
                                (let* ((_%$tgt109988110019%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl109987110015%_)))
                                       (_%$hd109989110022%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt109988110019%_)))
                                       (_%$tl109990110025%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt109988110019%_)))
                                       (_%hd110029%_ _%$hd109989110022%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl109990110025%_))
                                      (let* ((_%$tgt109991110031%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl109990110025%_)))
                                             (_%$hd109992110034%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt109991110031%_)))
                                             (_%$tl109993110037%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt109991110031%_)))
                                             (_%body110041%_
                                              _%$hd109992110034%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl109993110037%_))
                                                    '())
                                            (let* ((_%hd-ids110081%_
                                                    (map (lambda (_%bind110043%_)
                                                           (let* ((_%$e110045%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind110043%_)
                          (_%$E110047110056%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e110045%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e110045%_))
                         (let* ((_%$tgt110048110059%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e110045%_)))
                                (_%$hd110049110062%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt110048110059%_)))
                                (_%$tl110050110065%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt110048110059%_)))
                                (_%ids110069%_ _%$hd110049110062%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl110050110065%_))
                               (let* ((_%$tgt110051110071%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl110050110065%_)))
                                      (_%$hd110052110074%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt110051110071%_)))
                                      (_%$tl110053110077%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt110051110071%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl110053110077%_))
                                             '())
                                     _%ids110069%_
                                     (_%$E110047110056%_)))
                               (_%$E110047110056%_)))
                         (_%$E110047110056%_))))
                 _%hd110029%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs110121%_
                                                    (map (lambda (_%bind110083%_)
                                                           (let* ((_%$e110085%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind110083%_)
                          (_%$E110087110096%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e110085%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e110085%_))
                         (let* ((_%$tgt110088110099%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e110085%_)))
                                (_%$hd110089110102%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt110088110099%_)))
                                (_%$tl110090110105%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt110088110099%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl110090110105%_))
                               (let* ((_%$tgt110091110109%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl110090110105%_)))
                                      (_%$hd110092110112%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt110091110109%_)))
                                      (_%$tl110093110115%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt110091110109%_)))
                                      (_%expr110119%_ _%$hd110092110112%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl110093110115%_))
                                             '())
                                     (__compile _%expr110119%_)
                                     (_%$E110087110096%_)))
                               (_%$E110087110096%_)))
                         (_%$E110087110096%_))))
                 _%hd110029%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body110123%_
                                                    (__compile
                                                     _%body110041%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__andmap1
                                                     _%simple-bind?109978%_
                                                     _%hd-ids110081%_))
                                                  (_%compile-simple109975%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e109979%_
                                                            _%hd-ids110081%_))
                                                   _%exprs110121%_
                                                   _%body110123%_)
                                                  (_%compile-values109976%_
                                                   _%hd-ids110081%_
                                                   _%exprs110121%_
                                                   _%body110123%_)))
                                            (_%$E109984110006%_)))
                                      (_%$E109984110006%_)))
                                (_%$E109984110006%_)))
                          (_%$E109984110006%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e109981%_))
                (let* ((_%$tgt109994110129%_
                        (let () (declare (not safe)) (__AST-e _%$e109981%_)))
                       (_%$hd109995110132%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt109994110129%_)))
                       (_%$tl109996110135%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt109994110129%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl109996110135%_))
                      (let* ((_%$tgt109997110139%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl109996110135%_)))
                             (_%$hd109998110142%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt109997110139%_)))
                             (_%$tl109999110145%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt109997110139%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd109998110142%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl109999110145%_))
                                (let* ((_%$tgt110000110149%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl109999110145%_)))
                                       (_%$hd110001110152%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt110000110149%_)))
                                       (_%$tl110002110155%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt110000110149%_)))
                                       (_%body110159%_ _%$hd110001110152%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl110002110155%_))
                                              '())
                                      (__compile _%body110159%_)
                                      (_%$E109983110126%_)))
                                (_%$E109983110126%_))
                            (_%$E109983110126%_)))
                      (_%$E109983110126%_)))
                (_%$E109983110126%_))))))
    (define __compile-let-values%
      (lambda (_%stx109786%_)
        (letrec ((_%compile-simple109788%_
                  (lambda (_%hd-ids109970%_ _%exprs109971%_ _%body109972%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp111089
                                        (map __compile-head-id
                                             _%hd-ids109970%_)))
                                   (declare (not safe))
                                   (##map list __tmp111089 _%exprs109971%_))
                                 (cons _%body109972%_ '())))
                     _%stx109786%_)))
                 (_%compile-values109789%_
                  (lambda (_%hd-ids109885%_ _%exprs109886%_ _%body109887%_)
                    (let _%lp109889%_ ((_%rest109891%_ _%hd-ids109885%_)
                                       (_%exprs109892%_ _%exprs109886%_)
                                       (_%bind109893%_ '())
                                       (_%post109894%_ '()))
                      (let* ((_%rest109895109909%_ _%rest109891%_)
                             (_%else109898109917%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind109893%_)
                                             (cons (_%compile-post109790%_
                                                    _%post109894%_
                                                    _%body109887%_)
                                                   '())))
                                 _%stx109786%_))))
                        (let ((_%K109903109953%_
                               (lambda (_%rest109950%_ _%id109951%_)
                                 (_%lp109889%_
                                  _%rest109950%_
                                  (cdr _%exprs109892%_)
                                  (cons (cons (__compile-head-id _%id109951%_)
                                              (cons (car _%exprs109892%_) '()))
                                        _%bind109893%_)
                                  _%post109894%_)))
                              (_%K109900109935%_
                               (lambda (_%rest109921%_ _%hd109922%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd109922%_))
                                     (_%lp109889%_
                                      _%rest109921%_
                                      (cdr _%exprs109892%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd109922%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs109892%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind109893%_)
                                      _%post109894%_)
                                     (if (list? _%hd109922%_)
                                         (let* ((_%len109926%_
                                                 (length _%hd109922%_))
                                                (_%tmp109928%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp109889%_
                                            _%rest109921%_
                                            (cdr _%exprs109892%_)
                                            (cons (cons _%tmp109928%_
                                                        (cons (car _%exprs109892%_)
                                                              '()))
                                                  _%bind109893%_)
                                            (cons (cons _%tmp109928%_
                                                        (cons _%len109926%_
                                                              (let ((__tmp111091
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id109931%_ _%k109932%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id109931%_))
                                   (cons (__SRC__0 _%id109931%_) _%k109932%_)
                                   '#f)))
                            (__tmp111090
                             (let ()
                               (declare (not safe))
                               (##iota _%len109926%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp111091 _%hd109922%_ __tmp111090))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post109894%_)))
                                         (__compile-error__%
                                          _%stx109786%_
                                          _%hd109922%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest109895109909%_))
                              (let ((_%tl109905109958%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest109895109909%_)))
                                    (_%hd109904109956%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest109895109909%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd109904109956%_))
                                    (let ((_%tl109907109963%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd109904109956%_)))
                                          (_%hd109906109961%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd109904109956%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl109907109963%_))
                                          (let ((_%id109966%_
                                                 _%hd109906109961%_)
                                                (_%rest109968%_
                                                 _%tl109905109958%_))
                                            (_%K109903109953%_
                                             _%rest109968%_
                                             _%id109966%_))
                                          (let ((_%hd109943%_
                                                 _%hd109904109956%_)
                                                (_%rest109945%_
                                                 _%tl109905109958%_))
                                            (_%K109900109935%_
                                             _%rest109945%_
                                             _%hd109943%_))))
                                    (let ((_%hd109943%_ _%hd109904109956%_)
                                          (_%rest109945%_ _%tl109905109958%_))
                                      (_%K109900109935%_
                                       _%rest109945%_
                                       _%hd109943%_))))
                              (_%else109898109917%_)))))))
                 (_%compile-post109790%_
                  (lambda (_%post109792%_ _%body109793%_)
                    (let _%lp109795%_ ((_%rest109797%_ _%post109792%_)
                                       (_%check109798%_ '())
                                       (_%bind109799%_ '()))
                      (let* ((_%rest109800109812%_ _%rest109797%_)
                             (_%else109802109820%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp111092
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind109799%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body109793%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx109786%_)
                                                    '())))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp111092
                                          _%check109798%_)))
                                 _%stx109786%_)))
                             (_%K109804109859%_
                              (lambda (_%rest109823%_
                                       _%init109824%_
                                       _%len109825%_
                                       _%tmp109826%_)
                                (_%lp109795%_
                                 _%rest109823%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp109826%_
                                                    (cons _%len109825%_ '())))
                                        _%stx109786%_)
                                       _%check109798%_)
                                 (let ((__tmp111093
                                        (lambda (_%hd109828%_ _%r109829%_)
                                          (let* ((_%hd109830109837%_
                                                  _%hd109828%_)
                                                 (_%E109832109841%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd109830109837%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K109833109847%_
                                                  (lambda (_%k109844%_
                                                           _%id109845%_)
                                                    (cons (cons _%id109845%_
                                                                (cons (cons '##vector-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp109826%_
                                          (cons _%k109844%_ '())))
                              '()))
                  _%r109829%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd109830109837%_))
                                                (let ((_%hd109834109850%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd109830109837%_)))
                                                      (_%tl109835109852%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd109830109837%_))))
                                                  (let* ((_%id109855%_
                                                          _%hd109834109850%_)
                                                         (_%k109857%_
                                                          _%tl109835109852%_))
                                                    (_%K109833109847%_
                                                     _%k109857%_
                                                     _%id109855%_)))
                                                (_%E109832109841%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp111093
                                    _%bind109799%_
                                    _%init109824%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest109800109812%_))
                            (let ((_%hd109805109862%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest109800109812%_)))
                                  (_%tl109806109864%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest109800109812%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd109805109862%_))
                                  (let ((_%hd109807109867%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd109805109862%_)))
                                        (_%tl109808109869%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd109805109862%_))))
                                    (let ((_%tmp109872%_ _%hd109807109867%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl109808109869%_))
                                          (let ((_%hd109809109874%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl109808109869%_)))
                                                (_%tl109810109876%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl109808109869%_))))
                                            (let* ((_%len109879%_
                                                    _%hd109809109874%_)
                                                   (_%init109881%_
                                                    _%tl109810109876%_)
                                                   (_%rest109883%_
                                                    _%tl109806109864%_))
                                              (_%K109804109859%_
                                               _%rest109883%_
                                               _%init109881%_
                                               _%len109879%_
                                               _%tmp109872%_)))
                                          (_%else109802109820%_))))
                                  (_%else109802109820%_)))
                            (_%else109802109820%_)))))))
          (__compile-let-form
           _%stx109786%_
           _%compile-simple109788%_
           _%compile-values109789%_))))
    (define __compile-letrec-values%
      (lambda (_%stx109583%_)
        (letrec ((_%compile-simple109585%_
                  (lambda (_%hd-ids109782%_ _%exprs109783%_ _%body109784%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp111094
                                        (map __compile-head-id
                                             _%hd-ids109782%_)))
                                   (declare (not safe))
                                   (##map list __tmp111094 _%exprs109783%_))
                                 (cons _%body109784%_ '())))
                     _%stx109583%_)))
                 (_%compile-values109586%_
                  (lambda (_%hd-ids109693%_ _%exprs109694%_ _%body109695%_)
                    (let _%lp109697%_ ((_%rest109699%_ _%hd-ids109693%_)
                                       (_%exprs109700%_ _%exprs109694%_)
                                       (_%pre109701%_ '())
                                       (_%bind109702%_ '())
                                       (_%post109703%_ '()))
                      (let* ((_%rest109704109718%_ _%rest109699%_)
                             (_%else109707109726%_
                              (lambda ()
                                (_%compile-inner109587%_
                                 _%pre109701%_
                                 _%bind109702%_
                                 _%post109703%_
                                 _%body109695%_))))
                        (let ((_%K109712109765%_
                               (lambda (_%rest109762%_ _%id109763%_)
                                 (_%lp109697%_
                                  _%rest109762%_
                                  (cdr _%exprs109700%_)
                                  _%pre109701%_
                                  (cons (cons (__compile-head-id _%id109763%_)
                                              (cons (car _%exprs109700%_) '()))
                                        _%bind109702%_)
                                  _%post109703%_)))
                              (_%K109709109747%_
                               (lambda (_%rest109730%_ _%hd109731%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd109731%_))
                                     (_%lp109697%_
                                      _%rest109730%_
                                      (cdr _%exprs109700%_)
                                      _%pre109701%_
                                      (cons (cons (__compile-head-id
                                                   _%hd109731%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs109700%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind109702%_)
                                      _%post109703%_)
                                     (if (list? _%hd109731%_)
                                         (let* ((_%len109735%_
                                                 (length _%hd109731%_))
                                                (_%tmp109737%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp109697%_
                                            _%rest109730%_
                                            (cdr _%exprs109700%_)
                                            (let ((__tmp111095
                                                   (lambda (_%id109740%_
                                                            _%r109741%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id109740%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id109740%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r109741%_)
                 _%r109741%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (__foldl1
                                               __tmp111095
                                               _%pre109701%_
                                               _%hd109731%_))
                                            (cons (cons _%tmp109737%_
                                                        (cons (car _%exprs109700%_)
                                                              '()))
                                                  _%bind109702%_)
                                            (cons (cons _%tmp109737%_
                                                        (cons _%len109735%_
                                                              (let ((__tmp111097
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id109743%_ _%k109744%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id109743%_))
                                   (cons (__SRC__0 _%id109743%_) _%k109744%_)
                                   '#f)))
                            (__tmp111096
                             (let ()
                               (declare (not safe))
                               (##iota _%len109735%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp111097 _%hd109731%_ __tmp111096))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post109703%_)))
                                         (__compile-error__%
                                          _%stx109583%_
                                          _%hd109731%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest109704109718%_))
                              (let ((_%tl109714109770%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest109704109718%_)))
                                    (_%hd109713109768%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest109704109718%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd109713109768%_))
                                    (let ((_%tl109716109775%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd109713109768%_)))
                                          (_%hd109715109773%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd109713109768%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl109716109775%_))
                                          (let ((_%id109778%_
                                                 _%hd109715109773%_)
                                                (_%rest109780%_
                                                 _%tl109714109770%_))
                                            (_%K109712109765%_
                                             _%rest109780%_
                                             _%id109778%_))
                                          (let ((_%hd109755%_
                                                 _%hd109713109768%_)
                                                (_%rest109757%_
                                                 _%tl109714109770%_))
                                            (_%K109709109747%_
                                             _%rest109757%_
                                             _%hd109755%_))))
                                    (let ((_%hd109755%_ _%hd109713109768%_)
                                          (_%rest109757%_ _%tl109714109770%_))
                                      (_%K109709109747%_
                                       _%rest109757%_
                                       _%hd109755%_))))
                              (_%else109707109726%_)))))))
                 (_%compile-inner109587%_
                  (lambda (_%pre109688%_
                           _%bind109689%_
                           _%post109690%_
                           _%body109691%_)
                    (if (null? _%pre109688%_)
                        (_%compile-bind109588%_
                         _%bind109689%_
                         _%post109690%_
                         _%body109691%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre109688%_)
                                     (cons (_%compile-bind109588%_
                                            _%bind109689%_
                                            _%post109690%_
                                            _%body109691%_)
                                           '())))
                         _%stx109583%_))))
                 (_%compile-bind109588%_
                  (lambda (_%bind109684%_ _%post109685%_ _%body109686%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind109684%_)
                                 (cons (_%compile-post109589%_
                                        _%post109685%_
                                        _%body109686%_)
                                       '())))
                     _%stx109583%_)))
                 (_%compile-post109589%_
                  (lambda (_%post109591%_ _%body109592%_)
                    (let _%lp109594%_ ((_%rest109596%_ _%post109591%_)
                                       (_%check109597%_ '())
                                       (_%bind109598%_ '()))
                      (let* ((_%rest109599109611%_ _%rest109596%_)
                             (_%else109601109619%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp111098
                                              (let ((__tmp111099
                                                     (cons _%body109592%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp111099
                                                 _%bind109598%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp111098
                                          _%check109597%_)))
                                 _%stx109583%_)))
                             (_%K109603109658%_
                              (lambda (_%rest109622%_
                                       _%init109623%_
                                       _%len109624%_
                                       _%tmp109625%_)
                                (_%lp109594%_
                                 _%rest109622%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp109625%_
                                                    (cons _%len109624%_ '())))
                                        _%stx109583%_)
                                       _%check109597%_)
                                 (let ((__tmp111100
                                        (lambda (_%hd109627%_ _%r109628%_)
                                          (let* ((_%hd109629109636%_
                                                  _%hd109627%_)
                                                 (_%E109631109640%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd109629109636%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K109632109646%_
                                                  (lambda (_%k109643%_
                                                           _%id109644%_)
                                                    (cons (cons 'set!
                                                                (cons _%id109644%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##vector-ref
                                          (cons _%tmp109625%_
                                                (cons _%k109643%_ '())))
                                    '())))
                  _%r109628%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd109629109636%_))
                                                (let ((_%hd109633109649%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd109629109636%_)))
                                                      (_%tl109634109651%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd109629109636%_))))
                                                  (let* ((_%id109654%_
                                                          _%hd109633109649%_)
                                                         (_%k109656%_
                                                          _%tl109634109651%_))
                                                    (_%K109632109646%_
                                                     _%k109656%_
                                                     _%id109654%_)))
                                                (_%E109631109640%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp111100
                                    _%bind109598%_
                                    _%init109623%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest109599109611%_))
                            (let ((_%hd109604109661%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest109599109611%_)))
                                  (_%tl109605109663%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest109599109611%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd109604109661%_))
                                  (let ((_%hd109606109666%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd109604109661%_)))
                                        (_%tl109607109668%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd109604109661%_))))
                                    (let ((_%tmp109671%_ _%hd109606109666%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl109607109668%_))
                                          (let ((_%hd109608109673%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl109607109668%_)))
                                                (_%tl109609109675%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl109607109668%_))))
                                            (let* ((_%len109678%_
                                                    _%hd109608109673%_)
                                                   (_%init109680%_
                                                    _%tl109609109675%_)
                                                   (_%rest109682%_
                                                    _%tl109605109663%_))
                                              (_%K109603109658%_
                                               _%rest109682%_
                                               _%init109680%_
                                               _%len109678%_
                                               _%tmp109671%_)))
                                          (_%else109601109619%_))))
                                  (_%else109601109619%_)))
                            (_%else109601109619%_)))))))
          (__compile-let-form
           _%stx109583%_
           _%compile-simple109585%_
           _%compile-values109586%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx109334%_)
        (letrec ((_%compile-simple109336%_
                  (lambda (_%hd-ids109579%_ _%exprs109580%_ _%body109581%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp111101
                                        (map __compile-head-id
                                             _%hd-ids109579%_)))
                                   (declare (not safe))
                                   (##map list __tmp111101 _%exprs109580%_))
                                 (cons _%body109581%_ '())))
                     _%stx109334%_)))
                 (_%compile-values109337%_
                  (lambda (_%hd-ids109486%_ _%exprs109487%_ _%body109488%_)
                    (let _%lp109490%_ ((_%rest109492%_ _%hd-ids109486%_)
                                       (_%exprs109493%_ _%exprs109487%_)
                                       (_%bind109494%_ '())
                                       (_%post109495%_ '()))
                      (let* ((_%rest109496109510%_ _%rest109492%_)
                             (_%else109499109518%_
                              (lambda ()
                                (_%compile-bind109338%_
                                 _%bind109494%_
                                 _%post109495%_
                                 _%body109488%_))))
                        (let ((_%K109504109562%_
                               (lambda (_%rest109557%_ _%hd109558%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd109558%_))
                                     (let ((_%id109560%_
                                            (__SRC__0 _%hd109558%_)))
                                       (_%lp109490%_
                                        _%rest109557%_
                                        (cdr _%exprs109493%_)
                                        (cons (cons _%id109560%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind109494%_)
                                        (cons (cons _%id109560%_
                                                    (cons (car _%exprs109493%_)
                                                          '()))
                                              _%post109495%_)))
                                     (_%lp109490%_
                                      _%rest109557%_
                                      (cdr _%exprs109493%_)
                                      _%bind109494%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs109493%_)
                                                        '()))
                                            _%post109495%_)))))
                              (_%K109501109542%_
                               (lambda (_%rest109522%_ _%hd109523%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd109523%_))
                                     (let ((_%id109526%_
                                            (__SRC__0 _%hd109523%_)))
                                       (_%lp109490%_
                                        _%rest109522%_
                                        (cdr _%exprs109493%_)
                                        (cons (cons _%id109526%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind109494%_)
                                        (cons (cons _%id109526%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs109493%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post109495%_)))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (__AST-e _%hd109523%_)))
                                         (_%lp109490%_
                                          _%rest109522%_
                                          (cdr _%exprs109493%_)
                                          _%bind109494%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs109493%_)
                                                            '()))
                                                _%post109495%_))
                                         (if (list? _%hd109523%_)
                                             (let* ((_%len109530%_
                                                     (length _%hd109523%_))
                                                    (_%tmp109532%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp109490%_
                                                _%rest109522%_
                                                (cdr _%exprs109493%_)
                                                (let ((__tmp111102
                                                       (lambda (_%id109535%_
                                                                _%r109536%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id109535%_))
                     (cons (cons (__SRC__0 _%id109535%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r109536%_)
                     _%r109536%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldl1
                                                   __tmp111102
                                                   _%bind109494%_
                                                   _%hd109523%_))
                                                (cons (cons _%tmp109532%_
                                                            (cons (car _%exprs109493%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len109530%_
                                (let ((__tmp111104
                                       (lambda (_%id109538%_ _%k109539%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id109538%_))
                                             (cons (__SRC__0 _%id109538%_)
                                                   _%k109539%_)
                                             '#f)))
                                      (__tmp111103
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len109530%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp111104
                                   _%hd109523%_
                                   __tmp111103)))))
              _%post109495%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx109334%_
                                              _%hd109523%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest109496109510%_))
                              (let ((_%tl109506109567%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest109496109510%_)))
                                    (_%hd109505109565%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest109496109510%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd109505109565%_))
                                    (let ((_%tl109508109572%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd109505109565%_)))
                                          (_%hd109507109570%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd109505109565%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl109508109572%_))
                                          (let ((_%hd109575%_
                                                 _%hd109507109570%_)
                                                (_%rest109577%_
                                                 _%tl109506109567%_))
                                            (_%K109504109562%_
                                             _%rest109577%_
                                             _%hd109575%_))
                                          (let ((_%hd109550%_
                                                 _%hd109505109565%_)
                                                (_%rest109552%_
                                                 _%tl109506109567%_))
                                            (_%K109501109542%_
                                             _%rest109552%_
                                             _%hd109550%_))))
                                    (let ((_%hd109550%_ _%hd109505109565%_)
                                          (_%rest109552%_ _%tl109506109567%_))
                                      (_%K109501109542%_
                                       _%rest109552%_
                                       _%hd109550%_))))
                              (_%else109499109518%_)))))))
                 (_%compile-bind109338%_
                  (lambda (_%bind109482%_ _%post109483%_ _%body109484%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind109482%_)
                                 (cons (_%compile-post109339%_
                                        _%post109483%_
                                        _%body109484%_)
                                       '())))
                     _%stx109334%_)))
                 (_%compile-post109339%_
                  (lambda (_%post109341%_ _%body109342%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp111105
                                  (let ((__tmp111107
                                         (lambda (_%hd109344%_ _%r109345%_)
                                           (let* ((_%hd109346109369%_
                                                   _%hd109344%_)
                                                  (_%E109350109373%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd109346109369%_
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
                                             (let ((_%K109363109467%_
                                                    (lambda (_%expr109465%_)
                                                      (cons _%expr109465%_
                                                            _%r109345%_)))
                                                   (_%K109358109445%_
                                                    (lambda (_%expr109442%_
                                                             _%id109443%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id109443%_ (cons _%expr109442%_ '())))
                     _%stx109334%_)
                    _%r109345%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K109351109412%_
                                                    (lambda (_%init109377%_
                                                             _%len109378%_
                                                             _%expr109379%_
                                                             _%tmp109380%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp109380%_
                                             (cons _%expr109379%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp109380%_
                                                    (cons _%len109378%_ '())))
                                        _%stx109334%_)
                                       (let ((__tmp111108
                                              (map (lambda (_%hd109382%_)
                                                     (let* ((_%hd109383109390%_
                                                             _%hd109382%_)
                                                            (_%E109385109394%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd109383109390%_
                                '([id . k])))
                       '#!void))
                    (_%K109386109400%_
                     (lambda (_%k109397%_ _%id109398%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id109398%_
                                    (cons (cons '##vector-ref
                                                (cons _%tmp109380%_
                                                      (cons _%k109397%_ '())))
                                          '())))
                        _%stx109334%_))))
               (if (let () (declare (not safe)) (##pair? _%hd109383109390%_))
                   (let ((_%hd109387109403%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd109383109390%_)))
                         (_%tl109388109405%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd109383109390%_))))
                     (let* ((_%id109408%_ _%hd109387109403%_)
                            (_%k109410%_ _%tl109388109405%_))
                       (_%K109386109400%_ _%k109410%_ _%id109408%_)))
                   (_%E109385109394%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init109377%_)))
                                         (declare (not safe))
                                         (__foldr1 cons '() __tmp111108)))))
                     _%stx109334%_)
                    _%r109345%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match110961110962%_
                                                       (lambda (_%hd109352109415%_
                                                                _%tl109353109417%_
                                                                _%hd109354109422%_
                                                                _%tl109355109424%_)
                                                         (let ((_%tmp109420%_
                                                                _%hd109352109415%_)
                                                               (_%expr109427%_
                                                                _%hd109354109422%_))
                                                           (_%E109350109373%_))))
                                                      (_%__match110955110956%_
                                                       (lambda (_%hd109352109415%_
                                                                _%tl109353109417%_)
                                                         (let ((_%tmp109420%_
                                                                _%hd109352109415%_))
                                                           (_%E109350109373%_)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##pair? _%hd109346109369%_))
                                                     (let ((_%tl109365109472%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd109346109369%_)))
                                                           (_%hd109364109470%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd109346109369%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd109364109470%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _%tl109365109472%_))
                       (let ((_%tl109367109477%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl109365109472%_)))
                             (_%hd109366109475%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl109365109472%_))))
                         (if (let ()
                               (declare (not safe))
                               (##null? _%tl109367109477%_))
                             (let ((_%expr109480%_ _%hd109366109475%_))
                               (_%K109363109467%_ _%expr109480%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%tl109367109477%_))
                                 (let ((_%tl109357109431%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl109367109477%_)))
                                       (_%hd109356109429%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl109367109477%_))))
                                   (let ((_%tmp109420%_ _%hd109364109470%_)
                                         (_%expr109427%_ _%hd109366109475%_)
                                         (_%len109434%_ _%hd109356109429%_)
                                         (_%init109436%_ _%tl109357109431%_))
                                     (_%K109351109412%_
                                      _%init109436%_
                                      _%len109434%_
                                      _%expr109427%_
                                      _%tmp109420%_)))
                                 (_%__match110961110962%_
                                  _%hd109364109470%_
                                  _%tl109365109472%_
                                  _%hd109366109475%_
                                  _%tl109367109477%_))))
                       (_%__match110955110956%_
                        _%hd109364109470%_
                        _%tl109365109472%_))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _%tl109365109472%_))
                       (let ((_%tl109362109457%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl109365109472%_)))
                             (_%hd109361109455%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl109365109472%_))))
                         (if (let ()
                               (declare (not safe))
                               (##null? _%tl109362109457%_))
                             (let ((_%id109453%_ _%hd109364109470%_)
                                   (_%expr109460%_ _%hd109361109455%_))
                               (_%K109358109445%_ _%expr109460%_ _%id109453%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%tl109362109457%_))
                                 (let ((_%tl109357109431%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl109362109457%_)))
                                       (_%hd109356109429%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl109362109457%_))))
                                   (let ((_%tmp109420%_ _%hd109364109470%_)
                                         (_%expr109427%_ _%hd109361109455%_)
                                         (_%len109434%_ _%hd109356109429%_)
                                         (_%init109436%_ _%tl109357109431%_))
                                     (_%K109351109412%_
                                      _%init109436%_
                                      _%len109434%_
                                      _%expr109427%_
                                      _%tmp109420%_)))
                                 (_%__match110961110962%_
                                  _%hd109364109470%_
                                  _%tl109365109472%_
                                  _%hd109361109455%_
                                  _%tl109362109457%_))))
                       (_%__match110955110956%_
                        _%hd109364109470%_
                        _%tl109365109472%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E109350109373%_)))))))
                                        (__tmp111106 (list _%body109342%_)))
                                    (declare (not safe))
                                    (__foldl1
                                     __tmp111107
                                     __tmp111106
                                     _%post109341%_))))
                             (declare (not safe))
                             (__foldr1 cons '() __tmp111105)))
                     _%stx109334%_))))
          (__compile-let-form
           _%stx109334%_
           _%compile-simple109336%_
           _%compile-values109337%_))))
    (define __compile-call%
      (lambda (_%stx109294%_)
        (let* ((_%$e109296%_ _%stx109294%_)
               (_%$E109298109307%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109296%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109296%_))
              (let* ((_%$tgt109299109310%_
                      (let () (declare (not safe)) (__AST-e _%$e109296%_)))
                     (_%$hd109300109313%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109299109310%_)))
                     (_%$tl109301109316%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109299109310%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109301109316%_))
                    (let* ((_%$tgt109302109320%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109301109316%_)))
                           (_%$hd109303109323%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109302109320%_)))
                           (_%$tl109304109326%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109302109320%_)))
                           (_%rator109330%_ _%$hd109303109323%_)
                           (_%rands109332%_ _%$tl109304109326%_))
                      (__SRC__%
                       (cons (__compile _%rator109330%_)
                             (map __compile _%rands109332%_))
                       _%stx109294%_))
                    (_%$E109298109307%_)))
              (_%$E109298109307%_)))))
    (define __compile-ref%
      (lambda (_%stx109256%_)
        (let* ((_%$e109258%_ _%stx109256%_)
               (_%$E109260109269%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109258%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109258%_))
              (let* ((_%$tgt109261109272%_
                      (let () (declare (not safe)) (__AST-e _%$e109258%_)))
                     (_%$hd109262109275%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109261109272%_)))
                     (_%$tl109263109278%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109261109272%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109263109278%_))
                    (let* ((_%$tgt109264109282%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109263109278%_)))
                           (_%$hd109265109285%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109264109282%_)))
                           (_%$tl109266109288%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109264109282%_)))
                           (_%id109292%_ _%$hd109265109285%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl109266109288%_))
                                  '())
                          (__SRC__% _%id109292%_ _%stx109256%_)
                          (_%$E109260109269%_)))
                    (_%$E109260109269%_)))
              (_%$E109260109269%_)))))
    (define __compile-setq%
      (lambda (_%stx109203%_)
        (let* ((_%$e109205%_ _%stx109203%_)
               (_%$E109207109219%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109205%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109205%_))
              (let* ((_%$tgt109208109222%_
                      (let () (declare (not safe)) (__AST-e _%$e109205%_)))
                     (_%$hd109209109225%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109208109222%_)))
                     (_%$tl109210109228%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109208109222%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109210109228%_))
                    (let* ((_%$tgt109211109232%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109210109228%_)))
                           (_%$hd109212109235%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109211109232%_)))
                           (_%$tl109213109238%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109211109232%_)))
                           (_%id109242%_ _%$hd109212109235%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl109213109238%_))
                          (let* ((_%$tgt109214109244%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl109213109238%_)))
                                 (_%$hd109215109247%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt109214109244%_)))
                                 (_%$tl109216109250%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt109214109244%_)))
                                 (_%expr109254%_ _%$hd109215109247%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl109216109250%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id109242%_
                                              _%stx109203%_)
                                             (cons (__compile _%expr109254%_)
                                                   '())))
                                 _%stx109203%_)
                                (_%$E109207109219%_)))
                          (_%$E109207109219%_)))
                    (_%$E109207109219%_)))
              (_%$E109207109219%_)))))
    (define __compile-if%
      (lambda (_%stx109135%_)
        (let* ((_%$e109137%_ _%stx109135%_)
               (_%$E109139109154%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109137%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109137%_))
              (let* ((_%$tgt109140109157%_
                      (let () (declare (not safe)) (__AST-e _%$e109137%_)))
                     (_%$hd109141109160%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109140109157%_)))
                     (_%$tl109142109163%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109140109157%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109142109163%_))
                    (let* ((_%$tgt109143109167%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109142109163%_)))
                           (_%$hd109144109170%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109143109167%_)))
                           (_%$tl109145109173%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109143109167%_)))
                           (_%p109177%_ _%$hd109144109170%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl109145109173%_))
                          (let* ((_%$tgt109146109179%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl109145109173%_)))
                                 (_%$hd109147109182%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt109146109179%_)))
                                 (_%$tl109148109185%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt109146109179%_)))
                                 (_%t109189%_ _%$hd109147109182%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl109148109185%_))
                                (let* ((_%$tgt109149109191%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl109148109185%_)))
                                       (_%$hd109150109194%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt109149109191%_)))
                                       (_%$tl109151109197%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt109149109191%_)))
                                       (_%f109201%_ _%$hd109150109194%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl109151109197%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p109177%_)
                                                   (cons (__compile
                                                          _%t109189%_)
                                                         (cons (__compile
                                                                _%f109201%_)
                                                               '()))))
                                       _%stx109135%_)
                                      (_%$E109139109154%_)))
                                (_%$E109139109154%_)))
                          (_%$E109139109154%_)))
                    (_%$E109139109154%_)))
              (_%$E109139109154%_)))))
    (define __compile-quote%
      (lambda (_%stx109097%_)
        (let* ((_%$e109099%_ _%stx109097%_)
               (_%$E109101109110%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109099%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109099%_))
              (let* ((_%$tgt109102109113%_
                      (let () (declare (not safe)) (__AST-e _%$e109099%_)))
                     (_%$hd109103109116%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109102109113%_)))
                     (_%$tl109104109119%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109102109113%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109104109119%_))
                    (let* ((_%$tgt109105109123%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109104109119%_)))
                           (_%$hd109106109126%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109105109123%_)))
                           (_%$tl109107109129%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109105109123%_)))
                           (_%e109133%_ _%$hd109106109126%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl109107109129%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e109133%_))
                                       '()))
                           _%stx109097%_)
                          (_%$E109101109110%_)))
                    (_%$E109101109110%_)))
              (_%$E109101109110%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx109059%_)
        (let* ((_%$e109061%_ _%stx109059%_)
               (_%$E109063109072%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109061%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109061%_))
              (let* ((_%$tgt109064109075%_
                      (let () (declare (not safe)) (__AST-e _%$e109061%_)))
                     (_%$hd109065109078%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109064109075%_)))
                     (_%$tl109066109081%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109064109075%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109066109081%_))
                    (let* ((_%$tgt109067109085%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109066109081%_)))
                           (_%$hd109068109088%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109067109085%_)))
                           (_%$tl109069109091%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109067109085%_)))
                           (_%e109095%_ _%$hd109068109088%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl109069109091%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e109095%_ '()))
                           _%stx109059%_)
                          (_%$E109063109072%_)))
                    (_%$E109063109072%_)))
              (_%$E109063109072%_)))))
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

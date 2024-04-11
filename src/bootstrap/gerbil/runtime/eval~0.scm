(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1712823026)
  (begin
    (define __syntax::t
      (let ((__tmp113032 (list)) (__tmp113031 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp113032
         '(e id)
         __tmp113031
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args112836%_
        (apply make-instance __syntax::t _%$args112836%_)))
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
      (let ((__tmp113034 (list __syntax::t))
            (__tmp113033 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp113034
         '()
         __tmp113033
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args112833%_
        (apply make-instance __core-form::t _%$args112833%_)))
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
      (let ((__tmp113036 (list __core-form::t))
            (__tmp113035 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp113036
         '()
         __tmp113035
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args112830%_
        (apply make-instance __core-expression::t _%$args112830%_)))
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
      (let ((__tmp113038 (list __core-form::t))
            (__tmp113037 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp113038
         '()
         __tmp113037
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args112827%_
        (apply make-instance __core-special-form::t _%$args112827%_)))
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
      (lambda (_%id112825%_)
        (let ((__tmp113039
               (let () (declare (not safe)) (__AST-e _%id112825%_))))
          (declare (not safe))
          (hash-get __core __tmp113039))))
    (define __core-bound-id?__%
      (lambda (_%id112808%_ _%is?112809%_)
        (let ((_%$e112811%_ (__core-resolve _%id112808%_)))
          (if _%$e112811%_ (_%is?112809%_ _%$e112811%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id112818%_)
        (let ((_%is?112820%_ true))
          (__core-bound-id?__% _%id112818%_ _%is?112820%_))))
    (define __core-bound-id?
      (lambda _g113041_
        (let ((_g113040_ (let () (declare (not safe)) (##length _g113041_))))
          (cond ((let () (declare (not safe)) (##fx= _g113040_ 1))
                 (apply __core-bound-id?__0 _g113041_))
                ((let () (declare (not safe)) (##fx= _g113040_ 2))
                 (apply __core-bound-id?__% _g113041_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g113041_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id112791%_ _%e112792%_ _%make112793%_)
        (let ((__tmp113042
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e112792%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e112792%_
                   (_%make112793%_ _%e112792%_ _%id112791%_))))
          (declare (not safe))
          (hash-put! __core _%id112791%_ __tmp113042))))
    (define __core-bind-syntax!__0
      (lambda (_%id112798%_ _%e112799%_)
        (let ((_%make112801%_ make-__syntax))
          (__core-bind-syntax!__% _%id112798%_ _%e112799%_ _%make112801%_))))
    (define __core-bind-syntax!
      (lambda _g113044_
        (let ((_g113043_ (let () (declare (not safe)) (##length _g113044_))))
          (cond ((let () (declare (not safe)) (##fx= _g113043_ 2))
                 (apply __core-bind-syntax!__0 _g113044_))
                ((let () (declare (not safe)) (##fx= _g113043_ 3))
                 (apply __core-bind-syntax!__% _g113044_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g113044_))))))
    (define __SRC__%
      (lambda (_%e112771%_ _%src-stx112772%_)
        (if (or (pair? _%e112771%_) (symbol? _%e112771%_))
            (let ((__tmp113045
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx112772%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx112772%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e112771%_ __tmp113045))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e112771%_ 'gerbil#AST::t))
                (let ((__tmp113047
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e112771%_ '1 '#f '#f)))
                      (__tmp113046
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e112771%_)))))
                  (declare (not safe))
                  (##make-source __tmp113047 __tmp113046))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e112771%_))))))
    (define __SRC__0
      (lambda (_%e112783%_)
        (let ((_%src-stx112785%_ '#f))
          (__SRC__% _%e112783%_ _%src-stx112785%_))))
    (define __SRC
      (lambda _g113049_
        (let ((_g113048_ (let () (declare (not safe)) (##length _g113049_))))
          (cond ((let () (declare (not safe)) (##fx= _g113048_ 1))
                 (apply __SRC__0 _g113049_))
                ((let () (declare (not safe)) (##fx= _g113048_ 2))
                 (apply __SRC__% _g113049_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g113049_))))))
    (define __locat
      (lambda (_%loc112768%_)
        (if (let () (declare (not safe)) (##locat? _%loc112768%_))
            _%loc112768%_
            '#f)))
    (define __check-values
      (lambda (_%obj112763%_ _%k112764%_)
        (let ((_%count112766%_
               (if (let () (declare (not safe)) (##values? _%obj112763%_))
                   (let ()
                     (declare (not safe))
                     (##vector-length _%obj112763%_))
                   '1)))
          (if (fx= _%count112766%_ _%k112764%_)
              '#!void
              (let ((__tmp113051
                     (if (fx< _%count112766%_ _%k112764%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp113050
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj112763%_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _%obj112763%_))
                         _%obj112763%_)))
                (declare (not safe))
                (error __tmp113051 __tmp113050 _%k112764%_))))))
    (define __compile
      (lambda (_%stx112732%_)
        (let* ((_%$e112734%_ _%stx112732%_)
               (_%$E112736112742%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e112734%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e112734%_))
              (let* ((_%$tgt112737112745%_
                      (let () (declare (not safe)) (__AST-e _%$e112734%_)))
                     (_%$hd112738112748%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt112737112745%_)))
                     (_%$tl112739112751%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt112737112745%_)))
                     (_%form112755%_ _%$hd112738112748%_)
                     (_%$e112757%_ (__core-resolve _%form112755%_)))
                (if _%$e112757%_
                    ((lambda (_%bind112760%_)
                       ((##structure-ref _%bind112760%_ '1 __syntax::t '#f)
                        _%stx112732%_))
                     _%$e112757%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx112732%_
                       _%form112755%_))))
              (_%$E112736112742%_)))))
    (define __compile-error__%
      (lambda (_%stx112719%_ _%detail112720%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx112719%_
           _%detail112720%_))))
    (define __compile-error__0
      (lambda (_%stx112725%_)
        (let ((_%detail112727%_ '#f))
          (__compile-error__% _%stx112725%_ _%detail112727%_))))
    (define __compile-error
      (lambda _g113053_
        (let ((_g113052_ (let () (declare (not safe)) (##length _g113053_))))
          (cond ((let () (declare (not safe)) (##fx= _g113052_ 1))
                 (apply __compile-error__0 _g113053_))
                ((let () (declare (not safe)) (##fx= _g113052_ 2))
                 (apply __compile-error__% _g113053_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g113053_))))))
    (define __compile-ignore%
      (lambda (_%stx112716%_) (__SRC__% ''#!void _%stx112716%_)))
    (define __compile-begin%
      (lambda (_%stx112691%_)
        (let* ((_%$e112693%_ _%stx112691%_)
               (_%$E112695112701%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e112693%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e112693%_))
              (let* ((_%$tgt112696112704%_
                      (let () (declare (not safe)) (__AST-e _%$e112693%_)))
                     (_%$hd112697112707%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt112696112704%_)))
                     (_%$tl112698112710%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt112696112704%_)))
                     (_%body112714%_ _%$tl112698112710%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body112714%_))
                 _%stx112691%_))
              (_%$E112695112701%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx112666%_)
        (let* ((_%$e112668%_ _%stx112666%_)
               (_%$E112670112676%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e112668%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e112668%_))
              (let* ((_%$tgt112671112679%_
                      (let () (declare (not safe)) (__AST-e _%$e112668%_)))
                     (_%$hd112672112682%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt112671112679%_)))
                     (_%$tl112673112685%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt112671112679%_)))
                     (_%body112689%_ _%$tl112673112685%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body112689%_)))
                 _%stx112666%_))
              (_%$E112670112676%_)))))
    (define __compile-import%
      (lambda (_%stx112641%_)
        (let* ((_%$e112643%_ _%stx112641%_)
               (_%$E112645112651%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e112643%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e112643%_))
              (let* ((_%$tgt112646112654%_
                      (let () (declare (not safe)) (__AST-e _%$e112643%_)))
                     (_%$hd112647112657%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt112646112654%_)))
                     (_%$tl112648112660%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt112646112654%_)))
                     (_%body112664%_ _%$tl112648112660%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body112664%_ '())) '()))
                 _%stx112641%_))
              (_%$E112645112651%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx112588%_)
        (let* ((_%$e112590%_ _%stx112588%_)
               (_%$E112592112604%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e112590%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e112590%_))
              (let* ((_%$tgt112593112607%_
                      (let () (declare (not safe)) (__AST-e _%$e112590%_)))
                     (_%$hd112594112610%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt112593112607%_)))
                     (_%$tl112595112613%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt112593112607%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl112595112613%_))
                    (let* ((_%$tgt112596112617%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl112595112613%_)))
                           (_%$hd112597112620%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt112596112617%_)))
                           (_%$tl112598112623%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt112596112617%_)))
                           (_%ann112627%_ _%$hd112597112620%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl112598112623%_))
                          (let* ((_%$tgt112599112629%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl112598112623%_)))
                                 (_%$hd112600112632%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112599112629%_)))
                                 (_%$tl112601112635%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112599112629%_)))
                                 (_%expr112639%_ _%$hd112600112632%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl112601112635%_))
                                        '())
                                (__compile _%expr112639%_)
                                (_%$E112592112604%_)))
                          (_%$E112592112604%_)))
                    (_%$E112592112604%_)))
              (_%$E112592112604%_)))))
    (define __compile-define-values%
      (lambda (_%stx112479%_)
        (let* ((_%$e112481%_ _%stx112479%_)
               (_%$E112483112495%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e112481%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e112481%_))
              (let* ((_%$tgt112484112498%_
                      (let () (declare (not safe)) (__AST-e _%$e112481%_)))
                     (_%$hd112485112501%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt112484112498%_)))
                     (_%$tl112486112504%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt112484112498%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl112486112504%_))
                    (let* ((_%$tgt112487112508%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl112486112504%_)))
                           (_%$hd112488112511%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt112487112508%_)))
                           (_%$tl112489112514%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt112487112508%_)))
                           (_%hd112518%_ _%$hd112488112511%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl112489112514%_))
                          (let* ((_%$tgt112490112520%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl112489112514%_)))
                                 (_%$hd112491112523%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112490112520%_)))
                                 (_%$tl112492112526%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112490112520%_)))
                                 (_%expr112530%_ _%$hd112491112523%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl112492112526%_))
                                        '())
                                (let* ((_%$e112532%_ _%hd112518%_)
                                       (_%$E112534112575%_
                                        (lambda ()
                                          (let ((_%$E112535112560%_
                                                 (lambda ()
                                                   (let* ((_%$E112536112547%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e112532%_))))
                  (_%ids112550%_ _%hd112518%_)
                  (_%len112552%_ (length _%ids112550%_))
                  (_%tmp112554%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp112554%_
                                       (cons (__compile _%expr112530%_) '())))
                           _%stx112479%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp112554%_
                                             (cons _%len112552%_ '())))
                                 _%stx112479%_)
                                (let ((__tmp113054
                                       (let ((__tmp113056
                                              (lambda (_%id112557%_
                                                       _%k112558%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id112557%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id112557%_)
                         (cons (cons '##vector-ref
                                     (cons _%tmp112554%_
                                           (cons _%k112558%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx112479%_)
                                                    '#f)))
                                             (__tmp113055
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len112552%_))))
                                         (declare (not safe))
                                         (__filter-map2
                                          __tmp113056
                                          _%ids112550%_
                                          __tmp113055))))
                                  (declare (not safe))
                                  (__foldr1 cons '() __tmp113054)))))
              _%stx112479%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e112532%_))
                                                (let* ((_%$tgt112537112563%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e112532%_)))
                                                       (_%$hd112538112566%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt112537112563%_)))
                                                       (_%$tl112539112569%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt112537112563%_)))
                                                       (_%id112573%_
                                                        _%$hd112538112566%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl112539112569%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id112573%_)
                           (cons (__compile _%expr112530%_) '())))
               _%stx112479%_)
              (_%$E112535112560%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E112535112560%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e112532%_))
                                      (let* ((_%$tgt112540112578%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e112532%_)))
                                             (_%$hd112541112581%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt112540112578%_)))
                                             (_%$tl112542112584%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt112540112578%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd112541112581%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl112542112584%_))
                                                        '())
                                                (__compile _%expr112530%_)
                                                (_%$E112534112575%_))
                                            (_%$E112534112575%_)))
                                      (_%$E112534112575%_)))
                                (_%$E112483112495%_)))
                          (_%$E112483112495%_)))
                    (_%$E112483112495%_)))
              (_%$E112483112495%_)))))
    (define __compile-head-id
      (lambda (_%e112477%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e112477%_))
             _%e112477%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd112434%_)
        (let _%recur112436%_ ((_%rest112438%_ _%hd112434%_))
          (let* ((_%$e112440%_ _%rest112438%_)
                 (_%$E112442112460%_
                  (lambda ()
                    (let ((_%$E112443112457%_
                           (lambda ()
                             (let* ((_%$E112444112452%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e112440%_))))
                                    (_%tail112455%_ _%$e112440%_))
                               (__compile-head-id _%tail112455%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e112440%_))
                                  '())
                          '()
                          (_%$E112443112457%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e112440%_))
                (let* ((_%$tgt112445112463%_
                        (let () (declare (not safe)) (__AST-e _%$e112440%_)))
                       (_%$hd112446112466%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt112445112463%_)))
                       (_%$tl112447112469%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt112445112463%_)))
                       (_%hd112473%_ _%$hd112446112466%_)
                       (_%rest112475%_ _%$tl112447112469%_))
                  (cons (__compile-head-id _%hd112473%_)
                        (_%recur112436%_ _%rest112475%_)))
                (_%$E112442112460%_))))))
    (define __compile-lambda%
      (lambda (_%stx112381%_)
        (let* ((_%$e112383%_ _%stx112381%_)
               (_%$E112385112397%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e112383%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e112383%_))
              (let* ((_%$tgt112386112400%_
                      (let () (declare (not safe)) (__AST-e _%$e112383%_)))
                     (_%$hd112387112403%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt112386112400%_)))
                     (_%$tl112388112406%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt112386112400%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl112388112406%_))
                    (let* ((_%$tgt112389112410%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl112388112406%_)))
                           (_%$hd112390112413%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt112389112410%_)))
                           (_%$tl112391112416%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt112389112410%_)))
                           (_%hd112420%_ _%$hd112390112413%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl112391112416%_))
                          (let* ((_%$tgt112392112422%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl112391112416%_)))
                                 (_%$hd112393112425%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112392112422%_)))
                                 (_%$tl112394112428%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112392112422%_)))
                                 (_%body112432%_ _%$hd112393112425%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl112394112428%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd112420%_)
                                             (cons (__compile _%body112432%_)
                                                   '())))
                                 _%stx112381%_)
                                (_%$E112385112397%_)))
                          (_%$E112385112397%_)))
                    (_%$E112385112397%_)))
              (_%$E112385112397%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx112173%_)
        (letrec ((_%variadic?112175%_
                  (lambda (_%hd112346%_)
                    (let* ((_%$e112348%_ _%hd112346%_)
                           (_%$E112350112366%_
                            (lambda ()
                              (let ((_%$E112351112363%_
                                     (lambda ()
                                       (let ((_%$E112352112360%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e112348%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e112348%_))
                                            '())
                                    '#f
                                    (_%$E112351112363%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e112348%_))
                          (let* ((_%$tgt112353112369%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e112348%_)))
                                 (_%$hd112354112372%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112353112369%_)))
                                 (_%$tl112355112375%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112353112369%_)))
                                 (_%rest112379%_ _%$tl112355112375%_))
                            (_%variadic?112175%_ _%rest112379%_))
                          (_%$E112350112366%_)))))
                 (_%arity112176%_
                  (lambda (_%hd112311%_)
                    (let _%lp112313%_ ((_%rest112315%_ _%hd112311%_)
                                       (_%k112316%_ '0))
                      (let* ((_%$e112318%_ _%rest112315%_)
                             (_%$E112320112331%_
                              (lambda ()
                                (let ((_%$E112321112328%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e112318%_)))))
                                  _%k112316%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e112318%_))
                            (let* ((_%$tgt112322112334%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e112318%_)))
                                   (_%$hd112323112337%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt112322112334%_)))
                                   (_%$tl112324112340%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt112322112334%_)))
                                   (_%rest112344%_ _%$tl112324112340%_))
                              (_%lp112313%_
                               _%rest112344%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%k112316%_ '1))))
                            (_%$E112320112331%_))))))
                 (_%generate112177%_
                  (lambda (_%rest112238%_ _%args112239%_ _%len112240%_)
                    (let* ((_%$e112242%_ _%rest112238%_)
                           (_%$E112244112255%_
                            (lambda ()
                              (let ((_%$E112245112252%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e112242%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args112239%_ '())))
                                 _%stx112173%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e112242%_))
                          (let* ((_%$tgt112246112258%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e112242%_)))
                                 (_%$hd112247112261%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112246112258%_)))
                                 (_%$tl112248112264%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112246112258%_)))
                                 (_%clause112268%_ _%$hd112247112261%_)
                                 (_%rest112270%_ _%$tl112248112264%_)
                                 (_%$e112272%_ _%clause112268%_)
                                 (_%$E112274112283%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e112272%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e112272%_))
                                (let* ((_%$tgt112275112286%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e112272%_)))
                                       (_%$hd112276112289%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt112275112286%_)))
                                       (_%$tl112277112292%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt112275112286%_)))
                                       (_%hd112296%_ _%$hd112276112289%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl112277112292%_))
                                      (let* ((_%$tgt112278112298%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl112277112292%_)))
                                             (_%$hd112279112301%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt112278112298%_)))
                                             (_%$tl112280112304%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt112278112298%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl112280112304%_))
                                                    '())
                                            (let ((_%clen112308%_
                                                   (_%arity112176%_
                                                    _%hd112296%_))
                                                  (_%cmp112309%_
                                                   (if (_%variadic?112175%_
                                                        _%hd112296%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp112309%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len112240%_ (cons _%clen112308%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause112268%_))
                                      (cons _%args112239%_ '())))
                          _%stx112173%_)
                         (cons (_%generate112177%_
                                _%rest112270%_
                                _%args112239%_
                                _%len112240%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx112173%_))
                                            (_%$E112274112283%_)))
                                      (_%$E112274112283%_)))
                                (_%$E112274112283%_)))
                          (_%$E112244112255%_))))))
          (let* ((_%$e112179%_ _%stx112173%_)
                 (_%$E112181112213%_
                  (lambda ()
                    (let ((_%$E112182112195%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e112179%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e112179%_))
                          (let* ((_%$tgt112183112198%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e112179%_)))
                                 (_%$hd112184112201%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112183112198%_)))
                                 (_%$tl112185112204%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112183112198%_)))
                                 (_%clauses112208%_ _%$tl112185112204%_))
                            (let ((_%args112210%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx112173%_))
                                  (_%len112211%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx112173%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args112210%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len112211%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args112210%_ '()))
                                         _%stx112173%_)
                                        '()))
                            '())
                      (cons (_%generate112177%_
                             _%clauses112208%_
                             _%args112210%_
                             _%len112211%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx112173%_)
                                                 '())))
                               _%stx112173%_)))
                          (_%$E112182112195%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e112179%_))
                (let* ((_%$tgt112186112216%_
                        (let () (declare (not safe)) (__AST-e _%$e112179%_)))
                       (_%$hd112187112219%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt112186112216%_)))
                       (_%$tl112188112222%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt112186112216%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl112188112222%_))
                      (let* ((_%$tgt112189112226%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl112188112222%_)))
                             (_%$hd112190112229%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt112189112226%_)))
                             (_%$tl112191112232%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt112189112226%_)))
                             (_%clause112236%_ _%$hd112190112229%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl112191112232%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause112236%_))
                            (_%$E112181112213%_)))
                      (_%$E112181112213%_)))
                (_%$E112181112213%_))))))
    (define __compile-let-form
      (lambda (_%stx111942%_ _%compile-simple111943%_ _%compile-values111944%_)
        (letrec ((_%simple-bind?111946%_
                  (lambda (_%hd112131%_)
                    (let* ((_%hd112132112142%_ _%hd112131%_)
                           (_%else112135112150%_ (lambda () '#f)))
                      (let ((_%K112138112163%_ (lambda (_%id112161%_) '#t))
                            (_%K112137112155%_ (lambda () '#t)))
                        (let ((_%try-match112134112158%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd112132112142%_ '#f))
                                     (_%K112137112155%_)
                                     (_%else112135112150%_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%hd112132112142%_))
                              (let ((_%tl112140112168%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd112132112142%_)))
                                    (_%hd112139112166%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd112132112142%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _%tl112140112168%_))
                                    (let ((_%id112171%_ _%hd112139112166%_))
                                      (_%K112138112163%_ _%id112171%_))
                                    (_%try-match112134112158%_)))
                              (_%try-match112134112158%_)))))))
                 (_%car-e111947%_
                  (lambda (_%hd112129%_)
                    (if (pair? _%hd112129%_)
                        (car _%hd112129%_)
                        _%hd112129%_))))
          (let* ((_%$e111949%_ _%stx111942%_)
                 (_%$E111951112094%_
                  (lambda ()
                    (let ((_%$E111952111974%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e111949%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e111949%_))
                          (let* ((_%$tgt111953111977%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e111949%_)))
                                 (_%$hd111954111980%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111953111977%_)))
                                 (_%$tl111955111983%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111953111977%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl111955111983%_))
                                (let* ((_%$tgt111956111987%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl111955111983%_)))
                                       (_%$hd111957111990%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt111956111987%_)))
                                       (_%$tl111958111993%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt111956111987%_)))
                                       (_%hd111997%_ _%$hd111957111990%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl111958111993%_))
                                      (let* ((_%$tgt111959111999%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl111958111993%_)))
                                             (_%$hd111960112002%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt111959111999%_)))
                                             (_%$tl111961112005%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt111959111999%_)))
                                             (_%body112009%_
                                              _%$hd111960112002%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl111961112005%_))
                                                    '())
                                            (let* ((_%hd-ids112049%_
                                                    (map (lambda (_%bind112011%_)
                                                           (let* ((_%$e112013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind112011%_)
                          (_%$E112015112024%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e112013%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e112013%_))
                         (let* ((_%$tgt112016112027%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e112013%_)))
                                (_%$hd112017112030%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt112016112027%_)))
                                (_%$tl112018112033%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt112016112027%_)))
                                (_%ids112037%_ _%$hd112017112030%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl112018112033%_))
                               (let* ((_%$tgt112019112039%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl112018112033%_)))
                                      (_%$hd112020112042%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt112019112039%_)))
                                      (_%$tl112021112045%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt112019112039%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl112021112045%_))
                                             '())
                                     _%ids112037%_
                                     (_%$E112015112024%_)))
                               (_%$E112015112024%_)))
                         (_%$E112015112024%_))))
                 _%hd111997%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs112089%_
                                                    (map (lambda (_%bind112051%_)
                                                           (let* ((_%$e112053%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind112051%_)
                          (_%$E112055112064%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e112053%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e112053%_))
                         (let* ((_%$tgt112056112067%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e112053%_)))
                                (_%$hd112057112070%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt112056112067%_)))
                                (_%$tl112058112073%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt112056112067%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl112058112073%_))
                               (let* ((_%$tgt112059112077%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl112058112073%_)))
                                      (_%$hd112060112080%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt112059112077%_)))
                                      (_%$tl112061112083%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt112059112077%_)))
                                      (_%expr112087%_ _%$hd112060112080%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl112061112083%_))
                                             '())
                                     (__compile _%expr112087%_)
                                     (_%$E112055112064%_)))
                               (_%$E112055112064%_)))
                         (_%$E112055112064%_))))
                 _%hd111997%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body112091%_
                                                    (__compile
                                                     _%body112009%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__andmap1
                                                     _%simple-bind?111946%_
                                                     _%hd-ids112049%_))
                                                  (_%compile-simple111943%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e111947%_
                                                            _%hd-ids112049%_))
                                                   _%exprs112089%_
                                                   _%body112091%_)
                                                  (_%compile-values111944%_
                                                   _%hd-ids112049%_
                                                   _%exprs112089%_
                                                   _%body112091%_)))
                                            (_%$E111952111974%_)))
                                      (_%$E111952111974%_)))
                                (_%$E111952111974%_)))
                          (_%$E111952111974%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e111949%_))
                (let* ((_%$tgt111962112097%_
                        (let () (declare (not safe)) (__AST-e _%$e111949%_)))
                       (_%$hd111963112100%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt111962112097%_)))
                       (_%$tl111964112103%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt111962112097%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl111964112103%_))
                      (let* ((_%$tgt111965112107%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl111964112103%_)))
                             (_%$hd111966112110%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt111965112107%_)))
                             (_%$tl111967112113%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt111965112107%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd111966112110%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl111967112113%_))
                                (let* ((_%$tgt111968112117%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl111967112113%_)))
                                       (_%$hd111969112120%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt111968112117%_)))
                                       (_%$tl111970112123%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt111968112117%_)))
                                       (_%body112127%_ _%$hd111969112120%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl111970112123%_))
                                              '())
                                      (__compile _%body112127%_)
                                      (_%$E111951112094%_)))
                                (_%$E111951112094%_))
                            (_%$E111951112094%_)))
                      (_%$E111951112094%_)))
                (_%$E111951112094%_))))))
    (define __compile-let-values%
      (lambda (_%stx111754%_)
        (letrec ((_%compile-simple111756%_
                  (lambda (_%hd-ids111938%_ _%exprs111939%_ _%body111940%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp113057
                                        (map __compile-head-id
                                             _%hd-ids111938%_)))
                                   (declare (not safe))
                                   (##map list __tmp113057 _%exprs111939%_))
                                 (cons _%body111940%_ '())))
                     _%stx111754%_)))
                 (_%compile-values111757%_
                  (lambda (_%hd-ids111853%_ _%exprs111854%_ _%body111855%_)
                    (let _%lp111857%_ ((_%rest111859%_ _%hd-ids111853%_)
                                       (_%exprs111860%_ _%exprs111854%_)
                                       (_%bind111861%_ '())
                                       (_%post111862%_ '()))
                      (let* ((_%rest111863111877%_ _%rest111859%_)
                             (_%else111866111885%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind111861%_)
                                             (cons (_%compile-post111758%_
                                                    _%post111862%_
                                                    _%body111855%_)
                                                   '())))
                                 _%stx111754%_))))
                        (let ((_%K111871111921%_
                               (lambda (_%rest111918%_ _%id111919%_)
                                 (_%lp111857%_
                                  _%rest111918%_
                                  (cdr _%exprs111860%_)
                                  (cons (cons (__compile-head-id _%id111919%_)
                                              (cons (car _%exprs111860%_) '()))
                                        _%bind111861%_)
                                  _%post111862%_)))
                              (_%K111868111903%_
                               (lambda (_%rest111889%_ _%hd111890%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd111890%_))
                                     (_%lp111857%_
                                      _%rest111889%_
                                      (cdr _%exprs111860%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd111890%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs111860%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind111861%_)
                                      _%post111862%_)
                                     (if (list? _%hd111890%_)
                                         (let* ((_%len111894%_
                                                 (length _%hd111890%_))
                                                (_%tmp111896%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp111857%_
                                            _%rest111889%_
                                            (cdr _%exprs111860%_)
                                            (cons (cons _%tmp111896%_
                                                        (cons (car _%exprs111860%_)
                                                              '()))
                                                  _%bind111861%_)
                                            (cons (cons _%tmp111896%_
                                                        (cons _%len111894%_
                                                              (let ((__tmp113059
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id111899%_ _%k111900%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id111899%_))
                                   (cons (__SRC__0 _%id111899%_) _%k111900%_)
                                   '#f)))
                            (__tmp113058
                             (let ()
                               (declare (not safe))
                               (##iota _%len111894%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp113059 _%hd111890%_ __tmp113058))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post111862%_)))
                                         (__compile-error__%
                                          _%stx111754%_
                                          _%hd111890%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest111863111877%_))
                              (let ((_%tl111873111926%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest111863111877%_)))
                                    (_%hd111872111924%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest111863111877%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd111872111924%_))
                                    (let ((_%tl111875111931%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd111872111924%_)))
                                          (_%hd111874111929%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd111872111924%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl111875111931%_))
                                          (let ((_%id111934%_
                                                 _%hd111874111929%_)
                                                (_%rest111936%_
                                                 _%tl111873111926%_))
                                            (_%K111871111921%_
                                             _%rest111936%_
                                             _%id111934%_))
                                          (let ((_%hd111911%_
                                                 _%hd111872111924%_)
                                                (_%rest111913%_
                                                 _%tl111873111926%_))
                                            (_%K111868111903%_
                                             _%rest111913%_
                                             _%hd111911%_))))
                                    (let ((_%hd111911%_ _%hd111872111924%_)
                                          (_%rest111913%_ _%tl111873111926%_))
                                      (_%K111868111903%_
                                       _%rest111913%_
                                       _%hd111911%_))))
                              (_%else111866111885%_)))))))
                 (_%compile-post111758%_
                  (lambda (_%post111760%_ _%body111761%_)
                    (let _%lp111763%_ ((_%rest111765%_ _%post111760%_)
                                       (_%check111766%_ '())
                                       (_%bind111767%_ '()))
                      (let* ((_%rest111768111780%_ _%rest111765%_)
                             (_%else111770111788%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp113060
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind111767%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body111761%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx111754%_)
                                                    '())))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp113060
                                          _%check111766%_)))
                                 _%stx111754%_)))
                             (_%K111772111827%_
                              (lambda (_%rest111791%_
                                       _%init111792%_
                                       _%len111793%_
                                       _%tmp111794%_)
                                (_%lp111763%_
                                 _%rest111791%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp111794%_
                                                    (cons _%len111793%_ '())))
                                        _%stx111754%_)
                                       _%check111766%_)
                                 (let ((__tmp113061
                                        (lambda (_%hd111796%_ _%r111797%_)
                                          (let* ((_%hd111798111805%_
                                                  _%hd111796%_)
                                                 (_%E111800111809%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd111798111805%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K111801111815%_
                                                  (lambda (_%k111812%_
                                                           _%id111813%_)
                                                    (cons (cons _%id111813%_
                                                                (cons (cons '##vector-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp111794%_
                                          (cons _%k111812%_ '())))
                              '()))
                  _%r111797%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd111798111805%_))
                                                (let ((_%hd111802111818%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd111798111805%_)))
                                                      (_%tl111803111820%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd111798111805%_))))
                                                  (let* ((_%id111823%_
                                                          _%hd111802111818%_)
                                                         (_%k111825%_
                                                          _%tl111803111820%_))
                                                    (_%K111801111815%_
                                                     _%k111825%_
                                                     _%id111823%_)))
                                                (_%E111800111809%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp113061
                                    _%bind111767%_
                                    _%init111792%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest111768111780%_))
                            (let ((_%hd111773111830%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest111768111780%_)))
                                  (_%tl111774111832%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest111768111780%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd111773111830%_))
                                  (let ((_%hd111775111835%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd111773111830%_)))
                                        (_%tl111776111837%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd111773111830%_))))
                                    (let ((_%tmp111840%_ _%hd111775111835%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl111776111837%_))
                                          (let ((_%hd111777111842%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl111776111837%_)))
                                                (_%tl111778111844%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl111776111837%_))))
                                            (let* ((_%len111847%_
                                                    _%hd111777111842%_)
                                                   (_%init111849%_
                                                    _%tl111778111844%_)
                                                   (_%rest111851%_
                                                    _%tl111774111832%_))
                                              (_%K111772111827%_
                                               _%rest111851%_
                                               _%init111849%_
                                               _%len111847%_
                                               _%tmp111840%_)))
                                          (_%else111770111788%_))))
                                  (_%else111770111788%_)))
                            (_%else111770111788%_)))))))
          (__compile-let-form
           _%stx111754%_
           _%compile-simple111756%_
           _%compile-values111757%_))))
    (define __compile-letrec-values%
      (lambda (_%stx111551%_)
        (letrec ((_%compile-simple111553%_
                  (lambda (_%hd-ids111750%_ _%exprs111751%_ _%body111752%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp113062
                                        (map __compile-head-id
                                             _%hd-ids111750%_)))
                                   (declare (not safe))
                                   (##map list __tmp113062 _%exprs111751%_))
                                 (cons _%body111752%_ '())))
                     _%stx111551%_)))
                 (_%compile-values111554%_
                  (lambda (_%hd-ids111661%_ _%exprs111662%_ _%body111663%_)
                    (let _%lp111665%_ ((_%rest111667%_ _%hd-ids111661%_)
                                       (_%exprs111668%_ _%exprs111662%_)
                                       (_%pre111669%_ '())
                                       (_%bind111670%_ '())
                                       (_%post111671%_ '()))
                      (let* ((_%rest111672111686%_ _%rest111667%_)
                             (_%else111675111694%_
                              (lambda ()
                                (_%compile-inner111555%_
                                 _%pre111669%_
                                 _%bind111670%_
                                 _%post111671%_
                                 _%body111663%_))))
                        (let ((_%K111680111733%_
                               (lambda (_%rest111730%_ _%id111731%_)
                                 (_%lp111665%_
                                  _%rest111730%_
                                  (cdr _%exprs111668%_)
                                  _%pre111669%_
                                  (cons (cons (__compile-head-id _%id111731%_)
                                              (cons (car _%exprs111668%_) '()))
                                        _%bind111670%_)
                                  _%post111671%_)))
                              (_%K111677111715%_
                               (lambda (_%rest111698%_ _%hd111699%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd111699%_))
                                     (_%lp111665%_
                                      _%rest111698%_
                                      (cdr _%exprs111668%_)
                                      _%pre111669%_
                                      (cons (cons (__compile-head-id
                                                   _%hd111699%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs111668%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind111670%_)
                                      _%post111671%_)
                                     (if (list? _%hd111699%_)
                                         (let* ((_%len111703%_
                                                 (length _%hd111699%_))
                                                (_%tmp111705%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp111665%_
                                            _%rest111698%_
                                            (cdr _%exprs111668%_)
                                            (let ((__tmp113063
                                                   (lambda (_%id111708%_
                                                            _%r111709%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id111708%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id111708%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r111709%_)
                 _%r111709%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (__foldl1
                                               __tmp113063
                                               _%pre111669%_
                                               _%hd111699%_))
                                            (cons (cons _%tmp111705%_
                                                        (cons (car _%exprs111668%_)
                                                              '()))
                                                  _%bind111670%_)
                                            (cons (cons _%tmp111705%_
                                                        (cons _%len111703%_
                                                              (let ((__tmp113065
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id111711%_ _%k111712%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id111711%_))
                                   (cons (__SRC__0 _%id111711%_) _%k111712%_)
                                   '#f)))
                            (__tmp113064
                             (let ()
                               (declare (not safe))
                               (##iota _%len111703%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp113065 _%hd111699%_ __tmp113064))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post111671%_)))
                                         (__compile-error__%
                                          _%stx111551%_
                                          _%hd111699%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest111672111686%_))
                              (let ((_%tl111682111738%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest111672111686%_)))
                                    (_%hd111681111736%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest111672111686%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd111681111736%_))
                                    (let ((_%tl111684111743%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd111681111736%_)))
                                          (_%hd111683111741%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd111681111736%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl111684111743%_))
                                          (let ((_%id111746%_
                                                 _%hd111683111741%_)
                                                (_%rest111748%_
                                                 _%tl111682111738%_))
                                            (_%K111680111733%_
                                             _%rest111748%_
                                             _%id111746%_))
                                          (let ((_%hd111723%_
                                                 _%hd111681111736%_)
                                                (_%rest111725%_
                                                 _%tl111682111738%_))
                                            (_%K111677111715%_
                                             _%rest111725%_
                                             _%hd111723%_))))
                                    (let ((_%hd111723%_ _%hd111681111736%_)
                                          (_%rest111725%_ _%tl111682111738%_))
                                      (_%K111677111715%_
                                       _%rest111725%_
                                       _%hd111723%_))))
                              (_%else111675111694%_)))))))
                 (_%compile-inner111555%_
                  (lambda (_%pre111656%_
                           _%bind111657%_
                           _%post111658%_
                           _%body111659%_)
                    (if (null? _%pre111656%_)
                        (_%compile-bind111556%_
                         _%bind111657%_
                         _%post111658%_
                         _%body111659%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre111656%_)
                                     (cons (_%compile-bind111556%_
                                            _%bind111657%_
                                            _%post111658%_
                                            _%body111659%_)
                                           '())))
                         _%stx111551%_))))
                 (_%compile-bind111556%_
                  (lambda (_%bind111652%_ _%post111653%_ _%body111654%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind111652%_)
                                 (cons (_%compile-post111557%_
                                        _%post111653%_
                                        _%body111654%_)
                                       '())))
                     _%stx111551%_)))
                 (_%compile-post111557%_
                  (lambda (_%post111559%_ _%body111560%_)
                    (let _%lp111562%_ ((_%rest111564%_ _%post111559%_)
                                       (_%check111565%_ '())
                                       (_%bind111566%_ '()))
                      (let* ((_%rest111567111579%_ _%rest111564%_)
                             (_%else111569111587%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp113066
                                              (let ((__tmp113067
                                                     (cons _%body111560%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp113067
                                                 _%bind111566%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp113066
                                          _%check111565%_)))
                                 _%stx111551%_)))
                             (_%K111571111626%_
                              (lambda (_%rest111590%_
                                       _%init111591%_
                                       _%len111592%_
                                       _%tmp111593%_)
                                (_%lp111562%_
                                 _%rest111590%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp111593%_
                                                    (cons _%len111592%_ '())))
                                        _%stx111551%_)
                                       _%check111565%_)
                                 (let ((__tmp113068
                                        (lambda (_%hd111595%_ _%r111596%_)
                                          (let* ((_%hd111597111604%_
                                                  _%hd111595%_)
                                                 (_%E111599111608%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd111597111604%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K111600111614%_
                                                  (lambda (_%k111611%_
                                                           _%id111612%_)
                                                    (cons (cons 'set!
                                                                (cons _%id111612%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##vector-ref
                                          (cons _%tmp111593%_
                                                (cons _%k111611%_ '())))
                                    '())))
                  _%r111596%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd111597111604%_))
                                                (let ((_%hd111601111617%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd111597111604%_)))
                                                      (_%tl111602111619%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd111597111604%_))))
                                                  (let* ((_%id111622%_
                                                          _%hd111601111617%_)
                                                         (_%k111624%_
                                                          _%tl111602111619%_))
                                                    (_%K111600111614%_
                                                     _%k111624%_
                                                     _%id111622%_)))
                                                (_%E111599111608%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp113068
                                    _%bind111566%_
                                    _%init111591%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest111567111579%_))
                            (let ((_%hd111572111629%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest111567111579%_)))
                                  (_%tl111573111631%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest111567111579%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd111572111629%_))
                                  (let ((_%hd111574111634%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd111572111629%_)))
                                        (_%tl111575111636%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd111572111629%_))))
                                    (let ((_%tmp111639%_ _%hd111574111634%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl111575111636%_))
                                          (let ((_%hd111576111641%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl111575111636%_)))
                                                (_%tl111577111643%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl111575111636%_))))
                                            (let* ((_%len111646%_
                                                    _%hd111576111641%_)
                                                   (_%init111648%_
                                                    _%tl111577111643%_)
                                                   (_%rest111650%_
                                                    _%tl111573111631%_))
                                              (_%K111571111626%_
                                               _%rest111650%_
                                               _%init111648%_
                                               _%len111646%_
                                               _%tmp111639%_)))
                                          (_%else111569111587%_))))
                                  (_%else111569111587%_)))
                            (_%else111569111587%_)))))))
          (__compile-let-form
           _%stx111551%_
           _%compile-simple111553%_
           _%compile-values111554%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx111302%_)
        (letrec ((_%compile-simple111304%_
                  (lambda (_%hd-ids111547%_ _%exprs111548%_ _%body111549%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp113069
                                        (map __compile-head-id
                                             _%hd-ids111547%_)))
                                   (declare (not safe))
                                   (##map list __tmp113069 _%exprs111548%_))
                                 (cons _%body111549%_ '())))
                     _%stx111302%_)))
                 (_%compile-values111305%_
                  (lambda (_%hd-ids111454%_ _%exprs111455%_ _%body111456%_)
                    (let _%lp111458%_ ((_%rest111460%_ _%hd-ids111454%_)
                                       (_%exprs111461%_ _%exprs111455%_)
                                       (_%bind111462%_ '())
                                       (_%post111463%_ '()))
                      (let* ((_%rest111464111478%_ _%rest111460%_)
                             (_%else111467111486%_
                              (lambda ()
                                (_%compile-bind111306%_
                                 _%bind111462%_
                                 _%post111463%_
                                 _%body111456%_))))
                        (let ((_%K111472111530%_
                               (lambda (_%rest111525%_ _%hd111526%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd111526%_))
                                     (let ((_%id111528%_
                                            (__SRC__0 _%hd111526%_)))
                                       (_%lp111458%_
                                        _%rest111525%_
                                        (cdr _%exprs111461%_)
                                        (cons (cons _%id111528%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind111462%_)
                                        (cons (cons _%id111528%_
                                                    (cons (car _%exprs111461%_)
                                                          '()))
                                              _%post111463%_)))
                                     (_%lp111458%_
                                      _%rest111525%_
                                      (cdr _%exprs111461%_)
                                      _%bind111462%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs111461%_)
                                                        '()))
                                            _%post111463%_)))))
                              (_%K111469111510%_
                               (lambda (_%rest111490%_ _%hd111491%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd111491%_))
                                     (let ((_%id111494%_
                                            (__SRC__0 _%hd111491%_)))
                                       (_%lp111458%_
                                        _%rest111490%_
                                        (cdr _%exprs111461%_)
                                        (cons (cons _%id111494%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind111462%_)
                                        (cons (cons _%id111494%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs111461%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post111463%_)))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (__AST-e _%hd111491%_)))
                                         (_%lp111458%_
                                          _%rest111490%_
                                          (cdr _%exprs111461%_)
                                          _%bind111462%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs111461%_)
                                                            '()))
                                                _%post111463%_))
                                         (if (list? _%hd111491%_)
                                             (let* ((_%len111498%_
                                                     (length _%hd111491%_))
                                                    (_%tmp111500%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp111458%_
                                                _%rest111490%_
                                                (cdr _%exprs111461%_)
                                                (let ((__tmp113070
                                                       (lambda (_%id111503%_
                                                                _%r111504%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id111503%_))
                     (cons (cons (__SRC__0 _%id111503%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r111504%_)
                     _%r111504%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldl1
                                                   __tmp113070
                                                   _%bind111462%_
                                                   _%hd111491%_))
                                                (cons (cons _%tmp111500%_
                                                            (cons (car _%exprs111461%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len111498%_
                                (let ((__tmp113072
                                       (lambda (_%id111506%_ _%k111507%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id111506%_))
                                             (cons (__SRC__0 _%id111506%_)
                                                   _%k111507%_)
                                             '#f)))
                                      (__tmp113071
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len111498%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp113072
                                   _%hd111491%_
                                   __tmp113071)))))
              _%post111463%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx111302%_
                                              _%hd111491%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest111464111478%_))
                              (let ((_%tl111474111535%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest111464111478%_)))
                                    (_%hd111473111533%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest111464111478%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd111473111533%_))
                                    (let ((_%tl111476111540%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd111473111533%_)))
                                          (_%hd111475111538%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd111473111533%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl111476111540%_))
                                          (let ((_%hd111543%_
                                                 _%hd111475111538%_)
                                                (_%rest111545%_
                                                 _%tl111474111535%_))
                                            (_%K111472111530%_
                                             _%rest111545%_
                                             _%hd111543%_))
                                          (let ((_%hd111518%_
                                                 _%hd111473111533%_)
                                                (_%rest111520%_
                                                 _%tl111474111535%_))
                                            (_%K111469111510%_
                                             _%rest111520%_
                                             _%hd111518%_))))
                                    (let ((_%hd111518%_ _%hd111473111533%_)
                                          (_%rest111520%_ _%tl111474111535%_))
                                      (_%K111469111510%_
                                       _%rest111520%_
                                       _%hd111518%_))))
                              (_%else111467111486%_)))))))
                 (_%compile-bind111306%_
                  (lambda (_%bind111450%_ _%post111451%_ _%body111452%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind111450%_)
                                 (cons (_%compile-post111307%_
                                        _%post111451%_
                                        _%body111452%_)
                                       '())))
                     _%stx111302%_)))
                 (_%compile-post111307%_
                  (lambda (_%post111309%_ _%body111310%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp113073
                                  (let ((__tmp113075
                                         (lambda (_%hd111312%_ _%r111313%_)
                                           (let* ((_%hd111314111337%_
                                                   _%hd111312%_)
                                                  (_%E111318111341%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd111314111337%_
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
                                             (let ((_%K111331111435%_
                                                    (lambda (_%expr111433%_)
                                                      (cons _%expr111433%_
                                                            _%r111313%_)))
                                                   (_%K111326111413%_
                                                    (lambda (_%expr111410%_
                                                             _%id111411%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id111411%_ (cons _%expr111410%_ '())))
                     _%stx111302%_)
                    _%r111313%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K111319111380%_
                                                    (lambda (_%init111345%_
                                                             _%len111346%_
                                                             _%expr111347%_
                                                             _%tmp111348%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp111348%_
                                             (cons _%expr111347%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp111348%_
                                                    (cons _%len111346%_ '())))
                                        _%stx111302%_)
                                       (let ((__tmp113076
                                              (map (lambda (_%hd111350%_)
                                                     (let* ((_%hd111351111358%_
                                                             _%hd111350%_)
                                                            (_%E111353111362%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd111351111358%_
                                '([id . k])))
                       '#!void))
                    (_%K111354111368%_
                     (lambda (_%k111365%_ _%id111366%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id111366%_
                                    (cons (cons '##vector-ref
                                                (cons _%tmp111348%_
                                                      (cons _%k111365%_ '())))
                                          '())))
                        _%stx111302%_))))
               (if (let () (declare (not safe)) (##pair? _%hd111351111358%_))
                   (let ((_%hd111355111371%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd111351111358%_)))
                         (_%tl111356111373%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd111351111358%_))))
                     (let* ((_%id111376%_ _%hd111355111371%_)
                            (_%k111378%_ _%tl111356111373%_))
                       (_%K111354111368%_ _%k111378%_ _%id111376%_)))
                   (_%E111353111362%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init111345%_)))
                                         (declare (not safe))
                                         (__foldr1 cons '() __tmp113076)))))
                     _%stx111302%_)
                    _%r111313%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match112929112930%_
                                                       (lambda (_%hd111320111383%_
                                                                _%tl111321111385%_
                                                                _%hd111322111390%_
                                                                _%tl111323111392%_)
                                                         (let ((_%tmp111388%_
                                                                _%hd111320111383%_)
                                                               (_%expr111395%_
                                                                _%hd111322111390%_))
                                                           (_%E111318111341%_))))
                                                      (_%__match112923112924%_
                                                       (lambda (_%hd111320111383%_
                                                                _%tl111321111385%_)
                                                         (let ((_%tmp111388%_
                                                                _%hd111320111383%_))
                                                           (_%E111318111341%_)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##pair? _%hd111314111337%_))
                                                     (let ((_%tl111333111440%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd111314111337%_)))
                                                           (_%hd111332111438%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd111314111337%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd111332111438%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _%tl111333111440%_))
                       (let ((_%tl111335111445%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl111333111440%_)))
                             (_%hd111334111443%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl111333111440%_))))
                         (if (let ()
                               (declare (not safe))
                               (##null? _%tl111335111445%_))
                             (let ((_%expr111448%_ _%hd111334111443%_))
                               (_%K111331111435%_ _%expr111448%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%tl111335111445%_))
                                 (let ((_%tl111325111399%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl111335111445%_)))
                                       (_%hd111324111397%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl111335111445%_))))
                                   (let ((_%tmp111388%_ _%hd111332111438%_)
                                         (_%expr111395%_ _%hd111334111443%_)
                                         (_%len111402%_ _%hd111324111397%_)
                                         (_%init111404%_ _%tl111325111399%_))
                                     (_%K111319111380%_
                                      _%init111404%_
                                      _%len111402%_
                                      _%expr111395%_
                                      _%tmp111388%_)))
                                 (_%__match112929112930%_
                                  _%hd111332111438%_
                                  _%tl111333111440%_
                                  _%hd111334111443%_
                                  _%tl111335111445%_))))
                       (_%__match112923112924%_
                        _%hd111332111438%_
                        _%tl111333111440%_))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _%tl111333111440%_))
                       (let ((_%tl111330111425%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl111333111440%_)))
                             (_%hd111329111423%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl111333111440%_))))
                         (if (let ()
                               (declare (not safe))
                               (##null? _%tl111330111425%_))
                             (let ((_%id111421%_ _%hd111332111438%_)
                                   (_%expr111428%_ _%hd111329111423%_))
                               (_%K111326111413%_ _%expr111428%_ _%id111421%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%tl111330111425%_))
                                 (let ((_%tl111325111399%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl111330111425%_)))
                                       (_%hd111324111397%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl111330111425%_))))
                                   (let ((_%tmp111388%_ _%hd111332111438%_)
                                         (_%expr111395%_ _%hd111329111423%_)
                                         (_%len111402%_ _%hd111324111397%_)
                                         (_%init111404%_ _%tl111325111399%_))
                                     (_%K111319111380%_
                                      _%init111404%_
                                      _%len111402%_
                                      _%expr111395%_
                                      _%tmp111388%_)))
                                 (_%__match112929112930%_
                                  _%hd111332111438%_
                                  _%tl111333111440%_
                                  _%hd111329111423%_
                                  _%tl111330111425%_))))
                       (_%__match112923112924%_
                        _%hd111332111438%_
                        _%tl111333111440%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E111318111341%_)))))))
                                        (__tmp113074 (list _%body111310%_)))
                                    (declare (not safe))
                                    (__foldl1
                                     __tmp113075
                                     __tmp113074
                                     _%post111309%_))))
                             (declare (not safe))
                             (__foldr1 cons '() __tmp113073)))
                     _%stx111302%_))))
          (__compile-let-form
           _%stx111302%_
           _%compile-simple111304%_
           _%compile-values111305%_))))
    (define __compile-call%
      (lambda (_%stx111262%_)
        (let* ((_%$e111264%_ _%stx111262%_)
               (_%$E111266111275%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111264%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111264%_))
              (let* ((_%$tgt111267111278%_
                      (let () (declare (not safe)) (__AST-e _%$e111264%_)))
                     (_%$hd111268111281%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111267111278%_)))
                     (_%$tl111269111284%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111267111278%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111269111284%_))
                    (let* ((_%$tgt111270111288%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111269111284%_)))
                           (_%$hd111271111291%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111270111288%_)))
                           (_%$tl111272111294%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111270111288%_)))
                           (_%rator111298%_ _%$hd111271111291%_)
                           (_%rands111300%_ _%$tl111272111294%_))
                      (__SRC__%
                       (cons (__compile _%rator111298%_)
                             (map __compile _%rands111300%_))
                       _%stx111262%_))
                    (_%$E111266111275%_)))
              (_%$E111266111275%_)))))
    (define __compile-ref%
      (lambda (_%stx111224%_)
        (let* ((_%$e111226%_ _%stx111224%_)
               (_%$E111228111237%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111226%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111226%_))
              (let* ((_%$tgt111229111240%_
                      (let () (declare (not safe)) (__AST-e _%$e111226%_)))
                     (_%$hd111230111243%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111229111240%_)))
                     (_%$tl111231111246%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111229111240%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111231111246%_))
                    (let* ((_%$tgt111232111250%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111231111246%_)))
                           (_%$hd111233111253%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111232111250%_)))
                           (_%$tl111234111256%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111232111250%_)))
                           (_%id111260%_ _%$hd111233111253%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111234111256%_))
                                  '())
                          (__SRC__% _%id111260%_ _%stx111224%_)
                          (_%$E111228111237%_)))
                    (_%$E111228111237%_)))
              (_%$E111228111237%_)))))
    (define __compile-setq%
      (lambda (_%stx111171%_)
        (let* ((_%$e111173%_ _%stx111171%_)
               (_%$E111175111187%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111173%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111173%_))
              (let* ((_%$tgt111176111190%_
                      (let () (declare (not safe)) (__AST-e _%$e111173%_)))
                     (_%$hd111177111193%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111176111190%_)))
                     (_%$tl111178111196%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111176111190%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111178111196%_))
                    (let* ((_%$tgt111179111200%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111178111196%_)))
                           (_%$hd111180111203%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111179111200%_)))
                           (_%$tl111181111206%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111179111200%_)))
                           (_%id111210%_ _%$hd111180111203%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl111181111206%_))
                          (let* ((_%$tgt111182111212%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111181111206%_)))
                                 (_%$hd111183111215%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111182111212%_)))
                                 (_%$tl111184111218%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111182111212%_)))
                                 (_%expr111222%_ _%$hd111183111215%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl111184111218%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id111210%_
                                              _%stx111171%_)
                                             (cons (__compile _%expr111222%_)
                                                   '())))
                                 _%stx111171%_)
                                (_%$E111175111187%_)))
                          (_%$E111175111187%_)))
                    (_%$E111175111187%_)))
              (_%$E111175111187%_)))))
    (define __compile-if%
      (lambda (_%stx111103%_)
        (let* ((_%$e111105%_ _%stx111103%_)
               (_%$E111107111122%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111105%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111105%_))
              (let* ((_%$tgt111108111125%_
                      (let () (declare (not safe)) (__AST-e _%$e111105%_)))
                     (_%$hd111109111128%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111108111125%_)))
                     (_%$tl111110111131%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111108111125%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111110111131%_))
                    (let* ((_%$tgt111111111135%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111110111131%_)))
                           (_%$hd111112111138%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111111111135%_)))
                           (_%$tl111113111141%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111111111135%_)))
                           (_%p111145%_ _%$hd111112111138%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl111113111141%_))
                          (let* ((_%$tgt111114111147%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111113111141%_)))
                                 (_%$hd111115111150%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111114111147%_)))
                                 (_%$tl111116111153%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111114111147%_)))
                                 (_%t111157%_ _%$hd111115111150%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl111116111153%_))
                                (let* ((_%$tgt111117111159%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl111116111153%_)))
                                       (_%$hd111118111162%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt111117111159%_)))
                                       (_%$tl111119111165%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt111117111159%_)))
                                       (_%f111169%_ _%$hd111118111162%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl111119111165%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p111145%_)
                                                   (cons (__compile
                                                          _%t111157%_)
                                                         (cons (__compile
                                                                _%f111169%_)
                                                               '()))))
                                       _%stx111103%_)
                                      (_%$E111107111122%_)))
                                (_%$E111107111122%_)))
                          (_%$E111107111122%_)))
                    (_%$E111107111122%_)))
              (_%$E111107111122%_)))))
    (define __compile-quote%
      (lambda (_%stx111065%_)
        (let* ((_%$e111067%_ _%stx111065%_)
               (_%$E111069111078%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111067%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111067%_))
              (let* ((_%$tgt111070111081%_
                      (let () (declare (not safe)) (__AST-e _%$e111067%_)))
                     (_%$hd111071111084%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111070111081%_)))
                     (_%$tl111072111087%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111070111081%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111072111087%_))
                    (let* ((_%$tgt111073111091%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111072111087%_)))
                           (_%$hd111074111094%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111073111091%_)))
                           (_%$tl111075111097%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111073111091%_)))
                           (_%e111101%_ _%$hd111074111094%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111075111097%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e111101%_))
                                       '()))
                           _%stx111065%_)
                          (_%$E111069111078%_)))
                    (_%$E111069111078%_)))
              (_%$E111069111078%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx111027%_)
        (let* ((_%$e111029%_ _%stx111027%_)
               (_%$E111031111040%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111029%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111029%_))
              (let* ((_%$tgt111032111043%_
                      (let () (declare (not safe)) (__AST-e _%$e111029%_)))
                     (_%$hd111033111046%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111032111043%_)))
                     (_%$tl111034111049%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111032111043%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111034111049%_))
                    (let* ((_%$tgt111035111053%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111034111049%_)))
                           (_%$hd111036111056%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111035111053%_)))
                           (_%$tl111037111059%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111035111053%_)))
                           (_%e111063%_ _%$hd111036111056%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111037111059%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e111063%_ '()))
                           _%stx111027%_)
                          (_%$E111031111040%_)))
                    (_%$E111031111040%_)))
              (_%$E111031111040%_)))))
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

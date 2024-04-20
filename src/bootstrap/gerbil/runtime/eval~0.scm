(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1713631265)
  (begin
    (define __syntax::t
      (let ((__tmp114844 (list)) (__tmp114843 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp114844
         '(e id)
         __tmp114843
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args114648%_
        (apply make-instance __syntax::t _%$args114648%_)))
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
      (let ((__tmp114846 (list __syntax::t))
            (__tmp114845 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp114846
         '()
         __tmp114845
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args114645%_
        (apply make-instance __core-form::t _%$args114645%_)))
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
      (let ((__tmp114848 (list __core-form::t))
            (__tmp114847 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp114848
         '()
         __tmp114847
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args114642%_
        (apply make-instance __core-expression::t _%$args114642%_)))
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
      (let ((__tmp114850 (list __core-form::t))
            (__tmp114849 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp114850
         '()
         __tmp114849
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args114639%_
        (apply make-instance __core-special-form::t _%$args114639%_)))
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
      (lambda (_%id114637%_)
        (let ((__tmp114851
               (let () (declare (not safe)) (__AST-e _%id114637%_))))
          (declare (not safe))
          (__hash-get __core __tmp114851))))
    (define __core-bound-id?__%
      (lambda (_%id114620%_ _%is?114621%_)
        (let ((_%$e114623%_ (__core-resolve _%id114620%_)))
          (if _%$e114623%_ (_%is?114621%_ _%$e114623%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id114630%_)
        (let ((_%is?114632%_ true))
          (__core-bound-id?__% _%id114630%_ _%is?114632%_))))
    (define __core-bound-id?
      (lambda _g114853_
        (let ((_g114852_ (let () (declare (not safe)) (##length _g114853_))))
          (cond ((let () (declare (not safe)) (##fx= _g114852_ 1))
                 (apply __core-bound-id?__0 _g114853_))
                ((let () (declare (not safe)) (##fx= _g114852_ 2))
                 (apply __core-bound-id?__% _g114853_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g114853_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id114603%_ _%e114604%_ _%make114605%_)
        (let ((__tmp114854
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e114604%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e114604%_
                   (_%make114605%_ _%e114604%_ _%id114603%_))))
          (declare (not safe))
          (__hash-put! __core _%id114603%_ __tmp114854))))
    (define __core-bind-syntax!__0
      (lambda (_%id114610%_ _%e114611%_)
        (let ((_%make114613%_ make-__syntax))
          (__core-bind-syntax!__% _%id114610%_ _%e114611%_ _%make114613%_))))
    (define __core-bind-syntax!
      (lambda _g114856_
        (let ((_g114855_ (let () (declare (not safe)) (##length _g114856_))))
          (cond ((let () (declare (not safe)) (##fx= _g114855_ 2))
                 (apply __core-bind-syntax!__0 _g114856_))
                ((let () (declare (not safe)) (##fx= _g114855_ 3))
                 (apply __core-bind-syntax!__% _g114856_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g114856_))))))
    (define __SRC__%
      (lambda (_%e114583%_ _%src-stx114584%_)
        (if (or (pair? _%e114583%_) (symbol? _%e114583%_))
            (let ((__tmp114857
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx114584%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx114584%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e114583%_ __tmp114857))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e114583%_ 'gerbil#AST::t))
                (let ((__tmp114859
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e114583%_ '1 '#f '#f)))
                      (__tmp114858
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e114583%_)))))
                  (declare (not safe))
                  (##make-source __tmp114859 __tmp114858))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e114583%_))))))
    (define __SRC__0
      (lambda (_%e114595%_)
        (let ((_%src-stx114597%_ '#f))
          (__SRC__% _%e114595%_ _%src-stx114597%_))))
    (define __SRC
      (lambda _g114861_
        (let ((_g114860_ (let () (declare (not safe)) (##length _g114861_))))
          (cond ((let () (declare (not safe)) (##fx= _g114860_ 1))
                 (apply __SRC__0 _g114861_))
                ((let () (declare (not safe)) (##fx= _g114860_ 2))
                 (apply __SRC__% _g114861_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g114861_))))))
    (define __locat
      (lambda (_%loc114580%_)
        (if (let () (declare (not safe)) (##locat? _%loc114580%_))
            _%loc114580%_
            '#f)))
    (define __check-values
      (lambda (_%obj114575%_ _%k114576%_)
        (let ((_%count114578%_
               (if (let () (declare (not safe)) (##values? _%obj114575%_))
                   (let ()
                     (declare (not safe))
                     (##vector-length _%obj114575%_))
                   '1)))
          (if (fx= _%count114578%_ _%k114576%_)
              '#!void
              (let ((__tmp114863
                     (if (fx< _%count114578%_ _%k114576%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp114862
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj114575%_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _%obj114575%_))
                         _%obj114575%_)))
                (declare (not safe))
                (error __tmp114863 __tmp114862 _%k114576%_))))))
    (define __compile
      (lambda (_%stx114544%_)
        (let* ((_%$e114546%_ _%stx114544%_)
               (_%$E114548114554%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114546%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114546%_))
              (let* ((_%$tgt114549114557%_
                      (let () (declare (not safe)) (__AST-e _%$e114546%_)))
                     (_%$hd114550114560%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114549114557%_)))
                     (_%$tl114551114563%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114549114557%_)))
                     (_%form114567%_ _%$hd114550114560%_)
                     (_%$e114569%_ (__core-resolve _%form114567%_)))
                (if _%$e114569%_
                    ((lambda (_%bind114572%_)
                       ((##structure-ref _%bind114572%_ '1 __syntax::t '#f)
                        _%stx114544%_))
                     _%$e114569%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx114544%_
                       _%form114567%_))))
              (_%$E114548114554%_)))))
    (define __compile-error__%
      (lambda (_%stx114531%_ _%detail114532%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx114531%_
           _%detail114532%_))))
    (define __compile-error__0
      (lambda (_%stx114537%_)
        (let ((_%detail114539%_ '#f))
          (__compile-error__% _%stx114537%_ _%detail114539%_))))
    (define __compile-error
      (lambda _g114865_
        (let ((_g114864_ (let () (declare (not safe)) (##length _g114865_))))
          (cond ((let () (declare (not safe)) (##fx= _g114864_ 1))
                 (apply __compile-error__0 _g114865_))
                ((let () (declare (not safe)) (##fx= _g114864_ 2))
                 (apply __compile-error__% _g114865_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g114865_))))))
    (define __compile-ignore%
      (lambda (_%stx114528%_) (__SRC__% ''#!void _%stx114528%_)))
    (define __compile-begin%
      (lambda (_%stx114503%_)
        (let* ((_%$e114505%_ _%stx114503%_)
               (_%$E114507114513%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114505%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114505%_))
              (let* ((_%$tgt114508114516%_
                      (let () (declare (not safe)) (__AST-e _%$e114505%_)))
                     (_%$hd114509114519%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114508114516%_)))
                     (_%$tl114510114522%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114508114516%_)))
                     (_%body114526%_ _%$tl114510114522%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body114526%_))
                 _%stx114503%_))
              (_%$E114507114513%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx114478%_)
        (let* ((_%$e114480%_ _%stx114478%_)
               (_%$E114482114488%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114480%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114480%_))
              (let* ((_%$tgt114483114491%_
                      (let () (declare (not safe)) (__AST-e _%$e114480%_)))
                     (_%$hd114484114494%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114483114491%_)))
                     (_%$tl114485114497%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114483114491%_)))
                     (_%body114501%_ _%$tl114485114497%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body114501%_)))
                 _%stx114478%_))
              (_%$E114482114488%_)))))
    (define __compile-import%
      (lambda (_%stx114453%_)
        (let* ((_%$e114455%_ _%stx114453%_)
               (_%$E114457114463%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114455%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114455%_))
              (let* ((_%$tgt114458114466%_
                      (let () (declare (not safe)) (__AST-e _%$e114455%_)))
                     (_%$hd114459114469%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114458114466%_)))
                     (_%$tl114460114472%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114458114466%_)))
                     (_%body114476%_ _%$tl114460114472%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body114476%_ '())) '()))
                 _%stx114453%_))
              (_%$E114457114463%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx114400%_)
        (let* ((_%$e114402%_ _%stx114400%_)
               (_%$E114404114416%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114402%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114402%_))
              (let* ((_%$tgt114405114419%_
                      (let () (declare (not safe)) (__AST-e _%$e114402%_)))
                     (_%$hd114406114422%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114405114419%_)))
                     (_%$tl114407114425%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114405114419%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114407114425%_))
                    (let* ((_%$tgt114408114429%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114407114425%_)))
                           (_%$hd114409114432%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114408114429%_)))
                           (_%$tl114410114435%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114408114429%_)))
                           (_%ann114439%_ _%$hd114409114432%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl114410114435%_))
                          (let* ((_%$tgt114411114441%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl114410114435%_)))
                                 (_%$hd114412114444%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt114411114441%_)))
                                 (_%$tl114413114447%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt114411114441%_)))
                                 (_%expr114451%_ _%$hd114412114444%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl114413114447%_))
                                        '())
                                (__compile _%expr114451%_)
                                (_%$E114404114416%_)))
                          (_%$E114404114416%_)))
                    (_%$E114404114416%_)))
              (_%$E114404114416%_)))))
    (define __compile-define-values%
      (lambda (_%stx114291%_)
        (let* ((_%$e114293%_ _%stx114291%_)
               (_%$E114295114307%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114293%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114293%_))
              (let* ((_%$tgt114296114310%_
                      (let () (declare (not safe)) (__AST-e _%$e114293%_)))
                     (_%$hd114297114313%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114296114310%_)))
                     (_%$tl114298114316%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114296114310%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114298114316%_))
                    (let* ((_%$tgt114299114320%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114298114316%_)))
                           (_%$hd114300114323%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114299114320%_)))
                           (_%$tl114301114326%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114299114320%_)))
                           (_%hd114330%_ _%$hd114300114323%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl114301114326%_))
                          (let* ((_%$tgt114302114332%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl114301114326%_)))
                                 (_%$hd114303114335%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt114302114332%_)))
                                 (_%$tl114304114338%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt114302114332%_)))
                                 (_%expr114342%_ _%$hd114303114335%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl114304114338%_))
                                        '())
                                (let* ((_%$e114344%_ _%hd114330%_)
                                       (_%$E114346114387%_
                                        (lambda ()
                                          (let ((_%$E114347114372%_
                                                 (lambda ()
                                                   (let* ((_%$E114348114359%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e114344%_))))
                  (_%ids114362%_ _%hd114330%_)
                  (_%len114364%_ (length _%ids114362%_))
                  (_%tmp114366%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp114366%_
                                       (cons (__compile _%expr114342%_) '())))
                           _%stx114291%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp114366%_
                                             (cons _%len114364%_ '())))
                                 _%stx114291%_)
                                (let ((__tmp114866
                                       (let ((__tmp114868
                                              (lambda (_%id114369%_
                                                       _%k114370%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id114369%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id114369%_)
                         (cons (cons '##vector-ref
                                     (cons _%tmp114366%_
                                           (cons _%k114370%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx114291%_)
                                                    '#f)))
                                             (__tmp114867
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len114364%_))))
                                         (declare (not safe))
                                         (__filter-map2
                                          __tmp114868
                                          _%ids114362%_
                                          __tmp114867))))
                                  (declare (not safe))
                                  (__foldr1 cons '() __tmp114866)))))
              _%stx114291%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e114344%_))
                                                (let* ((_%$tgt114349114375%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e114344%_)))
                                                       (_%$hd114350114378%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt114349114375%_)))
                                                       (_%$tl114351114381%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt114349114375%_)))
                                                       (_%id114385%_
                                                        _%$hd114350114378%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl114351114381%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id114385%_)
                           (cons (__compile _%expr114342%_) '())))
               _%stx114291%_)
              (_%$E114347114372%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E114347114372%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e114344%_))
                                      (let* ((_%$tgt114352114390%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e114344%_)))
                                             (_%$hd114353114393%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt114352114390%_)))
                                             (_%$tl114354114396%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt114352114390%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd114353114393%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl114354114396%_))
                                                        '())
                                                (__compile _%expr114342%_)
                                                (_%$E114346114387%_))
                                            (_%$E114346114387%_)))
                                      (_%$E114346114387%_)))
                                (_%$E114295114307%_)))
                          (_%$E114295114307%_)))
                    (_%$E114295114307%_)))
              (_%$E114295114307%_)))))
    (define __compile-head-id
      (lambda (_%e114289%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e114289%_))
             _%e114289%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd114246%_)
        (let _%recur114248%_ ((_%rest114250%_ _%hd114246%_))
          (let* ((_%$e114252%_ _%rest114250%_)
                 (_%$E114254114272%_
                  (lambda ()
                    (let ((_%$E114255114269%_
                           (lambda ()
                             (let* ((_%$E114256114264%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e114252%_))))
                                    (_%tail114267%_ _%$e114252%_))
                               (__compile-head-id _%tail114267%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e114252%_))
                                  '())
                          '()
                          (_%$E114255114269%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e114252%_))
                (let* ((_%$tgt114257114275%_
                        (let () (declare (not safe)) (__AST-e _%$e114252%_)))
                       (_%$hd114258114278%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt114257114275%_)))
                       (_%$tl114259114281%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt114257114275%_)))
                       (_%hd114285%_ _%$hd114258114278%_)
                       (_%rest114287%_ _%$tl114259114281%_))
                  (cons (__compile-head-id _%hd114285%_)
                        (_%recur114248%_ _%rest114287%_)))
                (_%$E114254114272%_))))))
    (define __compile-lambda%
      (lambda (_%stx114193%_)
        (let* ((_%$e114195%_ _%stx114193%_)
               (_%$E114197114209%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114195%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114195%_))
              (let* ((_%$tgt114198114212%_
                      (let () (declare (not safe)) (__AST-e _%$e114195%_)))
                     (_%$hd114199114215%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114198114212%_)))
                     (_%$tl114200114218%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114198114212%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114200114218%_))
                    (let* ((_%$tgt114201114222%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114200114218%_)))
                           (_%$hd114202114225%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114201114222%_)))
                           (_%$tl114203114228%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114201114222%_)))
                           (_%hd114232%_ _%$hd114202114225%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl114203114228%_))
                          (let* ((_%$tgt114204114234%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl114203114228%_)))
                                 (_%$hd114205114237%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt114204114234%_)))
                                 (_%$tl114206114240%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt114204114234%_)))
                                 (_%body114244%_ _%$hd114205114237%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl114206114240%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd114232%_)
                                             (cons (__compile _%body114244%_)
                                                   '())))
                                 _%stx114193%_)
                                (_%$E114197114209%_)))
                          (_%$E114197114209%_)))
                    (_%$E114197114209%_)))
              (_%$E114197114209%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx113985%_)
        (letrec ((_%variadic?113987%_
                  (lambda (_%hd114158%_)
                    (let* ((_%$e114160%_ _%hd114158%_)
                           (_%$E114162114178%_
                            (lambda ()
                              (let ((_%$E114163114175%_
                                     (lambda ()
                                       (let ((_%$E114164114172%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e114160%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e114160%_))
                                            '())
                                    '#f
                                    (_%$E114163114175%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e114160%_))
                          (let* ((_%$tgt114165114181%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e114160%_)))
                                 (_%$hd114166114184%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt114165114181%_)))
                                 (_%$tl114167114187%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt114165114181%_)))
                                 (_%rest114191%_ _%$tl114167114187%_))
                            (_%variadic?113987%_ _%rest114191%_))
                          (_%$E114162114178%_)))))
                 (_%arity113988%_
                  (lambda (_%hd114123%_)
                    (let _%lp114125%_ ((_%rest114127%_ _%hd114123%_)
                                       (_%k114128%_ '0))
                      (let* ((_%$e114130%_ _%rest114127%_)
                             (_%$E114132114143%_
                              (lambda ()
                                (let ((_%$E114133114140%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e114130%_)))))
                                  _%k114128%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e114130%_))
                            (let* ((_%$tgt114134114146%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e114130%_)))
                                   (_%$hd114135114149%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt114134114146%_)))
                                   (_%$tl114136114152%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt114134114146%_)))
                                   (_%rest114156%_ _%$tl114136114152%_))
                              (_%lp114125%_
                               _%rest114156%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%k114128%_ '1))))
                            (_%$E114132114143%_))))))
                 (_%generate113989%_
                  (lambda (_%rest114050%_ _%args114051%_ _%len114052%_)
                    (let* ((_%$e114054%_ _%rest114050%_)
                           (_%$E114056114067%_
                            (lambda ()
                              (let ((_%$E114057114064%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e114054%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args114051%_ '())))
                                 _%stx113985%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e114054%_))
                          (let* ((_%$tgt114058114070%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e114054%_)))
                                 (_%$hd114059114073%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt114058114070%_)))
                                 (_%$tl114060114076%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt114058114070%_)))
                                 (_%clause114080%_ _%$hd114059114073%_)
                                 (_%rest114082%_ _%$tl114060114076%_)
                                 (_%$e114084%_ _%clause114080%_)
                                 (_%$E114086114095%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e114084%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e114084%_))
                                (let* ((_%$tgt114087114098%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e114084%_)))
                                       (_%$hd114088114101%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt114087114098%_)))
                                       (_%$tl114089114104%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt114087114098%_)))
                                       (_%hd114108%_ _%$hd114088114101%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl114089114104%_))
                                      (let* ((_%$tgt114090114110%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl114089114104%_)))
                                             (_%$hd114091114113%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt114090114110%_)))
                                             (_%$tl114092114116%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt114090114110%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl114092114116%_))
                                                    '())
                                            (let ((_%clen114120%_
                                                   (_%arity113988%_
                                                    _%hd114108%_))
                                                  (_%cmp114121%_
                                                   (if (_%variadic?113987%_
                                                        _%hd114108%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp114121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len114052%_ (cons _%clen114120%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause114080%_))
                                      (cons _%args114051%_ '())))
                          _%stx113985%_)
                         (cons (_%generate113989%_
                                _%rest114082%_
                                _%args114051%_
                                _%len114052%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx113985%_))
                                            (_%$E114086114095%_)))
                                      (_%$E114086114095%_)))
                                (_%$E114086114095%_)))
                          (_%$E114056114067%_))))))
          (let* ((_%$e113991%_ _%stx113985%_)
                 (_%$E113993114025%_
                  (lambda ()
                    (let ((_%$E113994114007%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e113991%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e113991%_))
                          (let* ((_%$tgt113995114010%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e113991%_)))
                                 (_%$hd113996114013%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt113995114010%_)))
                                 (_%$tl113997114016%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt113995114010%_)))
                                 (_%clauses114020%_ _%$tl113997114016%_))
                            (let ((_%args114022%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx113985%_))
                                  (_%len114023%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx113985%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args114022%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len114023%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args114022%_ '()))
                                         _%stx113985%_)
                                        '()))
                            '())
                      (cons (_%generate113989%_
                             _%clauses114020%_
                             _%args114022%_
                             _%len114023%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx113985%_)
                                                 '())))
                               _%stx113985%_)))
                          (_%$E113994114007%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e113991%_))
                (let* ((_%$tgt113998114028%_
                        (let () (declare (not safe)) (__AST-e _%$e113991%_)))
                       (_%$hd113999114031%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt113998114028%_)))
                       (_%$tl114000114034%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt113998114028%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl114000114034%_))
                      (let* ((_%$tgt114001114038%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl114000114034%_)))
                             (_%$hd114002114041%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt114001114038%_)))
                             (_%$tl114003114044%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt114001114038%_)))
                             (_%clause114048%_ _%$hd114002114041%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl114003114044%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause114048%_))
                            (_%$E113993114025%_)))
                      (_%$E113993114025%_)))
                (_%$E113993114025%_))))))
    (define __compile-let-form
      (lambda (_%stx113754%_ _%compile-simple113755%_ _%compile-values113756%_)
        (letrec ((_%simple-bind?113758%_
                  (lambda (_%hd113943%_)
                    (let* ((_%hd113944113954%_ _%hd113943%_)
                           (_%else113947113962%_ (lambda () '#f)))
                      (let ((_%K113950113975%_ (lambda (_%id113973%_) '#t))
                            (_%K113949113967%_ (lambda () '#t)))
                        (let ((_%try-match113946113970%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd113944113954%_ '#f))
                                     (_%K113949113967%_)
                                     (_%else113947113962%_)))))
                          (if (pair? _%hd113944113954%_)
                              (let ((_%tl113952113980%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd113944113954%_)))
                                    (_%hd113951113978%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd113944113954%_))))
                                (if (null? _%tl113952113980%_)
                                    (let ((_%id113983%_ _%hd113951113978%_))
                                      (_%K113950113975%_ _%id113983%_))
                                    (_%try-match113946113970%_)))
                              (_%try-match113946113970%_)))))))
                 (_%car-e113759%_
                  (lambda (_%hd113941%_)
                    (if (pair? _%hd113941%_)
                        (let () (declare (not safe)) (##car _%hd113941%_))
                        _%hd113941%_))))
          (let* ((_%$e113761%_ _%stx113754%_)
                 (_%$E113763113906%_
                  (lambda ()
                    (let ((_%$E113764113786%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e113761%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e113761%_))
                          (let* ((_%$tgt113765113789%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e113761%_)))
                                 (_%$hd113766113792%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt113765113789%_)))
                                 (_%$tl113767113795%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt113765113789%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl113767113795%_))
                                (let* ((_%$tgt113768113799%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl113767113795%_)))
                                       (_%$hd113769113802%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt113768113799%_)))
                                       (_%$tl113770113805%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt113768113799%_)))
                                       (_%hd113809%_ _%$hd113769113802%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl113770113805%_))
                                      (let* ((_%$tgt113771113811%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl113770113805%_)))
                                             (_%$hd113772113814%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt113771113811%_)))
                                             (_%$tl113773113817%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt113771113811%_)))
                                             (_%body113821%_
                                              _%$hd113772113814%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl113773113817%_))
                                                    '())
                                            (let* ((_%hd-ids113861%_
                                                    (map (lambda (_%bind113823%_)
                                                           (let* ((_%$e113825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind113823%_)
                          (_%$E113827113836%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e113825%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e113825%_))
                         (let* ((_%$tgt113828113839%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e113825%_)))
                                (_%$hd113829113842%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt113828113839%_)))
                                (_%$tl113830113845%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt113828113839%_)))
                                (_%ids113849%_ _%$hd113829113842%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl113830113845%_))
                               (let* ((_%$tgt113831113851%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl113830113845%_)))
                                      (_%$hd113832113854%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt113831113851%_)))
                                      (_%$tl113833113857%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt113831113851%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl113833113857%_))
                                             '())
                                     _%ids113849%_
                                     (_%$E113827113836%_)))
                               (_%$E113827113836%_)))
                         (_%$E113827113836%_))))
                 _%hd113809%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs113901%_
                                                    (map (lambda (_%bind113863%_)
                                                           (let* ((_%$e113865%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind113863%_)
                          (_%$E113867113876%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e113865%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e113865%_))
                         (let* ((_%$tgt113868113879%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e113865%_)))
                                (_%$hd113869113882%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt113868113879%_)))
                                (_%$tl113870113885%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt113868113879%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl113870113885%_))
                               (let* ((_%$tgt113871113889%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl113870113885%_)))
                                      (_%$hd113872113892%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt113871113889%_)))
                                      (_%$tl113873113895%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt113871113889%_)))
                                      (_%expr113899%_ _%$hd113872113892%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl113873113895%_))
                                             '())
                                     (__compile _%expr113899%_)
                                     (_%$E113867113876%_)))
                               (_%$E113867113876%_)))
                         (_%$E113867113876%_))))
                 _%hd113809%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body113903%_
                                                    (__compile
                                                     _%body113821%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__andmap1
                                                     _%simple-bind?113758%_
                                                     _%hd-ids113861%_))
                                                  (_%compile-simple113755%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e113759%_
                                                            _%hd-ids113861%_))
                                                   _%exprs113901%_
                                                   _%body113903%_)
                                                  (_%compile-values113756%_
                                                   _%hd-ids113861%_
                                                   _%exprs113901%_
                                                   _%body113903%_)))
                                            (_%$E113764113786%_)))
                                      (_%$E113764113786%_)))
                                (_%$E113764113786%_)))
                          (_%$E113764113786%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e113761%_))
                (let* ((_%$tgt113774113909%_
                        (let () (declare (not safe)) (__AST-e _%$e113761%_)))
                       (_%$hd113775113912%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt113774113909%_)))
                       (_%$tl113776113915%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt113774113909%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl113776113915%_))
                      (let* ((_%$tgt113777113919%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl113776113915%_)))
                             (_%$hd113778113922%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt113777113919%_)))
                             (_%$tl113779113925%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt113777113919%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd113778113922%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl113779113925%_))
                                (let* ((_%$tgt113780113929%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl113779113925%_)))
                                       (_%$hd113781113932%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt113780113929%_)))
                                       (_%$tl113782113935%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt113780113929%_)))
                                       (_%body113939%_ _%$hd113781113932%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl113782113935%_))
                                              '())
                                      (__compile _%body113939%_)
                                      (_%$E113763113906%_)))
                                (_%$E113763113906%_))
                            (_%$E113763113906%_)))
                      (_%$E113763113906%_)))
                (_%$E113763113906%_))))))
    (define __compile-let-values%
      (lambda (_%stx113566%_)
        (letrec ((_%compile-simple113568%_
                  (lambda (_%hd-ids113750%_ _%exprs113751%_ _%body113752%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp114869
                                        (map __compile-head-id
                                             _%hd-ids113750%_)))
                                   (declare (not safe))
                                   (##map list __tmp114869 _%exprs113751%_))
                                 (cons _%body113752%_ '())))
                     _%stx113566%_)))
                 (_%compile-values113569%_
                  (lambda (_%hd-ids113665%_ _%exprs113666%_ _%body113667%_)
                    (let _%lp113669%_ ((_%rest113671%_ _%hd-ids113665%_)
                                       (_%exprs113672%_ _%exprs113666%_)
                                       (_%bind113673%_ '())
                                       (_%post113674%_ '()))
                      (let* ((_%rest113675113689%_ _%rest113671%_)
                             (_%else113678113697%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind113673%_)
                                             (cons (_%compile-post113570%_
                                                    _%post113674%_
                                                    _%body113667%_)
                                                   '())))
                                 _%stx113566%_))))
                        (let ((_%K113683113733%_
                               (lambda (_%rest113730%_ _%id113731%_)
                                 (_%lp113669%_
                                  _%rest113730%_
                                  (cdr _%exprs113672%_)
                                  (cons (cons (__compile-head-id _%id113731%_)
                                              (cons (car _%exprs113672%_) '()))
                                        _%bind113673%_)
                                  _%post113674%_)))
                              (_%K113680113715%_
                               (lambda (_%rest113701%_ _%hd113702%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd113702%_))
                                     (_%lp113669%_
                                      _%rest113701%_
                                      (cdr _%exprs113672%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd113702%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs113672%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind113673%_)
                                      _%post113674%_)
                                     (if (list? _%hd113702%_)
                                         (let* ((_%len113706%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd113702%_)))
                                                (_%tmp113708%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp113669%_
                                            _%rest113701%_
                                            (cdr _%exprs113672%_)
                                            (cons (cons _%tmp113708%_
                                                        (cons (car _%exprs113672%_)
                                                              '()))
                                                  _%bind113673%_)
                                            (cons (cons _%tmp113708%_
                                                        (cons _%len113706%_
                                                              (let ((__tmp114871
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id113711%_ _%k113712%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id113711%_))
                                   (cons (__SRC__0 _%id113711%_) _%k113712%_)
                                   '#f)))
                            (__tmp114870
                             (let ()
                               (declare (not safe))
                               (##iota _%len113706%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp114871 _%hd113702%_ __tmp114870))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post113674%_)))
                                         (__compile-error__%
                                          _%stx113566%_
                                          _%hd113702%_))))))
                          (if (pair? _%rest113675113689%_)
                              (let ((_%tl113685113738%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest113675113689%_)))
                                    (_%hd113684113736%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest113675113689%_))))
                                (if (pair? _%hd113684113736%_)
                                    (let ((_%tl113687113743%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd113684113736%_)))
                                          (_%hd113686113741%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd113684113736%_))))
                                      (if (null? _%tl113687113743%_)
                                          (let ((_%id113746%_
                                                 _%hd113686113741%_)
                                                (_%rest113748%_
                                                 _%tl113685113738%_))
                                            (_%K113683113733%_
                                             _%rest113748%_
                                             _%id113746%_))
                                          (let ((_%hd113723%_
                                                 _%hd113684113736%_)
                                                (_%rest113725%_
                                                 _%tl113685113738%_))
                                            (_%K113680113715%_
                                             _%rest113725%_
                                             _%hd113723%_))))
                                    (let ((_%hd113723%_ _%hd113684113736%_)
                                          (_%rest113725%_ _%tl113685113738%_))
                                      (_%K113680113715%_
                                       _%rest113725%_
                                       _%hd113723%_))))
                              (_%else113678113697%_)))))))
                 (_%compile-post113570%_
                  (lambda (_%post113572%_ _%body113573%_)
                    (let _%lp113575%_ ((_%rest113577%_ _%post113572%_)
                                       (_%check113578%_ '())
                                       (_%bind113579%_ '()))
                      (let* ((_%rest113580113592%_ _%rest113577%_)
                             (_%else113582113600%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp114872
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind113579%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body113573%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx113566%_)
                                                    '())))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp114872
                                          _%check113578%_)))
                                 _%stx113566%_)))
                             (_%K113584113639%_
                              (lambda (_%rest113603%_
                                       _%init113604%_
                                       _%len113605%_
                                       _%tmp113606%_)
                                (_%lp113575%_
                                 _%rest113603%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp113606%_
                                                    (cons _%len113605%_ '())))
                                        _%stx113566%_)
                                       _%check113578%_)
                                 (let ((__tmp114873
                                        (lambda (_%hd113608%_ _%r113609%_)
                                          (let* ((_%hd113610113617%_
                                                  _%hd113608%_)
                                                 (_%E113612113621%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd113610113617%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K113613113627%_
                                                  (lambda (_%k113624%_
                                                           _%id113625%_)
                                                    (cons (cons _%id113625%_
                                                                (cons (cons '##vector-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp113606%_
                                          (cons _%k113624%_ '())))
                              '()))
                  _%r113609%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd113610113617%_)
                                                (let ((_%hd113614113630%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd113610113617%_)))
                                                      (_%tl113615113632%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd113610113617%_))))
                                                  (let* ((_%id113635%_
                                                          _%hd113614113630%_)
                                                         (_%k113637%_
                                                          _%tl113615113632%_))
                                                    (_%K113613113627%_
                                                     _%k113637%_
                                                     _%id113635%_)))
                                                (_%E113612113621%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp114873
                                    _%bind113579%_
                                    _%init113604%_))))))
                        (if (pair? _%rest113580113592%_)
                            (let ((_%hd113585113642%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest113580113592%_)))
                                  (_%tl113586113644%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest113580113592%_))))
                              (if (pair? _%hd113585113642%_)
                                  (let ((_%hd113587113647%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd113585113642%_)))
                                        (_%tl113588113649%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd113585113642%_))))
                                    (let ((_%tmp113652%_ _%hd113587113647%_))
                                      (if (pair? _%tl113588113649%_)
                                          (let ((_%hd113589113654%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl113588113649%_)))
                                                (_%tl113590113656%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl113588113649%_))))
                                            (let* ((_%len113659%_
                                                    _%hd113589113654%_)
                                                   (_%init113661%_
                                                    _%tl113590113656%_)
                                                   (_%rest113663%_
                                                    _%tl113586113644%_))
                                              (_%K113584113639%_
                                               _%rest113663%_
                                               _%init113661%_
                                               _%len113659%_
                                               _%tmp113652%_)))
                                          (_%else113582113600%_))))
                                  (_%else113582113600%_)))
                            (_%else113582113600%_)))))))
          (__compile-let-form
           _%stx113566%_
           _%compile-simple113568%_
           _%compile-values113569%_))))
    (define __compile-letrec-values%
      (lambda (_%stx113363%_)
        (letrec ((_%compile-simple113365%_
                  (lambda (_%hd-ids113562%_ _%exprs113563%_ _%body113564%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp114874
                                        (map __compile-head-id
                                             _%hd-ids113562%_)))
                                   (declare (not safe))
                                   (##map list __tmp114874 _%exprs113563%_))
                                 (cons _%body113564%_ '())))
                     _%stx113363%_)))
                 (_%compile-values113366%_
                  (lambda (_%hd-ids113473%_ _%exprs113474%_ _%body113475%_)
                    (let _%lp113477%_ ((_%rest113479%_ _%hd-ids113473%_)
                                       (_%exprs113480%_ _%exprs113474%_)
                                       (_%pre113481%_ '())
                                       (_%bind113482%_ '())
                                       (_%post113483%_ '()))
                      (let* ((_%rest113484113498%_ _%rest113479%_)
                             (_%else113487113506%_
                              (lambda ()
                                (_%compile-inner113367%_
                                 _%pre113481%_
                                 _%bind113482%_
                                 _%post113483%_
                                 _%body113475%_))))
                        (let ((_%K113492113545%_
                               (lambda (_%rest113542%_ _%id113543%_)
                                 (_%lp113477%_
                                  _%rest113542%_
                                  (cdr _%exprs113480%_)
                                  _%pre113481%_
                                  (cons (cons (__compile-head-id _%id113543%_)
                                              (cons (car _%exprs113480%_) '()))
                                        _%bind113482%_)
                                  _%post113483%_)))
                              (_%K113489113527%_
                               (lambda (_%rest113510%_ _%hd113511%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd113511%_))
                                     (_%lp113477%_
                                      _%rest113510%_
                                      (cdr _%exprs113480%_)
                                      _%pre113481%_
                                      (cons (cons (__compile-head-id
                                                   _%hd113511%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs113480%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind113482%_)
                                      _%post113483%_)
                                     (if (list? _%hd113511%_)
                                         (let* ((_%len113515%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd113511%_)))
                                                (_%tmp113517%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp113477%_
                                            _%rest113510%_
                                            (cdr _%exprs113480%_)
                                            (let ((__tmp114875
                                                   (lambda (_%id113520%_
                                                            _%r113521%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id113520%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id113520%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r113521%_)
                 _%r113521%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (__foldl1
                                               __tmp114875
                                               _%pre113481%_
                                               _%hd113511%_))
                                            (cons (cons _%tmp113517%_
                                                        (cons (car _%exprs113480%_)
                                                              '()))
                                                  _%bind113482%_)
                                            (cons (cons _%tmp113517%_
                                                        (cons _%len113515%_
                                                              (let ((__tmp114877
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id113523%_ _%k113524%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id113523%_))
                                   (cons (__SRC__0 _%id113523%_) _%k113524%_)
                                   '#f)))
                            (__tmp114876
                             (let ()
                               (declare (not safe))
                               (##iota _%len113515%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp114877 _%hd113511%_ __tmp114876))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post113483%_)))
                                         (__compile-error__%
                                          _%stx113363%_
                                          _%hd113511%_))))))
                          (if (pair? _%rest113484113498%_)
                              (let ((_%tl113494113550%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest113484113498%_)))
                                    (_%hd113493113548%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest113484113498%_))))
                                (if (pair? _%hd113493113548%_)
                                    (let ((_%tl113496113555%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd113493113548%_)))
                                          (_%hd113495113553%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd113493113548%_))))
                                      (if (null? _%tl113496113555%_)
                                          (let ((_%id113558%_
                                                 _%hd113495113553%_)
                                                (_%rest113560%_
                                                 _%tl113494113550%_))
                                            (_%K113492113545%_
                                             _%rest113560%_
                                             _%id113558%_))
                                          (let ((_%hd113535%_
                                                 _%hd113493113548%_)
                                                (_%rest113537%_
                                                 _%tl113494113550%_))
                                            (_%K113489113527%_
                                             _%rest113537%_
                                             _%hd113535%_))))
                                    (let ((_%hd113535%_ _%hd113493113548%_)
                                          (_%rest113537%_ _%tl113494113550%_))
                                      (_%K113489113527%_
                                       _%rest113537%_
                                       _%hd113535%_))))
                              (_%else113487113506%_)))))))
                 (_%compile-inner113367%_
                  (lambda (_%pre113468%_
                           _%bind113469%_
                           _%post113470%_
                           _%body113471%_)
                    (if (null? _%pre113468%_)
                        (_%compile-bind113368%_
                         _%bind113469%_
                         _%post113470%_
                         _%body113471%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre113468%_)
                                     (cons (_%compile-bind113368%_
                                            _%bind113469%_
                                            _%post113470%_
                                            _%body113471%_)
                                           '())))
                         _%stx113363%_))))
                 (_%compile-bind113368%_
                  (lambda (_%bind113464%_ _%post113465%_ _%body113466%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind113464%_)
                                 (cons (_%compile-post113369%_
                                        _%post113465%_
                                        _%body113466%_)
                                       '())))
                     _%stx113363%_)))
                 (_%compile-post113369%_
                  (lambda (_%post113371%_ _%body113372%_)
                    (let _%lp113374%_ ((_%rest113376%_ _%post113371%_)
                                       (_%check113377%_ '())
                                       (_%bind113378%_ '()))
                      (let* ((_%rest113379113391%_ _%rest113376%_)
                             (_%else113381113399%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp114878
                                              (let ((__tmp114879
                                                     (cons _%body113372%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp114879
                                                 _%bind113378%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp114878
                                          _%check113377%_)))
                                 _%stx113363%_)))
                             (_%K113383113438%_
                              (lambda (_%rest113402%_
                                       _%init113403%_
                                       _%len113404%_
                                       _%tmp113405%_)
                                (_%lp113374%_
                                 _%rest113402%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp113405%_
                                                    (cons _%len113404%_ '())))
                                        _%stx113363%_)
                                       _%check113377%_)
                                 (let ((__tmp114880
                                        (lambda (_%hd113407%_ _%r113408%_)
                                          (let* ((_%hd113409113416%_
                                                  _%hd113407%_)
                                                 (_%E113411113420%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd113409113416%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K113412113426%_
                                                  (lambda (_%k113423%_
                                                           _%id113424%_)
                                                    (cons (cons 'set!
                                                                (cons _%id113424%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##vector-ref
                                          (cons _%tmp113405%_
                                                (cons _%k113423%_ '())))
                                    '())))
                  _%r113408%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd113409113416%_)
                                                (let ((_%hd113413113429%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd113409113416%_)))
                                                      (_%tl113414113431%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd113409113416%_))))
                                                  (let* ((_%id113434%_
                                                          _%hd113413113429%_)
                                                         (_%k113436%_
                                                          _%tl113414113431%_))
                                                    (_%K113412113426%_
                                                     _%k113436%_
                                                     _%id113434%_)))
                                                (_%E113411113420%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp114880
                                    _%bind113378%_
                                    _%init113403%_))))))
                        (if (pair? _%rest113379113391%_)
                            (let ((_%hd113384113441%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest113379113391%_)))
                                  (_%tl113385113443%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest113379113391%_))))
                              (if (pair? _%hd113384113441%_)
                                  (let ((_%hd113386113446%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd113384113441%_)))
                                        (_%tl113387113448%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd113384113441%_))))
                                    (let ((_%tmp113451%_ _%hd113386113446%_))
                                      (if (pair? _%tl113387113448%_)
                                          (let ((_%hd113388113453%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl113387113448%_)))
                                                (_%tl113389113455%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl113387113448%_))))
                                            (let* ((_%len113458%_
                                                    _%hd113388113453%_)
                                                   (_%init113460%_
                                                    _%tl113389113455%_)
                                                   (_%rest113462%_
                                                    _%tl113385113443%_))
                                              (_%K113383113438%_
                                               _%rest113462%_
                                               _%init113460%_
                                               _%len113458%_
                                               _%tmp113451%_)))
                                          (_%else113381113399%_))))
                                  (_%else113381113399%_)))
                            (_%else113381113399%_)))))))
          (__compile-let-form
           _%stx113363%_
           _%compile-simple113365%_
           _%compile-values113366%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx113114%_)
        (letrec ((_%compile-simple113116%_
                  (lambda (_%hd-ids113359%_ _%exprs113360%_ _%body113361%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp114881
                                        (map __compile-head-id
                                             _%hd-ids113359%_)))
                                   (declare (not safe))
                                   (##map list __tmp114881 _%exprs113360%_))
                                 (cons _%body113361%_ '())))
                     _%stx113114%_)))
                 (_%compile-values113117%_
                  (lambda (_%hd-ids113266%_ _%exprs113267%_ _%body113268%_)
                    (let _%lp113270%_ ((_%rest113272%_ _%hd-ids113266%_)
                                       (_%exprs113273%_ _%exprs113267%_)
                                       (_%bind113274%_ '())
                                       (_%post113275%_ '()))
                      (let* ((_%rest113276113290%_ _%rest113272%_)
                             (_%else113279113298%_
                              (lambda ()
                                (_%compile-bind113118%_
                                 _%bind113274%_
                                 _%post113275%_
                                 _%body113268%_))))
                        (let ((_%K113284113342%_
                               (lambda (_%rest113337%_ _%hd113338%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd113338%_))
                                     (let ((_%id113340%_
                                            (__SRC__0 _%hd113338%_)))
                                       (_%lp113270%_
                                        _%rest113337%_
                                        (cdr _%exprs113273%_)
                                        (cons (cons _%id113340%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind113274%_)
                                        (cons (cons _%id113340%_
                                                    (cons (car _%exprs113273%_)
                                                          '()))
                                              _%post113275%_)))
                                     (_%lp113270%_
                                      _%rest113337%_
                                      (cdr _%exprs113273%_)
                                      _%bind113274%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs113273%_)
                                                        '()))
                                            _%post113275%_)))))
                              (_%K113281113322%_
                               (lambda (_%rest113302%_ _%hd113303%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd113303%_))
                                     (let ((_%id113306%_
                                            (__SRC__0 _%hd113303%_)))
                                       (_%lp113270%_
                                        _%rest113302%_
                                        (cdr _%exprs113273%_)
                                        (cons (cons _%id113306%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind113274%_)
                                        (cons (cons _%id113306%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs113273%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post113275%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd113303%_))
                                         (if (list? _%hd113303%_)
                                             (let* ((_%len113310%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd113303%_)))
                                                    (_%tmp113312%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp113270%_
                                                _%rest113302%_
                                                (cdr _%exprs113273%_)
                                                (let ((__tmp114882
                                                       (lambda (_%id113315%_
                                                                _%r113316%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id113315%_))
                     (cons (cons (__SRC__0 _%id113315%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r113316%_)
                     _%r113316%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldl1
                                                   __tmp114882
                                                   _%bind113274%_
                                                   _%hd113303%_))
                                                (cons (cons _%tmp113312%_
                                                            (cons (car _%exprs113273%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len113310%_
                                (let ((__tmp114884
                                       (lambda (_%id113318%_ _%k113319%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id113318%_))
                                             (cons (__SRC__0 _%id113318%_)
                                                   _%k113319%_)
                                             '#f)))
                                      (__tmp114883
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len113310%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp114884
                                   _%hd113303%_
                                   __tmp114883)))))
              _%post113275%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx113114%_
                                              _%hd113303%_))
                                         (_%lp113270%_
                                          _%rest113302%_
                                          (cdr _%exprs113273%_)
                                          _%bind113274%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs113273%_)
                                                            '()))
                                                _%post113275%_)))))))
                          (if (pair? _%rest113276113290%_)
                              (let ((_%tl113286113347%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest113276113290%_)))
                                    (_%hd113285113345%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest113276113290%_))))
                                (if (pair? _%hd113285113345%_)
                                    (let ((_%tl113288113352%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd113285113345%_)))
                                          (_%hd113287113350%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd113285113345%_))))
                                      (if (null? _%tl113288113352%_)
                                          (let ((_%hd113355%_
                                                 _%hd113287113350%_)
                                                (_%rest113357%_
                                                 _%tl113286113347%_))
                                            (_%K113284113342%_
                                             _%rest113357%_
                                             _%hd113355%_))
                                          (let ((_%hd113330%_
                                                 _%hd113285113345%_)
                                                (_%rest113332%_
                                                 _%tl113286113347%_))
                                            (_%K113281113322%_
                                             _%rest113332%_
                                             _%hd113330%_))))
                                    (let ((_%hd113330%_ _%hd113285113345%_)
                                          (_%rest113332%_ _%tl113286113347%_))
                                      (_%K113281113322%_
                                       _%rest113332%_
                                       _%hd113330%_))))
                              (_%else113279113298%_)))))))
                 (_%compile-bind113118%_
                  (lambda (_%bind113262%_ _%post113263%_ _%body113264%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind113262%_)
                                 (cons (_%compile-post113119%_
                                        _%post113263%_
                                        _%body113264%_)
                                       '())))
                     _%stx113114%_)))
                 (_%compile-post113119%_
                  (lambda (_%post113121%_ _%body113122%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp114885
                                  (let ((__tmp114887
                                         (lambda (_%hd113124%_ _%r113125%_)
                                           (let* ((_%hd113126113149%_
                                                   _%hd113124%_)
                                                  (_%E113130113153%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd113126113149%_
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
                                             (let ((_%K113143113247%_
                                                    (lambda (_%expr113245%_)
                                                      (cons _%expr113245%_
                                                            _%r113125%_)))
                                                   (_%K113138113225%_
                                                    (lambda (_%expr113222%_
                                                             _%id113223%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id113223%_ (cons _%expr113222%_ '())))
                     _%stx113114%_)
                    _%r113125%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K113131113192%_
                                                    (lambda (_%init113157%_
                                                             _%len113158%_
                                                             _%expr113159%_
                                                             _%tmp113160%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp113160%_
                                             (cons _%expr113159%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp113160%_
                                                    (cons _%len113158%_ '())))
                                        _%stx113114%_)
                                       (let ((__tmp114888
                                              (map (lambda (_%hd113162%_)
                                                     (let* ((_%hd113163113170%_
                                                             _%hd113162%_)
                                                            (_%E113165113174%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd113163113170%_
                                '([id . k])))
                       '#!void))
                    (_%K113166113180%_
                     (lambda (_%k113177%_ _%id113178%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id113178%_
                                    (cons (cons '##vector-ref
                                                (cons _%tmp113160%_
                                                      (cons _%k113177%_ '())))
                                          '())))
                        _%stx113114%_))))
               (if (pair? _%hd113163113170%_)
                   (let ((_%hd113167113183%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd113163113170%_)))
                         (_%tl113168113185%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd113163113170%_))))
                     (let* ((_%id113188%_ _%hd113167113183%_)
                            (_%k113190%_ _%tl113168113185%_))
                       (_%K113166113180%_ _%k113190%_ _%id113188%_)))
                   (_%E113165113174%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init113157%_)))
                                         (declare (not safe))
                                         (__foldr1 cons '() __tmp114888)))))
                     _%stx113114%_)
                    _%r113125%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match114741114742%_
                                                       (lambda (_%hd113132113195%_
                                                                _%tl113133113197%_
                                                                _%hd113134113202%_
                                                                _%tl113135113204%_)
                                                         (let ((_%tmp113200%_
                                                                _%hd113132113195%_)
                                                               (_%expr113207%_
                                                                _%hd113134113202%_))
                                                           (_%E113130113153%_))))
                                                      (_%__match114735114736%_
                                                       (lambda (_%hd113132113195%_
                                                                _%tl113133113197%_)
                                                         (let ((_%tmp113200%_
                                                                _%hd113132113195%_))
                                                           (_%E113130113153%_)))))
                                                 (if (pair? _%hd113126113149%_)
                                                     (let ((_%tl113145113252%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd113126113149%_)))
                                                           (_%hd113144113250%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd113126113149%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd113144113250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%tl113145113252%_)
                       (let ((_%tl113147113257%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl113145113252%_)))
                             (_%hd113146113255%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl113145113252%_))))
                         (if (null? _%tl113147113257%_)
                             (let ((_%expr113260%_ _%hd113146113255%_))
                               (_%K113143113247%_ _%expr113260%_))
                             (if (pair? _%tl113147113257%_)
                                 (let ((_%tl113137113211%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl113147113257%_)))
                                       (_%hd113136113209%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl113147113257%_))))
                                   (let ((_%tmp113200%_ _%hd113144113250%_)
                                         (_%expr113207%_ _%hd113146113255%_)
                                         (_%len113214%_ _%hd113136113209%_)
                                         (_%init113216%_ _%tl113137113211%_))
                                     (_%K113131113192%_
                                      _%init113216%_
                                      _%len113214%_
                                      _%expr113207%_
                                      _%tmp113200%_)))
                                 (_%__match114741114742%_
                                  _%hd113144113250%_
                                  _%tl113145113252%_
                                  _%hd113146113255%_
                                  _%tl113147113257%_))))
                       (_%__match114735114736%_
                        _%hd113144113250%_
                        _%tl113145113252%_))
                   (if (pair? _%tl113145113252%_)
                       (let ((_%tl113142113237%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl113145113252%_)))
                             (_%hd113141113235%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl113145113252%_))))
                         (if (null? _%tl113142113237%_)
                             (let ((_%id113233%_ _%hd113144113250%_)
                                   (_%expr113240%_ _%hd113141113235%_))
                               (_%K113138113225%_ _%expr113240%_ _%id113233%_))
                             (if (pair? _%tl113142113237%_)
                                 (let ((_%tl113137113211%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl113142113237%_)))
                                       (_%hd113136113209%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl113142113237%_))))
                                   (let ((_%tmp113200%_ _%hd113144113250%_)
                                         (_%expr113207%_ _%hd113141113235%_)
                                         (_%len113214%_ _%hd113136113209%_)
                                         (_%init113216%_ _%tl113137113211%_))
                                     (_%K113131113192%_
                                      _%init113216%_
                                      _%len113214%_
                                      _%expr113207%_
                                      _%tmp113200%_)))
                                 (_%__match114741114742%_
                                  _%hd113144113250%_
                                  _%tl113145113252%_
                                  _%hd113141113235%_
                                  _%tl113142113237%_))))
                       (_%__match114735114736%_
                        _%hd113144113250%_
                        _%tl113145113252%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E113130113153%_)))))))
                                        (__tmp114886 (list _%body113122%_)))
                                    (declare (not safe))
                                    (__foldl1
                                     __tmp114887
                                     __tmp114886
                                     _%post113121%_))))
                             (declare (not safe))
                             (__foldr1 cons '() __tmp114885)))
                     _%stx113114%_))))
          (__compile-let-form
           _%stx113114%_
           _%compile-simple113116%_
           _%compile-values113117%_))))
    (define __compile-call%
      (lambda (_%stx113074%_)
        (let* ((_%$e113076%_ _%stx113074%_)
               (_%$E113078113087%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113076%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113076%_))
              (let* ((_%$tgt113079113090%_
                      (let () (declare (not safe)) (__AST-e _%$e113076%_)))
                     (_%$hd113080113093%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt113079113090%_)))
                     (_%$tl113081113096%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt113079113090%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl113081113096%_))
                    (let* ((_%$tgt113082113100%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl113081113096%_)))
                           (_%$hd113083113103%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt113082113100%_)))
                           (_%$tl113084113106%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt113082113100%_)))
                           (_%rator113110%_ _%$hd113083113103%_)
                           (_%rands113112%_ _%$tl113084113106%_))
                      (__SRC__%
                       (cons (__compile _%rator113110%_)
                             (map __compile _%rands113112%_))
                       _%stx113074%_))
                    (_%$E113078113087%_)))
              (_%$E113078113087%_)))))
    (define __compile-ref%
      (lambda (_%stx113036%_)
        (let* ((_%$e113038%_ _%stx113036%_)
               (_%$E113040113049%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113038%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113038%_))
              (let* ((_%$tgt113041113052%_
                      (let () (declare (not safe)) (__AST-e _%$e113038%_)))
                     (_%$hd113042113055%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt113041113052%_)))
                     (_%$tl113043113058%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt113041113052%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl113043113058%_))
                    (let* ((_%$tgt113044113062%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl113043113058%_)))
                           (_%$hd113045113065%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt113044113062%_)))
                           (_%$tl113046113068%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt113044113062%_)))
                           (_%id113072%_ _%$hd113045113065%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl113046113068%_))
                                  '())
                          (__SRC__% _%id113072%_ _%stx113036%_)
                          (_%$E113040113049%_)))
                    (_%$E113040113049%_)))
              (_%$E113040113049%_)))))
    (define __compile-setq%
      (lambda (_%stx112983%_)
        (let* ((_%$e112985%_ _%stx112983%_)
               (_%$E112987112999%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e112985%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e112985%_))
              (let* ((_%$tgt112988113002%_
                      (let () (declare (not safe)) (__AST-e _%$e112985%_)))
                     (_%$hd112989113005%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt112988113002%_)))
                     (_%$tl112990113008%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt112988113002%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl112990113008%_))
                    (let* ((_%$tgt112991113012%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl112990113008%_)))
                           (_%$hd112992113015%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt112991113012%_)))
                           (_%$tl112993113018%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt112991113012%_)))
                           (_%id113022%_ _%$hd112992113015%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl112993113018%_))
                          (let* ((_%$tgt112994113024%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl112993113018%_)))
                                 (_%$hd112995113027%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112994113024%_)))
                                 (_%$tl112996113030%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112994113024%_)))
                                 (_%expr113034%_ _%$hd112995113027%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl112996113030%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id113022%_
                                              _%stx112983%_)
                                             (cons (__compile _%expr113034%_)
                                                   '())))
                                 _%stx112983%_)
                                (_%$E112987112999%_)))
                          (_%$E112987112999%_)))
                    (_%$E112987112999%_)))
              (_%$E112987112999%_)))))
    (define __compile-if%
      (lambda (_%stx112915%_)
        (let* ((_%$e112917%_ _%stx112915%_)
               (_%$E112919112934%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e112917%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e112917%_))
              (let* ((_%$tgt112920112937%_
                      (let () (declare (not safe)) (__AST-e _%$e112917%_)))
                     (_%$hd112921112940%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt112920112937%_)))
                     (_%$tl112922112943%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt112920112937%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl112922112943%_))
                    (let* ((_%$tgt112923112947%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl112922112943%_)))
                           (_%$hd112924112950%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt112923112947%_)))
                           (_%$tl112925112953%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt112923112947%_)))
                           (_%p112957%_ _%$hd112924112950%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl112925112953%_))
                          (let* ((_%$tgt112926112959%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl112925112953%_)))
                                 (_%$hd112927112962%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112926112959%_)))
                                 (_%$tl112928112965%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112926112959%_)))
                                 (_%t112969%_ _%$hd112927112962%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl112928112965%_))
                                (let* ((_%$tgt112929112971%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl112928112965%_)))
                                       (_%$hd112930112974%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt112929112971%_)))
                                       (_%$tl112931112977%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt112929112971%_)))
                                       (_%f112981%_ _%$hd112930112974%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl112931112977%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p112957%_)
                                                   (cons (__compile
                                                          _%t112969%_)
                                                         (cons (__compile
                                                                _%f112981%_)
                                                               '()))))
                                       _%stx112915%_)
                                      (_%$E112919112934%_)))
                                (_%$E112919112934%_)))
                          (_%$E112919112934%_)))
                    (_%$E112919112934%_)))
              (_%$E112919112934%_)))))
    (define __compile-quote%
      (lambda (_%stx112877%_)
        (let* ((_%$e112879%_ _%stx112877%_)
               (_%$E112881112890%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e112879%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e112879%_))
              (let* ((_%$tgt112882112893%_
                      (let () (declare (not safe)) (__AST-e _%$e112879%_)))
                     (_%$hd112883112896%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt112882112893%_)))
                     (_%$tl112884112899%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt112882112893%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl112884112899%_))
                    (let* ((_%$tgt112885112903%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl112884112899%_)))
                           (_%$hd112886112906%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt112885112903%_)))
                           (_%$tl112887112909%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt112885112903%_)))
                           (_%e112913%_ _%$hd112886112906%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl112887112909%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e112913%_))
                                       '()))
                           _%stx112877%_)
                          (_%$E112881112890%_)))
                    (_%$E112881112890%_)))
              (_%$E112881112890%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx112839%_)
        (let* ((_%$e112841%_ _%stx112839%_)
               (_%$E112843112852%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e112841%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e112841%_))
              (let* ((_%$tgt112844112855%_
                      (let () (declare (not safe)) (__AST-e _%$e112841%_)))
                     (_%$hd112845112858%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt112844112855%_)))
                     (_%$tl112846112861%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt112844112855%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl112846112861%_))
                    (let* ((_%$tgt112847112865%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl112846112861%_)))
                           (_%$hd112848112868%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt112847112865%_)))
                           (_%$tl112849112871%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt112847112865%_)))
                           (_%e112875%_ _%$hd112848112868%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl112849112871%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e112875%_ '()))
                           _%stx112839%_)
                          (_%$E112843112852%_)))
                    (_%$E112843112852%_)))
              (_%$E112843112852%_)))))
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

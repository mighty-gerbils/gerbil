(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1755903075)
  (begin
    (define __syntax::t
      (let ((__tmp119422 (list)) (__tmp119421 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp119422
         '(e id)
         __tmp119421
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args119226%_
        (apply make-instance __syntax::t _%$args119226%_)))
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
      (let ((__tmp119424 (list __syntax::t))
            (__tmp119423 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp119424
         '()
         __tmp119423
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args119223%_
        (apply make-instance __core-form::t _%$args119223%_)))
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
      (let ((__tmp119426 (list __core-form::t))
            (__tmp119425 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp119426
         '()
         __tmp119425
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args119220%_
        (apply make-instance __core-expression::t _%$args119220%_)))
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
      (let ((__tmp119428 (list __core-form::t))
            (__tmp119427 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp119428
         '()
         __tmp119427
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args119217%_
        (apply make-instance __core-special-form::t _%$args119217%_)))
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
      (lambda (_%id119215%_)
        (let ((__tmp119429
               (let () (declare (not safe)) (__AST-e _%id119215%_))))
          (declare (not safe))
          (__hash-get __core __tmp119429))))
    (define __core-bound-id?__%
      (lambda (_%id119198%_ _%is?119199%_)
        (let ((_%$e119201%_ (__core-resolve _%id119198%_)))
          (if _%$e119201%_ (_%is?119199%_ _%$e119201%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id119208%_)
        (let ((_%is?119210%_ true))
          (__core-bound-id?__% _%id119208%_ _%is?119210%_))))
    (define __core-bound-id?
      (lambda _g119430_
        (let ((_g119431_ (let () (declare (not safe)) (##length _g119430_))))
          (cond ((let () (declare (not safe)) (##fx= _g119431_ 1))
                 (apply __core-bound-id?__0 _g119430_))
                ((let () (declare (not safe)) (##fx= _g119431_ 2))
                 (apply __core-bound-id?__% _g119430_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g119430_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id119181%_ _%e119182%_ _%make119183%_)
        (let ((__tmp119432
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e119182%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e119182%_
                   (_%make119183%_ _%e119182%_ _%id119181%_))))
          (declare (not safe))
          (__hash-put! __core _%id119181%_ __tmp119432))))
    (define __core-bind-syntax!__0
      (lambda (_%id119188%_ _%e119189%_)
        (let ((_%make119191%_ make-__syntax))
          (__core-bind-syntax!__% _%id119188%_ _%e119189%_ _%make119191%_))))
    (define __core-bind-syntax!
      (lambda _g119433_
        (let ((_g119434_ (let () (declare (not safe)) (##length _g119433_))))
          (cond ((let () (declare (not safe)) (##fx= _g119434_ 2))
                 (apply __core-bind-syntax!__0 _g119433_))
                ((let () (declare (not safe)) (##fx= _g119434_ 3))
                 (apply __core-bind-syntax!__% _g119433_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g119433_))))))
    (define __SRC__%
      (lambda (_%e119161%_ _%src-stx119162%_)
        (if (or (pair? _%e119161%_) (symbol? _%e119161%_))
            (let ((__tmp119435
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx119162%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx119162%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e119161%_ __tmp119435))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e119161%_ 'gerbil#AST::t))
                (let ((__tmp119437
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e119161%_ '1 '#f '#f)))
                      (__tmp119436
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e119161%_)))))
                  (declare (not safe))
                  (##make-source __tmp119437 __tmp119436))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e119161%_))))))
    (define __SRC__0
      (lambda (_%e119173%_)
        (let ((_%src-stx119175%_ '#f))
          (__SRC__% _%e119173%_ _%src-stx119175%_))))
    (define __SRC
      (lambda _g119438_
        (let ((_g119439_ (let () (declare (not safe)) (##length _g119438_))))
          (cond ((let () (declare (not safe)) (##fx= _g119439_ 1))
                 (apply __SRC__0 _g119438_))
                ((let () (declare (not safe)) (##fx= _g119439_ 2))
                 (apply __SRC__% _g119438_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g119438_))))))
    (define __locat
      (lambda (_%loc119158%_)
        (if (let () (declare (not safe)) (##locat? _%loc119158%_))
            _%loc119158%_
            '#f)))
    (define __check-values
      (lambda (_%obj119153%_ _%k119154%_)
        (let ((_%count119156%_
               (if (let () (declare (not safe)) (##values? _%obj119153%_))
                   (let ()
                     (declare (not safe))
                     (##values-length _%obj119153%_))
                   '1)))
          (if (fx= _%count119156%_ _%k119154%_)
              '#!void
              (let ((__tmp119441
                     (if (fx< _%count119156%_ _%k119154%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp119440
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj119153%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj119153%_))
                         _%obj119153%_)))
                (declare (not safe))
                (error __tmp119441 __tmp119440 _%k119154%_))))))
    (define __compile
      (lambda (_%stx119122%_)
        (let* ((_%$e119124%_ _%stx119122%_)
               (_%$E119126119132%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e119124%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e119124%_))
              (let* ((_%$tgt119127119135%_
                      (let () (declare (not safe)) (__AST-e _%$e119124%_)))
                     (_%$hd119128119138%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt119127119135%_)))
                     (_%$tl119129119141%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt119127119135%_)))
                     (_%form119145%_ _%$hd119128119138%_)
                     (_%$e119147%_ (__core-resolve _%form119145%_)))
                (if _%$e119147%_
                    ((lambda (_%bind119150%_)
                       ((##structure-ref _%bind119150%_ '1 __syntax::t '#f)
                        _%stx119122%_))
                     _%$e119147%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx119122%_
                       _%form119145%_))))
              (_%$E119126119132%_)))))
    (define __compile-error__%
      (lambda (_%stx119109%_ _%detail119110%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx119109%_
           _%detail119110%_))))
    (define __compile-error__0
      (lambda (_%stx119115%_)
        (let ((_%detail119117%_ '#f))
          (__compile-error__% _%stx119115%_ _%detail119117%_))))
    (define __compile-error
      (lambda _g119442_
        (let ((_g119443_ (let () (declare (not safe)) (##length _g119442_))))
          (cond ((let () (declare (not safe)) (##fx= _g119443_ 1))
                 (apply __compile-error__0 _g119442_))
                ((let () (declare (not safe)) (##fx= _g119443_ 2))
                 (apply __compile-error__% _g119442_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g119442_))))))
    (define __compile-ignore%
      (lambda (_%stx119106%_) (__SRC__% ''#!void _%stx119106%_)))
    (define __compile-begin%
      (lambda (_%stx119081%_)
        (let* ((_%$e119083%_ _%stx119081%_)
               (_%$E119085119091%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e119083%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e119083%_))
              (let* ((_%$tgt119086119094%_
                      (let () (declare (not safe)) (__AST-e _%$e119083%_)))
                     (_%$hd119087119097%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt119086119094%_)))
                     (_%$tl119088119100%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt119086119094%_)))
                     (_%body119104%_ _%$tl119088119100%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body119104%_))
                 _%stx119081%_))
              (_%$E119085119091%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx119056%_)
        (let* ((_%$e119058%_ _%stx119056%_)
               (_%$E119060119066%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e119058%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e119058%_))
              (let* ((_%$tgt119061119069%_
                      (let () (declare (not safe)) (__AST-e _%$e119058%_)))
                     (_%$hd119062119072%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt119061119069%_)))
                     (_%$tl119063119075%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt119061119069%_)))
                     (_%body119079%_ _%$tl119063119075%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body119079%_)))
                 _%stx119056%_))
              (_%$E119060119066%_)))))
    (define __compile-import%
      (lambda (_%stx119031%_)
        (let* ((_%$e119033%_ _%stx119031%_)
               (_%$E119035119041%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e119033%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e119033%_))
              (let* ((_%$tgt119036119044%_
                      (let () (declare (not safe)) (__AST-e _%$e119033%_)))
                     (_%$hd119037119047%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt119036119044%_)))
                     (_%$tl119038119050%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt119036119044%_)))
                     (_%body119054%_ _%$tl119038119050%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body119054%_ '())) '()))
                 _%stx119031%_))
              (_%$E119035119041%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx118978%_)
        (let* ((_%$e118980%_ _%stx118978%_)
               (_%$E118982118994%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e118980%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e118980%_))
              (let* ((_%$tgt118983118997%_
                      (let () (declare (not safe)) (__AST-e _%$e118980%_)))
                     (_%$hd118984119000%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt118983118997%_)))
                     (_%$tl118985119003%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt118983118997%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl118985119003%_))
                    (let* ((_%$tgt118986119007%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl118985119003%_)))
                           (_%$hd118987119010%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt118986119007%_)))
                           (_%$tl118988119013%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt118986119007%_)))
                           (_%ann119017%_ _%$hd118987119010%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl118988119013%_))
                          (let* ((_%$tgt118989119019%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl118988119013%_)))
                                 (_%$hd118990119022%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt118989119019%_)))
                                 (_%$tl118991119025%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt118989119019%_)))
                                 (_%expr119029%_ _%$hd118990119022%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl118991119025%_))
                                        '())
                                (__compile _%expr119029%_)
                                (_%$E118982118994%_)))
                          (_%$E118982118994%_)))
                    (_%$E118982118994%_)))
              (_%$E118982118994%_)))))
    (define __compile-define-values%
      (lambda (_%stx118869%_)
        (let* ((_%$e118871%_ _%stx118869%_)
               (_%$E118873118885%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e118871%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e118871%_))
              (let* ((_%$tgt118874118888%_
                      (let () (declare (not safe)) (__AST-e _%$e118871%_)))
                     (_%$hd118875118891%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt118874118888%_)))
                     (_%$tl118876118894%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt118874118888%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl118876118894%_))
                    (let* ((_%$tgt118877118898%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl118876118894%_)))
                           (_%$hd118878118901%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt118877118898%_)))
                           (_%$tl118879118904%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt118877118898%_)))
                           (_%hd118908%_ _%$hd118878118901%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl118879118904%_))
                          (let* ((_%$tgt118880118910%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl118879118904%_)))
                                 (_%$hd118881118913%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt118880118910%_)))
                                 (_%$tl118882118916%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt118880118910%_)))
                                 (_%expr118920%_ _%$hd118881118913%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl118882118916%_))
                                        '())
                                (let* ((_%$e118922%_ _%hd118908%_)
                                       (_%$E118924118965%_
                                        (lambda ()
                                          (let ((_%$E118925118950%_
                                                 (lambda ()
                                                   (let* ((_%$E118926118937%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e118922%_))))
                  (_%ids118940%_ _%hd118908%_)
                  (_%len118942%_ (length _%ids118940%_))
                  (_%tmp118944%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp118944%_
                                       (cons (__compile _%expr118920%_) '())))
                           _%stx118869%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp118944%_
                                             (cons _%len118942%_ '())))
                                 _%stx118869%_)
                                (let ((__tmp119444
                                       (let ((__tmp119446
                                              (lambda (_%id118947%_
                                                       _%k118948%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id118947%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id118947%_)
                         (cons (cons '##values-ref
                                     (cons _%tmp118944%_
                                           (cons _%k118948%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx118869%_)
                                                    '#f)))
                                             (__tmp119445
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len118942%_))))
                                         (declare (not safe))
                                         (__filter-map2
                                          __tmp119446
                                          _%ids118940%_
                                          __tmp119445))))
                                  (declare (not safe))
                                  (__foldr1 cons '() __tmp119444)))))
              _%stx118869%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e118922%_))
                                                (let* ((_%$tgt118927118953%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e118922%_)))
                                                       (_%$hd118928118956%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt118927118953%_)))
                                                       (_%$tl118929118959%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt118927118953%_)))
                                                       (_%id118963%_
                                                        _%$hd118928118956%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl118929118959%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id118963%_)
                           (cons (__compile _%expr118920%_) '())))
               _%stx118869%_)
              (_%$E118925118950%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E118925118950%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e118922%_))
                                      (let* ((_%$tgt118930118968%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e118922%_)))
                                             (_%$hd118931118971%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt118930118968%_)))
                                             (_%$tl118932118974%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt118930118968%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd118931118971%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl118932118974%_))
                                                        '())
                                                (__compile _%expr118920%_)
                                                (_%$E118924118965%_))
                                            (_%$E118924118965%_)))
                                      (_%$E118924118965%_)))
                                (_%$E118873118885%_)))
                          (_%$E118873118885%_)))
                    (_%$E118873118885%_)))
              (_%$E118873118885%_)))))
    (define __compile-head-id
      (lambda (_%e118867%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e118867%_))
             _%e118867%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd118824%_)
        (let _%recur118826%_ ((_%rest118828%_ _%hd118824%_))
          (let* ((_%$e118830%_ _%rest118828%_)
                 (_%$E118832118850%_
                  (lambda ()
                    (let ((_%$E118833118847%_
                           (lambda ()
                             (let* ((_%$E118834118842%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e118830%_))))
                                    (_%tail118845%_ _%$e118830%_))
                               (__compile-head-id _%tail118845%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e118830%_))
                                  '())
                          '()
                          (_%$E118833118847%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e118830%_))
                (let* ((_%$tgt118835118853%_
                        (let () (declare (not safe)) (__AST-e _%$e118830%_)))
                       (_%$hd118836118856%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt118835118853%_)))
                       (_%$tl118837118859%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt118835118853%_)))
                       (_%hd118863%_ _%$hd118836118856%_)
                       (_%rest118865%_ _%$tl118837118859%_))
                  (cons (__compile-head-id _%hd118863%_)
                        (_%recur118826%_ _%rest118865%_)))
                (_%$E118832118850%_))))))
    (define __compile-lambda%
      (lambda (_%stx118771%_)
        (let* ((_%$e118773%_ _%stx118771%_)
               (_%$E118775118787%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e118773%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e118773%_))
              (let* ((_%$tgt118776118790%_
                      (let () (declare (not safe)) (__AST-e _%$e118773%_)))
                     (_%$hd118777118793%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt118776118790%_)))
                     (_%$tl118778118796%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt118776118790%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl118778118796%_))
                    (let* ((_%$tgt118779118800%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl118778118796%_)))
                           (_%$hd118780118803%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt118779118800%_)))
                           (_%$tl118781118806%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt118779118800%_)))
                           (_%hd118810%_ _%$hd118780118803%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl118781118806%_))
                          (let* ((_%$tgt118782118812%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl118781118806%_)))
                                 (_%$hd118783118815%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt118782118812%_)))
                                 (_%$tl118784118818%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt118782118812%_)))
                                 (_%body118822%_ _%$hd118783118815%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl118784118818%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd118810%_)
                                             (cons (__compile _%body118822%_)
                                                   '())))
                                 _%stx118771%_)
                                (_%$E118775118787%_)))
                          (_%$E118775118787%_)))
                    (_%$E118775118787%_)))
              (_%$E118775118787%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx118563%_)
        (letrec ((_%variadic?118565%_
                  (lambda (_%hd118736%_)
                    (let* ((_%$e118738%_ _%hd118736%_)
                           (_%$E118740118756%_
                            (lambda ()
                              (let ((_%$E118741118753%_
                                     (lambda ()
                                       (let ((_%$E118742118750%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e118738%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e118738%_))
                                            '())
                                    '#f
                                    (_%$E118741118753%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e118738%_))
                          (let* ((_%$tgt118743118759%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e118738%_)))
                                 (_%$hd118744118762%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt118743118759%_)))
                                 (_%$tl118745118765%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt118743118759%_)))
                                 (_%rest118769%_ _%$tl118745118765%_))
                            (_%variadic?118565%_ _%rest118769%_))
                          (_%$E118740118756%_)))))
                 (_%arity118566%_
                  (lambda (_%hd118701%_)
                    (let _%lp118703%_ ((_%rest118705%_ _%hd118701%_)
                                       (_%k118706%_ '0))
                      (let* ((_%$e118708%_ _%rest118705%_)
                             (_%$E118710118721%_
                              (lambda ()
                                (let ((_%$E118711118718%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e118708%_)))))
                                  _%k118706%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e118708%_))
                            (let* ((_%$tgt118712118724%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e118708%_)))
                                   (_%$hd118713118727%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt118712118724%_)))
                                   (_%$tl118714118730%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt118712118724%_)))
                                   (_%rest118734%_ _%$tl118714118730%_))
                              (_%lp118703%_
                               _%rest118734%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%k118706%_ '1))))
                            (_%$E118710118721%_))))))
                 (_%generate118567%_
                  (lambda (_%rest118628%_ _%args118629%_ _%len118630%_)
                    (let* ((_%$e118632%_ _%rest118628%_)
                           (_%$E118634118645%_
                            (lambda ()
                              (let ((_%$E118635118642%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e118632%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args118629%_ '())))
                                 _%stx118563%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e118632%_))
                          (let* ((_%$tgt118636118648%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e118632%_)))
                                 (_%$hd118637118651%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt118636118648%_)))
                                 (_%$tl118638118654%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt118636118648%_)))
                                 (_%clause118658%_ _%$hd118637118651%_)
                                 (_%rest118660%_ _%$tl118638118654%_)
                                 (_%$e118662%_ _%clause118658%_)
                                 (_%$E118664118673%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e118662%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e118662%_))
                                (let* ((_%$tgt118665118676%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e118662%_)))
                                       (_%$hd118666118679%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt118665118676%_)))
                                       (_%$tl118667118682%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt118665118676%_)))
                                       (_%hd118686%_ _%$hd118666118679%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl118667118682%_))
                                      (let* ((_%$tgt118668118688%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl118667118682%_)))
                                             (_%$hd118669118691%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt118668118688%_)))
                                             (_%$tl118670118694%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt118668118688%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl118670118694%_))
                                                    '())
                                            (let ((_%clen118698%_
                                                   (_%arity118566%_
                                                    _%hd118686%_))
                                                  (_%cmp118699%_
                                                   (if (_%variadic?118565%_
                                                        _%hd118686%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp118699%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len118630%_ (cons _%clen118698%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause118658%_))
                                      (cons _%args118629%_ '())))
                          _%stx118563%_)
                         (cons (_%generate118567%_
                                _%rest118660%_
                                _%args118629%_
                                _%len118630%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx118563%_))
                                            (_%$E118664118673%_)))
                                      (_%$E118664118673%_)))
                                (_%$E118664118673%_)))
                          (_%$E118634118645%_))))))
          (let* ((_%$e118569%_ _%stx118563%_)
                 (_%$E118571118603%_
                  (lambda ()
                    (let ((_%$E118572118585%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e118569%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e118569%_))
                          (let* ((_%$tgt118573118588%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e118569%_)))
                                 (_%$hd118574118591%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt118573118588%_)))
                                 (_%$tl118575118594%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt118573118588%_)))
                                 (_%clauses118598%_ _%$tl118575118594%_))
                            (let ((_%args118600%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx118563%_))
                                  (_%len118601%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx118563%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args118600%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len118601%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args118600%_ '()))
                                         _%stx118563%_)
                                        '()))
                            '())
                      (cons (_%generate118567%_
                             _%clauses118598%_
                             _%args118600%_
                             _%len118601%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx118563%_)
                                                 '())))
                               _%stx118563%_)))
                          (_%$E118572118585%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e118569%_))
                (let* ((_%$tgt118576118606%_
                        (let () (declare (not safe)) (__AST-e _%$e118569%_)))
                       (_%$hd118577118609%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt118576118606%_)))
                       (_%$tl118578118612%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt118576118606%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl118578118612%_))
                      (let* ((_%$tgt118579118616%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl118578118612%_)))
                             (_%$hd118580118619%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt118579118616%_)))
                             (_%$tl118581118622%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt118579118616%_)))
                             (_%clause118626%_ _%$hd118580118619%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl118581118622%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause118626%_))
                            (_%$E118571118603%_)))
                      (_%$E118571118603%_)))
                (_%$E118571118603%_))))))
    (define __compile-let-form
      (lambda (_%stx118332%_ _%compile-simple118333%_ _%compile-values118334%_)
        (letrec ((_%simple-bind?118336%_
                  (lambda (_%hd118521%_)
                    (let* ((_%hd118522118532%_ _%hd118521%_)
                           (_%else118525118540%_ (lambda () '#f)))
                      (let ((_%K118528118553%_ (lambda (_%id118551%_) '#t))
                            (_%K118527118545%_ (lambda () '#t)))
                        (let ((_%try-match118524118548%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd118522118532%_ '#f))
                                     (_%K118527118545%_)
                                     (_%else118525118540%_)))))
                          (if (pair? _%hd118522118532%_)
                              (let ((_%tl118530118558%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd118522118532%_)))
                                    (_%hd118529118556%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd118522118532%_))))
                                (if (null? _%tl118530118558%_)
                                    (let ((_%id118561%_ _%hd118529118556%_))
                                      (_%K118528118553%_ _%id118561%_))
                                    (_%try-match118524118548%_)))
                              (_%try-match118524118548%_)))))))
                 (_%car-e118337%_
                  (lambda (_%hd118519%_)
                    (if (pair? _%hd118519%_)
                        (let () (declare (not safe)) (##car _%hd118519%_))
                        _%hd118519%_))))
          (let* ((_%$e118339%_ _%stx118332%_)
                 (_%$E118341118484%_
                  (lambda ()
                    (let ((_%$E118342118364%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e118339%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e118339%_))
                          (let* ((_%$tgt118343118367%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e118339%_)))
                                 (_%$hd118344118370%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt118343118367%_)))
                                 (_%$tl118345118373%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt118343118367%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl118345118373%_))
                                (let* ((_%$tgt118346118377%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl118345118373%_)))
                                       (_%$hd118347118380%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt118346118377%_)))
                                       (_%$tl118348118383%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt118346118377%_)))
                                       (_%hd118387%_ _%$hd118347118380%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl118348118383%_))
                                      (let* ((_%$tgt118349118389%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl118348118383%_)))
                                             (_%$hd118350118392%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt118349118389%_)))
                                             (_%$tl118351118395%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt118349118389%_)))
                                             (_%body118399%_
                                              _%$hd118350118392%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl118351118395%_))
                                                    '())
                                            (let* ((_%hd-ids118439%_
                                                    (map (lambda (_%bind118401%_)
                                                           (let* ((_%$e118403%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind118401%_)
                          (_%$E118405118414%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e118403%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e118403%_))
                         (let* ((_%$tgt118406118417%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e118403%_)))
                                (_%$hd118407118420%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt118406118417%_)))
                                (_%$tl118408118423%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt118406118417%_)))
                                (_%ids118427%_ _%$hd118407118420%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl118408118423%_))
                               (let* ((_%$tgt118409118429%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl118408118423%_)))
                                      (_%$hd118410118432%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt118409118429%_)))
                                      (_%$tl118411118435%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt118409118429%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl118411118435%_))
                                             '())
                                     _%ids118427%_
                                     (_%$E118405118414%_)))
                               (_%$E118405118414%_)))
                         (_%$E118405118414%_))))
                 _%hd118387%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs118479%_
                                                    (map (lambda (_%bind118441%_)
                                                           (let* ((_%$e118443%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind118441%_)
                          (_%$E118445118454%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e118443%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e118443%_))
                         (let* ((_%$tgt118446118457%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e118443%_)))
                                (_%$hd118447118460%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt118446118457%_)))
                                (_%$tl118448118463%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt118446118457%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl118448118463%_))
                               (let* ((_%$tgt118449118467%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl118448118463%_)))
                                      (_%$hd118450118470%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt118449118467%_)))
                                      (_%$tl118451118473%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt118449118467%_)))
                                      (_%expr118477%_ _%$hd118450118470%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl118451118473%_))
                                             '())
                                     (__compile _%expr118477%_)
                                     (_%$E118445118454%_)))
                               (_%$E118445118454%_)))
                         (_%$E118445118454%_))))
                 _%hd118387%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body118481%_
                                                    (__compile
                                                     _%body118399%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__andmap1
                                                     _%simple-bind?118336%_
                                                     _%hd-ids118439%_))
                                                  (_%compile-simple118333%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e118337%_
                                                            _%hd-ids118439%_))
                                                   _%exprs118479%_
                                                   _%body118481%_)
                                                  (_%compile-values118334%_
                                                   _%hd-ids118439%_
                                                   _%exprs118479%_
                                                   _%body118481%_)))
                                            (_%$E118342118364%_)))
                                      (_%$E118342118364%_)))
                                (_%$E118342118364%_)))
                          (_%$E118342118364%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e118339%_))
                (let* ((_%$tgt118352118487%_
                        (let () (declare (not safe)) (__AST-e _%$e118339%_)))
                       (_%$hd118353118490%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt118352118487%_)))
                       (_%$tl118354118493%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt118352118487%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl118354118493%_))
                      (let* ((_%$tgt118355118497%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl118354118493%_)))
                             (_%$hd118356118500%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt118355118497%_)))
                             (_%$tl118357118503%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt118355118497%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd118356118500%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl118357118503%_))
                                (let* ((_%$tgt118358118507%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl118357118503%_)))
                                       (_%$hd118359118510%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt118358118507%_)))
                                       (_%$tl118360118513%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt118358118507%_)))
                                       (_%body118517%_ _%$hd118359118510%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl118360118513%_))
                                              '())
                                      (__compile _%body118517%_)
                                      (_%$E118341118484%_)))
                                (_%$E118341118484%_))
                            (_%$E118341118484%_)))
                      (_%$E118341118484%_)))
                (_%$E118341118484%_))))))
    (define __compile-let-values%
      (lambda (_%stx118144%_)
        (letrec ((_%compile-simple118146%_
                  (lambda (_%hd-ids118328%_ _%exprs118329%_ _%body118330%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp119447
                                        (map __compile-head-id
                                             _%hd-ids118328%_)))
                                   (declare (not safe))
                                   (##map list __tmp119447 _%exprs118329%_))
                                 (cons _%body118330%_ '())))
                     _%stx118144%_)))
                 (_%compile-values118147%_
                  (lambda (_%hd-ids118243%_ _%exprs118244%_ _%body118245%_)
                    (let _%lp118247%_ ((_%rest118249%_ _%hd-ids118243%_)
                                       (_%exprs118250%_ _%exprs118244%_)
                                       (_%bind118251%_ '())
                                       (_%post118252%_ '()))
                      (let* ((_%rest118253118267%_ _%rest118249%_)
                             (_%else118256118275%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind118251%_)
                                             (cons (_%compile-post118148%_
                                                    _%post118252%_
                                                    _%body118245%_)
                                                   '())))
                                 _%stx118144%_))))
                        (let ((_%K118261118311%_
                               (lambda (_%rest118308%_ _%id118309%_)
                                 (_%lp118247%_
                                  _%rest118308%_
                                  (cdr _%exprs118250%_)
                                  (cons (cons (__compile-head-id _%id118309%_)
                                              (cons (car _%exprs118250%_) '()))
                                        _%bind118251%_)
                                  _%post118252%_)))
                              (_%K118258118293%_
                               (lambda (_%rest118279%_ _%hd118280%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd118280%_))
                                     (_%lp118247%_
                                      _%rest118279%_
                                      (cdr _%exprs118250%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd118280%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs118250%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind118251%_)
                                      _%post118252%_)
                                     (if (list? _%hd118280%_)
                                         (let* ((_%len118284%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd118280%_)))
                                                (_%tmp118286%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp118247%_
                                            _%rest118279%_
                                            (cdr _%exprs118250%_)
                                            (cons (cons _%tmp118286%_
                                                        (cons (car _%exprs118250%_)
                                                              '()))
                                                  _%bind118251%_)
                                            (cons (cons _%tmp118286%_
                                                        (cons _%len118284%_
                                                              (let ((__tmp119449
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id118289%_ _%k118290%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id118289%_))
                                   (cons (__SRC__0 _%id118289%_) _%k118290%_)
                                   '#f)))
                            (__tmp119448
                             (let ()
                               (declare (not safe))
                               (##iota _%len118284%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp119449 _%hd118280%_ __tmp119448))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post118252%_)))
                                         (__compile-error__%
                                          _%stx118144%_
                                          _%hd118280%_))))))
                          (if (pair? _%rest118253118267%_)
                              (let ((_%tl118263118316%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest118253118267%_)))
                                    (_%hd118262118314%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest118253118267%_))))
                                (if (pair? _%hd118262118314%_)
                                    (let ((_%tl118265118321%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd118262118314%_)))
                                          (_%hd118264118319%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd118262118314%_))))
                                      (if (null? _%tl118265118321%_)
                                          (let ((_%id118324%_
                                                 _%hd118264118319%_)
                                                (_%rest118326%_
                                                 _%tl118263118316%_))
                                            (_%K118261118311%_
                                             _%rest118326%_
                                             _%id118324%_))
                                          (let ((_%hd118301%_
                                                 _%hd118262118314%_)
                                                (_%rest118303%_
                                                 _%tl118263118316%_))
                                            (_%K118258118293%_
                                             _%rest118303%_
                                             _%hd118301%_))))
                                    (let ((_%hd118301%_ _%hd118262118314%_)
                                          (_%rest118303%_ _%tl118263118316%_))
                                      (_%K118258118293%_
                                       _%rest118303%_
                                       _%hd118301%_))))
                              (_%else118256118275%_)))))))
                 (_%compile-post118148%_
                  (lambda (_%post118150%_ _%body118151%_)
                    (let _%lp118153%_ ((_%rest118155%_ _%post118150%_)
                                       (_%check118156%_ '())
                                       (_%bind118157%_ '()))
                      (let* ((_%rest118158118170%_ _%rest118155%_)
                             (_%else118160118178%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp119450
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind118157%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body118151%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx118144%_)
                                                    '())))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp119450
                                          _%check118156%_)))
                                 _%stx118144%_)))
                             (_%K118162118217%_
                              (lambda (_%rest118181%_
                                       _%init118182%_
                                       _%len118183%_
                                       _%tmp118184%_)
                                (_%lp118153%_
                                 _%rest118181%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp118184%_
                                                    (cons _%len118183%_ '())))
                                        _%stx118144%_)
                                       _%check118156%_)
                                 (let ((__tmp119451
                                        (lambda (_%hd118186%_ _%r118187%_)
                                          (let* ((_%hd118188118195%_
                                                  _%hd118186%_)
                                                 (_%E118190118199%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd118188118195%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K118191118205%_
                                                  (lambda (_%k118202%_
                                                           _%id118203%_)
                                                    (cons (cons _%id118203%_
                                                                (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp118184%_
                                          (cons _%k118202%_ '())))
                              '()))
                  _%r118187%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd118188118195%_)
                                                (let ((_%hd118192118208%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd118188118195%_)))
                                                      (_%tl118193118210%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd118188118195%_))))
                                                  (let* ((_%id118213%_
                                                          _%hd118192118208%_)
                                                         (_%k118215%_
                                                          _%tl118193118210%_))
                                                    (_%K118191118205%_
                                                     _%k118215%_
                                                     _%id118213%_)))
                                                (_%E118190118199%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp119451
                                    _%bind118157%_
                                    _%init118182%_))))))
                        (if (pair? _%rest118158118170%_)
                            (let ((_%hd118163118220%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest118158118170%_)))
                                  (_%tl118164118222%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest118158118170%_))))
                              (if (pair? _%hd118163118220%_)
                                  (let ((_%hd118165118225%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd118163118220%_)))
                                        (_%tl118166118227%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd118163118220%_))))
                                    (let ((_%tmp118230%_ _%hd118165118225%_))
                                      (if (pair? _%tl118166118227%_)
                                          (let ((_%hd118167118232%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl118166118227%_)))
                                                (_%tl118168118234%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl118166118227%_))))
                                            (let* ((_%len118237%_
                                                    _%hd118167118232%_)
                                                   (_%init118239%_
                                                    _%tl118168118234%_)
                                                   (_%rest118241%_
                                                    _%tl118164118222%_))
                                              (_%K118162118217%_
                                               _%rest118241%_
                                               _%init118239%_
                                               _%len118237%_
                                               _%tmp118230%_)))
                                          (_%else118160118178%_))))
                                  (_%else118160118178%_)))
                            (_%else118160118178%_)))))))
          (__compile-let-form
           _%stx118144%_
           _%compile-simple118146%_
           _%compile-values118147%_))))
    (define __compile-letrec-values%
      (lambda (_%stx117941%_)
        (letrec ((_%compile-simple117943%_
                  (lambda (_%hd-ids118140%_ _%exprs118141%_ _%body118142%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp119452
                                        (map __compile-head-id
                                             _%hd-ids118140%_)))
                                   (declare (not safe))
                                   (##map list __tmp119452 _%exprs118141%_))
                                 (cons _%body118142%_ '())))
                     _%stx117941%_)))
                 (_%compile-values117944%_
                  (lambda (_%hd-ids118051%_ _%exprs118052%_ _%body118053%_)
                    (let _%lp118055%_ ((_%rest118057%_ _%hd-ids118051%_)
                                       (_%exprs118058%_ _%exprs118052%_)
                                       (_%pre118059%_ '())
                                       (_%bind118060%_ '())
                                       (_%post118061%_ '()))
                      (let* ((_%rest118062118076%_ _%rest118057%_)
                             (_%else118065118084%_
                              (lambda ()
                                (_%compile-inner117945%_
                                 _%pre118059%_
                                 _%bind118060%_
                                 _%post118061%_
                                 _%body118053%_))))
                        (let ((_%K118070118123%_
                               (lambda (_%rest118120%_ _%id118121%_)
                                 (_%lp118055%_
                                  _%rest118120%_
                                  (cdr _%exprs118058%_)
                                  _%pre118059%_
                                  (cons (cons (__compile-head-id _%id118121%_)
                                              (cons (car _%exprs118058%_) '()))
                                        _%bind118060%_)
                                  _%post118061%_)))
                              (_%K118067118105%_
                               (lambda (_%rest118088%_ _%hd118089%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd118089%_))
                                     (_%lp118055%_
                                      _%rest118088%_
                                      (cdr _%exprs118058%_)
                                      _%pre118059%_
                                      (cons (cons (__compile-head-id
                                                   _%hd118089%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs118058%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind118060%_)
                                      _%post118061%_)
                                     (if (list? _%hd118089%_)
                                         (let* ((_%len118093%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd118089%_)))
                                                (_%tmp118095%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp118055%_
                                            _%rest118088%_
                                            (cdr _%exprs118058%_)
                                            (let ((__tmp119453
                                                   (lambda (_%id118098%_
                                                            _%r118099%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id118098%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id118098%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r118099%_)
                 _%r118099%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (__foldl1
                                               __tmp119453
                                               _%pre118059%_
                                               _%hd118089%_))
                                            (cons (cons _%tmp118095%_
                                                        (cons (car _%exprs118058%_)
                                                              '()))
                                                  _%bind118060%_)
                                            (cons (cons _%tmp118095%_
                                                        (cons _%len118093%_
                                                              (let ((__tmp119455
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id118101%_ _%k118102%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id118101%_))
                                   (cons (__SRC__0 _%id118101%_) _%k118102%_)
                                   '#f)))
                            (__tmp119454
                             (let ()
                               (declare (not safe))
                               (##iota _%len118093%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp119455 _%hd118089%_ __tmp119454))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post118061%_)))
                                         (__compile-error__%
                                          _%stx117941%_
                                          _%hd118089%_))))))
                          (if (pair? _%rest118062118076%_)
                              (let ((_%tl118072118128%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest118062118076%_)))
                                    (_%hd118071118126%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest118062118076%_))))
                                (if (pair? _%hd118071118126%_)
                                    (let ((_%tl118074118133%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd118071118126%_)))
                                          (_%hd118073118131%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd118071118126%_))))
                                      (if (null? _%tl118074118133%_)
                                          (let ((_%id118136%_
                                                 _%hd118073118131%_)
                                                (_%rest118138%_
                                                 _%tl118072118128%_))
                                            (_%K118070118123%_
                                             _%rest118138%_
                                             _%id118136%_))
                                          (let ((_%hd118113%_
                                                 _%hd118071118126%_)
                                                (_%rest118115%_
                                                 _%tl118072118128%_))
                                            (_%K118067118105%_
                                             _%rest118115%_
                                             _%hd118113%_))))
                                    (let ((_%hd118113%_ _%hd118071118126%_)
                                          (_%rest118115%_ _%tl118072118128%_))
                                      (_%K118067118105%_
                                       _%rest118115%_
                                       _%hd118113%_))))
                              (_%else118065118084%_)))))))
                 (_%compile-inner117945%_
                  (lambda (_%pre118046%_
                           _%bind118047%_
                           _%post118048%_
                           _%body118049%_)
                    (if (null? _%pre118046%_)
                        (_%compile-bind117946%_
                         _%bind118047%_
                         _%post118048%_
                         _%body118049%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre118046%_)
                                     (cons (_%compile-bind117946%_
                                            _%bind118047%_
                                            _%post118048%_
                                            _%body118049%_)
                                           '())))
                         _%stx117941%_))))
                 (_%compile-bind117946%_
                  (lambda (_%bind118042%_ _%post118043%_ _%body118044%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind118042%_)
                                 (cons (_%compile-post117947%_
                                        _%post118043%_
                                        _%body118044%_)
                                       '())))
                     _%stx117941%_)))
                 (_%compile-post117947%_
                  (lambda (_%post117949%_ _%body117950%_)
                    (let _%lp117952%_ ((_%rest117954%_ _%post117949%_)
                                       (_%check117955%_ '())
                                       (_%bind117956%_ '()))
                      (let* ((_%rest117957117969%_ _%rest117954%_)
                             (_%else117959117977%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp119456
                                              (let ((__tmp119457
                                                     (cons _%body117950%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp119457
                                                 _%bind117956%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp119456
                                          _%check117955%_)))
                                 _%stx117941%_)))
                             (_%K117961118016%_
                              (lambda (_%rest117980%_
                                       _%init117981%_
                                       _%len117982%_
                                       _%tmp117983%_)
                                (_%lp117952%_
                                 _%rest117980%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp117983%_
                                                    (cons _%len117982%_ '())))
                                        _%stx117941%_)
                                       _%check117955%_)
                                 (let ((__tmp119458
                                        (lambda (_%hd117985%_ _%r117986%_)
                                          (let* ((_%hd117987117994%_
                                                  _%hd117985%_)
                                                 (_%E117989117998%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd117987117994%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K117990118004%_
                                                  (lambda (_%k118001%_
                                                           _%id118002%_)
                                                    (cons (cons 'set!
                                                                (cons _%id118002%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##values-ref
                                          (cons _%tmp117983%_
                                                (cons _%k118001%_ '())))
                                    '())))
                  _%r117986%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd117987117994%_)
                                                (let ((_%hd117991118007%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd117987117994%_)))
                                                      (_%tl117992118009%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd117987117994%_))))
                                                  (let* ((_%id118012%_
                                                          _%hd117991118007%_)
                                                         (_%k118014%_
                                                          _%tl117992118009%_))
                                                    (_%K117990118004%_
                                                     _%k118014%_
                                                     _%id118012%_)))
                                                (_%E117989117998%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp119458
                                    _%bind117956%_
                                    _%init117981%_))))))
                        (if (pair? _%rest117957117969%_)
                            (let ((_%hd117962118019%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest117957117969%_)))
                                  (_%tl117963118021%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest117957117969%_))))
                              (if (pair? _%hd117962118019%_)
                                  (let ((_%hd117964118024%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd117962118019%_)))
                                        (_%tl117965118026%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd117962118019%_))))
                                    (let ((_%tmp118029%_ _%hd117964118024%_))
                                      (if (pair? _%tl117965118026%_)
                                          (let ((_%hd117966118031%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl117965118026%_)))
                                                (_%tl117967118033%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl117965118026%_))))
                                            (let* ((_%len118036%_
                                                    _%hd117966118031%_)
                                                   (_%init118038%_
                                                    _%tl117967118033%_)
                                                   (_%rest118040%_
                                                    _%tl117963118021%_))
                                              (_%K117961118016%_
                                               _%rest118040%_
                                               _%init118038%_
                                               _%len118036%_
                                               _%tmp118029%_)))
                                          (_%else117959117977%_))))
                                  (_%else117959117977%_)))
                            (_%else117959117977%_)))))))
          (__compile-let-form
           _%stx117941%_
           _%compile-simple117943%_
           _%compile-values117944%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx117692%_)
        (letrec ((_%compile-simple117694%_
                  (lambda (_%hd-ids117937%_ _%exprs117938%_ _%body117939%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp119459
                                        (map __compile-head-id
                                             _%hd-ids117937%_)))
                                   (declare (not safe))
                                   (##map list __tmp119459 _%exprs117938%_))
                                 (cons _%body117939%_ '())))
                     _%stx117692%_)))
                 (_%compile-values117695%_
                  (lambda (_%hd-ids117844%_ _%exprs117845%_ _%body117846%_)
                    (let _%lp117848%_ ((_%rest117850%_ _%hd-ids117844%_)
                                       (_%exprs117851%_ _%exprs117845%_)
                                       (_%bind117852%_ '())
                                       (_%post117853%_ '()))
                      (let* ((_%rest117854117868%_ _%rest117850%_)
                             (_%else117857117876%_
                              (lambda ()
                                (_%compile-bind117696%_
                                 _%bind117852%_
                                 _%post117853%_
                                 _%body117846%_))))
                        (let ((_%K117862117920%_
                               (lambda (_%rest117915%_ _%hd117916%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd117916%_))
                                     (let ((_%id117918%_
                                            (__SRC__0 _%hd117916%_)))
                                       (_%lp117848%_
                                        _%rest117915%_
                                        (cdr _%exprs117851%_)
                                        (cons (cons _%id117918%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind117852%_)
                                        (cons (cons _%id117918%_
                                                    (cons (car _%exprs117851%_)
                                                          '()))
                                              _%post117853%_)))
                                     (_%lp117848%_
                                      _%rest117915%_
                                      (cdr _%exprs117851%_)
                                      _%bind117852%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs117851%_)
                                                        '()))
                                            _%post117853%_)))))
                              (_%K117859117900%_
                               (lambda (_%rest117880%_ _%hd117881%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd117881%_))
                                     (let ((_%id117884%_
                                            (__SRC__0 _%hd117881%_)))
                                       (_%lp117848%_
                                        _%rest117880%_
                                        (cdr _%exprs117851%_)
                                        (cons (cons _%id117884%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind117852%_)
                                        (cons (cons _%id117884%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs117851%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post117853%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd117881%_))
                                         (if (list? _%hd117881%_)
                                             (let* ((_%len117888%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd117881%_)))
                                                    (_%tmp117890%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp117848%_
                                                _%rest117880%_
                                                (cdr _%exprs117851%_)
                                                (let ((__tmp119460
                                                       (lambda (_%id117893%_
                                                                _%r117894%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id117893%_))
                     (cons (cons (__SRC__0 _%id117893%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r117894%_)
                     _%r117894%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldl1
                                                   __tmp119460
                                                   _%bind117852%_
                                                   _%hd117881%_))
                                                (cons (cons _%tmp117890%_
                                                            (cons (car _%exprs117851%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len117888%_
                                (let ((__tmp119462
                                       (lambda (_%id117896%_ _%k117897%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id117896%_))
                                             (cons (__SRC__0 _%id117896%_)
                                                   _%k117897%_)
                                             '#f)))
                                      (__tmp119461
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len117888%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp119462
                                   _%hd117881%_
                                   __tmp119461)))))
              _%post117853%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx117692%_
                                              _%hd117881%_))
                                         (_%lp117848%_
                                          _%rest117880%_
                                          (cdr _%exprs117851%_)
                                          _%bind117852%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs117851%_)
                                                            '()))
                                                _%post117853%_)))))))
                          (if (pair? _%rest117854117868%_)
                              (let ((_%tl117864117925%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest117854117868%_)))
                                    (_%hd117863117923%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest117854117868%_))))
                                (if (pair? _%hd117863117923%_)
                                    (let ((_%tl117866117930%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd117863117923%_)))
                                          (_%hd117865117928%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd117863117923%_))))
                                      (if (null? _%tl117866117930%_)
                                          (let ((_%hd117933%_
                                                 _%hd117865117928%_)
                                                (_%rest117935%_
                                                 _%tl117864117925%_))
                                            (_%K117862117920%_
                                             _%rest117935%_
                                             _%hd117933%_))
                                          (let ((_%hd117908%_
                                                 _%hd117863117923%_)
                                                (_%rest117910%_
                                                 _%tl117864117925%_))
                                            (_%K117859117900%_
                                             _%rest117910%_
                                             _%hd117908%_))))
                                    (let ((_%hd117908%_ _%hd117863117923%_)
                                          (_%rest117910%_ _%tl117864117925%_))
                                      (_%K117859117900%_
                                       _%rest117910%_
                                       _%hd117908%_))))
                              (_%else117857117876%_)))))))
                 (_%compile-bind117696%_
                  (lambda (_%bind117840%_ _%post117841%_ _%body117842%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind117840%_)
                                 (cons (_%compile-post117697%_
                                        _%post117841%_
                                        _%body117842%_)
                                       '())))
                     _%stx117692%_)))
                 (_%compile-post117697%_
                  (lambda (_%post117699%_ _%body117700%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp119463
                                  (let ((__tmp119465
                                         (lambda (_%hd117702%_ _%r117703%_)
                                           (let* ((_%hd117704117727%_
                                                   _%hd117702%_)
                                                  (_%E117708117731%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd117704117727%_
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
                                             (let ((_%K117721117825%_
                                                    (lambda (_%expr117823%_)
                                                      (cons _%expr117823%_
                                                            _%r117703%_)))
                                                   (_%K117716117803%_
                                                    (lambda (_%expr117800%_
                                                             _%id117801%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id117801%_ (cons _%expr117800%_ '())))
                     _%stx117692%_)
                    _%r117703%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K117709117770%_
                                                    (lambda (_%init117735%_
                                                             _%len117736%_
                                                             _%expr117737%_
                                                             _%tmp117738%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp117738%_
                                             (cons _%expr117737%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp117738%_
                                                    (cons _%len117736%_ '())))
                                        _%stx117692%_)
                                       (let ((__tmp119466
                                              (map (lambda (_%hd117740%_)
                                                     (let* ((_%hd117741117748%_
                                                             _%hd117740%_)
                                                            (_%E117743117752%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd117741117748%_
                                '([id . k])))
                       '#!void))
                    (_%K117744117758%_
                     (lambda (_%k117755%_ _%id117756%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id117756%_
                                    (cons (cons '##values-ref
                                                (cons _%tmp117738%_
                                                      (cons _%k117755%_ '())))
                                          '())))
                        _%stx117692%_))))
               (if (pair? _%hd117741117748%_)
                   (let ((_%hd117745117761%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd117741117748%_)))
                         (_%tl117746117763%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd117741117748%_))))
                     (let* ((_%id117766%_ _%hd117745117761%_)
                            (_%k117768%_ _%tl117746117763%_))
                       (_%K117744117758%_ _%k117768%_ _%id117766%_)))
                   (_%E117743117752%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init117735%_)))
                                         (declare (not safe))
                                         (__foldr1 cons '() __tmp119466)))))
                     _%stx117692%_)
                    _%r117703%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match119319119320%_
                                                       (lambda (_%hd117710117773%_
                                                                _%tl117711117775%_
                                                                _%hd117712117780%_
                                                                _%tl117713117782%_)
                                                         (let ((_%tmp117778%_
                                                                _%hd117710117773%_)
                                                               (_%expr117785%_
                                                                _%hd117712117780%_))
                                                           (_%E117708117731%_))))
                                                      (_%__match119313119314%_
                                                       (lambda (_%hd117710117773%_
                                                                _%tl117711117775%_)
                                                         (let ((_%tmp117778%_
                                                                _%hd117710117773%_))
                                                           (_%E117708117731%_)))))
                                                 (if (pair? _%hd117704117727%_)
                                                     (let ((_%tl117723117830%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd117704117727%_)))
                                                           (_%hd117722117828%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd117704117727%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd117722117828%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%tl117723117830%_)
                       (let ((_%tl117725117835%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl117723117830%_)))
                             (_%hd117724117833%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl117723117830%_))))
                         (if (null? _%tl117725117835%_)
                             (let ((_%expr117838%_ _%hd117724117833%_))
                               (_%K117721117825%_ _%expr117838%_))
                             (if (pair? _%tl117725117835%_)
                                 (let ((_%tl117715117789%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl117725117835%_)))
                                       (_%hd117714117787%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl117725117835%_))))
                                   (let ((_%tmp117778%_ _%hd117722117828%_)
                                         (_%expr117785%_ _%hd117724117833%_)
                                         (_%len117792%_ _%hd117714117787%_)
                                         (_%init117794%_ _%tl117715117789%_))
                                     (_%K117709117770%_
                                      _%init117794%_
                                      _%len117792%_
                                      _%expr117785%_
                                      _%tmp117778%_)))
                                 (_%__match119319119320%_
                                  _%hd117722117828%_
                                  _%tl117723117830%_
                                  _%hd117724117833%_
                                  _%tl117725117835%_))))
                       (_%__match119313119314%_
                        _%hd117722117828%_
                        _%tl117723117830%_))
                   (if (pair? _%tl117723117830%_)
                       (let ((_%tl117720117815%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl117723117830%_)))
                             (_%hd117719117813%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl117723117830%_))))
                         (if (null? _%tl117720117815%_)
                             (let ((_%id117811%_ _%hd117722117828%_)
                                   (_%expr117818%_ _%hd117719117813%_))
                               (_%K117716117803%_ _%expr117818%_ _%id117811%_))
                             (if (pair? _%tl117720117815%_)
                                 (let ((_%tl117715117789%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl117720117815%_)))
                                       (_%hd117714117787%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl117720117815%_))))
                                   (let ((_%tmp117778%_ _%hd117722117828%_)
                                         (_%expr117785%_ _%hd117719117813%_)
                                         (_%len117792%_ _%hd117714117787%_)
                                         (_%init117794%_ _%tl117715117789%_))
                                     (_%K117709117770%_
                                      _%init117794%_
                                      _%len117792%_
                                      _%expr117785%_
                                      _%tmp117778%_)))
                                 (_%__match119319119320%_
                                  _%hd117722117828%_
                                  _%tl117723117830%_
                                  _%hd117719117813%_
                                  _%tl117720117815%_))))
                       (_%__match119313119314%_
                        _%hd117722117828%_
                        _%tl117723117830%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E117708117731%_)))))))
                                        (__tmp119464 (list _%body117700%_)))
                                    (declare (not safe))
                                    (__foldl1
                                     __tmp119465
                                     __tmp119464
                                     _%post117699%_))))
                             (declare (not safe))
                             (__foldr1 cons '() __tmp119463)))
                     _%stx117692%_))))
          (__compile-let-form
           _%stx117692%_
           _%compile-simple117694%_
           _%compile-values117695%_))))
    (define __compile-call%
      (lambda (_%stx117652%_)
        (let* ((_%$e117654%_ _%stx117652%_)
               (_%$E117656117665%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e117654%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e117654%_))
              (let* ((_%$tgt117657117668%_
                      (let () (declare (not safe)) (__AST-e _%$e117654%_)))
                     (_%$hd117658117671%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt117657117668%_)))
                     (_%$tl117659117674%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt117657117668%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl117659117674%_))
                    (let* ((_%$tgt117660117678%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl117659117674%_)))
                           (_%$hd117661117681%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt117660117678%_)))
                           (_%$tl117662117684%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt117660117678%_)))
                           (_%rator117688%_ _%$hd117661117681%_)
                           (_%rands117690%_ _%$tl117662117684%_))
                      (__SRC__%
                       (cons (__compile _%rator117688%_)
                             (map __compile _%rands117690%_))
                       _%stx117652%_))
                    (_%$E117656117665%_)))
              (_%$E117656117665%_)))))
    (define __compile-ref%
      (lambda (_%stx117614%_)
        (let* ((_%$e117616%_ _%stx117614%_)
               (_%$E117618117627%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e117616%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e117616%_))
              (let* ((_%$tgt117619117630%_
                      (let () (declare (not safe)) (__AST-e _%$e117616%_)))
                     (_%$hd117620117633%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt117619117630%_)))
                     (_%$tl117621117636%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt117619117630%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl117621117636%_))
                    (let* ((_%$tgt117622117640%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl117621117636%_)))
                           (_%$hd117623117643%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt117622117640%_)))
                           (_%$tl117624117646%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt117622117640%_)))
                           (_%id117650%_ _%$hd117623117643%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl117624117646%_))
                                  '())
                          (__SRC__% _%id117650%_ _%stx117614%_)
                          (_%$E117618117627%_)))
                    (_%$E117618117627%_)))
              (_%$E117618117627%_)))))
    (define __compile-setq%
      (lambda (_%stx117561%_)
        (let* ((_%$e117563%_ _%stx117561%_)
               (_%$E117565117577%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e117563%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e117563%_))
              (let* ((_%$tgt117566117580%_
                      (let () (declare (not safe)) (__AST-e _%$e117563%_)))
                     (_%$hd117567117583%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt117566117580%_)))
                     (_%$tl117568117586%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt117566117580%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl117568117586%_))
                    (let* ((_%$tgt117569117590%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl117568117586%_)))
                           (_%$hd117570117593%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt117569117590%_)))
                           (_%$tl117571117596%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt117569117590%_)))
                           (_%id117600%_ _%$hd117570117593%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl117571117596%_))
                          (let* ((_%$tgt117572117602%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl117571117596%_)))
                                 (_%$hd117573117605%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt117572117602%_)))
                                 (_%$tl117574117608%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt117572117602%_)))
                                 (_%expr117612%_ _%$hd117573117605%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl117574117608%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id117600%_
                                              _%stx117561%_)
                                             (cons (__compile _%expr117612%_)
                                                   '())))
                                 _%stx117561%_)
                                (_%$E117565117577%_)))
                          (_%$E117565117577%_)))
                    (_%$E117565117577%_)))
              (_%$E117565117577%_)))))
    (define __compile-if%
      (lambda (_%stx117493%_)
        (let* ((_%$e117495%_ _%stx117493%_)
               (_%$E117497117512%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e117495%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e117495%_))
              (let* ((_%$tgt117498117515%_
                      (let () (declare (not safe)) (__AST-e _%$e117495%_)))
                     (_%$hd117499117518%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt117498117515%_)))
                     (_%$tl117500117521%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt117498117515%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl117500117521%_))
                    (let* ((_%$tgt117501117525%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl117500117521%_)))
                           (_%$hd117502117528%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt117501117525%_)))
                           (_%$tl117503117531%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt117501117525%_)))
                           (_%p117535%_ _%$hd117502117528%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl117503117531%_))
                          (let* ((_%$tgt117504117537%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl117503117531%_)))
                                 (_%$hd117505117540%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt117504117537%_)))
                                 (_%$tl117506117543%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt117504117537%_)))
                                 (_%t117547%_ _%$hd117505117540%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl117506117543%_))
                                (let* ((_%$tgt117507117549%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl117506117543%_)))
                                       (_%$hd117508117552%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt117507117549%_)))
                                       (_%$tl117509117555%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt117507117549%_)))
                                       (_%f117559%_ _%$hd117508117552%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl117509117555%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p117535%_)
                                                   (cons (__compile
                                                          _%t117547%_)
                                                         (cons (__compile
                                                                _%f117559%_)
                                                               '()))))
                                       _%stx117493%_)
                                      (_%$E117497117512%_)))
                                (_%$E117497117512%_)))
                          (_%$E117497117512%_)))
                    (_%$E117497117512%_)))
              (_%$E117497117512%_)))))
    (define __compile-quote%
      (lambda (_%stx117455%_)
        (let* ((_%$e117457%_ _%stx117455%_)
               (_%$E117459117468%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e117457%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e117457%_))
              (let* ((_%$tgt117460117471%_
                      (let () (declare (not safe)) (__AST-e _%$e117457%_)))
                     (_%$hd117461117474%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt117460117471%_)))
                     (_%$tl117462117477%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt117460117471%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl117462117477%_))
                    (let* ((_%$tgt117463117481%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl117462117477%_)))
                           (_%$hd117464117484%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt117463117481%_)))
                           (_%$tl117465117487%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt117463117481%_)))
                           (_%e117491%_ _%$hd117464117484%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl117465117487%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e117491%_))
                                       '()))
                           _%stx117455%_)
                          (_%$E117459117468%_)))
                    (_%$E117459117468%_)))
              (_%$E117459117468%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx117417%_)
        (let* ((_%$e117419%_ _%stx117417%_)
               (_%$E117421117430%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e117419%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e117419%_))
              (let* ((_%$tgt117422117433%_
                      (let () (declare (not safe)) (__AST-e _%$e117419%_)))
                     (_%$hd117423117436%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt117422117433%_)))
                     (_%$tl117424117439%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt117422117433%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl117424117439%_))
                    (let* ((_%$tgt117425117443%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl117424117439%_)))
                           (_%$hd117426117446%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt117425117443%_)))
                           (_%$tl117427117449%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt117425117443%_)))
                           (_%e117453%_ _%$hd117426117446%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl117427117449%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e117453%_ '()))
                           _%stx117417%_)
                          (_%$E117421117430%_)))
                    (_%$E117421117430%_)))
              (_%$E117421117430%_)))))
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

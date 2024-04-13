(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1713001407)
  (begin
    (define __syntax::t
      (let ((__tmp113379 (list)) (__tmp113378 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp113379
         '(e id)
         __tmp113378
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args113183%_
        (apply make-instance __syntax::t _%$args113183%_)))
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
      (let ((__tmp113381 (list __syntax::t))
            (__tmp113380 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp113381
         '()
         __tmp113380
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args113180%_
        (apply make-instance __core-form::t _%$args113180%_)))
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
      (let ((__tmp113383 (list __core-form::t))
            (__tmp113382 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp113383
         '()
         __tmp113382
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args113177%_
        (apply make-instance __core-expression::t _%$args113177%_)))
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
      (let ((__tmp113385 (list __core-form::t))
            (__tmp113384 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp113385
         '()
         __tmp113384
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args113174%_
        (apply make-instance __core-special-form::t _%$args113174%_)))
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
      (lambda (_%id113172%_)
        (let ((__tmp113386
               (let () (declare (not safe)) (__AST-e _%id113172%_))))
          (declare (not safe))
          (__hash-get __core __tmp113386))))
    (define __core-bound-id?__%
      (lambda (_%id113155%_ _%is?113156%_)
        (let ((_%$e113158%_ (__core-resolve _%id113155%_)))
          (if _%$e113158%_ (_%is?113156%_ _%$e113158%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id113165%_)
        (let ((_%is?113167%_ true))
          (__core-bound-id?__% _%id113165%_ _%is?113167%_))))
    (define __core-bound-id?
      (lambda _g113388_
        (let ((_g113387_ (let () (declare (not safe)) (##length _g113388_))))
          (cond ((let () (declare (not safe)) (##fx= _g113387_ 1))
                 (apply __core-bound-id?__0 _g113388_))
                ((let () (declare (not safe)) (##fx= _g113387_ 2))
                 (apply __core-bound-id?__% _g113388_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g113388_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id113138%_ _%e113139%_ _%make113140%_)
        (let ((__tmp113389
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e113139%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e113139%_
                   (_%make113140%_ _%e113139%_ _%id113138%_))))
          (declare (not safe))
          (__hash-put! __core _%id113138%_ __tmp113389))))
    (define __core-bind-syntax!__0
      (lambda (_%id113145%_ _%e113146%_)
        (let ((_%make113148%_ make-__syntax))
          (__core-bind-syntax!__% _%id113145%_ _%e113146%_ _%make113148%_))))
    (define __core-bind-syntax!
      (lambda _g113391_
        (let ((_g113390_ (let () (declare (not safe)) (##length _g113391_))))
          (cond ((let () (declare (not safe)) (##fx= _g113390_ 2))
                 (apply __core-bind-syntax!__0 _g113391_))
                ((let () (declare (not safe)) (##fx= _g113390_ 3))
                 (apply __core-bind-syntax!__% _g113391_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g113391_))))))
    (define __SRC__%
      (lambda (_%e113118%_ _%src-stx113119%_)
        (if (or (pair? _%e113118%_) (symbol? _%e113118%_))
            (let ((__tmp113392
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx113119%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx113119%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e113118%_ __tmp113392))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e113118%_ 'gerbil#AST::t))
                (let ((__tmp113394
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e113118%_ '1 '#f '#f)))
                      (__tmp113393
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e113118%_)))))
                  (declare (not safe))
                  (##make-source __tmp113394 __tmp113393))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e113118%_))))))
    (define __SRC__0
      (lambda (_%e113130%_)
        (let ((_%src-stx113132%_ '#f))
          (__SRC__% _%e113130%_ _%src-stx113132%_))))
    (define __SRC
      (lambda _g113396_
        (let ((_g113395_ (let () (declare (not safe)) (##length _g113396_))))
          (cond ((let () (declare (not safe)) (##fx= _g113395_ 1))
                 (apply __SRC__0 _g113396_))
                ((let () (declare (not safe)) (##fx= _g113395_ 2))
                 (apply __SRC__% _g113396_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g113396_))))))
    (define __locat
      (lambda (_%loc113115%_)
        (if (let () (declare (not safe)) (##locat? _%loc113115%_))
            _%loc113115%_
            '#f)))
    (define __check-values
      (lambda (_%obj113110%_ _%k113111%_)
        (let ((_%count113113%_
               (if (let () (declare (not safe)) (##values? _%obj113110%_))
                   (let ()
                     (declare (not safe))
                     (##vector-length _%obj113110%_))
                   '1)))
          (if (fx= _%count113113%_ _%k113111%_)
              '#!void
              (let ((__tmp113398
                     (if (fx< _%count113113%_ _%k113111%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp113397
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj113110%_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _%obj113110%_))
                         _%obj113110%_)))
                (declare (not safe))
                (error __tmp113398 __tmp113397 _%k113111%_))))))
    (define __compile
      (lambda (_%stx113079%_)
        (let* ((_%$e113081%_ _%stx113079%_)
               (_%$E113083113089%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113081%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113081%_))
              (let* ((_%$tgt113084113092%_
                      (let () (declare (not safe)) (__AST-e _%$e113081%_)))
                     (_%$hd113085113095%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt113084113092%_)))
                     (_%$tl113086113098%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt113084113092%_)))
                     (_%form113102%_ _%$hd113085113095%_)
                     (_%$e113104%_ (__core-resolve _%form113102%_)))
                (if _%$e113104%_
                    ((lambda (_%bind113107%_)
                       ((##structure-ref _%bind113107%_ '1 __syntax::t '#f)
                        _%stx113079%_))
                     _%$e113104%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx113079%_
                       _%form113102%_))))
              (_%$E113083113089%_)))))
    (define __compile-error__%
      (lambda (_%stx113066%_ _%detail113067%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx113066%_
           _%detail113067%_))))
    (define __compile-error__0
      (lambda (_%stx113072%_)
        (let ((_%detail113074%_ '#f))
          (__compile-error__% _%stx113072%_ _%detail113074%_))))
    (define __compile-error
      (lambda _g113400_
        (let ((_g113399_ (let () (declare (not safe)) (##length _g113400_))))
          (cond ((let () (declare (not safe)) (##fx= _g113399_ 1))
                 (apply __compile-error__0 _g113400_))
                ((let () (declare (not safe)) (##fx= _g113399_ 2))
                 (apply __compile-error__% _g113400_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g113400_))))))
    (define __compile-ignore%
      (lambda (_%stx113063%_) (__SRC__% ''#!void _%stx113063%_)))
    (define __compile-begin%
      (lambda (_%stx113038%_)
        (let* ((_%$e113040%_ _%stx113038%_)
               (_%$E113042113048%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113040%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113040%_))
              (let* ((_%$tgt113043113051%_
                      (let () (declare (not safe)) (__AST-e _%$e113040%_)))
                     (_%$hd113044113054%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt113043113051%_)))
                     (_%$tl113045113057%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt113043113051%_)))
                     (_%body113061%_ _%$tl113045113057%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body113061%_))
                 _%stx113038%_))
              (_%$E113042113048%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx113013%_)
        (let* ((_%$e113015%_ _%stx113013%_)
               (_%$E113017113023%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113015%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113015%_))
              (let* ((_%$tgt113018113026%_
                      (let () (declare (not safe)) (__AST-e _%$e113015%_)))
                     (_%$hd113019113029%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt113018113026%_)))
                     (_%$tl113020113032%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt113018113026%_)))
                     (_%body113036%_ _%$tl113020113032%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body113036%_)))
                 _%stx113013%_))
              (_%$E113017113023%_)))))
    (define __compile-import%
      (lambda (_%stx112988%_)
        (let* ((_%$e112990%_ _%stx112988%_)
               (_%$E112992112998%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e112990%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e112990%_))
              (let* ((_%$tgt112993113001%_
                      (let () (declare (not safe)) (__AST-e _%$e112990%_)))
                     (_%$hd112994113004%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt112993113001%_)))
                     (_%$tl112995113007%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt112993113001%_)))
                     (_%body113011%_ _%$tl112995113007%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body113011%_ '())) '()))
                 _%stx112988%_))
              (_%$E112992112998%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx112935%_)
        (let* ((_%$e112937%_ _%stx112935%_)
               (_%$E112939112951%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e112937%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e112937%_))
              (let* ((_%$tgt112940112954%_
                      (let () (declare (not safe)) (__AST-e _%$e112937%_)))
                     (_%$hd112941112957%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt112940112954%_)))
                     (_%$tl112942112960%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt112940112954%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl112942112960%_))
                    (let* ((_%$tgt112943112964%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl112942112960%_)))
                           (_%$hd112944112967%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt112943112964%_)))
                           (_%$tl112945112970%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt112943112964%_)))
                           (_%ann112974%_ _%$hd112944112967%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl112945112970%_))
                          (let* ((_%$tgt112946112976%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl112945112970%_)))
                                 (_%$hd112947112979%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112946112976%_)))
                                 (_%$tl112948112982%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112946112976%_)))
                                 (_%expr112986%_ _%$hd112947112979%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl112948112982%_))
                                        '())
                                (__compile _%expr112986%_)
                                (_%$E112939112951%_)))
                          (_%$E112939112951%_)))
                    (_%$E112939112951%_)))
              (_%$E112939112951%_)))))
    (define __compile-define-values%
      (lambda (_%stx112826%_)
        (let* ((_%$e112828%_ _%stx112826%_)
               (_%$E112830112842%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e112828%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e112828%_))
              (let* ((_%$tgt112831112845%_
                      (let () (declare (not safe)) (__AST-e _%$e112828%_)))
                     (_%$hd112832112848%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt112831112845%_)))
                     (_%$tl112833112851%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt112831112845%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl112833112851%_))
                    (let* ((_%$tgt112834112855%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl112833112851%_)))
                           (_%$hd112835112858%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt112834112855%_)))
                           (_%$tl112836112861%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt112834112855%_)))
                           (_%hd112865%_ _%$hd112835112858%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl112836112861%_))
                          (let* ((_%$tgt112837112867%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl112836112861%_)))
                                 (_%$hd112838112870%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112837112867%_)))
                                 (_%$tl112839112873%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112837112867%_)))
                                 (_%expr112877%_ _%$hd112838112870%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl112839112873%_))
                                        '())
                                (let* ((_%$e112879%_ _%hd112865%_)
                                       (_%$E112881112922%_
                                        (lambda ()
                                          (let ((_%$E112882112907%_
                                                 (lambda ()
                                                   (let* ((_%$E112883112894%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e112879%_))))
                  (_%ids112897%_ _%hd112865%_)
                  (_%len112899%_ (length _%ids112897%_))
                  (_%tmp112901%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp112901%_
                                       (cons (__compile _%expr112877%_) '())))
                           _%stx112826%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp112901%_
                                             (cons _%len112899%_ '())))
                                 _%stx112826%_)
                                (let ((__tmp113401
                                       (let ((__tmp113403
                                              (lambda (_%id112904%_
                                                       _%k112905%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id112904%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id112904%_)
                         (cons (cons '##vector-ref
                                     (cons _%tmp112901%_
                                           (cons _%k112905%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx112826%_)
                                                    '#f)))
                                             (__tmp113402
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len112899%_))))
                                         (declare (not safe))
                                         (__filter-map2
                                          __tmp113403
                                          _%ids112897%_
                                          __tmp113402))))
                                  (declare (not safe))
                                  (__foldr1 cons '() __tmp113401)))))
              _%stx112826%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e112879%_))
                                                (let* ((_%$tgt112884112910%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e112879%_)))
                                                       (_%$hd112885112913%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt112884112910%_)))
                                                       (_%$tl112886112916%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt112884112910%_)))
                                                       (_%id112920%_
                                                        _%$hd112885112913%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl112886112916%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id112920%_)
                           (cons (__compile _%expr112877%_) '())))
               _%stx112826%_)
              (_%$E112882112907%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E112882112907%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e112879%_))
                                      (let* ((_%$tgt112887112925%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e112879%_)))
                                             (_%$hd112888112928%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt112887112925%_)))
                                             (_%$tl112889112931%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt112887112925%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd112888112928%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl112889112931%_))
                                                        '())
                                                (__compile _%expr112877%_)
                                                (_%$E112881112922%_))
                                            (_%$E112881112922%_)))
                                      (_%$E112881112922%_)))
                                (_%$E112830112842%_)))
                          (_%$E112830112842%_)))
                    (_%$E112830112842%_)))
              (_%$E112830112842%_)))))
    (define __compile-head-id
      (lambda (_%e112824%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e112824%_))
             _%e112824%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd112781%_)
        (let _%recur112783%_ ((_%rest112785%_ _%hd112781%_))
          (let* ((_%$e112787%_ _%rest112785%_)
                 (_%$E112789112807%_
                  (lambda ()
                    (let ((_%$E112790112804%_
                           (lambda ()
                             (let* ((_%$E112791112799%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e112787%_))))
                                    (_%tail112802%_ _%$e112787%_))
                               (__compile-head-id _%tail112802%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e112787%_))
                                  '())
                          '()
                          (_%$E112790112804%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e112787%_))
                (let* ((_%$tgt112792112810%_
                        (let () (declare (not safe)) (__AST-e _%$e112787%_)))
                       (_%$hd112793112813%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt112792112810%_)))
                       (_%$tl112794112816%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt112792112810%_)))
                       (_%hd112820%_ _%$hd112793112813%_)
                       (_%rest112822%_ _%$tl112794112816%_))
                  (cons (__compile-head-id _%hd112820%_)
                        (_%recur112783%_ _%rest112822%_)))
                (_%$E112789112807%_))))))
    (define __compile-lambda%
      (lambda (_%stx112728%_)
        (let* ((_%$e112730%_ _%stx112728%_)
               (_%$E112732112744%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e112730%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e112730%_))
              (let* ((_%$tgt112733112747%_
                      (let () (declare (not safe)) (__AST-e _%$e112730%_)))
                     (_%$hd112734112750%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt112733112747%_)))
                     (_%$tl112735112753%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt112733112747%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl112735112753%_))
                    (let* ((_%$tgt112736112757%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl112735112753%_)))
                           (_%$hd112737112760%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt112736112757%_)))
                           (_%$tl112738112763%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt112736112757%_)))
                           (_%hd112767%_ _%$hd112737112760%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl112738112763%_))
                          (let* ((_%$tgt112739112769%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl112738112763%_)))
                                 (_%$hd112740112772%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112739112769%_)))
                                 (_%$tl112741112775%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112739112769%_)))
                                 (_%body112779%_ _%$hd112740112772%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl112741112775%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd112767%_)
                                             (cons (__compile _%body112779%_)
                                                   '())))
                                 _%stx112728%_)
                                (_%$E112732112744%_)))
                          (_%$E112732112744%_)))
                    (_%$E112732112744%_)))
              (_%$E112732112744%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx112520%_)
        (letrec ((_%variadic?112522%_
                  (lambda (_%hd112693%_)
                    (let* ((_%$e112695%_ _%hd112693%_)
                           (_%$E112697112713%_
                            (lambda ()
                              (let ((_%$E112698112710%_
                                     (lambda ()
                                       (let ((_%$E112699112707%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e112695%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e112695%_))
                                            '())
                                    '#f
                                    (_%$E112698112710%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e112695%_))
                          (let* ((_%$tgt112700112716%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e112695%_)))
                                 (_%$hd112701112719%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112700112716%_)))
                                 (_%$tl112702112722%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112700112716%_)))
                                 (_%rest112726%_ _%$tl112702112722%_))
                            (_%variadic?112522%_ _%rest112726%_))
                          (_%$E112697112713%_)))))
                 (_%arity112523%_
                  (lambda (_%hd112658%_)
                    (let _%lp112660%_ ((_%rest112662%_ _%hd112658%_)
                                       (_%k112663%_ '0))
                      (let* ((_%$e112665%_ _%rest112662%_)
                             (_%$E112667112678%_
                              (lambda ()
                                (let ((_%$E112668112675%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e112665%_)))))
                                  _%k112663%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e112665%_))
                            (let* ((_%$tgt112669112681%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e112665%_)))
                                   (_%$hd112670112684%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt112669112681%_)))
                                   (_%$tl112671112687%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt112669112681%_)))
                                   (_%rest112691%_ _%$tl112671112687%_))
                              (_%lp112660%_
                               _%rest112691%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%k112663%_ '1))))
                            (_%$E112667112678%_))))))
                 (_%generate112524%_
                  (lambda (_%rest112585%_ _%args112586%_ _%len112587%_)
                    (let* ((_%$e112589%_ _%rest112585%_)
                           (_%$E112591112602%_
                            (lambda ()
                              (let ((_%$E112592112599%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e112589%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args112586%_ '())))
                                 _%stx112520%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e112589%_))
                          (let* ((_%$tgt112593112605%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e112589%_)))
                                 (_%$hd112594112608%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112593112605%_)))
                                 (_%$tl112595112611%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112593112605%_)))
                                 (_%clause112615%_ _%$hd112594112608%_)
                                 (_%rest112617%_ _%$tl112595112611%_)
                                 (_%$e112619%_ _%clause112615%_)
                                 (_%$E112621112630%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e112619%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e112619%_))
                                (let* ((_%$tgt112622112633%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e112619%_)))
                                       (_%$hd112623112636%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt112622112633%_)))
                                       (_%$tl112624112639%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt112622112633%_)))
                                       (_%hd112643%_ _%$hd112623112636%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl112624112639%_))
                                      (let* ((_%$tgt112625112645%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl112624112639%_)))
                                             (_%$hd112626112648%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt112625112645%_)))
                                             (_%$tl112627112651%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt112625112645%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl112627112651%_))
                                                    '())
                                            (let ((_%clen112655%_
                                                   (_%arity112523%_
                                                    _%hd112643%_))
                                                  (_%cmp112656%_
                                                   (if (_%variadic?112522%_
                                                        _%hd112643%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp112656%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len112587%_ (cons _%clen112655%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause112615%_))
                                      (cons _%args112586%_ '())))
                          _%stx112520%_)
                         (cons (_%generate112524%_
                                _%rest112617%_
                                _%args112586%_
                                _%len112587%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx112520%_))
                                            (_%$E112621112630%_)))
                                      (_%$E112621112630%_)))
                                (_%$E112621112630%_)))
                          (_%$E112591112602%_))))))
          (let* ((_%$e112526%_ _%stx112520%_)
                 (_%$E112528112560%_
                  (lambda ()
                    (let ((_%$E112529112542%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e112526%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e112526%_))
                          (let* ((_%$tgt112530112545%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e112526%_)))
                                 (_%$hd112531112548%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112530112545%_)))
                                 (_%$tl112532112551%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112530112545%_)))
                                 (_%clauses112555%_ _%$tl112532112551%_))
                            (let ((_%args112557%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx112520%_))
                                  (_%len112558%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx112520%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args112557%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len112558%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args112557%_ '()))
                                         _%stx112520%_)
                                        '()))
                            '())
                      (cons (_%generate112524%_
                             _%clauses112555%_
                             _%args112557%_
                             _%len112558%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx112520%_)
                                                 '())))
                               _%stx112520%_)))
                          (_%$E112529112542%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e112526%_))
                (let* ((_%$tgt112533112563%_
                        (let () (declare (not safe)) (__AST-e _%$e112526%_)))
                       (_%$hd112534112566%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt112533112563%_)))
                       (_%$tl112535112569%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt112533112563%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl112535112569%_))
                      (let* ((_%$tgt112536112573%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl112535112569%_)))
                             (_%$hd112537112576%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt112536112573%_)))
                             (_%$tl112538112579%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt112536112573%_)))
                             (_%clause112583%_ _%$hd112537112576%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl112538112579%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause112583%_))
                            (_%$E112528112560%_)))
                      (_%$E112528112560%_)))
                (_%$E112528112560%_))))))
    (define __compile-let-form
      (lambda (_%stx112289%_ _%compile-simple112290%_ _%compile-values112291%_)
        (letrec ((_%simple-bind?112293%_
                  (lambda (_%hd112478%_)
                    (let* ((_%hd112479112489%_ _%hd112478%_)
                           (_%else112482112497%_ (lambda () '#f)))
                      (let ((_%K112485112510%_ (lambda (_%id112508%_) '#t))
                            (_%K112484112502%_ (lambda () '#t)))
                        (let ((_%try-match112481112505%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd112479112489%_ '#f))
                                     (_%K112484112502%_)
                                     (_%else112482112497%_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%hd112479112489%_))
                              (let ((_%tl112487112515%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd112479112489%_)))
                                    (_%hd112486112513%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd112479112489%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _%tl112487112515%_))
                                    (let ((_%id112518%_ _%hd112486112513%_))
                                      (_%K112485112510%_ _%id112518%_))
                                    (_%try-match112481112505%_)))
                              (_%try-match112481112505%_)))))))
                 (_%car-e112294%_
                  (lambda (_%hd112476%_)
                    (if (pair? _%hd112476%_)
                        (let () (declare (not safe)) (##car _%hd112476%_))
                        _%hd112476%_))))
          (let* ((_%$e112296%_ _%stx112289%_)
                 (_%$E112298112441%_
                  (lambda ()
                    (let ((_%$E112299112321%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e112296%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e112296%_))
                          (let* ((_%$tgt112300112324%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e112296%_)))
                                 (_%$hd112301112327%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112300112324%_)))
                                 (_%$tl112302112330%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112300112324%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl112302112330%_))
                                (let* ((_%$tgt112303112334%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl112302112330%_)))
                                       (_%$hd112304112337%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt112303112334%_)))
                                       (_%$tl112305112340%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt112303112334%_)))
                                       (_%hd112344%_ _%$hd112304112337%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl112305112340%_))
                                      (let* ((_%$tgt112306112346%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl112305112340%_)))
                                             (_%$hd112307112349%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt112306112346%_)))
                                             (_%$tl112308112352%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt112306112346%_)))
                                             (_%body112356%_
                                              _%$hd112307112349%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl112308112352%_))
                                                    '())
                                            (let* ((_%hd-ids112396%_
                                                    (map (lambda (_%bind112358%_)
                                                           (let* ((_%$e112360%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind112358%_)
                          (_%$E112362112371%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e112360%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e112360%_))
                         (let* ((_%$tgt112363112374%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e112360%_)))
                                (_%$hd112364112377%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt112363112374%_)))
                                (_%$tl112365112380%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt112363112374%_)))
                                (_%ids112384%_ _%$hd112364112377%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl112365112380%_))
                               (let* ((_%$tgt112366112386%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl112365112380%_)))
                                      (_%$hd112367112389%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt112366112386%_)))
                                      (_%$tl112368112392%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt112366112386%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl112368112392%_))
                                             '())
                                     _%ids112384%_
                                     (_%$E112362112371%_)))
                               (_%$E112362112371%_)))
                         (_%$E112362112371%_))))
                 _%hd112344%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs112436%_
                                                    (map (lambda (_%bind112398%_)
                                                           (let* ((_%$e112400%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind112398%_)
                          (_%$E112402112411%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e112400%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e112400%_))
                         (let* ((_%$tgt112403112414%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e112400%_)))
                                (_%$hd112404112417%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt112403112414%_)))
                                (_%$tl112405112420%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt112403112414%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl112405112420%_))
                               (let* ((_%$tgt112406112424%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl112405112420%_)))
                                      (_%$hd112407112427%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt112406112424%_)))
                                      (_%$tl112408112430%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt112406112424%_)))
                                      (_%expr112434%_ _%$hd112407112427%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl112408112430%_))
                                             '())
                                     (__compile _%expr112434%_)
                                     (_%$E112402112411%_)))
                               (_%$E112402112411%_)))
                         (_%$E112402112411%_))))
                 _%hd112344%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body112438%_
                                                    (__compile
                                                     _%body112356%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__andmap1
                                                     _%simple-bind?112293%_
                                                     _%hd-ids112396%_))
                                                  (_%compile-simple112290%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e112294%_
                                                            _%hd-ids112396%_))
                                                   _%exprs112436%_
                                                   _%body112438%_)
                                                  (_%compile-values112291%_
                                                   _%hd-ids112396%_
                                                   _%exprs112436%_
                                                   _%body112438%_)))
                                            (_%$E112299112321%_)))
                                      (_%$E112299112321%_)))
                                (_%$E112299112321%_)))
                          (_%$E112299112321%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e112296%_))
                (let* ((_%$tgt112309112444%_
                        (let () (declare (not safe)) (__AST-e _%$e112296%_)))
                       (_%$hd112310112447%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt112309112444%_)))
                       (_%$tl112311112450%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt112309112444%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl112311112450%_))
                      (let* ((_%$tgt112312112454%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl112311112450%_)))
                             (_%$hd112313112457%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt112312112454%_)))
                             (_%$tl112314112460%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt112312112454%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd112313112457%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl112314112460%_))
                                (let* ((_%$tgt112315112464%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl112314112460%_)))
                                       (_%$hd112316112467%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt112315112464%_)))
                                       (_%$tl112317112470%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt112315112464%_)))
                                       (_%body112474%_ _%$hd112316112467%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl112317112470%_))
                                              '())
                                      (__compile _%body112474%_)
                                      (_%$E112298112441%_)))
                                (_%$E112298112441%_))
                            (_%$E112298112441%_)))
                      (_%$E112298112441%_)))
                (_%$E112298112441%_))))))
    (define __compile-let-values%
      (lambda (_%stx112101%_)
        (letrec ((_%compile-simple112103%_
                  (lambda (_%hd-ids112285%_ _%exprs112286%_ _%body112287%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp113404
                                        (map __compile-head-id
                                             _%hd-ids112285%_)))
                                   (declare (not safe))
                                   (##map list __tmp113404 _%exprs112286%_))
                                 (cons _%body112287%_ '())))
                     _%stx112101%_)))
                 (_%compile-values112104%_
                  (lambda (_%hd-ids112200%_ _%exprs112201%_ _%body112202%_)
                    (let _%lp112204%_ ((_%rest112206%_ _%hd-ids112200%_)
                                       (_%exprs112207%_ _%exprs112201%_)
                                       (_%bind112208%_ '())
                                       (_%post112209%_ '()))
                      (let* ((_%rest112210112224%_ _%rest112206%_)
                             (_%else112213112232%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind112208%_)
                                             (cons (_%compile-post112105%_
                                                    _%post112209%_
                                                    _%body112202%_)
                                                   '())))
                                 _%stx112101%_))))
                        (let ((_%K112218112268%_
                               (lambda (_%rest112265%_ _%id112266%_)
                                 (_%lp112204%_
                                  _%rest112265%_
                                  (cdr _%exprs112207%_)
                                  (cons (cons (__compile-head-id _%id112266%_)
                                              (cons (car _%exprs112207%_) '()))
                                        _%bind112208%_)
                                  _%post112209%_)))
                              (_%K112215112250%_
                               (lambda (_%rest112236%_ _%hd112237%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd112237%_))
                                     (_%lp112204%_
                                      _%rest112236%_
                                      (cdr _%exprs112207%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd112237%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs112207%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind112208%_)
                                      _%post112209%_)
                                     (if (list? _%hd112237%_)
                                         (let* ((_%len112241%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd112237%_)))
                                                (_%tmp112243%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp112204%_
                                            _%rest112236%_
                                            (cdr _%exprs112207%_)
                                            (cons (cons _%tmp112243%_
                                                        (cons (car _%exprs112207%_)
                                                              '()))
                                                  _%bind112208%_)
                                            (cons (cons _%tmp112243%_
                                                        (cons _%len112241%_
                                                              (let ((__tmp113406
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id112246%_ _%k112247%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id112246%_))
                                   (cons (__SRC__0 _%id112246%_) _%k112247%_)
                                   '#f)))
                            (__tmp113405
                             (let ()
                               (declare (not safe))
                               (##iota _%len112241%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp113406 _%hd112237%_ __tmp113405))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post112209%_)))
                                         (__compile-error__%
                                          _%stx112101%_
                                          _%hd112237%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest112210112224%_))
                              (let ((_%tl112220112273%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest112210112224%_)))
                                    (_%hd112219112271%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest112210112224%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd112219112271%_))
                                    (let ((_%tl112222112278%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd112219112271%_)))
                                          (_%hd112221112276%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd112219112271%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl112222112278%_))
                                          (let ((_%id112281%_
                                                 _%hd112221112276%_)
                                                (_%rest112283%_
                                                 _%tl112220112273%_))
                                            (_%K112218112268%_
                                             _%rest112283%_
                                             _%id112281%_))
                                          (let ((_%hd112258%_
                                                 _%hd112219112271%_)
                                                (_%rest112260%_
                                                 _%tl112220112273%_))
                                            (_%K112215112250%_
                                             _%rest112260%_
                                             _%hd112258%_))))
                                    (let ((_%hd112258%_ _%hd112219112271%_)
                                          (_%rest112260%_ _%tl112220112273%_))
                                      (_%K112215112250%_
                                       _%rest112260%_
                                       _%hd112258%_))))
                              (_%else112213112232%_)))))))
                 (_%compile-post112105%_
                  (lambda (_%post112107%_ _%body112108%_)
                    (let _%lp112110%_ ((_%rest112112%_ _%post112107%_)
                                       (_%check112113%_ '())
                                       (_%bind112114%_ '()))
                      (let* ((_%rest112115112127%_ _%rest112112%_)
                             (_%else112117112135%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp113407
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind112114%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body112108%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx112101%_)
                                                    '())))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp113407
                                          _%check112113%_)))
                                 _%stx112101%_)))
                             (_%K112119112174%_
                              (lambda (_%rest112138%_
                                       _%init112139%_
                                       _%len112140%_
                                       _%tmp112141%_)
                                (_%lp112110%_
                                 _%rest112138%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp112141%_
                                                    (cons _%len112140%_ '())))
                                        _%stx112101%_)
                                       _%check112113%_)
                                 (let ((__tmp113408
                                        (lambda (_%hd112143%_ _%r112144%_)
                                          (let* ((_%hd112145112152%_
                                                  _%hd112143%_)
                                                 (_%E112147112156%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd112145112152%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K112148112162%_
                                                  (lambda (_%k112159%_
                                                           _%id112160%_)
                                                    (cons (cons _%id112160%_
                                                                (cons (cons '##vector-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp112141%_
                                          (cons _%k112159%_ '())))
                              '()))
                  _%r112144%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd112145112152%_))
                                                (let ((_%hd112149112165%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd112145112152%_)))
                                                      (_%tl112150112167%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd112145112152%_))))
                                                  (let* ((_%id112170%_
                                                          _%hd112149112165%_)
                                                         (_%k112172%_
                                                          _%tl112150112167%_))
                                                    (_%K112148112162%_
                                                     _%k112172%_
                                                     _%id112170%_)))
                                                (_%E112147112156%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp113408
                                    _%bind112114%_
                                    _%init112139%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest112115112127%_))
                            (let ((_%hd112120112177%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest112115112127%_)))
                                  (_%tl112121112179%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest112115112127%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd112120112177%_))
                                  (let ((_%hd112122112182%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd112120112177%_)))
                                        (_%tl112123112184%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd112120112177%_))))
                                    (let ((_%tmp112187%_ _%hd112122112182%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl112123112184%_))
                                          (let ((_%hd112124112189%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl112123112184%_)))
                                                (_%tl112125112191%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl112123112184%_))))
                                            (let* ((_%len112194%_
                                                    _%hd112124112189%_)
                                                   (_%init112196%_
                                                    _%tl112125112191%_)
                                                   (_%rest112198%_
                                                    _%tl112121112179%_))
                                              (_%K112119112174%_
                                               _%rest112198%_
                                               _%init112196%_
                                               _%len112194%_
                                               _%tmp112187%_)))
                                          (_%else112117112135%_))))
                                  (_%else112117112135%_)))
                            (_%else112117112135%_)))))))
          (__compile-let-form
           _%stx112101%_
           _%compile-simple112103%_
           _%compile-values112104%_))))
    (define __compile-letrec-values%
      (lambda (_%stx111898%_)
        (letrec ((_%compile-simple111900%_
                  (lambda (_%hd-ids112097%_ _%exprs112098%_ _%body112099%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp113409
                                        (map __compile-head-id
                                             _%hd-ids112097%_)))
                                   (declare (not safe))
                                   (##map list __tmp113409 _%exprs112098%_))
                                 (cons _%body112099%_ '())))
                     _%stx111898%_)))
                 (_%compile-values111901%_
                  (lambda (_%hd-ids112008%_ _%exprs112009%_ _%body112010%_)
                    (let _%lp112012%_ ((_%rest112014%_ _%hd-ids112008%_)
                                       (_%exprs112015%_ _%exprs112009%_)
                                       (_%pre112016%_ '())
                                       (_%bind112017%_ '())
                                       (_%post112018%_ '()))
                      (let* ((_%rest112019112033%_ _%rest112014%_)
                             (_%else112022112041%_
                              (lambda ()
                                (_%compile-inner111902%_
                                 _%pre112016%_
                                 _%bind112017%_
                                 _%post112018%_
                                 _%body112010%_))))
                        (let ((_%K112027112080%_
                               (lambda (_%rest112077%_ _%id112078%_)
                                 (_%lp112012%_
                                  _%rest112077%_
                                  (cdr _%exprs112015%_)
                                  _%pre112016%_
                                  (cons (cons (__compile-head-id _%id112078%_)
                                              (cons (car _%exprs112015%_) '()))
                                        _%bind112017%_)
                                  _%post112018%_)))
                              (_%K112024112062%_
                               (lambda (_%rest112045%_ _%hd112046%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd112046%_))
                                     (_%lp112012%_
                                      _%rest112045%_
                                      (cdr _%exprs112015%_)
                                      _%pre112016%_
                                      (cons (cons (__compile-head-id
                                                   _%hd112046%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs112015%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind112017%_)
                                      _%post112018%_)
                                     (if (list? _%hd112046%_)
                                         (let* ((_%len112050%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd112046%_)))
                                                (_%tmp112052%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp112012%_
                                            _%rest112045%_
                                            (cdr _%exprs112015%_)
                                            (let ((__tmp113410
                                                   (lambda (_%id112055%_
                                                            _%r112056%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id112055%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id112055%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r112056%_)
                 _%r112056%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (__foldl1
                                               __tmp113410
                                               _%pre112016%_
                                               _%hd112046%_))
                                            (cons (cons _%tmp112052%_
                                                        (cons (car _%exprs112015%_)
                                                              '()))
                                                  _%bind112017%_)
                                            (cons (cons _%tmp112052%_
                                                        (cons _%len112050%_
                                                              (let ((__tmp113412
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id112058%_ _%k112059%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id112058%_))
                                   (cons (__SRC__0 _%id112058%_) _%k112059%_)
                                   '#f)))
                            (__tmp113411
                             (let ()
                               (declare (not safe))
                               (##iota _%len112050%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp113412 _%hd112046%_ __tmp113411))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post112018%_)))
                                         (__compile-error__%
                                          _%stx111898%_
                                          _%hd112046%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest112019112033%_))
                              (let ((_%tl112029112085%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest112019112033%_)))
                                    (_%hd112028112083%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest112019112033%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd112028112083%_))
                                    (let ((_%tl112031112090%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd112028112083%_)))
                                          (_%hd112030112088%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd112028112083%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl112031112090%_))
                                          (let ((_%id112093%_
                                                 _%hd112030112088%_)
                                                (_%rest112095%_
                                                 _%tl112029112085%_))
                                            (_%K112027112080%_
                                             _%rest112095%_
                                             _%id112093%_))
                                          (let ((_%hd112070%_
                                                 _%hd112028112083%_)
                                                (_%rest112072%_
                                                 _%tl112029112085%_))
                                            (_%K112024112062%_
                                             _%rest112072%_
                                             _%hd112070%_))))
                                    (let ((_%hd112070%_ _%hd112028112083%_)
                                          (_%rest112072%_ _%tl112029112085%_))
                                      (_%K112024112062%_
                                       _%rest112072%_
                                       _%hd112070%_))))
                              (_%else112022112041%_)))))))
                 (_%compile-inner111902%_
                  (lambda (_%pre112003%_
                           _%bind112004%_
                           _%post112005%_
                           _%body112006%_)
                    (if (null? _%pre112003%_)
                        (_%compile-bind111903%_
                         _%bind112004%_
                         _%post112005%_
                         _%body112006%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre112003%_)
                                     (cons (_%compile-bind111903%_
                                            _%bind112004%_
                                            _%post112005%_
                                            _%body112006%_)
                                           '())))
                         _%stx111898%_))))
                 (_%compile-bind111903%_
                  (lambda (_%bind111999%_ _%post112000%_ _%body112001%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind111999%_)
                                 (cons (_%compile-post111904%_
                                        _%post112000%_
                                        _%body112001%_)
                                       '())))
                     _%stx111898%_)))
                 (_%compile-post111904%_
                  (lambda (_%post111906%_ _%body111907%_)
                    (let _%lp111909%_ ((_%rest111911%_ _%post111906%_)
                                       (_%check111912%_ '())
                                       (_%bind111913%_ '()))
                      (let* ((_%rest111914111926%_ _%rest111911%_)
                             (_%else111916111934%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp113413
                                              (let ((__tmp113414
                                                     (cons _%body111907%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp113414
                                                 _%bind111913%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp113413
                                          _%check111912%_)))
                                 _%stx111898%_)))
                             (_%K111918111973%_
                              (lambda (_%rest111937%_
                                       _%init111938%_
                                       _%len111939%_
                                       _%tmp111940%_)
                                (_%lp111909%_
                                 _%rest111937%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp111940%_
                                                    (cons _%len111939%_ '())))
                                        _%stx111898%_)
                                       _%check111912%_)
                                 (let ((__tmp113415
                                        (lambda (_%hd111942%_ _%r111943%_)
                                          (let* ((_%hd111944111951%_
                                                  _%hd111942%_)
                                                 (_%E111946111955%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd111944111951%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K111947111961%_
                                                  (lambda (_%k111958%_
                                                           _%id111959%_)
                                                    (cons (cons 'set!
                                                                (cons _%id111959%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##vector-ref
                                          (cons _%tmp111940%_
                                                (cons _%k111958%_ '())))
                                    '())))
                  _%r111943%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd111944111951%_))
                                                (let ((_%hd111948111964%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd111944111951%_)))
                                                      (_%tl111949111966%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd111944111951%_))))
                                                  (let* ((_%id111969%_
                                                          _%hd111948111964%_)
                                                         (_%k111971%_
                                                          _%tl111949111966%_))
                                                    (_%K111947111961%_
                                                     _%k111971%_
                                                     _%id111969%_)))
                                                (_%E111946111955%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp113415
                                    _%bind111913%_
                                    _%init111938%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest111914111926%_))
                            (let ((_%hd111919111976%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest111914111926%_)))
                                  (_%tl111920111978%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest111914111926%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd111919111976%_))
                                  (let ((_%hd111921111981%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd111919111976%_)))
                                        (_%tl111922111983%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd111919111976%_))))
                                    (let ((_%tmp111986%_ _%hd111921111981%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl111922111983%_))
                                          (let ((_%hd111923111988%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl111922111983%_)))
                                                (_%tl111924111990%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl111922111983%_))))
                                            (let* ((_%len111993%_
                                                    _%hd111923111988%_)
                                                   (_%init111995%_
                                                    _%tl111924111990%_)
                                                   (_%rest111997%_
                                                    _%tl111920111978%_))
                                              (_%K111918111973%_
                                               _%rest111997%_
                                               _%init111995%_
                                               _%len111993%_
                                               _%tmp111986%_)))
                                          (_%else111916111934%_))))
                                  (_%else111916111934%_)))
                            (_%else111916111934%_)))))))
          (__compile-let-form
           _%stx111898%_
           _%compile-simple111900%_
           _%compile-values111901%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx111649%_)
        (letrec ((_%compile-simple111651%_
                  (lambda (_%hd-ids111894%_ _%exprs111895%_ _%body111896%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp113416
                                        (map __compile-head-id
                                             _%hd-ids111894%_)))
                                   (declare (not safe))
                                   (##map list __tmp113416 _%exprs111895%_))
                                 (cons _%body111896%_ '())))
                     _%stx111649%_)))
                 (_%compile-values111652%_
                  (lambda (_%hd-ids111801%_ _%exprs111802%_ _%body111803%_)
                    (let _%lp111805%_ ((_%rest111807%_ _%hd-ids111801%_)
                                       (_%exprs111808%_ _%exprs111802%_)
                                       (_%bind111809%_ '())
                                       (_%post111810%_ '()))
                      (let* ((_%rest111811111825%_ _%rest111807%_)
                             (_%else111814111833%_
                              (lambda ()
                                (_%compile-bind111653%_
                                 _%bind111809%_
                                 _%post111810%_
                                 _%body111803%_))))
                        (let ((_%K111819111877%_
                               (lambda (_%rest111872%_ _%hd111873%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd111873%_))
                                     (let ((_%id111875%_
                                            (__SRC__0 _%hd111873%_)))
                                       (_%lp111805%_
                                        _%rest111872%_
                                        (cdr _%exprs111808%_)
                                        (cons (cons _%id111875%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind111809%_)
                                        (cons (cons _%id111875%_
                                                    (cons (car _%exprs111808%_)
                                                          '()))
                                              _%post111810%_)))
                                     (_%lp111805%_
                                      _%rest111872%_
                                      (cdr _%exprs111808%_)
                                      _%bind111809%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs111808%_)
                                                        '()))
                                            _%post111810%_)))))
                              (_%K111816111857%_
                               (lambda (_%rest111837%_ _%hd111838%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd111838%_))
                                     (let ((_%id111841%_
                                            (__SRC__0 _%hd111838%_)))
                                       (_%lp111805%_
                                        _%rest111837%_
                                        (cdr _%exprs111808%_)
                                        (cons (cons _%id111841%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind111809%_)
                                        (cons (cons _%id111841%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs111808%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post111810%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd111838%_))
                                         (if (list? _%hd111838%_)
                                             (let* ((_%len111845%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd111838%_)))
                                                    (_%tmp111847%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp111805%_
                                                _%rest111837%_
                                                (cdr _%exprs111808%_)
                                                (let ((__tmp113417
                                                       (lambda (_%id111850%_
                                                                _%r111851%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id111850%_))
                     (cons (cons (__SRC__0 _%id111850%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r111851%_)
                     _%r111851%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldl1
                                                   __tmp113417
                                                   _%bind111809%_
                                                   _%hd111838%_))
                                                (cons (cons _%tmp111847%_
                                                            (cons (car _%exprs111808%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len111845%_
                                (let ((__tmp113419
                                       (lambda (_%id111853%_ _%k111854%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id111853%_))
                                             (cons (__SRC__0 _%id111853%_)
                                                   _%k111854%_)
                                             '#f)))
                                      (__tmp113418
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len111845%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp113419
                                   _%hd111838%_
                                   __tmp113418)))))
              _%post111810%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx111649%_
                                              _%hd111838%_))
                                         (_%lp111805%_
                                          _%rest111837%_
                                          (cdr _%exprs111808%_)
                                          _%bind111809%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs111808%_)
                                                            '()))
                                                _%post111810%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest111811111825%_))
                              (let ((_%tl111821111882%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest111811111825%_)))
                                    (_%hd111820111880%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest111811111825%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd111820111880%_))
                                    (let ((_%tl111823111887%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd111820111880%_)))
                                          (_%hd111822111885%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd111820111880%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl111823111887%_))
                                          (let ((_%hd111890%_
                                                 _%hd111822111885%_)
                                                (_%rest111892%_
                                                 _%tl111821111882%_))
                                            (_%K111819111877%_
                                             _%rest111892%_
                                             _%hd111890%_))
                                          (let ((_%hd111865%_
                                                 _%hd111820111880%_)
                                                (_%rest111867%_
                                                 _%tl111821111882%_))
                                            (_%K111816111857%_
                                             _%rest111867%_
                                             _%hd111865%_))))
                                    (let ((_%hd111865%_ _%hd111820111880%_)
                                          (_%rest111867%_ _%tl111821111882%_))
                                      (_%K111816111857%_
                                       _%rest111867%_
                                       _%hd111865%_))))
                              (_%else111814111833%_)))))))
                 (_%compile-bind111653%_
                  (lambda (_%bind111797%_ _%post111798%_ _%body111799%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind111797%_)
                                 (cons (_%compile-post111654%_
                                        _%post111798%_
                                        _%body111799%_)
                                       '())))
                     _%stx111649%_)))
                 (_%compile-post111654%_
                  (lambda (_%post111656%_ _%body111657%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp113420
                                  (let ((__tmp113422
                                         (lambda (_%hd111659%_ _%r111660%_)
                                           (let* ((_%hd111661111684%_
                                                   _%hd111659%_)
                                                  (_%E111665111688%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd111661111684%_
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
                                             (let ((_%K111678111782%_
                                                    (lambda (_%expr111780%_)
                                                      (cons _%expr111780%_
                                                            _%r111660%_)))
                                                   (_%K111673111760%_
                                                    (lambda (_%expr111757%_
                                                             _%id111758%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id111758%_ (cons _%expr111757%_ '())))
                     _%stx111649%_)
                    _%r111660%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K111666111727%_
                                                    (lambda (_%init111692%_
                                                             _%len111693%_
                                                             _%expr111694%_
                                                             _%tmp111695%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp111695%_
                                             (cons _%expr111694%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp111695%_
                                                    (cons _%len111693%_ '())))
                                        _%stx111649%_)
                                       (let ((__tmp113423
                                              (map (lambda (_%hd111697%_)
                                                     (let* ((_%hd111698111705%_
                                                             _%hd111697%_)
                                                            (_%E111700111709%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd111698111705%_
                                '([id . k])))
                       '#!void))
                    (_%K111701111715%_
                     (lambda (_%k111712%_ _%id111713%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id111713%_
                                    (cons (cons '##vector-ref
                                                (cons _%tmp111695%_
                                                      (cons _%k111712%_ '())))
                                          '())))
                        _%stx111649%_))))
               (if (let () (declare (not safe)) (##pair? _%hd111698111705%_))
                   (let ((_%hd111702111718%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd111698111705%_)))
                         (_%tl111703111720%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd111698111705%_))))
                     (let* ((_%id111723%_ _%hd111702111718%_)
                            (_%k111725%_ _%tl111703111720%_))
                       (_%K111701111715%_ _%k111725%_ _%id111723%_)))
                   (_%E111700111709%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init111692%_)))
                                         (declare (not safe))
                                         (__foldr1 cons '() __tmp113423)))))
                     _%stx111649%_)
                    _%r111660%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match113276113277%_
                                                       (lambda (_%hd111667111730%_
                                                                _%tl111668111732%_
                                                                _%hd111669111737%_
                                                                _%tl111670111739%_)
                                                         (let ((_%tmp111735%_
                                                                _%hd111667111730%_)
                                                               (_%expr111742%_
                                                                _%hd111669111737%_))
                                                           (_%E111665111688%_))))
                                                      (_%__match113270113271%_
                                                       (lambda (_%hd111667111730%_
                                                                _%tl111668111732%_)
                                                         (let ((_%tmp111735%_
                                                                _%hd111667111730%_))
                                                           (_%E111665111688%_)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##pair? _%hd111661111684%_))
                                                     (let ((_%tl111680111787%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd111661111684%_)))
                                                           (_%hd111679111785%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd111661111684%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd111679111785%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _%tl111680111787%_))
                       (let ((_%tl111682111792%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl111680111787%_)))
                             (_%hd111681111790%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl111680111787%_))))
                         (if (let ()
                               (declare (not safe))
                               (##null? _%tl111682111792%_))
                             (let ((_%expr111795%_ _%hd111681111790%_))
                               (_%K111678111782%_ _%expr111795%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%tl111682111792%_))
                                 (let ((_%tl111672111746%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl111682111792%_)))
                                       (_%hd111671111744%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl111682111792%_))))
                                   (let ((_%tmp111735%_ _%hd111679111785%_)
                                         (_%expr111742%_ _%hd111681111790%_)
                                         (_%len111749%_ _%hd111671111744%_)
                                         (_%init111751%_ _%tl111672111746%_))
                                     (_%K111666111727%_
                                      _%init111751%_
                                      _%len111749%_
                                      _%expr111742%_
                                      _%tmp111735%_)))
                                 (_%__match113276113277%_
                                  _%hd111679111785%_
                                  _%tl111680111787%_
                                  _%hd111681111790%_
                                  _%tl111682111792%_))))
                       (_%__match113270113271%_
                        _%hd111679111785%_
                        _%tl111680111787%_))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _%tl111680111787%_))
                       (let ((_%tl111677111772%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl111680111787%_)))
                             (_%hd111676111770%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl111680111787%_))))
                         (if (let ()
                               (declare (not safe))
                               (##null? _%tl111677111772%_))
                             (let ((_%id111768%_ _%hd111679111785%_)
                                   (_%expr111775%_ _%hd111676111770%_))
                               (_%K111673111760%_ _%expr111775%_ _%id111768%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%tl111677111772%_))
                                 (let ((_%tl111672111746%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl111677111772%_)))
                                       (_%hd111671111744%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl111677111772%_))))
                                   (let ((_%tmp111735%_ _%hd111679111785%_)
                                         (_%expr111742%_ _%hd111676111770%_)
                                         (_%len111749%_ _%hd111671111744%_)
                                         (_%init111751%_ _%tl111672111746%_))
                                     (_%K111666111727%_
                                      _%init111751%_
                                      _%len111749%_
                                      _%expr111742%_
                                      _%tmp111735%_)))
                                 (_%__match113276113277%_
                                  _%hd111679111785%_
                                  _%tl111680111787%_
                                  _%hd111676111770%_
                                  _%tl111677111772%_))))
                       (_%__match113270113271%_
                        _%hd111679111785%_
                        _%tl111680111787%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E111665111688%_)))))))
                                        (__tmp113421 (list _%body111657%_)))
                                    (declare (not safe))
                                    (__foldl1
                                     __tmp113422
                                     __tmp113421
                                     _%post111656%_))))
                             (declare (not safe))
                             (__foldr1 cons '() __tmp113420)))
                     _%stx111649%_))))
          (__compile-let-form
           _%stx111649%_
           _%compile-simple111651%_
           _%compile-values111652%_))))
    (define __compile-call%
      (lambda (_%stx111609%_)
        (let* ((_%$e111611%_ _%stx111609%_)
               (_%$E111613111622%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111611%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111611%_))
              (let* ((_%$tgt111614111625%_
                      (let () (declare (not safe)) (__AST-e _%$e111611%_)))
                     (_%$hd111615111628%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111614111625%_)))
                     (_%$tl111616111631%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111614111625%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111616111631%_))
                    (let* ((_%$tgt111617111635%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111616111631%_)))
                           (_%$hd111618111638%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111617111635%_)))
                           (_%$tl111619111641%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111617111635%_)))
                           (_%rator111645%_ _%$hd111618111638%_)
                           (_%rands111647%_ _%$tl111619111641%_))
                      (__SRC__%
                       (cons (__compile _%rator111645%_)
                             (map __compile _%rands111647%_))
                       _%stx111609%_))
                    (_%$E111613111622%_)))
              (_%$E111613111622%_)))))
    (define __compile-ref%
      (lambda (_%stx111571%_)
        (let* ((_%$e111573%_ _%stx111571%_)
               (_%$E111575111584%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111573%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111573%_))
              (let* ((_%$tgt111576111587%_
                      (let () (declare (not safe)) (__AST-e _%$e111573%_)))
                     (_%$hd111577111590%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111576111587%_)))
                     (_%$tl111578111593%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111576111587%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111578111593%_))
                    (let* ((_%$tgt111579111597%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111578111593%_)))
                           (_%$hd111580111600%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111579111597%_)))
                           (_%$tl111581111603%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111579111597%_)))
                           (_%id111607%_ _%$hd111580111600%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111581111603%_))
                                  '())
                          (__SRC__% _%id111607%_ _%stx111571%_)
                          (_%$E111575111584%_)))
                    (_%$E111575111584%_)))
              (_%$E111575111584%_)))))
    (define __compile-setq%
      (lambda (_%stx111518%_)
        (let* ((_%$e111520%_ _%stx111518%_)
               (_%$E111522111534%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111520%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111520%_))
              (let* ((_%$tgt111523111537%_
                      (let () (declare (not safe)) (__AST-e _%$e111520%_)))
                     (_%$hd111524111540%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111523111537%_)))
                     (_%$tl111525111543%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111523111537%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111525111543%_))
                    (let* ((_%$tgt111526111547%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111525111543%_)))
                           (_%$hd111527111550%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111526111547%_)))
                           (_%$tl111528111553%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111526111547%_)))
                           (_%id111557%_ _%$hd111527111550%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl111528111553%_))
                          (let* ((_%$tgt111529111559%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111528111553%_)))
                                 (_%$hd111530111562%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111529111559%_)))
                                 (_%$tl111531111565%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111529111559%_)))
                                 (_%expr111569%_ _%$hd111530111562%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl111531111565%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id111557%_
                                              _%stx111518%_)
                                             (cons (__compile _%expr111569%_)
                                                   '())))
                                 _%stx111518%_)
                                (_%$E111522111534%_)))
                          (_%$E111522111534%_)))
                    (_%$E111522111534%_)))
              (_%$E111522111534%_)))))
    (define __compile-if%
      (lambda (_%stx111450%_)
        (let* ((_%$e111452%_ _%stx111450%_)
               (_%$E111454111469%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111452%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111452%_))
              (let* ((_%$tgt111455111472%_
                      (let () (declare (not safe)) (__AST-e _%$e111452%_)))
                     (_%$hd111456111475%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111455111472%_)))
                     (_%$tl111457111478%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111455111472%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111457111478%_))
                    (let* ((_%$tgt111458111482%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111457111478%_)))
                           (_%$hd111459111485%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111458111482%_)))
                           (_%$tl111460111488%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111458111482%_)))
                           (_%p111492%_ _%$hd111459111485%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl111460111488%_))
                          (let* ((_%$tgt111461111494%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111460111488%_)))
                                 (_%$hd111462111497%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111461111494%_)))
                                 (_%$tl111463111500%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111461111494%_)))
                                 (_%t111504%_ _%$hd111462111497%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl111463111500%_))
                                (let* ((_%$tgt111464111506%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl111463111500%_)))
                                       (_%$hd111465111509%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt111464111506%_)))
                                       (_%$tl111466111512%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt111464111506%_)))
                                       (_%f111516%_ _%$hd111465111509%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl111466111512%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p111492%_)
                                                   (cons (__compile
                                                          _%t111504%_)
                                                         (cons (__compile
                                                                _%f111516%_)
                                                               '()))))
                                       _%stx111450%_)
                                      (_%$E111454111469%_)))
                                (_%$E111454111469%_)))
                          (_%$E111454111469%_)))
                    (_%$E111454111469%_)))
              (_%$E111454111469%_)))))
    (define __compile-quote%
      (lambda (_%stx111412%_)
        (let* ((_%$e111414%_ _%stx111412%_)
               (_%$E111416111425%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111414%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111414%_))
              (let* ((_%$tgt111417111428%_
                      (let () (declare (not safe)) (__AST-e _%$e111414%_)))
                     (_%$hd111418111431%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111417111428%_)))
                     (_%$tl111419111434%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111417111428%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111419111434%_))
                    (let* ((_%$tgt111420111438%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111419111434%_)))
                           (_%$hd111421111441%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111420111438%_)))
                           (_%$tl111422111444%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111420111438%_)))
                           (_%e111448%_ _%$hd111421111441%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111422111444%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e111448%_))
                                       '()))
                           _%stx111412%_)
                          (_%$E111416111425%_)))
                    (_%$E111416111425%_)))
              (_%$E111416111425%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx111374%_)
        (let* ((_%$e111376%_ _%stx111374%_)
               (_%$E111378111387%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111376%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111376%_))
              (let* ((_%$tgt111379111390%_
                      (let () (declare (not safe)) (__AST-e _%$e111376%_)))
                     (_%$hd111380111393%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111379111390%_)))
                     (_%$tl111381111396%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111379111390%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111381111396%_))
                    (let* ((_%$tgt111382111400%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111381111396%_)))
                           (_%$hd111383111403%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111382111400%_)))
                           (_%$tl111384111406%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111382111400%_)))
                           (_%e111410%_ _%$hd111383111403%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111384111406%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e111410%_ '()))
                           _%stx111374%_)
                          (_%$E111378111387%_)))
                    (_%$E111378111387%_)))
              (_%$E111378111387%_)))))
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

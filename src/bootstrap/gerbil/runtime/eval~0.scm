(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1713004410)
  (begin
    (define __syntax::t
      (let ((__tmp113490 (list)) (__tmp113489 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp113490
         '(e id)
         __tmp113489
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args113294%_
        (apply make-instance __syntax::t _%$args113294%_)))
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
      (let ((__tmp113492 (list __syntax::t))
            (__tmp113491 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp113492
         '()
         __tmp113491
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args113291%_
        (apply make-instance __core-form::t _%$args113291%_)))
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
      (let ((__tmp113494 (list __core-form::t))
            (__tmp113493 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp113494
         '()
         __tmp113493
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args113288%_
        (apply make-instance __core-expression::t _%$args113288%_)))
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
      (let ((__tmp113496 (list __core-form::t))
            (__tmp113495 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp113496
         '()
         __tmp113495
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args113285%_
        (apply make-instance __core-special-form::t _%$args113285%_)))
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
      (lambda (_%id113283%_)
        (let ((__tmp113497
               (let () (declare (not safe)) (__AST-e _%id113283%_))))
          (declare (not safe))
          (__hash-get __core __tmp113497))))
    (define __core-bound-id?__%
      (lambda (_%id113266%_ _%is?113267%_)
        (let ((_%$e113269%_ (__core-resolve _%id113266%_)))
          (if _%$e113269%_ (_%is?113267%_ _%$e113269%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id113276%_)
        (let ((_%is?113278%_ true))
          (__core-bound-id?__% _%id113276%_ _%is?113278%_))))
    (define __core-bound-id?
      (lambda _g113499_
        (let ((_g113498_ (let () (declare (not safe)) (##length _g113499_))))
          (cond ((let () (declare (not safe)) (##fx= _g113498_ 1))
                 (apply __core-bound-id?__0 _g113499_))
                ((let () (declare (not safe)) (##fx= _g113498_ 2))
                 (apply __core-bound-id?__% _g113499_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g113499_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id113249%_ _%e113250%_ _%make113251%_)
        (let ((__tmp113500
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e113250%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e113250%_
                   (_%make113251%_ _%e113250%_ _%id113249%_))))
          (declare (not safe))
          (__hash-put! __core _%id113249%_ __tmp113500))))
    (define __core-bind-syntax!__0
      (lambda (_%id113256%_ _%e113257%_)
        (let ((_%make113259%_ make-__syntax))
          (__core-bind-syntax!__% _%id113256%_ _%e113257%_ _%make113259%_))))
    (define __core-bind-syntax!
      (lambda _g113502_
        (let ((_g113501_ (let () (declare (not safe)) (##length _g113502_))))
          (cond ((let () (declare (not safe)) (##fx= _g113501_ 2))
                 (apply __core-bind-syntax!__0 _g113502_))
                ((let () (declare (not safe)) (##fx= _g113501_ 3))
                 (apply __core-bind-syntax!__% _g113502_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g113502_))))))
    (define __SRC__%
      (lambda (_%e113229%_ _%src-stx113230%_)
        (if (or (pair? _%e113229%_) (symbol? _%e113229%_))
            (let ((__tmp113503
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx113230%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx113230%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e113229%_ __tmp113503))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e113229%_ 'gerbil#AST::t))
                (let ((__tmp113505
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e113229%_ '1 '#f '#f)))
                      (__tmp113504
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e113229%_)))))
                  (declare (not safe))
                  (##make-source __tmp113505 __tmp113504))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e113229%_))))))
    (define __SRC__0
      (lambda (_%e113241%_)
        (let ((_%src-stx113243%_ '#f))
          (__SRC__% _%e113241%_ _%src-stx113243%_))))
    (define __SRC
      (lambda _g113507_
        (let ((_g113506_ (let () (declare (not safe)) (##length _g113507_))))
          (cond ((let () (declare (not safe)) (##fx= _g113506_ 1))
                 (apply __SRC__0 _g113507_))
                ((let () (declare (not safe)) (##fx= _g113506_ 2))
                 (apply __SRC__% _g113507_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g113507_))))))
    (define __locat
      (lambda (_%loc113226%_)
        (if (let () (declare (not safe)) (##locat? _%loc113226%_))
            _%loc113226%_
            '#f)))
    (define __check-values
      (lambda (_%obj113221%_ _%k113222%_)
        (let ((_%count113224%_
               (if (let () (declare (not safe)) (##values? _%obj113221%_))
                   (let ()
                     (declare (not safe))
                     (##vector-length _%obj113221%_))
                   '1)))
          (if (fx= _%count113224%_ _%k113222%_)
              '#!void
              (let ((__tmp113509
                     (if (fx< _%count113224%_ _%k113222%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp113508
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj113221%_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _%obj113221%_))
                         _%obj113221%_)))
                (declare (not safe))
                (error __tmp113509 __tmp113508 _%k113222%_))))))
    (define __compile
      (lambda (_%stx113190%_)
        (let* ((_%$e113192%_ _%stx113190%_)
               (_%$E113194113200%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113192%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113192%_))
              (let* ((_%$tgt113195113203%_
                      (let () (declare (not safe)) (__AST-e _%$e113192%_)))
                     (_%$hd113196113206%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt113195113203%_)))
                     (_%$tl113197113209%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt113195113203%_)))
                     (_%form113213%_ _%$hd113196113206%_)
                     (_%$e113215%_ (__core-resolve _%form113213%_)))
                (if _%$e113215%_
                    ((lambda (_%bind113218%_)
                       ((##structure-ref _%bind113218%_ '1 __syntax::t '#f)
                        _%stx113190%_))
                     _%$e113215%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx113190%_
                       _%form113213%_))))
              (_%$E113194113200%_)))))
    (define __compile-error__%
      (lambda (_%stx113177%_ _%detail113178%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx113177%_
           _%detail113178%_))))
    (define __compile-error__0
      (lambda (_%stx113183%_)
        (let ((_%detail113185%_ '#f))
          (__compile-error__% _%stx113183%_ _%detail113185%_))))
    (define __compile-error
      (lambda _g113511_
        (let ((_g113510_ (let () (declare (not safe)) (##length _g113511_))))
          (cond ((let () (declare (not safe)) (##fx= _g113510_ 1))
                 (apply __compile-error__0 _g113511_))
                ((let () (declare (not safe)) (##fx= _g113510_ 2))
                 (apply __compile-error__% _g113511_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g113511_))))))
    (define __compile-ignore%
      (lambda (_%stx113174%_) (__SRC__% ''#!void _%stx113174%_)))
    (define __compile-begin%
      (lambda (_%stx113149%_)
        (let* ((_%$e113151%_ _%stx113149%_)
               (_%$E113153113159%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113151%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113151%_))
              (let* ((_%$tgt113154113162%_
                      (let () (declare (not safe)) (__AST-e _%$e113151%_)))
                     (_%$hd113155113165%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt113154113162%_)))
                     (_%$tl113156113168%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt113154113162%_)))
                     (_%body113172%_ _%$tl113156113168%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body113172%_))
                 _%stx113149%_))
              (_%$E113153113159%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx113124%_)
        (let* ((_%$e113126%_ _%stx113124%_)
               (_%$E113128113134%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113126%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113126%_))
              (let* ((_%$tgt113129113137%_
                      (let () (declare (not safe)) (__AST-e _%$e113126%_)))
                     (_%$hd113130113140%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt113129113137%_)))
                     (_%$tl113131113143%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt113129113137%_)))
                     (_%body113147%_ _%$tl113131113143%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body113147%_)))
                 _%stx113124%_))
              (_%$E113128113134%_)))))
    (define __compile-import%
      (lambda (_%stx113099%_)
        (let* ((_%$e113101%_ _%stx113099%_)
               (_%$E113103113109%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113101%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113101%_))
              (let* ((_%$tgt113104113112%_
                      (let () (declare (not safe)) (__AST-e _%$e113101%_)))
                     (_%$hd113105113115%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt113104113112%_)))
                     (_%$tl113106113118%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt113104113112%_)))
                     (_%body113122%_ _%$tl113106113118%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body113122%_ '())) '()))
                 _%stx113099%_))
              (_%$E113103113109%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx113046%_)
        (let* ((_%$e113048%_ _%stx113046%_)
               (_%$E113050113062%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113048%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113048%_))
              (let* ((_%$tgt113051113065%_
                      (let () (declare (not safe)) (__AST-e _%$e113048%_)))
                     (_%$hd113052113068%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt113051113065%_)))
                     (_%$tl113053113071%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt113051113065%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl113053113071%_))
                    (let* ((_%$tgt113054113075%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl113053113071%_)))
                           (_%$hd113055113078%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt113054113075%_)))
                           (_%$tl113056113081%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt113054113075%_)))
                           (_%ann113085%_ _%$hd113055113078%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl113056113081%_))
                          (let* ((_%$tgt113057113087%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl113056113081%_)))
                                 (_%$hd113058113090%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt113057113087%_)))
                                 (_%$tl113059113093%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt113057113087%_)))
                                 (_%expr113097%_ _%$hd113058113090%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl113059113093%_))
                                        '())
                                (__compile _%expr113097%_)
                                (_%$E113050113062%_)))
                          (_%$E113050113062%_)))
                    (_%$E113050113062%_)))
              (_%$E113050113062%_)))))
    (define __compile-define-values%
      (lambda (_%stx112937%_)
        (let* ((_%$e112939%_ _%stx112937%_)
               (_%$E112941112953%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e112939%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e112939%_))
              (let* ((_%$tgt112942112956%_
                      (let () (declare (not safe)) (__AST-e _%$e112939%_)))
                     (_%$hd112943112959%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt112942112956%_)))
                     (_%$tl112944112962%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt112942112956%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl112944112962%_))
                    (let* ((_%$tgt112945112966%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl112944112962%_)))
                           (_%$hd112946112969%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt112945112966%_)))
                           (_%$tl112947112972%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt112945112966%_)))
                           (_%hd112976%_ _%$hd112946112969%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl112947112972%_))
                          (let* ((_%$tgt112948112978%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl112947112972%_)))
                                 (_%$hd112949112981%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112948112978%_)))
                                 (_%$tl112950112984%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112948112978%_)))
                                 (_%expr112988%_ _%$hd112949112981%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl112950112984%_))
                                        '())
                                (let* ((_%$e112990%_ _%hd112976%_)
                                       (_%$E112992113033%_
                                        (lambda ()
                                          (let ((_%$E112993113018%_
                                                 (lambda ()
                                                   (let* ((_%$E112994113005%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e112990%_))))
                  (_%ids113008%_ _%hd112976%_)
                  (_%len113010%_ (length _%ids113008%_))
                  (_%tmp113012%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp113012%_
                                       (cons (__compile _%expr112988%_) '())))
                           _%stx112937%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp113012%_
                                             (cons _%len113010%_ '())))
                                 _%stx112937%_)
                                (let ((__tmp113512
                                       (let ((__tmp113514
                                              (lambda (_%id113015%_
                                                       _%k113016%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id113015%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id113015%_)
                         (cons (cons '##vector-ref
                                     (cons _%tmp113012%_
                                           (cons _%k113016%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx112937%_)
                                                    '#f)))
                                             (__tmp113513
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len113010%_))))
                                         (declare (not safe))
                                         (__filter-map2
                                          __tmp113514
                                          _%ids113008%_
                                          __tmp113513))))
                                  (declare (not safe))
                                  (__foldr1 cons '() __tmp113512)))))
              _%stx112937%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e112990%_))
                                                (let* ((_%$tgt112995113021%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e112990%_)))
                                                       (_%$hd112996113024%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt112995113021%_)))
                                                       (_%$tl112997113027%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt112995113021%_)))
                                                       (_%id113031%_
                                                        _%$hd112996113024%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl112997113027%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id113031%_)
                           (cons (__compile _%expr112988%_) '())))
               _%stx112937%_)
              (_%$E112993113018%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E112993113018%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e112990%_))
                                      (let* ((_%$tgt112998113036%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e112990%_)))
                                             (_%$hd112999113039%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt112998113036%_)))
                                             (_%$tl113000113042%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt112998113036%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd112999113039%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl113000113042%_))
                                                        '())
                                                (__compile _%expr112988%_)
                                                (_%$E112992113033%_))
                                            (_%$E112992113033%_)))
                                      (_%$E112992113033%_)))
                                (_%$E112941112953%_)))
                          (_%$E112941112953%_)))
                    (_%$E112941112953%_)))
              (_%$E112941112953%_)))))
    (define __compile-head-id
      (lambda (_%e112935%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e112935%_))
             _%e112935%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd112892%_)
        (let _%recur112894%_ ((_%rest112896%_ _%hd112892%_))
          (let* ((_%$e112898%_ _%rest112896%_)
                 (_%$E112900112918%_
                  (lambda ()
                    (let ((_%$E112901112915%_
                           (lambda ()
                             (let* ((_%$E112902112910%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e112898%_))))
                                    (_%tail112913%_ _%$e112898%_))
                               (__compile-head-id _%tail112913%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e112898%_))
                                  '())
                          '()
                          (_%$E112901112915%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e112898%_))
                (let* ((_%$tgt112903112921%_
                        (let () (declare (not safe)) (__AST-e _%$e112898%_)))
                       (_%$hd112904112924%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt112903112921%_)))
                       (_%$tl112905112927%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt112903112921%_)))
                       (_%hd112931%_ _%$hd112904112924%_)
                       (_%rest112933%_ _%$tl112905112927%_))
                  (cons (__compile-head-id _%hd112931%_)
                        (_%recur112894%_ _%rest112933%_)))
                (_%$E112900112918%_))))))
    (define __compile-lambda%
      (lambda (_%stx112839%_)
        (let* ((_%$e112841%_ _%stx112839%_)
               (_%$E112843112855%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e112841%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e112841%_))
              (let* ((_%$tgt112844112858%_
                      (let () (declare (not safe)) (__AST-e _%$e112841%_)))
                     (_%$hd112845112861%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt112844112858%_)))
                     (_%$tl112846112864%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt112844112858%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl112846112864%_))
                    (let* ((_%$tgt112847112868%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl112846112864%_)))
                           (_%$hd112848112871%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt112847112868%_)))
                           (_%$tl112849112874%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt112847112868%_)))
                           (_%hd112878%_ _%$hd112848112871%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl112849112874%_))
                          (let* ((_%$tgt112850112880%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl112849112874%_)))
                                 (_%$hd112851112883%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112850112880%_)))
                                 (_%$tl112852112886%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112850112880%_)))
                                 (_%body112890%_ _%$hd112851112883%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl112852112886%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd112878%_)
                                             (cons (__compile _%body112890%_)
                                                   '())))
                                 _%stx112839%_)
                                (_%$E112843112855%_)))
                          (_%$E112843112855%_)))
                    (_%$E112843112855%_)))
              (_%$E112843112855%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx112631%_)
        (letrec ((_%variadic?112633%_
                  (lambda (_%hd112804%_)
                    (let* ((_%$e112806%_ _%hd112804%_)
                           (_%$E112808112824%_
                            (lambda ()
                              (let ((_%$E112809112821%_
                                     (lambda ()
                                       (let ((_%$E112810112818%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e112806%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e112806%_))
                                            '())
                                    '#f
                                    (_%$E112809112821%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e112806%_))
                          (let* ((_%$tgt112811112827%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e112806%_)))
                                 (_%$hd112812112830%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112811112827%_)))
                                 (_%$tl112813112833%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112811112827%_)))
                                 (_%rest112837%_ _%$tl112813112833%_))
                            (_%variadic?112633%_ _%rest112837%_))
                          (_%$E112808112824%_)))))
                 (_%arity112634%_
                  (lambda (_%hd112769%_)
                    (let _%lp112771%_ ((_%rest112773%_ _%hd112769%_)
                                       (_%k112774%_ '0))
                      (let* ((_%$e112776%_ _%rest112773%_)
                             (_%$E112778112789%_
                              (lambda ()
                                (let ((_%$E112779112786%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e112776%_)))))
                                  _%k112774%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e112776%_))
                            (let* ((_%$tgt112780112792%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e112776%_)))
                                   (_%$hd112781112795%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt112780112792%_)))
                                   (_%$tl112782112798%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt112780112792%_)))
                                   (_%rest112802%_ _%$tl112782112798%_))
                              (_%lp112771%_
                               _%rest112802%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%k112774%_ '1))))
                            (_%$E112778112789%_))))))
                 (_%generate112635%_
                  (lambda (_%rest112696%_ _%args112697%_ _%len112698%_)
                    (let* ((_%$e112700%_ _%rest112696%_)
                           (_%$E112702112713%_
                            (lambda ()
                              (let ((_%$E112703112710%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e112700%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args112697%_ '())))
                                 _%stx112631%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e112700%_))
                          (let* ((_%$tgt112704112716%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e112700%_)))
                                 (_%$hd112705112719%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112704112716%_)))
                                 (_%$tl112706112722%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112704112716%_)))
                                 (_%clause112726%_ _%$hd112705112719%_)
                                 (_%rest112728%_ _%$tl112706112722%_)
                                 (_%$e112730%_ _%clause112726%_)
                                 (_%$E112732112741%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e112730%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e112730%_))
                                (let* ((_%$tgt112733112744%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e112730%_)))
                                       (_%$hd112734112747%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt112733112744%_)))
                                       (_%$tl112735112750%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt112733112744%_)))
                                       (_%hd112754%_ _%$hd112734112747%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl112735112750%_))
                                      (let* ((_%$tgt112736112756%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl112735112750%_)))
                                             (_%$hd112737112759%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt112736112756%_)))
                                             (_%$tl112738112762%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt112736112756%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl112738112762%_))
                                                    '())
                                            (let ((_%clen112766%_
                                                   (_%arity112634%_
                                                    _%hd112754%_))
                                                  (_%cmp112767%_
                                                   (if (_%variadic?112633%_
                                                        _%hd112754%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp112767%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len112698%_ (cons _%clen112766%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause112726%_))
                                      (cons _%args112697%_ '())))
                          _%stx112631%_)
                         (cons (_%generate112635%_
                                _%rest112728%_
                                _%args112697%_
                                _%len112698%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx112631%_))
                                            (_%$E112732112741%_)))
                                      (_%$E112732112741%_)))
                                (_%$E112732112741%_)))
                          (_%$E112702112713%_))))))
          (let* ((_%$e112637%_ _%stx112631%_)
                 (_%$E112639112671%_
                  (lambda ()
                    (let ((_%$E112640112653%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e112637%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e112637%_))
                          (let* ((_%$tgt112641112656%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e112637%_)))
                                 (_%$hd112642112659%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112641112656%_)))
                                 (_%$tl112643112662%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112641112656%_)))
                                 (_%clauses112666%_ _%$tl112643112662%_))
                            (let ((_%args112668%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx112631%_))
                                  (_%len112669%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx112631%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args112668%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len112669%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args112668%_ '()))
                                         _%stx112631%_)
                                        '()))
                            '())
                      (cons (_%generate112635%_
                             _%clauses112666%_
                             _%args112668%_
                             _%len112669%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx112631%_)
                                                 '())))
                               _%stx112631%_)))
                          (_%$E112640112653%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e112637%_))
                (let* ((_%$tgt112644112674%_
                        (let () (declare (not safe)) (__AST-e _%$e112637%_)))
                       (_%$hd112645112677%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt112644112674%_)))
                       (_%$tl112646112680%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt112644112674%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl112646112680%_))
                      (let* ((_%$tgt112647112684%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl112646112680%_)))
                             (_%$hd112648112687%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt112647112684%_)))
                             (_%$tl112649112690%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt112647112684%_)))
                             (_%clause112694%_ _%$hd112648112687%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl112649112690%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause112694%_))
                            (_%$E112639112671%_)))
                      (_%$E112639112671%_)))
                (_%$E112639112671%_))))))
    (define __compile-let-form
      (lambda (_%stx112400%_ _%compile-simple112401%_ _%compile-values112402%_)
        (letrec ((_%simple-bind?112404%_
                  (lambda (_%hd112589%_)
                    (let* ((_%hd112590112600%_ _%hd112589%_)
                           (_%else112593112608%_ (lambda () '#f)))
                      (let ((_%K112596112621%_ (lambda (_%id112619%_) '#t))
                            (_%K112595112613%_ (lambda () '#t)))
                        (let ((_%try-match112592112616%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd112590112600%_ '#f))
                                     (_%K112595112613%_)
                                     (_%else112593112608%_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%hd112590112600%_))
                              (let ((_%tl112598112626%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd112590112600%_)))
                                    (_%hd112597112624%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd112590112600%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _%tl112598112626%_))
                                    (let ((_%id112629%_ _%hd112597112624%_))
                                      (_%K112596112621%_ _%id112629%_))
                                    (_%try-match112592112616%_)))
                              (_%try-match112592112616%_)))))))
                 (_%car-e112405%_
                  (lambda (_%hd112587%_)
                    (if (pair? _%hd112587%_)
                        (let () (declare (not safe)) (##car _%hd112587%_))
                        _%hd112587%_))))
          (let* ((_%$e112407%_ _%stx112400%_)
                 (_%$E112409112552%_
                  (lambda ()
                    (let ((_%$E112410112432%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e112407%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e112407%_))
                          (let* ((_%$tgt112411112435%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e112407%_)))
                                 (_%$hd112412112438%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112411112435%_)))
                                 (_%$tl112413112441%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112411112435%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl112413112441%_))
                                (let* ((_%$tgt112414112445%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl112413112441%_)))
                                       (_%$hd112415112448%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt112414112445%_)))
                                       (_%$tl112416112451%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt112414112445%_)))
                                       (_%hd112455%_ _%$hd112415112448%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl112416112451%_))
                                      (let* ((_%$tgt112417112457%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl112416112451%_)))
                                             (_%$hd112418112460%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt112417112457%_)))
                                             (_%$tl112419112463%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt112417112457%_)))
                                             (_%body112467%_
                                              _%$hd112418112460%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl112419112463%_))
                                                    '())
                                            (let* ((_%hd-ids112507%_
                                                    (map (lambda (_%bind112469%_)
                                                           (let* ((_%$e112471%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind112469%_)
                          (_%$E112473112482%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e112471%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e112471%_))
                         (let* ((_%$tgt112474112485%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e112471%_)))
                                (_%$hd112475112488%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt112474112485%_)))
                                (_%$tl112476112491%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt112474112485%_)))
                                (_%ids112495%_ _%$hd112475112488%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl112476112491%_))
                               (let* ((_%$tgt112477112497%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl112476112491%_)))
                                      (_%$hd112478112500%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt112477112497%_)))
                                      (_%$tl112479112503%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt112477112497%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl112479112503%_))
                                             '())
                                     _%ids112495%_
                                     (_%$E112473112482%_)))
                               (_%$E112473112482%_)))
                         (_%$E112473112482%_))))
                 _%hd112455%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs112547%_
                                                    (map (lambda (_%bind112509%_)
                                                           (let* ((_%$e112511%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind112509%_)
                          (_%$E112513112522%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e112511%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e112511%_))
                         (let* ((_%$tgt112514112525%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e112511%_)))
                                (_%$hd112515112528%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt112514112525%_)))
                                (_%$tl112516112531%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt112514112525%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl112516112531%_))
                               (let* ((_%$tgt112517112535%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl112516112531%_)))
                                      (_%$hd112518112538%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt112517112535%_)))
                                      (_%$tl112519112541%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt112517112535%_)))
                                      (_%expr112545%_ _%$hd112518112538%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl112519112541%_))
                                             '())
                                     (__compile _%expr112545%_)
                                     (_%$E112513112522%_)))
                               (_%$E112513112522%_)))
                         (_%$E112513112522%_))))
                 _%hd112455%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body112549%_
                                                    (__compile
                                                     _%body112467%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__andmap1
                                                     _%simple-bind?112404%_
                                                     _%hd-ids112507%_))
                                                  (_%compile-simple112401%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e112405%_
                                                            _%hd-ids112507%_))
                                                   _%exprs112547%_
                                                   _%body112549%_)
                                                  (_%compile-values112402%_
                                                   _%hd-ids112507%_
                                                   _%exprs112547%_
                                                   _%body112549%_)))
                                            (_%$E112410112432%_)))
                                      (_%$E112410112432%_)))
                                (_%$E112410112432%_)))
                          (_%$E112410112432%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e112407%_))
                (let* ((_%$tgt112420112555%_
                        (let () (declare (not safe)) (__AST-e _%$e112407%_)))
                       (_%$hd112421112558%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt112420112555%_)))
                       (_%$tl112422112561%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt112420112555%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl112422112561%_))
                      (let* ((_%$tgt112423112565%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl112422112561%_)))
                             (_%$hd112424112568%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt112423112565%_)))
                             (_%$tl112425112571%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt112423112565%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd112424112568%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl112425112571%_))
                                (let* ((_%$tgt112426112575%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl112425112571%_)))
                                       (_%$hd112427112578%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt112426112575%_)))
                                       (_%$tl112428112581%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt112426112575%_)))
                                       (_%body112585%_ _%$hd112427112578%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl112428112581%_))
                                              '())
                                      (__compile _%body112585%_)
                                      (_%$E112409112552%_)))
                                (_%$E112409112552%_))
                            (_%$E112409112552%_)))
                      (_%$E112409112552%_)))
                (_%$E112409112552%_))))))
    (define __compile-let-values%
      (lambda (_%stx112212%_)
        (letrec ((_%compile-simple112214%_
                  (lambda (_%hd-ids112396%_ _%exprs112397%_ _%body112398%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp113515
                                        (map __compile-head-id
                                             _%hd-ids112396%_)))
                                   (declare (not safe))
                                   (##map list __tmp113515 _%exprs112397%_))
                                 (cons _%body112398%_ '())))
                     _%stx112212%_)))
                 (_%compile-values112215%_
                  (lambda (_%hd-ids112311%_ _%exprs112312%_ _%body112313%_)
                    (let _%lp112315%_ ((_%rest112317%_ _%hd-ids112311%_)
                                       (_%exprs112318%_ _%exprs112312%_)
                                       (_%bind112319%_ '())
                                       (_%post112320%_ '()))
                      (let* ((_%rest112321112335%_ _%rest112317%_)
                             (_%else112324112343%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind112319%_)
                                             (cons (_%compile-post112216%_
                                                    _%post112320%_
                                                    _%body112313%_)
                                                   '())))
                                 _%stx112212%_))))
                        (let ((_%K112329112379%_
                               (lambda (_%rest112376%_ _%id112377%_)
                                 (_%lp112315%_
                                  _%rest112376%_
                                  (cdr _%exprs112318%_)
                                  (cons (cons (__compile-head-id _%id112377%_)
                                              (cons (car _%exprs112318%_) '()))
                                        _%bind112319%_)
                                  _%post112320%_)))
                              (_%K112326112361%_
                               (lambda (_%rest112347%_ _%hd112348%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd112348%_))
                                     (_%lp112315%_
                                      _%rest112347%_
                                      (cdr _%exprs112318%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd112348%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs112318%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind112319%_)
                                      _%post112320%_)
                                     (if (list? _%hd112348%_)
                                         (let* ((_%len112352%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd112348%_)))
                                                (_%tmp112354%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp112315%_
                                            _%rest112347%_
                                            (cdr _%exprs112318%_)
                                            (cons (cons _%tmp112354%_
                                                        (cons (car _%exprs112318%_)
                                                              '()))
                                                  _%bind112319%_)
                                            (cons (cons _%tmp112354%_
                                                        (cons _%len112352%_
                                                              (let ((__tmp113517
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id112357%_ _%k112358%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id112357%_))
                                   (cons (__SRC__0 _%id112357%_) _%k112358%_)
                                   '#f)))
                            (__tmp113516
                             (let ()
                               (declare (not safe))
                               (##iota _%len112352%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp113517 _%hd112348%_ __tmp113516))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post112320%_)))
                                         (__compile-error__%
                                          _%stx112212%_
                                          _%hd112348%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest112321112335%_))
                              (let ((_%tl112331112384%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest112321112335%_)))
                                    (_%hd112330112382%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest112321112335%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd112330112382%_))
                                    (let ((_%tl112333112389%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd112330112382%_)))
                                          (_%hd112332112387%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd112330112382%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl112333112389%_))
                                          (let ((_%id112392%_
                                                 _%hd112332112387%_)
                                                (_%rest112394%_
                                                 _%tl112331112384%_))
                                            (_%K112329112379%_
                                             _%rest112394%_
                                             _%id112392%_))
                                          (let ((_%hd112369%_
                                                 _%hd112330112382%_)
                                                (_%rest112371%_
                                                 _%tl112331112384%_))
                                            (_%K112326112361%_
                                             _%rest112371%_
                                             _%hd112369%_))))
                                    (let ((_%hd112369%_ _%hd112330112382%_)
                                          (_%rest112371%_ _%tl112331112384%_))
                                      (_%K112326112361%_
                                       _%rest112371%_
                                       _%hd112369%_))))
                              (_%else112324112343%_)))))))
                 (_%compile-post112216%_
                  (lambda (_%post112218%_ _%body112219%_)
                    (let _%lp112221%_ ((_%rest112223%_ _%post112218%_)
                                       (_%check112224%_ '())
                                       (_%bind112225%_ '()))
                      (let* ((_%rest112226112238%_ _%rest112223%_)
                             (_%else112228112246%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp113518
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind112225%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body112219%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx112212%_)
                                                    '())))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp113518
                                          _%check112224%_)))
                                 _%stx112212%_)))
                             (_%K112230112285%_
                              (lambda (_%rest112249%_
                                       _%init112250%_
                                       _%len112251%_
                                       _%tmp112252%_)
                                (_%lp112221%_
                                 _%rest112249%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp112252%_
                                                    (cons _%len112251%_ '())))
                                        _%stx112212%_)
                                       _%check112224%_)
                                 (let ((__tmp113519
                                        (lambda (_%hd112254%_ _%r112255%_)
                                          (let* ((_%hd112256112263%_
                                                  _%hd112254%_)
                                                 (_%E112258112267%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd112256112263%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K112259112273%_
                                                  (lambda (_%k112270%_
                                                           _%id112271%_)
                                                    (cons (cons _%id112271%_
                                                                (cons (cons '##vector-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp112252%_
                                          (cons _%k112270%_ '())))
                              '()))
                  _%r112255%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd112256112263%_))
                                                (let ((_%hd112260112276%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd112256112263%_)))
                                                      (_%tl112261112278%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd112256112263%_))))
                                                  (let* ((_%id112281%_
                                                          _%hd112260112276%_)
                                                         (_%k112283%_
                                                          _%tl112261112278%_))
                                                    (_%K112259112273%_
                                                     _%k112283%_
                                                     _%id112281%_)))
                                                (_%E112258112267%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp113519
                                    _%bind112225%_
                                    _%init112250%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest112226112238%_))
                            (let ((_%hd112231112288%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest112226112238%_)))
                                  (_%tl112232112290%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest112226112238%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd112231112288%_))
                                  (let ((_%hd112233112293%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd112231112288%_)))
                                        (_%tl112234112295%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd112231112288%_))))
                                    (let ((_%tmp112298%_ _%hd112233112293%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl112234112295%_))
                                          (let ((_%hd112235112300%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl112234112295%_)))
                                                (_%tl112236112302%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl112234112295%_))))
                                            (let* ((_%len112305%_
                                                    _%hd112235112300%_)
                                                   (_%init112307%_
                                                    _%tl112236112302%_)
                                                   (_%rest112309%_
                                                    _%tl112232112290%_))
                                              (_%K112230112285%_
                                               _%rest112309%_
                                               _%init112307%_
                                               _%len112305%_
                                               _%tmp112298%_)))
                                          (_%else112228112246%_))))
                                  (_%else112228112246%_)))
                            (_%else112228112246%_)))))))
          (__compile-let-form
           _%stx112212%_
           _%compile-simple112214%_
           _%compile-values112215%_))))
    (define __compile-letrec-values%
      (lambda (_%stx112009%_)
        (letrec ((_%compile-simple112011%_
                  (lambda (_%hd-ids112208%_ _%exprs112209%_ _%body112210%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp113520
                                        (map __compile-head-id
                                             _%hd-ids112208%_)))
                                   (declare (not safe))
                                   (##map list __tmp113520 _%exprs112209%_))
                                 (cons _%body112210%_ '())))
                     _%stx112009%_)))
                 (_%compile-values112012%_
                  (lambda (_%hd-ids112119%_ _%exprs112120%_ _%body112121%_)
                    (let _%lp112123%_ ((_%rest112125%_ _%hd-ids112119%_)
                                       (_%exprs112126%_ _%exprs112120%_)
                                       (_%pre112127%_ '())
                                       (_%bind112128%_ '())
                                       (_%post112129%_ '()))
                      (let* ((_%rest112130112144%_ _%rest112125%_)
                             (_%else112133112152%_
                              (lambda ()
                                (_%compile-inner112013%_
                                 _%pre112127%_
                                 _%bind112128%_
                                 _%post112129%_
                                 _%body112121%_))))
                        (let ((_%K112138112191%_
                               (lambda (_%rest112188%_ _%id112189%_)
                                 (_%lp112123%_
                                  _%rest112188%_
                                  (cdr _%exprs112126%_)
                                  _%pre112127%_
                                  (cons (cons (__compile-head-id _%id112189%_)
                                              (cons (car _%exprs112126%_) '()))
                                        _%bind112128%_)
                                  _%post112129%_)))
                              (_%K112135112173%_
                               (lambda (_%rest112156%_ _%hd112157%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd112157%_))
                                     (_%lp112123%_
                                      _%rest112156%_
                                      (cdr _%exprs112126%_)
                                      _%pre112127%_
                                      (cons (cons (__compile-head-id
                                                   _%hd112157%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs112126%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind112128%_)
                                      _%post112129%_)
                                     (if (list? _%hd112157%_)
                                         (let* ((_%len112161%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd112157%_)))
                                                (_%tmp112163%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp112123%_
                                            _%rest112156%_
                                            (cdr _%exprs112126%_)
                                            (let ((__tmp113521
                                                   (lambda (_%id112166%_
                                                            _%r112167%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id112166%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id112166%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r112167%_)
                 _%r112167%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (__foldl1
                                               __tmp113521
                                               _%pre112127%_
                                               _%hd112157%_))
                                            (cons (cons _%tmp112163%_
                                                        (cons (car _%exprs112126%_)
                                                              '()))
                                                  _%bind112128%_)
                                            (cons (cons _%tmp112163%_
                                                        (cons _%len112161%_
                                                              (let ((__tmp113523
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id112169%_ _%k112170%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id112169%_))
                                   (cons (__SRC__0 _%id112169%_) _%k112170%_)
                                   '#f)))
                            (__tmp113522
                             (let ()
                               (declare (not safe))
                               (##iota _%len112161%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp113523 _%hd112157%_ __tmp113522))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post112129%_)))
                                         (__compile-error__%
                                          _%stx112009%_
                                          _%hd112157%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest112130112144%_))
                              (let ((_%tl112140112196%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest112130112144%_)))
                                    (_%hd112139112194%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest112130112144%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd112139112194%_))
                                    (let ((_%tl112142112201%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd112139112194%_)))
                                          (_%hd112141112199%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd112139112194%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl112142112201%_))
                                          (let ((_%id112204%_
                                                 _%hd112141112199%_)
                                                (_%rest112206%_
                                                 _%tl112140112196%_))
                                            (_%K112138112191%_
                                             _%rest112206%_
                                             _%id112204%_))
                                          (let ((_%hd112181%_
                                                 _%hd112139112194%_)
                                                (_%rest112183%_
                                                 _%tl112140112196%_))
                                            (_%K112135112173%_
                                             _%rest112183%_
                                             _%hd112181%_))))
                                    (let ((_%hd112181%_ _%hd112139112194%_)
                                          (_%rest112183%_ _%tl112140112196%_))
                                      (_%K112135112173%_
                                       _%rest112183%_
                                       _%hd112181%_))))
                              (_%else112133112152%_)))))))
                 (_%compile-inner112013%_
                  (lambda (_%pre112114%_
                           _%bind112115%_
                           _%post112116%_
                           _%body112117%_)
                    (if (null? _%pre112114%_)
                        (_%compile-bind112014%_
                         _%bind112115%_
                         _%post112116%_
                         _%body112117%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre112114%_)
                                     (cons (_%compile-bind112014%_
                                            _%bind112115%_
                                            _%post112116%_
                                            _%body112117%_)
                                           '())))
                         _%stx112009%_))))
                 (_%compile-bind112014%_
                  (lambda (_%bind112110%_ _%post112111%_ _%body112112%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind112110%_)
                                 (cons (_%compile-post112015%_
                                        _%post112111%_
                                        _%body112112%_)
                                       '())))
                     _%stx112009%_)))
                 (_%compile-post112015%_
                  (lambda (_%post112017%_ _%body112018%_)
                    (let _%lp112020%_ ((_%rest112022%_ _%post112017%_)
                                       (_%check112023%_ '())
                                       (_%bind112024%_ '()))
                      (let* ((_%rest112025112037%_ _%rest112022%_)
                             (_%else112027112045%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp113524
                                              (let ((__tmp113525
                                                     (cons _%body112018%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp113525
                                                 _%bind112024%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp113524
                                          _%check112023%_)))
                                 _%stx112009%_)))
                             (_%K112029112084%_
                              (lambda (_%rest112048%_
                                       _%init112049%_
                                       _%len112050%_
                                       _%tmp112051%_)
                                (_%lp112020%_
                                 _%rest112048%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp112051%_
                                                    (cons _%len112050%_ '())))
                                        _%stx112009%_)
                                       _%check112023%_)
                                 (let ((__tmp113526
                                        (lambda (_%hd112053%_ _%r112054%_)
                                          (let* ((_%hd112055112062%_
                                                  _%hd112053%_)
                                                 (_%E112057112066%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd112055112062%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K112058112072%_
                                                  (lambda (_%k112069%_
                                                           _%id112070%_)
                                                    (cons (cons 'set!
                                                                (cons _%id112070%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##vector-ref
                                          (cons _%tmp112051%_
                                                (cons _%k112069%_ '())))
                                    '())))
                  _%r112054%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd112055112062%_))
                                                (let ((_%hd112059112075%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd112055112062%_)))
                                                      (_%tl112060112077%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd112055112062%_))))
                                                  (let* ((_%id112080%_
                                                          _%hd112059112075%_)
                                                         (_%k112082%_
                                                          _%tl112060112077%_))
                                                    (_%K112058112072%_
                                                     _%k112082%_
                                                     _%id112080%_)))
                                                (_%E112057112066%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp113526
                                    _%bind112024%_
                                    _%init112049%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest112025112037%_))
                            (let ((_%hd112030112087%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest112025112037%_)))
                                  (_%tl112031112089%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest112025112037%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd112030112087%_))
                                  (let ((_%hd112032112092%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd112030112087%_)))
                                        (_%tl112033112094%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd112030112087%_))))
                                    (let ((_%tmp112097%_ _%hd112032112092%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl112033112094%_))
                                          (let ((_%hd112034112099%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl112033112094%_)))
                                                (_%tl112035112101%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl112033112094%_))))
                                            (let* ((_%len112104%_
                                                    _%hd112034112099%_)
                                                   (_%init112106%_
                                                    _%tl112035112101%_)
                                                   (_%rest112108%_
                                                    _%tl112031112089%_))
                                              (_%K112029112084%_
                                               _%rest112108%_
                                               _%init112106%_
                                               _%len112104%_
                                               _%tmp112097%_)))
                                          (_%else112027112045%_))))
                                  (_%else112027112045%_)))
                            (_%else112027112045%_)))))))
          (__compile-let-form
           _%stx112009%_
           _%compile-simple112011%_
           _%compile-values112012%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx111760%_)
        (letrec ((_%compile-simple111762%_
                  (lambda (_%hd-ids112005%_ _%exprs112006%_ _%body112007%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp113527
                                        (map __compile-head-id
                                             _%hd-ids112005%_)))
                                   (declare (not safe))
                                   (##map list __tmp113527 _%exprs112006%_))
                                 (cons _%body112007%_ '())))
                     _%stx111760%_)))
                 (_%compile-values111763%_
                  (lambda (_%hd-ids111912%_ _%exprs111913%_ _%body111914%_)
                    (let _%lp111916%_ ((_%rest111918%_ _%hd-ids111912%_)
                                       (_%exprs111919%_ _%exprs111913%_)
                                       (_%bind111920%_ '())
                                       (_%post111921%_ '()))
                      (let* ((_%rest111922111936%_ _%rest111918%_)
                             (_%else111925111944%_
                              (lambda ()
                                (_%compile-bind111764%_
                                 _%bind111920%_
                                 _%post111921%_
                                 _%body111914%_))))
                        (let ((_%K111930111988%_
                               (lambda (_%rest111983%_ _%hd111984%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd111984%_))
                                     (let ((_%id111986%_
                                            (__SRC__0 _%hd111984%_)))
                                       (_%lp111916%_
                                        _%rest111983%_
                                        (cdr _%exprs111919%_)
                                        (cons (cons _%id111986%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind111920%_)
                                        (cons (cons _%id111986%_
                                                    (cons (car _%exprs111919%_)
                                                          '()))
                                              _%post111921%_)))
                                     (_%lp111916%_
                                      _%rest111983%_
                                      (cdr _%exprs111919%_)
                                      _%bind111920%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs111919%_)
                                                        '()))
                                            _%post111921%_)))))
                              (_%K111927111968%_
                               (lambda (_%rest111948%_ _%hd111949%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd111949%_))
                                     (let ((_%id111952%_
                                            (__SRC__0 _%hd111949%_)))
                                       (_%lp111916%_
                                        _%rest111948%_
                                        (cdr _%exprs111919%_)
                                        (cons (cons _%id111952%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind111920%_)
                                        (cons (cons _%id111952%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs111919%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post111921%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd111949%_))
                                         (if (list? _%hd111949%_)
                                             (let* ((_%len111956%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd111949%_)))
                                                    (_%tmp111958%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp111916%_
                                                _%rest111948%_
                                                (cdr _%exprs111919%_)
                                                (let ((__tmp113528
                                                       (lambda (_%id111961%_
                                                                _%r111962%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id111961%_))
                     (cons (cons (__SRC__0 _%id111961%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r111962%_)
                     _%r111962%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldl1
                                                   __tmp113528
                                                   _%bind111920%_
                                                   _%hd111949%_))
                                                (cons (cons _%tmp111958%_
                                                            (cons (car _%exprs111919%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len111956%_
                                (let ((__tmp113530
                                       (lambda (_%id111964%_ _%k111965%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id111964%_))
                                             (cons (__SRC__0 _%id111964%_)
                                                   _%k111965%_)
                                             '#f)))
                                      (__tmp113529
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len111956%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp113530
                                   _%hd111949%_
                                   __tmp113529)))))
              _%post111921%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx111760%_
                                              _%hd111949%_))
                                         (_%lp111916%_
                                          _%rest111948%_
                                          (cdr _%exprs111919%_)
                                          _%bind111920%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs111919%_)
                                                            '()))
                                                _%post111921%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest111922111936%_))
                              (let ((_%tl111932111993%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest111922111936%_)))
                                    (_%hd111931111991%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest111922111936%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd111931111991%_))
                                    (let ((_%tl111934111998%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd111931111991%_)))
                                          (_%hd111933111996%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd111931111991%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl111934111998%_))
                                          (let ((_%hd112001%_
                                                 _%hd111933111996%_)
                                                (_%rest112003%_
                                                 _%tl111932111993%_))
                                            (_%K111930111988%_
                                             _%rest112003%_
                                             _%hd112001%_))
                                          (let ((_%hd111976%_
                                                 _%hd111931111991%_)
                                                (_%rest111978%_
                                                 _%tl111932111993%_))
                                            (_%K111927111968%_
                                             _%rest111978%_
                                             _%hd111976%_))))
                                    (let ((_%hd111976%_ _%hd111931111991%_)
                                          (_%rest111978%_ _%tl111932111993%_))
                                      (_%K111927111968%_
                                       _%rest111978%_
                                       _%hd111976%_))))
                              (_%else111925111944%_)))))))
                 (_%compile-bind111764%_
                  (lambda (_%bind111908%_ _%post111909%_ _%body111910%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind111908%_)
                                 (cons (_%compile-post111765%_
                                        _%post111909%_
                                        _%body111910%_)
                                       '())))
                     _%stx111760%_)))
                 (_%compile-post111765%_
                  (lambda (_%post111767%_ _%body111768%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp113531
                                  (let ((__tmp113533
                                         (lambda (_%hd111770%_ _%r111771%_)
                                           (let* ((_%hd111772111795%_
                                                   _%hd111770%_)
                                                  (_%E111776111799%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd111772111795%_
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
                                             (let ((_%K111789111893%_
                                                    (lambda (_%expr111891%_)
                                                      (cons _%expr111891%_
                                                            _%r111771%_)))
                                                   (_%K111784111871%_
                                                    (lambda (_%expr111868%_
                                                             _%id111869%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id111869%_ (cons _%expr111868%_ '())))
                     _%stx111760%_)
                    _%r111771%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K111777111838%_
                                                    (lambda (_%init111803%_
                                                             _%len111804%_
                                                             _%expr111805%_
                                                             _%tmp111806%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp111806%_
                                             (cons _%expr111805%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp111806%_
                                                    (cons _%len111804%_ '())))
                                        _%stx111760%_)
                                       (let ((__tmp113534
                                              (map (lambda (_%hd111808%_)
                                                     (let* ((_%hd111809111816%_
                                                             _%hd111808%_)
                                                            (_%E111811111820%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd111809111816%_
                                '([id . k])))
                       '#!void))
                    (_%K111812111826%_
                     (lambda (_%k111823%_ _%id111824%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id111824%_
                                    (cons (cons '##vector-ref
                                                (cons _%tmp111806%_
                                                      (cons _%k111823%_ '())))
                                          '())))
                        _%stx111760%_))))
               (if (let () (declare (not safe)) (##pair? _%hd111809111816%_))
                   (let ((_%hd111813111829%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd111809111816%_)))
                         (_%tl111814111831%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd111809111816%_))))
                     (let* ((_%id111834%_ _%hd111813111829%_)
                            (_%k111836%_ _%tl111814111831%_))
                       (_%K111812111826%_ _%k111836%_ _%id111834%_)))
                   (_%E111811111820%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init111803%_)))
                                         (declare (not safe))
                                         (__foldr1 cons '() __tmp113534)))))
                     _%stx111760%_)
                    _%r111771%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match113387113388%_
                                                       (lambda (_%hd111778111841%_
                                                                _%tl111779111843%_
                                                                _%hd111780111848%_
                                                                _%tl111781111850%_)
                                                         (let ((_%tmp111846%_
                                                                _%hd111778111841%_)
                                                               (_%expr111853%_
                                                                _%hd111780111848%_))
                                                           (_%E111776111799%_))))
                                                      (_%__match113381113382%_
                                                       (lambda (_%hd111778111841%_
                                                                _%tl111779111843%_)
                                                         (let ((_%tmp111846%_
                                                                _%hd111778111841%_))
                                                           (_%E111776111799%_)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##pair? _%hd111772111795%_))
                                                     (let ((_%tl111791111898%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd111772111795%_)))
                                                           (_%hd111790111896%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd111772111795%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd111790111896%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _%tl111791111898%_))
                       (let ((_%tl111793111903%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl111791111898%_)))
                             (_%hd111792111901%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl111791111898%_))))
                         (if (let ()
                               (declare (not safe))
                               (##null? _%tl111793111903%_))
                             (let ((_%expr111906%_ _%hd111792111901%_))
                               (_%K111789111893%_ _%expr111906%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%tl111793111903%_))
                                 (let ((_%tl111783111857%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl111793111903%_)))
                                       (_%hd111782111855%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl111793111903%_))))
                                   (let ((_%tmp111846%_ _%hd111790111896%_)
                                         (_%expr111853%_ _%hd111792111901%_)
                                         (_%len111860%_ _%hd111782111855%_)
                                         (_%init111862%_ _%tl111783111857%_))
                                     (_%K111777111838%_
                                      _%init111862%_
                                      _%len111860%_
                                      _%expr111853%_
                                      _%tmp111846%_)))
                                 (_%__match113387113388%_
                                  _%hd111790111896%_
                                  _%tl111791111898%_
                                  _%hd111792111901%_
                                  _%tl111793111903%_))))
                       (_%__match113381113382%_
                        _%hd111790111896%_
                        _%tl111791111898%_))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _%tl111791111898%_))
                       (let ((_%tl111788111883%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl111791111898%_)))
                             (_%hd111787111881%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl111791111898%_))))
                         (if (let ()
                               (declare (not safe))
                               (##null? _%tl111788111883%_))
                             (let ((_%id111879%_ _%hd111790111896%_)
                                   (_%expr111886%_ _%hd111787111881%_))
                               (_%K111784111871%_ _%expr111886%_ _%id111879%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%tl111788111883%_))
                                 (let ((_%tl111783111857%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl111788111883%_)))
                                       (_%hd111782111855%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl111788111883%_))))
                                   (let ((_%tmp111846%_ _%hd111790111896%_)
                                         (_%expr111853%_ _%hd111787111881%_)
                                         (_%len111860%_ _%hd111782111855%_)
                                         (_%init111862%_ _%tl111783111857%_))
                                     (_%K111777111838%_
                                      _%init111862%_
                                      _%len111860%_
                                      _%expr111853%_
                                      _%tmp111846%_)))
                                 (_%__match113387113388%_
                                  _%hd111790111896%_
                                  _%tl111791111898%_
                                  _%hd111787111881%_
                                  _%tl111788111883%_))))
                       (_%__match113381113382%_
                        _%hd111790111896%_
                        _%tl111791111898%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E111776111799%_)))))))
                                        (__tmp113532 (list _%body111768%_)))
                                    (declare (not safe))
                                    (__foldl1
                                     __tmp113533
                                     __tmp113532
                                     _%post111767%_))))
                             (declare (not safe))
                             (__foldr1 cons '() __tmp113531)))
                     _%stx111760%_))))
          (__compile-let-form
           _%stx111760%_
           _%compile-simple111762%_
           _%compile-values111763%_))))
    (define __compile-call%
      (lambda (_%stx111720%_)
        (let* ((_%$e111722%_ _%stx111720%_)
               (_%$E111724111733%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111722%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111722%_))
              (let* ((_%$tgt111725111736%_
                      (let () (declare (not safe)) (__AST-e _%$e111722%_)))
                     (_%$hd111726111739%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111725111736%_)))
                     (_%$tl111727111742%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111725111736%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111727111742%_))
                    (let* ((_%$tgt111728111746%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111727111742%_)))
                           (_%$hd111729111749%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111728111746%_)))
                           (_%$tl111730111752%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111728111746%_)))
                           (_%rator111756%_ _%$hd111729111749%_)
                           (_%rands111758%_ _%$tl111730111752%_))
                      (__SRC__%
                       (cons (__compile _%rator111756%_)
                             (map __compile _%rands111758%_))
                       _%stx111720%_))
                    (_%$E111724111733%_)))
              (_%$E111724111733%_)))))
    (define __compile-ref%
      (lambda (_%stx111682%_)
        (let* ((_%$e111684%_ _%stx111682%_)
               (_%$E111686111695%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111684%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111684%_))
              (let* ((_%$tgt111687111698%_
                      (let () (declare (not safe)) (__AST-e _%$e111684%_)))
                     (_%$hd111688111701%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111687111698%_)))
                     (_%$tl111689111704%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111687111698%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111689111704%_))
                    (let* ((_%$tgt111690111708%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111689111704%_)))
                           (_%$hd111691111711%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111690111708%_)))
                           (_%$tl111692111714%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111690111708%_)))
                           (_%id111718%_ _%$hd111691111711%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111692111714%_))
                                  '())
                          (__SRC__% _%id111718%_ _%stx111682%_)
                          (_%$E111686111695%_)))
                    (_%$E111686111695%_)))
              (_%$E111686111695%_)))))
    (define __compile-setq%
      (lambda (_%stx111629%_)
        (let* ((_%$e111631%_ _%stx111629%_)
               (_%$E111633111645%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111631%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111631%_))
              (let* ((_%$tgt111634111648%_
                      (let () (declare (not safe)) (__AST-e _%$e111631%_)))
                     (_%$hd111635111651%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111634111648%_)))
                     (_%$tl111636111654%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111634111648%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111636111654%_))
                    (let* ((_%$tgt111637111658%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111636111654%_)))
                           (_%$hd111638111661%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111637111658%_)))
                           (_%$tl111639111664%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111637111658%_)))
                           (_%id111668%_ _%$hd111638111661%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl111639111664%_))
                          (let* ((_%$tgt111640111670%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111639111664%_)))
                                 (_%$hd111641111673%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111640111670%_)))
                                 (_%$tl111642111676%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111640111670%_)))
                                 (_%expr111680%_ _%$hd111641111673%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl111642111676%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id111668%_
                                              _%stx111629%_)
                                             (cons (__compile _%expr111680%_)
                                                   '())))
                                 _%stx111629%_)
                                (_%$E111633111645%_)))
                          (_%$E111633111645%_)))
                    (_%$E111633111645%_)))
              (_%$E111633111645%_)))))
    (define __compile-if%
      (lambda (_%stx111561%_)
        (let* ((_%$e111563%_ _%stx111561%_)
               (_%$E111565111580%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111563%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111563%_))
              (let* ((_%$tgt111566111583%_
                      (let () (declare (not safe)) (__AST-e _%$e111563%_)))
                     (_%$hd111567111586%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111566111583%_)))
                     (_%$tl111568111589%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111566111583%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111568111589%_))
                    (let* ((_%$tgt111569111593%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111568111589%_)))
                           (_%$hd111570111596%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111569111593%_)))
                           (_%$tl111571111599%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111569111593%_)))
                           (_%p111603%_ _%$hd111570111596%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl111571111599%_))
                          (let* ((_%$tgt111572111605%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111571111599%_)))
                                 (_%$hd111573111608%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111572111605%_)))
                                 (_%$tl111574111611%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111572111605%_)))
                                 (_%t111615%_ _%$hd111573111608%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl111574111611%_))
                                (let* ((_%$tgt111575111617%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl111574111611%_)))
                                       (_%$hd111576111620%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt111575111617%_)))
                                       (_%$tl111577111623%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt111575111617%_)))
                                       (_%f111627%_ _%$hd111576111620%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl111577111623%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p111603%_)
                                                   (cons (__compile
                                                          _%t111615%_)
                                                         (cons (__compile
                                                                _%f111627%_)
                                                               '()))))
                                       _%stx111561%_)
                                      (_%$E111565111580%_)))
                                (_%$E111565111580%_)))
                          (_%$E111565111580%_)))
                    (_%$E111565111580%_)))
              (_%$E111565111580%_)))))
    (define __compile-quote%
      (lambda (_%stx111523%_)
        (let* ((_%$e111525%_ _%stx111523%_)
               (_%$E111527111536%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111525%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111525%_))
              (let* ((_%$tgt111528111539%_
                      (let () (declare (not safe)) (__AST-e _%$e111525%_)))
                     (_%$hd111529111542%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111528111539%_)))
                     (_%$tl111530111545%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111528111539%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111530111545%_))
                    (let* ((_%$tgt111531111549%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111530111545%_)))
                           (_%$hd111532111552%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111531111549%_)))
                           (_%$tl111533111555%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111531111549%_)))
                           (_%e111559%_ _%$hd111532111552%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111533111555%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e111559%_))
                                       '()))
                           _%stx111523%_)
                          (_%$E111527111536%_)))
                    (_%$E111527111536%_)))
              (_%$E111527111536%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx111485%_)
        (let* ((_%$e111487%_ _%stx111485%_)
               (_%$E111489111498%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111487%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111487%_))
              (let* ((_%$tgt111490111501%_
                      (let () (declare (not safe)) (__AST-e _%$e111487%_)))
                     (_%$hd111491111504%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111490111501%_)))
                     (_%$tl111492111507%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111490111501%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111492111507%_))
                    (let* ((_%$tgt111493111511%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111492111507%_)))
                           (_%$hd111494111514%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111493111511%_)))
                           (_%$tl111495111517%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111493111511%_)))
                           (_%e111521%_ _%$hd111494111514%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111495111517%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e111521%_ '()))
                           _%stx111485%_)
                          (_%$E111489111498%_)))
                    (_%$E111489111498%_)))
              (_%$E111489111498%_)))))
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

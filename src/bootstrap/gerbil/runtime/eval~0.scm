(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1713044315)
  (begin
    (define __syntax::t
      (let ((__tmp113438 (list)) (__tmp113437 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp113438
         '(e id)
         __tmp113437
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args113242%_
        (apply make-instance __syntax::t _%$args113242%_)))
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
      (let ((__tmp113440 (list __syntax::t))
            (__tmp113439 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp113440
         '()
         __tmp113439
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args113239%_
        (apply make-instance __core-form::t _%$args113239%_)))
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
      (let ((__tmp113442 (list __core-form::t))
            (__tmp113441 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp113442
         '()
         __tmp113441
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args113236%_
        (apply make-instance __core-expression::t _%$args113236%_)))
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
      (let ((__tmp113444 (list __core-form::t))
            (__tmp113443 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp113444
         '()
         __tmp113443
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args113233%_
        (apply make-instance __core-special-form::t _%$args113233%_)))
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
      (lambda (_%id113231%_)
        (let ((__tmp113445
               (let () (declare (not safe)) (__AST-e _%id113231%_))))
          (declare (not safe))
          (__hash-get __core __tmp113445))))
    (define __core-bound-id?__%
      (lambda (_%id113214%_ _%is?113215%_)
        (let ((_%$e113217%_ (__core-resolve _%id113214%_)))
          (if _%$e113217%_ (_%is?113215%_ _%$e113217%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id113224%_)
        (let ((_%is?113226%_ true))
          (__core-bound-id?__% _%id113224%_ _%is?113226%_))))
    (define __core-bound-id?
      (lambda _g113447_
        (let ((_g113446_ (let () (declare (not safe)) (##length _g113447_))))
          (cond ((let () (declare (not safe)) (##fx= _g113446_ 1))
                 (apply __core-bound-id?__0 _g113447_))
                ((let () (declare (not safe)) (##fx= _g113446_ 2))
                 (apply __core-bound-id?__% _g113447_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g113447_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id113197%_ _%e113198%_ _%make113199%_)
        (let ((__tmp113448
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e113198%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e113198%_
                   (_%make113199%_ _%e113198%_ _%id113197%_))))
          (declare (not safe))
          (__hash-put! __core _%id113197%_ __tmp113448))))
    (define __core-bind-syntax!__0
      (lambda (_%id113204%_ _%e113205%_)
        (let ((_%make113207%_ make-__syntax))
          (__core-bind-syntax!__% _%id113204%_ _%e113205%_ _%make113207%_))))
    (define __core-bind-syntax!
      (lambda _g113450_
        (let ((_g113449_ (let () (declare (not safe)) (##length _g113450_))))
          (cond ((let () (declare (not safe)) (##fx= _g113449_ 2))
                 (apply __core-bind-syntax!__0 _g113450_))
                ((let () (declare (not safe)) (##fx= _g113449_ 3))
                 (apply __core-bind-syntax!__% _g113450_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g113450_))))))
    (define __SRC__%
      (lambda (_%e113177%_ _%src-stx113178%_)
        (if (or (pair? _%e113177%_) (symbol? _%e113177%_))
            (let ((__tmp113451
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx113178%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx113178%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e113177%_ __tmp113451))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e113177%_ 'gerbil#AST::t))
                (let ((__tmp113453
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e113177%_ '1 '#f '#f)))
                      (__tmp113452
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e113177%_)))))
                  (declare (not safe))
                  (##make-source __tmp113453 __tmp113452))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e113177%_))))))
    (define __SRC__0
      (lambda (_%e113189%_)
        (let ((_%src-stx113191%_ '#f))
          (__SRC__% _%e113189%_ _%src-stx113191%_))))
    (define __SRC
      (lambda _g113455_
        (let ((_g113454_ (let () (declare (not safe)) (##length _g113455_))))
          (cond ((let () (declare (not safe)) (##fx= _g113454_ 1))
                 (apply __SRC__0 _g113455_))
                ((let () (declare (not safe)) (##fx= _g113454_ 2))
                 (apply __SRC__% _g113455_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g113455_))))))
    (define __locat
      (lambda (_%loc113174%_)
        (if (let () (declare (not safe)) (##locat? _%loc113174%_))
            _%loc113174%_
            '#f)))
    (define __check-values
      (lambda (_%obj113169%_ _%k113170%_)
        (let ((_%count113172%_
               (if (let () (declare (not safe)) (##values? _%obj113169%_))
                   (let ()
                     (declare (not safe))
                     (##vector-length _%obj113169%_))
                   '1)))
          (if (fx= _%count113172%_ _%k113170%_)
              '#!void
              (let ((__tmp113457
                     (if (fx< _%count113172%_ _%k113170%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp113456
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj113169%_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _%obj113169%_))
                         _%obj113169%_)))
                (declare (not safe))
                (error __tmp113457 __tmp113456 _%k113170%_))))))
    (define __compile
      (lambda (_%stx113138%_)
        (let* ((_%$e113140%_ _%stx113138%_)
               (_%$E113142113148%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113140%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113140%_))
              (let* ((_%$tgt113143113151%_
                      (let () (declare (not safe)) (__AST-e _%$e113140%_)))
                     (_%$hd113144113154%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt113143113151%_)))
                     (_%$tl113145113157%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt113143113151%_)))
                     (_%form113161%_ _%$hd113144113154%_)
                     (_%$e113163%_ (__core-resolve _%form113161%_)))
                (if _%$e113163%_
                    ((lambda (_%bind113166%_)
                       ((##structure-ref _%bind113166%_ '1 __syntax::t '#f)
                        _%stx113138%_))
                     _%$e113163%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx113138%_
                       _%form113161%_))))
              (_%$E113142113148%_)))))
    (define __compile-error__%
      (lambda (_%stx113125%_ _%detail113126%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx113125%_
           _%detail113126%_))))
    (define __compile-error__0
      (lambda (_%stx113131%_)
        (let ((_%detail113133%_ '#f))
          (__compile-error__% _%stx113131%_ _%detail113133%_))))
    (define __compile-error
      (lambda _g113459_
        (let ((_g113458_ (let () (declare (not safe)) (##length _g113459_))))
          (cond ((let () (declare (not safe)) (##fx= _g113458_ 1))
                 (apply __compile-error__0 _g113459_))
                ((let () (declare (not safe)) (##fx= _g113458_ 2))
                 (apply __compile-error__% _g113459_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g113459_))))))
    (define __compile-ignore%
      (lambda (_%stx113122%_) (__SRC__% ''#!void _%stx113122%_)))
    (define __compile-begin%
      (lambda (_%stx113097%_)
        (let* ((_%$e113099%_ _%stx113097%_)
               (_%$E113101113107%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113099%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113099%_))
              (let* ((_%$tgt113102113110%_
                      (let () (declare (not safe)) (__AST-e _%$e113099%_)))
                     (_%$hd113103113113%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt113102113110%_)))
                     (_%$tl113104113116%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt113102113110%_)))
                     (_%body113120%_ _%$tl113104113116%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body113120%_))
                 _%stx113097%_))
              (_%$E113101113107%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx113072%_)
        (let* ((_%$e113074%_ _%stx113072%_)
               (_%$E113076113082%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113074%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113074%_))
              (let* ((_%$tgt113077113085%_
                      (let () (declare (not safe)) (__AST-e _%$e113074%_)))
                     (_%$hd113078113088%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt113077113085%_)))
                     (_%$tl113079113091%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt113077113085%_)))
                     (_%body113095%_ _%$tl113079113091%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body113095%_)))
                 _%stx113072%_))
              (_%$E113076113082%_)))))
    (define __compile-import%
      (lambda (_%stx113047%_)
        (let* ((_%$e113049%_ _%stx113047%_)
               (_%$E113051113057%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113049%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113049%_))
              (let* ((_%$tgt113052113060%_
                      (let () (declare (not safe)) (__AST-e _%$e113049%_)))
                     (_%$hd113053113063%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt113052113060%_)))
                     (_%$tl113054113066%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt113052113060%_)))
                     (_%body113070%_ _%$tl113054113066%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body113070%_ '())) '()))
                 _%stx113047%_))
              (_%$E113051113057%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx112994%_)
        (let* ((_%$e112996%_ _%stx112994%_)
               (_%$E112998113010%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e112996%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e112996%_))
              (let* ((_%$tgt112999113013%_
                      (let () (declare (not safe)) (__AST-e _%$e112996%_)))
                     (_%$hd113000113016%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt112999113013%_)))
                     (_%$tl113001113019%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt112999113013%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl113001113019%_))
                    (let* ((_%$tgt113002113023%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl113001113019%_)))
                           (_%$hd113003113026%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt113002113023%_)))
                           (_%$tl113004113029%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt113002113023%_)))
                           (_%ann113033%_ _%$hd113003113026%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl113004113029%_))
                          (let* ((_%$tgt113005113035%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl113004113029%_)))
                                 (_%$hd113006113038%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt113005113035%_)))
                                 (_%$tl113007113041%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt113005113035%_)))
                                 (_%expr113045%_ _%$hd113006113038%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl113007113041%_))
                                        '())
                                (__compile _%expr113045%_)
                                (_%$E112998113010%_)))
                          (_%$E112998113010%_)))
                    (_%$E112998113010%_)))
              (_%$E112998113010%_)))))
    (define __compile-define-values%
      (lambda (_%stx112885%_)
        (let* ((_%$e112887%_ _%stx112885%_)
               (_%$E112889112901%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e112887%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e112887%_))
              (let* ((_%$tgt112890112904%_
                      (let () (declare (not safe)) (__AST-e _%$e112887%_)))
                     (_%$hd112891112907%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt112890112904%_)))
                     (_%$tl112892112910%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt112890112904%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl112892112910%_))
                    (let* ((_%$tgt112893112914%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl112892112910%_)))
                           (_%$hd112894112917%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt112893112914%_)))
                           (_%$tl112895112920%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt112893112914%_)))
                           (_%hd112924%_ _%$hd112894112917%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl112895112920%_))
                          (let* ((_%$tgt112896112926%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl112895112920%_)))
                                 (_%$hd112897112929%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112896112926%_)))
                                 (_%$tl112898112932%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112896112926%_)))
                                 (_%expr112936%_ _%$hd112897112929%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl112898112932%_))
                                        '())
                                (let* ((_%$e112938%_ _%hd112924%_)
                                       (_%$E112940112981%_
                                        (lambda ()
                                          (let ((_%$E112941112966%_
                                                 (lambda ()
                                                   (let* ((_%$E112942112953%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e112938%_))))
                  (_%ids112956%_ _%hd112924%_)
                  (_%len112958%_ (length _%ids112956%_))
                  (_%tmp112960%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp112960%_
                                       (cons (__compile _%expr112936%_) '())))
                           _%stx112885%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp112960%_
                                             (cons _%len112958%_ '())))
                                 _%stx112885%_)
                                (let ((__tmp113460
                                       (let ((__tmp113462
                                              (lambda (_%id112963%_
                                                       _%k112964%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id112963%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id112963%_)
                         (cons (cons '##vector-ref
                                     (cons _%tmp112960%_
                                           (cons _%k112964%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx112885%_)
                                                    '#f)))
                                             (__tmp113461
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len112958%_))))
                                         (declare (not safe))
                                         (__filter-map2
                                          __tmp113462
                                          _%ids112956%_
                                          __tmp113461))))
                                  (declare (not safe))
                                  (__foldr1 cons '() __tmp113460)))))
              _%stx112885%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e112938%_))
                                                (let* ((_%$tgt112943112969%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e112938%_)))
                                                       (_%$hd112944112972%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt112943112969%_)))
                                                       (_%$tl112945112975%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt112943112969%_)))
                                                       (_%id112979%_
                                                        _%$hd112944112972%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl112945112975%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id112979%_)
                           (cons (__compile _%expr112936%_) '())))
               _%stx112885%_)
              (_%$E112941112966%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E112941112966%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e112938%_))
                                      (let* ((_%$tgt112946112984%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e112938%_)))
                                             (_%$hd112947112987%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt112946112984%_)))
                                             (_%$tl112948112990%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt112946112984%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd112947112987%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl112948112990%_))
                                                        '())
                                                (__compile _%expr112936%_)
                                                (_%$E112940112981%_))
                                            (_%$E112940112981%_)))
                                      (_%$E112940112981%_)))
                                (_%$E112889112901%_)))
                          (_%$E112889112901%_)))
                    (_%$E112889112901%_)))
              (_%$E112889112901%_)))))
    (define __compile-head-id
      (lambda (_%e112883%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e112883%_))
             _%e112883%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd112840%_)
        (let _%recur112842%_ ((_%rest112844%_ _%hd112840%_))
          (let* ((_%$e112846%_ _%rest112844%_)
                 (_%$E112848112866%_
                  (lambda ()
                    (let ((_%$E112849112863%_
                           (lambda ()
                             (let* ((_%$E112850112858%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e112846%_))))
                                    (_%tail112861%_ _%$e112846%_))
                               (__compile-head-id _%tail112861%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e112846%_))
                                  '())
                          '()
                          (_%$E112849112863%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e112846%_))
                (let* ((_%$tgt112851112869%_
                        (let () (declare (not safe)) (__AST-e _%$e112846%_)))
                       (_%$hd112852112872%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt112851112869%_)))
                       (_%$tl112853112875%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt112851112869%_)))
                       (_%hd112879%_ _%$hd112852112872%_)
                       (_%rest112881%_ _%$tl112853112875%_))
                  (cons (__compile-head-id _%hd112879%_)
                        (_%recur112842%_ _%rest112881%_)))
                (_%$E112848112866%_))))))
    (define __compile-lambda%
      (lambda (_%stx112787%_)
        (let* ((_%$e112789%_ _%stx112787%_)
               (_%$E112791112803%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e112789%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e112789%_))
              (let* ((_%$tgt112792112806%_
                      (let () (declare (not safe)) (__AST-e _%$e112789%_)))
                     (_%$hd112793112809%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt112792112806%_)))
                     (_%$tl112794112812%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt112792112806%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl112794112812%_))
                    (let* ((_%$tgt112795112816%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl112794112812%_)))
                           (_%$hd112796112819%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt112795112816%_)))
                           (_%$tl112797112822%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt112795112816%_)))
                           (_%hd112826%_ _%$hd112796112819%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl112797112822%_))
                          (let* ((_%$tgt112798112828%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl112797112822%_)))
                                 (_%$hd112799112831%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112798112828%_)))
                                 (_%$tl112800112834%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112798112828%_)))
                                 (_%body112838%_ _%$hd112799112831%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl112800112834%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd112826%_)
                                             (cons (__compile _%body112838%_)
                                                   '())))
                                 _%stx112787%_)
                                (_%$E112791112803%_)))
                          (_%$E112791112803%_)))
                    (_%$E112791112803%_)))
              (_%$E112791112803%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx112579%_)
        (letrec ((_%variadic?112581%_
                  (lambda (_%hd112752%_)
                    (let* ((_%$e112754%_ _%hd112752%_)
                           (_%$E112756112772%_
                            (lambda ()
                              (let ((_%$E112757112769%_
                                     (lambda ()
                                       (let ((_%$E112758112766%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e112754%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e112754%_))
                                            '())
                                    '#f
                                    (_%$E112757112769%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e112754%_))
                          (let* ((_%$tgt112759112775%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e112754%_)))
                                 (_%$hd112760112778%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112759112775%_)))
                                 (_%$tl112761112781%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112759112775%_)))
                                 (_%rest112785%_ _%$tl112761112781%_))
                            (_%variadic?112581%_ _%rest112785%_))
                          (_%$E112756112772%_)))))
                 (_%arity112582%_
                  (lambda (_%hd112717%_)
                    (let _%lp112719%_ ((_%rest112721%_ _%hd112717%_)
                                       (_%k112722%_ '0))
                      (let* ((_%$e112724%_ _%rest112721%_)
                             (_%$E112726112737%_
                              (lambda ()
                                (let ((_%$E112727112734%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e112724%_)))))
                                  _%k112722%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e112724%_))
                            (let* ((_%$tgt112728112740%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e112724%_)))
                                   (_%$hd112729112743%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt112728112740%_)))
                                   (_%$tl112730112746%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt112728112740%_)))
                                   (_%rest112750%_ _%$tl112730112746%_))
                              (_%lp112719%_
                               _%rest112750%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%k112722%_ '1))))
                            (_%$E112726112737%_))))))
                 (_%generate112583%_
                  (lambda (_%rest112644%_ _%args112645%_ _%len112646%_)
                    (let* ((_%$e112648%_ _%rest112644%_)
                           (_%$E112650112661%_
                            (lambda ()
                              (let ((_%$E112651112658%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e112648%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args112645%_ '())))
                                 _%stx112579%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e112648%_))
                          (let* ((_%$tgt112652112664%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e112648%_)))
                                 (_%$hd112653112667%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112652112664%_)))
                                 (_%$tl112654112670%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112652112664%_)))
                                 (_%clause112674%_ _%$hd112653112667%_)
                                 (_%rest112676%_ _%$tl112654112670%_)
                                 (_%$e112678%_ _%clause112674%_)
                                 (_%$E112680112689%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e112678%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e112678%_))
                                (let* ((_%$tgt112681112692%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e112678%_)))
                                       (_%$hd112682112695%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt112681112692%_)))
                                       (_%$tl112683112698%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt112681112692%_)))
                                       (_%hd112702%_ _%$hd112682112695%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl112683112698%_))
                                      (let* ((_%$tgt112684112704%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl112683112698%_)))
                                             (_%$hd112685112707%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt112684112704%_)))
                                             (_%$tl112686112710%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt112684112704%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl112686112710%_))
                                                    '())
                                            (let ((_%clen112714%_
                                                   (_%arity112582%_
                                                    _%hd112702%_))
                                                  (_%cmp112715%_
                                                   (if (_%variadic?112581%_
                                                        _%hd112702%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp112715%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len112646%_ (cons _%clen112714%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause112674%_))
                                      (cons _%args112645%_ '())))
                          _%stx112579%_)
                         (cons (_%generate112583%_
                                _%rest112676%_
                                _%args112645%_
                                _%len112646%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx112579%_))
                                            (_%$E112680112689%_)))
                                      (_%$E112680112689%_)))
                                (_%$E112680112689%_)))
                          (_%$E112650112661%_))))))
          (let* ((_%$e112585%_ _%stx112579%_)
                 (_%$E112587112619%_
                  (lambda ()
                    (let ((_%$E112588112601%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e112585%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e112585%_))
                          (let* ((_%$tgt112589112604%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e112585%_)))
                                 (_%$hd112590112607%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112589112604%_)))
                                 (_%$tl112591112610%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112589112604%_)))
                                 (_%clauses112614%_ _%$tl112591112610%_))
                            (let ((_%args112616%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx112579%_))
                                  (_%len112617%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx112579%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args112616%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len112617%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args112616%_ '()))
                                         _%stx112579%_)
                                        '()))
                            '())
                      (cons (_%generate112583%_
                             _%clauses112614%_
                             _%args112616%_
                             _%len112617%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx112579%_)
                                                 '())))
                               _%stx112579%_)))
                          (_%$E112588112601%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e112585%_))
                (let* ((_%$tgt112592112622%_
                        (let () (declare (not safe)) (__AST-e _%$e112585%_)))
                       (_%$hd112593112625%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt112592112622%_)))
                       (_%$tl112594112628%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt112592112622%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl112594112628%_))
                      (let* ((_%$tgt112595112632%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl112594112628%_)))
                             (_%$hd112596112635%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt112595112632%_)))
                             (_%$tl112597112638%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt112595112632%_)))
                             (_%clause112642%_ _%$hd112596112635%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl112597112638%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause112642%_))
                            (_%$E112587112619%_)))
                      (_%$E112587112619%_)))
                (_%$E112587112619%_))))))
    (define __compile-let-form
      (lambda (_%stx112348%_ _%compile-simple112349%_ _%compile-values112350%_)
        (letrec ((_%simple-bind?112352%_
                  (lambda (_%hd112537%_)
                    (let* ((_%hd112538112548%_ _%hd112537%_)
                           (_%else112541112556%_ (lambda () '#f)))
                      (let ((_%K112544112569%_ (lambda (_%id112567%_) '#t))
                            (_%K112543112561%_ (lambda () '#t)))
                        (let ((_%try-match112540112564%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd112538112548%_ '#f))
                                     (_%K112543112561%_)
                                     (_%else112541112556%_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%hd112538112548%_))
                              (let ((_%tl112546112574%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd112538112548%_)))
                                    (_%hd112545112572%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd112538112548%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _%tl112546112574%_))
                                    (let ((_%id112577%_ _%hd112545112572%_))
                                      (_%K112544112569%_ _%id112577%_))
                                    (_%try-match112540112564%_)))
                              (_%try-match112540112564%_)))))))
                 (_%car-e112353%_
                  (lambda (_%hd112535%_)
                    (if (pair? _%hd112535%_)
                        (let () (declare (not safe)) (##car _%hd112535%_))
                        _%hd112535%_))))
          (let* ((_%$e112355%_ _%stx112348%_)
                 (_%$E112357112500%_
                  (lambda ()
                    (let ((_%$E112358112380%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e112355%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e112355%_))
                          (let* ((_%$tgt112359112383%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e112355%_)))
                                 (_%$hd112360112386%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112359112383%_)))
                                 (_%$tl112361112389%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112359112383%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl112361112389%_))
                                (let* ((_%$tgt112362112393%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl112361112389%_)))
                                       (_%$hd112363112396%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt112362112393%_)))
                                       (_%$tl112364112399%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt112362112393%_)))
                                       (_%hd112403%_ _%$hd112363112396%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl112364112399%_))
                                      (let* ((_%$tgt112365112405%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl112364112399%_)))
                                             (_%$hd112366112408%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt112365112405%_)))
                                             (_%$tl112367112411%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt112365112405%_)))
                                             (_%body112415%_
                                              _%$hd112366112408%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl112367112411%_))
                                                    '())
                                            (let* ((_%hd-ids112455%_
                                                    (map (lambda (_%bind112417%_)
                                                           (let* ((_%$e112419%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind112417%_)
                          (_%$E112421112430%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e112419%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e112419%_))
                         (let* ((_%$tgt112422112433%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e112419%_)))
                                (_%$hd112423112436%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt112422112433%_)))
                                (_%$tl112424112439%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt112422112433%_)))
                                (_%ids112443%_ _%$hd112423112436%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl112424112439%_))
                               (let* ((_%$tgt112425112445%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl112424112439%_)))
                                      (_%$hd112426112448%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt112425112445%_)))
                                      (_%$tl112427112451%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt112425112445%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl112427112451%_))
                                             '())
                                     _%ids112443%_
                                     (_%$E112421112430%_)))
                               (_%$E112421112430%_)))
                         (_%$E112421112430%_))))
                 _%hd112403%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs112495%_
                                                    (map (lambda (_%bind112457%_)
                                                           (let* ((_%$e112459%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind112457%_)
                          (_%$E112461112470%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e112459%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e112459%_))
                         (let* ((_%$tgt112462112473%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e112459%_)))
                                (_%$hd112463112476%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt112462112473%_)))
                                (_%$tl112464112479%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt112462112473%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl112464112479%_))
                               (let* ((_%$tgt112465112483%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl112464112479%_)))
                                      (_%$hd112466112486%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt112465112483%_)))
                                      (_%$tl112467112489%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt112465112483%_)))
                                      (_%expr112493%_ _%$hd112466112486%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl112467112489%_))
                                             '())
                                     (__compile _%expr112493%_)
                                     (_%$E112461112470%_)))
                               (_%$E112461112470%_)))
                         (_%$E112461112470%_))))
                 _%hd112403%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body112497%_
                                                    (__compile
                                                     _%body112415%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__andmap1
                                                     _%simple-bind?112352%_
                                                     _%hd-ids112455%_))
                                                  (_%compile-simple112349%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e112353%_
                                                            _%hd-ids112455%_))
                                                   _%exprs112495%_
                                                   _%body112497%_)
                                                  (_%compile-values112350%_
                                                   _%hd-ids112455%_
                                                   _%exprs112495%_
                                                   _%body112497%_)))
                                            (_%$E112358112380%_)))
                                      (_%$E112358112380%_)))
                                (_%$E112358112380%_)))
                          (_%$E112358112380%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e112355%_))
                (let* ((_%$tgt112368112503%_
                        (let () (declare (not safe)) (__AST-e _%$e112355%_)))
                       (_%$hd112369112506%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt112368112503%_)))
                       (_%$tl112370112509%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt112368112503%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl112370112509%_))
                      (let* ((_%$tgt112371112513%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl112370112509%_)))
                             (_%$hd112372112516%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt112371112513%_)))
                             (_%$tl112373112519%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt112371112513%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd112372112516%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl112373112519%_))
                                (let* ((_%$tgt112374112523%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl112373112519%_)))
                                       (_%$hd112375112526%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt112374112523%_)))
                                       (_%$tl112376112529%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt112374112523%_)))
                                       (_%body112533%_ _%$hd112375112526%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl112376112529%_))
                                              '())
                                      (__compile _%body112533%_)
                                      (_%$E112357112500%_)))
                                (_%$E112357112500%_))
                            (_%$E112357112500%_)))
                      (_%$E112357112500%_)))
                (_%$E112357112500%_))))))
    (define __compile-let-values%
      (lambda (_%stx112160%_)
        (letrec ((_%compile-simple112162%_
                  (lambda (_%hd-ids112344%_ _%exprs112345%_ _%body112346%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp113463
                                        (map __compile-head-id
                                             _%hd-ids112344%_)))
                                   (declare (not safe))
                                   (##map list __tmp113463 _%exprs112345%_))
                                 (cons _%body112346%_ '())))
                     _%stx112160%_)))
                 (_%compile-values112163%_
                  (lambda (_%hd-ids112259%_ _%exprs112260%_ _%body112261%_)
                    (let _%lp112263%_ ((_%rest112265%_ _%hd-ids112259%_)
                                       (_%exprs112266%_ _%exprs112260%_)
                                       (_%bind112267%_ '())
                                       (_%post112268%_ '()))
                      (let* ((_%rest112269112283%_ _%rest112265%_)
                             (_%else112272112291%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind112267%_)
                                             (cons (_%compile-post112164%_
                                                    _%post112268%_
                                                    _%body112261%_)
                                                   '())))
                                 _%stx112160%_))))
                        (let ((_%K112277112327%_
                               (lambda (_%rest112324%_ _%id112325%_)
                                 (_%lp112263%_
                                  _%rest112324%_
                                  (cdr _%exprs112266%_)
                                  (cons (cons (__compile-head-id _%id112325%_)
                                              (cons (car _%exprs112266%_) '()))
                                        _%bind112267%_)
                                  _%post112268%_)))
                              (_%K112274112309%_
                               (lambda (_%rest112295%_ _%hd112296%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd112296%_))
                                     (_%lp112263%_
                                      _%rest112295%_
                                      (cdr _%exprs112266%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd112296%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs112266%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind112267%_)
                                      _%post112268%_)
                                     (if (list? _%hd112296%_)
                                         (let* ((_%len112300%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd112296%_)))
                                                (_%tmp112302%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp112263%_
                                            _%rest112295%_
                                            (cdr _%exprs112266%_)
                                            (cons (cons _%tmp112302%_
                                                        (cons (car _%exprs112266%_)
                                                              '()))
                                                  _%bind112267%_)
                                            (cons (cons _%tmp112302%_
                                                        (cons _%len112300%_
                                                              (let ((__tmp113465
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id112305%_ _%k112306%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id112305%_))
                                   (cons (__SRC__0 _%id112305%_) _%k112306%_)
                                   '#f)))
                            (__tmp113464
                             (let ()
                               (declare (not safe))
                               (##iota _%len112300%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp113465 _%hd112296%_ __tmp113464))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post112268%_)))
                                         (__compile-error__%
                                          _%stx112160%_
                                          _%hd112296%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest112269112283%_))
                              (let ((_%tl112279112332%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest112269112283%_)))
                                    (_%hd112278112330%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest112269112283%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd112278112330%_))
                                    (let ((_%tl112281112337%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd112278112330%_)))
                                          (_%hd112280112335%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd112278112330%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl112281112337%_))
                                          (let ((_%id112340%_
                                                 _%hd112280112335%_)
                                                (_%rest112342%_
                                                 _%tl112279112332%_))
                                            (_%K112277112327%_
                                             _%rest112342%_
                                             _%id112340%_))
                                          (let ((_%hd112317%_
                                                 _%hd112278112330%_)
                                                (_%rest112319%_
                                                 _%tl112279112332%_))
                                            (_%K112274112309%_
                                             _%rest112319%_
                                             _%hd112317%_))))
                                    (let ((_%hd112317%_ _%hd112278112330%_)
                                          (_%rest112319%_ _%tl112279112332%_))
                                      (_%K112274112309%_
                                       _%rest112319%_
                                       _%hd112317%_))))
                              (_%else112272112291%_)))))))
                 (_%compile-post112164%_
                  (lambda (_%post112166%_ _%body112167%_)
                    (let _%lp112169%_ ((_%rest112171%_ _%post112166%_)
                                       (_%check112172%_ '())
                                       (_%bind112173%_ '()))
                      (let* ((_%rest112174112186%_ _%rest112171%_)
                             (_%else112176112194%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp113466
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind112173%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body112167%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx112160%_)
                                                    '())))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp113466
                                          _%check112172%_)))
                                 _%stx112160%_)))
                             (_%K112178112233%_
                              (lambda (_%rest112197%_
                                       _%init112198%_
                                       _%len112199%_
                                       _%tmp112200%_)
                                (_%lp112169%_
                                 _%rest112197%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp112200%_
                                                    (cons _%len112199%_ '())))
                                        _%stx112160%_)
                                       _%check112172%_)
                                 (let ((__tmp113467
                                        (lambda (_%hd112202%_ _%r112203%_)
                                          (let* ((_%hd112204112211%_
                                                  _%hd112202%_)
                                                 (_%E112206112215%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd112204112211%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K112207112221%_
                                                  (lambda (_%k112218%_
                                                           _%id112219%_)
                                                    (cons (cons _%id112219%_
                                                                (cons (cons '##vector-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp112200%_
                                          (cons _%k112218%_ '())))
                              '()))
                  _%r112203%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd112204112211%_))
                                                (let ((_%hd112208112224%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd112204112211%_)))
                                                      (_%tl112209112226%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd112204112211%_))))
                                                  (let* ((_%id112229%_
                                                          _%hd112208112224%_)
                                                         (_%k112231%_
                                                          _%tl112209112226%_))
                                                    (_%K112207112221%_
                                                     _%k112231%_
                                                     _%id112229%_)))
                                                (_%E112206112215%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp113467
                                    _%bind112173%_
                                    _%init112198%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest112174112186%_))
                            (let ((_%hd112179112236%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest112174112186%_)))
                                  (_%tl112180112238%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest112174112186%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd112179112236%_))
                                  (let ((_%hd112181112241%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd112179112236%_)))
                                        (_%tl112182112243%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd112179112236%_))))
                                    (let ((_%tmp112246%_ _%hd112181112241%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl112182112243%_))
                                          (let ((_%hd112183112248%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl112182112243%_)))
                                                (_%tl112184112250%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl112182112243%_))))
                                            (let* ((_%len112253%_
                                                    _%hd112183112248%_)
                                                   (_%init112255%_
                                                    _%tl112184112250%_)
                                                   (_%rest112257%_
                                                    _%tl112180112238%_))
                                              (_%K112178112233%_
                                               _%rest112257%_
                                               _%init112255%_
                                               _%len112253%_
                                               _%tmp112246%_)))
                                          (_%else112176112194%_))))
                                  (_%else112176112194%_)))
                            (_%else112176112194%_)))))))
          (__compile-let-form
           _%stx112160%_
           _%compile-simple112162%_
           _%compile-values112163%_))))
    (define __compile-letrec-values%
      (lambda (_%stx111957%_)
        (letrec ((_%compile-simple111959%_
                  (lambda (_%hd-ids112156%_ _%exprs112157%_ _%body112158%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp113468
                                        (map __compile-head-id
                                             _%hd-ids112156%_)))
                                   (declare (not safe))
                                   (##map list __tmp113468 _%exprs112157%_))
                                 (cons _%body112158%_ '())))
                     _%stx111957%_)))
                 (_%compile-values111960%_
                  (lambda (_%hd-ids112067%_ _%exprs112068%_ _%body112069%_)
                    (let _%lp112071%_ ((_%rest112073%_ _%hd-ids112067%_)
                                       (_%exprs112074%_ _%exprs112068%_)
                                       (_%pre112075%_ '())
                                       (_%bind112076%_ '())
                                       (_%post112077%_ '()))
                      (let* ((_%rest112078112092%_ _%rest112073%_)
                             (_%else112081112100%_
                              (lambda ()
                                (_%compile-inner111961%_
                                 _%pre112075%_
                                 _%bind112076%_
                                 _%post112077%_
                                 _%body112069%_))))
                        (let ((_%K112086112139%_
                               (lambda (_%rest112136%_ _%id112137%_)
                                 (_%lp112071%_
                                  _%rest112136%_
                                  (cdr _%exprs112074%_)
                                  _%pre112075%_
                                  (cons (cons (__compile-head-id _%id112137%_)
                                              (cons (car _%exprs112074%_) '()))
                                        _%bind112076%_)
                                  _%post112077%_)))
                              (_%K112083112121%_
                               (lambda (_%rest112104%_ _%hd112105%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd112105%_))
                                     (_%lp112071%_
                                      _%rest112104%_
                                      (cdr _%exprs112074%_)
                                      _%pre112075%_
                                      (cons (cons (__compile-head-id
                                                   _%hd112105%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs112074%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind112076%_)
                                      _%post112077%_)
                                     (if (list? _%hd112105%_)
                                         (let* ((_%len112109%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd112105%_)))
                                                (_%tmp112111%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp112071%_
                                            _%rest112104%_
                                            (cdr _%exprs112074%_)
                                            (let ((__tmp113469
                                                   (lambda (_%id112114%_
                                                            _%r112115%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id112114%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id112114%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r112115%_)
                 _%r112115%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (__foldl1
                                               __tmp113469
                                               _%pre112075%_
                                               _%hd112105%_))
                                            (cons (cons _%tmp112111%_
                                                        (cons (car _%exprs112074%_)
                                                              '()))
                                                  _%bind112076%_)
                                            (cons (cons _%tmp112111%_
                                                        (cons _%len112109%_
                                                              (let ((__tmp113471
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id112117%_ _%k112118%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id112117%_))
                                   (cons (__SRC__0 _%id112117%_) _%k112118%_)
                                   '#f)))
                            (__tmp113470
                             (let ()
                               (declare (not safe))
                               (##iota _%len112109%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp113471 _%hd112105%_ __tmp113470))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post112077%_)))
                                         (__compile-error__%
                                          _%stx111957%_
                                          _%hd112105%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest112078112092%_))
                              (let ((_%tl112088112144%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest112078112092%_)))
                                    (_%hd112087112142%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest112078112092%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd112087112142%_))
                                    (let ((_%tl112090112149%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd112087112142%_)))
                                          (_%hd112089112147%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd112087112142%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl112090112149%_))
                                          (let ((_%id112152%_
                                                 _%hd112089112147%_)
                                                (_%rest112154%_
                                                 _%tl112088112144%_))
                                            (_%K112086112139%_
                                             _%rest112154%_
                                             _%id112152%_))
                                          (let ((_%hd112129%_
                                                 _%hd112087112142%_)
                                                (_%rest112131%_
                                                 _%tl112088112144%_))
                                            (_%K112083112121%_
                                             _%rest112131%_
                                             _%hd112129%_))))
                                    (let ((_%hd112129%_ _%hd112087112142%_)
                                          (_%rest112131%_ _%tl112088112144%_))
                                      (_%K112083112121%_
                                       _%rest112131%_
                                       _%hd112129%_))))
                              (_%else112081112100%_)))))))
                 (_%compile-inner111961%_
                  (lambda (_%pre112062%_
                           _%bind112063%_
                           _%post112064%_
                           _%body112065%_)
                    (if (null? _%pre112062%_)
                        (_%compile-bind111962%_
                         _%bind112063%_
                         _%post112064%_
                         _%body112065%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre112062%_)
                                     (cons (_%compile-bind111962%_
                                            _%bind112063%_
                                            _%post112064%_
                                            _%body112065%_)
                                           '())))
                         _%stx111957%_))))
                 (_%compile-bind111962%_
                  (lambda (_%bind112058%_ _%post112059%_ _%body112060%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind112058%_)
                                 (cons (_%compile-post111963%_
                                        _%post112059%_
                                        _%body112060%_)
                                       '())))
                     _%stx111957%_)))
                 (_%compile-post111963%_
                  (lambda (_%post111965%_ _%body111966%_)
                    (let _%lp111968%_ ((_%rest111970%_ _%post111965%_)
                                       (_%check111971%_ '())
                                       (_%bind111972%_ '()))
                      (let* ((_%rest111973111985%_ _%rest111970%_)
                             (_%else111975111993%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp113472
                                              (let ((__tmp113473
                                                     (cons _%body111966%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp113473
                                                 _%bind111972%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp113472
                                          _%check111971%_)))
                                 _%stx111957%_)))
                             (_%K111977112032%_
                              (lambda (_%rest111996%_
                                       _%init111997%_
                                       _%len111998%_
                                       _%tmp111999%_)
                                (_%lp111968%_
                                 _%rest111996%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp111999%_
                                                    (cons _%len111998%_ '())))
                                        _%stx111957%_)
                                       _%check111971%_)
                                 (let ((__tmp113474
                                        (lambda (_%hd112001%_ _%r112002%_)
                                          (let* ((_%hd112003112010%_
                                                  _%hd112001%_)
                                                 (_%E112005112014%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd112003112010%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K112006112020%_
                                                  (lambda (_%k112017%_
                                                           _%id112018%_)
                                                    (cons (cons 'set!
                                                                (cons _%id112018%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##vector-ref
                                          (cons _%tmp111999%_
                                                (cons _%k112017%_ '())))
                                    '())))
                  _%r112002%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd112003112010%_))
                                                (let ((_%hd112007112023%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd112003112010%_)))
                                                      (_%tl112008112025%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd112003112010%_))))
                                                  (let* ((_%id112028%_
                                                          _%hd112007112023%_)
                                                         (_%k112030%_
                                                          _%tl112008112025%_))
                                                    (_%K112006112020%_
                                                     _%k112030%_
                                                     _%id112028%_)))
                                                (_%E112005112014%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp113474
                                    _%bind111972%_
                                    _%init111997%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest111973111985%_))
                            (let ((_%hd111978112035%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest111973111985%_)))
                                  (_%tl111979112037%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest111973111985%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd111978112035%_))
                                  (let ((_%hd111980112040%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd111978112035%_)))
                                        (_%tl111981112042%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd111978112035%_))))
                                    (let ((_%tmp112045%_ _%hd111980112040%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl111981112042%_))
                                          (let ((_%hd111982112047%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl111981112042%_)))
                                                (_%tl111983112049%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl111981112042%_))))
                                            (let* ((_%len112052%_
                                                    _%hd111982112047%_)
                                                   (_%init112054%_
                                                    _%tl111983112049%_)
                                                   (_%rest112056%_
                                                    _%tl111979112037%_))
                                              (_%K111977112032%_
                                               _%rest112056%_
                                               _%init112054%_
                                               _%len112052%_
                                               _%tmp112045%_)))
                                          (_%else111975111993%_))))
                                  (_%else111975111993%_)))
                            (_%else111975111993%_)))))))
          (__compile-let-form
           _%stx111957%_
           _%compile-simple111959%_
           _%compile-values111960%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx111708%_)
        (letrec ((_%compile-simple111710%_
                  (lambda (_%hd-ids111953%_ _%exprs111954%_ _%body111955%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp113475
                                        (map __compile-head-id
                                             _%hd-ids111953%_)))
                                   (declare (not safe))
                                   (##map list __tmp113475 _%exprs111954%_))
                                 (cons _%body111955%_ '())))
                     _%stx111708%_)))
                 (_%compile-values111711%_
                  (lambda (_%hd-ids111860%_ _%exprs111861%_ _%body111862%_)
                    (let _%lp111864%_ ((_%rest111866%_ _%hd-ids111860%_)
                                       (_%exprs111867%_ _%exprs111861%_)
                                       (_%bind111868%_ '())
                                       (_%post111869%_ '()))
                      (let* ((_%rest111870111884%_ _%rest111866%_)
                             (_%else111873111892%_
                              (lambda ()
                                (_%compile-bind111712%_
                                 _%bind111868%_
                                 _%post111869%_
                                 _%body111862%_))))
                        (let ((_%K111878111936%_
                               (lambda (_%rest111931%_ _%hd111932%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd111932%_))
                                     (let ((_%id111934%_
                                            (__SRC__0 _%hd111932%_)))
                                       (_%lp111864%_
                                        _%rest111931%_
                                        (cdr _%exprs111867%_)
                                        (cons (cons _%id111934%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind111868%_)
                                        (cons (cons _%id111934%_
                                                    (cons (car _%exprs111867%_)
                                                          '()))
                                              _%post111869%_)))
                                     (_%lp111864%_
                                      _%rest111931%_
                                      (cdr _%exprs111867%_)
                                      _%bind111868%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs111867%_)
                                                        '()))
                                            _%post111869%_)))))
                              (_%K111875111916%_
                               (lambda (_%rest111896%_ _%hd111897%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd111897%_))
                                     (let ((_%id111900%_
                                            (__SRC__0 _%hd111897%_)))
                                       (_%lp111864%_
                                        _%rest111896%_
                                        (cdr _%exprs111867%_)
                                        (cons (cons _%id111900%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind111868%_)
                                        (cons (cons _%id111900%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs111867%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post111869%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd111897%_))
                                         (if (list? _%hd111897%_)
                                             (let* ((_%len111904%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd111897%_)))
                                                    (_%tmp111906%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp111864%_
                                                _%rest111896%_
                                                (cdr _%exprs111867%_)
                                                (let ((__tmp113476
                                                       (lambda (_%id111909%_
                                                                _%r111910%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id111909%_))
                     (cons (cons (__SRC__0 _%id111909%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r111910%_)
                     _%r111910%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldl1
                                                   __tmp113476
                                                   _%bind111868%_
                                                   _%hd111897%_))
                                                (cons (cons _%tmp111906%_
                                                            (cons (car _%exprs111867%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len111904%_
                                (let ((__tmp113478
                                       (lambda (_%id111912%_ _%k111913%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id111912%_))
                                             (cons (__SRC__0 _%id111912%_)
                                                   _%k111913%_)
                                             '#f)))
                                      (__tmp113477
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len111904%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp113478
                                   _%hd111897%_
                                   __tmp113477)))))
              _%post111869%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx111708%_
                                              _%hd111897%_))
                                         (_%lp111864%_
                                          _%rest111896%_
                                          (cdr _%exprs111867%_)
                                          _%bind111868%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs111867%_)
                                                            '()))
                                                _%post111869%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest111870111884%_))
                              (let ((_%tl111880111941%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest111870111884%_)))
                                    (_%hd111879111939%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest111870111884%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd111879111939%_))
                                    (let ((_%tl111882111946%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd111879111939%_)))
                                          (_%hd111881111944%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd111879111939%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl111882111946%_))
                                          (let ((_%hd111949%_
                                                 _%hd111881111944%_)
                                                (_%rest111951%_
                                                 _%tl111880111941%_))
                                            (_%K111878111936%_
                                             _%rest111951%_
                                             _%hd111949%_))
                                          (let ((_%hd111924%_
                                                 _%hd111879111939%_)
                                                (_%rest111926%_
                                                 _%tl111880111941%_))
                                            (_%K111875111916%_
                                             _%rest111926%_
                                             _%hd111924%_))))
                                    (let ((_%hd111924%_ _%hd111879111939%_)
                                          (_%rest111926%_ _%tl111880111941%_))
                                      (_%K111875111916%_
                                       _%rest111926%_
                                       _%hd111924%_))))
                              (_%else111873111892%_)))))))
                 (_%compile-bind111712%_
                  (lambda (_%bind111856%_ _%post111857%_ _%body111858%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind111856%_)
                                 (cons (_%compile-post111713%_
                                        _%post111857%_
                                        _%body111858%_)
                                       '())))
                     _%stx111708%_)))
                 (_%compile-post111713%_
                  (lambda (_%post111715%_ _%body111716%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp113479
                                  (let ((__tmp113481
                                         (lambda (_%hd111718%_ _%r111719%_)
                                           (let* ((_%hd111720111743%_
                                                   _%hd111718%_)
                                                  (_%E111724111747%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd111720111743%_
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
                                             (let ((_%K111737111841%_
                                                    (lambda (_%expr111839%_)
                                                      (cons _%expr111839%_
                                                            _%r111719%_)))
                                                   (_%K111732111819%_
                                                    (lambda (_%expr111816%_
                                                             _%id111817%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id111817%_ (cons _%expr111816%_ '())))
                     _%stx111708%_)
                    _%r111719%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K111725111786%_
                                                    (lambda (_%init111751%_
                                                             _%len111752%_
                                                             _%expr111753%_
                                                             _%tmp111754%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp111754%_
                                             (cons _%expr111753%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp111754%_
                                                    (cons _%len111752%_ '())))
                                        _%stx111708%_)
                                       (let ((__tmp113482
                                              (map (lambda (_%hd111756%_)
                                                     (let* ((_%hd111757111764%_
                                                             _%hd111756%_)
                                                            (_%E111759111768%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd111757111764%_
                                '([id . k])))
                       '#!void))
                    (_%K111760111774%_
                     (lambda (_%k111771%_ _%id111772%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id111772%_
                                    (cons (cons '##vector-ref
                                                (cons _%tmp111754%_
                                                      (cons _%k111771%_ '())))
                                          '())))
                        _%stx111708%_))))
               (if (let () (declare (not safe)) (##pair? _%hd111757111764%_))
                   (let ((_%hd111761111777%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd111757111764%_)))
                         (_%tl111762111779%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd111757111764%_))))
                     (let* ((_%id111782%_ _%hd111761111777%_)
                            (_%k111784%_ _%tl111762111779%_))
                       (_%K111760111774%_ _%k111784%_ _%id111782%_)))
                   (_%E111759111768%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init111751%_)))
                                         (declare (not safe))
                                         (__foldr1 cons '() __tmp113482)))))
                     _%stx111708%_)
                    _%r111719%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match113335113336%_
                                                       (lambda (_%hd111726111789%_
                                                                _%tl111727111791%_
                                                                _%hd111728111796%_
                                                                _%tl111729111798%_)
                                                         (let ((_%tmp111794%_
                                                                _%hd111726111789%_)
                                                               (_%expr111801%_
                                                                _%hd111728111796%_))
                                                           (_%E111724111747%_))))
                                                      (_%__match113329113330%_
                                                       (lambda (_%hd111726111789%_
                                                                _%tl111727111791%_)
                                                         (let ((_%tmp111794%_
                                                                _%hd111726111789%_))
                                                           (_%E111724111747%_)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##pair? _%hd111720111743%_))
                                                     (let ((_%tl111739111846%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd111720111743%_)))
                                                           (_%hd111738111844%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd111720111743%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd111738111844%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _%tl111739111846%_))
                       (let ((_%tl111741111851%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl111739111846%_)))
                             (_%hd111740111849%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl111739111846%_))))
                         (if (let ()
                               (declare (not safe))
                               (##null? _%tl111741111851%_))
                             (let ((_%expr111854%_ _%hd111740111849%_))
                               (_%K111737111841%_ _%expr111854%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%tl111741111851%_))
                                 (let ((_%tl111731111805%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl111741111851%_)))
                                       (_%hd111730111803%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl111741111851%_))))
                                   (let ((_%tmp111794%_ _%hd111738111844%_)
                                         (_%expr111801%_ _%hd111740111849%_)
                                         (_%len111808%_ _%hd111730111803%_)
                                         (_%init111810%_ _%tl111731111805%_))
                                     (_%K111725111786%_
                                      _%init111810%_
                                      _%len111808%_
                                      _%expr111801%_
                                      _%tmp111794%_)))
                                 (_%__match113335113336%_
                                  _%hd111738111844%_
                                  _%tl111739111846%_
                                  _%hd111740111849%_
                                  _%tl111741111851%_))))
                       (_%__match113329113330%_
                        _%hd111738111844%_
                        _%tl111739111846%_))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _%tl111739111846%_))
                       (let ((_%tl111736111831%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl111739111846%_)))
                             (_%hd111735111829%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl111739111846%_))))
                         (if (let ()
                               (declare (not safe))
                               (##null? _%tl111736111831%_))
                             (let ((_%id111827%_ _%hd111738111844%_)
                                   (_%expr111834%_ _%hd111735111829%_))
                               (_%K111732111819%_ _%expr111834%_ _%id111827%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%tl111736111831%_))
                                 (let ((_%tl111731111805%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl111736111831%_)))
                                       (_%hd111730111803%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl111736111831%_))))
                                   (let ((_%tmp111794%_ _%hd111738111844%_)
                                         (_%expr111801%_ _%hd111735111829%_)
                                         (_%len111808%_ _%hd111730111803%_)
                                         (_%init111810%_ _%tl111731111805%_))
                                     (_%K111725111786%_
                                      _%init111810%_
                                      _%len111808%_
                                      _%expr111801%_
                                      _%tmp111794%_)))
                                 (_%__match113335113336%_
                                  _%hd111738111844%_
                                  _%tl111739111846%_
                                  _%hd111735111829%_
                                  _%tl111736111831%_))))
                       (_%__match113329113330%_
                        _%hd111738111844%_
                        _%tl111739111846%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E111724111747%_)))))))
                                        (__tmp113480 (list _%body111716%_)))
                                    (declare (not safe))
                                    (__foldl1
                                     __tmp113481
                                     __tmp113480
                                     _%post111715%_))))
                             (declare (not safe))
                             (__foldr1 cons '() __tmp113479)))
                     _%stx111708%_))))
          (__compile-let-form
           _%stx111708%_
           _%compile-simple111710%_
           _%compile-values111711%_))))
    (define __compile-call%
      (lambda (_%stx111668%_)
        (let* ((_%$e111670%_ _%stx111668%_)
               (_%$E111672111681%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111670%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111670%_))
              (let* ((_%$tgt111673111684%_
                      (let () (declare (not safe)) (__AST-e _%$e111670%_)))
                     (_%$hd111674111687%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111673111684%_)))
                     (_%$tl111675111690%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111673111684%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111675111690%_))
                    (let* ((_%$tgt111676111694%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111675111690%_)))
                           (_%$hd111677111697%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111676111694%_)))
                           (_%$tl111678111700%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111676111694%_)))
                           (_%rator111704%_ _%$hd111677111697%_)
                           (_%rands111706%_ _%$tl111678111700%_))
                      (__SRC__%
                       (cons (__compile _%rator111704%_)
                             (map __compile _%rands111706%_))
                       _%stx111668%_))
                    (_%$E111672111681%_)))
              (_%$E111672111681%_)))))
    (define __compile-ref%
      (lambda (_%stx111630%_)
        (let* ((_%$e111632%_ _%stx111630%_)
               (_%$E111634111643%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111632%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111632%_))
              (let* ((_%$tgt111635111646%_
                      (let () (declare (not safe)) (__AST-e _%$e111632%_)))
                     (_%$hd111636111649%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111635111646%_)))
                     (_%$tl111637111652%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111635111646%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111637111652%_))
                    (let* ((_%$tgt111638111656%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111637111652%_)))
                           (_%$hd111639111659%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111638111656%_)))
                           (_%$tl111640111662%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111638111656%_)))
                           (_%id111666%_ _%$hd111639111659%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111640111662%_))
                                  '())
                          (__SRC__% _%id111666%_ _%stx111630%_)
                          (_%$E111634111643%_)))
                    (_%$E111634111643%_)))
              (_%$E111634111643%_)))))
    (define __compile-setq%
      (lambda (_%stx111577%_)
        (let* ((_%$e111579%_ _%stx111577%_)
               (_%$E111581111593%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111579%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111579%_))
              (let* ((_%$tgt111582111596%_
                      (let () (declare (not safe)) (__AST-e _%$e111579%_)))
                     (_%$hd111583111599%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111582111596%_)))
                     (_%$tl111584111602%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111582111596%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111584111602%_))
                    (let* ((_%$tgt111585111606%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111584111602%_)))
                           (_%$hd111586111609%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111585111606%_)))
                           (_%$tl111587111612%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111585111606%_)))
                           (_%id111616%_ _%$hd111586111609%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl111587111612%_))
                          (let* ((_%$tgt111588111618%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111587111612%_)))
                                 (_%$hd111589111621%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111588111618%_)))
                                 (_%$tl111590111624%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111588111618%_)))
                                 (_%expr111628%_ _%$hd111589111621%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl111590111624%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id111616%_
                                              _%stx111577%_)
                                             (cons (__compile _%expr111628%_)
                                                   '())))
                                 _%stx111577%_)
                                (_%$E111581111593%_)))
                          (_%$E111581111593%_)))
                    (_%$E111581111593%_)))
              (_%$E111581111593%_)))))
    (define __compile-if%
      (lambda (_%stx111509%_)
        (let* ((_%$e111511%_ _%stx111509%_)
               (_%$E111513111528%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111511%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111511%_))
              (let* ((_%$tgt111514111531%_
                      (let () (declare (not safe)) (__AST-e _%$e111511%_)))
                     (_%$hd111515111534%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111514111531%_)))
                     (_%$tl111516111537%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111514111531%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111516111537%_))
                    (let* ((_%$tgt111517111541%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111516111537%_)))
                           (_%$hd111518111544%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111517111541%_)))
                           (_%$tl111519111547%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111517111541%_)))
                           (_%p111551%_ _%$hd111518111544%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl111519111547%_))
                          (let* ((_%$tgt111520111553%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111519111547%_)))
                                 (_%$hd111521111556%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111520111553%_)))
                                 (_%$tl111522111559%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111520111553%_)))
                                 (_%t111563%_ _%$hd111521111556%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl111522111559%_))
                                (let* ((_%$tgt111523111565%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl111522111559%_)))
                                       (_%$hd111524111568%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt111523111565%_)))
                                       (_%$tl111525111571%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt111523111565%_)))
                                       (_%f111575%_ _%$hd111524111568%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl111525111571%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p111551%_)
                                                   (cons (__compile
                                                          _%t111563%_)
                                                         (cons (__compile
                                                                _%f111575%_)
                                                               '()))))
                                       _%stx111509%_)
                                      (_%$E111513111528%_)))
                                (_%$E111513111528%_)))
                          (_%$E111513111528%_)))
                    (_%$E111513111528%_)))
              (_%$E111513111528%_)))))
    (define __compile-quote%
      (lambda (_%stx111471%_)
        (let* ((_%$e111473%_ _%stx111471%_)
               (_%$E111475111484%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111473%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111473%_))
              (let* ((_%$tgt111476111487%_
                      (let () (declare (not safe)) (__AST-e _%$e111473%_)))
                     (_%$hd111477111490%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111476111487%_)))
                     (_%$tl111478111493%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111476111487%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111478111493%_))
                    (let* ((_%$tgt111479111497%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111478111493%_)))
                           (_%$hd111480111500%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111479111497%_)))
                           (_%$tl111481111503%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111479111497%_)))
                           (_%e111507%_ _%$hd111480111500%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111481111503%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e111507%_))
                                       '()))
                           _%stx111471%_)
                          (_%$E111475111484%_)))
                    (_%$E111475111484%_)))
              (_%$E111475111484%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx111433%_)
        (let* ((_%$e111435%_ _%stx111433%_)
               (_%$E111437111446%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111435%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111435%_))
              (let* ((_%$tgt111438111449%_
                      (let () (declare (not safe)) (__AST-e _%$e111435%_)))
                     (_%$hd111439111452%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111438111449%_)))
                     (_%$tl111440111455%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111438111449%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111440111455%_))
                    (let* ((_%$tgt111441111459%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111440111455%_)))
                           (_%$hd111442111462%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111441111459%_)))
                           (_%$tl111443111465%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111441111459%_)))
                           (_%e111469%_ _%$hd111442111462%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111443111465%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e111469%_ '()))
                           _%stx111433%_)
                          (_%$E111437111446%_)))
                    (_%$E111437111446%_)))
              (_%$E111437111446%_)))))
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

(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1734279327)
  (begin
    (define __syntax::t
      (let ((__tmp115995 (list)) (__tmp115994 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp115995
         '(e id)
         __tmp115994
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args115799%_
        (apply make-instance __syntax::t _%$args115799%_)))
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
      (let ((__tmp115997 (list __syntax::t))
            (__tmp115996 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp115997
         '()
         __tmp115996
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args115796%_
        (apply make-instance __core-form::t _%$args115796%_)))
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
      (let ((__tmp115999 (list __core-form::t))
            (__tmp115998 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp115999
         '()
         __tmp115998
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args115793%_
        (apply make-instance __core-expression::t _%$args115793%_)))
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
      (let ((__tmp116001 (list __core-form::t))
            (__tmp116000 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp116001
         '()
         __tmp116000
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args115790%_
        (apply make-instance __core-special-form::t _%$args115790%_)))
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
      (lambda (_%id115788%_)
        (let ((__tmp116002
               (let () (declare (not safe)) (__AST-e _%id115788%_))))
          (declare (not safe))
          (__hash-get __core __tmp116002))))
    (define __core-bound-id?__%
      (lambda (_%id115771%_ _%is?115772%_)
        (let ((_%$e115774%_ (__core-resolve _%id115771%_)))
          (if _%$e115774%_ (_%is?115772%_ _%$e115774%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id115781%_)
        (let ((_%is?115783%_ true))
          (__core-bound-id?__% _%id115781%_ _%is?115783%_))))
    (define __core-bound-id?
      (lambda _g116004_
        (let ((_g116003_ (let () (declare (not safe)) (##length _g116004_))))
          (cond ((let () (declare (not safe)) (##fx= _g116003_ 1))
                 (apply __core-bound-id?__0 _g116004_))
                ((let () (declare (not safe)) (##fx= _g116003_ 2))
                 (apply __core-bound-id?__% _g116004_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g116004_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id115754%_ _%e115755%_ _%make115756%_)
        (let ((__tmp116005
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e115755%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e115755%_
                   (_%make115756%_ _%e115755%_ _%id115754%_))))
          (declare (not safe))
          (__hash-put! __core _%id115754%_ __tmp116005))))
    (define __core-bind-syntax!__0
      (lambda (_%id115761%_ _%e115762%_)
        (let ((_%make115764%_ make-__syntax))
          (__core-bind-syntax!__% _%id115761%_ _%e115762%_ _%make115764%_))))
    (define __core-bind-syntax!
      (lambda _g116007_
        (let ((_g116006_ (let () (declare (not safe)) (##length _g116007_))))
          (cond ((let () (declare (not safe)) (##fx= _g116006_ 2))
                 (apply __core-bind-syntax!__0 _g116007_))
                ((let () (declare (not safe)) (##fx= _g116006_ 3))
                 (apply __core-bind-syntax!__% _g116007_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g116007_))))))
    (define __SRC__%
      (lambda (_%e115734%_ _%src-stx115735%_)
        (if (or (pair? _%e115734%_) (symbol? _%e115734%_))
            (let ((__tmp116008
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx115735%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx115735%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e115734%_ __tmp116008))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e115734%_ 'gerbil#AST::t))
                (let ((__tmp116010
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e115734%_ '1 '#f '#f)))
                      (__tmp116009
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e115734%_)))))
                  (declare (not safe))
                  (##make-source __tmp116010 __tmp116009))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e115734%_))))))
    (define __SRC__0
      (lambda (_%e115746%_)
        (let ((_%src-stx115748%_ '#f))
          (__SRC__% _%e115746%_ _%src-stx115748%_))))
    (define __SRC
      (lambda _g116012_
        (let ((_g116011_ (let () (declare (not safe)) (##length _g116012_))))
          (cond ((let () (declare (not safe)) (##fx= _g116011_ 1))
                 (apply __SRC__0 _g116012_))
                ((let () (declare (not safe)) (##fx= _g116011_ 2))
                 (apply __SRC__% _g116012_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g116012_))))))
    (define __locat
      (lambda (_%loc115731%_)
        (if (let () (declare (not safe)) (##locat? _%loc115731%_))
            _%loc115731%_
            '#f)))
    (define __check-values
      (lambda (_%obj115726%_ _%k115727%_)
        (let ((_%count115729%_
               (if (let () (declare (not safe)) (##values? _%obj115726%_))
                   (let ()
                     (declare (not safe))
                     (##vector-length _%obj115726%_))
                   '1)))
          (if (fx= _%count115729%_ _%k115727%_)
              '#!void
              (let ((__tmp116014
                     (if (fx< _%count115729%_ _%k115727%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp116013
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj115726%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj115726%_))
                         _%obj115726%_)))
                (declare (not safe))
                (error __tmp116014 __tmp116013 _%k115727%_))))))
    (define __compile
      (lambda (_%stx115695%_)
        (let* ((_%$e115697%_ _%stx115695%_)
               (_%$E115699115705%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e115697%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e115697%_))
              (let* ((_%$tgt115700115708%_
                      (let () (declare (not safe)) (__AST-e _%$e115697%_)))
                     (_%$hd115701115711%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt115700115708%_)))
                     (_%$tl115702115714%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt115700115708%_)))
                     (_%form115718%_ _%$hd115701115711%_)
                     (_%$e115720%_ (__core-resolve _%form115718%_)))
                (if _%$e115720%_
                    ((lambda (_%bind115723%_)
                       ((##structure-ref _%bind115723%_ '1 __syntax::t '#f)
                        _%stx115695%_))
                     _%$e115720%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx115695%_
                       _%form115718%_))))
              (_%$E115699115705%_)))))
    (define __compile-error__%
      (lambda (_%stx115682%_ _%detail115683%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx115682%_
           _%detail115683%_))))
    (define __compile-error__0
      (lambda (_%stx115688%_)
        (let ((_%detail115690%_ '#f))
          (__compile-error__% _%stx115688%_ _%detail115690%_))))
    (define __compile-error
      (lambda _g116016_
        (let ((_g116015_ (let () (declare (not safe)) (##length _g116016_))))
          (cond ((let () (declare (not safe)) (##fx= _g116015_ 1))
                 (apply __compile-error__0 _g116016_))
                ((let () (declare (not safe)) (##fx= _g116015_ 2))
                 (apply __compile-error__% _g116016_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g116016_))))))
    (define __compile-ignore%
      (lambda (_%stx115679%_) (__SRC__% ''#!void _%stx115679%_)))
    (define __compile-begin%
      (lambda (_%stx115654%_)
        (let* ((_%$e115656%_ _%stx115654%_)
               (_%$E115658115664%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e115656%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e115656%_))
              (let* ((_%$tgt115659115667%_
                      (let () (declare (not safe)) (__AST-e _%$e115656%_)))
                     (_%$hd115660115670%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt115659115667%_)))
                     (_%$tl115661115673%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt115659115667%_)))
                     (_%body115677%_ _%$tl115661115673%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body115677%_))
                 _%stx115654%_))
              (_%$E115658115664%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx115629%_)
        (let* ((_%$e115631%_ _%stx115629%_)
               (_%$E115633115639%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e115631%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e115631%_))
              (let* ((_%$tgt115634115642%_
                      (let () (declare (not safe)) (__AST-e _%$e115631%_)))
                     (_%$hd115635115645%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt115634115642%_)))
                     (_%$tl115636115648%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt115634115642%_)))
                     (_%body115652%_ _%$tl115636115648%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body115652%_)))
                 _%stx115629%_))
              (_%$E115633115639%_)))))
    (define __compile-import%
      (lambda (_%stx115604%_)
        (let* ((_%$e115606%_ _%stx115604%_)
               (_%$E115608115614%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e115606%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e115606%_))
              (let* ((_%$tgt115609115617%_
                      (let () (declare (not safe)) (__AST-e _%$e115606%_)))
                     (_%$hd115610115620%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt115609115617%_)))
                     (_%$tl115611115623%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt115609115617%_)))
                     (_%body115627%_ _%$tl115611115623%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body115627%_ '())) '()))
                 _%stx115604%_))
              (_%$E115608115614%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx115551%_)
        (let* ((_%$e115553%_ _%stx115551%_)
               (_%$E115555115567%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e115553%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e115553%_))
              (let* ((_%$tgt115556115570%_
                      (let () (declare (not safe)) (__AST-e _%$e115553%_)))
                     (_%$hd115557115573%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt115556115570%_)))
                     (_%$tl115558115576%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt115556115570%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl115558115576%_))
                    (let* ((_%$tgt115559115580%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl115558115576%_)))
                           (_%$hd115560115583%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt115559115580%_)))
                           (_%$tl115561115586%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt115559115580%_)))
                           (_%ann115590%_ _%$hd115560115583%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl115561115586%_))
                          (let* ((_%$tgt115562115592%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl115561115586%_)))
                                 (_%$hd115563115595%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt115562115592%_)))
                                 (_%$tl115564115598%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt115562115592%_)))
                                 (_%expr115602%_ _%$hd115563115595%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl115564115598%_))
                                        '())
                                (__compile _%expr115602%_)
                                (_%$E115555115567%_)))
                          (_%$E115555115567%_)))
                    (_%$E115555115567%_)))
              (_%$E115555115567%_)))))
    (define __compile-define-values%
      (lambda (_%stx115442%_)
        (let* ((_%$e115444%_ _%stx115442%_)
               (_%$E115446115458%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e115444%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e115444%_))
              (let* ((_%$tgt115447115461%_
                      (let () (declare (not safe)) (__AST-e _%$e115444%_)))
                     (_%$hd115448115464%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt115447115461%_)))
                     (_%$tl115449115467%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt115447115461%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl115449115467%_))
                    (let* ((_%$tgt115450115471%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl115449115467%_)))
                           (_%$hd115451115474%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt115450115471%_)))
                           (_%$tl115452115477%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt115450115471%_)))
                           (_%hd115481%_ _%$hd115451115474%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl115452115477%_))
                          (let* ((_%$tgt115453115483%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl115452115477%_)))
                                 (_%$hd115454115486%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt115453115483%_)))
                                 (_%$tl115455115489%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt115453115483%_)))
                                 (_%expr115493%_ _%$hd115454115486%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl115455115489%_))
                                        '())
                                (let* ((_%$e115495%_ _%hd115481%_)
                                       (_%$E115497115538%_
                                        (lambda ()
                                          (let ((_%$E115498115523%_
                                                 (lambda ()
                                                   (let* ((_%$E115499115510%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e115495%_))))
                  (_%ids115513%_ _%hd115481%_)
                  (_%len115515%_ (length _%ids115513%_))
                  (_%tmp115517%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp115517%_
                                       (cons (__compile _%expr115493%_) '())))
                           _%stx115442%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp115517%_
                                             (cons _%len115515%_ '())))
                                 _%stx115442%_)
                                (let ((__tmp116017
                                       (let ((__tmp116019
                                              (lambda (_%id115520%_
                                                       _%k115521%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id115520%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id115520%_)
                         (cons (cons '##values-ref
                                     (cons _%tmp115517%_
                                           (cons _%k115521%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx115442%_)
                                                    '#f)))
                                             (__tmp116018
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len115515%_))))
                                         (declare (not safe))
                                         (__filter-map2
                                          __tmp116019
                                          _%ids115513%_
                                          __tmp116018))))
                                  (declare (not safe))
                                  (__foldr1 cons '() __tmp116017)))))
              _%stx115442%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e115495%_))
                                                (let* ((_%$tgt115500115526%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e115495%_)))
                                                       (_%$hd115501115529%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt115500115526%_)))
                                                       (_%$tl115502115532%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt115500115526%_)))
                                                       (_%id115536%_
                                                        _%$hd115501115529%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl115502115532%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id115536%_)
                           (cons (__compile _%expr115493%_) '())))
               _%stx115442%_)
              (_%$E115498115523%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E115498115523%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e115495%_))
                                      (let* ((_%$tgt115503115541%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e115495%_)))
                                             (_%$hd115504115544%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt115503115541%_)))
                                             (_%$tl115505115547%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt115503115541%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd115504115544%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl115505115547%_))
                                                        '())
                                                (__compile _%expr115493%_)
                                                (_%$E115497115538%_))
                                            (_%$E115497115538%_)))
                                      (_%$E115497115538%_)))
                                (_%$E115446115458%_)))
                          (_%$E115446115458%_)))
                    (_%$E115446115458%_)))
              (_%$E115446115458%_)))))
    (define __compile-head-id
      (lambda (_%e115440%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e115440%_))
             _%e115440%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd115397%_)
        (let _%recur115399%_ ((_%rest115401%_ _%hd115397%_))
          (let* ((_%$e115403%_ _%rest115401%_)
                 (_%$E115405115423%_
                  (lambda ()
                    (let ((_%$E115406115420%_
                           (lambda ()
                             (let* ((_%$E115407115415%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e115403%_))))
                                    (_%tail115418%_ _%$e115403%_))
                               (__compile-head-id _%tail115418%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e115403%_))
                                  '())
                          '()
                          (_%$E115406115420%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e115403%_))
                (let* ((_%$tgt115408115426%_
                        (let () (declare (not safe)) (__AST-e _%$e115403%_)))
                       (_%$hd115409115429%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt115408115426%_)))
                       (_%$tl115410115432%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt115408115426%_)))
                       (_%hd115436%_ _%$hd115409115429%_)
                       (_%rest115438%_ _%$tl115410115432%_))
                  (cons (__compile-head-id _%hd115436%_)
                        (_%recur115399%_ _%rest115438%_)))
                (_%$E115405115423%_))))))
    (define __compile-lambda%
      (lambda (_%stx115344%_)
        (let* ((_%$e115346%_ _%stx115344%_)
               (_%$E115348115360%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e115346%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e115346%_))
              (let* ((_%$tgt115349115363%_
                      (let () (declare (not safe)) (__AST-e _%$e115346%_)))
                     (_%$hd115350115366%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt115349115363%_)))
                     (_%$tl115351115369%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt115349115363%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl115351115369%_))
                    (let* ((_%$tgt115352115373%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl115351115369%_)))
                           (_%$hd115353115376%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt115352115373%_)))
                           (_%$tl115354115379%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt115352115373%_)))
                           (_%hd115383%_ _%$hd115353115376%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl115354115379%_))
                          (let* ((_%$tgt115355115385%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl115354115379%_)))
                                 (_%$hd115356115388%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt115355115385%_)))
                                 (_%$tl115357115391%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt115355115385%_)))
                                 (_%body115395%_ _%$hd115356115388%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl115357115391%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd115383%_)
                                             (cons (__compile _%body115395%_)
                                                   '())))
                                 _%stx115344%_)
                                (_%$E115348115360%_)))
                          (_%$E115348115360%_)))
                    (_%$E115348115360%_)))
              (_%$E115348115360%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx115136%_)
        (letrec ((_%variadic?115138%_
                  (lambda (_%hd115309%_)
                    (let* ((_%$e115311%_ _%hd115309%_)
                           (_%$E115313115329%_
                            (lambda ()
                              (let ((_%$E115314115326%_
                                     (lambda ()
                                       (let ((_%$E115315115323%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e115311%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e115311%_))
                                            '())
                                    '#f
                                    (_%$E115314115326%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e115311%_))
                          (let* ((_%$tgt115316115332%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e115311%_)))
                                 (_%$hd115317115335%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt115316115332%_)))
                                 (_%$tl115318115338%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt115316115332%_)))
                                 (_%rest115342%_ _%$tl115318115338%_))
                            (_%variadic?115138%_ _%rest115342%_))
                          (_%$E115313115329%_)))))
                 (_%arity115139%_
                  (lambda (_%hd115274%_)
                    (let _%lp115276%_ ((_%rest115278%_ _%hd115274%_)
                                       (_%k115279%_ '0))
                      (let* ((_%$e115281%_ _%rest115278%_)
                             (_%$E115283115294%_
                              (lambda ()
                                (let ((_%$E115284115291%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e115281%_)))))
                                  _%k115279%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e115281%_))
                            (let* ((_%$tgt115285115297%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e115281%_)))
                                   (_%$hd115286115300%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt115285115297%_)))
                                   (_%$tl115287115303%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt115285115297%_)))
                                   (_%rest115307%_ _%$tl115287115303%_))
                              (_%lp115276%_
                               _%rest115307%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%k115279%_ '1))))
                            (_%$E115283115294%_))))))
                 (_%generate115140%_
                  (lambda (_%rest115201%_ _%args115202%_ _%len115203%_)
                    (let* ((_%$e115205%_ _%rest115201%_)
                           (_%$E115207115218%_
                            (lambda ()
                              (let ((_%$E115208115215%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e115205%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args115202%_ '())))
                                 _%stx115136%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e115205%_))
                          (let* ((_%$tgt115209115221%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e115205%_)))
                                 (_%$hd115210115224%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt115209115221%_)))
                                 (_%$tl115211115227%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt115209115221%_)))
                                 (_%clause115231%_ _%$hd115210115224%_)
                                 (_%rest115233%_ _%$tl115211115227%_)
                                 (_%$e115235%_ _%clause115231%_)
                                 (_%$E115237115246%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e115235%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e115235%_))
                                (let* ((_%$tgt115238115249%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e115235%_)))
                                       (_%$hd115239115252%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt115238115249%_)))
                                       (_%$tl115240115255%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt115238115249%_)))
                                       (_%hd115259%_ _%$hd115239115252%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl115240115255%_))
                                      (let* ((_%$tgt115241115261%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl115240115255%_)))
                                             (_%$hd115242115264%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt115241115261%_)))
                                             (_%$tl115243115267%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt115241115261%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl115243115267%_))
                                                    '())
                                            (let ((_%clen115271%_
                                                   (_%arity115139%_
                                                    _%hd115259%_))
                                                  (_%cmp115272%_
                                                   (if (_%variadic?115138%_
                                                        _%hd115259%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp115272%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len115203%_ (cons _%clen115271%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause115231%_))
                                      (cons _%args115202%_ '())))
                          _%stx115136%_)
                         (cons (_%generate115140%_
                                _%rest115233%_
                                _%args115202%_
                                _%len115203%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx115136%_))
                                            (_%$E115237115246%_)))
                                      (_%$E115237115246%_)))
                                (_%$E115237115246%_)))
                          (_%$E115207115218%_))))))
          (let* ((_%$e115142%_ _%stx115136%_)
                 (_%$E115144115176%_
                  (lambda ()
                    (let ((_%$E115145115158%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e115142%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e115142%_))
                          (let* ((_%$tgt115146115161%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e115142%_)))
                                 (_%$hd115147115164%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt115146115161%_)))
                                 (_%$tl115148115167%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt115146115161%_)))
                                 (_%clauses115171%_ _%$tl115148115167%_))
                            (let ((_%args115173%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx115136%_))
                                  (_%len115174%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx115136%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args115173%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len115174%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args115173%_ '()))
                                         _%stx115136%_)
                                        '()))
                            '())
                      (cons (_%generate115140%_
                             _%clauses115171%_
                             _%args115173%_
                             _%len115174%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx115136%_)
                                                 '())))
                               _%stx115136%_)))
                          (_%$E115145115158%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e115142%_))
                (let* ((_%$tgt115149115179%_
                        (let () (declare (not safe)) (__AST-e _%$e115142%_)))
                       (_%$hd115150115182%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt115149115179%_)))
                       (_%$tl115151115185%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt115149115179%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl115151115185%_))
                      (let* ((_%$tgt115152115189%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl115151115185%_)))
                             (_%$hd115153115192%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt115152115189%_)))
                             (_%$tl115154115195%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt115152115189%_)))
                             (_%clause115199%_ _%$hd115153115192%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl115154115195%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause115199%_))
                            (_%$E115144115176%_)))
                      (_%$E115144115176%_)))
                (_%$E115144115176%_))))))
    (define __compile-let-form
      (lambda (_%stx114905%_ _%compile-simple114906%_ _%compile-values114907%_)
        (letrec ((_%simple-bind?114909%_
                  (lambda (_%hd115094%_)
                    (let* ((_%hd115095115105%_ _%hd115094%_)
                           (_%else115098115113%_ (lambda () '#f)))
                      (let ((_%K115101115126%_ (lambda (_%id115124%_) '#t))
                            (_%K115100115118%_ (lambda () '#t)))
                        (let ((_%try-match115097115121%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd115095115105%_ '#f))
                                     (_%K115100115118%_)
                                     (_%else115098115113%_)))))
                          (if (pair? _%hd115095115105%_)
                              (let ((_%tl115103115131%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd115095115105%_)))
                                    (_%hd115102115129%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd115095115105%_))))
                                (if (null? _%tl115103115131%_)
                                    (let ((_%id115134%_ _%hd115102115129%_))
                                      (_%K115101115126%_ _%id115134%_))
                                    (_%try-match115097115121%_)))
                              (_%try-match115097115121%_)))))))
                 (_%car-e114910%_
                  (lambda (_%hd115092%_)
                    (if (pair? _%hd115092%_)
                        (let () (declare (not safe)) (##car _%hd115092%_))
                        _%hd115092%_))))
          (let* ((_%$e114912%_ _%stx114905%_)
                 (_%$E114914115057%_
                  (lambda ()
                    (let ((_%$E114915114937%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e114912%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e114912%_))
                          (let* ((_%$tgt114916114940%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e114912%_)))
                                 (_%$hd114917114943%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt114916114940%_)))
                                 (_%$tl114918114946%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt114916114940%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl114918114946%_))
                                (let* ((_%$tgt114919114950%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl114918114946%_)))
                                       (_%$hd114920114953%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt114919114950%_)))
                                       (_%$tl114921114956%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt114919114950%_)))
                                       (_%hd114960%_ _%$hd114920114953%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl114921114956%_))
                                      (let* ((_%$tgt114922114962%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl114921114956%_)))
                                             (_%$hd114923114965%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt114922114962%_)))
                                             (_%$tl114924114968%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt114922114962%_)))
                                             (_%body114972%_
                                              _%$hd114923114965%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl114924114968%_))
                                                    '())
                                            (let* ((_%hd-ids115012%_
                                                    (map (lambda (_%bind114974%_)
                                                           (let* ((_%$e114976%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind114974%_)
                          (_%$E114978114987%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e114976%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e114976%_))
                         (let* ((_%$tgt114979114990%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e114976%_)))
                                (_%$hd114980114993%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt114979114990%_)))
                                (_%$tl114981114996%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt114979114990%_)))
                                (_%ids115000%_ _%$hd114980114993%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl114981114996%_))
                               (let* ((_%$tgt114982115002%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl114981114996%_)))
                                      (_%$hd114983115005%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt114982115002%_)))
                                      (_%$tl114984115008%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt114982115002%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl114984115008%_))
                                             '())
                                     _%ids115000%_
                                     (_%$E114978114987%_)))
                               (_%$E114978114987%_)))
                         (_%$E114978114987%_))))
                 _%hd114960%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs115052%_
                                                    (map (lambda (_%bind115014%_)
                                                           (let* ((_%$e115016%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind115014%_)
                          (_%$E115018115027%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e115016%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e115016%_))
                         (let* ((_%$tgt115019115030%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e115016%_)))
                                (_%$hd115020115033%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt115019115030%_)))
                                (_%$tl115021115036%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt115019115030%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl115021115036%_))
                               (let* ((_%$tgt115022115040%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl115021115036%_)))
                                      (_%$hd115023115043%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt115022115040%_)))
                                      (_%$tl115024115046%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt115022115040%_)))
                                      (_%expr115050%_ _%$hd115023115043%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl115024115046%_))
                                             '())
                                     (__compile _%expr115050%_)
                                     (_%$E115018115027%_)))
                               (_%$E115018115027%_)))
                         (_%$E115018115027%_))))
                 _%hd114960%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body115054%_
                                                    (__compile
                                                     _%body114972%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__andmap1
                                                     _%simple-bind?114909%_
                                                     _%hd-ids115012%_))
                                                  (_%compile-simple114906%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e114910%_
                                                            _%hd-ids115012%_))
                                                   _%exprs115052%_
                                                   _%body115054%_)
                                                  (_%compile-values114907%_
                                                   _%hd-ids115012%_
                                                   _%exprs115052%_
                                                   _%body115054%_)))
                                            (_%$E114915114937%_)))
                                      (_%$E114915114937%_)))
                                (_%$E114915114937%_)))
                          (_%$E114915114937%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e114912%_))
                (let* ((_%$tgt114925115060%_
                        (let () (declare (not safe)) (__AST-e _%$e114912%_)))
                       (_%$hd114926115063%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt114925115060%_)))
                       (_%$tl114927115066%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt114925115060%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl114927115066%_))
                      (let* ((_%$tgt114928115070%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl114927115066%_)))
                             (_%$hd114929115073%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt114928115070%_)))
                             (_%$tl114930115076%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt114928115070%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd114929115073%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl114930115076%_))
                                (let* ((_%$tgt114931115080%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl114930115076%_)))
                                       (_%$hd114932115083%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt114931115080%_)))
                                       (_%$tl114933115086%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt114931115080%_)))
                                       (_%body115090%_ _%$hd114932115083%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl114933115086%_))
                                              '())
                                      (__compile _%body115090%_)
                                      (_%$E114914115057%_)))
                                (_%$E114914115057%_))
                            (_%$E114914115057%_)))
                      (_%$E114914115057%_)))
                (_%$E114914115057%_))))))
    (define __compile-let-values%
      (lambda (_%stx114717%_)
        (letrec ((_%compile-simple114719%_
                  (lambda (_%hd-ids114901%_ _%exprs114902%_ _%body114903%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp116020
                                        (map __compile-head-id
                                             _%hd-ids114901%_)))
                                   (declare (not safe))
                                   (##map list __tmp116020 _%exprs114902%_))
                                 (cons _%body114903%_ '())))
                     _%stx114717%_)))
                 (_%compile-values114720%_
                  (lambda (_%hd-ids114816%_ _%exprs114817%_ _%body114818%_)
                    (let _%lp114820%_ ((_%rest114822%_ _%hd-ids114816%_)
                                       (_%exprs114823%_ _%exprs114817%_)
                                       (_%bind114824%_ '())
                                       (_%post114825%_ '()))
                      (let* ((_%rest114826114840%_ _%rest114822%_)
                             (_%else114829114848%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind114824%_)
                                             (cons (_%compile-post114721%_
                                                    _%post114825%_
                                                    _%body114818%_)
                                                   '())))
                                 _%stx114717%_))))
                        (let ((_%K114834114884%_
                               (lambda (_%rest114881%_ _%id114882%_)
                                 (_%lp114820%_
                                  _%rest114881%_
                                  (cdr _%exprs114823%_)
                                  (cons (cons (__compile-head-id _%id114882%_)
                                              (cons (car _%exprs114823%_) '()))
                                        _%bind114824%_)
                                  _%post114825%_)))
                              (_%K114831114866%_
                               (lambda (_%rest114852%_ _%hd114853%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd114853%_))
                                     (_%lp114820%_
                                      _%rest114852%_
                                      (cdr _%exprs114823%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd114853%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs114823%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind114824%_)
                                      _%post114825%_)
                                     (if (list? _%hd114853%_)
                                         (let* ((_%len114857%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd114853%_)))
                                                (_%tmp114859%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp114820%_
                                            _%rest114852%_
                                            (cdr _%exprs114823%_)
                                            (cons (cons _%tmp114859%_
                                                        (cons (car _%exprs114823%_)
                                                              '()))
                                                  _%bind114824%_)
                                            (cons (cons _%tmp114859%_
                                                        (cons _%len114857%_
                                                              (let ((__tmp116022
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id114862%_ _%k114863%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id114862%_))
                                   (cons (__SRC__0 _%id114862%_) _%k114863%_)
                                   '#f)))
                            (__tmp116021
                             (let ()
                               (declare (not safe))
                               (##iota _%len114857%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp116022 _%hd114853%_ __tmp116021))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post114825%_)))
                                         (__compile-error__%
                                          _%stx114717%_
                                          _%hd114853%_))))))
                          (if (pair? _%rest114826114840%_)
                              (let ((_%tl114836114889%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest114826114840%_)))
                                    (_%hd114835114887%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest114826114840%_))))
                                (if (pair? _%hd114835114887%_)
                                    (let ((_%tl114838114894%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd114835114887%_)))
                                          (_%hd114837114892%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd114835114887%_))))
                                      (if (null? _%tl114838114894%_)
                                          (let ((_%id114897%_
                                                 _%hd114837114892%_)
                                                (_%rest114899%_
                                                 _%tl114836114889%_))
                                            (_%K114834114884%_
                                             _%rest114899%_
                                             _%id114897%_))
                                          (let ((_%hd114874%_
                                                 _%hd114835114887%_)
                                                (_%rest114876%_
                                                 _%tl114836114889%_))
                                            (_%K114831114866%_
                                             _%rest114876%_
                                             _%hd114874%_))))
                                    (let ((_%hd114874%_ _%hd114835114887%_)
                                          (_%rest114876%_ _%tl114836114889%_))
                                      (_%K114831114866%_
                                       _%rest114876%_
                                       _%hd114874%_))))
                              (_%else114829114848%_)))))))
                 (_%compile-post114721%_
                  (lambda (_%post114723%_ _%body114724%_)
                    (let _%lp114726%_ ((_%rest114728%_ _%post114723%_)
                                       (_%check114729%_ '())
                                       (_%bind114730%_ '()))
                      (let* ((_%rest114731114743%_ _%rest114728%_)
                             (_%else114733114751%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp116023
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind114730%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body114724%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx114717%_)
                                                    '())))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp116023
                                          _%check114729%_)))
                                 _%stx114717%_)))
                             (_%K114735114790%_
                              (lambda (_%rest114754%_
                                       _%init114755%_
                                       _%len114756%_
                                       _%tmp114757%_)
                                (_%lp114726%_
                                 _%rest114754%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp114757%_
                                                    (cons _%len114756%_ '())))
                                        _%stx114717%_)
                                       _%check114729%_)
                                 (let ((__tmp116024
                                        (lambda (_%hd114759%_ _%r114760%_)
                                          (let* ((_%hd114761114768%_
                                                  _%hd114759%_)
                                                 (_%E114763114772%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd114761114768%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K114764114778%_
                                                  (lambda (_%k114775%_
                                                           _%id114776%_)
                                                    (cons (cons _%id114776%_
                                                                (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp114757%_
                                          (cons _%k114775%_ '())))
                              '()))
                  _%r114760%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd114761114768%_)
                                                (let ((_%hd114765114781%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd114761114768%_)))
                                                      (_%tl114766114783%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd114761114768%_))))
                                                  (let* ((_%id114786%_
                                                          _%hd114765114781%_)
                                                         (_%k114788%_
                                                          _%tl114766114783%_))
                                                    (_%K114764114778%_
                                                     _%k114788%_
                                                     _%id114786%_)))
                                                (_%E114763114772%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp116024
                                    _%bind114730%_
                                    _%init114755%_))))))
                        (if (pair? _%rest114731114743%_)
                            (let ((_%hd114736114793%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest114731114743%_)))
                                  (_%tl114737114795%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest114731114743%_))))
                              (if (pair? _%hd114736114793%_)
                                  (let ((_%hd114738114798%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd114736114793%_)))
                                        (_%tl114739114800%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd114736114793%_))))
                                    (let ((_%tmp114803%_ _%hd114738114798%_))
                                      (if (pair? _%tl114739114800%_)
                                          (let ((_%hd114740114805%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl114739114800%_)))
                                                (_%tl114741114807%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl114739114800%_))))
                                            (let* ((_%len114810%_
                                                    _%hd114740114805%_)
                                                   (_%init114812%_
                                                    _%tl114741114807%_)
                                                   (_%rest114814%_
                                                    _%tl114737114795%_))
                                              (_%K114735114790%_
                                               _%rest114814%_
                                               _%init114812%_
                                               _%len114810%_
                                               _%tmp114803%_)))
                                          (_%else114733114751%_))))
                                  (_%else114733114751%_)))
                            (_%else114733114751%_)))))))
          (__compile-let-form
           _%stx114717%_
           _%compile-simple114719%_
           _%compile-values114720%_))))
    (define __compile-letrec-values%
      (lambda (_%stx114514%_)
        (letrec ((_%compile-simple114516%_
                  (lambda (_%hd-ids114713%_ _%exprs114714%_ _%body114715%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp116025
                                        (map __compile-head-id
                                             _%hd-ids114713%_)))
                                   (declare (not safe))
                                   (##map list __tmp116025 _%exprs114714%_))
                                 (cons _%body114715%_ '())))
                     _%stx114514%_)))
                 (_%compile-values114517%_
                  (lambda (_%hd-ids114624%_ _%exprs114625%_ _%body114626%_)
                    (let _%lp114628%_ ((_%rest114630%_ _%hd-ids114624%_)
                                       (_%exprs114631%_ _%exprs114625%_)
                                       (_%pre114632%_ '())
                                       (_%bind114633%_ '())
                                       (_%post114634%_ '()))
                      (let* ((_%rest114635114649%_ _%rest114630%_)
                             (_%else114638114657%_
                              (lambda ()
                                (_%compile-inner114518%_
                                 _%pre114632%_
                                 _%bind114633%_
                                 _%post114634%_
                                 _%body114626%_))))
                        (let ((_%K114643114696%_
                               (lambda (_%rest114693%_ _%id114694%_)
                                 (_%lp114628%_
                                  _%rest114693%_
                                  (cdr _%exprs114631%_)
                                  _%pre114632%_
                                  (cons (cons (__compile-head-id _%id114694%_)
                                              (cons (car _%exprs114631%_) '()))
                                        _%bind114633%_)
                                  _%post114634%_)))
                              (_%K114640114678%_
                               (lambda (_%rest114661%_ _%hd114662%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd114662%_))
                                     (_%lp114628%_
                                      _%rest114661%_
                                      (cdr _%exprs114631%_)
                                      _%pre114632%_
                                      (cons (cons (__compile-head-id
                                                   _%hd114662%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs114631%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind114633%_)
                                      _%post114634%_)
                                     (if (list? _%hd114662%_)
                                         (let* ((_%len114666%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd114662%_)))
                                                (_%tmp114668%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp114628%_
                                            _%rest114661%_
                                            (cdr _%exprs114631%_)
                                            (let ((__tmp116026
                                                   (lambda (_%id114671%_
                                                            _%r114672%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id114671%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id114671%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r114672%_)
                 _%r114672%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (__foldl1
                                               __tmp116026
                                               _%pre114632%_
                                               _%hd114662%_))
                                            (cons (cons _%tmp114668%_
                                                        (cons (car _%exprs114631%_)
                                                              '()))
                                                  _%bind114633%_)
                                            (cons (cons _%tmp114668%_
                                                        (cons _%len114666%_
                                                              (let ((__tmp116028
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id114674%_ _%k114675%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id114674%_))
                                   (cons (__SRC__0 _%id114674%_) _%k114675%_)
                                   '#f)))
                            (__tmp116027
                             (let ()
                               (declare (not safe))
                               (##iota _%len114666%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp116028 _%hd114662%_ __tmp116027))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post114634%_)))
                                         (__compile-error__%
                                          _%stx114514%_
                                          _%hd114662%_))))))
                          (if (pair? _%rest114635114649%_)
                              (let ((_%tl114645114701%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest114635114649%_)))
                                    (_%hd114644114699%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest114635114649%_))))
                                (if (pair? _%hd114644114699%_)
                                    (let ((_%tl114647114706%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd114644114699%_)))
                                          (_%hd114646114704%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd114644114699%_))))
                                      (if (null? _%tl114647114706%_)
                                          (let ((_%id114709%_
                                                 _%hd114646114704%_)
                                                (_%rest114711%_
                                                 _%tl114645114701%_))
                                            (_%K114643114696%_
                                             _%rest114711%_
                                             _%id114709%_))
                                          (let ((_%hd114686%_
                                                 _%hd114644114699%_)
                                                (_%rest114688%_
                                                 _%tl114645114701%_))
                                            (_%K114640114678%_
                                             _%rest114688%_
                                             _%hd114686%_))))
                                    (let ((_%hd114686%_ _%hd114644114699%_)
                                          (_%rest114688%_ _%tl114645114701%_))
                                      (_%K114640114678%_
                                       _%rest114688%_
                                       _%hd114686%_))))
                              (_%else114638114657%_)))))))
                 (_%compile-inner114518%_
                  (lambda (_%pre114619%_
                           _%bind114620%_
                           _%post114621%_
                           _%body114622%_)
                    (if (null? _%pre114619%_)
                        (_%compile-bind114519%_
                         _%bind114620%_
                         _%post114621%_
                         _%body114622%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre114619%_)
                                     (cons (_%compile-bind114519%_
                                            _%bind114620%_
                                            _%post114621%_
                                            _%body114622%_)
                                           '())))
                         _%stx114514%_))))
                 (_%compile-bind114519%_
                  (lambda (_%bind114615%_ _%post114616%_ _%body114617%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind114615%_)
                                 (cons (_%compile-post114520%_
                                        _%post114616%_
                                        _%body114617%_)
                                       '())))
                     _%stx114514%_)))
                 (_%compile-post114520%_
                  (lambda (_%post114522%_ _%body114523%_)
                    (let _%lp114525%_ ((_%rest114527%_ _%post114522%_)
                                       (_%check114528%_ '())
                                       (_%bind114529%_ '()))
                      (let* ((_%rest114530114542%_ _%rest114527%_)
                             (_%else114532114550%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp116029
                                              (let ((__tmp116030
                                                     (cons _%body114523%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp116030
                                                 _%bind114529%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp116029
                                          _%check114528%_)))
                                 _%stx114514%_)))
                             (_%K114534114589%_
                              (lambda (_%rest114553%_
                                       _%init114554%_
                                       _%len114555%_
                                       _%tmp114556%_)
                                (_%lp114525%_
                                 _%rest114553%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp114556%_
                                                    (cons _%len114555%_ '())))
                                        _%stx114514%_)
                                       _%check114528%_)
                                 (let ((__tmp116031
                                        (lambda (_%hd114558%_ _%r114559%_)
                                          (let* ((_%hd114560114567%_
                                                  _%hd114558%_)
                                                 (_%E114562114571%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd114560114567%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K114563114577%_
                                                  (lambda (_%k114574%_
                                                           _%id114575%_)
                                                    (cons (cons 'set!
                                                                (cons _%id114575%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##values-ref
                                          (cons _%tmp114556%_
                                                (cons _%k114574%_ '())))
                                    '())))
                  _%r114559%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd114560114567%_)
                                                (let ((_%hd114564114580%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd114560114567%_)))
                                                      (_%tl114565114582%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd114560114567%_))))
                                                  (let* ((_%id114585%_
                                                          _%hd114564114580%_)
                                                         (_%k114587%_
                                                          _%tl114565114582%_))
                                                    (_%K114563114577%_
                                                     _%k114587%_
                                                     _%id114585%_)))
                                                (_%E114562114571%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp116031
                                    _%bind114529%_
                                    _%init114554%_))))))
                        (if (pair? _%rest114530114542%_)
                            (let ((_%hd114535114592%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest114530114542%_)))
                                  (_%tl114536114594%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest114530114542%_))))
                              (if (pair? _%hd114535114592%_)
                                  (let ((_%hd114537114597%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd114535114592%_)))
                                        (_%tl114538114599%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd114535114592%_))))
                                    (let ((_%tmp114602%_ _%hd114537114597%_))
                                      (if (pair? _%tl114538114599%_)
                                          (let ((_%hd114539114604%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl114538114599%_)))
                                                (_%tl114540114606%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl114538114599%_))))
                                            (let* ((_%len114609%_
                                                    _%hd114539114604%_)
                                                   (_%init114611%_
                                                    _%tl114540114606%_)
                                                   (_%rest114613%_
                                                    _%tl114536114594%_))
                                              (_%K114534114589%_
                                               _%rest114613%_
                                               _%init114611%_
                                               _%len114609%_
                                               _%tmp114602%_)))
                                          (_%else114532114550%_))))
                                  (_%else114532114550%_)))
                            (_%else114532114550%_)))))))
          (__compile-let-form
           _%stx114514%_
           _%compile-simple114516%_
           _%compile-values114517%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx114265%_)
        (letrec ((_%compile-simple114267%_
                  (lambda (_%hd-ids114510%_ _%exprs114511%_ _%body114512%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp116032
                                        (map __compile-head-id
                                             _%hd-ids114510%_)))
                                   (declare (not safe))
                                   (##map list __tmp116032 _%exprs114511%_))
                                 (cons _%body114512%_ '())))
                     _%stx114265%_)))
                 (_%compile-values114268%_
                  (lambda (_%hd-ids114417%_ _%exprs114418%_ _%body114419%_)
                    (let _%lp114421%_ ((_%rest114423%_ _%hd-ids114417%_)
                                       (_%exprs114424%_ _%exprs114418%_)
                                       (_%bind114425%_ '())
                                       (_%post114426%_ '()))
                      (let* ((_%rest114427114441%_ _%rest114423%_)
                             (_%else114430114449%_
                              (lambda ()
                                (_%compile-bind114269%_
                                 _%bind114425%_
                                 _%post114426%_
                                 _%body114419%_))))
                        (let ((_%K114435114493%_
                               (lambda (_%rest114488%_ _%hd114489%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd114489%_))
                                     (let ((_%id114491%_
                                            (__SRC__0 _%hd114489%_)))
                                       (_%lp114421%_
                                        _%rest114488%_
                                        (cdr _%exprs114424%_)
                                        (cons (cons _%id114491%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind114425%_)
                                        (cons (cons _%id114491%_
                                                    (cons (car _%exprs114424%_)
                                                          '()))
                                              _%post114426%_)))
                                     (_%lp114421%_
                                      _%rest114488%_
                                      (cdr _%exprs114424%_)
                                      _%bind114425%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs114424%_)
                                                        '()))
                                            _%post114426%_)))))
                              (_%K114432114473%_
                               (lambda (_%rest114453%_ _%hd114454%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd114454%_))
                                     (let ((_%id114457%_
                                            (__SRC__0 _%hd114454%_)))
                                       (_%lp114421%_
                                        _%rest114453%_
                                        (cdr _%exprs114424%_)
                                        (cons (cons _%id114457%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind114425%_)
                                        (cons (cons _%id114457%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs114424%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post114426%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd114454%_))
                                         (if (list? _%hd114454%_)
                                             (let* ((_%len114461%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd114454%_)))
                                                    (_%tmp114463%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp114421%_
                                                _%rest114453%_
                                                (cdr _%exprs114424%_)
                                                (let ((__tmp116033
                                                       (lambda (_%id114466%_
                                                                _%r114467%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id114466%_))
                     (cons (cons (__SRC__0 _%id114466%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r114467%_)
                     _%r114467%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldl1
                                                   __tmp116033
                                                   _%bind114425%_
                                                   _%hd114454%_))
                                                (cons (cons _%tmp114463%_
                                                            (cons (car _%exprs114424%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len114461%_
                                (let ((__tmp116035
                                       (lambda (_%id114469%_ _%k114470%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id114469%_))
                                             (cons (__SRC__0 _%id114469%_)
                                                   _%k114470%_)
                                             '#f)))
                                      (__tmp116034
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len114461%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp116035
                                   _%hd114454%_
                                   __tmp116034)))))
              _%post114426%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx114265%_
                                              _%hd114454%_))
                                         (_%lp114421%_
                                          _%rest114453%_
                                          (cdr _%exprs114424%_)
                                          _%bind114425%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs114424%_)
                                                            '()))
                                                _%post114426%_)))))))
                          (if (pair? _%rest114427114441%_)
                              (let ((_%tl114437114498%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest114427114441%_)))
                                    (_%hd114436114496%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest114427114441%_))))
                                (if (pair? _%hd114436114496%_)
                                    (let ((_%tl114439114503%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd114436114496%_)))
                                          (_%hd114438114501%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd114436114496%_))))
                                      (if (null? _%tl114439114503%_)
                                          (let ((_%hd114506%_
                                                 _%hd114438114501%_)
                                                (_%rest114508%_
                                                 _%tl114437114498%_))
                                            (_%K114435114493%_
                                             _%rest114508%_
                                             _%hd114506%_))
                                          (let ((_%hd114481%_
                                                 _%hd114436114496%_)
                                                (_%rest114483%_
                                                 _%tl114437114498%_))
                                            (_%K114432114473%_
                                             _%rest114483%_
                                             _%hd114481%_))))
                                    (let ((_%hd114481%_ _%hd114436114496%_)
                                          (_%rest114483%_ _%tl114437114498%_))
                                      (_%K114432114473%_
                                       _%rest114483%_
                                       _%hd114481%_))))
                              (_%else114430114449%_)))))))
                 (_%compile-bind114269%_
                  (lambda (_%bind114413%_ _%post114414%_ _%body114415%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind114413%_)
                                 (cons (_%compile-post114270%_
                                        _%post114414%_
                                        _%body114415%_)
                                       '())))
                     _%stx114265%_)))
                 (_%compile-post114270%_
                  (lambda (_%post114272%_ _%body114273%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp116036
                                  (let ((__tmp116038
                                         (lambda (_%hd114275%_ _%r114276%_)
                                           (let* ((_%hd114277114300%_
                                                   _%hd114275%_)
                                                  (_%E114281114304%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd114277114300%_
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
                                             (let ((_%K114294114398%_
                                                    (lambda (_%expr114396%_)
                                                      (cons _%expr114396%_
                                                            _%r114276%_)))
                                                   (_%K114289114376%_
                                                    (lambda (_%expr114373%_
                                                             _%id114374%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id114374%_ (cons _%expr114373%_ '())))
                     _%stx114265%_)
                    _%r114276%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K114282114343%_
                                                    (lambda (_%init114308%_
                                                             _%len114309%_
                                                             _%expr114310%_
                                                             _%tmp114311%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp114311%_
                                             (cons _%expr114310%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp114311%_
                                                    (cons _%len114309%_ '())))
                                        _%stx114265%_)
                                       (let ((__tmp116039
                                              (map (lambda (_%hd114313%_)
                                                     (let* ((_%hd114314114321%_
                                                             _%hd114313%_)
                                                            (_%E114316114325%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd114314114321%_
                                '([id . k])))
                       '#!void))
                    (_%K114317114331%_
                     (lambda (_%k114328%_ _%id114329%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id114329%_
                                    (cons (cons '##values-ref
                                                (cons _%tmp114311%_
                                                      (cons _%k114328%_ '())))
                                          '())))
                        _%stx114265%_))))
               (if (pair? _%hd114314114321%_)
                   (let ((_%hd114318114334%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd114314114321%_)))
                         (_%tl114319114336%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd114314114321%_))))
                     (let* ((_%id114339%_ _%hd114318114334%_)
                            (_%k114341%_ _%tl114319114336%_))
                       (_%K114317114331%_ _%k114341%_ _%id114339%_)))
                   (_%E114316114325%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init114308%_)))
                                         (declare (not safe))
                                         (__foldr1 cons '() __tmp116039)))))
                     _%stx114265%_)
                    _%r114276%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match115892115893%_
                                                       (lambda (_%hd114283114346%_
                                                                _%tl114284114348%_
                                                                _%hd114285114353%_
                                                                _%tl114286114355%_)
                                                         (let ((_%tmp114351%_
                                                                _%hd114283114346%_)
                                                               (_%expr114358%_
                                                                _%hd114285114353%_))
                                                           (_%E114281114304%_))))
                                                      (_%__match115886115887%_
                                                       (lambda (_%hd114283114346%_
                                                                _%tl114284114348%_)
                                                         (let ((_%tmp114351%_
                                                                _%hd114283114346%_))
                                                           (_%E114281114304%_)))))
                                                 (if (pair? _%hd114277114300%_)
                                                     (let ((_%tl114296114403%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd114277114300%_)))
                                                           (_%hd114295114401%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd114277114300%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd114295114401%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%tl114296114403%_)
                       (let ((_%tl114298114408%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl114296114403%_)))
                             (_%hd114297114406%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl114296114403%_))))
                         (if (null? _%tl114298114408%_)
                             (let ((_%expr114411%_ _%hd114297114406%_))
                               (_%K114294114398%_ _%expr114411%_))
                             (if (pair? _%tl114298114408%_)
                                 (let ((_%tl114288114362%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl114298114408%_)))
                                       (_%hd114287114360%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl114298114408%_))))
                                   (let ((_%tmp114351%_ _%hd114295114401%_)
                                         (_%expr114358%_ _%hd114297114406%_)
                                         (_%len114365%_ _%hd114287114360%_)
                                         (_%init114367%_ _%tl114288114362%_))
                                     (_%K114282114343%_
                                      _%init114367%_
                                      _%len114365%_
                                      _%expr114358%_
                                      _%tmp114351%_)))
                                 (_%__match115892115893%_
                                  _%hd114295114401%_
                                  _%tl114296114403%_
                                  _%hd114297114406%_
                                  _%tl114298114408%_))))
                       (_%__match115886115887%_
                        _%hd114295114401%_
                        _%tl114296114403%_))
                   (if (pair? _%tl114296114403%_)
                       (let ((_%tl114293114388%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl114296114403%_)))
                             (_%hd114292114386%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl114296114403%_))))
                         (if (null? _%tl114293114388%_)
                             (let ((_%id114384%_ _%hd114295114401%_)
                                   (_%expr114391%_ _%hd114292114386%_))
                               (_%K114289114376%_ _%expr114391%_ _%id114384%_))
                             (if (pair? _%tl114293114388%_)
                                 (let ((_%tl114288114362%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl114293114388%_)))
                                       (_%hd114287114360%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl114293114388%_))))
                                   (let ((_%tmp114351%_ _%hd114295114401%_)
                                         (_%expr114358%_ _%hd114292114386%_)
                                         (_%len114365%_ _%hd114287114360%_)
                                         (_%init114367%_ _%tl114288114362%_))
                                     (_%K114282114343%_
                                      _%init114367%_
                                      _%len114365%_
                                      _%expr114358%_
                                      _%tmp114351%_)))
                                 (_%__match115892115893%_
                                  _%hd114295114401%_
                                  _%tl114296114403%_
                                  _%hd114292114386%_
                                  _%tl114293114388%_))))
                       (_%__match115886115887%_
                        _%hd114295114401%_
                        _%tl114296114403%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E114281114304%_)))))))
                                        (__tmp116037 (list _%body114273%_)))
                                    (declare (not safe))
                                    (__foldl1
                                     __tmp116038
                                     __tmp116037
                                     _%post114272%_))))
                             (declare (not safe))
                             (__foldr1 cons '() __tmp116036)))
                     _%stx114265%_))))
          (__compile-let-form
           _%stx114265%_
           _%compile-simple114267%_
           _%compile-values114268%_))))
    (define __compile-call%
      (lambda (_%stx114225%_)
        (let* ((_%$e114227%_ _%stx114225%_)
               (_%$E114229114238%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114227%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114227%_))
              (let* ((_%$tgt114230114241%_
                      (let () (declare (not safe)) (__AST-e _%$e114227%_)))
                     (_%$hd114231114244%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114230114241%_)))
                     (_%$tl114232114247%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114230114241%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114232114247%_))
                    (let* ((_%$tgt114233114251%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114232114247%_)))
                           (_%$hd114234114254%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114233114251%_)))
                           (_%$tl114235114257%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114233114251%_)))
                           (_%rator114261%_ _%$hd114234114254%_)
                           (_%rands114263%_ _%$tl114235114257%_))
                      (__SRC__%
                       (cons (__compile _%rator114261%_)
                             (map __compile _%rands114263%_))
                       _%stx114225%_))
                    (_%$E114229114238%_)))
              (_%$E114229114238%_)))))
    (define __compile-ref%
      (lambda (_%stx114187%_)
        (let* ((_%$e114189%_ _%stx114187%_)
               (_%$E114191114200%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114189%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114189%_))
              (let* ((_%$tgt114192114203%_
                      (let () (declare (not safe)) (__AST-e _%$e114189%_)))
                     (_%$hd114193114206%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114192114203%_)))
                     (_%$tl114194114209%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114192114203%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114194114209%_))
                    (let* ((_%$tgt114195114213%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114194114209%_)))
                           (_%$hd114196114216%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114195114213%_)))
                           (_%$tl114197114219%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114195114213%_)))
                           (_%id114223%_ _%$hd114196114216%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl114197114219%_))
                                  '())
                          (__SRC__% _%id114223%_ _%stx114187%_)
                          (_%$E114191114200%_)))
                    (_%$E114191114200%_)))
              (_%$E114191114200%_)))))
    (define __compile-setq%
      (lambda (_%stx114134%_)
        (let* ((_%$e114136%_ _%stx114134%_)
               (_%$E114138114150%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114136%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114136%_))
              (let* ((_%$tgt114139114153%_
                      (let () (declare (not safe)) (__AST-e _%$e114136%_)))
                     (_%$hd114140114156%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114139114153%_)))
                     (_%$tl114141114159%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114139114153%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114141114159%_))
                    (let* ((_%$tgt114142114163%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114141114159%_)))
                           (_%$hd114143114166%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114142114163%_)))
                           (_%$tl114144114169%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114142114163%_)))
                           (_%id114173%_ _%$hd114143114166%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl114144114169%_))
                          (let* ((_%$tgt114145114175%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl114144114169%_)))
                                 (_%$hd114146114178%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt114145114175%_)))
                                 (_%$tl114147114181%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt114145114175%_)))
                                 (_%expr114185%_ _%$hd114146114178%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl114147114181%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id114173%_
                                              _%stx114134%_)
                                             (cons (__compile _%expr114185%_)
                                                   '())))
                                 _%stx114134%_)
                                (_%$E114138114150%_)))
                          (_%$E114138114150%_)))
                    (_%$E114138114150%_)))
              (_%$E114138114150%_)))))
    (define __compile-if%
      (lambda (_%stx114066%_)
        (let* ((_%$e114068%_ _%stx114066%_)
               (_%$E114070114085%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114068%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114068%_))
              (let* ((_%$tgt114071114088%_
                      (let () (declare (not safe)) (__AST-e _%$e114068%_)))
                     (_%$hd114072114091%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114071114088%_)))
                     (_%$tl114073114094%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114071114088%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114073114094%_))
                    (let* ((_%$tgt114074114098%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114073114094%_)))
                           (_%$hd114075114101%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114074114098%_)))
                           (_%$tl114076114104%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114074114098%_)))
                           (_%p114108%_ _%$hd114075114101%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl114076114104%_))
                          (let* ((_%$tgt114077114110%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl114076114104%_)))
                                 (_%$hd114078114113%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt114077114110%_)))
                                 (_%$tl114079114116%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt114077114110%_)))
                                 (_%t114120%_ _%$hd114078114113%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl114079114116%_))
                                (let* ((_%$tgt114080114122%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl114079114116%_)))
                                       (_%$hd114081114125%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt114080114122%_)))
                                       (_%$tl114082114128%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt114080114122%_)))
                                       (_%f114132%_ _%$hd114081114125%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl114082114128%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p114108%_)
                                                   (cons (__compile
                                                          _%t114120%_)
                                                         (cons (__compile
                                                                _%f114132%_)
                                                               '()))))
                                       _%stx114066%_)
                                      (_%$E114070114085%_)))
                                (_%$E114070114085%_)))
                          (_%$E114070114085%_)))
                    (_%$E114070114085%_)))
              (_%$E114070114085%_)))))
    (define __compile-quote%
      (lambda (_%stx114028%_)
        (let* ((_%$e114030%_ _%stx114028%_)
               (_%$E114032114041%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114030%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114030%_))
              (let* ((_%$tgt114033114044%_
                      (let () (declare (not safe)) (__AST-e _%$e114030%_)))
                     (_%$hd114034114047%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114033114044%_)))
                     (_%$tl114035114050%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114033114044%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114035114050%_))
                    (let* ((_%$tgt114036114054%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114035114050%_)))
                           (_%$hd114037114057%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114036114054%_)))
                           (_%$tl114038114060%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114036114054%_)))
                           (_%e114064%_ _%$hd114037114057%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl114038114060%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e114064%_))
                                       '()))
                           _%stx114028%_)
                          (_%$E114032114041%_)))
                    (_%$E114032114041%_)))
              (_%$E114032114041%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx113990%_)
        (let* ((_%$e113992%_ _%stx113990%_)
               (_%$E113994114003%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113992%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113992%_))
              (let* ((_%$tgt113995114006%_
                      (let () (declare (not safe)) (__AST-e _%$e113992%_)))
                     (_%$hd113996114009%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt113995114006%_)))
                     (_%$tl113997114012%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt113995114006%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl113997114012%_))
                    (let* ((_%$tgt113998114016%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl113997114012%_)))
                           (_%$hd113999114019%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt113998114016%_)))
                           (_%$tl114000114022%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt113998114016%_)))
                           (_%e114026%_ _%$hd113999114019%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl114000114022%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e114026%_ '()))
                           _%stx113990%_)
                          (_%$E113994114003%_)))
                    (_%$E113994114003%_)))
              (_%$E113994114003%_)))))
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

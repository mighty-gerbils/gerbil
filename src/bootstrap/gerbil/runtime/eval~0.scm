(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1712507489)
  (begin
    (define __syntax::t
      (let ((__tmp111726 (list)) (__tmp111725 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp111726
         '(e id)
         __tmp111725
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args111530%_
        (apply make-instance __syntax::t _%$args111530%_)))
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
      (let ((__tmp111728 (list __syntax::t))
            (__tmp111727 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp111728
         '()
         __tmp111727
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args111527%_
        (apply make-instance __core-form::t _%$args111527%_)))
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
      (let ((__tmp111730 (list __core-form::t))
            (__tmp111729 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp111730
         '()
         __tmp111729
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args111524%_
        (apply make-instance __core-expression::t _%$args111524%_)))
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
      (let ((__tmp111732 (list __core-form::t))
            (__tmp111731 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp111732
         '()
         __tmp111731
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args111521%_
        (apply make-instance __core-special-form::t _%$args111521%_)))
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
      (lambda (_%id111519%_)
        (let ((__tmp111733
               (let () (declare (not safe)) (__AST-e _%id111519%_))))
          (declare (not safe))
          (hash-get __core __tmp111733))))
    (define __core-bound-id?__%
      (lambda (_%id111502%_ _%is?111503%_)
        (let ((_%$e111505%_
               (let () (declare (not safe)) (__core-resolve _%id111502%_))))
          (if _%$e111505%_ (_%is?111503%_ _%$e111505%_) (let () '#f)))))
    (define __core-bound-id?__0
      (lambda (_%id111512%_)
        (let ((_%is?111514%_ true))
          (declare (not safe))
          (__core-bound-id?__% _%id111512%_ _%is?111514%_))))
    (define __core-bound-id?
      (lambda _g111735_
        (let ((_g111734_ (let () (declare (not safe)) (##length _g111735_))))
          (cond ((let () (declare (not safe)) (##fx= _g111734_ 1))
                 (apply (lambda (_%id111512%_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _%id111512%_)))
                        _g111735_))
                ((let () (declare (not safe)) (##fx= _g111734_ 2))
                 (apply (lambda (_%id111516%_ _%is?111517%_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _%id111516%_ _%is?111517%_)))
                        _g111735_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g111735_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id111485%_ _%e111486%_ _%make111487%_)
        (let ((__tmp111736
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e111486%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e111486%_
                   (_%make111487%_ _%e111486%_ _%id111485%_))))
          (declare (not safe))
          (hash-put! __core _%id111485%_ __tmp111736))))
    (define __core-bind-syntax!__0
      (lambda (_%id111492%_ _%e111493%_)
        (let ((_%make111495%_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _%id111492%_ _%e111493%_ _%make111495%_))))
    (define __core-bind-syntax!
      (lambda _g111738_
        (let ((_g111737_ (let () (declare (not safe)) (##length _g111738_))))
          (cond ((let () (declare (not safe)) (##fx= _g111737_ 2))
                 (apply (lambda (_%id111492%_ _%e111493%_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _%id111492%_ _%e111493%_)))
                        _g111738_))
                ((let () (declare (not safe)) (##fx= _g111737_ 3))
                 (apply (lambda (_%id111497%_ _%e111498%_ _%make111499%_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _%id111497%_
                             _%e111498%_
                             _%make111499%_)))
                        _g111738_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g111738_))))))
    (define __SRC__%
      (lambda (_%e111465%_ _%src-stx111466%_)
        (if (or (let () (declare (not safe)) (pair? _%e111465%_))
                (let () (declare (not safe)) (symbol? _%e111465%_)))
            (let ((__tmp111739
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx111466%_
                          'gerbil#AST::t))
                       (let ((__tmp111740
                              (let ()
                                (declare (not safe))
                                (__AST-source _%src-stx111466%_))))
                         (declare (not safe))
                         (__locat __tmp111740))
                       '#f)))
              (declare (not safe))
              (##make-source _%e111465%_ __tmp111739))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e111465%_ 'gerbil#AST::t))
                (let ((__tmp111743
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e111465%_ '1 '#f '#f)))
                      (__tmp111741
                       (let ((__tmp111742
                              (let ()
                                (declare (not safe))
                                (__AST-source _%e111465%_))))
                         (declare (not safe))
                         (__locat __tmp111742))))
                  (declare (not safe))
                  (##make-source __tmp111743 __tmp111741))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e111465%_))))))
    (define __SRC__0
      (lambda (_%e111477%_)
        (let ((_%src-stx111479%_ '#f))
          (declare (not safe))
          (__SRC__% _%e111477%_ _%src-stx111479%_))))
    (define __SRC
      (lambda _g111745_
        (let ((_g111744_ (let () (declare (not safe)) (##length _g111745_))))
          (cond ((let () (declare (not safe)) (##fx= _g111744_ 1))
                 (apply (lambda (_%e111477%_)
                          (let () (declare (not safe)) (__SRC__0 _%e111477%_)))
                        _g111745_))
                ((let () (declare (not safe)) (##fx= _g111744_ 2))
                 (apply (lambda (_%e111481%_ _%src-stx111482%_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _%e111481%_ _%src-stx111482%_)))
                        _g111745_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g111745_))))))
    (define __locat
      (lambda (_%loc111462%_)
        (if (let () (declare (not safe)) (##locat? _%loc111462%_))
            _%loc111462%_
            '#f)))
    (define __check-values
      (lambda (_%obj111457%_ _%k111458%_)
        (let ((_%count111460%_
               (if (let () (declare (not safe)) (##values? _%obj111457%_))
                   (let ()
                     (declare (not safe))
                     (##vector-length _%obj111457%_))
                   '1)))
          (if (fx= _%count111460%_ _%k111458%_)
              '#!void
              (let ((__tmp111747
                     (if (fx< _%count111460%_ _%k111458%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp111746
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj111457%_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _%obj111457%_))
                         _%obj111457%_)))
                (declare (not safe))
                (error __tmp111747 __tmp111746 _%k111458%_))))))
    (define __compile
      (lambda (_%stx111426%_)
        (let* ((_%$e111428%_ _%stx111426%_)
               (_%$E111430111436%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111428%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111428%_))
              (let* ((_%$tgt111431111439%_
                      (let () (declare (not safe)) (__AST-e _%$e111428%_)))
                     (_%$hd111432111442%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111431111439%_)))
                     (_%$tl111433111445%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111431111439%_))))
                (let* ((_%form111449%_ _%$hd111432111442%_)
                       (_%$e111451%_
                        (let ()
                          (declare (not safe))
                          (__core-resolve _%form111449%_))))
                  (if _%$e111451%_
                      ((lambda (_%bind111454%_)
                         ((##structure-ref _%bind111454%_ '1 __syntax::t '#f)
                          _%stx111426%_))
                       _%$e111451%_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _%stx111426%_
                         _%form111449%_)))))
              (let () (declare (not safe)) (_%$E111430111436%_))))))
    (define __compile-error__%
      (lambda (_%stx111413%_ _%detail111414%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx111413%_
           _%detail111414%_))))
    (define __compile-error__0
      (lambda (_%stx111419%_)
        (let ((_%detail111421%_ '#f))
          (declare (not safe))
          (__compile-error__% _%stx111419%_ _%detail111421%_))))
    (define __compile-error
      (lambda _g111749_
        (let ((_g111748_ (let () (declare (not safe)) (##length _g111749_))))
          (cond ((let () (declare (not safe)) (##fx= _g111748_ 1))
                 (apply (lambda (_%stx111419%_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _%stx111419%_)))
                        _g111749_))
                ((let () (declare (not safe)) (##fx= _g111748_ 2))
                 (apply (lambda (_%stx111423%_ _%detail111424%_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__%
                             _%stx111423%_
                             _%detail111424%_)))
                        _g111749_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g111749_))))))
    (define __compile-ignore%
      (lambda (_%stx111410%_)
        (let () (declare (not safe)) (__SRC__% ''#!void _%stx111410%_))))
    (define __compile-begin%
      (lambda (_%stx111385%_)
        (let* ((_%$e111387%_ _%stx111385%_)
               (_%$E111389111395%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111387%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111387%_))
              (let* ((_%$tgt111390111398%_
                      (let () (declare (not safe)) (__AST-e _%$e111387%_)))
                     (_%$hd111391111401%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111390111398%_)))
                     (_%$tl111392111404%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111390111398%_))))
                (let* ((_%body111408%_ _%$tl111392111404%_)
                       (__tmp111750
                        (cons 'begin (map __compile _%body111408%_))))
                  (declare (not safe))
                  (__SRC__% __tmp111750 _%stx111385%_)))
              (let () (declare (not safe)) (_%$E111389111395%_))))))
    (define __compile-begin-foreign%
      (lambda (_%stx111360%_)
        (let* ((_%$e111362%_ _%stx111360%_)
               (_%$E111364111370%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111362%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111362%_))
              (let* ((_%$tgt111365111373%_
                      (let () (declare (not safe)) (__AST-e _%$e111362%_)))
                     (_%$hd111366111376%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111365111373%_)))
                     (_%$tl111367111379%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111365111373%_))))
                (let* ((_%body111383%_ _%$tl111367111379%_)
                       (__tmp111751
                        (cons 'begin
                              (let ()
                                (declare (not safe))
                                (__AST->datum _%body111383%_)))))
                  (declare (not safe))
                  (__SRC__% __tmp111751 _%stx111360%_)))
              (let () (declare (not safe)) (_%$E111364111370%_))))))
    (define __compile-import%
      (lambda (_%stx111335%_)
        (let* ((_%$e111337%_ _%stx111335%_)
               (_%$E111339111345%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111337%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111337%_))
              (let* ((_%$tgt111340111348%_
                      (let () (declare (not safe)) (__AST-e _%$e111337%_)))
                     (_%$hd111341111351%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111340111348%_)))
                     (_%$tl111342111354%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111340111348%_))))
                (let* ((_%body111358%_ _%$tl111342111354%_)
                       (__tmp111752
                        (cons '__eval-import
                              (cons (cons 'quote (cons _%body111358%_ '()))
                                    '()))))
                  (declare (not safe))
                  (__SRC__% __tmp111752 _%stx111335%_)))
              (let () (declare (not safe)) (_%$E111339111345%_))))))
    (define __compile-begin-annotation%
      (lambda (_%stx111282%_)
        (let* ((_%$e111284%_ _%stx111282%_)
               (_%$E111286111298%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111284%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111284%_))
              (let* ((_%$tgt111287111301%_
                      (let () (declare (not safe)) (__AST-e _%$e111284%_)))
                     (_%$hd111288111304%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111287111301%_)))
                     (_%$tl111289111307%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111287111301%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111289111307%_))
                    (let* ((_%$tgt111290111311%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111289111307%_)))
                           (_%$hd111291111314%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111290111311%_)))
                           (_%$tl111292111317%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111290111311%_)))
                           (_%ann111321%_ _%$hd111291111314%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl111292111317%_))
                          (let* ((_%$tgt111293111323%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111292111317%_)))
                                 (_%$hd111294111326%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111293111323%_)))
                                 (_%$tl111295111329%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111293111323%_)))
                                 (_%expr111333%_ _%$hd111294111326%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl111295111329%_))
                                        '())
                                (let ()
                                  (declare (not safe))
                                  (__compile _%expr111333%_))
                                (let ()
                                  (declare (not safe))
                                  (_%$E111286111298%_))))
                          (let () (declare (not safe)) (_%$E111286111298%_))))
                    (let () (declare (not safe)) (_%$E111286111298%_))))
              (let () (declare (not safe)) (_%$E111286111298%_))))))
    (define __compile-define-values%
      (lambda (_%stx111173%_)
        (let* ((_%$e111175%_ _%stx111173%_)
               (_%$E111177111189%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111175%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111175%_))
              (let* ((_%$tgt111178111192%_
                      (let () (declare (not safe)) (__AST-e _%$e111175%_)))
                     (_%$hd111179111195%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111178111192%_)))
                     (_%$tl111180111198%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111178111192%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111180111198%_))
                    (let* ((_%$tgt111181111202%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111180111198%_)))
                           (_%$hd111182111205%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111181111202%_)))
                           (_%$tl111183111208%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111181111202%_)))
                           (_%hd111212%_ _%$hd111182111205%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl111183111208%_))
                          (let* ((_%$tgt111184111214%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111183111208%_)))
                                 (_%$hd111185111217%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111184111214%_)))
                                 (_%$tl111186111220%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111184111214%_)))
                                 (_%expr111224%_ _%$hd111185111217%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl111186111220%_))
                                        '())
                                (let* ((_%$e111226%_ _%hd111212%_)
                                       (_%$E111228111269%_
                                        (lambda ()
                                          (let ((_%$E111229111254%_
                                                 (lambda ()
                                                   (let* ((_%$E111230111241%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e111226%_))))
                  (_%ids111244%_ _%hd111212%_)
                  (_%len111246%_ (length _%ids111244%_))
                  (_%tmp111248%_
                   (let ((__tmp111753
                          (let () (declare (not safe)) (##gensym))))
                     (declare (not safe))
                     (__SRC__0 __tmp111753)))
                  (__tmp111754
                   (cons 'begin
                         (cons (let ((__tmp111755
                                      (cons 'define
                                            (cons _%tmp111248%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (__compile
                                                           _%expr111224%_))
                                                        '())))))
                                 (declare (not safe))
                                 (__SRC__% __tmp111755 _%stx111173%_))
                               (cons (let ((__tmp111756
                                            (cons '__check-values
                                                  (cons _%tmp111248%_
                                                        (cons _%len111246%_
                                                              '())))))
                                       (declare (not safe))
                                       (__SRC__% __tmp111756 _%stx111173%_))
                                     (let ((__tmp111757
                                            (let ((__tmp111759
                                                   (lambda (_%id111251%_
                                                            _%k111252%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id111251%_))
                                                         (let ((__tmp111760
                                                                (cons 'define
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (__SRC__0 _%id111251%_))
                                    (cons (cons '##vector-ref
                                                (cons _%tmp111248%_
                                                      (cons _%k111252%_ '())))
                                          '())))))
                   (declare (not safe))
                   (__SRC__% __tmp111760 _%stx111173%_))
                 '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp111758
                                                   (let ()
                                                     (declare (not safe))
                                                     (##iota _%len111246%_))))
                                              (declare (not safe))
                                              (__filter-map2
                                               __tmp111759
                                               _%ids111244%_
                                               __tmp111758))))
                                       (declare (not safe))
                                       (__foldr1 cons '() __tmp111757)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__SRC__%
                                                      __tmp111754
                                                      _%stx111173%_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e111226%_))
                                                (let* ((_%$tgt111231111257%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e111226%_)))
                                                       (_%$hd111232111260%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt111231111257%_)))
                                                       (_%$tl111233111263%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt111231111257%_)))
                                                       (_%id111267%_
                                                        _%$hd111232111260%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl111233111263%_))
                      '())
              (let ((__tmp111761
                     (cons 'define
                           (cons (let ()
                                   (declare (not safe))
                                   (__SRC__0 _%id111267%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (__compile _%expr111224%_))
                                       '())))))
                (declare (not safe))
                (__SRC__% __tmp111761 _%stx111173%_))
              (let () (declare (not safe)) (_%$E111229111254%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$E111229111254%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e111226%_))
                                      (let* ((_%$tgt111234111272%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e111226%_)))
                                             (_%$hd111235111275%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt111234111272%_)))
                                             (_%$tl111236111278%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt111234111272%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd111235111275%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl111236111278%_))
                                                        '())
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _%expr111224%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$E111228111269%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$E111228111269%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$E111228111269%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%$E111177111189%_))))
                          (let () (declare (not safe)) (_%$E111177111189%_))))
                    (let () (declare (not safe)) (_%$E111177111189%_))))
              (let () (declare (not safe)) (_%$E111177111189%_))))))
    (define __compile-head-id
      (lambda (_%e111171%_)
        (let ((__tmp111762
               (if (let () (declare (not safe)) (__AST-e _%e111171%_))
                   _%e111171%_
                   (let () (declare (not safe)) (##gensym)))))
          (declare (not safe))
          (__SRC__0 __tmp111762))))
    (define __compile-lambda-head
      (lambda (_%hd111128%_)
        (let _%recur111130%_ ((_%rest111132%_ _%hd111128%_))
          (let* ((_%$e111134%_ _%rest111132%_)
                 (_%$E111136111154%_
                  (lambda ()
                    (let ((_%$E111137111151%_
                           (lambda ()
                             (let* ((_%$E111138111146%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e111134%_))))
                                    (_%tail111149%_ _%$e111134%_))
                               (declare (not safe))
                               (__compile-head-id _%tail111149%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e111134%_))
                                  '())
                          '()
                          (let ()
                            (declare (not safe))
                            (_%$E111137111151%_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e111134%_))
                (let* ((_%$tgt111139111157%_
                        (let () (declare (not safe)) (__AST-e _%$e111134%_)))
                       (_%$hd111140111160%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt111139111157%_)))
                       (_%$tl111141111163%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt111139111157%_))))
                  (let* ((_%hd111167%_ _%$hd111140111160%_)
                         (_%rest111169%_ _%$tl111141111163%_))
                    (cons (let ()
                            (declare (not safe))
                            (__compile-head-id _%hd111167%_))
                          (let ()
                            (declare (not safe))
                            (_%recur111130%_ _%rest111169%_)))))
                (let () (declare (not safe)) (_%$E111136111154%_)))))))
    (define __compile-lambda%
      (lambda (_%stx111075%_)
        (let* ((_%$e111077%_ _%stx111075%_)
               (_%$E111079111091%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111077%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111077%_))
              (let* ((_%$tgt111080111094%_
                      (let () (declare (not safe)) (__AST-e _%$e111077%_)))
                     (_%$hd111081111097%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111080111094%_)))
                     (_%$tl111082111100%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111080111094%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111082111100%_))
                    (let* ((_%$tgt111083111104%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111082111100%_)))
                           (_%$hd111084111107%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111083111104%_)))
                           (_%$tl111085111110%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111083111104%_)))
                           (_%hd111114%_ _%$hd111084111107%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl111085111110%_))
                          (let* ((_%$tgt111086111116%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111085111110%_)))
                                 (_%$hd111087111119%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111086111116%_)))
                                 (_%$tl111088111122%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111086111116%_)))
                                 (_%body111126%_ _%$hd111087111119%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl111088111122%_))
                                        '())
                                (let ((__tmp111763
                                       (cons 'lambda
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (__compile-lambda-head
                                                      _%hd111114%_))
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__compile
                                                            _%body111126%_))
                                                         '())))))
                                  (declare (not safe))
                                  (__SRC__% __tmp111763 _%stx111075%_))
                                (let ()
                                  (declare (not safe))
                                  (_%$E111079111091%_))))
                          (let () (declare (not safe)) (_%$E111079111091%_))))
                    (let () (declare (not safe)) (_%$E111079111091%_))))
              (let () (declare (not safe)) (_%$E111079111091%_))))))
    (define __compile-case-lambda%
      (lambda (_%stx110867%_)
        (letrec ((_%variadic?110869%_
                  (lambda (_%hd111040%_)
                    (let* ((_%$e111042%_ _%hd111040%_)
                           (_%$E111044111060%_
                            (lambda ()
                              (let ((_%$E111045111057%_
                                     (lambda ()
                                       (let ((_%$E111046111054%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e111042%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e111042%_))
                                            '())
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_%$E111045111057%_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e111042%_))
                          (let* ((_%$tgt111047111063%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e111042%_)))
                                 (_%$hd111048111066%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111047111063%_)))
                                 (_%$tl111049111069%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111047111063%_)))
                                 (_%rest111073%_ _%$tl111049111069%_))
                            (declare (not safe))
                            (_%variadic?110869%_ _%rest111073%_))
                          (let ()
                            (declare (not safe))
                            (_%$E111044111060%_))))))
                 (_%arity110870%_
                  (lambda (_%hd111005%_)
                    (let _%lp111007%_ ((_%rest111009%_ _%hd111005%_)
                                       (_%k111010%_ '0))
                      (let* ((_%$e111012%_ _%rest111009%_)
                             (_%$E111014111025%_
                              (lambda ()
                                (let ((_%$E111015111022%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e111012%_)))))
                                  _%k111010%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e111012%_))
                            (let* ((_%$tgt111016111028%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e111012%_)))
                                   (_%$hd111017111031%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt111016111028%_)))
                                   (_%$tl111018111034%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt111016111028%_))))
                              (let* ((_%rest111038%_ _%$tl111018111034%_)
                                     (__tmp111764
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%k111010%_ '1))))
                                (declare (not safe))
                                (_%lp111007%_ _%rest111038%_ __tmp111764)))
                            (let ()
                              (declare (not safe))
                              (_%$E111014111025%_)))))))
                 (_%generate110871%_
                  (lambda (_%rest110932%_ _%args110933%_ _%len110934%_)
                    (let* ((_%$e110936%_ _%rest110932%_)
                           (_%$E110938110949%_
                            (lambda ()
                              (let* ((_%$E110939110946%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _%$e110936%_))))
                                     (__tmp111765
                                      (cons 'error
                                            (cons '"No clause matching arguments"
                                                  (cons _%args110933%_ '())))))
                                (declare (not safe))
                                (__SRC__% __tmp111765 _%stx110867%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e110936%_))
                          (let* ((_%$tgt110940110952%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110936%_)))
                                 (_%$hd110941110955%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110940110952%_)))
                                 (_%$tl110942110958%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110940110952%_))))
                            (let* ((_%clause110962%_ _%$hd110941110955%_)
                                   (_%rest110964%_ _%$tl110942110958%_)
                                   (_%$e110966%_ _%clause110962%_)
                                   (_%$E110968110977%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _%$e110966%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _%$e110966%_))
                                  (let* ((_%$tgt110969110980%_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _%$e110966%_)))
                                         (_%$hd110970110983%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$tgt110969110980%_)))
                                         (_%$tl110971110986%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$tgt110969110980%_)))
                                         (_%hd110990%_ _%$hd110970110983%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _%$tl110971110986%_))
                                        (let* ((_%$tgt110972110992%_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _%$tl110971110986%_)))
                                               (_%$hd110973110995%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$tgt110972110992%_)))
                                               (_%$tl110974110998%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$tgt110972110992%_))))
                                          (if (equal? (let ()
                                                        (declare (not safe))
                                                        (__AST-e _%$tl110974110998%_))
                                                      '())
                                              (let ((_%clen111002%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%arity110870%_
                                                        _%hd110990%_)))
                                                    (_%cmp111003%_
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (_%variadic?110869%_
                                                            _%hd110990%_))
                                                         'fx>=
                                                         'fx=)))
                                                (let ((__tmp111766
                                                       (cons 'if
                                                             (cons (cons _%cmp111003%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%len110934%_
                                       (cons _%clen111002%_ '())))
                           (cons (let ((__tmp111767
                                        (cons '##apply
                                              (cons (let ((__tmp111768
                                                           (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause110962%_)))
              (declare (not safe))
              (__compile-lambda% __tmp111768))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%args110933%_
                                                          '())))))
                                   (declare (not safe))
                                   (__SRC__% __tmp111767 _%stx110867%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (_%generate110871%_
                                          _%rest110964%_
                                          _%args110933%_
                                          _%len110934%_))
                                       '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__SRC__%
                                                   __tmp111766
                                                   _%stx110867%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$E110968110977%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$E110968110977%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$E110968110977%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$E110938110949%_)))))))
          (let* ((_%$e110873%_ _%stx110867%_)
                 (_%$E110875110907%_
                  (lambda ()
                    (let ((_%$E110876110889%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e110873%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e110873%_))
                          (let* ((_%$tgt110877110892%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110873%_)))
                                 (_%$hd110878110895%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110877110892%_)))
                                 (_%$tl110879110898%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110877110892%_)))
                                 (_%clauses110902%_ _%$tl110879110898%_))
                            (let ((_%args110904%_
                                   (let ((__tmp111769
                                          (let ()
                                            (declare (not safe))
                                            (##gensym))))
                                     (declare (not safe))
                                     (__SRC__% __tmp111769 _%stx110867%_)))
                                  (_%len110905%_
                                   (let ((__tmp111770
                                          (let ()
                                            (declare (not safe))
                                            (##gensym))))
                                     (declare (not safe))
                                     (__SRC__% __tmp111770 _%stx110867%_))))
                              (let ((__tmp111771
                                     (cons 'lambda
                                           (cons _%args110904%_
                                                 (cons (let ((__tmp111772
                                                              (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (cons _%len110905%_
                                              (cons (let ((__tmp111773
                                                           (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%args110904%_ '()))))
              (declare (not safe))
              (__SRC__% __tmp111773 _%stx110867%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (let ()
                                          (declare (not safe))
                                          (_%generate110871%_
                                           _%clauses110902%_
                                           _%args110904%_
                                           _%len110905%_))
                                        '())))))
                 (declare (not safe))
                 (__SRC__% __tmp111772 _%stx110867%_))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (declare (not safe))
                                (__SRC__% __tmp111771 _%stx110867%_))))
                          (let ()
                            (declare (not safe))
                            (_%$E110876110889%_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e110873%_))
                (let* ((_%$tgt110880110910%_
                        (let () (declare (not safe)) (__AST-e _%$e110873%_)))
                       (_%$hd110881110913%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt110880110910%_)))
                       (_%$tl110882110916%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt110880110910%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl110882110916%_))
                      (let* ((_%$tgt110883110920%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl110882110916%_)))
                             (_%$hd110884110923%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt110883110920%_)))
                             (_%$tl110885110926%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt110883110920%_)))
                             (_%clause110930%_ _%$hd110884110923%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl110885110926%_))
                                    '())
                            (let ((__tmp111774
                                   (cons '%#lambda _%clause110930%_)))
                              (declare (not safe))
                              (__compile-lambda% __tmp111774))
                            (let ()
                              (declare (not safe))
                              (_%$E110875110907%_))))
                      (let () (declare (not safe)) (_%$E110875110907%_))))
                (let () (declare (not safe)) (_%$E110875110907%_)))))))
    (define __compile-let-form
      (lambda (_%stx110636%_ _%compile-simple110637%_ _%compile-values110638%_)
        (letrec ((_%simple-bind?110640%_
                  (lambda (_%hd110825%_)
                    (let* ((_%hd110826110836%_ _%hd110825%_)
                           (_%else110829110844%_ (lambda () '#f)))
                      (let ((_%K110832110857%_ (lambda (_%id110855%_) '#t))
                            (_%K110831110849%_ (lambda () '#t)))
                        (let ((_%try-match110828110852%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd110826110836%_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_%K110831110849%_))
                                     (let ()
                                       (declare (not safe))
                                       (_%else110829110844%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%hd110826110836%_))
                              (let ((_%tl110834110862%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd110826110836%_)))
                                    (_%hd110833110860%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd110826110836%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _%tl110834110862%_))
                                    (let ((_%id110865%_ _%hd110833110860%_))
                                      (declare (not safe))
                                      (_%K110832110857%_ _%id110865%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%try-match110828110852%_))))
                              (let ()
                                (declare (not safe))
                                (_%try-match110828110852%_))))))))
                 (_%car-e110641%_
                  (lambda (_%hd110823%_)
                    (if (let () (declare (not safe)) (pair? _%hd110823%_))
                        (car _%hd110823%_)
                        _%hd110823%_))))
          (let* ((_%$e110643%_ _%stx110636%_)
                 (_%$E110645110788%_
                  (lambda ()
                    (let ((_%$E110646110668%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e110643%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e110643%_))
                          (let* ((_%$tgt110647110671%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110643%_)))
                                 (_%$hd110648110674%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110647110671%_)))
                                 (_%$tl110649110677%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110647110671%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl110649110677%_))
                                (let* ((_%$tgt110650110681%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl110649110677%_)))
                                       (_%$hd110651110684%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt110650110681%_)))
                                       (_%$tl110652110687%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt110650110681%_)))
                                       (_%hd110691%_ _%$hd110651110684%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl110652110687%_))
                                      (let* ((_%$tgt110653110693%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl110652110687%_)))
                                             (_%$hd110654110696%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt110653110693%_)))
                                             (_%$tl110655110699%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt110653110693%_)))
                                             (_%body110703%_
                                              _%$hd110654110696%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl110655110699%_))
                                                    '())
                                            (let* ((_%hd-ids110743%_
                                                    (map (lambda (_%bind110705%_)
                                                           (let* ((_%$e110707%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind110705%_)
                          (_%$E110709110718%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e110707%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e110707%_))
                         (let* ((_%$tgt110710110721%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e110707%_)))
                                (_%$hd110711110724%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt110710110721%_)))
                                (_%$tl110712110727%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt110710110721%_)))
                                (_%ids110731%_ _%$hd110711110724%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl110712110727%_))
                               (let* ((_%$tgt110713110733%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl110712110727%_)))
                                      (_%$hd110714110736%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt110713110733%_)))
                                      (_%$tl110715110739%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt110713110733%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl110715110739%_))
                                             '())
                                     _%ids110731%_
                                     (let ()
                                       (declare (not safe))
                                       (_%$E110709110718%_))))
                               (let ()
                                 (declare (not safe))
                                 (_%$E110709110718%_))))
                         (let () (declare (not safe)) (_%$E110709110718%_)))))
                 _%hd110691%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs110783%_
                                                    (map (lambda (_%bind110745%_)
                                                           (let* ((_%$e110747%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind110745%_)
                          (_%$E110749110758%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e110747%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e110747%_))
                         (let* ((_%$tgt110750110761%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e110747%_)))
                                (_%$hd110751110764%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt110750110761%_)))
                                (_%$tl110752110767%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt110750110761%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl110752110767%_))
                               (let* ((_%$tgt110753110771%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl110752110767%_)))
                                      (_%$hd110754110774%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt110753110771%_)))
                                      (_%$tl110755110777%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt110753110771%_)))
                                      (_%expr110781%_ _%$hd110754110774%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl110755110777%_))
                                             '())
                                     (let ()
                                       (declare (not safe))
                                       (__compile _%expr110781%_))
                                     (let ()
                                       (declare (not safe))
                                       (_%$E110749110758%_))))
                               (let ()
                                 (declare (not safe))
                                 (_%$E110749110758%_))))
                         (let () (declare (not safe)) (_%$E110749110758%_)))))
                 _%hd110691%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body110785%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile
                                                       _%body110703%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__andmap1
                                                     _%simple-bind?110640%_
                                                     _%hd-ids110743%_))
                                                  (_%compile-simple110637%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e110641%_
                                                            _%hd-ids110743%_))
                                                   _%exprs110783%_
                                                   _%body110785%_)
                                                  (_%compile-values110638%_
                                                   _%hd-ids110743%_
                                                   _%exprs110783%_
                                                   _%body110785%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$E110646110668%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$E110646110668%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%$E110646110668%_))))
                          (let ()
                            (declare (not safe))
                            (_%$E110646110668%_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e110643%_))
                (let* ((_%$tgt110656110791%_
                        (let () (declare (not safe)) (__AST-e _%$e110643%_)))
                       (_%$hd110657110794%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt110656110791%_)))
                       (_%$tl110658110797%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt110656110791%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl110658110797%_))
                      (let* ((_%$tgt110659110801%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl110658110797%_)))
                             (_%$hd110660110804%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt110659110801%_)))
                             (_%$tl110661110807%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt110659110801%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd110660110804%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl110661110807%_))
                                (let* ((_%$tgt110662110811%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl110661110807%_)))
                                       (_%$hd110663110814%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt110662110811%_)))
                                       (_%$tl110664110817%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt110662110811%_)))
                                       (_%body110821%_ _%$hd110663110814%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl110664110817%_))
                                              '())
                                      (let ()
                                        (declare (not safe))
                                        (__compile _%body110821%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%$E110645110788%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%$E110645110788%_)))
                            (let ()
                              (declare (not safe))
                              (_%$E110645110788%_))))
                      (let () (declare (not safe)) (_%$E110645110788%_))))
                (let () (declare (not safe)) (_%$E110645110788%_)))))))
    (define __compile-let-values%
      (lambda (_%stx110448%_)
        (letrec ((_%compile-simple110450%_
                  (lambda (_%hd-ids110632%_ _%exprs110633%_ _%body110634%_)
                    (let ((__tmp111775
                           (cons 'let
                                 (cons (let ((__tmp111776
                                              (map __compile-head-id
                                                   _%hd-ids110632%_)))
                                         (declare (not safe))
                                         (##map list
                                                __tmp111776
                                                _%exprs110633%_))
                                       (cons _%body110634%_ '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111775 _%stx110448%_))))
                 (_%compile-values110451%_
                  (lambda (_%hd-ids110547%_ _%exprs110548%_ _%body110549%_)
                    (let _%lp110551%_ ((_%rest110553%_ _%hd-ids110547%_)
                                       (_%exprs110554%_ _%exprs110548%_)
                                       (_%bind110555%_ '())
                                       (_%post110556%_ '()))
                      (let* ((_%rest110557110571%_ _%rest110553%_)
                             (_%else110560110579%_
                              (lambda ()
                                (let ((__tmp111777
                                       (cons 'let
                                             (cons (reverse _%bind110555%_)
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (_%compile-post110452%_
                                                            _%post110556%_
                                                            _%body110549%_))
                                                         '())))))
                                  (declare (not safe))
                                  (__SRC__% __tmp111777 _%stx110448%_)))))
                        (let ((_%K110565110615%_
                               (lambda (_%rest110612%_ _%id110613%_)
                                 (let ((__tmp111779 (cdr _%exprs110554%_))
                                       (__tmp111778
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (__compile-head-id
                                                       _%id110613%_))
                                                    (cons (car _%exprs110554%_)
                                                          '()))
                                              _%bind110555%_)))
                                   (declare (not safe))
                                   (_%lp110551%_
                                    _%rest110612%_
                                    __tmp111779
                                    __tmp111778
                                    _%post110556%_))))
                              (_%K110562110597%_
                               (lambda (_%rest110583%_ _%hd110584%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd110584%_))
                                     (let ((__tmp111781 (cdr _%exprs110554%_))
                                           (__tmp111780
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (__compile-head-id
                                                           _%hd110584%_))
                                                        (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (car _%exprs110554%_) '()))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%bind110555%_)))
                                       (declare (not safe))
                                       (_%lp110551%_
                                        _%rest110583%_
                                        __tmp111781
                                        __tmp111780
                                        _%post110556%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _%hd110584%_))
                                         (let ()
                                           (let* ((_%len110588%_
                                                   (length _%hd110584%_))
                                                  (_%tmp110590%_
                                                   (let ((__tmp111782
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym))))
                                                     (declare (not safe))
                                                     (__SRC__0 __tmp111782))))
                                             (let ((__tmp111789
                                                    (cdr _%exprs110554%_))
                                                   (__tmp111788
                                                    (cons (cons _%tmp110590%_
                                                                (cons (car _%exprs110554%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%bind110555%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp111783
                                                    (cons (let ((__tmp111784
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp111785
                                (let ((__tmp111787
                                       (lambda (_%id110593%_ _%k110594%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id110593%_))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _%id110593%_))
                                                   _%k110594%_)
                                             '#f)))
                                      (__tmp111786
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len110588%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp111787
                                   _%hd110584%_
                                   __tmp111786))))
                           (declare (not safe))
                           (cons _%len110588%_ __tmp111785))))
                    (declare (not safe))
                    (cons _%tmp110590%_ __tmp111784))
                  _%post110556%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%lp110551%_
                                                _%rest110583%_
                                                __tmp111789
                                                __tmp111788
                                                __tmp111783))))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _%stx110448%_
                                            _%hd110584%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest110557110571%_))
                              (let ((_%tl110567110620%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest110557110571%_)))
                                    (_%hd110566110618%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest110557110571%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd110566110618%_))
                                    (let ((_%tl110569110625%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd110566110618%_)))
                                          (_%hd110568110623%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd110566110618%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl110569110625%_))
                                          (let ((_%id110628%_
                                                 _%hd110568110623%_)
                                                (_%rest110630%_
                                                 _%tl110567110620%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K110565110615%_
                                               _%rest110630%_
                                               _%id110628%_)))
                                          (let ((_%hd110605%_
                                                 _%hd110566110618%_)
                                                (_%rest110607%_
                                                 _%tl110567110620%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K110562110597%_
                                               _%rest110607%_
                                               _%hd110605%_)))))
                                    (let ((_%hd110605%_ _%hd110566110618%_)
                                          (_%rest110607%_ _%tl110567110620%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%K110562110597%_
                                         _%rest110607%_
                                         _%hd110605%_)))))
                              (let ()
                                (declare (not safe))
                                (_%else110560110579%_))))))))
                 (_%compile-post110452%_
                  (lambda (_%post110454%_ _%body110455%_)
                    (let _%lp110457%_ ((_%rest110459%_ _%post110454%_)
                                       (_%check110460%_ '())
                                       (_%bind110461%_ '()))
                      (let* ((_%rest110462110474%_ _%rest110459%_)
                             (_%else110464110482%_
                              (lambda ()
                                (let ((__tmp111790
                                       (cons 'begin
                                             (let ((__tmp111791
                                                    (cons (let ((__tmp111792
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons 'let
                               (cons _%bind110461%_
                                     (cons _%body110455%_ '())))))
                    (declare (not safe))
                    (__SRC__% __tmp111792 _%stx110448%_))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__foldr1
                                                cons
                                                __tmp111791
                                                _%check110460%_)))))
                                  (declare (not safe))
                                  (__SRC__% __tmp111790 _%stx110448%_))))
                             (_%K110466110521%_
                              (lambda (_%rest110485%_
                                       _%init110486%_
                                       _%len110487%_
                                       _%tmp110488%_)
                                (let ((__tmp111795
                                       (cons (let ((__tmp111796
                                                    (cons '__check-values
                                                          (cons _%tmp110488%_
                                                                (cons _%len110487%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp111796
                                                _%stx110448%_))
                                             _%check110460%_))
                                      (__tmp111793
                                       (let ((__tmp111794
                                              (lambda (_%hd110490%_
                                                       _%r110491%_)
                                                (let* ((_%hd110492110499%_
                                                        _%hd110490%_)
                                                       (_%E110494110503%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd110492110499%_
                           '([id . k])))
                  '#!void))
               (_%K110495110509%_
                (lambda (_%k110506%_ _%id110507%_)
                  (cons (cons _%id110507%_
                              (cons (cons '##vector-ref
                                          (cons _%tmp110488%_
                                                (cons _%k110506%_ '())))
                                    '()))
                        _%r110491%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd110492110499%_))
                                                      (let ((_%hd110496110512%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd110492110499%_)))
                    (_%tl110497110514%_
                     (let () (declare (not safe)) (##cdr _%hd110492110499%_))))
                (let* ((_%id110517%_ _%hd110496110512%_)
                       (_%k110519%_ _%tl110497110514%_))
                  (declare (not safe))
                  (_%K110495110509%_ _%k110519%_ _%id110517%_)))
              (let () (declare (not safe)) (_%E110494110503%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp111794
                                          _%bind110461%_
                                          _%init110486%_))))
                                  (declare (not safe))
                                  (_%lp110457%_
                                   _%rest110485%_
                                   __tmp111795
                                   __tmp111793)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest110462110474%_))
                            (let ((_%hd110467110524%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest110462110474%_)))
                                  (_%tl110468110526%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest110462110474%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd110467110524%_))
                                  (let ((_%hd110469110529%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd110467110524%_)))
                                        (_%tl110470110531%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd110467110524%_))))
                                    (let ((_%tmp110534%_ _%hd110469110529%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl110470110531%_))
                                          (let ((_%hd110471110536%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl110470110531%_)))
                                                (_%tl110472110538%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl110470110531%_))))
                                            (let* ((_%len110541%_
                                                    _%hd110471110536%_)
                                                   (_%init110543%_
                                                    _%tl110472110538%_)
                                                   (_%rest110545%_
                                                    _%tl110468110526%_))
                                              (declare (not safe))
                                              (_%K110466110521%_
                                               _%rest110545%_
                                               _%init110543%_
                                               _%len110541%_
                                               _%tmp110534%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%else110464110482%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%else110464110482%_))))
                            (let ()
                              (declare (not safe))
                              (_%else110464110482%_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _%stx110448%_
             _%compile-simple110450%_
             _%compile-values110451%_)))))
    (define __compile-letrec-values%
      (lambda (_%stx110245%_)
        (letrec ((_%compile-simple110247%_
                  (lambda (_%hd-ids110444%_ _%exprs110445%_ _%body110446%_)
                    (let ((__tmp111797
                           (cons 'letrec
                                 (cons (let ((__tmp111798
                                              (map __compile-head-id
                                                   _%hd-ids110444%_)))
                                         (declare (not safe))
                                         (##map list
                                                __tmp111798
                                                _%exprs110445%_))
                                       (cons _%body110446%_ '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111797 _%stx110245%_))))
                 (_%compile-values110248%_
                  (lambda (_%hd-ids110355%_ _%exprs110356%_ _%body110357%_)
                    (let _%lp110359%_ ((_%rest110361%_ _%hd-ids110355%_)
                                       (_%exprs110362%_ _%exprs110356%_)
                                       (_%pre110363%_ '())
                                       (_%bind110364%_ '())
                                       (_%post110365%_ '()))
                      (let* ((_%rest110366110380%_ _%rest110361%_)
                             (_%else110369110388%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_%compile-inner110249%_
                                   _%pre110363%_
                                   _%bind110364%_
                                   _%post110365%_
                                   _%body110357%_)))))
                        (let ((_%K110374110427%_
                               (lambda (_%rest110424%_ _%id110425%_)
                                 (let ((__tmp111800 (cdr _%exprs110362%_))
                                       (__tmp111799
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (__compile-head-id
                                                       _%id110425%_))
                                                    (cons (car _%exprs110362%_)
                                                          '()))
                                              _%bind110364%_)))
                                   (declare (not safe))
                                   (_%lp110359%_
                                    _%rest110424%_
                                    __tmp111800
                                    _%pre110363%_
                                    __tmp111799
                                    _%post110365%_))))
                              (_%K110371110409%_
                               (lambda (_%rest110392%_ _%hd110393%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd110393%_))
                                     (let ((__tmp111802 (cdr _%exprs110362%_))
                                           (__tmp111801
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (__compile-head-id
                                                           _%hd110393%_))
                                                        (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (car _%exprs110362%_) '()))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%bind110364%_)))
                                       (declare (not safe))
                                       (_%lp110359%_
                                        _%rest110392%_
                                        __tmp111802
                                        _%pre110363%_
                                        __tmp111801
                                        _%post110365%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _%hd110393%_))
                                         (let ()
                                           (let* ((_%len110397%_
                                                   (length _%hd110393%_))
                                                  (_%tmp110399%_
                                                   (let ((__tmp111803
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym))))
                                                     (declare (not safe))
                                                     (__SRC__0 __tmp111803))))
                                             (let ((__tmp111812
                                                    (cdr _%exprs110362%_))
                                                   (__tmp111810
                                                    (let ((__tmp111811
                                                           (lambda (_%id110402%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%r110403%_)
                     (if (let () (declare (not safe)) (__AST-e _%id110402%_))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (__SRC__0 _%id110402%_))
                                     (cons (cons 'quote (cons '#!void '()))
                                           '()))
                               _%r110403%_)
                         _%r110403%_))))
              (declare (not safe))
              (__foldl1 __tmp111811 _%pre110363%_ _%hd110393%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp111809
                                                    (cons (cons _%tmp110399%_
                                                                (cons (car _%exprs110362%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%bind110364%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp111804
                                                    (cons (let ((__tmp111805
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp111806
                                (let ((__tmp111808
                                       (lambda (_%id110405%_ _%k110406%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id110405%_))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _%id110405%_))
                                                   _%k110406%_)
                                             '#f)))
                                      (__tmp111807
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len110397%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp111808
                                   _%hd110393%_
                                   __tmp111807))))
                           (declare (not safe))
                           (cons _%len110397%_ __tmp111806))))
                    (declare (not safe))
                    (cons _%tmp110399%_ __tmp111805))
                  _%post110365%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%lp110359%_
                                                _%rest110392%_
                                                __tmp111812
                                                __tmp111810
                                                __tmp111809
                                                __tmp111804))))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _%stx110245%_
                                            _%hd110393%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest110366110380%_))
                              (let ((_%tl110376110432%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest110366110380%_)))
                                    (_%hd110375110430%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest110366110380%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd110375110430%_))
                                    (let ((_%tl110378110437%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd110375110430%_)))
                                          (_%hd110377110435%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd110375110430%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl110378110437%_))
                                          (let ((_%id110440%_
                                                 _%hd110377110435%_)
                                                (_%rest110442%_
                                                 _%tl110376110432%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K110374110427%_
                                               _%rest110442%_
                                               _%id110440%_)))
                                          (let ((_%hd110417%_
                                                 _%hd110375110430%_)
                                                (_%rest110419%_
                                                 _%tl110376110432%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K110371110409%_
                                               _%rest110419%_
                                               _%hd110417%_)))))
                                    (let ((_%hd110417%_ _%hd110375110430%_)
                                          (_%rest110419%_ _%tl110376110432%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%K110371110409%_
                                         _%rest110419%_
                                         _%hd110417%_)))))
                              (let ()
                                (declare (not safe))
                                (_%else110369110388%_))))))))
                 (_%compile-inner110249%_
                  (lambda (_%pre110350%_
                           _%bind110351%_
                           _%post110352%_
                           _%body110353%_)
                    (if (let () (declare (not safe)) (null? _%pre110350%_))
                        (let ()
                          (declare (not safe))
                          (_%compile-bind110250%_
                           _%bind110351%_
                           _%post110352%_
                           _%body110353%_))
                        (let ((__tmp111813
                               (cons 'let
                                     (cons (reverse _%pre110350%_)
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_%compile-bind110250%_
                                                    _%bind110351%_
                                                    _%post110352%_
                                                    _%body110353%_))
                                                 '())))))
                          (declare (not safe))
                          (__SRC__% __tmp111813 _%stx110245%_)))))
                 (_%compile-bind110250%_
                  (lambda (_%bind110346%_ _%post110347%_ _%body110348%_)
                    (let ((__tmp111814
                           (cons 'letrec
                                 (cons (reverse _%bind110346%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (_%compile-post110251%_
                                                _%post110347%_
                                                _%body110348%_))
                                             '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111814 _%stx110245%_))))
                 (_%compile-post110251%_
                  (lambda (_%post110253%_ _%body110254%_)
                    (let _%lp110256%_ ((_%rest110258%_ _%post110253%_)
                                       (_%check110259%_ '())
                                       (_%bind110260%_ '()))
                      (let* ((_%rest110261110273%_ _%rest110258%_)
                             (_%else110263110281%_
                              (lambda ()
                                (let ((__tmp111815
                                       (cons 'begin
                                             (let ((__tmp111816
                                                    (let ((__tmp111817
                                                           (cons _%body110254%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
              (declare (not safe))
              (__foldr1 cons __tmp111817 _%bind110260%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__foldr1
                                                cons
                                                __tmp111816
                                                _%check110259%_)))))
                                  (declare (not safe))
                                  (__SRC__% __tmp111815 _%stx110245%_))))
                             (_%K110265110320%_
                              (lambda (_%rest110284%_
                                       _%init110285%_
                                       _%len110286%_
                                       _%tmp110287%_)
                                (let ((__tmp111820
                                       (cons (let ((__tmp111821
                                                    (cons '__check-values
                                                          (cons _%tmp110287%_
                                                                (cons _%len110286%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp111821
                                                _%stx110245%_))
                                             _%check110259%_))
                                      (__tmp111818
                                       (let ((__tmp111819
                                              (lambda (_%hd110289%_
                                                       _%r110290%_)
                                                (let* ((_%hd110291110298%_
                                                        _%hd110289%_)
                                                       (_%E110293110302%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd110291110298%_
                           '([id . k])))
                  '#!void))
               (_%K110294110308%_
                (lambda (_%k110305%_ _%id110306%_)
                  (cons (cons 'set!
                              (cons _%id110306%_
                                    (cons (cons '##vector-ref
                                                (cons _%tmp110287%_
                                                      (cons _%k110305%_ '())))
                                          '())))
                        _%r110290%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd110291110298%_))
                                                      (let ((_%hd110295110311%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd110291110298%_)))
                    (_%tl110296110313%_
                     (let () (declare (not safe)) (##cdr _%hd110291110298%_))))
                (let* ((_%id110316%_ _%hd110295110311%_)
                       (_%k110318%_ _%tl110296110313%_))
                  (declare (not safe))
                  (_%K110294110308%_ _%k110318%_ _%id110316%_)))
              (let () (declare (not safe)) (_%E110293110302%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp111819
                                          _%bind110260%_
                                          _%init110285%_))))
                                  (declare (not safe))
                                  (_%lp110256%_
                                   _%rest110284%_
                                   __tmp111820
                                   __tmp111818)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest110261110273%_))
                            (let ((_%hd110266110323%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest110261110273%_)))
                                  (_%tl110267110325%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest110261110273%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd110266110323%_))
                                  (let ((_%hd110268110328%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd110266110323%_)))
                                        (_%tl110269110330%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd110266110323%_))))
                                    (let ((_%tmp110333%_ _%hd110268110328%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl110269110330%_))
                                          (let ((_%hd110270110335%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl110269110330%_)))
                                                (_%tl110271110337%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl110269110330%_))))
                                            (let* ((_%len110340%_
                                                    _%hd110270110335%_)
                                                   (_%init110342%_
                                                    _%tl110271110337%_)
                                                   (_%rest110344%_
                                                    _%tl110267110325%_))
                                              (declare (not safe))
                                              (_%K110265110320%_
                                               _%rest110344%_
                                               _%init110342%_
                                               _%len110340%_
                                               _%tmp110333%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%else110263110281%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%else110263110281%_))))
                            (let ()
                              (declare (not safe))
                              (_%else110263110281%_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _%stx110245%_
             _%compile-simple110247%_
             _%compile-values110248%_)))))
    (define __compile-letrec*-values%
      (lambda (_%stx109996%_)
        (letrec ((_%compile-simple109998%_
                  (lambda (_%hd-ids110241%_ _%exprs110242%_ _%body110243%_)
                    (let ((__tmp111822
                           (cons 'letrec*
                                 (cons (let ((__tmp111823
                                              (map __compile-head-id
                                                   _%hd-ids110241%_)))
                                         (declare (not safe))
                                         (##map list
                                                __tmp111823
                                                _%exprs110242%_))
                                       (cons _%body110243%_ '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111822 _%stx109996%_))))
                 (_%compile-values109999%_
                  (lambda (_%hd-ids110148%_ _%exprs110149%_ _%body110150%_)
                    (let _%lp110152%_ ((_%rest110154%_ _%hd-ids110148%_)
                                       (_%exprs110155%_ _%exprs110149%_)
                                       (_%bind110156%_ '())
                                       (_%post110157%_ '()))
                      (let* ((_%rest110158110172%_ _%rest110154%_)
                             (_%else110161110180%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_%compile-bind110000%_
                                   _%bind110156%_
                                   _%post110157%_
                                   _%body110150%_)))))
                        (let ((_%K110166110224%_
                               (lambda (_%rest110219%_ _%hd110220%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd110220%_))
                                     (let ((_%id110222%_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _%hd110220%_))))
                                       (let ((__tmp111826
                                              (cdr _%exprs110155%_))
                                             (__tmp111825
                                              (cons (cons _%id110222%_
                                                          (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons '#!void '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%bind110156%_))
                                             (__tmp111824
                                              (cons (cons _%id110222%_
                                                          (cons (car _%exprs110155%_)
                                                                '()))
                                                    _%post110157%_)))
                                         (declare (not safe))
                                         (_%lp110152%_
                                          _%rest110219%_
                                          __tmp111826
                                          __tmp111825
                                          __tmp111824)))
                                     (let ((__tmp111828 (cdr _%exprs110155%_))
                                           (__tmp111827
                                            (cons (cons '#f
                                                        (cons (car _%exprs110155%_)
                                                              '()))
                                                  _%post110157%_)))
                                       (declare (not safe))
                                       (_%lp110152%_
                                        _%rest110219%_
                                        __tmp111828
                                        _%bind110156%_
                                        __tmp111827)))))
                              (_%K110163110204%_
                               (lambda (_%rest110184%_ _%hd110185%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd110185%_))
                                     (let ((_%id110188%_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _%hd110185%_))))
                                       (let ((__tmp111831
                                              (cdr _%exprs110155%_))
                                             (__tmp111830
                                              (cons (cons _%id110188%_
                                                          (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons '#!void '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%bind110156%_))
                                             (__tmp111829
                                              (cons (cons _%id110188%_
                                                          (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (car _%exprs110155%_) '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%post110157%_)))
                                         (declare (not safe))
                                         (_%lp110152%_
                                          _%rest110184%_
                                          __tmp111831
                                          __tmp111830
                                          __tmp111829)))
                                     (if (let ((__tmp111832
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _%hd110185%_))))
                                           (declare (not safe))
                                           (not __tmp111832))
                                         (let ((__tmp111834
                                                (cdr _%exprs110155%_))
                                               (__tmp111833
                                                (cons (cons '#f
                                                            (cons (car _%exprs110155%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%post110157%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_%lp110152%_
                                            _%rest110184%_
                                            __tmp111834
                                            _%bind110156%_
                                            __tmp111833))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _%hd110185%_))
                                             (let ()
                                               (let* ((_%len110192%_
                                                       (length _%hd110185%_))
                                                      (_%tmp110194%_
                                                       (let ((__tmp111835
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym))))
                 (declare (not safe))
                 (__SRC__0 __tmp111835))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp111845
                                                        (cdr _%exprs110155%_))
                                                       (__tmp111843
                                                        (let ((__tmp111844
                                                               (lambda (_%id110197%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%r110198%_)
                         (if (let ()
                               (declare (not safe))
                               (__AST-e _%id110197%_))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (__SRC__0 _%id110197%_))
                                         (cons (cons 'quote (cons '#!void '()))
                                               '()))
                                   _%r110198%_)
                             _%r110198%_))))
                  (declare (not safe))
                  (__foldl1 __tmp111844 _%bind110156%_ _%hd110185%_)))
               (__tmp111836
                (cons (let ((__tmp111837
                             (let ((__tmp111842 (car _%exprs110155%_))
                                   (__tmp111838
                                    (let ((__tmp111839
                                           (let ((__tmp111841
                                                  (lambda (_%id110200%_
                                                           _%k110201%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%id110200%_))
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _%id110200%_))
                      _%k110201%_)
                '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (__tmp111840
                                                  (let ()
                                                    (declare (not safe))
                                                    (##iota _%len110192%_))))
                                             (declare (not safe))
                                             (__filter-map2
                                              __tmp111841
                                              _%hd110185%_
                                              __tmp111840))))
                                      (declare (not safe))
                                      (cons _%len110192%_ __tmp111839))))
                               (declare (not safe))
                               (cons __tmp111842 __tmp111838))))
                        (declare (not safe))
                        (cons _%tmp110194%_ __tmp111837))
                      _%post110157%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_%lp110152%_
                                                    _%rest110184%_
                                                    __tmp111845
                                                    __tmp111843
                                                    __tmp111836))))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _%stx109996%_
                                                _%hd110185%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest110158110172%_))
                              (let ((_%tl110168110229%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest110158110172%_)))
                                    (_%hd110167110227%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest110158110172%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd110167110227%_))
                                    (let ((_%tl110170110234%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd110167110227%_)))
                                          (_%hd110169110232%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd110167110227%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl110170110234%_))
                                          (let ((_%hd110237%_
                                                 _%hd110169110232%_)
                                                (_%rest110239%_
                                                 _%tl110168110229%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K110166110224%_
                                               _%rest110239%_
                                               _%hd110237%_)))
                                          (let ((_%hd110212%_
                                                 _%hd110167110227%_)
                                                (_%rest110214%_
                                                 _%tl110168110229%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K110163110204%_
                                               _%rest110214%_
                                               _%hd110212%_)))))
                                    (let ((_%hd110212%_ _%hd110167110227%_)
                                          (_%rest110214%_ _%tl110168110229%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%K110163110204%_
                                         _%rest110214%_
                                         _%hd110212%_)))))
                              (let ()
                                (declare (not safe))
                                (_%else110161110180%_))))))))
                 (_%compile-bind110000%_
                  (lambda (_%bind110144%_ _%post110145%_ _%body110146%_)
                    (let ((__tmp111846
                           (cons 'let
                                 (cons (reverse _%bind110144%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (_%compile-post110001%_
                                                _%post110145%_
                                                _%body110146%_))
                                             '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111846 _%stx109996%_))))
                 (_%compile-post110001%_
                  (lambda (_%post110003%_ _%body110004%_)
                    (let ((__tmp111847
                           (cons 'begin
                                 (let ((__tmp111848
                                        (let ((__tmp111850
                                               (lambda (_%hd110006%_
                                                        _%r110007%_)
                                                 (let* ((_%hd110008110031%_
                                                         _%hd110006%_)
                                                        (_%E110012110035%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd110008110031%_
                            '([#f expr])
                            '([id expr])
                            '([tmp expr len . init])))
                   '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%K110025110129%_
                                                          (lambda (_%expr110127%_)
                                                            (cons _%expr110127%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r110007%_)))
                 (_%K110020110107%_
                  (lambda (_%expr110104%_ _%id110105%_)
                    (cons (let ((__tmp111851
                                 (cons 'set!
                                       (cons _%id110105%_
                                             (cons _%expr110104%_ '())))))
                            (declare (not safe))
                            (__SRC__% __tmp111851 _%stx109996%_))
                          _%r110007%_)))
                 (_%K110013110074%_
                  (lambda (_%init110039%_
                           _%len110040%_
                           _%expr110041%_
                           _%tmp110042%_)
                    (cons (let ((__tmp111852
                                 (cons 'let
                                       (cons (cons (cons _%tmp110042%_
                                                         (cons _%expr110041%_
                                                               '()))
                                                   '())
                                             (cons (let ((__tmp111853
                                                          (cons '__check-values
                                                                (cons _%tmp110042%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%len110040%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__SRC__%
                                                      __tmp111853
                                                      _%stx109996%_))
                                                   (let ((__tmp111854
                                                          (map (lambda (_%hd110044%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_%hd110045110052%_ _%hd110044%_)
                                (_%E110047110056%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"No clause matching"
                                            _%hd110045110052%_
                                            '([id . k])))
                                   '#!void))
                                (_%K110048110062%_
                                 (lambda (_%k110059%_ _%id110060%_)
                                   (let ((__tmp111855
                                          (cons 'set!
                                                (cons _%id110060%_
                                                      (cons (cons '##vector-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%tmp110042%_ (cons _%k110059%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (declare (not safe))
                                     (__SRC__% __tmp111855 _%stx109996%_)))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%hd110045110052%_))
                               (let ((_%hd110049110065%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%hd110045110052%_)))
                                     (_%tl110050110067%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%hd110045110052%_))))
                                 (let* ((_%id110070%_ _%hd110049110065%_)
                                        (_%k110072%_ _%tl110050110067%_))
                                   (declare (not safe))
                                   (_%K110048110062%_
                                    _%k110072%_
                                    _%id110070%_)))
                               (let ()
                                 (declare (not safe))
                                 (_%E110047110056%_)))))
                       _%init110039%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      '()
                                                      __tmp111854)))))))
                            (declare (not safe))
                            (__SRC__% __tmp111852 _%stx109996%_))
                          _%r110007%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__match111623111624%_
                                                             (lambda (_%hd110014110077%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%tl110015110079%_
                              _%hd110016110084%_
                              _%tl110017110086%_)
                       (let ((_%tmp110082%_ _%hd110014110077%_)
                             (_%expr110089%_ _%hd110016110084%_))
                         (let () (declare (not safe)) (_%E110012110035%_)))))
                    (_%__match111617111618%_
                     (lambda (_%hd110014110077%_ _%tl110015110079%_)
                       (let ((_%tmp110082%_ _%hd110014110077%_))
                         (declare (not safe))
                         (_%E110012110035%_)))))
               (if (let () (declare (not safe)) (##pair? _%hd110008110031%_))
                   (let ((_%tl110027110134%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd110008110031%_)))
                         (_%hd110026110132%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd110008110031%_))))
                     (if (let ()
                           (declare (not safe))
                           (##eq? _%hd110026110132%_ '#f))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%tl110027110134%_))
                             (let ((_%tl110029110139%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl110027110134%_)))
                                   (_%hd110028110137%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%tl110027110134%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%tl110029110139%_))
                                   (let ((_%expr110142%_ _%hd110028110137%_))
                                     (declare (not safe))
                                     (_%K110025110129%_ _%expr110142%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%tl110029110139%_))
                                       (let ((_%tl110019110093%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl110029110139%_)))
                                             (_%hd110018110091%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%tl110029110139%_))))
                                         (let ((_%tmp110082%_
                                                _%hd110026110132%_)
                                               (_%expr110089%_
                                                _%hd110028110137%_)
                                               (_%len110096%_
                                                _%hd110018110091%_)
                                               (_%init110098%_
                                                _%tl110019110093%_))
                                           (let ()
                                             (declare (not safe))
                                             (_%K110013110074%_
                                              _%init110098%_
                                              _%len110096%_
                                              _%expr110089%_
                                              _%tmp110082%_))))
                                       (_%__match111623111624%_
                                        _%hd110026110132%_
                                        _%tl110027110134%_
                                        _%hd110028110137%_
                                        _%tl110029110139%_))))
                             (_%__match111617111618%_
                              _%hd110026110132%_
                              _%tl110027110134%_))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%tl110027110134%_))
                             (let ((_%tl110024110119%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl110027110134%_)))
                                   (_%hd110023110117%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%tl110027110134%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%tl110024110119%_))
                                   (let ((_%id110115%_ _%hd110026110132%_)
                                         (_%expr110122%_ _%hd110023110117%_))
                                     (let ()
                                       (declare (not safe))
                                       (_%K110020110107%_
                                        _%expr110122%_
                                        _%id110115%_)))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%tl110024110119%_))
                                       (let ((_%tl110019110093%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl110024110119%_)))
                                             (_%hd110018110091%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%tl110024110119%_))))
                                         (let ((_%tmp110082%_
                                                _%hd110026110132%_)
                                               (_%expr110089%_
                                                _%hd110023110117%_)
                                               (_%len110096%_
                                                _%hd110018110091%_)
                                               (_%init110098%_
                                                _%tl110019110093%_))
                                           (let ()
                                             (declare (not safe))
                                             (_%K110013110074%_
                                              _%init110098%_
                                              _%len110096%_
                                              _%expr110089%_
                                              _%tmp110082%_))))
                                       (_%__match111623111624%_
                                        _%hd110026110132%_
                                        _%tl110027110134%_
                                        _%hd110023110117%_
                                        _%tl110024110119%_))))
                             (_%__match111617111618%_
                              _%hd110026110132%_
                              _%tl110027110134%_))))
                   (let () (declare (not safe)) (_%E110012110035%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (__tmp111849
                                               (list _%body110004%_)))
                                          (declare (not safe))
                                          (__foldl1
                                           __tmp111850
                                           __tmp111849
                                           _%post110003%_))))
                                   (declare (not safe))
                                   (__foldr1 cons '() __tmp111848)))))
                      (declare (not safe))
                      (__SRC__% __tmp111847 _%stx109996%_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _%stx109996%_
             _%compile-simple109998%_
             _%compile-values109999%_)))))
    (define __compile-call%
      (lambda (_%stx109956%_)
        (let* ((_%$e109958%_ _%stx109956%_)
               (_%$E109960109969%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109958%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109958%_))
              (let* ((_%$tgt109961109972%_
                      (let () (declare (not safe)) (__AST-e _%$e109958%_)))
                     (_%$hd109962109975%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109961109972%_)))
                     (_%$tl109963109978%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109961109972%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109963109978%_))
                    (let* ((_%$tgt109964109982%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109963109978%_)))
                           (_%$hd109965109985%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109964109982%_)))
                           (_%$tl109966109988%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109964109982%_))))
                      (let* ((_%rator109992%_ _%$hd109965109985%_)
                             (_%rands109994%_ _%$tl109966109988%_)
                             (__tmp111856
                              (cons (let ()
                                      (declare (not safe))
                                      (__compile _%rator109992%_))
                                    (map __compile _%rands109994%_))))
                        (declare (not safe))
                        (__SRC__% __tmp111856 _%stx109956%_)))
                    (let () (declare (not safe)) (_%$E109960109969%_))))
              (let () (declare (not safe)) (_%$E109960109969%_))))))
    (define __compile-ref%
      (lambda (_%stx109918%_)
        (let* ((_%$e109920%_ _%stx109918%_)
               (_%$E109922109931%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109920%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109920%_))
              (let* ((_%$tgt109923109934%_
                      (let () (declare (not safe)) (__AST-e _%$e109920%_)))
                     (_%$hd109924109937%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109923109934%_)))
                     (_%$tl109925109940%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109923109934%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109925109940%_))
                    (let* ((_%$tgt109926109944%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109925109940%_)))
                           (_%$hd109927109947%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109926109944%_)))
                           (_%$tl109928109950%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109926109944%_)))
                           (_%id109954%_ _%$hd109927109947%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl109928109950%_))
                                  '())
                          (let ()
                            (declare (not safe))
                            (__SRC__% _%id109954%_ _%stx109918%_))
                          (let () (declare (not safe)) (_%$E109922109931%_))))
                    (let () (declare (not safe)) (_%$E109922109931%_))))
              (let () (declare (not safe)) (_%$E109922109931%_))))))
    (define __compile-setq%
      (lambda (_%stx109865%_)
        (let* ((_%$e109867%_ _%stx109865%_)
               (_%$E109869109881%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109867%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109867%_))
              (let* ((_%$tgt109870109884%_
                      (let () (declare (not safe)) (__AST-e _%$e109867%_)))
                     (_%$hd109871109887%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109870109884%_)))
                     (_%$tl109872109890%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109870109884%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109872109890%_))
                    (let* ((_%$tgt109873109894%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109872109890%_)))
                           (_%$hd109874109897%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109873109894%_)))
                           (_%$tl109875109900%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109873109894%_)))
                           (_%id109904%_ _%$hd109874109897%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl109875109900%_))
                          (let* ((_%$tgt109876109906%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl109875109900%_)))
                                 (_%$hd109877109909%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt109876109906%_)))
                                 (_%$tl109878109912%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt109876109906%_)))
                                 (_%expr109916%_ _%$hd109877109909%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl109878109912%_))
                                        '())
                                (let ((__tmp111857
                                       (cons 'set!
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (__SRC__%
                                                      _%id109904%_
                                                      _%stx109865%_))
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__compile
                                                            _%expr109916%_))
                                                         '())))))
                                  (declare (not safe))
                                  (__SRC__% __tmp111857 _%stx109865%_))
                                (let ()
                                  (declare (not safe))
                                  (_%$E109869109881%_))))
                          (let () (declare (not safe)) (_%$E109869109881%_))))
                    (let () (declare (not safe)) (_%$E109869109881%_))))
              (let () (declare (not safe)) (_%$E109869109881%_))))))
    (define __compile-if%
      (lambda (_%stx109797%_)
        (let* ((_%$e109799%_ _%stx109797%_)
               (_%$E109801109816%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109799%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109799%_))
              (let* ((_%$tgt109802109819%_
                      (let () (declare (not safe)) (__AST-e _%$e109799%_)))
                     (_%$hd109803109822%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109802109819%_)))
                     (_%$tl109804109825%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109802109819%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109804109825%_))
                    (let* ((_%$tgt109805109829%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109804109825%_)))
                           (_%$hd109806109832%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109805109829%_)))
                           (_%$tl109807109835%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109805109829%_)))
                           (_%p109839%_ _%$hd109806109832%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl109807109835%_))
                          (let* ((_%$tgt109808109841%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl109807109835%_)))
                                 (_%$hd109809109844%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt109808109841%_)))
                                 (_%$tl109810109847%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt109808109841%_)))
                                 (_%t109851%_ _%$hd109809109844%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl109810109847%_))
                                (let* ((_%$tgt109811109853%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl109810109847%_)))
                                       (_%$hd109812109856%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt109811109853%_)))
                                       (_%$tl109813109859%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt109811109853%_)))
                                       (_%f109863%_ _%$hd109812109856%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl109813109859%_))
                                              '())
                                      (let ((__tmp111858
                                             (cons 'if
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__compile
                                                            _%p109839%_))
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (__compile _%t109851%_))
                       (cons (let ()
                               (declare (not safe))
                               (__compile _%f109863%_))
                             '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (declare (not safe))
                                        (__SRC__% __tmp111858 _%stx109797%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%$E109801109816%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%$E109801109816%_))))
                          (let () (declare (not safe)) (_%$E109801109816%_))))
                    (let () (declare (not safe)) (_%$E109801109816%_))))
              (let () (declare (not safe)) (_%$E109801109816%_))))))
    (define __compile-quote%
      (lambda (_%stx109759%_)
        (let* ((_%$e109761%_ _%stx109759%_)
               (_%$E109763109772%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109761%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109761%_))
              (let* ((_%$tgt109764109775%_
                      (let () (declare (not safe)) (__AST-e _%$e109761%_)))
                     (_%$hd109765109778%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109764109775%_)))
                     (_%$tl109766109781%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109764109775%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109766109781%_))
                    (let* ((_%$tgt109767109785%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109766109781%_)))
                           (_%$hd109768109788%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109767109785%_)))
                           (_%$tl109769109791%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109767109785%_)))
                           (_%e109795%_ _%$hd109768109788%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl109769109791%_))
                                  '())
                          (let ((__tmp111859
                                 (cons 'quote
                                       (cons (let ()
                                               (declare (not safe))
                                               (__AST->datum _%e109795%_))
                                             '()))))
                            (declare (not safe))
                            (__SRC__% __tmp111859 _%stx109759%_))
                          (let () (declare (not safe)) (_%$E109763109772%_))))
                    (let () (declare (not safe)) (_%$E109763109772%_))))
              (let () (declare (not safe)) (_%$E109763109772%_))))))
    (define __compile-quote-syntax%
      (lambda (_%stx109721%_)
        (let* ((_%$e109723%_ _%stx109721%_)
               (_%$E109725109734%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109723%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109723%_))
              (let* ((_%$tgt109726109737%_
                      (let () (declare (not safe)) (__AST-e _%$e109723%_)))
                     (_%$hd109727109740%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109726109737%_)))
                     (_%$tl109728109743%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109726109737%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109728109743%_))
                    (let* ((_%$tgt109729109747%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109728109743%_)))
                           (_%$hd109730109750%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109729109747%_)))
                           (_%$tl109731109753%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109729109747%_)))
                           (_%e109757%_ _%$hd109730109750%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl109731109753%_))
                                  '())
                          (let ((__tmp111860
                                 (cons 'quote (cons _%e109757%_ '()))))
                            (declare (not safe))
                            (__SRC__% __tmp111860 _%stx109721%_))
                          (let () (declare (not safe)) (_%$E109725109734%_))))
                    (let () (declare (not safe)) (_%$E109725109734%_))))
              (let () (declare (not safe)) (_%$E109725109734%_))))))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#begin
       __compile-begin%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#begin-syntax
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#begin-foreign
       __compile-begin-foreign%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#module
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#import
       __compile-import%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#export
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#provide
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#define-values
       __compile-define-values%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#define-syntax
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#define-alias
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#define-runtime
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#extern
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#declare
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#begin-annotation
       __compile-begin-annotation%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#quote
       __compile-quote%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#quote-syntax
       __compile-quote-syntax%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#lambda
       __compile-lambda%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#case-lambda
       __compile-case-lambda%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#let-values
       __compile-let-values%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#letrec-values
       __compile-letrec-values%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#letrec*-values
       __compile-letrec*-values%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#call __compile-call% make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#if __compile-if% make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#ref __compile-ref% make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#set! __compile-setq% make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#cond-expand __compile-error make-__core-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#include __compile-error make-__core-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#let-syntax __compile-error make-__core-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#letrec-syntax
       __compile-error
       make-__core-form))))

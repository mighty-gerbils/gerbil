(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1712269045)
  (begin
    (define __syntax::t
      (let ((__tmp111725 (list)) (__tmp111724 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp111725
         '(e id)
         __tmp111724
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args111529%_
        (apply make-instance __syntax::t _%$args111529%_)))
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
      (let ((__tmp111727 (list __syntax::t))
            (__tmp111726 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp111727
         '()
         __tmp111726
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args111526%_
        (apply make-instance __core-form::t _%$args111526%_)))
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
      (let ((__tmp111729 (list __core-form::t))
            (__tmp111728 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp111729
         '()
         __tmp111728
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args111523%_
        (apply make-instance __core-expression::t _%$args111523%_)))
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
      (let ((__tmp111731 (list __core-form::t))
            (__tmp111730 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp111731
         '()
         __tmp111730
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args111520%_
        (apply make-instance __core-special-form::t _%$args111520%_)))
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
      (lambda (_%id111518%_)
        (let ((__tmp111732
               (let () (declare (not safe)) (__AST-e _%id111518%_))))
          (declare (not safe))
          (hash-get __core __tmp111732))))
    (define __core-bound-id?__%
      (lambda (_%id111501%_ _%is?111502%_)
        (let ((_%$e111504%_
               (let () (declare (not safe)) (__core-resolve _%id111501%_))))
          (if _%$e111504%_ (_%is?111502%_ _%$e111504%_) (let () '#f)))))
    (define __core-bound-id?__0
      (lambda (_%id111511%_)
        (let ((_%is?111513%_ true))
          (declare (not safe))
          (__core-bound-id?__% _%id111511%_ _%is?111513%_))))
    (define __core-bound-id?
      (lambda _g111734_
        (let ((_g111733_ (let () (declare (not safe)) (##length _g111734_))))
          (cond ((let () (declare (not safe)) (##fx= _g111733_ 1))
                 (apply (lambda (_%id111511%_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _%id111511%_)))
                        _g111734_))
                ((let () (declare (not safe)) (##fx= _g111733_ 2))
                 (apply (lambda (_%id111515%_ _%is?111516%_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _%id111515%_ _%is?111516%_)))
                        _g111734_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g111734_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id111484%_ _%e111485%_ _%make111486%_)
        (let ((__tmp111735
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e111485%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e111485%_
                   (_%make111486%_ _%e111485%_ _%id111484%_))))
          (declare (not safe))
          (hash-put! __core _%id111484%_ __tmp111735))))
    (define __core-bind-syntax!__0
      (lambda (_%id111491%_ _%e111492%_)
        (let ((_%make111494%_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _%id111491%_ _%e111492%_ _%make111494%_))))
    (define __core-bind-syntax!
      (lambda _g111737_
        (let ((_g111736_ (let () (declare (not safe)) (##length _g111737_))))
          (cond ((let () (declare (not safe)) (##fx= _g111736_ 2))
                 (apply (lambda (_%id111491%_ _%e111492%_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _%id111491%_ _%e111492%_)))
                        _g111737_))
                ((let () (declare (not safe)) (##fx= _g111736_ 3))
                 (apply (lambda (_%id111496%_ _%e111497%_ _%make111498%_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _%id111496%_
                             _%e111497%_
                             _%make111498%_)))
                        _g111737_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g111737_))))))
    (define __SRC__%
      (lambda (_%e111464%_ _%src-stx111465%_)
        (if (or (let () (declare (not safe)) (pair? _%e111464%_))
                (let () (declare (not safe)) (symbol? _%e111464%_)))
            (let ((__tmp111738
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx111465%_
                          'gerbil#AST::t))
                       (let ((__tmp111739
                              (let ()
                                (declare (not safe))
                                (__AST-source _%src-stx111465%_))))
                         (declare (not safe))
                         (__locat __tmp111739))
                       '#f)))
              (declare (not safe))
              (##make-source _%e111464%_ __tmp111738))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e111464%_ 'gerbil#AST::t))
                (let ((__tmp111742
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e111464%_ '1 '#f '#f)))
                      (__tmp111740
                       (let ((__tmp111741
                              (let ()
                                (declare (not safe))
                                (__AST-source _%e111464%_))))
                         (declare (not safe))
                         (__locat __tmp111741))))
                  (declare (not safe))
                  (##make-source __tmp111742 __tmp111740))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e111464%_))))))
    (define __SRC__0
      (lambda (_%e111476%_)
        (let ((_%src-stx111478%_ '#f))
          (declare (not safe))
          (__SRC__% _%e111476%_ _%src-stx111478%_))))
    (define __SRC
      (lambda _g111744_
        (let ((_g111743_ (let () (declare (not safe)) (##length _g111744_))))
          (cond ((let () (declare (not safe)) (##fx= _g111743_ 1))
                 (apply (lambda (_%e111476%_)
                          (let () (declare (not safe)) (__SRC__0 _%e111476%_)))
                        _g111744_))
                ((let () (declare (not safe)) (##fx= _g111743_ 2))
                 (apply (lambda (_%e111480%_ _%src-stx111481%_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _%e111480%_ _%src-stx111481%_)))
                        _g111744_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g111744_))))))
    (define __locat
      (lambda (_%loc111461%_)
        (if (let () (declare (not safe)) (##locat? _%loc111461%_))
            _%loc111461%_
            '#f)))
    (define __check-values
      (lambda (_%obj111456%_ _%k111457%_)
        (let ((_%count111459%_
               (if (let () (declare (not safe)) (##values? _%obj111456%_))
                   (let ()
                     (declare (not safe))
                     (##vector-length _%obj111456%_))
                   '1)))
          (if (fx= _%count111459%_ _%k111457%_)
              '#!void
              (let ((__tmp111746
                     (if (fx< _%count111459%_ _%k111457%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp111745
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj111456%_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _%obj111456%_))
                         _%obj111456%_)))
                (declare (not safe))
                (error __tmp111746 __tmp111745 _%k111457%_))))))
    (define __compile
      (lambda (_%stx111425%_)
        (let* ((_%$e111427%_ _%stx111425%_)
               (_%$E111429111435%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111427%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111427%_))
              (let* ((_%$tgt111430111438%_
                      (let () (declare (not safe)) (__AST-e _%$e111427%_)))
                     (_%$hd111431111441%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111430111438%_)))
                     (_%$tl111432111444%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111430111438%_))))
                (let* ((_%form111448%_ _%$hd111431111441%_)
                       (_%$e111450%_
                        (let ()
                          (declare (not safe))
                          (__core-resolve _%form111448%_))))
                  (if _%$e111450%_
                      ((lambda (_%bind111453%_)
                         ((##structure-ref _%bind111453%_ '1 __syntax::t '#f)
                          _%stx111425%_))
                       _%$e111450%_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _%stx111425%_
                         _%form111448%_)))))
              (let () (declare (not safe)) (_%$E111429111435%_))))))
    (define __compile-error__%
      (lambda (_%stx111412%_ _%detail111413%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx111412%_
           _%detail111413%_))))
    (define __compile-error__0
      (lambda (_%stx111418%_)
        (let ((_%detail111420%_ '#f))
          (declare (not safe))
          (__compile-error__% _%stx111418%_ _%detail111420%_))))
    (define __compile-error
      (lambda _g111748_
        (let ((_g111747_ (let () (declare (not safe)) (##length _g111748_))))
          (cond ((let () (declare (not safe)) (##fx= _g111747_ 1))
                 (apply (lambda (_%stx111418%_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _%stx111418%_)))
                        _g111748_))
                ((let () (declare (not safe)) (##fx= _g111747_ 2))
                 (apply (lambda (_%stx111422%_ _%detail111423%_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__%
                             _%stx111422%_
                             _%detail111423%_)))
                        _g111748_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g111748_))))))
    (define __compile-ignore%
      (lambda (_%stx111409%_)
        (let () (declare (not safe)) (__SRC__% ''#!void _%stx111409%_))))
    (define __compile-begin%
      (lambda (_%stx111384%_)
        (let* ((_%$e111386%_ _%stx111384%_)
               (_%$E111388111394%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111386%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111386%_))
              (let* ((_%$tgt111389111397%_
                      (let () (declare (not safe)) (__AST-e _%$e111386%_)))
                     (_%$hd111390111400%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111389111397%_)))
                     (_%$tl111391111403%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111389111397%_))))
                (let* ((_%body111407%_ _%$tl111391111403%_)
                       (__tmp111749
                        (cons 'begin (map __compile _%body111407%_))))
                  (declare (not safe))
                  (__SRC__% __tmp111749 _%stx111384%_)))
              (let () (declare (not safe)) (_%$E111388111394%_))))))
    (define __compile-begin-foreign%
      (lambda (_%stx111359%_)
        (let* ((_%$e111361%_ _%stx111359%_)
               (_%$E111363111369%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111361%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111361%_))
              (let* ((_%$tgt111364111372%_
                      (let () (declare (not safe)) (__AST-e _%$e111361%_)))
                     (_%$hd111365111375%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111364111372%_)))
                     (_%$tl111366111378%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111364111372%_))))
                (let* ((_%body111382%_ _%$tl111366111378%_)
                       (__tmp111750
                        (cons 'begin
                              (let ()
                                (declare (not safe))
                                (__AST->datum _%body111382%_)))))
                  (declare (not safe))
                  (__SRC__% __tmp111750 _%stx111359%_)))
              (let () (declare (not safe)) (_%$E111363111369%_))))))
    (define __compile-import%
      (lambda (_%stx111334%_)
        (let* ((_%$e111336%_ _%stx111334%_)
               (_%$E111338111344%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111336%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111336%_))
              (let* ((_%$tgt111339111347%_
                      (let () (declare (not safe)) (__AST-e _%$e111336%_)))
                     (_%$hd111340111350%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111339111347%_)))
                     (_%$tl111341111353%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111339111347%_))))
                (let* ((_%body111357%_ _%$tl111341111353%_)
                       (__tmp111751
                        (cons '__eval-import
                              (cons (cons 'quote (cons _%body111357%_ '()))
                                    '()))))
                  (declare (not safe))
                  (__SRC__% __tmp111751 _%stx111334%_)))
              (let () (declare (not safe)) (_%$E111338111344%_))))))
    (define __compile-begin-annotation%
      (lambda (_%stx111281%_)
        (let* ((_%$e111283%_ _%stx111281%_)
               (_%$E111285111297%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111283%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111283%_))
              (let* ((_%$tgt111286111300%_
                      (let () (declare (not safe)) (__AST-e _%$e111283%_)))
                     (_%$hd111287111303%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111286111300%_)))
                     (_%$tl111288111306%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111286111300%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111288111306%_))
                    (let* ((_%$tgt111289111310%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111288111306%_)))
                           (_%$hd111290111313%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111289111310%_)))
                           (_%$tl111291111316%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111289111310%_)))
                           (_%ann111320%_ _%$hd111290111313%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl111291111316%_))
                          (let* ((_%$tgt111292111322%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111291111316%_)))
                                 (_%$hd111293111325%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111292111322%_)))
                                 (_%$tl111294111328%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111292111322%_)))
                                 (_%expr111332%_ _%$hd111293111325%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl111294111328%_))
                                        '())
                                (let ()
                                  (declare (not safe))
                                  (__compile _%expr111332%_))
                                (let ()
                                  (declare (not safe))
                                  (_%$E111285111297%_))))
                          (let () (declare (not safe)) (_%$E111285111297%_))))
                    (let () (declare (not safe)) (_%$E111285111297%_))))
              (let () (declare (not safe)) (_%$E111285111297%_))))))
    (define __compile-define-values%
      (lambda (_%stx111172%_)
        (let* ((_%$e111174%_ _%stx111172%_)
               (_%$E111176111188%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111174%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111174%_))
              (let* ((_%$tgt111177111191%_
                      (let () (declare (not safe)) (__AST-e _%$e111174%_)))
                     (_%$hd111178111194%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111177111191%_)))
                     (_%$tl111179111197%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111177111191%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111179111197%_))
                    (let* ((_%$tgt111180111201%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111179111197%_)))
                           (_%$hd111181111204%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111180111201%_)))
                           (_%$tl111182111207%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111180111201%_)))
                           (_%hd111211%_ _%$hd111181111204%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl111182111207%_))
                          (let* ((_%$tgt111183111213%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111182111207%_)))
                                 (_%$hd111184111216%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111183111213%_)))
                                 (_%$tl111185111219%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111183111213%_)))
                                 (_%expr111223%_ _%$hd111184111216%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl111185111219%_))
                                        '())
                                (let* ((_%$e111225%_ _%hd111211%_)
                                       (_%$E111227111268%_
                                        (lambda ()
                                          (let ((_%$E111228111253%_
                                                 (lambda ()
                                                   (let* ((_%$E111229111240%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e111225%_))))
                  (_%ids111243%_ _%hd111211%_)
                  (_%len111245%_ (length _%ids111243%_))
                  (_%tmp111247%_
                   (let ((__tmp111752
                          (let () (declare (not safe)) (##gensym))))
                     (declare (not safe))
                     (__SRC__0 __tmp111752)))
                  (__tmp111753
                   (cons 'begin
                         (cons (let ((__tmp111754
                                      (cons 'define
                                            (cons _%tmp111247%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (__compile
                                                           _%expr111223%_))
                                                        '())))))
                                 (declare (not safe))
                                 (__SRC__% __tmp111754 _%stx111172%_))
                               (cons (let ((__tmp111755
                                            (cons '__check-values
                                                  (cons _%tmp111247%_
                                                        (cons _%len111245%_
                                                              '())))))
                                       (declare (not safe))
                                       (__SRC__% __tmp111755 _%stx111172%_))
                                     (let ((__tmp111756
                                            (let ((__tmp111758
                                                   (lambda (_%id111250%_
                                                            _%k111251%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id111250%_))
                                                         (let ((__tmp111759
                                                                (cons 'define
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (__SRC__0 _%id111250%_))
                                    (cons (cons '##vector-ref
                                                (cons _%tmp111247%_
                                                      (cons _%k111251%_ '())))
                                          '())))))
                   (declare (not safe))
                   (__SRC__% __tmp111759 _%stx111172%_))
                 '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp111757
                                                   (let ()
                                                     (declare (not safe))
                                                     (##iota _%len111245%_))))
                                              (declare (not safe))
                                              (__filter-map2
                                               __tmp111758
                                               _%ids111243%_
                                               __tmp111757))))
                                       (declare (not safe))
                                       (__foldr1 cons '() __tmp111756)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__SRC__%
                                                      __tmp111753
                                                      _%stx111172%_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e111225%_))
                                                (let* ((_%$tgt111230111256%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e111225%_)))
                                                       (_%$hd111231111259%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt111230111256%_)))
                                                       (_%$tl111232111262%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt111230111256%_)))
                                                       (_%id111266%_
                                                        _%$hd111231111259%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl111232111262%_))
                      '())
              (let ((__tmp111760
                     (cons 'define
                           (cons (let ()
                                   (declare (not safe))
                                   (__SRC__0 _%id111266%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (__compile _%expr111223%_))
                                       '())))))
                (declare (not safe))
                (__SRC__% __tmp111760 _%stx111172%_))
              (let () (declare (not safe)) (_%$E111228111253%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$E111228111253%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e111225%_))
                                      (let* ((_%$tgt111233111271%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e111225%_)))
                                             (_%$hd111234111274%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt111233111271%_)))
                                             (_%$tl111235111277%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt111233111271%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd111234111274%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl111235111277%_))
                                                        '())
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _%expr111223%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$E111227111268%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$E111227111268%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$E111227111268%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%$E111176111188%_))))
                          (let () (declare (not safe)) (_%$E111176111188%_))))
                    (let () (declare (not safe)) (_%$E111176111188%_))))
              (let () (declare (not safe)) (_%$E111176111188%_))))))
    (define __compile-head-id
      (lambda (_%e111170%_)
        (let ((__tmp111761
               (if (let () (declare (not safe)) (__AST-e _%e111170%_))
                   _%e111170%_
                   (let () (declare (not safe)) (##gensym)))))
          (declare (not safe))
          (__SRC__0 __tmp111761))))
    (define __compile-lambda-head
      (lambda (_%hd111127%_)
        (let _%recur111129%_ ((_%rest111131%_ _%hd111127%_))
          (let* ((_%$e111133%_ _%rest111131%_)
                 (_%$E111135111153%_
                  (lambda ()
                    (let ((_%$E111136111150%_
                           (lambda ()
                             (let* ((_%$E111137111145%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e111133%_))))
                                    (_%tail111148%_ _%$e111133%_))
                               (declare (not safe))
                               (__compile-head-id _%tail111148%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e111133%_))
                                  '())
                          '()
                          (let ()
                            (declare (not safe))
                            (_%$E111136111150%_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e111133%_))
                (let* ((_%$tgt111138111156%_
                        (let () (declare (not safe)) (__AST-e _%$e111133%_)))
                       (_%$hd111139111159%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt111138111156%_)))
                       (_%$tl111140111162%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt111138111156%_))))
                  (let* ((_%hd111166%_ _%$hd111139111159%_)
                         (_%rest111168%_ _%$tl111140111162%_))
                    (cons (let ()
                            (declare (not safe))
                            (__compile-head-id _%hd111166%_))
                          (let ()
                            (declare (not safe))
                            (_%recur111129%_ _%rest111168%_)))))
                (let () (declare (not safe)) (_%$E111135111153%_)))))))
    (define __compile-lambda%
      (lambda (_%stx111074%_)
        (let* ((_%$e111076%_ _%stx111074%_)
               (_%$E111078111090%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111076%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111076%_))
              (let* ((_%$tgt111079111093%_
                      (let () (declare (not safe)) (__AST-e _%$e111076%_)))
                     (_%$hd111080111096%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111079111093%_)))
                     (_%$tl111081111099%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111079111093%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111081111099%_))
                    (let* ((_%$tgt111082111103%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111081111099%_)))
                           (_%$hd111083111106%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111082111103%_)))
                           (_%$tl111084111109%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111082111103%_)))
                           (_%hd111113%_ _%$hd111083111106%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl111084111109%_))
                          (let* ((_%$tgt111085111115%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111084111109%_)))
                                 (_%$hd111086111118%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111085111115%_)))
                                 (_%$tl111087111121%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111085111115%_)))
                                 (_%body111125%_ _%$hd111086111118%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl111087111121%_))
                                        '())
                                (let ((__tmp111762
                                       (cons 'lambda
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (__compile-lambda-head
                                                      _%hd111113%_))
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__compile
                                                            _%body111125%_))
                                                         '())))))
                                  (declare (not safe))
                                  (__SRC__% __tmp111762 _%stx111074%_))
                                (let ()
                                  (declare (not safe))
                                  (_%$E111078111090%_))))
                          (let () (declare (not safe)) (_%$E111078111090%_))))
                    (let () (declare (not safe)) (_%$E111078111090%_))))
              (let () (declare (not safe)) (_%$E111078111090%_))))))
    (define __compile-case-lambda%
      (lambda (_%stx110866%_)
        (letrec ((_%variadic?110868%_
                  (lambda (_%hd111039%_)
                    (let* ((_%$e111041%_ _%hd111039%_)
                           (_%$E111043111059%_
                            (lambda ()
                              (let ((_%$E111044111056%_
                                     (lambda ()
                                       (let ((_%$E111045111053%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e111041%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e111041%_))
                                            '())
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_%$E111044111056%_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e111041%_))
                          (let* ((_%$tgt111046111062%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e111041%_)))
                                 (_%$hd111047111065%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111046111062%_)))
                                 (_%$tl111048111068%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111046111062%_)))
                                 (_%rest111072%_ _%$tl111048111068%_))
                            (declare (not safe))
                            (_%variadic?110868%_ _%rest111072%_))
                          (let ()
                            (declare (not safe))
                            (_%$E111043111059%_))))))
                 (_%arity110869%_
                  (lambda (_%hd111004%_)
                    (let _%lp111006%_ ((_%rest111008%_ _%hd111004%_)
                                       (_%k111009%_ '0))
                      (let* ((_%$e111011%_ _%rest111008%_)
                             (_%$E111013111024%_
                              (lambda ()
                                (let ((_%$E111014111021%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e111011%_)))))
                                  _%k111009%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e111011%_))
                            (let* ((_%$tgt111015111027%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e111011%_)))
                                   (_%$hd111016111030%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt111015111027%_)))
                                   (_%$tl111017111033%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt111015111027%_))))
                              (let* ((_%rest111037%_ _%$tl111017111033%_)
                                     (__tmp111763
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%k111009%_ '1))))
                                (declare (not safe))
                                (_%lp111006%_ _%rest111037%_ __tmp111763)))
                            (let ()
                              (declare (not safe))
                              (_%$E111013111024%_)))))))
                 (_%generate110870%_
                  (lambda (_%rest110931%_ _%args110932%_ _%len110933%_)
                    (let* ((_%$e110935%_ _%rest110931%_)
                           (_%$E110937110948%_
                            (lambda ()
                              (let* ((_%$E110938110945%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _%$e110935%_))))
                                     (__tmp111764
                                      (cons 'error
                                            (cons '"No clause matching arguments"
                                                  (cons _%args110932%_ '())))))
                                (declare (not safe))
                                (__SRC__% __tmp111764 _%stx110866%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e110935%_))
                          (let* ((_%$tgt110939110951%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110935%_)))
                                 (_%$hd110940110954%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110939110951%_)))
                                 (_%$tl110941110957%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110939110951%_))))
                            (let* ((_%clause110961%_ _%$hd110940110954%_)
                                   (_%rest110963%_ _%$tl110941110957%_)
                                   (_%$e110965%_ _%clause110961%_)
                                   (_%$E110967110976%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _%$e110965%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _%$e110965%_))
                                  (let* ((_%$tgt110968110979%_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _%$e110965%_)))
                                         (_%$hd110969110982%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$tgt110968110979%_)))
                                         (_%$tl110970110985%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$tgt110968110979%_)))
                                         (_%hd110989%_ _%$hd110969110982%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _%$tl110970110985%_))
                                        (let* ((_%$tgt110971110991%_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _%$tl110970110985%_)))
                                               (_%$hd110972110994%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$tgt110971110991%_)))
                                               (_%$tl110973110997%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$tgt110971110991%_))))
                                          (if (equal? (let ()
                                                        (declare (not safe))
                                                        (__AST-e _%$tl110973110997%_))
                                                      '())
                                              (let ((_%clen111001%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%arity110869%_
                                                        _%hd110989%_)))
                                                    (_%cmp111002%_
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (_%variadic?110868%_
                                                            _%hd110989%_))
                                                         'fx>=
                                                         'fx=)))
                                                (let ((__tmp111765
                                                       (cons 'if
                                                             (cons (cons _%cmp111002%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%len110933%_
                                       (cons _%clen111001%_ '())))
                           (cons (let ((__tmp111766
                                        (cons '##apply
                                              (cons (let ((__tmp111767
                                                           (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause110961%_)))
              (declare (not safe))
              (__compile-lambda% __tmp111767))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%args110932%_
                                                          '())))))
                                   (declare (not safe))
                                   (__SRC__% __tmp111766 _%stx110866%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (_%generate110870%_
                                          _%rest110963%_
                                          _%args110932%_
                                          _%len110933%_))
                                       '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__SRC__%
                                                   __tmp111765
                                                   _%stx110866%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$E110967110976%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$E110967110976%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$E110967110976%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$E110937110948%_)))))))
          (let* ((_%$e110872%_ _%stx110866%_)
                 (_%$E110874110906%_
                  (lambda ()
                    (let ((_%$E110875110888%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e110872%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e110872%_))
                          (let* ((_%$tgt110876110891%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110872%_)))
                                 (_%$hd110877110894%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110876110891%_)))
                                 (_%$tl110878110897%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110876110891%_)))
                                 (_%clauses110901%_ _%$tl110878110897%_))
                            (let ((_%args110903%_
                                   (let ((__tmp111768
                                          (let ()
                                            (declare (not safe))
                                            (##gensym))))
                                     (declare (not safe))
                                     (__SRC__% __tmp111768 _%stx110866%_)))
                                  (_%len110904%_
                                   (let ((__tmp111769
                                          (let ()
                                            (declare (not safe))
                                            (##gensym))))
                                     (declare (not safe))
                                     (__SRC__% __tmp111769 _%stx110866%_))))
                              (let ((__tmp111770
                                     (cons 'lambda
                                           (cons _%args110903%_
                                                 (cons (let ((__tmp111771
                                                              (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (cons _%len110904%_
                                              (cons (let ((__tmp111772
                                                           (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%args110903%_ '()))))
              (declare (not safe))
              (__SRC__% __tmp111772 _%stx110866%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (let ()
                                          (declare (not safe))
                                          (_%generate110870%_
                                           _%clauses110901%_
                                           _%args110903%_
                                           _%len110904%_))
                                        '())))))
                 (declare (not safe))
                 (__SRC__% __tmp111771 _%stx110866%_))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (declare (not safe))
                                (__SRC__% __tmp111770 _%stx110866%_))))
                          (let ()
                            (declare (not safe))
                            (_%$E110875110888%_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e110872%_))
                (let* ((_%$tgt110879110909%_
                        (let () (declare (not safe)) (__AST-e _%$e110872%_)))
                       (_%$hd110880110912%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt110879110909%_)))
                       (_%$tl110881110915%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt110879110909%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl110881110915%_))
                      (let* ((_%$tgt110882110919%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl110881110915%_)))
                             (_%$hd110883110922%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt110882110919%_)))
                             (_%$tl110884110925%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt110882110919%_)))
                             (_%clause110929%_ _%$hd110883110922%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl110884110925%_))
                                    '())
                            (let ((__tmp111773
                                   (cons '%#lambda _%clause110929%_)))
                              (declare (not safe))
                              (__compile-lambda% __tmp111773))
                            (let ()
                              (declare (not safe))
                              (_%$E110874110906%_))))
                      (let () (declare (not safe)) (_%$E110874110906%_))))
                (let () (declare (not safe)) (_%$E110874110906%_)))))))
    (define __compile-let-form
      (lambda (_%stx110635%_ _%compile-simple110636%_ _%compile-values110637%_)
        (letrec ((_%simple-bind?110639%_
                  (lambda (_%hd110824%_)
                    (let* ((_%hd110825110835%_ _%hd110824%_)
                           (_%else110828110843%_ (lambda () '#f)))
                      (let ((_%K110831110856%_ (lambda (_%id110854%_) '#t))
                            (_%K110830110848%_ (lambda () '#t)))
                        (let ((_%try-match110827110851%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd110825110835%_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_%K110830110848%_))
                                     (let ()
                                       (declare (not safe))
                                       (_%else110828110843%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%hd110825110835%_))
                              (let ((_%tl110833110861%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd110825110835%_)))
                                    (_%hd110832110859%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd110825110835%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _%tl110833110861%_))
                                    (let ((_%id110864%_ _%hd110832110859%_))
                                      (declare (not safe))
                                      (_%K110831110856%_ _%id110864%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%try-match110827110851%_))))
                              (let ()
                                (declare (not safe))
                                (_%try-match110827110851%_))))))))
                 (_%car-e110640%_
                  (lambda (_%hd110822%_)
                    (if (let () (declare (not safe)) (pair? _%hd110822%_))
                        (car _%hd110822%_)
                        _%hd110822%_))))
          (let* ((_%$e110642%_ _%stx110635%_)
                 (_%$E110644110787%_
                  (lambda ()
                    (let ((_%$E110645110667%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e110642%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e110642%_))
                          (let* ((_%$tgt110646110670%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110642%_)))
                                 (_%$hd110647110673%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110646110670%_)))
                                 (_%$tl110648110676%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110646110670%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl110648110676%_))
                                (let* ((_%$tgt110649110680%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl110648110676%_)))
                                       (_%$hd110650110683%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt110649110680%_)))
                                       (_%$tl110651110686%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt110649110680%_)))
                                       (_%hd110690%_ _%$hd110650110683%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl110651110686%_))
                                      (let* ((_%$tgt110652110692%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl110651110686%_)))
                                             (_%$hd110653110695%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt110652110692%_)))
                                             (_%$tl110654110698%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt110652110692%_)))
                                             (_%body110702%_
                                              _%$hd110653110695%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl110654110698%_))
                                                    '())
                                            (let* ((_%hd-ids110742%_
                                                    (map (lambda (_%bind110704%_)
                                                           (let* ((_%$e110706%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind110704%_)
                          (_%$E110708110717%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e110706%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e110706%_))
                         (let* ((_%$tgt110709110720%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e110706%_)))
                                (_%$hd110710110723%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt110709110720%_)))
                                (_%$tl110711110726%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt110709110720%_)))
                                (_%ids110730%_ _%$hd110710110723%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl110711110726%_))
                               (let* ((_%$tgt110712110732%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl110711110726%_)))
                                      (_%$hd110713110735%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt110712110732%_)))
                                      (_%$tl110714110738%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt110712110732%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl110714110738%_))
                                             '())
                                     _%ids110730%_
                                     (let ()
                                       (declare (not safe))
                                       (_%$E110708110717%_))))
                               (let ()
                                 (declare (not safe))
                                 (_%$E110708110717%_))))
                         (let () (declare (not safe)) (_%$E110708110717%_)))))
                 _%hd110690%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs110782%_
                                                    (map (lambda (_%bind110744%_)
                                                           (let* ((_%$e110746%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind110744%_)
                          (_%$E110748110757%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e110746%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e110746%_))
                         (let* ((_%$tgt110749110760%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e110746%_)))
                                (_%$hd110750110763%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt110749110760%_)))
                                (_%$tl110751110766%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt110749110760%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl110751110766%_))
                               (let* ((_%$tgt110752110770%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl110751110766%_)))
                                      (_%$hd110753110773%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt110752110770%_)))
                                      (_%$tl110754110776%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt110752110770%_)))
                                      (_%expr110780%_ _%$hd110753110773%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl110754110776%_))
                                             '())
                                     (let ()
                                       (declare (not safe))
                                       (__compile _%expr110780%_))
                                     (let ()
                                       (declare (not safe))
                                       (_%$E110748110757%_))))
                               (let ()
                                 (declare (not safe))
                                 (_%$E110748110757%_))))
                         (let () (declare (not safe)) (_%$E110748110757%_)))))
                 _%hd110690%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body110784%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile
                                                       _%body110702%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__andmap1
                                                     _%simple-bind?110639%_
                                                     _%hd-ids110742%_))
                                                  (_%compile-simple110636%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e110640%_
                                                            _%hd-ids110742%_))
                                                   _%exprs110782%_
                                                   _%body110784%_)
                                                  (_%compile-values110637%_
                                                   _%hd-ids110742%_
                                                   _%exprs110782%_
                                                   _%body110784%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$E110645110667%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$E110645110667%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%$E110645110667%_))))
                          (let ()
                            (declare (not safe))
                            (_%$E110645110667%_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e110642%_))
                (let* ((_%$tgt110655110790%_
                        (let () (declare (not safe)) (__AST-e _%$e110642%_)))
                       (_%$hd110656110793%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt110655110790%_)))
                       (_%$tl110657110796%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt110655110790%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl110657110796%_))
                      (let* ((_%$tgt110658110800%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl110657110796%_)))
                             (_%$hd110659110803%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt110658110800%_)))
                             (_%$tl110660110806%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt110658110800%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd110659110803%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl110660110806%_))
                                (let* ((_%$tgt110661110810%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl110660110806%_)))
                                       (_%$hd110662110813%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt110661110810%_)))
                                       (_%$tl110663110816%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt110661110810%_)))
                                       (_%body110820%_ _%$hd110662110813%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl110663110816%_))
                                              '())
                                      (let ()
                                        (declare (not safe))
                                        (__compile _%body110820%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%$E110644110787%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%$E110644110787%_)))
                            (let ()
                              (declare (not safe))
                              (_%$E110644110787%_))))
                      (let () (declare (not safe)) (_%$E110644110787%_))))
                (let () (declare (not safe)) (_%$E110644110787%_)))))))
    (define __compile-let-values%
      (lambda (_%stx110447%_)
        (letrec ((_%compile-simple110449%_
                  (lambda (_%hd-ids110631%_ _%exprs110632%_ _%body110633%_)
                    (let ((__tmp111774
                           (cons 'let
                                 (cons (let ((__tmp111775
                                              (map __compile-head-id
                                                   _%hd-ids110631%_)))
                                         (declare (not safe))
                                         (##map list
                                                __tmp111775
                                                _%exprs110632%_))
                                       (cons _%body110633%_ '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111774 _%stx110447%_))))
                 (_%compile-values110450%_
                  (lambda (_%hd-ids110546%_ _%exprs110547%_ _%body110548%_)
                    (let _%lp110550%_ ((_%rest110552%_ _%hd-ids110546%_)
                                       (_%exprs110553%_ _%exprs110547%_)
                                       (_%bind110554%_ '())
                                       (_%post110555%_ '()))
                      (let* ((_%rest110556110570%_ _%rest110552%_)
                             (_%else110559110578%_
                              (lambda ()
                                (let ((__tmp111776
                                       (cons 'let
                                             (cons (reverse _%bind110554%_)
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (_%compile-post110451%_
                                                            _%post110555%_
                                                            _%body110548%_))
                                                         '())))))
                                  (declare (not safe))
                                  (__SRC__% __tmp111776 _%stx110447%_)))))
                        (let ((_%K110564110614%_
                               (lambda (_%rest110611%_ _%id110612%_)
                                 (let ((__tmp111778 (cdr _%exprs110553%_))
                                       (__tmp111777
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (__compile-head-id
                                                       _%id110612%_))
                                                    (cons (car _%exprs110553%_)
                                                          '()))
                                              _%bind110554%_)))
                                   (declare (not safe))
                                   (_%lp110550%_
                                    _%rest110611%_
                                    __tmp111778
                                    __tmp111777
                                    _%post110555%_))))
                              (_%K110561110596%_
                               (lambda (_%rest110582%_ _%hd110583%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd110583%_))
                                     (let ((__tmp111780 (cdr _%exprs110553%_))
                                           (__tmp111779
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (__compile-head-id
                                                           _%hd110583%_))
                                                        (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (car _%exprs110553%_) '()))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%bind110554%_)))
                                       (declare (not safe))
                                       (_%lp110550%_
                                        _%rest110582%_
                                        __tmp111780
                                        __tmp111779
                                        _%post110555%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _%hd110583%_))
                                         (let ()
                                           (let* ((_%len110587%_
                                                   (length _%hd110583%_))
                                                  (_%tmp110589%_
                                                   (let ((__tmp111781
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym))))
                                                     (declare (not safe))
                                                     (__SRC__0 __tmp111781))))
                                             (let ((__tmp111788
                                                    (cdr _%exprs110553%_))
                                                   (__tmp111787
                                                    (cons (cons _%tmp110589%_
                                                                (cons (car _%exprs110553%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%bind110554%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp111782
                                                    (cons (let ((__tmp111783
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp111784
                                (let ((__tmp111786
                                       (lambda (_%id110592%_ _%k110593%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id110592%_))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _%id110592%_))
                                                   _%k110593%_)
                                             '#f)))
                                      (__tmp111785
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len110587%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp111786
                                   _%hd110583%_
                                   __tmp111785))))
                           (declare (not safe))
                           (cons _%len110587%_ __tmp111784))))
                    (declare (not safe))
                    (cons _%tmp110589%_ __tmp111783))
                  _%post110555%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%lp110550%_
                                                _%rest110582%_
                                                __tmp111788
                                                __tmp111787
                                                __tmp111782))))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _%stx110447%_
                                            _%hd110583%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest110556110570%_))
                              (let ((_%tl110566110619%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest110556110570%_)))
                                    (_%hd110565110617%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest110556110570%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd110565110617%_))
                                    (let ((_%tl110568110624%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd110565110617%_)))
                                          (_%hd110567110622%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd110565110617%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl110568110624%_))
                                          (let ((_%id110627%_
                                                 _%hd110567110622%_)
                                                (_%rest110629%_
                                                 _%tl110566110619%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K110564110614%_
                                               _%rest110629%_
                                               _%id110627%_)))
                                          (let ((_%hd110604%_
                                                 _%hd110565110617%_)
                                                (_%rest110606%_
                                                 _%tl110566110619%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K110561110596%_
                                               _%rest110606%_
                                               _%hd110604%_)))))
                                    (let ((_%hd110604%_ _%hd110565110617%_)
                                          (_%rest110606%_ _%tl110566110619%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%K110561110596%_
                                         _%rest110606%_
                                         _%hd110604%_)))))
                              (let ()
                                (declare (not safe))
                                (_%else110559110578%_))))))))
                 (_%compile-post110451%_
                  (lambda (_%post110453%_ _%body110454%_)
                    (let _%lp110456%_ ((_%rest110458%_ _%post110453%_)
                                       (_%check110459%_ '())
                                       (_%bind110460%_ '()))
                      (let* ((_%rest110461110473%_ _%rest110458%_)
                             (_%else110463110481%_
                              (lambda ()
                                (let ((__tmp111789
                                       (cons 'begin
                                             (let ((__tmp111790
                                                    (cons (let ((__tmp111791
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons 'let
                               (cons _%bind110460%_
                                     (cons _%body110454%_ '())))))
                    (declare (not safe))
                    (__SRC__% __tmp111791 _%stx110447%_))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__foldr1
                                                cons
                                                __tmp111790
                                                _%check110459%_)))))
                                  (declare (not safe))
                                  (__SRC__% __tmp111789 _%stx110447%_))))
                             (_%K110465110520%_
                              (lambda (_%rest110484%_
                                       _%init110485%_
                                       _%len110486%_
                                       _%tmp110487%_)
                                (let ((__tmp111794
                                       (cons (let ((__tmp111795
                                                    (cons '__check-values
                                                          (cons _%tmp110487%_
                                                                (cons _%len110486%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp111795
                                                _%stx110447%_))
                                             _%check110459%_))
                                      (__tmp111792
                                       (let ((__tmp111793
                                              (lambda (_%hd110489%_
                                                       _%r110490%_)
                                                (let* ((_%hd110491110498%_
                                                        _%hd110489%_)
                                                       (_%E110493110502%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd110491110498%_
                           '([id . k])))
                  '#!void))
               (_%K110494110508%_
                (lambda (_%k110505%_ _%id110506%_)
                  (cons (cons _%id110506%_
                              (cons (cons '##vector-ref
                                          (cons _%tmp110487%_
                                                (cons _%k110505%_ '())))
                                    '()))
                        _%r110490%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd110491110498%_))
                                                      (let ((_%hd110495110511%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd110491110498%_)))
                    (_%tl110496110513%_
                     (let () (declare (not safe)) (##cdr _%hd110491110498%_))))
                (let* ((_%id110516%_ _%hd110495110511%_)
                       (_%k110518%_ _%tl110496110513%_))
                  (declare (not safe))
                  (_%K110494110508%_ _%k110518%_ _%id110516%_)))
              (let () (declare (not safe)) (_%E110493110502%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp111793
                                          _%bind110460%_
                                          _%init110485%_))))
                                  (declare (not safe))
                                  (_%lp110456%_
                                   _%rest110484%_
                                   __tmp111794
                                   __tmp111792)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest110461110473%_))
                            (let ((_%hd110466110523%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest110461110473%_)))
                                  (_%tl110467110525%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest110461110473%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd110466110523%_))
                                  (let ((_%hd110468110528%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd110466110523%_)))
                                        (_%tl110469110530%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd110466110523%_))))
                                    (let ((_%tmp110533%_ _%hd110468110528%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl110469110530%_))
                                          (let ((_%hd110470110535%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl110469110530%_)))
                                                (_%tl110471110537%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl110469110530%_))))
                                            (let* ((_%len110540%_
                                                    _%hd110470110535%_)
                                                   (_%init110542%_
                                                    _%tl110471110537%_)
                                                   (_%rest110544%_
                                                    _%tl110467110525%_))
                                              (declare (not safe))
                                              (_%K110465110520%_
                                               _%rest110544%_
                                               _%init110542%_
                                               _%len110540%_
                                               _%tmp110533%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%else110463110481%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%else110463110481%_))))
                            (let ()
                              (declare (not safe))
                              (_%else110463110481%_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _%stx110447%_
             _%compile-simple110449%_
             _%compile-values110450%_)))))
    (define __compile-letrec-values%
      (lambda (_%stx110244%_)
        (letrec ((_%compile-simple110246%_
                  (lambda (_%hd-ids110443%_ _%exprs110444%_ _%body110445%_)
                    (let ((__tmp111796
                           (cons 'letrec
                                 (cons (let ((__tmp111797
                                              (map __compile-head-id
                                                   _%hd-ids110443%_)))
                                         (declare (not safe))
                                         (##map list
                                                __tmp111797
                                                _%exprs110444%_))
                                       (cons _%body110445%_ '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111796 _%stx110244%_))))
                 (_%compile-values110247%_
                  (lambda (_%hd-ids110354%_ _%exprs110355%_ _%body110356%_)
                    (let _%lp110358%_ ((_%rest110360%_ _%hd-ids110354%_)
                                       (_%exprs110361%_ _%exprs110355%_)
                                       (_%pre110362%_ '())
                                       (_%bind110363%_ '())
                                       (_%post110364%_ '()))
                      (let* ((_%rest110365110379%_ _%rest110360%_)
                             (_%else110368110387%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_%compile-inner110248%_
                                   _%pre110362%_
                                   _%bind110363%_
                                   _%post110364%_
                                   _%body110356%_)))))
                        (let ((_%K110373110426%_
                               (lambda (_%rest110423%_ _%id110424%_)
                                 (let ((__tmp111799 (cdr _%exprs110361%_))
                                       (__tmp111798
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (__compile-head-id
                                                       _%id110424%_))
                                                    (cons (car _%exprs110361%_)
                                                          '()))
                                              _%bind110363%_)))
                                   (declare (not safe))
                                   (_%lp110358%_
                                    _%rest110423%_
                                    __tmp111799
                                    _%pre110362%_
                                    __tmp111798
                                    _%post110364%_))))
                              (_%K110370110408%_
                               (lambda (_%rest110391%_ _%hd110392%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd110392%_))
                                     (let ((__tmp111801 (cdr _%exprs110361%_))
                                           (__tmp111800
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (__compile-head-id
                                                           _%hd110392%_))
                                                        (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (car _%exprs110361%_) '()))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%bind110363%_)))
                                       (declare (not safe))
                                       (_%lp110358%_
                                        _%rest110391%_
                                        __tmp111801
                                        _%pre110362%_
                                        __tmp111800
                                        _%post110364%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _%hd110392%_))
                                         (let ()
                                           (let* ((_%len110396%_
                                                   (length _%hd110392%_))
                                                  (_%tmp110398%_
                                                   (let ((__tmp111802
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym))))
                                                     (declare (not safe))
                                                     (__SRC__0 __tmp111802))))
                                             (let ((__tmp111811
                                                    (cdr _%exprs110361%_))
                                                   (__tmp111809
                                                    (let ((__tmp111810
                                                           (lambda (_%id110401%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%r110402%_)
                     (if (let () (declare (not safe)) (__AST-e _%id110401%_))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (__SRC__0 _%id110401%_))
                                     (cons (cons 'quote (cons '#!void '()))
                                           '()))
                               _%r110402%_)
                         _%r110402%_))))
              (declare (not safe))
              (__foldl1 __tmp111810 _%pre110362%_ _%hd110392%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp111808
                                                    (cons (cons _%tmp110398%_
                                                                (cons (car _%exprs110361%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%bind110363%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp111803
                                                    (cons (let ((__tmp111804
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp111805
                                (let ((__tmp111807
                                       (lambda (_%id110404%_ _%k110405%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id110404%_))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _%id110404%_))
                                                   _%k110405%_)
                                             '#f)))
                                      (__tmp111806
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len110396%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp111807
                                   _%hd110392%_
                                   __tmp111806))))
                           (declare (not safe))
                           (cons _%len110396%_ __tmp111805))))
                    (declare (not safe))
                    (cons _%tmp110398%_ __tmp111804))
                  _%post110364%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%lp110358%_
                                                _%rest110391%_
                                                __tmp111811
                                                __tmp111809
                                                __tmp111808
                                                __tmp111803))))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _%stx110244%_
                                            _%hd110392%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest110365110379%_))
                              (let ((_%tl110375110431%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest110365110379%_)))
                                    (_%hd110374110429%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest110365110379%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd110374110429%_))
                                    (let ((_%tl110377110436%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd110374110429%_)))
                                          (_%hd110376110434%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd110374110429%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl110377110436%_))
                                          (let ((_%id110439%_
                                                 _%hd110376110434%_)
                                                (_%rest110441%_
                                                 _%tl110375110431%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K110373110426%_
                                               _%rest110441%_
                                               _%id110439%_)))
                                          (let ((_%hd110416%_
                                                 _%hd110374110429%_)
                                                (_%rest110418%_
                                                 _%tl110375110431%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K110370110408%_
                                               _%rest110418%_
                                               _%hd110416%_)))))
                                    (let ((_%hd110416%_ _%hd110374110429%_)
                                          (_%rest110418%_ _%tl110375110431%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%K110370110408%_
                                         _%rest110418%_
                                         _%hd110416%_)))))
                              (let ()
                                (declare (not safe))
                                (_%else110368110387%_))))))))
                 (_%compile-inner110248%_
                  (lambda (_%pre110349%_
                           _%bind110350%_
                           _%post110351%_
                           _%body110352%_)
                    (if (let () (declare (not safe)) (null? _%pre110349%_))
                        (let ()
                          (declare (not safe))
                          (_%compile-bind110249%_
                           _%bind110350%_
                           _%post110351%_
                           _%body110352%_))
                        (let ((__tmp111812
                               (cons 'let
                                     (cons (reverse _%pre110349%_)
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_%compile-bind110249%_
                                                    _%bind110350%_
                                                    _%post110351%_
                                                    _%body110352%_))
                                                 '())))))
                          (declare (not safe))
                          (__SRC__% __tmp111812 _%stx110244%_)))))
                 (_%compile-bind110249%_
                  (lambda (_%bind110345%_ _%post110346%_ _%body110347%_)
                    (let ((__tmp111813
                           (cons 'letrec
                                 (cons (reverse _%bind110345%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (_%compile-post110250%_
                                                _%post110346%_
                                                _%body110347%_))
                                             '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111813 _%stx110244%_))))
                 (_%compile-post110250%_
                  (lambda (_%post110252%_ _%body110253%_)
                    (let _%lp110255%_ ((_%rest110257%_ _%post110252%_)
                                       (_%check110258%_ '())
                                       (_%bind110259%_ '()))
                      (let* ((_%rest110260110272%_ _%rest110257%_)
                             (_%else110262110280%_
                              (lambda ()
                                (let ((__tmp111814
                                       (cons 'begin
                                             (let ((__tmp111815
                                                    (let ((__tmp111816
                                                           (cons _%body110253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
              (declare (not safe))
              (__foldr1 cons __tmp111816 _%bind110259%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__foldr1
                                                cons
                                                __tmp111815
                                                _%check110258%_)))))
                                  (declare (not safe))
                                  (__SRC__% __tmp111814 _%stx110244%_))))
                             (_%K110264110319%_
                              (lambda (_%rest110283%_
                                       _%init110284%_
                                       _%len110285%_
                                       _%tmp110286%_)
                                (let ((__tmp111819
                                       (cons (let ((__tmp111820
                                                    (cons '__check-values
                                                          (cons _%tmp110286%_
                                                                (cons _%len110285%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp111820
                                                _%stx110244%_))
                                             _%check110258%_))
                                      (__tmp111817
                                       (let ((__tmp111818
                                              (lambda (_%hd110288%_
                                                       _%r110289%_)
                                                (let* ((_%hd110290110297%_
                                                        _%hd110288%_)
                                                       (_%E110292110301%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd110290110297%_
                           '([id . k])))
                  '#!void))
               (_%K110293110307%_
                (lambda (_%k110304%_ _%id110305%_)
                  (cons (cons 'set!
                              (cons _%id110305%_
                                    (cons (cons '##vector-ref
                                                (cons _%tmp110286%_
                                                      (cons _%k110304%_ '())))
                                          '())))
                        _%r110289%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd110290110297%_))
                                                      (let ((_%hd110294110310%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd110290110297%_)))
                    (_%tl110295110312%_
                     (let () (declare (not safe)) (##cdr _%hd110290110297%_))))
                (let* ((_%id110315%_ _%hd110294110310%_)
                       (_%k110317%_ _%tl110295110312%_))
                  (declare (not safe))
                  (_%K110293110307%_ _%k110317%_ _%id110315%_)))
              (let () (declare (not safe)) (_%E110292110301%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp111818
                                          _%bind110259%_
                                          _%init110284%_))))
                                  (declare (not safe))
                                  (_%lp110255%_
                                   _%rest110283%_
                                   __tmp111819
                                   __tmp111817)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest110260110272%_))
                            (let ((_%hd110265110322%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest110260110272%_)))
                                  (_%tl110266110324%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest110260110272%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd110265110322%_))
                                  (let ((_%hd110267110327%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd110265110322%_)))
                                        (_%tl110268110329%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd110265110322%_))))
                                    (let ((_%tmp110332%_ _%hd110267110327%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl110268110329%_))
                                          (let ((_%hd110269110334%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl110268110329%_)))
                                                (_%tl110270110336%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl110268110329%_))))
                                            (let* ((_%len110339%_
                                                    _%hd110269110334%_)
                                                   (_%init110341%_
                                                    _%tl110270110336%_)
                                                   (_%rest110343%_
                                                    _%tl110266110324%_))
                                              (declare (not safe))
                                              (_%K110264110319%_
                                               _%rest110343%_
                                               _%init110341%_
                                               _%len110339%_
                                               _%tmp110332%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%else110262110280%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%else110262110280%_))))
                            (let ()
                              (declare (not safe))
                              (_%else110262110280%_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _%stx110244%_
             _%compile-simple110246%_
             _%compile-values110247%_)))))
    (define __compile-letrec*-values%
      (lambda (_%stx109995%_)
        (letrec ((_%compile-simple109997%_
                  (lambda (_%hd-ids110240%_ _%exprs110241%_ _%body110242%_)
                    (let ((__tmp111821
                           (cons 'letrec*
                                 (cons (let ((__tmp111822
                                              (map __compile-head-id
                                                   _%hd-ids110240%_)))
                                         (declare (not safe))
                                         (##map list
                                                __tmp111822
                                                _%exprs110241%_))
                                       (cons _%body110242%_ '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111821 _%stx109995%_))))
                 (_%compile-values109998%_
                  (lambda (_%hd-ids110147%_ _%exprs110148%_ _%body110149%_)
                    (let _%lp110151%_ ((_%rest110153%_ _%hd-ids110147%_)
                                       (_%exprs110154%_ _%exprs110148%_)
                                       (_%bind110155%_ '())
                                       (_%post110156%_ '()))
                      (let* ((_%rest110157110171%_ _%rest110153%_)
                             (_%else110160110179%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_%compile-bind109999%_
                                   _%bind110155%_
                                   _%post110156%_
                                   _%body110149%_)))))
                        (let ((_%K110165110223%_
                               (lambda (_%rest110218%_ _%hd110219%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd110219%_))
                                     (let ((_%id110221%_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _%hd110219%_))))
                                       (let ((__tmp111825
                                              (cdr _%exprs110154%_))
                                             (__tmp111824
                                              (cons (cons _%id110221%_
                                                          (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons '#!void '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%bind110155%_))
                                             (__tmp111823
                                              (cons (cons _%id110221%_
                                                          (cons (car _%exprs110154%_)
                                                                '()))
                                                    _%post110156%_)))
                                         (declare (not safe))
                                         (_%lp110151%_
                                          _%rest110218%_
                                          __tmp111825
                                          __tmp111824
                                          __tmp111823)))
                                     (let ((__tmp111827 (cdr _%exprs110154%_))
                                           (__tmp111826
                                            (cons (cons '#f
                                                        (cons (car _%exprs110154%_)
                                                              '()))
                                                  _%post110156%_)))
                                       (declare (not safe))
                                       (_%lp110151%_
                                        _%rest110218%_
                                        __tmp111827
                                        _%bind110155%_
                                        __tmp111826)))))
                              (_%K110162110203%_
                               (lambda (_%rest110183%_ _%hd110184%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd110184%_))
                                     (let ((_%id110187%_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _%hd110184%_))))
                                       (let ((__tmp111830
                                              (cdr _%exprs110154%_))
                                             (__tmp111829
                                              (cons (cons _%id110187%_
                                                          (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons '#!void '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%bind110155%_))
                                             (__tmp111828
                                              (cons (cons _%id110187%_
                                                          (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (car _%exprs110154%_) '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%post110156%_)))
                                         (declare (not safe))
                                         (_%lp110151%_
                                          _%rest110183%_
                                          __tmp111830
                                          __tmp111829
                                          __tmp111828)))
                                     (if (let ((__tmp111831
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _%hd110184%_))))
                                           (declare (not safe))
                                           (not __tmp111831))
                                         (let ((__tmp111833
                                                (cdr _%exprs110154%_))
                                               (__tmp111832
                                                (cons (cons '#f
                                                            (cons (car _%exprs110154%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%post110156%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_%lp110151%_
                                            _%rest110183%_
                                            __tmp111833
                                            _%bind110155%_
                                            __tmp111832))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _%hd110184%_))
                                             (let ()
                                               (let* ((_%len110191%_
                                                       (length _%hd110184%_))
                                                      (_%tmp110193%_
                                                       (let ((__tmp111834
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym))))
                 (declare (not safe))
                 (__SRC__0 __tmp111834))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp111844
                                                        (cdr _%exprs110154%_))
                                                       (__tmp111842
                                                        (let ((__tmp111843
                                                               (lambda (_%id110196%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%r110197%_)
                         (if (let ()
                               (declare (not safe))
                               (__AST-e _%id110196%_))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (__SRC__0 _%id110196%_))
                                         (cons (cons 'quote (cons '#!void '()))
                                               '()))
                                   _%r110197%_)
                             _%r110197%_))))
                  (declare (not safe))
                  (__foldl1 __tmp111843 _%bind110155%_ _%hd110184%_)))
               (__tmp111835
                (cons (let ((__tmp111836
                             (let ((__tmp111841 (car _%exprs110154%_))
                                   (__tmp111837
                                    (let ((__tmp111838
                                           (let ((__tmp111840
                                                  (lambda (_%id110199%_
                                                           _%k110200%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%id110199%_))
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _%id110199%_))
                      _%k110200%_)
                '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (__tmp111839
                                                  (let ()
                                                    (declare (not safe))
                                                    (##iota _%len110191%_))))
                                             (declare (not safe))
                                             (__filter-map2
                                              __tmp111840
                                              _%hd110184%_
                                              __tmp111839))))
                                      (declare (not safe))
                                      (cons _%len110191%_ __tmp111838))))
                               (declare (not safe))
                               (cons __tmp111841 __tmp111837))))
                        (declare (not safe))
                        (cons _%tmp110193%_ __tmp111836))
                      _%post110156%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_%lp110151%_
                                                    _%rest110183%_
                                                    __tmp111844
                                                    __tmp111842
                                                    __tmp111835))))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _%stx109995%_
                                                _%hd110184%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest110157110171%_))
                              (let ((_%tl110167110228%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest110157110171%_)))
                                    (_%hd110166110226%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest110157110171%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd110166110226%_))
                                    (let ((_%tl110169110233%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd110166110226%_)))
                                          (_%hd110168110231%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd110166110226%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl110169110233%_))
                                          (let ((_%hd110236%_
                                                 _%hd110168110231%_)
                                                (_%rest110238%_
                                                 _%tl110167110228%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K110165110223%_
                                               _%rest110238%_
                                               _%hd110236%_)))
                                          (let ((_%hd110211%_
                                                 _%hd110166110226%_)
                                                (_%rest110213%_
                                                 _%tl110167110228%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K110162110203%_
                                               _%rest110213%_
                                               _%hd110211%_)))))
                                    (let ((_%hd110211%_ _%hd110166110226%_)
                                          (_%rest110213%_ _%tl110167110228%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%K110162110203%_
                                         _%rest110213%_
                                         _%hd110211%_)))))
                              (let ()
                                (declare (not safe))
                                (_%else110160110179%_))))))))
                 (_%compile-bind109999%_
                  (lambda (_%bind110143%_ _%post110144%_ _%body110145%_)
                    (let ((__tmp111845
                           (cons 'let
                                 (cons (reverse _%bind110143%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (_%compile-post110000%_
                                                _%post110144%_
                                                _%body110145%_))
                                             '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111845 _%stx109995%_))))
                 (_%compile-post110000%_
                  (lambda (_%post110002%_ _%body110003%_)
                    (let ((__tmp111846
                           (cons 'begin
                                 (let ((__tmp111847
                                        (let ((__tmp111849
                                               (lambda (_%hd110005%_
                                                        _%r110006%_)
                                                 (let* ((_%hd110007110030%_
                                                         _%hd110005%_)
                                                        (_%E110011110034%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd110007110030%_
                            '([#f expr])
                            '([id expr])
                            '([tmp expr len . init])))
                   '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%K110024110128%_
                                                          (lambda (_%expr110126%_)
                                                            (cons _%expr110126%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r110006%_)))
                 (_%K110019110106%_
                  (lambda (_%expr110103%_ _%id110104%_)
                    (cons (let ((__tmp111850
                                 (cons 'set!
                                       (cons _%id110104%_
                                             (cons _%expr110103%_ '())))))
                            (declare (not safe))
                            (__SRC__% __tmp111850 _%stx109995%_))
                          _%r110006%_)))
                 (_%K110012110073%_
                  (lambda (_%init110038%_
                           _%len110039%_
                           _%expr110040%_
                           _%tmp110041%_)
                    (cons (let ((__tmp111851
                                 (cons 'let
                                       (cons (cons (cons _%tmp110041%_
                                                         (cons _%expr110040%_
                                                               '()))
                                                   '())
                                             (cons (let ((__tmp111852
                                                          (cons '__check-values
                                                                (cons _%tmp110041%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%len110039%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__SRC__%
                                                      __tmp111852
                                                      _%stx109995%_))
                                                   (let ((__tmp111853
                                                          (map (lambda (_%hd110043%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_%hd110044110051%_ _%hd110043%_)
                                (_%E110046110055%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"No clause matching"
                                            _%hd110044110051%_
                                            '([id . k])))
                                   '#!void))
                                (_%K110047110061%_
                                 (lambda (_%k110058%_ _%id110059%_)
                                   (let ((__tmp111854
                                          (cons 'set!
                                                (cons _%id110059%_
                                                      (cons (cons '##vector-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%tmp110041%_ (cons _%k110058%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (declare (not safe))
                                     (__SRC__% __tmp111854 _%stx109995%_)))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%hd110044110051%_))
                               (let ((_%hd110048110064%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%hd110044110051%_)))
                                     (_%tl110049110066%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%hd110044110051%_))))
                                 (let* ((_%id110069%_ _%hd110048110064%_)
                                        (_%k110071%_ _%tl110049110066%_))
                                   (declare (not safe))
                                   (_%K110047110061%_
                                    _%k110071%_
                                    _%id110069%_)))
                               (let ()
                                 (declare (not safe))
                                 (_%E110046110055%_)))))
                       _%init110038%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      '()
                                                      __tmp111853)))))))
                            (declare (not safe))
                            (__SRC__% __tmp111851 _%stx109995%_))
                          _%r110006%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__match111622111623%_
                                                             (lambda (_%hd110013110076%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%tl110014110078%_
                              _%hd110015110083%_
                              _%tl110016110085%_)
                       (let ((_%tmp110081%_ _%hd110013110076%_)
                             (_%expr110088%_ _%hd110015110083%_))
                         (let () (declare (not safe)) (_%E110011110034%_)))))
                    (_%__match111616111617%_
                     (lambda (_%hd110013110076%_ _%tl110014110078%_)
                       (let ((_%tmp110081%_ _%hd110013110076%_))
                         (declare (not safe))
                         (_%E110011110034%_)))))
               (if (let () (declare (not safe)) (##pair? _%hd110007110030%_))
                   (let ((_%tl110026110133%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd110007110030%_)))
                         (_%hd110025110131%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd110007110030%_))))
                     (if (let ()
                           (declare (not safe))
                           (##eq? _%hd110025110131%_ '#f))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%tl110026110133%_))
                             (let ((_%tl110028110138%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl110026110133%_)))
                                   (_%hd110027110136%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%tl110026110133%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%tl110028110138%_))
                                   (let ((_%expr110141%_ _%hd110027110136%_))
                                     (declare (not safe))
                                     (_%K110024110128%_ _%expr110141%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%tl110028110138%_))
                                       (let ((_%tl110018110092%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl110028110138%_)))
                                             (_%hd110017110090%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%tl110028110138%_))))
                                         (let ((_%tmp110081%_
                                                _%hd110025110131%_)
                                               (_%expr110088%_
                                                _%hd110027110136%_)
                                               (_%len110095%_
                                                _%hd110017110090%_)
                                               (_%init110097%_
                                                _%tl110018110092%_))
                                           (let ()
                                             (declare (not safe))
                                             (_%K110012110073%_
                                              _%init110097%_
                                              _%len110095%_
                                              _%expr110088%_
                                              _%tmp110081%_))))
                                       (_%__match111622111623%_
                                        _%hd110025110131%_
                                        _%tl110026110133%_
                                        _%hd110027110136%_
                                        _%tl110028110138%_))))
                             (_%__match111616111617%_
                              _%hd110025110131%_
                              _%tl110026110133%_))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%tl110026110133%_))
                             (let ((_%tl110023110118%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl110026110133%_)))
                                   (_%hd110022110116%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%tl110026110133%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%tl110023110118%_))
                                   (let ((_%id110114%_ _%hd110025110131%_)
                                         (_%expr110121%_ _%hd110022110116%_))
                                     (let ()
                                       (declare (not safe))
                                       (_%K110019110106%_
                                        _%expr110121%_
                                        _%id110114%_)))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%tl110023110118%_))
                                       (let ((_%tl110018110092%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl110023110118%_)))
                                             (_%hd110017110090%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%tl110023110118%_))))
                                         (let ((_%tmp110081%_
                                                _%hd110025110131%_)
                                               (_%expr110088%_
                                                _%hd110022110116%_)
                                               (_%len110095%_
                                                _%hd110017110090%_)
                                               (_%init110097%_
                                                _%tl110018110092%_))
                                           (let ()
                                             (declare (not safe))
                                             (_%K110012110073%_
                                              _%init110097%_
                                              _%len110095%_
                                              _%expr110088%_
                                              _%tmp110081%_))))
                                       (_%__match111622111623%_
                                        _%hd110025110131%_
                                        _%tl110026110133%_
                                        _%hd110022110116%_
                                        _%tl110023110118%_))))
                             (_%__match111616111617%_
                              _%hd110025110131%_
                              _%tl110026110133%_))))
                   (let () (declare (not safe)) (_%E110011110034%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (__tmp111848
                                               (list _%body110003%_)))
                                          (declare (not safe))
                                          (__foldl1
                                           __tmp111849
                                           __tmp111848
                                           _%post110002%_))))
                                   (declare (not safe))
                                   (__foldr1 cons '() __tmp111847)))))
                      (declare (not safe))
                      (__SRC__% __tmp111846 _%stx109995%_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _%stx109995%_
             _%compile-simple109997%_
             _%compile-values109998%_)))))
    (define __compile-call%
      (lambda (_%stx109955%_)
        (let* ((_%$e109957%_ _%stx109955%_)
               (_%$E109959109968%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109957%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109957%_))
              (let* ((_%$tgt109960109971%_
                      (let () (declare (not safe)) (__AST-e _%$e109957%_)))
                     (_%$hd109961109974%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109960109971%_)))
                     (_%$tl109962109977%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109960109971%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109962109977%_))
                    (let* ((_%$tgt109963109981%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109962109977%_)))
                           (_%$hd109964109984%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109963109981%_)))
                           (_%$tl109965109987%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109963109981%_))))
                      (let* ((_%rator109991%_ _%$hd109964109984%_)
                             (_%rands109993%_ _%$tl109965109987%_)
                             (__tmp111855
                              (cons (let ()
                                      (declare (not safe))
                                      (__compile _%rator109991%_))
                                    (map __compile _%rands109993%_))))
                        (declare (not safe))
                        (__SRC__% __tmp111855 _%stx109955%_)))
                    (let () (declare (not safe)) (_%$E109959109968%_))))
              (let () (declare (not safe)) (_%$E109959109968%_))))))
    (define __compile-ref%
      (lambda (_%stx109917%_)
        (let* ((_%$e109919%_ _%stx109917%_)
               (_%$E109921109930%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109919%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109919%_))
              (let* ((_%$tgt109922109933%_
                      (let () (declare (not safe)) (__AST-e _%$e109919%_)))
                     (_%$hd109923109936%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109922109933%_)))
                     (_%$tl109924109939%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109922109933%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109924109939%_))
                    (let* ((_%$tgt109925109943%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109924109939%_)))
                           (_%$hd109926109946%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109925109943%_)))
                           (_%$tl109927109949%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109925109943%_)))
                           (_%id109953%_ _%$hd109926109946%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl109927109949%_))
                                  '())
                          (let ()
                            (declare (not safe))
                            (__SRC__% _%id109953%_ _%stx109917%_))
                          (let () (declare (not safe)) (_%$E109921109930%_))))
                    (let () (declare (not safe)) (_%$E109921109930%_))))
              (let () (declare (not safe)) (_%$E109921109930%_))))))
    (define __compile-setq%
      (lambda (_%stx109864%_)
        (let* ((_%$e109866%_ _%stx109864%_)
               (_%$E109868109880%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109866%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109866%_))
              (let* ((_%$tgt109869109883%_
                      (let () (declare (not safe)) (__AST-e _%$e109866%_)))
                     (_%$hd109870109886%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109869109883%_)))
                     (_%$tl109871109889%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109869109883%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109871109889%_))
                    (let* ((_%$tgt109872109893%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109871109889%_)))
                           (_%$hd109873109896%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109872109893%_)))
                           (_%$tl109874109899%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109872109893%_)))
                           (_%id109903%_ _%$hd109873109896%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl109874109899%_))
                          (let* ((_%$tgt109875109905%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl109874109899%_)))
                                 (_%$hd109876109908%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt109875109905%_)))
                                 (_%$tl109877109911%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt109875109905%_)))
                                 (_%expr109915%_ _%$hd109876109908%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl109877109911%_))
                                        '())
                                (let ((__tmp111856
                                       (cons 'set!
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (__SRC__%
                                                      _%id109903%_
                                                      _%stx109864%_))
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__compile
                                                            _%expr109915%_))
                                                         '())))))
                                  (declare (not safe))
                                  (__SRC__% __tmp111856 _%stx109864%_))
                                (let ()
                                  (declare (not safe))
                                  (_%$E109868109880%_))))
                          (let () (declare (not safe)) (_%$E109868109880%_))))
                    (let () (declare (not safe)) (_%$E109868109880%_))))
              (let () (declare (not safe)) (_%$E109868109880%_))))))
    (define __compile-if%
      (lambda (_%stx109796%_)
        (let* ((_%$e109798%_ _%stx109796%_)
               (_%$E109800109815%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109798%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109798%_))
              (let* ((_%$tgt109801109818%_
                      (let () (declare (not safe)) (__AST-e _%$e109798%_)))
                     (_%$hd109802109821%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109801109818%_)))
                     (_%$tl109803109824%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109801109818%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109803109824%_))
                    (let* ((_%$tgt109804109828%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109803109824%_)))
                           (_%$hd109805109831%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109804109828%_)))
                           (_%$tl109806109834%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109804109828%_)))
                           (_%p109838%_ _%$hd109805109831%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl109806109834%_))
                          (let* ((_%$tgt109807109840%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl109806109834%_)))
                                 (_%$hd109808109843%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt109807109840%_)))
                                 (_%$tl109809109846%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt109807109840%_)))
                                 (_%t109850%_ _%$hd109808109843%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl109809109846%_))
                                (let* ((_%$tgt109810109852%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl109809109846%_)))
                                       (_%$hd109811109855%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt109810109852%_)))
                                       (_%$tl109812109858%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt109810109852%_)))
                                       (_%f109862%_ _%$hd109811109855%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl109812109858%_))
                                              '())
                                      (let ((__tmp111857
                                             (cons 'if
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__compile
                                                            _%p109838%_))
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (__compile _%t109850%_))
                       (cons (let ()
                               (declare (not safe))
                               (__compile _%f109862%_))
                             '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (declare (not safe))
                                        (__SRC__% __tmp111857 _%stx109796%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%$E109800109815%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%$E109800109815%_))))
                          (let () (declare (not safe)) (_%$E109800109815%_))))
                    (let () (declare (not safe)) (_%$E109800109815%_))))
              (let () (declare (not safe)) (_%$E109800109815%_))))))
    (define __compile-quote%
      (lambda (_%stx109758%_)
        (let* ((_%$e109760%_ _%stx109758%_)
               (_%$E109762109771%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109760%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109760%_))
              (let* ((_%$tgt109763109774%_
                      (let () (declare (not safe)) (__AST-e _%$e109760%_)))
                     (_%$hd109764109777%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109763109774%_)))
                     (_%$tl109765109780%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109763109774%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109765109780%_))
                    (let* ((_%$tgt109766109784%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109765109780%_)))
                           (_%$hd109767109787%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109766109784%_)))
                           (_%$tl109768109790%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109766109784%_)))
                           (_%e109794%_ _%$hd109767109787%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl109768109790%_))
                                  '())
                          (let ((__tmp111858
                                 (cons 'quote
                                       (cons (let ()
                                               (declare (not safe))
                                               (__AST->datum _%e109794%_))
                                             '()))))
                            (declare (not safe))
                            (__SRC__% __tmp111858 _%stx109758%_))
                          (let () (declare (not safe)) (_%$E109762109771%_))))
                    (let () (declare (not safe)) (_%$E109762109771%_))))
              (let () (declare (not safe)) (_%$E109762109771%_))))))
    (define __compile-quote-syntax%
      (lambda (_%stx109720%_)
        (let* ((_%$e109722%_ _%stx109720%_)
               (_%$E109724109733%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109722%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109722%_))
              (let* ((_%$tgt109725109736%_
                      (let () (declare (not safe)) (__AST-e _%$e109722%_)))
                     (_%$hd109726109739%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109725109736%_)))
                     (_%$tl109727109742%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109725109736%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109727109742%_))
                    (let* ((_%$tgt109728109746%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109727109742%_)))
                           (_%$hd109729109749%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109728109746%_)))
                           (_%$tl109730109752%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109728109746%_)))
                           (_%e109756%_ _%$hd109729109749%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl109730109752%_))
                                  '())
                          (let ((__tmp111859
                                 (cons 'quote (cons _%e109756%_ '()))))
                            (declare (not safe))
                            (__SRC__% __tmp111859 _%stx109720%_))
                          (let () (declare (not safe)) (_%$E109724109733%_))))
                    (let () (declare (not safe)) (_%$E109724109733%_))))
              (let () (declare (not safe)) (_%$E109724109733%_))))))
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

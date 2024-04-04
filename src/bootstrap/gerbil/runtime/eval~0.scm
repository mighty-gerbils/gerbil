(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1712251111)
  (begin
    (define __syntax::t
      (let ((__tmp111791 (list)) (__tmp111790 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp111791
         '(e id)
         __tmp111790
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args111595%_
        (apply make-instance __syntax::t _%$args111595%_)))
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
      (let ((__tmp111793 (list __syntax::t))
            (__tmp111792 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp111793
         '()
         __tmp111792
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args111592%_
        (apply make-instance __core-form::t _%$args111592%_)))
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
      (let ((__tmp111795 (list __core-form::t))
            (__tmp111794 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp111795
         '()
         __tmp111794
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args111589%_
        (apply make-instance __core-expression::t _%$args111589%_)))
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
      (let ((__tmp111797 (list __core-form::t))
            (__tmp111796 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp111797
         '()
         __tmp111796
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args111586%_
        (apply make-instance __core-special-form::t _%$args111586%_)))
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
      (lambda (_%id111584%_)
        (let ((__tmp111798
               (let () (declare (not safe)) (__AST-e _%id111584%_))))
          (declare (not safe))
          (hash-get __core __tmp111798))))
    (define __core-bound-id?__%
      (lambda (_%id111567%_ _%is?111568%_)
        (let ((_%$e111570%_
               (let () (declare (not safe)) (__core-resolve _%id111567%_))))
          (if _%$e111570%_ (_%is?111568%_ _%$e111570%_) (let () '#f)))))
    (define __core-bound-id?__0
      (lambda (_%id111577%_)
        (let ((_%is?111579%_ true))
          (declare (not safe))
          (__core-bound-id?__% _%id111577%_ _%is?111579%_))))
    (define __core-bound-id?
      (lambda _g111800_
        (let ((_g111799_ (let () (declare (not safe)) (##length _g111800_))))
          (cond ((let () (declare (not safe)) (##fx= _g111799_ 1))
                 (apply (lambda (_%id111577%_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _%id111577%_)))
                        _g111800_))
                ((let () (declare (not safe)) (##fx= _g111799_ 2))
                 (apply (lambda (_%id111581%_ _%is?111582%_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _%id111581%_ _%is?111582%_)))
                        _g111800_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g111800_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id111550%_ _%e111551%_ _%make111552%_)
        (let ((__tmp111801
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e111551%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e111551%_
                   (_%make111552%_ _%e111551%_ _%id111550%_))))
          (declare (not safe))
          (hash-put! __core _%id111550%_ __tmp111801))))
    (define __core-bind-syntax!__0
      (lambda (_%id111557%_ _%e111558%_)
        (let ((_%make111560%_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _%id111557%_ _%e111558%_ _%make111560%_))))
    (define __core-bind-syntax!
      (lambda _g111803_
        (let ((_g111802_ (let () (declare (not safe)) (##length _g111803_))))
          (cond ((let () (declare (not safe)) (##fx= _g111802_ 2))
                 (apply (lambda (_%id111557%_ _%e111558%_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _%id111557%_ _%e111558%_)))
                        _g111803_))
                ((let () (declare (not safe)) (##fx= _g111802_ 3))
                 (apply (lambda (_%id111562%_ _%e111563%_ _%make111564%_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _%id111562%_
                             _%e111563%_
                             _%make111564%_)))
                        _g111803_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g111803_))))))
    (define __SRC__%
      (lambda (_%e111530%_ _%src-stx111531%_)
        (if (or (let () (declare (not safe)) (pair? _%e111530%_))
                (let () (declare (not safe)) (symbol? _%e111530%_)))
            (let ((__tmp111804
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx111531%_
                          'gerbil#AST::t))
                       (let ((__tmp111805
                              (let ()
                                (declare (not safe))
                                (__AST-source _%src-stx111531%_))))
                         (declare (not safe))
                         (__locat __tmp111805))
                       '#f)))
              (declare (not safe))
              (##make-source _%e111530%_ __tmp111804))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e111530%_ 'gerbil#AST::t))
                (let ((__tmp111808
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e111530%_ '1 '#f '#f)))
                      (__tmp111806
                       (let ((__tmp111807
                              (let ()
                                (declare (not safe))
                                (__AST-source _%e111530%_))))
                         (declare (not safe))
                         (__locat __tmp111807))))
                  (declare (not safe))
                  (##make-source __tmp111808 __tmp111806))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e111530%_))))))
    (define __SRC__0
      (lambda (_%e111542%_)
        (let ((_%src-stx111544%_ '#f))
          (declare (not safe))
          (__SRC__% _%e111542%_ _%src-stx111544%_))))
    (define __SRC
      (lambda _g111810_
        (let ((_g111809_ (let () (declare (not safe)) (##length _g111810_))))
          (cond ((let () (declare (not safe)) (##fx= _g111809_ 1))
                 (apply (lambda (_%e111542%_)
                          (let () (declare (not safe)) (__SRC__0 _%e111542%_)))
                        _g111810_))
                ((let () (declare (not safe)) (##fx= _g111809_ 2))
                 (apply (lambda (_%e111546%_ _%src-stx111547%_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _%e111546%_ _%src-stx111547%_)))
                        _g111810_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g111810_))))))
    (define __locat
      (lambda (_%loc111527%_)
        (if (let () (declare (not safe)) (##locat? _%loc111527%_))
            _%loc111527%_
            '#f)))
    (define __check-values
      (lambda (_%obj111522%_ _%k111523%_)
        (let ((_%count111525%_
               (if (let () (declare (not safe)) (##values? _%obj111522%_))
                   (let ()
                     (declare (not safe))
                     (##vector-length _%obj111522%_))
                   '1)))
          (if (fx= _%count111525%_ _%k111523%_)
              '#!void
              (let ((__tmp111812
                     (if (fx< _%count111525%_ _%k111523%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp111811
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj111522%_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _%obj111522%_))
                         _%obj111522%_)))
                (declare (not safe))
                (error __tmp111812 __tmp111811 _%k111523%_))))))
    (define __compile
      (lambda (_%stx111491%_)
        (let* ((_%$e111493%_ _%stx111491%_)
               (_%$E111495111501%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111493%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111493%_))
              (let* ((_%$tgt111496111504%_
                      (let () (declare (not safe)) (__AST-e _%$e111493%_)))
                     (_%$hd111497111507%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111496111504%_)))
                     (_%$tl111498111510%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111496111504%_))))
                (let* ((_%form111514%_ _%$hd111497111507%_)
                       (_%$e111516%_
                        (let ()
                          (declare (not safe))
                          (__core-resolve _%form111514%_))))
                  (if _%$e111516%_
                      ((lambda (_%bind111519%_)
                         ((##structure-ref _%bind111519%_ '1 __syntax::t '#f)
                          _%stx111491%_))
                       _%$e111516%_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _%stx111491%_
                         _%form111514%_)))))
              (let () (declare (not safe)) (_%$E111495111501%_))))))
    (define __compile-error__%
      (lambda (_%stx111478%_ _%detail111479%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx111478%_
           _%detail111479%_))))
    (define __compile-error__0
      (lambda (_%stx111484%_)
        (let ((_%detail111486%_ '#f))
          (declare (not safe))
          (__compile-error__% _%stx111484%_ _%detail111486%_))))
    (define __compile-error
      (lambda _g111814_
        (let ((_g111813_ (let () (declare (not safe)) (##length _g111814_))))
          (cond ((let () (declare (not safe)) (##fx= _g111813_ 1))
                 (apply (lambda (_%stx111484%_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _%stx111484%_)))
                        _g111814_))
                ((let () (declare (not safe)) (##fx= _g111813_ 2))
                 (apply (lambda (_%stx111488%_ _%detail111489%_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__%
                             _%stx111488%_
                             _%detail111489%_)))
                        _g111814_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g111814_))))))
    (define __compile-ignore%
      (lambda (_%stx111475%_)
        (let () (declare (not safe)) (__SRC__% ''#!void _%stx111475%_))))
    (define __compile-begin%
      (lambda (_%stx111450%_)
        (let* ((_%$e111452%_ _%stx111450%_)
               (_%$E111454111460%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111452%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111452%_))
              (let* ((_%$tgt111455111463%_
                      (let () (declare (not safe)) (__AST-e _%$e111452%_)))
                     (_%$hd111456111466%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111455111463%_)))
                     (_%$tl111457111469%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111455111463%_))))
                (let* ((_%body111473%_ _%$tl111457111469%_)
                       (__tmp111815
                        (cons 'begin (map __compile _%body111473%_))))
                  (declare (not safe))
                  (__SRC__% __tmp111815 _%stx111450%_)))
              (let () (declare (not safe)) (_%$E111454111460%_))))))
    (define __compile-begin-foreign%
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
                (let* ((_%body111448%_ _%$tl111432111444%_)
                       (__tmp111816
                        (cons 'begin
                              (let ()
                                (declare (not safe))
                                (__AST->datum _%body111448%_)))))
                  (declare (not safe))
                  (__SRC__% __tmp111816 _%stx111425%_)))
              (let () (declare (not safe)) (_%$E111429111435%_))))))
    (define __compile-import%
      (lambda (_%stx111400%_)
        (let* ((_%$e111402%_ _%stx111400%_)
               (_%$E111404111410%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111402%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111402%_))
              (let* ((_%$tgt111405111413%_
                      (let () (declare (not safe)) (__AST-e _%$e111402%_)))
                     (_%$hd111406111416%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111405111413%_)))
                     (_%$tl111407111419%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111405111413%_))))
                (let* ((_%body111423%_ _%$tl111407111419%_)
                       (__tmp111817
                        (cons '__eval-import
                              (cons (cons 'quote (cons _%body111423%_ '()))
                                    '()))))
                  (declare (not safe))
                  (__SRC__% __tmp111817 _%stx111400%_)))
              (let () (declare (not safe)) (_%$E111404111410%_))))))
    (define __compile-begin-annotation%
      (lambda (_%stx111347%_)
        (let* ((_%$e111349%_ _%stx111347%_)
               (_%$E111351111363%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111349%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111349%_))
              (let* ((_%$tgt111352111366%_
                      (let () (declare (not safe)) (__AST-e _%$e111349%_)))
                     (_%$hd111353111369%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111352111366%_)))
                     (_%$tl111354111372%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111352111366%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111354111372%_))
                    (let* ((_%$tgt111355111376%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111354111372%_)))
                           (_%$hd111356111379%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111355111376%_)))
                           (_%$tl111357111382%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111355111376%_)))
                           (_%ann111386%_ _%$hd111356111379%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl111357111382%_))
                          (let* ((_%$tgt111358111388%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111357111382%_)))
                                 (_%$hd111359111391%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111358111388%_)))
                                 (_%$tl111360111394%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111358111388%_)))
                                 (_%expr111398%_ _%$hd111359111391%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl111360111394%_))
                                        '())
                                (let ()
                                  (declare (not safe))
                                  (__compile _%expr111398%_))
                                (let ()
                                  (declare (not safe))
                                  (_%$E111351111363%_))))
                          (let () (declare (not safe)) (_%$E111351111363%_))))
                    (let () (declare (not safe)) (_%$E111351111363%_))))
              (let () (declare (not safe)) (_%$E111351111363%_))))))
    (define __compile-define-values%
      (lambda (_%stx111238%_)
        (let* ((_%$e111240%_ _%stx111238%_)
               (_%$E111242111254%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111240%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111240%_))
              (let* ((_%$tgt111243111257%_
                      (let () (declare (not safe)) (__AST-e _%$e111240%_)))
                     (_%$hd111244111260%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111243111257%_)))
                     (_%$tl111245111263%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111243111257%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111245111263%_))
                    (let* ((_%$tgt111246111267%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111245111263%_)))
                           (_%$hd111247111270%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111246111267%_)))
                           (_%$tl111248111273%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111246111267%_)))
                           (_%hd111277%_ _%$hd111247111270%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl111248111273%_))
                          (let* ((_%$tgt111249111279%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111248111273%_)))
                                 (_%$hd111250111282%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111249111279%_)))
                                 (_%$tl111251111285%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111249111279%_)))
                                 (_%expr111289%_ _%$hd111250111282%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl111251111285%_))
                                        '())
                                (let* ((_%$e111291%_ _%hd111277%_)
                                       (_%$E111293111334%_
                                        (lambda ()
                                          (let ((_%$E111294111319%_
                                                 (lambda ()
                                                   (let* ((_%$E111295111306%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e111291%_))))
                  (_%ids111309%_ _%hd111277%_)
                  (_%len111311%_ (length _%ids111309%_))
                  (_%tmp111313%_
                   (let ((__tmp111818
                          (let () (declare (not safe)) (##gensym))))
                     (declare (not safe))
                     (__SRC__0 __tmp111818)))
                  (__tmp111819
                   (cons 'begin
                         (cons (let ((__tmp111820
                                      (cons 'define
                                            (cons _%tmp111313%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (__compile
                                                           _%expr111289%_))
                                                        '())))))
                                 (declare (not safe))
                                 (__SRC__% __tmp111820 _%stx111238%_))
                               (cons (let ((__tmp111821
                                            (cons '__check-values
                                                  (cons _%tmp111313%_
                                                        (cons _%len111311%_
                                                              '())))))
                                       (declare (not safe))
                                       (__SRC__% __tmp111821 _%stx111238%_))
                                     (let ((__tmp111822
                                            (let ((__tmp111824
                                                   (lambda (_%id111316%_
                                                            _%k111317%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id111316%_))
                                                         (let ((__tmp111825
                                                                (cons 'define
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (__SRC__0 _%id111316%_))
                                    (cons (cons '##vector-ref
                                                (cons _%tmp111313%_
                                                      (cons _%k111317%_ '())))
                                          '())))))
                   (declare (not safe))
                   (__SRC__% __tmp111825 _%stx111238%_))
                 '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp111823
                                                   (let ()
                                                     (declare (not safe))
                                                     (##iota _%len111311%_))))
                                              (declare (not safe))
                                              (__filter-map2
                                               __tmp111824
                                               _%ids111309%_
                                               __tmp111823))))
                                       (declare (not safe))
                                       (__foldr1 cons '() __tmp111822)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__SRC__%
                                                      __tmp111819
                                                      _%stx111238%_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e111291%_))
                                                (let* ((_%$tgt111296111322%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e111291%_)))
                                                       (_%$hd111297111325%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt111296111322%_)))
                                                       (_%$tl111298111328%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt111296111322%_)))
                                                       (_%id111332%_
                                                        _%$hd111297111325%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl111298111328%_))
                      '())
              (let ((__tmp111826
                     (cons 'define
                           (cons (let ()
                                   (declare (not safe))
                                   (__SRC__0 _%id111332%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (__compile _%expr111289%_))
                                       '())))))
                (declare (not safe))
                (__SRC__% __tmp111826 _%stx111238%_))
              (let () (declare (not safe)) (_%$E111294111319%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$E111294111319%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e111291%_))
                                      (let* ((_%$tgt111299111337%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e111291%_)))
                                             (_%$hd111300111340%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt111299111337%_)))
                                             (_%$tl111301111343%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt111299111337%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd111300111340%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl111301111343%_))
                                                        '())
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _%expr111289%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$E111293111334%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$E111293111334%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$E111293111334%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%$E111242111254%_))))
                          (let () (declare (not safe)) (_%$E111242111254%_))))
                    (let () (declare (not safe)) (_%$E111242111254%_))))
              (let () (declare (not safe)) (_%$E111242111254%_))))))
    (define __compile-head-id
      (lambda (_%e111236%_)
        (let ((__tmp111827
               (if (let () (declare (not safe)) (__AST-e _%e111236%_))
                   _%e111236%_
                   (let () (declare (not safe)) (##gensym)))))
          (declare (not safe))
          (__SRC__0 __tmp111827))))
    (define __compile-lambda-head
      (lambda (_%hd111193%_)
        (let _%recur111195%_ ((_%rest111197%_ _%hd111193%_))
          (let* ((_%$e111199%_ _%rest111197%_)
                 (_%$E111201111219%_
                  (lambda ()
                    (let ((_%$E111202111216%_
                           (lambda ()
                             (let* ((_%$E111203111211%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e111199%_))))
                                    (_%tail111214%_ _%$e111199%_))
                               (declare (not safe))
                               (__compile-head-id _%tail111214%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e111199%_))
                                  '())
                          '()
                          (let ()
                            (declare (not safe))
                            (_%$E111202111216%_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e111199%_))
                (let* ((_%$tgt111204111222%_
                        (let () (declare (not safe)) (__AST-e _%$e111199%_)))
                       (_%$hd111205111225%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt111204111222%_)))
                       (_%$tl111206111228%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt111204111222%_))))
                  (let* ((_%hd111232%_ _%$hd111205111225%_)
                         (_%rest111234%_ _%$tl111206111228%_))
                    (cons (let ()
                            (declare (not safe))
                            (__compile-head-id _%hd111232%_))
                          (let ()
                            (declare (not safe))
                            (_%recur111195%_ _%rest111234%_)))))
                (let () (declare (not safe)) (_%$E111201111219%_)))))))
    (define __compile-lambda%
      (lambda (_%stx111140%_)
        (let* ((_%$e111142%_ _%stx111140%_)
               (_%$E111144111156%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111142%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111142%_))
              (let* ((_%$tgt111145111159%_
                      (let () (declare (not safe)) (__AST-e _%$e111142%_)))
                     (_%$hd111146111162%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111145111159%_)))
                     (_%$tl111147111165%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111145111159%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111147111165%_))
                    (let* ((_%$tgt111148111169%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111147111165%_)))
                           (_%$hd111149111172%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111148111169%_)))
                           (_%$tl111150111175%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111148111169%_)))
                           (_%hd111179%_ _%$hd111149111172%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl111150111175%_))
                          (let* ((_%$tgt111151111181%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111150111175%_)))
                                 (_%$hd111152111184%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111151111181%_)))
                                 (_%$tl111153111187%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111151111181%_)))
                                 (_%body111191%_ _%$hd111152111184%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl111153111187%_))
                                        '())
                                (let ((__tmp111828
                                       (cons 'lambda
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (__compile-lambda-head
                                                      _%hd111179%_))
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__compile
                                                            _%body111191%_))
                                                         '())))))
                                  (declare (not safe))
                                  (__SRC__% __tmp111828 _%stx111140%_))
                                (let ()
                                  (declare (not safe))
                                  (_%$E111144111156%_))))
                          (let () (declare (not safe)) (_%$E111144111156%_))))
                    (let () (declare (not safe)) (_%$E111144111156%_))))
              (let () (declare (not safe)) (_%$E111144111156%_))))))
    (define __compile-case-lambda%
      (lambda (_%stx110932%_)
        (letrec ((_%variadic?110934%_
                  (lambda (_%hd111105%_)
                    (let* ((_%$e111107%_ _%hd111105%_)
                           (_%$E111109111125%_
                            (lambda ()
                              (let ((_%$E111110111122%_
                                     (lambda ()
                                       (let ((_%$E111111111119%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e111107%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e111107%_))
                                            '())
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_%$E111110111122%_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e111107%_))
                          (let* ((_%$tgt111112111128%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e111107%_)))
                                 (_%$hd111113111131%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111112111128%_)))
                                 (_%$tl111114111134%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111112111128%_)))
                                 (_%rest111138%_ _%$tl111114111134%_))
                            (declare (not safe))
                            (_%variadic?110934%_ _%rest111138%_))
                          (let ()
                            (declare (not safe))
                            (_%$E111109111125%_))))))
                 (_%arity110935%_
                  (lambda (_%hd111070%_)
                    (let _%lp111072%_ ((_%rest111074%_ _%hd111070%_)
                                       (_%k111075%_ '0))
                      (let* ((_%$e111077%_ _%rest111074%_)
                             (_%$E111079111090%_
                              (lambda ()
                                (let ((_%$E111080111087%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e111077%_)))))
                                  _%k111075%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e111077%_))
                            (let* ((_%$tgt111081111093%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e111077%_)))
                                   (_%$hd111082111096%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt111081111093%_)))
                                   (_%$tl111083111099%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt111081111093%_))))
                              (let* ((_%rest111103%_ _%$tl111083111099%_)
                                     (__tmp111829
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%k111075%_ '1))))
                                (declare (not safe))
                                (_%lp111072%_ _%rest111103%_ __tmp111829)))
                            (let ()
                              (declare (not safe))
                              (_%$E111079111090%_)))))))
                 (_%generate110936%_
                  (lambda (_%rest110997%_ _%args110998%_ _%len110999%_)
                    (let* ((_%$e111001%_ _%rest110997%_)
                           (_%$E111003111014%_
                            (lambda ()
                              (let* ((_%$E111004111011%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _%$e111001%_))))
                                     (__tmp111830
                                      (cons 'error
                                            (cons '"No clause matching arguments"
                                                  (cons _%args110998%_ '())))))
                                (declare (not safe))
                                (__SRC__% __tmp111830 _%stx110932%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e111001%_))
                          (let* ((_%$tgt111005111017%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e111001%_)))
                                 (_%$hd111006111020%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111005111017%_)))
                                 (_%$tl111007111023%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111005111017%_))))
                            (let* ((_%clause111027%_ _%$hd111006111020%_)
                                   (_%rest111029%_ _%$tl111007111023%_)
                                   (_%$e111031%_ _%clause111027%_)
                                   (_%$E111033111042%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _%$e111031%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _%$e111031%_))
                                  (let* ((_%$tgt111034111045%_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _%$e111031%_)))
                                         (_%$hd111035111048%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$tgt111034111045%_)))
                                         (_%$tl111036111051%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$tgt111034111045%_)))
                                         (_%hd111055%_ _%$hd111035111048%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _%$tl111036111051%_))
                                        (let* ((_%$tgt111037111057%_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _%$tl111036111051%_)))
                                               (_%$hd111038111060%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$tgt111037111057%_)))
                                               (_%$tl111039111063%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$tgt111037111057%_))))
                                          (if (equal? (let ()
                                                        (declare (not safe))
                                                        (__AST-e _%$tl111039111063%_))
                                                      '())
                                              (let ((_%clen111067%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%arity110935%_
                                                        _%hd111055%_)))
                                                    (_%cmp111068%_
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (_%variadic?110934%_
                                                            _%hd111055%_))
                                                         'fx>=
                                                         'fx=)))
                                                (let ((__tmp111831
                                                       (cons 'if
                                                             (cons (cons _%cmp111068%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%len110999%_
                                       (cons _%clen111067%_ '())))
                           (cons (let ((__tmp111832
                                        (cons '##apply
                                              (cons (let ((__tmp111833
                                                           (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause111027%_)))
              (declare (not safe))
              (__compile-lambda% __tmp111833))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%args110998%_
                                                          '())))))
                                   (declare (not safe))
                                   (__SRC__% __tmp111832 _%stx110932%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (_%generate110936%_
                                          _%rest111029%_
                                          _%args110998%_
                                          _%len110999%_))
                                       '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__SRC__%
                                                   __tmp111831
                                                   _%stx110932%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$E111033111042%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$E111033111042%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$E111033111042%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$E111003111014%_)))))))
          (let* ((_%$e110938%_ _%stx110932%_)
                 (_%$E110940110972%_
                  (lambda ()
                    (let ((_%$E110941110954%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e110938%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e110938%_))
                          (let* ((_%$tgt110942110957%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110938%_)))
                                 (_%$hd110943110960%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110942110957%_)))
                                 (_%$tl110944110963%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110942110957%_)))
                                 (_%clauses110967%_ _%$tl110944110963%_))
                            (let ((_%args110969%_
                                   (let ((__tmp111834
                                          (let ()
                                            (declare (not safe))
                                            (##gensym))))
                                     (declare (not safe))
                                     (__SRC__% __tmp111834 _%stx110932%_)))
                                  (_%len110970%_
                                   (let ((__tmp111835
                                          (let ()
                                            (declare (not safe))
                                            (##gensym))))
                                     (declare (not safe))
                                     (__SRC__% __tmp111835 _%stx110932%_))))
                              (let ((__tmp111836
                                     (cons 'lambda
                                           (cons _%args110969%_
                                                 (cons (let ((__tmp111837
                                                              (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (cons _%len110970%_
                                              (cons (let ((__tmp111838
                                                           (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%args110969%_ '()))))
              (declare (not safe))
              (__SRC__% __tmp111838 _%stx110932%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (let ()
                                          (declare (not safe))
                                          (_%generate110936%_
                                           _%clauses110967%_
                                           _%args110969%_
                                           _%len110970%_))
                                        '())))))
                 (declare (not safe))
                 (__SRC__% __tmp111837 _%stx110932%_))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (declare (not safe))
                                (__SRC__% __tmp111836 _%stx110932%_))))
                          (let ()
                            (declare (not safe))
                            (_%$E110941110954%_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e110938%_))
                (let* ((_%$tgt110945110975%_
                        (let () (declare (not safe)) (__AST-e _%$e110938%_)))
                       (_%$hd110946110978%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt110945110975%_)))
                       (_%$tl110947110981%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt110945110975%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl110947110981%_))
                      (let* ((_%$tgt110948110985%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl110947110981%_)))
                             (_%$hd110949110988%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt110948110985%_)))
                             (_%$tl110950110991%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt110948110985%_)))
                             (_%clause110995%_ _%$hd110949110988%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl110950110991%_))
                                    '())
                            (let ((__tmp111839
                                   (cons '%#lambda _%clause110995%_)))
                              (declare (not safe))
                              (__compile-lambda% __tmp111839))
                            (let ()
                              (declare (not safe))
                              (_%$E110940110972%_))))
                      (let () (declare (not safe)) (_%$E110940110972%_))))
                (let () (declare (not safe)) (_%$E110940110972%_)))))))
    (define __compile-let-form
      (lambda (_%stx110701%_ _%compile-simple110702%_ _%compile-values110703%_)
        (letrec ((_%simple-bind?110705%_
                  (lambda (_%hd110890%_)
                    (let* ((_%hd110891110901%_ _%hd110890%_)
                           (_%else110894110909%_ (lambda () '#f)))
                      (let ((_%K110897110922%_ (lambda (_%id110920%_) '#t))
                            (_%K110896110914%_ (lambda () '#t)))
                        (let ((_%try-match110893110917%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd110891110901%_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_%K110896110914%_))
                                     (let ()
                                       (declare (not safe))
                                       (_%else110894110909%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%hd110891110901%_))
                              (let ((_%tl110899110927%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd110891110901%_)))
                                    (_%hd110898110925%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd110891110901%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _%tl110899110927%_))
                                    (let ((_%id110930%_ _%hd110898110925%_))
                                      (declare (not safe))
                                      (_%K110897110922%_ _%id110930%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%try-match110893110917%_))))
                              (let ()
                                (declare (not safe))
                                (_%try-match110893110917%_))))))))
                 (_%car-e110706%_
                  (lambda (_%hd110888%_)
                    (if (let () (declare (not safe)) (pair? _%hd110888%_))
                        (car _%hd110888%_)
                        _%hd110888%_))))
          (let* ((_%$e110708%_ _%stx110701%_)
                 (_%$E110710110853%_
                  (lambda ()
                    (let ((_%$E110711110733%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e110708%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e110708%_))
                          (let* ((_%$tgt110712110736%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110708%_)))
                                 (_%$hd110713110739%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110712110736%_)))
                                 (_%$tl110714110742%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110712110736%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl110714110742%_))
                                (let* ((_%$tgt110715110746%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl110714110742%_)))
                                       (_%$hd110716110749%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt110715110746%_)))
                                       (_%$tl110717110752%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt110715110746%_)))
                                       (_%hd110756%_ _%$hd110716110749%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl110717110752%_))
                                      (let* ((_%$tgt110718110758%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl110717110752%_)))
                                             (_%$hd110719110761%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt110718110758%_)))
                                             (_%$tl110720110764%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt110718110758%_)))
                                             (_%body110768%_
                                              _%$hd110719110761%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl110720110764%_))
                                                    '())
                                            (let* ((_%hd-ids110808%_
                                                    (map (lambda (_%bind110770%_)
                                                           (let* ((_%$e110772%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind110770%_)
                          (_%$E110774110783%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e110772%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e110772%_))
                         (let* ((_%$tgt110775110786%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e110772%_)))
                                (_%$hd110776110789%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt110775110786%_)))
                                (_%$tl110777110792%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt110775110786%_)))
                                (_%ids110796%_ _%$hd110776110789%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl110777110792%_))
                               (let* ((_%$tgt110778110798%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl110777110792%_)))
                                      (_%$hd110779110801%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt110778110798%_)))
                                      (_%$tl110780110804%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt110778110798%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl110780110804%_))
                                             '())
                                     _%ids110796%_
                                     (let ()
                                       (declare (not safe))
                                       (_%$E110774110783%_))))
                               (let ()
                                 (declare (not safe))
                                 (_%$E110774110783%_))))
                         (let () (declare (not safe)) (_%$E110774110783%_)))))
                 _%hd110756%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs110848%_
                                                    (map (lambda (_%bind110810%_)
                                                           (let* ((_%$e110812%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind110810%_)
                          (_%$E110814110823%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e110812%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e110812%_))
                         (let* ((_%$tgt110815110826%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e110812%_)))
                                (_%$hd110816110829%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt110815110826%_)))
                                (_%$tl110817110832%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt110815110826%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl110817110832%_))
                               (let* ((_%$tgt110818110836%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl110817110832%_)))
                                      (_%$hd110819110839%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt110818110836%_)))
                                      (_%$tl110820110842%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt110818110836%_)))
                                      (_%expr110846%_ _%$hd110819110839%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl110820110842%_))
                                             '())
                                     (let ()
                                       (declare (not safe))
                                       (__compile _%expr110846%_))
                                     (let ()
                                       (declare (not safe))
                                       (_%$E110814110823%_))))
                               (let ()
                                 (declare (not safe))
                                 (_%$E110814110823%_))))
                         (let () (declare (not safe)) (_%$E110814110823%_)))))
                 _%hd110756%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body110850%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile
                                                       _%body110768%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__andmap1
                                                     _%simple-bind?110705%_
                                                     _%hd-ids110808%_))
                                                  (_%compile-simple110702%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e110706%_
                                                            _%hd-ids110808%_))
                                                   _%exprs110848%_
                                                   _%body110850%_)
                                                  (_%compile-values110703%_
                                                   _%hd-ids110808%_
                                                   _%exprs110848%_
                                                   _%body110850%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$E110711110733%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$E110711110733%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%$E110711110733%_))))
                          (let ()
                            (declare (not safe))
                            (_%$E110711110733%_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e110708%_))
                (let* ((_%$tgt110721110856%_
                        (let () (declare (not safe)) (__AST-e _%$e110708%_)))
                       (_%$hd110722110859%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt110721110856%_)))
                       (_%$tl110723110862%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt110721110856%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl110723110862%_))
                      (let* ((_%$tgt110724110866%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl110723110862%_)))
                             (_%$hd110725110869%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt110724110866%_)))
                             (_%$tl110726110872%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt110724110866%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd110725110869%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl110726110872%_))
                                (let* ((_%$tgt110727110876%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl110726110872%_)))
                                       (_%$hd110728110879%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt110727110876%_)))
                                       (_%$tl110729110882%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt110727110876%_)))
                                       (_%body110886%_ _%$hd110728110879%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl110729110882%_))
                                              '())
                                      (let ()
                                        (declare (not safe))
                                        (__compile _%body110886%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%$E110710110853%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%$E110710110853%_)))
                            (let ()
                              (declare (not safe))
                              (_%$E110710110853%_))))
                      (let () (declare (not safe)) (_%$E110710110853%_))))
                (let () (declare (not safe)) (_%$E110710110853%_)))))))
    (define __compile-let-values%
      (lambda (_%stx110513%_)
        (letrec ((_%compile-simple110515%_
                  (lambda (_%hd-ids110697%_ _%exprs110698%_ _%body110699%_)
                    (let ((__tmp111840
                           (cons 'let
                                 (cons (let ((__tmp111841
                                              (map __compile-head-id
                                                   _%hd-ids110697%_)))
                                         (declare (not safe))
                                         (##map list
                                                __tmp111841
                                                _%exprs110698%_))
                                       (cons _%body110699%_ '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111840 _%stx110513%_))))
                 (_%compile-values110516%_
                  (lambda (_%hd-ids110612%_ _%exprs110613%_ _%body110614%_)
                    (let _%lp110616%_ ((_%rest110618%_ _%hd-ids110612%_)
                                       (_%exprs110619%_ _%exprs110613%_)
                                       (_%bind110620%_ '())
                                       (_%post110621%_ '()))
                      (let* ((_%rest110622110636%_ _%rest110618%_)
                             (_%else110625110644%_
                              (lambda ()
                                (let ((__tmp111842
                                       (cons 'let
                                             (cons (reverse _%bind110620%_)
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (_%compile-post110517%_
                                                            _%post110621%_
                                                            _%body110614%_))
                                                         '())))))
                                  (declare (not safe))
                                  (__SRC__% __tmp111842 _%stx110513%_)))))
                        (let ((_%K110630110680%_
                               (lambda (_%rest110677%_ _%id110678%_)
                                 (let ((__tmp111844 (cdr _%exprs110619%_))
                                       (__tmp111843
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (__compile-head-id
                                                       _%id110678%_))
                                                    (cons (car _%exprs110619%_)
                                                          '()))
                                              _%bind110620%_)))
                                   (declare (not safe))
                                   (_%lp110616%_
                                    _%rest110677%_
                                    __tmp111844
                                    __tmp111843
                                    _%post110621%_))))
                              (_%K110627110662%_
                               (lambda (_%rest110648%_ _%hd110649%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd110649%_))
                                     (let ((__tmp111846 (cdr _%exprs110619%_))
                                           (__tmp111845
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (__compile-head-id
                                                           _%hd110649%_))
                                                        (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (car _%exprs110619%_) '()))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%bind110620%_)))
                                       (declare (not safe))
                                       (_%lp110616%_
                                        _%rest110648%_
                                        __tmp111846
                                        __tmp111845
                                        _%post110621%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _%hd110649%_))
                                         (let ()
                                           (let* ((_%len110653%_
                                                   (length _%hd110649%_))
                                                  (_%tmp110655%_
                                                   (let ((__tmp111847
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym))))
                                                     (declare (not safe))
                                                     (__SRC__0 __tmp111847))))
                                             (let ((__tmp111854
                                                    (cdr _%exprs110619%_))
                                                   (__tmp111853
                                                    (cons (cons _%tmp110655%_
                                                                (cons (car _%exprs110619%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%bind110620%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp111848
                                                    (cons (let ((__tmp111849
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp111850
                                (let ((__tmp111852
                                       (lambda (_%id110658%_ _%k110659%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id110658%_))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _%id110658%_))
                                                   _%k110659%_)
                                             '#f)))
                                      (__tmp111851
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len110653%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp111852
                                   _%hd110649%_
                                   __tmp111851))))
                           (declare (not safe))
                           (cons _%len110653%_ __tmp111850))))
                    (declare (not safe))
                    (cons _%tmp110655%_ __tmp111849))
                  _%post110621%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%lp110616%_
                                                _%rest110648%_
                                                __tmp111854
                                                __tmp111853
                                                __tmp111848))))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _%stx110513%_
                                            _%hd110649%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest110622110636%_))
                              (let ((_%tl110632110685%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest110622110636%_)))
                                    (_%hd110631110683%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest110622110636%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd110631110683%_))
                                    (let ((_%tl110634110690%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd110631110683%_)))
                                          (_%hd110633110688%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd110631110683%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl110634110690%_))
                                          (let ((_%id110693%_
                                                 _%hd110633110688%_)
                                                (_%rest110695%_
                                                 _%tl110632110685%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K110630110680%_
                                               _%rest110695%_
                                               _%id110693%_)))
                                          (let ((_%hd110670%_
                                                 _%hd110631110683%_)
                                                (_%rest110672%_
                                                 _%tl110632110685%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K110627110662%_
                                               _%rest110672%_
                                               _%hd110670%_)))))
                                    (let ((_%hd110670%_ _%hd110631110683%_)
                                          (_%rest110672%_ _%tl110632110685%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%K110627110662%_
                                         _%rest110672%_
                                         _%hd110670%_)))))
                              (let ()
                                (declare (not safe))
                                (_%else110625110644%_))))))))
                 (_%compile-post110517%_
                  (lambda (_%post110519%_ _%body110520%_)
                    (let _%lp110522%_ ((_%rest110524%_ _%post110519%_)
                                       (_%check110525%_ '())
                                       (_%bind110526%_ '()))
                      (let* ((_%rest110527110539%_ _%rest110524%_)
                             (_%else110529110547%_
                              (lambda ()
                                (let ((__tmp111855
                                       (cons 'begin
                                             (let ((__tmp111856
                                                    (cons (let ((__tmp111857
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons 'let
                               (cons _%bind110526%_
                                     (cons _%body110520%_ '())))))
                    (declare (not safe))
                    (__SRC__% __tmp111857 _%stx110513%_))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__foldr1
                                                cons
                                                __tmp111856
                                                _%check110525%_)))))
                                  (declare (not safe))
                                  (__SRC__% __tmp111855 _%stx110513%_))))
                             (_%K110531110586%_
                              (lambda (_%rest110550%_
                                       _%init110551%_
                                       _%len110552%_
                                       _%tmp110553%_)
                                (let ((__tmp111860
                                       (cons (let ((__tmp111861
                                                    (cons '__check-values
                                                          (cons _%tmp110553%_
                                                                (cons _%len110552%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp111861
                                                _%stx110513%_))
                                             _%check110525%_))
                                      (__tmp111858
                                       (let ((__tmp111859
                                              (lambda (_%hd110555%_
                                                       _%r110556%_)
                                                (let* ((_%hd110557110564%_
                                                        _%hd110555%_)
                                                       (_%E110559110568%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd110557110564%_
                           '([id . k])))
                  '#!void))
               (_%K110560110574%_
                (lambda (_%k110571%_ _%id110572%_)
                  (cons (cons _%id110572%_
                              (cons (cons '##vector-ref
                                          (cons _%tmp110553%_
                                                (cons _%k110571%_ '())))
                                    '()))
                        _%r110556%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd110557110564%_))
                                                      (let ((_%hd110561110577%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd110557110564%_)))
                    (_%tl110562110579%_
                     (let () (declare (not safe)) (##cdr _%hd110557110564%_))))
                (let* ((_%id110582%_ _%hd110561110577%_)
                       (_%k110584%_ _%tl110562110579%_))
                  (declare (not safe))
                  (_%K110560110574%_ _%k110584%_ _%id110582%_)))
              (let () (declare (not safe)) (_%E110559110568%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp111859
                                          _%bind110526%_
                                          _%init110551%_))))
                                  (declare (not safe))
                                  (_%lp110522%_
                                   _%rest110550%_
                                   __tmp111860
                                   __tmp111858)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest110527110539%_))
                            (let ((_%hd110532110589%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest110527110539%_)))
                                  (_%tl110533110591%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest110527110539%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd110532110589%_))
                                  (let ((_%hd110534110594%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd110532110589%_)))
                                        (_%tl110535110596%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd110532110589%_))))
                                    (let ((_%tmp110599%_ _%hd110534110594%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl110535110596%_))
                                          (let ((_%hd110536110601%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl110535110596%_)))
                                                (_%tl110537110603%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl110535110596%_))))
                                            (let* ((_%len110606%_
                                                    _%hd110536110601%_)
                                                   (_%init110608%_
                                                    _%tl110537110603%_)
                                                   (_%rest110610%_
                                                    _%tl110533110591%_))
                                              (declare (not safe))
                                              (_%K110531110586%_
                                               _%rest110610%_
                                               _%init110608%_
                                               _%len110606%_
                                               _%tmp110599%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%else110529110547%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%else110529110547%_))))
                            (let ()
                              (declare (not safe))
                              (_%else110529110547%_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _%stx110513%_
             _%compile-simple110515%_
             _%compile-values110516%_)))))
    (define __compile-letrec-values%
      (lambda (_%stx110310%_)
        (letrec ((_%compile-simple110312%_
                  (lambda (_%hd-ids110509%_ _%exprs110510%_ _%body110511%_)
                    (let ((__tmp111862
                           (cons 'letrec
                                 (cons (let ((__tmp111863
                                              (map __compile-head-id
                                                   _%hd-ids110509%_)))
                                         (declare (not safe))
                                         (##map list
                                                __tmp111863
                                                _%exprs110510%_))
                                       (cons _%body110511%_ '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111862 _%stx110310%_))))
                 (_%compile-values110313%_
                  (lambda (_%hd-ids110420%_ _%exprs110421%_ _%body110422%_)
                    (let _%lp110424%_ ((_%rest110426%_ _%hd-ids110420%_)
                                       (_%exprs110427%_ _%exprs110421%_)
                                       (_%pre110428%_ '())
                                       (_%bind110429%_ '())
                                       (_%post110430%_ '()))
                      (let* ((_%rest110431110445%_ _%rest110426%_)
                             (_%else110434110453%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_%compile-inner110314%_
                                   _%pre110428%_
                                   _%bind110429%_
                                   _%post110430%_
                                   _%body110422%_)))))
                        (let ((_%K110439110492%_
                               (lambda (_%rest110489%_ _%id110490%_)
                                 (let ((__tmp111865 (cdr _%exprs110427%_))
                                       (__tmp111864
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (__compile-head-id
                                                       _%id110490%_))
                                                    (cons (car _%exprs110427%_)
                                                          '()))
                                              _%bind110429%_)))
                                   (declare (not safe))
                                   (_%lp110424%_
                                    _%rest110489%_
                                    __tmp111865
                                    _%pre110428%_
                                    __tmp111864
                                    _%post110430%_))))
                              (_%K110436110474%_
                               (lambda (_%rest110457%_ _%hd110458%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd110458%_))
                                     (let ((__tmp111867 (cdr _%exprs110427%_))
                                           (__tmp111866
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (__compile-head-id
                                                           _%hd110458%_))
                                                        (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (car _%exprs110427%_) '()))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%bind110429%_)))
                                       (declare (not safe))
                                       (_%lp110424%_
                                        _%rest110457%_
                                        __tmp111867
                                        _%pre110428%_
                                        __tmp111866
                                        _%post110430%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _%hd110458%_))
                                         (let ()
                                           (let* ((_%len110462%_
                                                   (length _%hd110458%_))
                                                  (_%tmp110464%_
                                                   (let ((__tmp111868
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym))))
                                                     (declare (not safe))
                                                     (__SRC__0 __tmp111868))))
                                             (let ((__tmp111877
                                                    (cdr _%exprs110427%_))
                                                   (__tmp111875
                                                    (let ((__tmp111876
                                                           (lambda (_%id110467%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%r110468%_)
                     (if (let () (declare (not safe)) (__AST-e _%id110467%_))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (__SRC__0 _%id110467%_))
                                     (cons (cons 'quote (cons '#!void '()))
                                           '()))
                               _%r110468%_)
                         _%r110468%_))))
              (declare (not safe))
              (__foldl1 __tmp111876 _%pre110428%_ _%hd110458%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp111874
                                                    (cons (cons _%tmp110464%_
                                                                (cons (car _%exprs110427%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%bind110429%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp111869
                                                    (cons (let ((__tmp111870
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp111871
                                (let ((__tmp111873
                                       (lambda (_%id110470%_ _%k110471%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id110470%_))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _%id110470%_))
                                                   _%k110471%_)
                                             '#f)))
                                      (__tmp111872
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len110462%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp111873
                                   _%hd110458%_
                                   __tmp111872))))
                           (declare (not safe))
                           (cons _%len110462%_ __tmp111871))))
                    (declare (not safe))
                    (cons _%tmp110464%_ __tmp111870))
                  _%post110430%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%lp110424%_
                                                _%rest110457%_
                                                __tmp111877
                                                __tmp111875
                                                __tmp111874
                                                __tmp111869))))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _%stx110310%_
                                            _%hd110458%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest110431110445%_))
                              (let ((_%tl110441110497%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest110431110445%_)))
                                    (_%hd110440110495%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest110431110445%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd110440110495%_))
                                    (let ((_%tl110443110502%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd110440110495%_)))
                                          (_%hd110442110500%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd110440110495%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl110443110502%_))
                                          (let ((_%id110505%_
                                                 _%hd110442110500%_)
                                                (_%rest110507%_
                                                 _%tl110441110497%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K110439110492%_
                                               _%rest110507%_
                                               _%id110505%_)))
                                          (let ((_%hd110482%_
                                                 _%hd110440110495%_)
                                                (_%rest110484%_
                                                 _%tl110441110497%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K110436110474%_
                                               _%rest110484%_
                                               _%hd110482%_)))))
                                    (let ((_%hd110482%_ _%hd110440110495%_)
                                          (_%rest110484%_ _%tl110441110497%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%K110436110474%_
                                         _%rest110484%_
                                         _%hd110482%_)))))
                              (let ()
                                (declare (not safe))
                                (_%else110434110453%_))))))))
                 (_%compile-inner110314%_
                  (lambda (_%pre110415%_
                           _%bind110416%_
                           _%post110417%_
                           _%body110418%_)
                    (if (let () (declare (not safe)) (null? _%pre110415%_))
                        (let ()
                          (declare (not safe))
                          (_%compile-bind110315%_
                           _%bind110416%_
                           _%post110417%_
                           _%body110418%_))
                        (let ((__tmp111878
                               (cons 'let
                                     (cons (reverse _%pre110415%_)
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_%compile-bind110315%_
                                                    _%bind110416%_
                                                    _%post110417%_
                                                    _%body110418%_))
                                                 '())))))
                          (declare (not safe))
                          (__SRC__% __tmp111878 _%stx110310%_)))))
                 (_%compile-bind110315%_
                  (lambda (_%bind110411%_ _%post110412%_ _%body110413%_)
                    (let ((__tmp111879
                           (cons 'letrec
                                 (cons (reverse _%bind110411%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (_%compile-post110316%_
                                                _%post110412%_
                                                _%body110413%_))
                                             '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111879 _%stx110310%_))))
                 (_%compile-post110316%_
                  (lambda (_%post110318%_ _%body110319%_)
                    (let _%lp110321%_ ((_%rest110323%_ _%post110318%_)
                                       (_%check110324%_ '())
                                       (_%bind110325%_ '()))
                      (let* ((_%rest110326110338%_ _%rest110323%_)
                             (_%else110328110346%_
                              (lambda ()
                                (let ((__tmp111880
                                       (cons 'begin
                                             (let ((__tmp111881
                                                    (let ((__tmp111882
                                                           (cons _%body110319%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
              (declare (not safe))
              (__foldr1 cons __tmp111882 _%bind110325%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__foldr1
                                                cons
                                                __tmp111881
                                                _%check110324%_)))))
                                  (declare (not safe))
                                  (__SRC__% __tmp111880 _%stx110310%_))))
                             (_%K110330110385%_
                              (lambda (_%rest110349%_
                                       _%init110350%_
                                       _%len110351%_
                                       _%tmp110352%_)
                                (let ((__tmp111885
                                       (cons (let ((__tmp111886
                                                    (cons '__check-values
                                                          (cons _%tmp110352%_
                                                                (cons _%len110351%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp111886
                                                _%stx110310%_))
                                             _%check110324%_))
                                      (__tmp111883
                                       (let ((__tmp111884
                                              (lambda (_%hd110354%_
                                                       _%r110355%_)
                                                (let* ((_%hd110356110363%_
                                                        _%hd110354%_)
                                                       (_%E110358110367%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd110356110363%_
                           '([id . k])))
                  '#!void))
               (_%K110359110373%_
                (lambda (_%k110370%_ _%id110371%_)
                  (cons (cons 'set!
                              (cons _%id110371%_
                                    (cons (cons '##vector-ref
                                                (cons _%tmp110352%_
                                                      (cons _%k110370%_ '())))
                                          '())))
                        _%r110355%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd110356110363%_))
                                                      (let ((_%hd110360110376%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd110356110363%_)))
                    (_%tl110361110378%_
                     (let () (declare (not safe)) (##cdr _%hd110356110363%_))))
                (let* ((_%id110381%_ _%hd110360110376%_)
                       (_%k110383%_ _%tl110361110378%_))
                  (declare (not safe))
                  (_%K110359110373%_ _%k110383%_ _%id110381%_)))
              (let () (declare (not safe)) (_%E110358110367%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp111884
                                          _%bind110325%_
                                          _%init110350%_))))
                                  (declare (not safe))
                                  (_%lp110321%_
                                   _%rest110349%_
                                   __tmp111885
                                   __tmp111883)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest110326110338%_))
                            (let ((_%hd110331110388%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest110326110338%_)))
                                  (_%tl110332110390%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest110326110338%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd110331110388%_))
                                  (let ((_%hd110333110393%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd110331110388%_)))
                                        (_%tl110334110395%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd110331110388%_))))
                                    (let ((_%tmp110398%_ _%hd110333110393%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl110334110395%_))
                                          (let ((_%hd110335110400%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl110334110395%_)))
                                                (_%tl110336110402%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl110334110395%_))))
                                            (let* ((_%len110405%_
                                                    _%hd110335110400%_)
                                                   (_%init110407%_
                                                    _%tl110336110402%_)
                                                   (_%rest110409%_
                                                    _%tl110332110390%_))
                                              (declare (not safe))
                                              (_%K110330110385%_
                                               _%rest110409%_
                                               _%init110407%_
                                               _%len110405%_
                                               _%tmp110398%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%else110328110346%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%else110328110346%_))))
                            (let ()
                              (declare (not safe))
                              (_%else110328110346%_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _%stx110310%_
             _%compile-simple110312%_
             _%compile-values110313%_)))))
    (define __compile-letrec*-values%
      (lambda (_%stx110061%_)
        (letrec ((_%compile-simple110063%_
                  (lambda (_%hd-ids110306%_ _%exprs110307%_ _%body110308%_)
                    (let ((__tmp111887
                           (cons 'letrec*
                                 (cons (let ((__tmp111888
                                              (map __compile-head-id
                                                   _%hd-ids110306%_)))
                                         (declare (not safe))
                                         (##map list
                                                __tmp111888
                                                _%exprs110307%_))
                                       (cons _%body110308%_ '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111887 _%stx110061%_))))
                 (_%compile-values110064%_
                  (lambda (_%hd-ids110213%_ _%exprs110214%_ _%body110215%_)
                    (let _%lp110217%_ ((_%rest110219%_ _%hd-ids110213%_)
                                       (_%exprs110220%_ _%exprs110214%_)
                                       (_%bind110221%_ '())
                                       (_%post110222%_ '()))
                      (let* ((_%rest110223110237%_ _%rest110219%_)
                             (_%else110226110245%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_%compile-bind110065%_
                                   _%bind110221%_
                                   _%post110222%_
                                   _%body110215%_)))))
                        (let ((_%K110231110289%_
                               (lambda (_%rest110284%_ _%hd110285%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd110285%_))
                                     (let ((_%id110287%_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _%hd110285%_))))
                                       (let ((__tmp111891
                                              (cdr _%exprs110220%_))
                                             (__tmp111890
                                              (cons (cons _%id110287%_
                                                          (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons '#!void '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%bind110221%_))
                                             (__tmp111889
                                              (cons (cons _%id110287%_
                                                          (cons (car _%exprs110220%_)
                                                                '()))
                                                    _%post110222%_)))
                                         (declare (not safe))
                                         (_%lp110217%_
                                          _%rest110284%_
                                          __tmp111891
                                          __tmp111890
                                          __tmp111889)))
                                     (let ((__tmp111893 (cdr _%exprs110220%_))
                                           (__tmp111892
                                            (cons (cons '#f
                                                        (cons (car _%exprs110220%_)
                                                              '()))
                                                  _%post110222%_)))
                                       (declare (not safe))
                                       (_%lp110217%_
                                        _%rest110284%_
                                        __tmp111893
                                        _%bind110221%_
                                        __tmp111892)))))
                              (_%K110228110269%_
                               (lambda (_%rest110249%_ _%hd110250%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd110250%_))
                                     (let ((_%id110253%_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _%hd110250%_))))
                                       (let ((__tmp111896
                                              (cdr _%exprs110220%_))
                                             (__tmp111895
                                              (cons (cons _%id110253%_
                                                          (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons '#!void '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%bind110221%_))
                                             (__tmp111894
                                              (cons (cons _%id110253%_
                                                          (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (car _%exprs110220%_) '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%post110222%_)))
                                         (declare (not safe))
                                         (_%lp110217%_
                                          _%rest110249%_
                                          __tmp111896
                                          __tmp111895
                                          __tmp111894)))
                                     (if (let ((__tmp111897
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _%hd110250%_))))
                                           (declare (not safe))
                                           (not __tmp111897))
                                         (let ((__tmp111899
                                                (cdr _%exprs110220%_))
                                               (__tmp111898
                                                (cons (cons '#f
                                                            (cons (car _%exprs110220%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%post110222%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_%lp110217%_
                                            _%rest110249%_
                                            __tmp111899
                                            _%bind110221%_
                                            __tmp111898))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _%hd110250%_))
                                             (let ()
                                               (let* ((_%len110257%_
                                                       (length _%hd110250%_))
                                                      (_%tmp110259%_
                                                       (let ((__tmp111900
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym))))
                 (declare (not safe))
                 (__SRC__0 __tmp111900))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp111910
                                                        (cdr _%exprs110220%_))
                                                       (__tmp111908
                                                        (let ((__tmp111909
                                                               (lambda (_%id110262%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%r110263%_)
                         (if (let ()
                               (declare (not safe))
                               (__AST-e _%id110262%_))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (__SRC__0 _%id110262%_))
                                         (cons (cons 'quote (cons '#!void '()))
                                               '()))
                                   _%r110263%_)
                             _%r110263%_))))
                  (declare (not safe))
                  (__foldl1 __tmp111909 _%bind110221%_ _%hd110250%_)))
               (__tmp111901
                (cons (let ((__tmp111902
                             (let ((__tmp111907 (car _%exprs110220%_))
                                   (__tmp111903
                                    (let ((__tmp111904
                                           (let ((__tmp111906
                                                  (lambda (_%id110265%_
                                                           _%k110266%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%id110265%_))
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _%id110265%_))
                      _%k110266%_)
                '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (__tmp111905
                                                  (let ()
                                                    (declare (not safe))
                                                    (##iota _%len110257%_))))
                                             (declare (not safe))
                                             (__filter-map2
                                              __tmp111906
                                              _%hd110250%_
                                              __tmp111905))))
                                      (declare (not safe))
                                      (cons _%len110257%_ __tmp111904))))
                               (declare (not safe))
                               (cons __tmp111907 __tmp111903))))
                        (declare (not safe))
                        (cons _%tmp110259%_ __tmp111902))
                      _%post110222%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_%lp110217%_
                                                    _%rest110249%_
                                                    __tmp111910
                                                    __tmp111908
                                                    __tmp111901))))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _%stx110061%_
                                                _%hd110250%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest110223110237%_))
                              (let ((_%tl110233110294%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest110223110237%_)))
                                    (_%hd110232110292%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest110223110237%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd110232110292%_))
                                    (let ((_%tl110235110299%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd110232110292%_)))
                                          (_%hd110234110297%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd110232110292%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl110235110299%_))
                                          (let ((_%hd110302%_
                                                 _%hd110234110297%_)
                                                (_%rest110304%_
                                                 _%tl110233110294%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K110231110289%_
                                               _%rest110304%_
                                               _%hd110302%_)))
                                          (let ((_%hd110277%_
                                                 _%hd110232110292%_)
                                                (_%rest110279%_
                                                 _%tl110233110294%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K110228110269%_
                                               _%rest110279%_
                                               _%hd110277%_)))))
                                    (let ((_%hd110277%_ _%hd110232110292%_)
                                          (_%rest110279%_ _%tl110233110294%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%K110228110269%_
                                         _%rest110279%_
                                         _%hd110277%_)))))
                              (let ()
                                (declare (not safe))
                                (_%else110226110245%_))))))))
                 (_%compile-bind110065%_
                  (lambda (_%bind110209%_ _%post110210%_ _%body110211%_)
                    (let ((__tmp111911
                           (cons 'let
                                 (cons (reverse _%bind110209%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (_%compile-post110066%_
                                                _%post110210%_
                                                _%body110211%_))
                                             '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111911 _%stx110061%_))))
                 (_%compile-post110066%_
                  (lambda (_%post110068%_ _%body110069%_)
                    (let ((__tmp111912
                           (cons 'begin
                                 (let ((__tmp111913
                                        (let ((__tmp111915
                                               (lambda (_%hd110071%_
                                                        _%r110072%_)
                                                 (let* ((_%hd110073110096%_
                                                         _%hd110071%_)
                                                        (_%E110077110100%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd110073110096%_
                            '([#f expr])
                            '([id expr])
                            '([tmp expr len . init])))
                   '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%K110090110194%_
                                                          (lambda (_%expr110192%_)
                                                            (cons _%expr110192%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r110072%_)))
                 (_%K110085110172%_
                  (lambda (_%expr110169%_ _%id110170%_)
                    (cons (let ((__tmp111916
                                 (cons 'set!
                                       (cons _%id110170%_
                                             (cons _%expr110169%_ '())))))
                            (declare (not safe))
                            (__SRC__% __tmp111916 _%stx110061%_))
                          _%r110072%_)))
                 (_%K110078110139%_
                  (lambda (_%init110104%_
                           _%len110105%_
                           _%expr110106%_
                           _%tmp110107%_)
                    (cons (let ((__tmp111917
                                 (cons 'let
                                       (cons (cons (cons _%tmp110107%_
                                                         (cons _%expr110106%_
                                                               '()))
                                                   '())
                                             (cons (let ((__tmp111918
                                                          (cons '__check-values
                                                                (cons _%tmp110107%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%len110105%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__SRC__%
                                                      __tmp111918
                                                      _%stx110061%_))
                                                   (let ((__tmp111919
                                                          (map (lambda (_%hd110109%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_%hd110110110117%_ _%hd110109%_)
                                (_%E110112110121%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"No clause matching"
                                            _%hd110110110117%_
                                            '([id . k])))
                                   '#!void))
                                (_%K110113110127%_
                                 (lambda (_%k110124%_ _%id110125%_)
                                   (let ((__tmp111920
                                          (cons 'set!
                                                (cons _%id110125%_
                                                      (cons (cons '##vector-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%tmp110107%_ (cons _%k110124%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (declare (not safe))
                                     (__SRC__% __tmp111920 _%stx110061%_)))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%hd110110110117%_))
                               (let ((_%hd110114110130%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%hd110110110117%_)))
                                     (_%tl110115110132%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%hd110110110117%_))))
                                 (let* ((_%id110135%_ _%hd110114110130%_)
                                        (_%k110137%_ _%tl110115110132%_))
                                   (declare (not safe))
                                   (_%K110113110127%_
                                    _%k110137%_
                                    _%id110135%_)))
                               (let ()
                                 (declare (not safe))
                                 (_%E110112110121%_)))))
                       _%init110104%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      '()
                                                      __tmp111919)))))))
                            (declare (not safe))
                            (__SRC__% __tmp111917 _%stx110061%_))
                          _%r110072%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__match111688111689%_
                                                             (lambda (_%hd110079110142%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%tl110080110144%_
                              _%hd110081110149%_
                              _%tl110082110151%_)
                       (let ((_%tmp110147%_ _%hd110079110142%_)
                             (_%expr110154%_ _%hd110081110149%_))
                         (let () (declare (not safe)) (_%E110077110100%_)))))
                    (_%__match111682111683%_
                     (lambda (_%hd110079110142%_ _%tl110080110144%_)
                       (let ((_%tmp110147%_ _%hd110079110142%_))
                         (declare (not safe))
                         (_%E110077110100%_)))))
               (if (let () (declare (not safe)) (##pair? _%hd110073110096%_))
                   (let ((_%tl110092110199%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd110073110096%_)))
                         (_%hd110091110197%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd110073110096%_))))
                     (if (let ()
                           (declare (not safe))
                           (##eq? _%hd110091110197%_ '#f))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%tl110092110199%_))
                             (let ((_%tl110094110204%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl110092110199%_)))
                                   (_%hd110093110202%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%tl110092110199%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%tl110094110204%_))
                                   (let ((_%expr110207%_ _%hd110093110202%_))
                                     (declare (not safe))
                                     (_%K110090110194%_ _%expr110207%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%tl110094110204%_))
                                       (let ((_%tl110084110158%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl110094110204%_)))
                                             (_%hd110083110156%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%tl110094110204%_))))
                                         (let ((_%tmp110147%_
                                                _%hd110091110197%_)
                                               (_%expr110154%_
                                                _%hd110093110202%_)
                                               (_%len110161%_
                                                _%hd110083110156%_)
                                               (_%init110163%_
                                                _%tl110084110158%_))
                                           (let ()
                                             (declare (not safe))
                                             (_%K110078110139%_
                                              _%init110163%_
                                              _%len110161%_
                                              _%expr110154%_
                                              _%tmp110147%_))))
                                       (_%__match111688111689%_
                                        _%hd110091110197%_
                                        _%tl110092110199%_
                                        _%hd110093110202%_
                                        _%tl110094110204%_))))
                             (_%__match111682111683%_
                              _%hd110091110197%_
                              _%tl110092110199%_))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%tl110092110199%_))
                             (let ((_%tl110089110184%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl110092110199%_)))
                                   (_%hd110088110182%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%tl110092110199%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%tl110089110184%_))
                                   (let ((_%id110180%_ _%hd110091110197%_)
                                         (_%expr110187%_ _%hd110088110182%_))
                                     (let ()
                                       (declare (not safe))
                                       (_%K110085110172%_
                                        _%expr110187%_
                                        _%id110180%_)))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%tl110089110184%_))
                                       (let ((_%tl110084110158%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl110089110184%_)))
                                             (_%hd110083110156%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%tl110089110184%_))))
                                         (let ((_%tmp110147%_
                                                _%hd110091110197%_)
                                               (_%expr110154%_
                                                _%hd110088110182%_)
                                               (_%len110161%_
                                                _%hd110083110156%_)
                                               (_%init110163%_
                                                _%tl110084110158%_))
                                           (let ()
                                             (declare (not safe))
                                             (_%K110078110139%_
                                              _%init110163%_
                                              _%len110161%_
                                              _%expr110154%_
                                              _%tmp110147%_))))
                                       (_%__match111688111689%_
                                        _%hd110091110197%_
                                        _%tl110092110199%_
                                        _%hd110088110182%_
                                        _%tl110089110184%_))))
                             (_%__match111682111683%_
                              _%hd110091110197%_
                              _%tl110092110199%_))))
                   (let () (declare (not safe)) (_%E110077110100%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (__tmp111914
                                               (list _%body110069%_)))
                                          (declare (not safe))
                                          (__foldl1
                                           __tmp111915
                                           __tmp111914
                                           _%post110068%_))))
                                   (declare (not safe))
                                   (__foldr1 cons '() __tmp111913)))))
                      (declare (not safe))
                      (__SRC__% __tmp111912 _%stx110061%_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _%stx110061%_
             _%compile-simple110063%_
             _%compile-values110064%_)))))
    (define __compile-call%
      (lambda (_%stx110021%_)
        (let* ((_%$e110023%_ _%stx110021%_)
               (_%$E110025110034%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110023%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110023%_))
              (let* ((_%$tgt110026110037%_
                      (let () (declare (not safe)) (__AST-e _%$e110023%_)))
                     (_%$hd110027110040%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110026110037%_)))
                     (_%$tl110028110043%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110026110037%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl110028110043%_))
                    (let* ((_%$tgt110029110047%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl110028110043%_)))
                           (_%$hd110030110050%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt110029110047%_)))
                           (_%$tl110031110053%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt110029110047%_))))
                      (let* ((_%rator110057%_ _%$hd110030110050%_)
                             (_%rands110059%_ _%$tl110031110053%_)
                             (__tmp111921
                              (cons (let ()
                                      (declare (not safe))
                                      (__compile _%rator110057%_))
                                    (map __compile _%rands110059%_))))
                        (declare (not safe))
                        (__SRC__% __tmp111921 _%stx110021%_)))
                    (let () (declare (not safe)) (_%$E110025110034%_))))
              (let () (declare (not safe)) (_%$E110025110034%_))))))
    (define __compile-ref%
      (lambda (_%stx109983%_)
        (let* ((_%$e109985%_ _%stx109983%_)
               (_%$E109987109996%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109985%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109985%_))
              (let* ((_%$tgt109988109999%_
                      (let () (declare (not safe)) (__AST-e _%$e109985%_)))
                     (_%$hd109989110002%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109988109999%_)))
                     (_%$tl109990110005%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109988109999%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109990110005%_))
                    (let* ((_%$tgt109991110009%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109990110005%_)))
                           (_%$hd109992110012%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109991110009%_)))
                           (_%$tl109993110015%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109991110009%_)))
                           (_%id110019%_ _%$hd109992110012%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl109993110015%_))
                                  '())
                          (let ()
                            (declare (not safe))
                            (__SRC__% _%id110019%_ _%stx109983%_))
                          (let () (declare (not safe)) (_%$E109987109996%_))))
                    (let () (declare (not safe)) (_%$E109987109996%_))))
              (let () (declare (not safe)) (_%$E109987109996%_))))))
    (define __compile-setq%
      (lambda (_%stx109930%_)
        (let* ((_%$e109932%_ _%stx109930%_)
               (_%$E109934109946%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109932%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109932%_))
              (let* ((_%$tgt109935109949%_
                      (let () (declare (not safe)) (__AST-e _%$e109932%_)))
                     (_%$hd109936109952%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109935109949%_)))
                     (_%$tl109937109955%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109935109949%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109937109955%_))
                    (let* ((_%$tgt109938109959%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109937109955%_)))
                           (_%$hd109939109962%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109938109959%_)))
                           (_%$tl109940109965%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109938109959%_)))
                           (_%id109969%_ _%$hd109939109962%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl109940109965%_))
                          (let* ((_%$tgt109941109971%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl109940109965%_)))
                                 (_%$hd109942109974%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt109941109971%_)))
                                 (_%$tl109943109977%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt109941109971%_)))
                                 (_%expr109981%_ _%$hd109942109974%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl109943109977%_))
                                        '())
                                (let ((__tmp111922
                                       (cons 'set!
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (__SRC__%
                                                      _%id109969%_
                                                      _%stx109930%_))
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__compile
                                                            _%expr109981%_))
                                                         '())))))
                                  (declare (not safe))
                                  (__SRC__% __tmp111922 _%stx109930%_))
                                (let ()
                                  (declare (not safe))
                                  (_%$E109934109946%_))))
                          (let () (declare (not safe)) (_%$E109934109946%_))))
                    (let () (declare (not safe)) (_%$E109934109946%_))))
              (let () (declare (not safe)) (_%$E109934109946%_))))))
    (define __compile-if%
      (lambda (_%stx109862%_)
        (let* ((_%$e109864%_ _%stx109862%_)
               (_%$E109866109881%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109864%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109864%_))
              (let* ((_%$tgt109867109884%_
                      (let () (declare (not safe)) (__AST-e _%$e109864%_)))
                     (_%$hd109868109887%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109867109884%_)))
                     (_%$tl109869109890%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109867109884%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109869109890%_))
                    (let* ((_%$tgt109870109894%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109869109890%_)))
                           (_%$hd109871109897%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109870109894%_)))
                           (_%$tl109872109900%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109870109894%_)))
                           (_%p109904%_ _%$hd109871109897%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl109872109900%_))
                          (let* ((_%$tgt109873109906%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl109872109900%_)))
                                 (_%$hd109874109909%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt109873109906%_)))
                                 (_%$tl109875109912%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt109873109906%_)))
                                 (_%t109916%_ _%$hd109874109909%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl109875109912%_))
                                (let* ((_%$tgt109876109918%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl109875109912%_)))
                                       (_%$hd109877109921%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt109876109918%_)))
                                       (_%$tl109878109924%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt109876109918%_)))
                                       (_%f109928%_ _%$hd109877109921%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl109878109924%_))
                                              '())
                                      (let ((__tmp111923
                                             (cons 'if
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__compile
                                                            _%p109904%_))
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (__compile _%t109916%_))
                       (cons (let ()
                               (declare (not safe))
                               (__compile _%f109928%_))
                             '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (declare (not safe))
                                        (__SRC__% __tmp111923 _%stx109862%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%$E109866109881%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%$E109866109881%_))))
                          (let () (declare (not safe)) (_%$E109866109881%_))))
                    (let () (declare (not safe)) (_%$E109866109881%_))))
              (let () (declare (not safe)) (_%$E109866109881%_))))))
    (define __compile-quote%
      (lambda (_%stx109824%_)
        (let* ((_%$e109826%_ _%stx109824%_)
               (_%$E109828109837%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109826%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109826%_))
              (let* ((_%$tgt109829109840%_
                      (let () (declare (not safe)) (__AST-e _%$e109826%_)))
                     (_%$hd109830109843%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109829109840%_)))
                     (_%$tl109831109846%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109829109840%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109831109846%_))
                    (let* ((_%$tgt109832109850%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109831109846%_)))
                           (_%$hd109833109853%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109832109850%_)))
                           (_%$tl109834109856%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109832109850%_)))
                           (_%e109860%_ _%$hd109833109853%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl109834109856%_))
                                  '())
                          (let ((__tmp111924
                                 (cons 'quote
                                       (cons (let ()
                                               (declare (not safe))
                                               (__AST->datum _%e109860%_))
                                             '()))))
                            (declare (not safe))
                            (__SRC__% __tmp111924 _%stx109824%_))
                          (let () (declare (not safe)) (_%$E109828109837%_))))
                    (let () (declare (not safe)) (_%$E109828109837%_))))
              (let () (declare (not safe)) (_%$E109828109837%_))))))
    (define __compile-quote-syntax%
      (lambda (_%stx109786%_)
        (let* ((_%$e109788%_ _%stx109786%_)
               (_%$E109790109799%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109788%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109788%_))
              (let* ((_%$tgt109791109802%_
                      (let () (declare (not safe)) (__AST-e _%$e109788%_)))
                     (_%$hd109792109805%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109791109802%_)))
                     (_%$tl109793109808%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109791109802%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109793109808%_))
                    (let* ((_%$tgt109794109812%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109793109808%_)))
                           (_%$hd109795109815%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109794109812%_)))
                           (_%$tl109796109818%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109794109812%_)))
                           (_%e109822%_ _%$hd109795109815%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl109796109818%_))
                                  '())
                          (let ((__tmp111925
                                 (cons 'quote (cons _%e109822%_ '()))))
                            (declare (not safe))
                            (__SRC__% __tmp111925 _%stx109786%_))
                          (let () (declare (not safe)) (_%$E109790109799%_))))
                    (let () (declare (not safe)) (_%$E109790109799%_))))
              (let () (declare (not safe)) (_%$E109790109799%_))))))
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

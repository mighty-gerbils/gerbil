(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1712256086)
  (begin
    (define __syntax::t
      (let ((__tmp111799 (list)) (__tmp111798 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp111799
         '(e id)
         __tmp111798
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args111603%_
        (apply make-instance __syntax::t _%$args111603%_)))
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
      (let ((__tmp111801 (list __syntax::t))
            (__tmp111800 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp111801
         '()
         __tmp111800
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args111600%_
        (apply make-instance __core-form::t _%$args111600%_)))
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
      (let ((__tmp111803 (list __core-form::t))
            (__tmp111802 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp111803
         '()
         __tmp111802
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args111597%_
        (apply make-instance __core-expression::t _%$args111597%_)))
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
      (let ((__tmp111805 (list __core-form::t))
            (__tmp111804 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp111805
         '()
         __tmp111804
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args111594%_
        (apply make-instance __core-special-form::t _%$args111594%_)))
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
      (lambda (_%id111592%_)
        (let ((__tmp111806
               (let () (declare (not safe)) (__AST-e _%id111592%_))))
          (declare (not safe))
          (hash-get __core __tmp111806))))
    (define __core-bound-id?__%
      (lambda (_%id111575%_ _%is?111576%_)
        (let ((_%$e111578%_
               (let () (declare (not safe)) (__core-resolve _%id111575%_))))
          (if _%$e111578%_ (_%is?111576%_ _%$e111578%_) (let () '#f)))))
    (define __core-bound-id?__0
      (lambda (_%id111585%_)
        (let ((_%is?111587%_ true))
          (declare (not safe))
          (__core-bound-id?__% _%id111585%_ _%is?111587%_))))
    (define __core-bound-id?
      (lambda _g111808_
        (let ((_g111807_ (let () (declare (not safe)) (##length _g111808_))))
          (cond ((let () (declare (not safe)) (##fx= _g111807_ 1))
                 (apply (lambda (_%id111585%_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _%id111585%_)))
                        _g111808_))
                ((let () (declare (not safe)) (##fx= _g111807_ 2))
                 (apply (lambda (_%id111589%_ _%is?111590%_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _%id111589%_ _%is?111590%_)))
                        _g111808_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g111808_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id111558%_ _%e111559%_ _%make111560%_)
        (let ((__tmp111809
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e111559%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e111559%_
                   (_%make111560%_ _%e111559%_ _%id111558%_))))
          (declare (not safe))
          (hash-put! __core _%id111558%_ __tmp111809))))
    (define __core-bind-syntax!__0
      (lambda (_%id111565%_ _%e111566%_)
        (let ((_%make111568%_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _%id111565%_ _%e111566%_ _%make111568%_))))
    (define __core-bind-syntax!
      (lambda _g111811_
        (let ((_g111810_ (let () (declare (not safe)) (##length _g111811_))))
          (cond ((let () (declare (not safe)) (##fx= _g111810_ 2))
                 (apply (lambda (_%id111565%_ _%e111566%_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _%id111565%_ _%e111566%_)))
                        _g111811_))
                ((let () (declare (not safe)) (##fx= _g111810_ 3))
                 (apply (lambda (_%id111570%_ _%e111571%_ _%make111572%_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _%id111570%_
                             _%e111571%_
                             _%make111572%_)))
                        _g111811_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g111811_))))))
    (define __SRC__%
      (lambda (_%e111538%_ _%src-stx111539%_)
        (if (or (let () (declare (not safe)) (pair? _%e111538%_))
                (let () (declare (not safe)) (symbol? _%e111538%_)))
            (let ((__tmp111812
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx111539%_
                          'gerbil#AST::t))
                       (let ((__tmp111813
                              (let ()
                                (declare (not safe))
                                (__AST-source _%src-stx111539%_))))
                         (declare (not safe))
                         (__locat __tmp111813))
                       '#f)))
              (declare (not safe))
              (##make-source _%e111538%_ __tmp111812))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e111538%_ 'gerbil#AST::t))
                (let ((__tmp111816
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e111538%_ '1 '#f '#f)))
                      (__tmp111814
                       (let ((__tmp111815
                              (let ()
                                (declare (not safe))
                                (__AST-source _%e111538%_))))
                         (declare (not safe))
                         (__locat __tmp111815))))
                  (declare (not safe))
                  (##make-source __tmp111816 __tmp111814))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e111538%_))))))
    (define __SRC__0
      (lambda (_%e111550%_)
        (let ((_%src-stx111552%_ '#f))
          (declare (not safe))
          (__SRC__% _%e111550%_ _%src-stx111552%_))))
    (define __SRC
      (lambda _g111818_
        (let ((_g111817_ (let () (declare (not safe)) (##length _g111818_))))
          (cond ((let () (declare (not safe)) (##fx= _g111817_ 1))
                 (apply (lambda (_%e111550%_)
                          (let () (declare (not safe)) (__SRC__0 _%e111550%_)))
                        _g111818_))
                ((let () (declare (not safe)) (##fx= _g111817_ 2))
                 (apply (lambda (_%e111554%_ _%src-stx111555%_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _%e111554%_ _%src-stx111555%_)))
                        _g111818_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g111818_))))))
    (define __locat
      (lambda (_%loc111535%_)
        (if (let () (declare (not safe)) (##locat? _%loc111535%_))
            _%loc111535%_
            '#f)))
    (define __check-values
      (lambda (_%obj111530%_ _%k111531%_)
        (let ((_%count111533%_
               (if (let () (declare (not safe)) (##values? _%obj111530%_))
                   (let ()
                     (declare (not safe))
                     (##vector-length _%obj111530%_))
                   '1)))
          (if (fx= _%count111533%_ _%k111531%_)
              '#!void
              (let ((__tmp111820
                     (if (fx< _%count111533%_ _%k111531%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp111819
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj111530%_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _%obj111530%_))
                         _%obj111530%_)))
                (declare (not safe))
                (error __tmp111820 __tmp111819 _%k111531%_))))))
    (define __compile
      (lambda (_%stx111499%_)
        (let* ((_%$e111501%_ _%stx111499%_)
               (_%$E111503111509%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111501%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111501%_))
              (let* ((_%$tgt111504111512%_
                      (let () (declare (not safe)) (__AST-e _%$e111501%_)))
                     (_%$hd111505111515%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111504111512%_)))
                     (_%$tl111506111518%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111504111512%_))))
                (let* ((_%form111522%_ _%$hd111505111515%_)
                       (_%$e111524%_
                        (let ()
                          (declare (not safe))
                          (__core-resolve _%form111522%_))))
                  (if _%$e111524%_
                      ((lambda (_%bind111527%_)
                         ((##structure-ref _%bind111527%_ '1 __syntax::t '#f)
                          _%stx111499%_))
                       _%$e111524%_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _%stx111499%_
                         _%form111522%_)))))
              (let () (declare (not safe)) (_%$E111503111509%_))))))
    (define __compile-error__%
      (lambda (_%stx111486%_ _%detail111487%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx111486%_
           _%detail111487%_))))
    (define __compile-error__0
      (lambda (_%stx111492%_)
        (let ((_%detail111494%_ '#f))
          (declare (not safe))
          (__compile-error__% _%stx111492%_ _%detail111494%_))))
    (define __compile-error
      (lambda _g111822_
        (let ((_g111821_ (let () (declare (not safe)) (##length _g111822_))))
          (cond ((let () (declare (not safe)) (##fx= _g111821_ 1))
                 (apply (lambda (_%stx111492%_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _%stx111492%_)))
                        _g111822_))
                ((let () (declare (not safe)) (##fx= _g111821_ 2))
                 (apply (lambda (_%stx111496%_ _%detail111497%_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__%
                             _%stx111496%_
                             _%detail111497%_)))
                        _g111822_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g111822_))))))
    (define __compile-ignore%
      (lambda (_%stx111483%_)
        (let () (declare (not safe)) (__SRC__% ''#!void _%stx111483%_))))
    (define __compile-begin%
      (lambda (_%stx111458%_)
        (let* ((_%$e111460%_ _%stx111458%_)
               (_%$E111462111468%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111460%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111460%_))
              (let* ((_%$tgt111463111471%_
                      (let () (declare (not safe)) (__AST-e _%$e111460%_)))
                     (_%$hd111464111474%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111463111471%_)))
                     (_%$tl111465111477%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111463111471%_))))
                (let* ((_%body111481%_ _%$tl111465111477%_)
                       (__tmp111823
                        (cons 'begin (map __compile _%body111481%_))))
                  (declare (not safe))
                  (__SRC__% __tmp111823 _%stx111458%_)))
              (let () (declare (not safe)) (_%$E111462111468%_))))))
    (define __compile-begin-foreign%
      (lambda (_%stx111433%_)
        (let* ((_%$e111435%_ _%stx111433%_)
               (_%$E111437111443%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111435%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111435%_))
              (let* ((_%$tgt111438111446%_
                      (let () (declare (not safe)) (__AST-e _%$e111435%_)))
                     (_%$hd111439111449%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111438111446%_)))
                     (_%$tl111440111452%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111438111446%_))))
                (let* ((_%body111456%_ _%$tl111440111452%_)
                       (__tmp111824
                        (cons 'begin
                              (let ()
                                (declare (not safe))
                                (__AST->datum _%body111456%_)))))
                  (declare (not safe))
                  (__SRC__% __tmp111824 _%stx111433%_)))
              (let () (declare (not safe)) (_%$E111437111443%_))))))
    (define __compile-import%
      (lambda (_%stx111408%_)
        (let* ((_%$e111410%_ _%stx111408%_)
               (_%$E111412111418%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111410%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111410%_))
              (let* ((_%$tgt111413111421%_
                      (let () (declare (not safe)) (__AST-e _%$e111410%_)))
                     (_%$hd111414111424%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111413111421%_)))
                     (_%$tl111415111427%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111413111421%_))))
                (let* ((_%body111431%_ _%$tl111415111427%_)
                       (__tmp111825
                        (cons '__eval-import
                              (cons (cons 'quote (cons _%body111431%_ '()))
                                    '()))))
                  (declare (not safe))
                  (__SRC__% __tmp111825 _%stx111408%_)))
              (let () (declare (not safe)) (_%$E111412111418%_))))))
    (define __compile-begin-annotation%
      (lambda (_%stx111355%_)
        (let* ((_%$e111357%_ _%stx111355%_)
               (_%$E111359111371%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111357%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111357%_))
              (let* ((_%$tgt111360111374%_
                      (let () (declare (not safe)) (__AST-e _%$e111357%_)))
                     (_%$hd111361111377%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111360111374%_)))
                     (_%$tl111362111380%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111360111374%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111362111380%_))
                    (let* ((_%$tgt111363111384%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111362111380%_)))
                           (_%$hd111364111387%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111363111384%_)))
                           (_%$tl111365111390%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111363111384%_)))
                           (_%ann111394%_ _%$hd111364111387%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl111365111390%_))
                          (let* ((_%$tgt111366111396%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111365111390%_)))
                                 (_%$hd111367111399%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111366111396%_)))
                                 (_%$tl111368111402%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111366111396%_)))
                                 (_%expr111406%_ _%$hd111367111399%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl111368111402%_))
                                        '())
                                (let ()
                                  (declare (not safe))
                                  (__compile _%expr111406%_))
                                (let ()
                                  (declare (not safe))
                                  (_%$E111359111371%_))))
                          (let () (declare (not safe)) (_%$E111359111371%_))))
                    (let () (declare (not safe)) (_%$E111359111371%_))))
              (let () (declare (not safe)) (_%$E111359111371%_))))))
    (define __compile-define-values%
      (lambda (_%stx111246%_)
        (let* ((_%$e111248%_ _%stx111246%_)
               (_%$E111250111262%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111248%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111248%_))
              (let* ((_%$tgt111251111265%_
                      (let () (declare (not safe)) (__AST-e _%$e111248%_)))
                     (_%$hd111252111268%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111251111265%_)))
                     (_%$tl111253111271%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111251111265%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111253111271%_))
                    (let* ((_%$tgt111254111275%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111253111271%_)))
                           (_%$hd111255111278%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111254111275%_)))
                           (_%$tl111256111281%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111254111275%_)))
                           (_%hd111285%_ _%$hd111255111278%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl111256111281%_))
                          (let* ((_%$tgt111257111287%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111256111281%_)))
                                 (_%$hd111258111290%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111257111287%_)))
                                 (_%$tl111259111293%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111257111287%_)))
                                 (_%expr111297%_ _%$hd111258111290%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl111259111293%_))
                                        '())
                                (let* ((_%$e111299%_ _%hd111285%_)
                                       (_%$E111301111342%_
                                        (lambda ()
                                          (let ((_%$E111302111327%_
                                                 (lambda ()
                                                   (let* ((_%$E111303111314%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e111299%_))))
                  (_%ids111317%_ _%hd111285%_)
                  (_%len111319%_ (length _%ids111317%_))
                  (_%tmp111321%_
                   (let ((__tmp111826
                          (let () (declare (not safe)) (##gensym))))
                     (declare (not safe))
                     (__SRC__0 __tmp111826)))
                  (__tmp111827
                   (cons 'begin
                         (cons (let ((__tmp111828
                                      (cons 'define
                                            (cons _%tmp111321%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (__compile
                                                           _%expr111297%_))
                                                        '())))))
                                 (declare (not safe))
                                 (__SRC__% __tmp111828 _%stx111246%_))
                               (cons (let ((__tmp111829
                                            (cons '__check-values
                                                  (cons _%tmp111321%_
                                                        (cons _%len111319%_
                                                              '())))))
                                       (declare (not safe))
                                       (__SRC__% __tmp111829 _%stx111246%_))
                                     (let ((__tmp111830
                                            (let ((__tmp111832
                                                   (lambda (_%id111324%_
                                                            _%k111325%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id111324%_))
                                                         (let ((__tmp111833
                                                                (cons 'define
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (__SRC__0 _%id111324%_))
                                    (cons (cons '##vector-ref
                                                (cons _%tmp111321%_
                                                      (cons _%k111325%_ '())))
                                          '())))))
                   (declare (not safe))
                   (__SRC__% __tmp111833 _%stx111246%_))
                 '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp111831
                                                   (let ()
                                                     (declare (not safe))
                                                     (##iota _%len111319%_))))
                                              (declare (not safe))
                                              (__filter-map2
                                               __tmp111832
                                               _%ids111317%_
                                               __tmp111831))))
                                       (declare (not safe))
                                       (__foldr1 cons '() __tmp111830)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__SRC__%
                                                      __tmp111827
                                                      _%stx111246%_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e111299%_))
                                                (let* ((_%$tgt111304111330%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e111299%_)))
                                                       (_%$hd111305111333%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt111304111330%_)))
                                                       (_%$tl111306111336%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt111304111330%_)))
                                                       (_%id111340%_
                                                        _%$hd111305111333%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl111306111336%_))
                      '())
              (let ((__tmp111834
                     (cons 'define
                           (cons (let ()
                                   (declare (not safe))
                                   (__SRC__0 _%id111340%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (__compile _%expr111297%_))
                                       '())))))
                (declare (not safe))
                (__SRC__% __tmp111834 _%stx111246%_))
              (let () (declare (not safe)) (_%$E111302111327%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$E111302111327%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e111299%_))
                                      (let* ((_%$tgt111307111345%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e111299%_)))
                                             (_%$hd111308111348%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt111307111345%_)))
                                             (_%$tl111309111351%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt111307111345%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd111308111348%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl111309111351%_))
                                                        '())
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _%expr111297%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$E111301111342%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$E111301111342%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$E111301111342%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%$E111250111262%_))))
                          (let () (declare (not safe)) (_%$E111250111262%_))))
                    (let () (declare (not safe)) (_%$E111250111262%_))))
              (let () (declare (not safe)) (_%$E111250111262%_))))))
    (define __compile-head-id
      (lambda (_%e111244%_)
        (let ((__tmp111835
               (if (let () (declare (not safe)) (__AST-e _%e111244%_))
                   _%e111244%_
                   (let () (declare (not safe)) (##gensym)))))
          (declare (not safe))
          (__SRC__0 __tmp111835))))
    (define __compile-lambda-head
      (lambda (_%hd111201%_)
        (let _%recur111203%_ ((_%rest111205%_ _%hd111201%_))
          (let* ((_%$e111207%_ _%rest111205%_)
                 (_%$E111209111227%_
                  (lambda ()
                    (let ((_%$E111210111224%_
                           (lambda ()
                             (let* ((_%$E111211111219%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e111207%_))))
                                    (_%tail111222%_ _%$e111207%_))
                               (declare (not safe))
                               (__compile-head-id _%tail111222%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e111207%_))
                                  '())
                          '()
                          (let ()
                            (declare (not safe))
                            (_%$E111210111224%_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e111207%_))
                (let* ((_%$tgt111212111230%_
                        (let () (declare (not safe)) (__AST-e _%$e111207%_)))
                       (_%$hd111213111233%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt111212111230%_)))
                       (_%$tl111214111236%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt111212111230%_))))
                  (let* ((_%hd111240%_ _%$hd111213111233%_)
                         (_%rest111242%_ _%$tl111214111236%_))
                    (cons (let ()
                            (declare (not safe))
                            (__compile-head-id _%hd111240%_))
                          (let ()
                            (declare (not safe))
                            (_%recur111203%_ _%rest111242%_)))))
                (let () (declare (not safe)) (_%$E111209111227%_)))))))
    (define __compile-lambda%
      (lambda (_%stx111148%_)
        (let* ((_%$e111150%_ _%stx111148%_)
               (_%$E111152111164%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111150%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111150%_))
              (let* ((_%$tgt111153111167%_
                      (let () (declare (not safe)) (__AST-e _%$e111150%_)))
                     (_%$hd111154111170%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111153111167%_)))
                     (_%$tl111155111173%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111153111167%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111155111173%_))
                    (let* ((_%$tgt111156111177%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111155111173%_)))
                           (_%$hd111157111180%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111156111177%_)))
                           (_%$tl111158111183%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111156111177%_)))
                           (_%hd111187%_ _%$hd111157111180%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl111158111183%_))
                          (let* ((_%$tgt111159111189%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111158111183%_)))
                                 (_%$hd111160111192%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111159111189%_)))
                                 (_%$tl111161111195%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111159111189%_)))
                                 (_%body111199%_ _%$hd111160111192%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl111161111195%_))
                                        '())
                                (let ((__tmp111836
                                       (cons 'lambda
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (__compile-lambda-head
                                                      _%hd111187%_))
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__compile
                                                            _%body111199%_))
                                                         '())))))
                                  (declare (not safe))
                                  (__SRC__% __tmp111836 _%stx111148%_))
                                (let ()
                                  (declare (not safe))
                                  (_%$E111152111164%_))))
                          (let () (declare (not safe)) (_%$E111152111164%_))))
                    (let () (declare (not safe)) (_%$E111152111164%_))))
              (let () (declare (not safe)) (_%$E111152111164%_))))))
    (define __compile-case-lambda%
      (lambda (_%stx110940%_)
        (letrec ((_%variadic?110942%_
                  (lambda (_%hd111113%_)
                    (let* ((_%$e111115%_ _%hd111113%_)
                           (_%$E111117111133%_
                            (lambda ()
                              (let ((_%$E111118111130%_
                                     (lambda ()
                                       (let ((_%$E111119111127%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e111115%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e111115%_))
                                            '())
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_%$E111118111130%_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e111115%_))
                          (let* ((_%$tgt111120111136%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e111115%_)))
                                 (_%$hd111121111139%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111120111136%_)))
                                 (_%$tl111122111142%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111120111136%_)))
                                 (_%rest111146%_ _%$tl111122111142%_))
                            (declare (not safe))
                            (_%variadic?110942%_ _%rest111146%_))
                          (let ()
                            (declare (not safe))
                            (_%$E111117111133%_))))))
                 (_%arity110943%_
                  (lambda (_%hd111078%_)
                    (let _%lp111080%_ ((_%rest111082%_ _%hd111078%_)
                                       (_%k111083%_ '0))
                      (let* ((_%$e111085%_ _%rest111082%_)
                             (_%$E111087111098%_
                              (lambda ()
                                (let ((_%$E111088111095%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e111085%_)))))
                                  _%k111083%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e111085%_))
                            (let* ((_%$tgt111089111101%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e111085%_)))
                                   (_%$hd111090111104%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt111089111101%_)))
                                   (_%$tl111091111107%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt111089111101%_))))
                              (let* ((_%rest111111%_ _%$tl111091111107%_)
                                     (__tmp111837
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%k111083%_ '1))))
                                (declare (not safe))
                                (_%lp111080%_ _%rest111111%_ __tmp111837)))
                            (let ()
                              (declare (not safe))
                              (_%$E111087111098%_)))))))
                 (_%generate110944%_
                  (lambda (_%rest111005%_ _%args111006%_ _%len111007%_)
                    (let* ((_%$e111009%_ _%rest111005%_)
                           (_%$E111011111022%_
                            (lambda ()
                              (let* ((_%$E111012111019%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _%$e111009%_))))
                                     (__tmp111838
                                      (cons 'error
                                            (cons '"No clause matching arguments"
                                                  (cons _%args111006%_ '())))))
                                (declare (not safe))
                                (__SRC__% __tmp111838 _%stx110940%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e111009%_))
                          (let* ((_%$tgt111013111025%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e111009%_)))
                                 (_%$hd111014111028%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111013111025%_)))
                                 (_%$tl111015111031%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111013111025%_))))
                            (let* ((_%clause111035%_ _%$hd111014111028%_)
                                   (_%rest111037%_ _%$tl111015111031%_)
                                   (_%$e111039%_ _%clause111035%_)
                                   (_%$E111041111050%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _%$e111039%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _%$e111039%_))
                                  (let* ((_%$tgt111042111053%_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _%$e111039%_)))
                                         (_%$hd111043111056%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$tgt111042111053%_)))
                                         (_%$tl111044111059%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$tgt111042111053%_)))
                                         (_%hd111063%_ _%$hd111043111056%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _%$tl111044111059%_))
                                        (let* ((_%$tgt111045111065%_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _%$tl111044111059%_)))
                                               (_%$hd111046111068%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$tgt111045111065%_)))
                                               (_%$tl111047111071%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$tgt111045111065%_))))
                                          (if (equal? (let ()
                                                        (declare (not safe))
                                                        (__AST-e _%$tl111047111071%_))
                                                      '())
                                              (let ((_%clen111075%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%arity110943%_
                                                        _%hd111063%_)))
                                                    (_%cmp111076%_
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (_%variadic?110942%_
                                                            _%hd111063%_))
                                                         'fx>=
                                                         'fx=)))
                                                (let ((__tmp111839
                                                       (cons 'if
                                                             (cons (cons _%cmp111076%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%len111007%_
                                       (cons _%clen111075%_ '())))
                           (cons (let ((__tmp111840
                                        (cons '##apply
                                              (cons (let ((__tmp111841
                                                           (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause111035%_)))
              (declare (not safe))
              (__compile-lambda% __tmp111841))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%args111006%_
                                                          '())))))
                                   (declare (not safe))
                                   (__SRC__% __tmp111840 _%stx110940%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (_%generate110944%_
                                          _%rest111037%_
                                          _%args111006%_
                                          _%len111007%_))
                                       '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__SRC__%
                                                   __tmp111839
                                                   _%stx110940%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$E111041111050%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$E111041111050%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$E111041111050%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$E111011111022%_)))))))
          (let* ((_%$e110946%_ _%stx110940%_)
                 (_%$E110948110980%_
                  (lambda ()
                    (let ((_%$E110949110962%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e110946%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e110946%_))
                          (let* ((_%$tgt110950110965%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110946%_)))
                                 (_%$hd110951110968%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110950110965%_)))
                                 (_%$tl110952110971%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110950110965%_)))
                                 (_%clauses110975%_ _%$tl110952110971%_))
                            (let ((_%args110977%_
                                   (let ((__tmp111842
                                          (let ()
                                            (declare (not safe))
                                            (##gensym))))
                                     (declare (not safe))
                                     (__SRC__% __tmp111842 _%stx110940%_)))
                                  (_%len110978%_
                                   (let ((__tmp111843
                                          (let ()
                                            (declare (not safe))
                                            (##gensym))))
                                     (declare (not safe))
                                     (__SRC__% __tmp111843 _%stx110940%_))))
                              (let ((__tmp111844
                                     (cons 'lambda
                                           (cons _%args110977%_
                                                 (cons (let ((__tmp111845
                                                              (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (cons _%len110978%_
                                              (cons (let ((__tmp111846
                                                           (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%args110977%_ '()))))
              (declare (not safe))
              (__SRC__% __tmp111846 _%stx110940%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (let ()
                                          (declare (not safe))
                                          (_%generate110944%_
                                           _%clauses110975%_
                                           _%args110977%_
                                           _%len110978%_))
                                        '())))))
                 (declare (not safe))
                 (__SRC__% __tmp111845 _%stx110940%_))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (declare (not safe))
                                (__SRC__% __tmp111844 _%stx110940%_))))
                          (let ()
                            (declare (not safe))
                            (_%$E110949110962%_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e110946%_))
                (let* ((_%$tgt110953110983%_
                        (let () (declare (not safe)) (__AST-e _%$e110946%_)))
                       (_%$hd110954110986%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt110953110983%_)))
                       (_%$tl110955110989%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt110953110983%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl110955110989%_))
                      (let* ((_%$tgt110956110993%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl110955110989%_)))
                             (_%$hd110957110996%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt110956110993%_)))
                             (_%$tl110958110999%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt110956110993%_)))
                             (_%clause111003%_ _%$hd110957110996%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl110958110999%_))
                                    '())
                            (let ((__tmp111847
                                   (cons '%#lambda _%clause111003%_)))
                              (declare (not safe))
                              (__compile-lambda% __tmp111847))
                            (let ()
                              (declare (not safe))
                              (_%$E110948110980%_))))
                      (let () (declare (not safe)) (_%$E110948110980%_))))
                (let () (declare (not safe)) (_%$E110948110980%_)))))))
    (define __compile-let-form
      (lambda (_%stx110709%_ _%compile-simple110710%_ _%compile-values110711%_)
        (letrec ((_%simple-bind?110713%_
                  (lambda (_%hd110898%_)
                    (let* ((_%hd110899110909%_ _%hd110898%_)
                           (_%else110902110917%_ (lambda () '#f)))
                      (let ((_%K110905110930%_ (lambda (_%id110928%_) '#t))
                            (_%K110904110922%_ (lambda () '#t)))
                        (let ((_%try-match110901110925%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd110899110909%_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_%K110904110922%_))
                                     (let ()
                                       (declare (not safe))
                                       (_%else110902110917%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%hd110899110909%_))
                              (let ((_%tl110907110935%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd110899110909%_)))
                                    (_%hd110906110933%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd110899110909%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _%tl110907110935%_))
                                    (let ((_%id110938%_ _%hd110906110933%_))
                                      (declare (not safe))
                                      (_%K110905110930%_ _%id110938%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%try-match110901110925%_))))
                              (let ()
                                (declare (not safe))
                                (_%try-match110901110925%_))))))))
                 (_%car-e110714%_
                  (lambda (_%hd110896%_)
                    (if (let () (declare (not safe)) (pair? _%hd110896%_))
                        (car _%hd110896%_)
                        _%hd110896%_))))
          (let* ((_%$e110716%_ _%stx110709%_)
                 (_%$E110718110861%_
                  (lambda ()
                    (let ((_%$E110719110741%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e110716%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e110716%_))
                          (let* ((_%$tgt110720110744%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110716%_)))
                                 (_%$hd110721110747%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110720110744%_)))
                                 (_%$tl110722110750%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110720110744%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl110722110750%_))
                                (let* ((_%$tgt110723110754%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl110722110750%_)))
                                       (_%$hd110724110757%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt110723110754%_)))
                                       (_%$tl110725110760%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt110723110754%_)))
                                       (_%hd110764%_ _%$hd110724110757%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl110725110760%_))
                                      (let* ((_%$tgt110726110766%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl110725110760%_)))
                                             (_%$hd110727110769%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt110726110766%_)))
                                             (_%$tl110728110772%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt110726110766%_)))
                                             (_%body110776%_
                                              _%$hd110727110769%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl110728110772%_))
                                                    '())
                                            (let* ((_%hd-ids110816%_
                                                    (map (lambda (_%bind110778%_)
                                                           (let* ((_%$e110780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind110778%_)
                          (_%$E110782110791%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e110780%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e110780%_))
                         (let* ((_%$tgt110783110794%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e110780%_)))
                                (_%$hd110784110797%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt110783110794%_)))
                                (_%$tl110785110800%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt110783110794%_)))
                                (_%ids110804%_ _%$hd110784110797%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl110785110800%_))
                               (let* ((_%$tgt110786110806%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl110785110800%_)))
                                      (_%$hd110787110809%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt110786110806%_)))
                                      (_%$tl110788110812%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt110786110806%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl110788110812%_))
                                             '())
                                     _%ids110804%_
                                     (let ()
                                       (declare (not safe))
                                       (_%$E110782110791%_))))
                               (let ()
                                 (declare (not safe))
                                 (_%$E110782110791%_))))
                         (let () (declare (not safe)) (_%$E110782110791%_)))))
                 _%hd110764%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs110856%_
                                                    (map (lambda (_%bind110818%_)
                                                           (let* ((_%$e110820%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind110818%_)
                          (_%$E110822110831%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e110820%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e110820%_))
                         (let* ((_%$tgt110823110834%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e110820%_)))
                                (_%$hd110824110837%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt110823110834%_)))
                                (_%$tl110825110840%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt110823110834%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl110825110840%_))
                               (let* ((_%$tgt110826110844%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl110825110840%_)))
                                      (_%$hd110827110847%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt110826110844%_)))
                                      (_%$tl110828110850%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt110826110844%_)))
                                      (_%expr110854%_ _%$hd110827110847%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl110828110850%_))
                                             '())
                                     (let ()
                                       (declare (not safe))
                                       (__compile _%expr110854%_))
                                     (let ()
                                       (declare (not safe))
                                       (_%$E110822110831%_))))
                               (let ()
                                 (declare (not safe))
                                 (_%$E110822110831%_))))
                         (let () (declare (not safe)) (_%$E110822110831%_)))))
                 _%hd110764%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body110858%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile
                                                       _%body110776%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__andmap1
                                                     _%simple-bind?110713%_
                                                     _%hd-ids110816%_))
                                                  (_%compile-simple110710%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e110714%_
                                                            _%hd-ids110816%_))
                                                   _%exprs110856%_
                                                   _%body110858%_)
                                                  (_%compile-values110711%_
                                                   _%hd-ids110816%_
                                                   _%exprs110856%_
                                                   _%body110858%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$E110719110741%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$E110719110741%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%$E110719110741%_))))
                          (let ()
                            (declare (not safe))
                            (_%$E110719110741%_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e110716%_))
                (let* ((_%$tgt110729110864%_
                        (let () (declare (not safe)) (__AST-e _%$e110716%_)))
                       (_%$hd110730110867%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt110729110864%_)))
                       (_%$tl110731110870%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt110729110864%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl110731110870%_))
                      (let* ((_%$tgt110732110874%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl110731110870%_)))
                             (_%$hd110733110877%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt110732110874%_)))
                             (_%$tl110734110880%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt110732110874%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd110733110877%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl110734110880%_))
                                (let* ((_%$tgt110735110884%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl110734110880%_)))
                                       (_%$hd110736110887%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt110735110884%_)))
                                       (_%$tl110737110890%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt110735110884%_)))
                                       (_%body110894%_ _%$hd110736110887%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl110737110890%_))
                                              '())
                                      (let ()
                                        (declare (not safe))
                                        (__compile _%body110894%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%$E110718110861%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%$E110718110861%_)))
                            (let ()
                              (declare (not safe))
                              (_%$E110718110861%_))))
                      (let () (declare (not safe)) (_%$E110718110861%_))))
                (let () (declare (not safe)) (_%$E110718110861%_)))))))
    (define __compile-let-values%
      (lambda (_%stx110521%_)
        (letrec ((_%compile-simple110523%_
                  (lambda (_%hd-ids110705%_ _%exprs110706%_ _%body110707%_)
                    (let ((__tmp111848
                           (cons 'let
                                 (cons (let ((__tmp111849
                                              (map __compile-head-id
                                                   _%hd-ids110705%_)))
                                         (declare (not safe))
                                         (##map list
                                                __tmp111849
                                                _%exprs110706%_))
                                       (cons _%body110707%_ '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111848 _%stx110521%_))))
                 (_%compile-values110524%_
                  (lambda (_%hd-ids110620%_ _%exprs110621%_ _%body110622%_)
                    (let _%lp110624%_ ((_%rest110626%_ _%hd-ids110620%_)
                                       (_%exprs110627%_ _%exprs110621%_)
                                       (_%bind110628%_ '())
                                       (_%post110629%_ '()))
                      (let* ((_%rest110630110644%_ _%rest110626%_)
                             (_%else110633110652%_
                              (lambda ()
                                (let ((__tmp111850
                                       (cons 'let
                                             (cons (reverse _%bind110628%_)
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (_%compile-post110525%_
                                                            _%post110629%_
                                                            _%body110622%_))
                                                         '())))))
                                  (declare (not safe))
                                  (__SRC__% __tmp111850 _%stx110521%_)))))
                        (let ((_%K110638110688%_
                               (lambda (_%rest110685%_ _%id110686%_)
                                 (let ((__tmp111852 (cdr _%exprs110627%_))
                                       (__tmp111851
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (__compile-head-id
                                                       _%id110686%_))
                                                    (cons (car _%exprs110627%_)
                                                          '()))
                                              _%bind110628%_)))
                                   (declare (not safe))
                                   (_%lp110624%_
                                    _%rest110685%_
                                    __tmp111852
                                    __tmp111851
                                    _%post110629%_))))
                              (_%K110635110670%_
                               (lambda (_%rest110656%_ _%hd110657%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd110657%_))
                                     (let ((__tmp111854 (cdr _%exprs110627%_))
                                           (__tmp111853
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (__compile-head-id
                                                           _%hd110657%_))
                                                        (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (car _%exprs110627%_) '()))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%bind110628%_)))
                                       (declare (not safe))
                                       (_%lp110624%_
                                        _%rest110656%_
                                        __tmp111854
                                        __tmp111853
                                        _%post110629%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _%hd110657%_))
                                         (let ()
                                           (let* ((_%len110661%_
                                                   (length _%hd110657%_))
                                                  (_%tmp110663%_
                                                   (let ((__tmp111855
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym))))
                                                     (declare (not safe))
                                                     (__SRC__0 __tmp111855))))
                                             (let ((__tmp111862
                                                    (cdr _%exprs110627%_))
                                                   (__tmp111861
                                                    (cons (cons _%tmp110663%_
                                                                (cons (car _%exprs110627%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%bind110628%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp111856
                                                    (cons (let ((__tmp111857
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp111858
                                (let ((__tmp111860
                                       (lambda (_%id110666%_ _%k110667%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id110666%_))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _%id110666%_))
                                                   _%k110667%_)
                                             '#f)))
                                      (__tmp111859
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len110661%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp111860
                                   _%hd110657%_
                                   __tmp111859))))
                           (declare (not safe))
                           (cons _%len110661%_ __tmp111858))))
                    (declare (not safe))
                    (cons _%tmp110663%_ __tmp111857))
                  _%post110629%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%lp110624%_
                                                _%rest110656%_
                                                __tmp111862
                                                __tmp111861
                                                __tmp111856))))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _%stx110521%_
                                            _%hd110657%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest110630110644%_))
                              (let ((_%tl110640110693%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest110630110644%_)))
                                    (_%hd110639110691%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest110630110644%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd110639110691%_))
                                    (let ((_%tl110642110698%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd110639110691%_)))
                                          (_%hd110641110696%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd110639110691%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl110642110698%_))
                                          (let ((_%id110701%_
                                                 _%hd110641110696%_)
                                                (_%rest110703%_
                                                 _%tl110640110693%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K110638110688%_
                                               _%rest110703%_
                                               _%id110701%_)))
                                          (let ((_%hd110678%_
                                                 _%hd110639110691%_)
                                                (_%rest110680%_
                                                 _%tl110640110693%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K110635110670%_
                                               _%rest110680%_
                                               _%hd110678%_)))))
                                    (let ((_%hd110678%_ _%hd110639110691%_)
                                          (_%rest110680%_ _%tl110640110693%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%K110635110670%_
                                         _%rest110680%_
                                         _%hd110678%_)))))
                              (let ()
                                (declare (not safe))
                                (_%else110633110652%_))))))))
                 (_%compile-post110525%_
                  (lambda (_%post110527%_ _%body110528%_)
                    (let _%lp110530%_ ((_%rest110532%_ _%post110527%_)
                                       (_%check110533%_ '())
                                       (_%bind110534%_ '()))
                      (let* ((_%rest110535110547%_ _%rest110532%_)
                             (_%else110537110555%_
                              (lambda ()
                                (let ((__tmp111863
                                       (cons 'begin
                                             (let ((__tmp111864
                                                    (cons (let ((__tmp111865
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons 'let
                               (cons _%bind110534%_
                                     (cons _%body110528%_ '())))))
                    (declare (not safe))
                    (__SRC__% __tmp111865 _%stx110521%_))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__foldr1
                                                cons
                                                __tmp111864
                                                _%check110533%_)))))
                                  (declare (not safe))
                                  (__SRC__% __tmp111863 _%stx110521%_))))
                             (_%K110539110594%_
                              (lambda (_%rest110558%_
                                       _%init110559%_
                                       _%len110560%_
                                       _%tmp110561%_)
                                (let ((__tmp111868
                                       (cons (let ((__tmp111869
                                                    (cons '__check-values
                                                          (cons _%tmp110561%_
                                                                (cons _%len110560%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp111869
                                                _%stx110521%_))
                                             _%check110533%_))
                                      (__tmp111866
                                       (let ((__tmp111867
                                              (lambda (_%hd110563%_
                                                       _%r110564%_)
                                                (let* ((_%hd110565110572%_
                                                        _%hd110563%_)
                                                       (_%E110567110576%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd110565110572%_
                           '([id . k])))
                  '#!void))
               (_%K110568110582%_
                (lambda (_%k110579%_ _%id110580%_)
                  (cons (cons _%id110580%_
                              (cons (cons '##vector-ref
                                          (cons _%tmp110561%_
                                                (cons _%k110579%_ '())))
                                    '()))
                        _%r110564%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd110565110572%_))
                                                      (let ((_%hd110569110585%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd110565110572%_)))
                    (_%tl110570110587%_
                     (let () (declare (not safe)) (##cdr _%hd110565110572%_))))
                (let* ((_%id110590%_ _%hd110569110585%_)
                       (_%k110592%_ _%tl110570110587%_))
                  (declare (not safe))
                  (_%K110568110582%_ _%k110592%_ _%id110590%_)))
              (let () (declare (not safe)) (_%E110567110576%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp111867
                                          _%bind110534%_
                                          _%init110559%_))))
                                  (declare (not safe))
                                  (_%lp110530%_
                                   _%rest110558%_
                                   __tmp111868
                                   __tmp111866)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest110535110547%_))
                            (let ((_%hd110540110597%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest110535110547%_)))
                                  (_%tl110541110599%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest110535110547%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd110540110597%_))
                                  (let ((_%hd110542110602%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd110540110597%_)))
                                        (_%tl110543110604%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd110540110597%_))))
                                    (let ((_%tmp110607%_ _%hd110542110602%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl110543110604%_))
                                          (let ((_%hd110544110609%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl110543110604%_)))
                                                (_%tl110545110611%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl110543110604%_))))
                                            (let* ((_%len110614%_
                                                    _%hd110544110609%_)
                                                   (_%init110616%_
                                                    _%tl110545110611%_)
                                                   (_%rest110618%_
                                                    _%tl110541110599%_))
                                              (declare (not safe))
                                              (_%K110539110594%_
                                               _%rest110618%_
                                               _%init110616%_
                                               _%len110614%_
                                               _%tmp110607%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%else110537110555%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%else110537110555%_))))
                            (let ()
                              (declare (not safe))
                              (_%else110537110555%_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _%stx110521%_
             _%compile-simple110523%_
             _%compile-values110524%_)))))
    (define __compile-letrec-values%
      (lambda (_%stx110318%_)
        (letrec ((_%compile-simple110320%_
                  (lambda (_%hd-ids110517%_ _%exprs110518%_ _%body110519%_)
                    (let ((__tmp111870
                           (cons 'letrec
                                 (cons (let ((__tmp111871
                                              (map __compile-head-id
                                                   _%hd-ids110517%_)))
                                         (declare (not safe))
                                         (##map list
                                                __tmp111871
                                                _%exprs110518%_))
                                       (cons _%body110519%_ '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111870 _%stx110318%_))))
                 (_%compile-values110321%_
                  (lambda (_%hd-ids110428%_ _%exprs110429%_ _%body110430%_)
                    (let _%lp110432%_ ((_%rest110434%_ _%hd-ids110428%_)
                                       (_%exprs110435%_ _%exprs110429%_)
                                       (_%pre110436%_ '())
                                       (_%bind110437%_ '())
                                       (_%post110438%_ '()))
                      (let* ((_%rest110439110453%_ _%rest110434%_)
                             (_%else110442110461%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_%compile-inner110322%_
                                   _%pre110436%_
                                   _%bind110437%_
                                   _%post110438%_
                                   _%body110430%_)))))
                        (let ((_%K110447110500%_
                               (lambda (_%rest110497%_ _%id110498%_)
                                 (let ((__tmp111873 (cdr _%exprs110435%_))
                                       (__tmp111872
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (__compile-head-id
                                                       _%id110498%_))
                                                    (cons (car _%exprs110435%_)
                                                          '()))
                                              _%bind110437%_)))
                                   (declare (not safe))
                                   (_%lp110432%_
                                    _%rest110497%_
                                    __tmp111873
                                    _%pre110436%_
                                    __tmp111872
                                    _%post110438%_))))
                              (_%K110444110482%_
                               (lambda (_%rest110465%_ _%hd110466%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd110466%_))
                                     (let ((__tmp111875 (cdr _%exprs110435%_))
                                           (__tmp111874
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (__compile-head-id
                                                           _%hd110466%_))
                                                        (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (car _%exprs110435%_) '()))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%bind110437%_)))
                                       (declare (not safe))
                                       (_%lp110432%_
                                        _%rest110465%_
                                        __tmp111875
                                        _%pre110436%_
                                        __tmp111874
                                        _%post110438%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _%hd110466%_))
                                         (let ()
                                           (let* ((_%len110470%_
                                                   (length _%hd110466%_))
                                                  (_%tmp110472%_
                                                   (let ((__tmp111876
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym))))
                                                     (declare (not safe))
                                                     (__SRC__0 __tmp111876))))
                                             (let ((__tmp111885
                                                    (cdr _%exprs110435%_))
                                                   (__tmp111883
                                                    (let ((__tmp111884
                                                           (lambda (_%id110475%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%r110476%_)
                     (if (let () (declare (not safe)) (__AST-e _%id110475%_))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (__SRC__0 _%id110475%_))
                                     (cons (cons 'quote (cons '#!void '()))
                                           '()))
                               _%r110476%_)
                         _%r110476%_))))
              (declare (not safe))
              (__foldl1 __tmp111884 _%pre110436%_ _%hd110466%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp111882
                                                    (cons (cons _%tmp110472%_
                                                                (cons (car _%exprs110435%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%bind110437%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp111877
                                                    (cons (let ((__tmp111878
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp111879
                                (let ((__tmp111881
                                       (lambda (_%id110478%_ _%k110479%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id110478%_))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _%id110478%_))
                                                   _%k110479%_)
                                             '#f)))
                                      (__tmp111880
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len110470%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp111881
                                   _%hd110466%_
                                   __tmp111880))))
                           (declare (not safe))
                           (cons _%len110470%_ __tmp111879))))
                    (declare (not safe))
                    (cons _%tmp110472%_ __tmp111878))
                  _%post110438%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%lp110432%_
                                                _%rest110465%_
                                                __tmp111885
                                                __tmp111883
                                                __tmp111882
                                                __tmp111877))))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _%stx110318%_
                                            _%hd110466%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest110439110453%_))
                              (let ((_%tl110449110505%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest110439110453%_)))
                                    (_%hd110448110503%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest110439110453%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd110448110503%_))
                                    (let ((_%tl110451110510%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd110448110503%_)))
                                          (_%hd110450110508%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd110448110503%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl110451110510%_))
                                          (let ((_%id110513%_
                                                 _%hd110450110508%_)
                                                (_%rest110515%_
                                                 _%tl110449110505%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K110447110500%_
                                               _%rest110515%_
                                               _%id110513%_)))
                                          (let ((_%hd110490%_
                                                 _%hd110448110503%_)
                                                (_%rest110492%_
                                                 _%tl110449110505%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K110444110482%_
                                               _%rest110492%_
                                               _%hd110490%_)))))
                                    (let ((_%hd110490%_ _%hd110448110503%_)
                                          (_%rest110492%_ _%tl110449110505%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%K110444110482%_
                                         _%rest110492%_
                                         _%hd110490%_)))))
                              (let ()
                                (declare (not safe))
                                (_%else110442110461%_))))))))
                 (_%compile-inner110322%_
                  (lambda (_%pre110423%_
                           _%bind110424%_
                           _%post110425%_
                           _%body110426%_)
                    (if (let () (declare (not safe)) (null? _%pre110423%_))
                        (let ()
                          (declare (not safe))
                          (_%compile-bind110323%_
                           _%bind110424%_
                           _%post110425%_
                           _%body110426%_))
                        (let ((__tmp111886
                               (cons 'let
                                     (cons (reverse _%pre110423%_)
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_%compile-bind110323%_
                                                    _%bind110424%_
                                                    _%post110425%_
                                                    _%body110426%_))
                                                 '())))))
                          (declare (not safe))
                          (__SRC__% __tmp111886 _%stx110318%_)))))
                 (_%compile-bind110323%_
                  (lambda (_%bind110419%_ _%post110420%_ _%body110421%_)
                    (let ((__tmp111887
                           (cons 'letrec
                                 (cons (reverse _%bind110419%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (_%compile-post110324%_
                                                _%post110420%_
                                                _%body110421%_))
                                             '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111887 _%stx110318%_))))
                 (_%compile-post110324%_
                  (lambda (_%post110326%_ _%body110327%_)
                    (let _%lp110329%_ ((_%rest110331%_ _%post110326%_)
                                       (_%check110332%_ '())
                                       (_%bind110333%_ '()))
                      (let* ((_%rest110334110346%_ _%rest110331%_)
                             (_%else110336110354%_
                              (lambda ()
                                (let ((__tmp111888
                                       (cons 'begin
                                             (let ((__tmp111889
                                                    (let ((__tmp111890
                                                           (cons _%body110327%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
              (declare (not safe))
              (__foldr1 cons __tmp111890 _%bind110333%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__foldr1
                                                cons
                                                __tmp111889
                                                _%check110332%_)))))
                                  (declare (not safe))
                                  (__SRC__% __tmp111888 _%stx110318%_))))
                             (_%K110338110393%_
                              (lambda (_%rest110357%_
                                       _%init110358%_
                                       _%len110359%_
                                       _%tmp110360%_)
                                (let ((__tmp111893
                                       (cons (let ((__tmp111894
                                                    (cons '__check-values
                                                          (cons _%tmp110360%_
                                                                (cons _%len110359%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp111894
                                                _%stx110318%_))
                                             _%check110332%_))
                                      (__tmp111891
                                       (let ((__tmp111892
                                              (lambda (_%hd110362%_
                                                       _%r110363%_)
                                                (let* ((_%hd110364110371%_
                                                        _%hd110362%_)
                                                       (_%E110366110375%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd110364110371%_
                           '([id . k])))
                  '#!void))
               (_%K110367110381%_
                (lambda (_%k110378%_ _%id110379%_)
                  (cons (cons 'set!
                              (cons _%id110379%_
                                    (cons (cons '##vector-ref
                                                (cons _%tmp110360%_
                                                      (cons _%k110378%_ '())))
                                          '())))
                        _%r110363%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd110364110371%_))
                                                      (let ((_%hd110368110384%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd110364110371%_)))
                    (_%tl110369110386%_
                     (let () (declare (not safe)) (##cdr _%hd110364110371%_))))
                (let* ((_%id110389%_ _%hd110368110384%_)
                       (_%k110391%_ _%tl110369110386%_))
                  (declare (not safe))
                  (_%K110367110381%_ _%k110391%_ _%id110389%_)))
              (let () (declare (not safe)) (_%E110366110375%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp111892
                                          _%bind110333%_
                                          _%init110358%_))))
                                  (declare (not safe))
                                  (_%lp110329%_
                                   _%rest110357%_
                                   __tmp111893
                                   __tmp111891)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest110334110346%_))
                            (let ((_%hd110339110396%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest110334110346%_)))
                                  (_%tl110340110398%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest110334110346%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd110339110396%_))
                                  (let ((_%hd110341110401%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd110339110396%_)))
                                        (_%tl110342110403%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd110339110396%_))))
                                    (let ((_%tmp110406%_ _%hd110341110401%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl110342110403%_))
                                          (let ((_%hd110343110408%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl110342110403%_)))
                                                (_%tl110344110410%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl110342110403%_))))
                                            (let* ((_%len110413%_
                                                    _%hd110343110408%_)
                                                   (_%init110415%_
                                                    _%tl110344110410%_)
                                                   (_%rest110417%_
                                                    _%tl110340110398%_))
                                              (declare (not safe))
                                              (_%K110338110393%_
                                               _%rest110417%_
                                               _%init110415%_
                                               _%len110413%_
                                               _%tmp110406%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%else110336110354%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%else110336110354%_))))
                            (let ()
                              (declare (not safe))
                              (_%else110336110354%_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _%stx110318%_
             _%compile-simple110320%_
             _%compile-values110321%_)))))
    (define __compile-letrec*-values%
      (lambda (_%stx110069%_)
        (letrec ((_%compile-simple110071%_
                  (lambda (_%hd-ids110314%_ _%exprs110315%_ _%body110316%_)
                    (let ((__tmp111895
                           (cons 'letrec*
                                 (cons (let ((__tmp111896
                                              (map __compile-head-id
                                                   _%hd-ids110314%_)))
                                         (declare (not safe))
                                         (##map list
                                                __tmp111896
                                                _%exprs110315%_))
                                       (cons _%body110316%_ '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111895 _%stx110069%_))))
                 (_%compile-values110072%_
                  (lambda (_%hd-ids110221%_ _%exprs110222%_ _%body110223%_)
                    (let _%lp110225%_ ((_%rest110227%_ _%hd-ids110221%_)
                                       (_%exprs110228%_ _%exprs110222%_)
                                       (_%bind110229%_ '())
                                       (_%post110230%_ '()))
                      (let* ((_%rest110231110245%_ _%rest110227%_)
                             (_%else110234110253%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_%compile-bind110073%_
                                   _%bind110229%_
                                   _%post110230%_
                                   _%body110223%_)))))
                        (let ((_%K110239110297%_
                               (lambda (_%rest110292%_ _%hd110293%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd110293%_))
                                     (let ((_%id110295%_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _%hd110293%_))))
                                       (let ((__tmp111899
                                              (cdr _%exprs110228%_))
                                             (__tmp111898
                                              (cons (cons _%id110295%_
                                                          (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons '#!void '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%bind110229%_))
                                             (__tmp111897
                                              (cons (cons _%id110295%_
                                                          (cons (car _%exprs110228%_)
                                                                '()))
                                                    _%post110230%_)))
                                         (declare (not safe))
                                         (_%lp110225%_
                                          _%rest110292%_
                                          __tmp111899
                                          __tmp111898
                                          __tmp111897)))
                                     (let ((__tmp111901 (cdr _%exprs110228%_))
                                           (__tmp111900
                                            (cons (cons '#f
                                                        (cons (car _%exprs110228%_)
                                                              '()))
                                                  _%post110230%_)))
                                       (declare (not safe))
                                       (_%lp110225%_
                                        _%rest110292%_
                                        __tmp111901
                                        _%bind110229%_
                                        __tmp111900)))))
                              (_%K110236110277%_
                               (lambda (_%rest110257%_ _%hd110258%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd110258%_))
                                     (let ((_%id110261%_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _%hd110258%_))))
                                       (let ((__tmp111904
                                              (cdr _%exprs110228%_))
                                             (__tmp111903
                                              (cons (cons _%id110261%_
                                                          (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons '#!void '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%bind110229%_))
                                             (__tmp111902
                                              (cons (cons _%id110261%_
                                                          (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (car _%exprs110228%_) '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%post110230%_)))
                                         (declare (not safe))
                                         (_%lp110225%_
                                          _%rest110257%_
                                          __tmp111904
                                          __tmp111903
                                          __tmp111902)))
                                     (if (let ((__tmp111905
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _%hd110258%_))))
                                           (declare (not safe))
                                           (not __tmp111905))
                                         (let ((__tmp111907
                                                (cdr _%exprs110228%_))
                                               (__tmp111906
                                                (cons (cons '#f
                                                            (cons (car _%exprs110228%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%post110230%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_%lp110225%_
                                            _%rest110257%_
                                            __tmp111907
                                            _%bind110229%_
                                            __tmp111906))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _%hd110258%_))
                                             (let ()
                                               (let* ((_%len110265%_
                                                       (length _%hd110258%_))
                                                      (_%tmp110267%_
                                                       (let ((__tmp111908
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym))))
                 (declare (not safe))
                 (__SRC__0 __tmp111908))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp111918
                                                        (cdr _%exprs110228%_))
                                                       (__tmp111916
                                                        (let ((__tmp111917
                                                               (lambda (_%id110270%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%r110271%_)
                         (if (let ()
                               (declare (not safe))
                               (__AST-e _%id110270%_))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (__SRC__0 _%id110270%_))
                                         (cons (cons 'quote (cons '#!void '()))
                                               '()))
                                   _%r110271%_)
                             _%r110271%_))))
                  (declare (not safe))
                  (__foldl1 __tmp111917 _%bind110229%_ _%hd110258%_)))
               (__tmp111909
                (cons (let ((__tmp111910
                             (let ((__tmp111915 (car _%exprs110228%_))
                                   (__tmp111911
                                    (let ((__tmp111912
                                           (let ((__tmp111914
                                                  (lambda (_%id110273%_
                                                           _%k110274%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%id110273%_))
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _%id110273%_))
                      _%k110274%_)
                '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (__tmp111913
                                                  (let ()
                                                    (declare (not safe))
                                                    (##iota _%len110265%_))))
                                             (declare (not safe))
                                             (__filter-map2
                                              __tmp111914
                                              _%hd110258%_
                                              __tmp111913))))
                                      (declare (not safe))
                                      (cons _%len110265%_ __tmp111912))))
                               (declare (not safe))
                               (cons __tmp111915 __tmp111911))))
                        (declare (not safe))
                        (cons _%tmp110267%_ __tmp111910))
                      _%post110230%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_%lp110225%_
                                                    _%rest110257%_
                                                    __tmp111918
                                                    __tmp111916
                                                    __tmp111909))))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _%stx110069%_
                                                _%hd110258%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest110231110245%_))
                              (let ((_%tl110241110302%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest110231110245%_)))
                                    (_%hd110240110300%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest110231110245%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd110240110300%_))
                                    (let ((_%tl110243110307%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd110240110300%_)))
                                          (_%hd110242110305%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd110240110300%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl110243110307%_))
                                          (let ((_%hd110310%_
                                                 _%hd110242110305%_)
                                                (_%rest110312%_
                                                 _%tl110241110302%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K110239110297%_
                                               _%rest110312%_
                                               _%hd110310%_)))
                                          (let ((_%hd110285%_
                                                 _%hd110240110300%_)
                                                (_%rest110287%_
                                                 _%tl110241110302%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K110236110277%_
                                               _%rest110287%_
                                               _%hd110285%_)))))
                                    (let ((_%hd110285%_ _%hd110240110300%_)
                                          (_%rest110287%_ _%tl110241110302%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%K110236110277%_
                                         _%rest110287%_
                                         _%hd110285%_)))))
                              (let ()
                                (declare (not safe))
                                (_%else110234110253%_))))))))
                 (_%compile-bind110073%_
                  (lambda (_%bind110217%_ _%post110218%_ _%body110219%_)
                    (let ((__tmp111919
                           (cons 'let
                                 (cons (reverse _%bind110217%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (_%compile-post110074%_
                                                _%post110218%_
                                                _%body110219%_))
                                             '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111919 _%stx110069%_))))
                 (_%compile-post110074%_
                  (lambda (_%post110076%_ _%body110077%_)
                    (let ((__tmp111920
                           (cons 'begin
                                 (let ((__tmp111921
                                        (let ((__tmp111923
                                               (lambda (_%hd110079%_
                                                        _%r110080%_)
                                                 (let* ((_%hd110081110104%_
                                                         _%hd110079%_)
                                                        (_%E110085110108%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd110081110104%_
                            '([#f expr])
                            '([id expr])
                            '([tmp expr len . init])))
                   '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%K110098110202%_
                                                          (lambda (_%expr110200%_)
                                                            (cons _%expr110200%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r110080%_)))
                 (_%K110093110180%_
                  (lambda (_%expr110177%_ _%id110178%_)
                    (cons (let ((__tmp111924
                                 (cons 'set!
                                       (cons _%id110178%_
                                             (cons _%expr110177%_ '())))))
                            (declare (not safe))
                            (__SRC__% __tmp111924 _%stx110069%_))
                          _%r110080%_)))
                 (_%K110086110147%_
                  (lambda (_%init110112%_
                           _%len110113%_
                           _%expr110114%_
                           _%tmp110115%_)
                    (cons (let ((__tmp111925
                                 (cons 'let
                                       (cons (cons (cons _%tmp110115%_
                                                         (cons _%expr110114%_
                                                               '()))
                                                   '())
                                             (cons (let ((__tmp111926
                                                          (cons '__check-values
                                                                (cons _%tmp110115%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%len110113%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__SRC__%
                                                      __tmp111926
                                                      _%stx110069%_))
                                                   (let ((__tmp111927
                                                          (map (lambda (_%hd110117%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_%hd110118110125%_ _%hd110117%_)
                                (_%E110120110129%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"No clause matching"
                                            _%hd110118110125%_
                                            '([id . k])))
                                   '#!void))
                                (_%K110121110135%_
                                 (lambda (_%k110132%_ _%id110133%_)
                                   (let ((__tmp111928
                                          (cons 'set!
                                                (cons _%id110133%_
                                                      (cons (cons '##vector-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%tmp110115%_ (cons _%k110132%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (declare (not safe))
                                     (__SRC__% __tmp111928 _%stx110069%_)))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%hd110118110125%_))
                               (let ((_%hd110122110138%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%hd110118110125%_)))
                                     (_%tl110123110140%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%hd110118110125%_))))
                                 (let* ((_%id110143%_ _%hd110122110138%_)
                                        (_%k110145%_ _%tl110123110140%_))
                                   (declare (not safe))
                                   (_%K110121110135%_
                                    _%k110145%_
                                    _%id110143%_)))
                               (let ()
                                 (declare (not safe))
                                 (_%E110120110129%_)))))
                       _%init110112%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      '()
                                                      __tmp111927)))))))
                            (declare (not safe))
                            (__SRC__% __tmp111925 _%stx110069%_))
                          _%r110080%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__match111696111697%_
                                                             (lambda (_%hd110087110150%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%tl110088110152%_
                              _%hd110089110157%_
                              _%tl110090110159%_)
                       (let ((_%tmp110155%_ _%hd110087110150%_)
                             (_%expr110162%_ _%hd110089110157%_))
                         (let () (declare (not safe)) (_%E110085110108%_)))))
                    (_%__match111690111691%_
                     (lambda (_%hd110087110150%_ _%tl110088110152%_)
                       (let ((_%tmp110155%_ _%hd110087110150%_))
                         (declare (not safe))
                         (_%E110085110108%_)))))
               (if (let () (declare (not safe)) (##pair? _%hd110081110104%_))
                   (let ((_%tl110100110207%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd110081110104%_)))
                         (_%hd110099110205%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd110081110104%_))))
                     (if (let ()
                           (declare (not safe))
                           (##eq? _%hd110099110205%_ '#f))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%tl110100110207%_))
                             (let ((_%tl110102110212%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl110100110207%_)))
                                   (_%hd110101110210%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%tl110100110207%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%tl110102110212%_))
                                   (let ((_%expr110215%_ _%hd110101110210%_))
                                     (declare (not safe))
                                     (_%K110098110202%_ _%expr110215%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%tl110102110212%_))
                                       (let ((_%tl110092110166%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl110102110212%_)))
                                             (_%hd110091110164%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%tl110102110212%_))))
                                         (let ((_%tmp110155%_
                                                _%hd110099110205%_)
                                               (_%expr110162%_
                                                _%hd110101110210%_)
                                               (_%len110169%_
                                                _%hd110091110164%_)
                                               (_%init110171%_
                                                _%tl110092110166%_))
                                           (let ()
                                             (declare (not safe))
                                             (_%K110086110147%_
                                              _%init110171%_
                                              _%len110169%_
                                              _%expr110162%_
                                              _%tmp110155%_))))
                                       (_%__match111696111697%_
                                        _%hd110099110205%_
                                        _%tl110100110207%_
                                        _%hd110101110210%_
                                        _%tl110102110212%_))))
                             (_%__match111690111691%_
                              _%hd110099110205%_
                              _%tl110100110207%_))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%tl110100110207%_))
                             (let ((_%tl110097110192%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl110100110207%_)))
                                   (_%hd110096110190%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%tl110100110207%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%tl110097110192%_))
                                   (let ((_%id110188%_ _%hd110099110205%_)
                                         (_%expr110195%_ _%hd110096110190%_))
                                     (let ()
                                       (declare (not safe))
                                       (_%K110093110180%_
                                        _%expr110195%_
                                        _%id110188%_)))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%tl110097110192%_))
                                       (let ((_%tl110092110166%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl110097110192%_)))
                                             (_%hd110091110164%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%tl110097110192%_))))
                                         (let ((_%tmp110155%_
                                                _%hd110099110205%_)
                                               (_%expr110162%_
                                                _%hd110096110190%_)
                                               (_%len110169%_
                                                _%hd110091110164%_)
                                               (_%init110171%_
                                                _%tl110092110166%_))
                                           (let ()
                                             (declare (not safe))
                                             (_%K110086110147%_
                                              _%init110171%_
                                              _%len110169%_
                                              _%expr110162%_
                                              _%tmp110155%_))))
                                       (_%__match111696111697%_
                                        _%hd110099110205%_
                                        _%tl110100110207%_
                                        _%hd110096110190%_
                                        _%tl110097110192%_))))
                             (_%__match111690111691%_
                              _%hd110099110205%_
                              _%tl110100110207%_))))
                   (let () (declare (not safe)) (_%E110085110108%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (__tmp111922
                                               (list _%body110077%_)))
                                          (declare (not safe))
                                          (__foldl1
                                           __tmp111923
                                           __tmp111922
                                           _%post110076%_))))
                                   (declare (not safe))
                                   (__foldr1 cons '() __tmp111921)))))
                      (declare (not safe))
                      (__SRC__% __tmp111920 _%stx110069%_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _%stx110069%_
             _%compile-simple110071%_
             _%compile-values110072%_)))))
    (define __compile-call%
      (lambda (_%stx110029%_)
        (let* ((_%$e110031%_ _%stx110029%_)
               (_%$E110033110042%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110031%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110031%_))
              (let* ((_%$tgt110034110045%_
                      (let () (declare (not safe)) (__AST-e _%$e110031%_)))
                     (_%$hd110035110048%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110034110045%_)))
                     (_%$tl110036110051%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110034110045%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl110036110051%_))
                    (let* ((_%$tgt110037110055%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl110036110051%_)))
                           (_%$hd110038110058%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt110037110055%_)))
                           (_%$tl110039110061%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt110037110055%_))))
                      (let* ((_%rator110065%_ _%$hd110038110058%_)
                             (_%rands110067%_ _%$tl110039110061%_)
                             (__tmp111929
                              (cons (let ()
                                      (declare (not safe))
                                      (__compile _%rator110065%_))
                                    (map __compile _%rands110067%_))))
                        (declare (not safe))
                        (__SRC__% __tmp111929 _%stx110029%_)))
                    (let () (declare (not safe)) (_%$E110033110042%_))))
              (let () (declare (not safe)) (_%$E110033110042%_))))))
    (define __compile-ref%
      (lambda (_%stx109991%_)
        (let* ((_%$e109993%_ _%stx109991%_)
               (_%$E109995110004%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109993%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109993%_))
              (let* ((_%$tgt109996110007%_
                      (let () (declare (not safe)) (__AST-e _%$e109993%_)))
                     (_%$hd109997110010%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109996110007%_)))
                     (_%$tl109998110013%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109996110007%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109998110013%_))
                    (let* ((_%$tgt109999110017%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109998110013%_)))
                           (_%$hd110000110020%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109999110017%_)))
                           (_%$tl110001110023%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109999110017%_)))
                           (_%id110027%_ _%$hd110000110020%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl110001110023%_))
                                  '())
                          (let ()
                            (declare (not safe))
                            (__SRC__% _%id110027%_ _%stx109991%_))
                          (let () (declare (not safe)) (_%$E109995110004%_))))
                    (let () (declare (not safe)) (_%$E109995110004%_))))
              (let () (declare (not safe)) (_%$E109995110004%_))))))
    (define __compile-setq%
      (lambda (_%stx109938%_)
        (let* ((_%$e109940%_ _%stx109938%_)
               (_%$E109942109954%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109940%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109940%_))
              (let* ((_%$tgt109943109957%_
                      (let () (declare (not safe)) (__AST-e _%$e109940%_)))
                     (_%$hd109944109960%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109943109957%_)))
                     (_%$tl109945109963%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109943109957%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109945109963%_))
                    (let* ((_%$tgt109946109967%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109945109963%_)))
                           (_%$hd109947109970%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109946109967%_)))
                           (_%$tl109948109973%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109946109967%_)))
                           (_%id109977%_ _%$hd109947109970%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl109948109973%_))
                          (let* ((_%$tgt109949109979%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl109948109973%_)))
                                 (_%$hd109950109982%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt109949109979%_)))
                                 (_%$tl109951109985%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt109949109979%_)))
                                 (_%expr109989%_ _%$hd109950109982%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl109951109985%_))
                                        '())
                                (let ((__tmp111930
                                       (cons 'set!
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (__SRC__%
                                                      _%id109977%_
                                                      _%stx109938%_))
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__compile
                                                            _%expr109989%_))
                                                         '())))))
                                  (declare (not safe))
                                  (__SRC__% __tmp111930 _%stx109938%_))
                                (let ()
                                  (declare (not safe))
                                  (_%$E109942109954%_))))
                          (let () (declare (not safe)) (_%$E109942109954%_))))
                    (let () (declare (not safe)) (_%$E109942109954%_))))
              (let () (declare (not safe)) (_%$E109942109954%_))))))
    (define __compile-if%
      (lambda (_%stx109870%_)
        (let* ((_%$e109872%_ _%stx109870%_)
               (_%$E109874109889%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109872%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109872%_))
              (let* ((_%$tgt109875109892%_
                      (let () (declare (not safe)) (__AST-e _%$e109872%_)))
                     (_%$hd109876109895%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109875109892%_)))
                     (_%$tl109877109898%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109875109892%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109877109898%_))
                    (let* ((_%$tgt109878109902%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109877109898%_)))
                           (_%$hd109879109905%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109878109902%_)))
                           (_%$tl109880109908%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109878109902%_)))
                           (_%p109912%_ _%$hd109879109905%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl109880109908%_))
                          (let* ((_%$tgt109881109914%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl109880109908%_)))
                                 (_%$hd109882109917%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt109881109914%_)))
                                 (_%$tl109883109920%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt109881109914%_)))
                                 (_%t109924%_ _%$hd109882109917%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl109883109920%_))
                                (let* ((_%$tgt109884109926%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl109883109920%_)))
                                       (_%$hd109885109929%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt109884109926%_)))
                                       (_%$tl109886109932%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt109884109926%_)))
                                       (_%f109936%_ _%$hd109885109929%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl109886109932%_))
                                              '())
                                      (let ((__tmp111931
                                             (cons 'if
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__compile
                                                            _%p109912%_))
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (__compile _%t109924%_))
                       (cons (let ()
                               (declare (not safe))
                               (__compile _%f109936%_))
                             '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (declare (not safe))
                                        (__SRC__% __tmp111931 _%stx109870%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%$E109874109889%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%$E109874109889%_))))
                          (let () (declare (not safe)) (_%$E109874109889%_))))
                    (let () (declare (not safe)) (_%$E109874109889%_))))
              (let () (declare (not safe)) (_%$E109874109889%_))))))
    (define __compile-quote%
      (lambda (_%stx109832%_)
        (let* ((_%$e109834%_ _%stx109832%_)
               (_%$E109836109845%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109834%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109834%_))
              (let* ((_%$tgt109837109848%_
                      (let () (declare (not safe)) (__AST-e _%$e109834%_)))
                     (_%$hd109838109851%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109837109848%_)))
                     (_%$tl109839109854%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109837109848%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109839109854%_))
                    (let* ((_%$tgt109840109858%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109839109854%_)))
                           (_%$hd109841109861%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109840109858%_)))
                           (_%$tl109842109864%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109840109858%_)))
                           (_%e109868%_ _%$hd109841109861%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl109842109864%_))
                                  '())
                          (let ((__tmp111932
                                 (cons 'quote
                                       (cons (let ()
                                               (declare (not safe))
                                               (__AST->datum _%e109868%_))
                                             '()))))
                            (declare (not safe))
                            (__SRC__% __tmp111932 _%stx109832%_))
                          (let () (declare (not safe)) (_%$E109836109845%_))))
                    (let () (declare (not safe)) (_%$E109836109845%_))))
              (let () (declare (not safe)) (_%$E109836109845%_))))))
    (define __compile-quote-syntax%
      (lambda (_%stx109794%_)
        (let* ((_%$e109796%_ _%stx109794%_)
               (_%$E109798109807%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109796%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109796%_))
              (let* ((_%$tgt109799109810%_
                      (let () (declare (not safe)) (__AST-e _%$e109796%_)))
                     (_%$hd109800109813%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109799109810%_)))
                     (_%$tl109801109816%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109799109810%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109801109816%_))
                    (let* ((_%$tgt109802109820%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109801109816%_)))
                           (_%$hd109803109823%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109802109820%_)))
                           (_%$tl109804109826%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109802109820%_)))
                           (_%e109830%_ _%$hd109803109823%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl109804109826%_))
                                  '())
                          (let ((__tmp111933
                                 (cons 'quote (cons _%e109830%_ '()))))
                            (declare (not safe))
                            (__SRC__% __tmp111933 _%stx109794%_))
                          (let () (declare (not safe)) (_%$E109798109807%_))))
                    (let () (declare (not safe)) (_%$E109798109807%_))))
              (let () (declare (not safe)) (_%$E109798109807%_))))))
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

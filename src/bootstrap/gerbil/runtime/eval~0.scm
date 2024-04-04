(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1712246555)
  (begin
    (define __syntax::t
      (let ((__tmp111816 (list)) (__tmp111815 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp111816
         '(e id)
         __tmp111815
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args111620%_
        (apply make-instance __syntax::t _%$args111620%_)))
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
      (let ((__tmp111818 (list __syntax::t))
            (__tmp111817 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp111818
         '()
         __tmp111817
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args111617%_
        (apply make-instance __core-form::t _%$args111617%_)))
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
      (let ((__tmp111820 (list __core-form::t))
            (__tmp111819 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp111820
         '()
         __tmp111819
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args111614%_
        (apply make-instance __core-expression::t _%$args111614%_)))
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
      (let ((__tmp111822 (list __core-form::t))
            (__tmp111821 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp111822
         '()
         __tmp111821
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args111611%_
        (apply make-instance __core-special-form::t _%$args111611%_)))
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
      (lambda (_%id111609%_)
        (let ((__tmp111823
               (let () (declare (not safe)) (__AST-e _%id111609%_))))
          (declare (not safe))
          (hash-get __core __tmp111823))))
    (define __core-bound-id?__%
      (lambda (_%id111592%_ _%is?111593%_)
        (let ((_%$e111595%_
               (let () (declare (not safe)) (__core-resolve _%id111592%_))))
          (if _%$e111595%_ (_%is?111593%_ _%$e111595%_) (let () '#f)))))
    (define __core-bound-id?__0
      (lambda (_%id111602%_)
        (let ((_%is?111604%_ true))
          (declare (not safe))
          (__core-bound-id?__% _%id111602%_ _%is?111604%_))))
    (define __core-bound-id?
      (lambda _g111825_
        (let ((_g111824_ (let () (declare (not safe)) (##length _g111825_))))
          (cond ((let () (declare (not safe)) (##fx= _g111824_ 1))
                 (apply (lambda (_%id111602%_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _%id111602%_)))
                        _g111825_))
                ((let () (declare (not safe)) (##fx= _g111824_ 2))
                 (apply (lambda (_%id111606%_ _%is?111607%_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _%id111606%_ _%is?111607%_)))
                        _g111825_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g111825_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id111575%_ _%e111576%_ _%make111577%_)
        (let ((__tmp111826
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e111576%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e111576%_
                   (_%make111577%_ _%e111576%_ _%id111575%_))))
          (declare (not safe))
          (hash-put! __core _%id111575%_ __tmp111826))))
    (define __core-bind-syntax!__0
      (lambda (_%id111582%_ _%e111583%_)
        (let ((_%make111585%_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _%id111582%_ _%e111583%_ _%make111585%_))))
    (define __core-bind-syntax!
      (lambda _g111828_
        (let ((_g111827_ (let () (declare (not safe)) (##length _g111828_))))
          (cond ((let () (declare (not safe)) (##fx= _g111827_ 2))
                 (apply (lambda (_%id111582%_ _%e111583%_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _%id111582%_ _%e111583%_)))
                        _g111828_))
                ((let () (declare (not safe)) (##fx= _g111827_ 3))
                 (apply (lambda (_%id111587%_ _%e111588%_ _%make111589%_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _%id111587%_
                             _%e111588%_
                             _%make111589%_)))
                        _g111828_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g111828_))))))
    (define __SRC__%
      (lambda (_%e111555%_ _%src-stx111556%_)
        (if (or (let () (declare (not safe)) (pair? _%e111555%_))
                (let () (declare (not safe)) (symbol? _%e111555%_)))
            (let ((__tmp111829
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx111556%_
                          'gerbil#AST::t))
                       (let ((__tmp111830
                              (let ()
                                (declare (not safe))
                                (__AST-source _%src-stx111556%_))))
                         (declare (not safe))
                         (__locat __tmp111830))
                       '#f)))
              (declare (not safe))
              (##make-source _%e111555%_ __tmp111829))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e111555%_ 'gerbil#AST::t))
                (let ((__tmp111833
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e111555%_ '1 '#f '#f)))
                      (__tmp111831
                       (let ((__tmp111832
                              (let ()
                                (declare (not safe))
                                (__AST-source _%e111555%_))))
                         (declare (not safe))
                         (__locat __tmp111832))))
                  (declare (not safe))
                  (##make-source __tmp111833 __tmp111831))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e111555%_))))))
    (define __SRC__0
      (lambda (_%e111567%_)
        (let ((_%src-stx111569%_ '#f))
          (declare (not safe))
          (__SRC__% _%e111567%_ _%src-stx111569%_))))
    (define __SRC
      (lambda _g111835_
        (let ((_g111834_ (let () (declare (not safe)) (##length _g111835_))))
          (cond ((let () (declare (not safe)) (##fx= _g111834_ 1))
                 (apply (lambda (_%e111567%_)
                          (let () (declare (not safe)) (__SRC__0 _%e111567%_)))
                        _g111835_))
                ((let () (declare (not safe)) (##fx= _g111834_ 2))
                 (apply (lambda (_%e111571%_ _%src-stx111572%_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _%e111571%_ _%src-stx111572%_)))
                        _g111835_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g111835_))))))
    (define __locat
      (lambda (_%loc111552%_)
        (if (let () (declare (not safe)) (##locat? _%loc111552%_))
            _%loc111552%_
            '#f)))
    (define __check-values
      (lambda (_%obj111547%_ _%k111548%_)
        (let ((_%count111550%_
               (if (let () (declare (not safe)) (##values? _%obj111547%_))
                   (let ()
                     (declare (not safe))
                     (##vector-length _%obj111547%_))
                   '1)))
          (if (fx= _%count111550%_ _%k111548%_)
              '#!void
              (let ((__tmp111837
                     (if (fx< _%count111550%_ _%k111548%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp111836
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj111547%_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _%obj111547%_))
                         _%obj111547%_)))
                (declare (not safe))
                (error __tmp111837 __tmp111836 _%k111548%_))))))
    (define __compile
      (lambda (_%stx111516%_)
        (let* ((_%$e111518%_ _%stx111516%_)
               (_%$E111520111526%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111518%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111518%_))
              (let* ((_%$tgt111521111529%_
                      (let () (declare (not safe)) (__AST-e _%$e111518%_)))
                     (_%$hd111522111532%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111521111529%_)))
                     (_%$tl111523111535%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111521111529%_))))
                (let* ((_%form111539%_ _%$hd111522111532%_)
                       (_%$e111541%_
                        (let ()
                          (declare (not safe))
                          (__core-resolve _%form111539%_))))
                  (if _%$e111541%_
                      ((lambda (_%bind111544%_)
                         ((##structure-ref _%bind111544%_ '1 __syntax::t '#f)
                          _%stx111516%_))
                       _%$e111541%_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _%stx111516%_
                         _%form111539%_)))))
              (let () (declare (not safe)) (_%$E111520111526%_))))))
    (define __compile-error__%
      (lambda (_%stx111503%_ _%detail111504%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx111503%_
           _%detail111504%_))))
    (define __compile-error__0
      (lambda (_%stx111509%_)
        (let ((_%detail111511%_ '#f))
          (declare (not safe))
          (__compile-error__% _%stx111509%_ _%detail111511%_))))
    (define __compile-error
      (lambda _g111839_
        (let ((_g111838_ (let () (declare (not safe)) (##length _g111839_))))
          (cond ((let () (declare (not safe)) (##fx= _g111838_ 1))
                 (apply (lambda (_%stx111509%_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _%stx111509%_)))
                        _g111839_))
                ((let () (declare (not safe)) (##fx= _g111838_ 2))
                 (apply (lambda (_%stx111513%_ _%detail111514%_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__%
                             _%stx111513%_
                             _%detail111514%_)))
                        _g111839_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g111839_))))))
    (define __compile-ignore%
      (lambda (_%stx111500%_)
        (let () (declare (not safe)) (__SRC__% ''#!void _%stx111500%_))))
    (define __compile-begin%
      (lambda (_%stx111475%_)
        (let* ((_%$e111477%_ _%stx111475%_)
               (_%$E111479111485%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111477%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111477%_))
              (let* ((_%$tgt111480111488%_
                      (let () (declare (not safe)) (__AST-e _%$e111477%_)))
                     (_%$hd111481111491%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111480111488%_)))
                     (_%$tl111482111494%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111480111488%_))))
                (let* ((_%body111498%_ _%$tl111482111494%_)
                       (__tmp111840
                        (cons 'begin (map __compile _%body111498%_))))
                  (declare (not safe))
                  (__SRC__% __tmp111840 _%stx111475%_)))
              (let () (declare (not safe)) (_%$E111479111485%_))))))
    (define __compile-begin-foreign%
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
                       (__tmp111841
                        (cons 'begin
                              (let ()
                                (declare (not safe))
                                (__AST->datum _%body111473%_)))))
                  (declare (not safe))
                  (__SRC__% __tmp111841 _%stx111450%_)))
              (let () (declare (not safe)) (_%$E111454111460%_))))))
    (define __compile-import%
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
                       (__tmp111842
                        (cons '__eval-import
                              (cons (cons 'quote (cons _%body111448%_ '()))
                                    '()))))
                  (declare (not safe))
                  (__SRC__% __tmp111842 _%stx111425%_)))
              (let () (declare (not safe)) (_%$E111429111435%_))))))
    (define __compile-begin-annotation%
      (lambda (_%stx111372%_)
        (let* ((_%$e111374%_ _%stx111372%_)
               (_%$E111376111388%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111374%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111374%_))
              (let* ((_%$tgt111377111391%_
                      (let () (declare (not safe)) (__AST-e _%$e111374%_)))
                     (_%$hd111378111394%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111377111391%_)))
                     (_%$tl111379111397%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111377111391%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111379111397%_))
                    (let* ((_%$tgt111380111401%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111379111397%_)))
                           (_%$hd111381111404%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111380111401%_)))
                           (_%$tl111382111407%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111380111401%_)))
                           (_%ann111411%_ _%$hd111381111404%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl111382111407%_))
                          (let* ((_%$tgt111383111413%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111382111407%_)))
                                 (_%$hd111384111416%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111383111413%_)))
                                 (_%$tl111385111419%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111383111413%_)))
                                 (_%expr111423%_ _%$hd111384111416%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl111385111419%_))
                                        '())
                                (let ()
                                  (declare (not safe))
                                  (__compile _%expr111423%_))
                                (let ()
                                  (declare (not safe))
                                  (_%$E111376111388%_))))
                          (let () (declare (not safe)) (_%$E111376111388%_))))
                    (let () (declare (not safe)) (_%$E111376111388%_))))
              (let () (declare (not safe)) (_%$E111376111388%_))))))
    (define __compile-define-values%
      (lambda (_%stx111263%_)
        (let* ((_%$e111265%_ _%stx111263%_)
               (_%$E111267111279%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111265%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111265%_))
              (let* ((_%$tgt111268111282%_
                      (let () (declare (not safe)) (__AST-e _%$e111265%_)))
                     (_%$hd111269111285%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111268111282%_)))
                     (_%$tl111270111288%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111268111282%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111270111288%_))
                    (let* ((_%$tgt111271111292%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111270111288%_)))
                           (_%$hd111272111295%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111271111292%_)))
                           (_%$tl111273111298%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111271111292%_)))
                           (_%hd111302%_ _%$hd111272111295%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl111273111298%_))
                          (let* ((_%$tgt111274111304%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111273111298%_)))
                                 (_%$hd111275111307%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111274111304%_)))
                                 (_%$tl111276111310%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111274111304%_)))
                                 (_%expr111314%_ _%$hd111275111307%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl111276111310%_))
                                        '())
                                (let* ((_%$e111316%_ _%hd111302%_)
                                       (_%$E111318111359%_
                                        (lambda ()
                                          (let ((_%$E111319111344%_
                                                 (lambda ()
                                                   (let* ((_%$E111320111331%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e111316%_))))
                  (_%ids111334%_ _%hd111302%_)
                  (_%len111336%_ (length _%ids111334%_))
                  (_%tmp111338%_
                   (let ((__tmp111843
                          (let () (declare (not safe)) (##gensym))))
                     (declare (not safe))
                     (__SRC__0 __tmp111843)))
                  (__tmp111844
                   (cons 'begin
                         (cons (let ((__tmp111845
                                      (cons 'define
                                            (cons _%tmp111338%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (__compile
                                                           _%expr111314%_))
                                                        '())))))
                                 (declare (not safe))
                                 (__SRC__% __tmp111845 _%stx111263%_))
                               (cons (let ((__tmp111846
                                            (cons '__check-values
                                                  (cons _%tmp111338%_
                                                        (cons _%len111336%_
                                                              '())))))
                                       (declare (not safe))
                                       (__SRC__% __tmp111846 _%stx111263%_))
                                     (let ((__tmp111847
                                            (let ((__tmp111849
                                                   (lambda (_%id111341%_
                                                            _%k111342%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id111341%_))
                                                         (let ((__tmp111850
                                                                (cons 'define
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (__SRC__0 _%id111341%_))
                                    (cons (cons '##vector-ref
                                                (cons _%tmp111338%_
                                                      (cons _%k111342%_ '())))
                                          '())))))
                   (declare (not safe))
                   (__SRC__% __tmp111850 _%stx111263%_))
                 '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp111848
                                                   (let ()
                                                     (declare (not safe))
                                                     (##iota _%len111336%_))))
                                              (declare (not safe))
                                              (__filter-map2
                                               __tmp111849
                                               _%ids111334%_
                                               __tmp111848))))
                                       (declare (not safe))
                                       (__foldr1 cons '() __tmp111847)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__SRC__%
                                                      __tmp111844
                                                      _%stx111263%_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e111316%_))
                                                (let* ((_%$tgt111321111347%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e111316%_)))
                                                       (_%$hd111322111350%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt111321111347%_)))
                                                       (_%$tl111323111353%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt111321111347%_)))
                                                       (_%id111357%_
                                                        _%$hd111322111350%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl111323111353%_))
                      '())
              (let ((__tmp111851
                     (cons 'define
                           (cons (let ()
                                   (declare (not safe))
                                   (__SRC__0 _%id111357%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (__compile _%expr111314%_))
                                       '())))))
                (declare (not safe))
                (__SRC__% __tmp111851 _%stx111263%_))
              (let () (declare (not safe)) (_%$E111319111344%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$E111319111344%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e111316%_))
                                      (let* ((_%$tgt111324111362%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e111316%_)))
                                             (_%$hd111325111365%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt111324111362%_)))
                                             (_%$tl111326111368%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt111324111362%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd111325111365%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl111326111368%_))
                                                        '())
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _%expr111314%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$E111318111359%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$E111318111359%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$E111318111359%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%$E111267111279%_))))
                          (let () (declare (not safe)) (_%$E111267111279%_))))
                    (let () (declare (not safe)) (_%$E111267111279%_))))
              (let () (declare (not safe)) (_%$E111267111279%_))))))
    (define __compile-head-id
      (lambda (_%e111261%_)
        (let ((__tmp111852
               (if (let () (declare (not safe)) (__AST-e _%e111261%_))
                   _%e111261%_
                   (let () (declare (not safe)) (##gensym)))))
          (declare (not safe))
          (__SRC__0 __tmp111852))))
    (define __compile-lambda-head
      (lambda (_%hd111218%_)
        (let _%recur111220%_ ((_%rest111222%_ _%hd111218%_))
          (let* ((_%$e111224%_ _%rest111222%_)
                 (_%$E111226111244%_
                  (lambda ()
                    (let ((_%$E111227111241%_
                           (lambda ()
                             (let* ((_%$E111228111236%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e111224%_))))
                                    (_%tail111239%_ _%$e111224%_))
                               (declare (not safe))
                               (__compile-head-id _%tail111239%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e111224%_))
                                  '())
                          '()
                          (let ()
                            (declare (not safe))
                            (_%$E111227111241%_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e111224%_))
                (let* ((_%$tgt111229111247%_
                        (let () (declare (not safe)) (__AST-e _%$e111224%_)))
                       (_%$hd111230111250%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt111229111247%_)))
                       (_%$tl111231111253%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt111229111247%_))))
                  (let* ((_%hd111257%_ _%$hd111230111250%_)
                         (_%rest111259%_ _%$tl111231111253%_))
                    (cons (let ()
                            (declare (not safe))
                            (__compile-head-id _%hd111257%_))
                          (let ()
                            (declare (not safe))
                            (_%recur111220%_ _%rest111259%_)))))
                (let () (declare (not safe)) (_%$E111226111244%_)))))))
    (define __compile-lambda%
      (lambda (_%stx111165%_)
        (let* ((_%$e111167%_ _%stx111165%_)
               (_%$E111169111181%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111167%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111167%_))
              (let* ((_%$tgt111170111184%_
                      (let () (declare (not safe)) (__AST-e _%$e111167%_)))
                     (_%$hd111171111187%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111170111184%_)))
                     (_%$tl111172111190%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111170111184%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111172111190%_))
                    (let* ((_%$tgt111173111194%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111172111190%_)))
                           (_%$hd111174111197%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111173111194%_)))
                           (_%$tl111175111200%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111173111194%_)))
                           (_%hd111204%_ _%$hd111174111197%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl111175111200%_))
                          (let* ((_%$tgt111176111206%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111175111200%_)))
                                 (_%$hd111177111209%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111176111206%_)))
                                 (_%$tl111178111212%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111176111206%_)))
                                 (_%body111216%_ _%$hd111177111209%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl111178111212%_))
                                        '())
                                (let ((__tmp111853
                                       (cons 'lambda
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (__compile-lambda-head
                                                      _%hd111204%_))
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__compile
                                                            _%body111216%_))
                                                         '())))))
                                  (declare (not safe))
                                  (__SRC__% __tmp111853 _%stx111165%_))
                                (let ()
                                  (declare (not safe))
                                  (_%$E111169111181%_))))
                          (let () (declare (not safe)) (_%$E111169111181%_))))
                    (let () (declare (not safe)) (_%$E111169111181%_))))
              (let () (declare (not safe)) (_%$E111169111181%_))))))
    (define __compile-case-lambda%
      (lambda (_%stx110957%_)
        (letrec ((_%variadic?110959%_
                  (lambda (_%hd111130%_)
                    (let* ((_%$e111132%_ _%hd111130%_)
                           (_%$E111134111150%_
                            (lambda ()
                              (let ((_%$E111135111147%_
                                     (lambda ()
                                       (let ((_%$E111136111144%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e111132%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e111132%_))
                                            '())
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_%$E111135111147%_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e111132%_))
                          (let* ((_%$tgt111137111153%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e111132%_)))
                                 (_%$hd111138111156%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111137111153%_)))
                                 (_%$tl111139111159%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111137111153%_)))
                                 (_%rest111163%_ _%$tl111139111159%_))
                            (declare (not safe))
                            (_%variadic?110959%_ _%rest111163%_))
                          (let ()
                            (declare (not safe))
                            (_%$E111134111150%_))))))
                 (_%arity110960%_
                  (lambda (_%hd111095%_)
                    (let _%lp111097%_ ((_%rest111099%_ _%hd111095%_)
                                       (_%k111100%_ '0))
                      (let* ((_%$e111102%_ _%rest111099%_)
                             (_%$E111104111115%_
                              (lambda ()
                                (let ((_%$E111105111112%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e111102%_)))))
                                  _%k111100%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e111102%_))
                            (let* ((_%$tgt111106111118%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e111102%_)))
                                   (_%$hd111107111121%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt111106111118%_)))
                                   (_%$tl111108111124%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt111106111118%_))))
                              (let* ((_%rest111128%_ _%$tl111108111124%_)
                                     (__tmp111854
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%k111100%_ '1))))
                                (declare (not safe))
                                (_%lp111097%_ _%rest111128%_ __tmp111854)))
                            (let ()
                              (declare (not safe))
                              (_%$E111104111115%_)))))))
                 (_%generate110961%_
                  (lambda (_%rest111022%_ _%args111023%_ _%len111024%_)
                    (let* ((_%$e111026%_ _%rest111022%_)
                           (_%$E111028111039%_
                            (lambda ()
                              (let* ((_%$E111029111036%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _%$e111026%_))))
                                     (__tmp111855
                                      (cons 'error
                                            (cons '"No clause matching arguments"
                                                  (cons _%args111023%_ '())))))
                                (declare (not safe))
                                (__SRC__% __tmp111855 _%stx110957%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e111026%_))
                          (let* ((_%$tgt111030111042%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e111026%_)))
                                 (_%$hd111031111045%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111030111042%_)))
                                 (_%$tl111032111048%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111030111042%_))))
                            (let* ((_%clause111052%_ _%$hd111031111045%_)
                                   (_%rest111054%_ _%$tl111032111048%_)
                                   (_%$e111056%_ _%clause111052%_)
                                   (_%$E111058111067%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _%$e111056%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _%$e111056%_))
                                  (let* ((_%$tgt111059111070%_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _%$e111056%_)))
                                         (_%$hd111060111073%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$tgt111059111070%_)))
                                         (_%$tl111061111076%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$tgt111059111070%_)))
                                         (_%hd111080%_ _%$hd111060111073%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _%$tl111061111076%_))
                                        (let* ((_%$tgt111062111082%_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _%$tl111061111076%_)))
                                               (_%$hd111063111085%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$tgt111062111082%_)))
                                               (_%$tl111064111088%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$tgt111062111082%_))))
                                          (if (equal? (let ()
                                                        (declare (not safe))
                                                        (__AST-e _%$tl111064111088%_))
                                                      '())
                                              (let ((_%clen111092%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%arity110960%_
                                                        _%hd111080%_)))
                                                    (_%cmp111093%_
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (_%variadic?110959%_
                                                            _%hd111080%_))
                                                         'fx>=
                                                         'fx=)))
                                                (let ((__tmp111856
                                                       (cons 'if
                                                             (cons (cons _%cmp111093%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%len111024%_
                                       (cons _%clen111092%_ '())))
                           (cons (let ((__tmp111857
                                        (cons '##apply
                                              (cons (let ((__tmp111858
                                                           (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause111052%_)))
              (declare (not safe))
              (__compile-lambda% __tmp111858))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%args111023%_
                                                          '())))))
                                   (declare (not safe))
                                   (__SRC__% __tmp111857 _%stx110957%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (_%generate110961%_
                                          _%rest111054%_
                                          _%args111023%_
                                          _%len111024%_))
                                       '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__SRC__%
                                                   __tmp111856
                                                   _%stx110957%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$E111058111067%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$E111058111067%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$E111058111067%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$E111028111039%_)))))))
          (let* ((_%$e110963%_ _%stx110957%_)
                 (_%$E110965110997%_
                  (lambda ()
                    (let ((_%$E110966110979%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e110963%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e110963%_))
                          (let* ((_%$tgt110967110982%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110963%_)))
                                 (_%$hd110968110985%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110967110982%_)))
                                 (_%$tl110969110988%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110967110982%_)))
                                 (_%clauses110992%_ _%$tl110969110988%_))
                            (let ((_%args110994%_
                                   (let ((__tmp111859
                                          (let ()
                                            (declare (not safe))
                                            (##gensym))))
                                     (declare (not safe))
                                     (__SRC__% __tmp111859 _%stx110957%_)))
                                  (_%len110995%_
                                   (let ((__tmp111860
                                          (let ()
                                            (declare (not safe))
                                            (##gensym))))
                                     (declare (not safe))
                                     (__SRC__% __tmp111860 _%stx110957%_))))
                              (let ((__tmp111861
                                     (cons 'lambda
                                           (cons _%args110994%_
                                                 (cons (let ((__tmp111862
                                                              (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (cons _%len110995%_
                                              (cons (let ((__tmp111863
                                                           (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%args110994%_ '()))))
              (declare (not safe))
              (__SRC__% __tmp111863 _%stx110957%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (let ()
                                          (declare (not safe))
                                          (_%generate110961%_
                                           _%clauses110992%_
                                           _%args110994%_
                                           _%len110995%_))
                                        '())))))
                 (declare (not safe))
                 (__SRC__% __tmp111862 _%stx110957%_))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (declare (not safe))
                                (__SRC__% __tmp111861 _%stx110957%_))))
                          (let ()
                            (declare (not safe))
                            (_%$E110966110979%_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e110963%_))
                (let* ((_%$tgt110970111000%_
                        (let () (declare (not safe)) (__AST-e _%$e110963%_)))
                       (_%$hd110971111003%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt110970111000%_)))
                       (_%$tl110972111006%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt110970111000%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl110972111006%_))
                      (let* ((_%$tgt110973111010%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl110972111006%_)))
                             (_%$hd110974111013%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt110973111010%_)))
                             (_%$tl110975111016%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt110973111010%_)))
                             (_%clause111020%_ _%$hd110974111013%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl110975111016%_))
                                    '())
                            (let ((__tmp111864
                                   (cons '%#lambda _%clause111020%_)))
                              (declare (not safe))
                              (__compile-lambda% __tmp111864))
                            (let ()
                              (declare (not safe))
                              (_%$E110965110997%_))))
                      (let () (declare (not safe)) (_%$E110965110997%_))))
                (let () (declare (not safe)) (_%$E110965110997%_)))))))
    (define __compile-let-form
      (lambda (_%stx110726%_ _%compile-simple110727%_ _%compile-values110728%_)
        (letrec ((_%simple-bind?110730%_
                  (lambda (_%hd110915%_)
                    (let* ((_%hd110916110926%_ _%hd110915%_)
                           (_%else110919110934%_ (lambda () '#f)))
                      (let ((_%K110922110947%_ (lambda (_%id110945%_) '#t))
                            (_%K110921110939%_ (lambda () '#t)))
                        (let ((_%try-match110918110942%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd110916110926%_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_%K110921110939%_))
                                     (let ()
                                       (declare (not safe))
                                       (_%else110919110934%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%hd110916110926%_))
                              (let ((_%tl110924110952%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd110916110926%_)))
                                    (_%hd110923110950%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd110916110926%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _%tl110924110952%_))
                                    (let ((_%id110955%_ _%hd110923110950%_))
                                      (declare (not safe))
                                      (_%K110922110947%_ _%id110955%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%try-match110918110942%_))))
                              (let ()
                                (declare (not safe))
                                (_%try-match110918110942%_))))))))
                 (_%car-e110731%_
                  (lambda (_%hd110913%_)
                    (if (let () (declare (not safe)) (pair? _%hd110913%_))
                        (car _%hd110913%_)
                        _%hd110913%_))))
          (let* ((_%$e110733%_ _%stx110726%_)
                 (_%$E110735110878%_
                  (lambda ()
                    (let ((_%$E110736110758%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e110733%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e110733%_))
                          (let* ((_%$tgt110737110761%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110733%_)))
                                 (_%$hd110738110764%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110737110761%_)))
                                 (_%$tl110739110767%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110737110761%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl110739110767%_))
                                (let* ((_%$tgt110740110771%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl110739110767%_)))
                                       (_%$hd110741110774%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt110740110771%_)))
                                       (_%$tl110742110777%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt110740110771%_)))
                                       (_%hd110781%_ _%$hd110741110774%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl110742110777%_))
                                      (let* ((_%$tgt110743110783%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl110742110777%_)))
                                             (_%$hd110744110786%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt110743110783%_)))
                                             (_%$tl110745110789%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt110743110783%_)))
                                             (_%body110793%_
                                              _%$hd110744110786%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl110745110789%_))
                                                    '())
                                            (let* ((_%hd-ids110833%_
                                                    (map (lambda (_%bind110795%_)
                                                           (let* ((_%$e110797%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind110795%_)
                          (_%$E110799110808%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e110797%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e110797%_))
                         (let* ((_%$tgt110800110811%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e110797%_)))
                                (_%$hd110801110814%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt110800110811%_)))
                                (_%$tl110802110817%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt110800110811%_)))
                                (_%ids110821%_ _%$hd110801110814%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl110802110817%_))
                               (let* ((_%$tgt110803110823%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl110802110817%_)))
                                      (_%$hd110804110826%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt110803110823%_)))
                                      (_%$tl110805110829%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt110803110823%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl110805110829%_))
                                             '())
                                     _%ids110821%_
                                     (let ()
                                       (declare (not safe))
                                       (_%$E110799110808%_))))
                               (let ()
                                 (declare (not safe))
                                 (_%$E110799110808%_))))
                         (let () (declare (not safe)) (_%$E110799110808%_)))))
                 _%hd110781%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs110873%_
                                                    (map (lambda (_%bind110835%_)
                                                           (let* ((_%$e110837%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind110835%_)
                          (_%$E110839110848%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e110837%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e110837%_))
                         (let* ((_%$tgt110840110851%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e110837%_)))
                                (_%$hd110841110854%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt110840110851%_)))
                                (_%$tl110842110857%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt110840110851%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl110842110857%_))
                               (let* ((_%$tgt110843110861%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl110842110857%_)))
                                      (_%$hd110844110864%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt110843110861%_)))
                                      (_%$tl110845110867%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt110843110861%_)))
                                      (_%expr110871%_ _%$hd110844110864%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl110845110867%_))
                                             '())
                                     (let ()
                                       (declare (not safe))
                                       (__compile _%expr110871%_))
                                     (let ()
                                       (declare (not safe))
                                       (_%$E110839110848%_))))
                               (let ()
                                 (declare (not safe))
                                 (_%$E110839110848%_))))
                         (let () (declare (not safe)) (_%$E110839110848%_)))))
                 _%hd110781%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body110875%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile
                                                       _%body110793%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__andmap1
                                                     _%simple-bind?110730%_
                                                     _%hd-ids110833%_))
                                                  (_%compile-simple110727%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e110731%_
                                                            _%hd-ids110833%_))
                                                   _%exprs110873%_
                                                   _%body110875%_)
                                                  (_%compile-values110728%_
                                                   _%hd-ids110833%_
                                                   _%exprs110873%_
                                                   _%body110875%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$E110736110758%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$E110736110758%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%$E110736110758%_))))
                          (let ()
                            (declare (not safe))
                            (_%$E110736110758%_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e110733%_))
                (let* ((_%$tgt110746110881%_
                        (let () (declare (not safe)) (__AST-e _%$e110733%_)))
                       (_%$hd110747110884%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt110746110881%_)))
                       (_%$tl110748110887%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt110746110881%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl110748110887%_))
                      (let* ((_%$tgt110749110891%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl110748110887%_)))
                             (_%$hd110750110894%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt110749110891%_)))
                             (_%$tl110751110897%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt110749110891%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd110750110894%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl110751110897%_))
                                (let* ((_%$tgt110752110901%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl110751110897%_)))
                                       (_%$hd110753110904%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt110752110901%_)))
                                       (_%$tl110754110907%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt110752110901%_)))
                                       (_%body110911%_ _%$hd110753110904%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl110754110907%_))
                                              '())
                                      (let ()
                                        (declare (not safe))
                                        (__compile _%body110911%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%$E110735110878%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%$E110735110878%_)))
                            (let ()
                              (declare (not safe))
                              (_%$E110735110878%_))))
                      (let () (declare (not safe)) (_%$E110735110878%_))))
                (let () (declare (not safe)) (_%$E110735110878%_)))))))
    (define __compile-let-values%
      (lambda (_%stx110538%_)
        (letrec ((_%compile-simple110540%_
                  (lambda (_%hd-ids110722%_ _%exprs110723%_ _%body110724%_)
                    (let ((__tmp111865
                           (cons 'let
                                 (cons (let ((__tmp111866
                                              (map __compile-head-id
                                                   _%hd-ids110722%_)))
                                         (declare (not safe))
                                         (##map list
                                                __tmp111866
                                                _%exprs110723%_))
                                       (cons _%body110724%_ '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111865 _%stx110538%_))))
                 (_%compile-values110541%_
                  (lambda (_%hd-ids110637%_ _%exprs110638%_ _%body110639%_)
                    (let _%lp110641%_ ((_%rest110643%_ _%hd-ids110637%_)
                                       (_%exprs110644%_ _%exprs110638%_)
                                       (_%bind110645%_ '())
                                       (_%post110646%_ '()))
                      (let* ((_%rest110647110661%_ _%rest110643%_)
                             (_%else110650110669%_
                              (lambda ()
                                (let ((__tmp111867
                                       (cons 'let
                                             (cons (reverse _%bind110645%_)
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (_%compile-post110542%_
                                                            _%post110646%_
                                                            _%body110639%_))
                                                         '())))))
                                  (declare (not safe))
                                  (__SRC__% __tmp111867 _%stx110538%_)))))
                        (let ((_%K110655110705%_
                               (lambda (_%rest110702%_ _%id110703%_)
                                 (let ((__tmp111869 (cdr _%exprs110644%_))
                                       (__tmp111868
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (__compile-head-id
                                                       _%id110703%_))
                                                    (cons (car _%exprs110644%_)
                                                          '()))
                                              _%bind110645%_)))
                                   (declare (not safe))
                                   (_%lp110641%_
                                    _%rest110702%_
                                    __tmp111869
                                    __tmp111868
                                    _%post110646%_))))
                              (_%K110652110687%_
                               (lambda (_%rest110673%_ _%hd110674%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd110674%_))
                                     (let ((__tmp111871 (cdr _%exprs110644%_))
                                           (__tmp111870
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (__compile-head-id
                                                           _%hd110674%_))
                                                        (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (car _%exprs110644%_) '()))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%bind110645%_)))
                                       (declare (not safe))
                                       (_%lp110641%_
                                        _%rest110673%_
                                        __tmp111871
                                        __tmp111870
                                        _%post110646%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _%hd110674%_))
                                         (let ()
                                           (let* ((_%len110678%_
                                                   (length _%hd110674%_))
                                                  (_%tmp110680%_
                                                   (let ((__tmp111872
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym))))
                                                     (declare (not safe))
                                                     (__SRC__0 __tmp111872))))
                                             (let ((__tmp111879
                                                    (cdr _%exprs110644%_))
                                                   (__tmp111878
                                                    (cons (cons _%tmp110680%_
                                                                (cons (car _%exprs110644%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%bind110645%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp111873
                                                    (cons (let ((__tmp111874
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp111875
                                (let ((__tmp111877
                                       (lambda (_%id110683%_ _%k110684%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id110683%_))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _%id110683%_))
                                                   _%k110684%_)
                                             '#f)))
                                      (__tmp111876
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len110678%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp111877
                                   _%hd110674%_
                                   __tmp111876))))
                           (declare (not safe))
                           (cons _%len110678%_ __tmp111875))))
                    (declare (not safe))
                    (cons _%tmp110680%_ __tmp111874))
                  _%post110646%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%lp110641%_
                                                _%rest110673%_
                                                __tmp111879
                                                __tmp111878
                                                __tmp111873))))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _%stx110538%_
                                            _%hd110674%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest110647110661%_))
                              (let ((_%tl110657110710%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest110647110661%_)))
                                    (_%hd110656110708%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest110647110661%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd110656110708%_))
                                    (let ((_%tl110659110715%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd110656110708%_)))
                                          (_%hd110658110713%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd110656110708%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl110659110715%_))
                                          (let ((_%id110718%_
                                                 _%hd110658110713%_)
                                                (_%rest110720%_
                                                 _%tl110657110710%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K110655110705%_
                                               _%rest110720%_
                                               _%id110718%_)))
                                          (let ((_%hd110695%_
                                                 _%hd110656110708%_)
                                                (_%rest110697%_
                                                 _%tl110657110710%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K110652110687%_
                                               _%rest110697%_
                                               _%hd110695%_)))))
                                    (let ((_%hd110695%_ _%hd110656110708%_)
                                          (_%rest110697%_ _%tl110657110710%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%K110652110687%_
                                         _%rest110697%_
                                         _%hd110695%_)))))
                              (let ()
                                (declare (not safe))
                                (_%else110650110669%_))))))))
                 (_%compile-post110542%_
                  (lambda (_%post110544%_ _%body110545%_)
                    (let _%lp110547%_ ((_%rest110549%_ _%post110544%_)
                                       (_%check110550%_ '())
                                       (_%bind110551%_ '()))
                      (let* ((_%rest110552110564%_ _%rest110549%_)
                             (_%else110554110572%_
                              (lambda ()
                                (let ((__tmp111880
                                       (cons 'begin
                                             (let ((__tmp111881
                                                    (cons (let ((__tmp111882
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons 'let
                               (cons _%bind110551%_
                                     (cons _%body110545%_ '())))))
                    (declare (not safe))
                    (__SRC__% __tmp111882 _%stx110538%_))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__foldr1
                                                cons
                                                __tmp111881
                                                _%check110550%_)))))
                                  (declare (not safe))
                                  (__SRC__% __tmp111880 _%stx110538%_))))
                             (_%K110556110611%_
                              (lambda (_%rest110575%_
                                       _%init110576%_
                                       _%len110577%_
                                       _%tmp110578%_)
                                (let ((__tmp111885
                                       (cons (let ((__tmp111886
                                                    (cons '__check-values
                                                          (cons _%tmp110578%_
                                                                (cons _%len110577%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp111886
                                                _%stx110538%_))
                                             _%check110550%_))
                                      (__tmp111883
                                       (let ((__tmp111884
                                              (lambda (_%hd110580%_
                                                       _%r110581%_)
                                                (let* ((_%hd110582110589%_
                                                        _%hd110580%_)
                                                       (_%E110584110593%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd110582110589%_
                           '([id . k])))
                  '#!void))
               (_%K110585110599%_
                (lambda (_%k110596%_ _%id110597%_)
                  (cons (cons _%id110597%_
                              (cons (cons '##vector-ref
                                          (cons _%tmp110578%_
                                                (cons _%k110596%_ '())))
                                    '()))
                        _%r110581%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd110582110589%_))
                                                      (let ((_%hd110586110602%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd110582110589%_)))
                    (_%tl110587110604%_
                     (let () (declare (not safe)) (##cdr _%hd110582110589%_))))
                (let* ((_%id110607%_ _%hd110586110602%_)
                       (_%k110609%_ _%tl110587110604%_))
                  (declare (not safe))
                  (_%K110585110599%_ _%k110609%_ _%id110607%_)))
              (let () (declare (not safe)) (_%E110584110593%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp111884
                                          _%bind110551%_
                                          _%init110576%_))))
                                  (declare (not safe))
                                  (_%lp110547%_
                                   _%rest110575%_
                                   __tmp111885
                                   __tmp111883)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest110552110564%_))
                            (let ((_%hd110557110614%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest110552110564%_)))
                                  (_%tl110558110616%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest110552110564%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd110557110614%_))
                                  (let ((_%hd110559110619%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd110557110614%_)))
                                        (_%tl110560110621%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd110557110614%_))))
                                    (let ((_%tmp110624%_ _%hd110559110619%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl110560110621%_))
                                          (let ((_%hd110561110626%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl110560110621%_)))
                                                (_%tl110562110628%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl110560110621%_))))
                                            (let* ((_%len110631%_
                                                    _%hd110561110626%_)
                                                   (_%init110633%_
                                                    _%tl110562110628%_)
                                                   (_%rest110635%_
                                                    _%tl110558110616%_))
                                              (declare (not safe))
                                              (_%K110556110611%_
                                               _%rest110635%_
                                               _%init110633%_
                                               _%len110631%_
                                               _%tmp110624%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%else110554110572%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%else110554110572%_))))
                            (let ()
                              (declare (not safe))
                              (_%else110554110572%_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _%stx110538%_
             _%compile-simple110540%_
             _%compile-values110541%_)))))
    (define __compile-letrec-values%
      (lambda (_%stx110335%_)
        (letrec ((_%compile-simple110337%_
                  (lambda (_%hd-ids110534%_ _%exprs110535%_ _%body110536%_)
                    (let ((__tmp111887
                           (cons 'letrec
                                 (cons (let ((__tmp111888
                                              (map __compile-head-id
                                                   _%hd-ids110534%_)))
                                         (declare (not safe))
                                         (##map list
                                                __tmp111888
                                                _%exprs110535%_))
                                       (cons _%body110536%_ '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111887 _%stx110335%_))))
                 (_%compile-values110338%_
                  (lambda (_%hd-ids110445%_ _%exprs110446%_ _%body110447%_)
                    (let _%lp110449%_ ((_%rest110451%_ _%hd-ids110445%_)
                                       (_%exprs110452%_ _%exprs110446%_)
                                       (_%pre110453%_ '())
                                       (_%bind110454%_ '())
                                       (_%post110455%_ '()))
                      (let* ((_%rest110456110470%_ _%rest110451%_)
                             (_%else110459110478%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_%compile-inner110339%_
                                   _%pre110453%_
                                   _%bind110454%_
                                   _%post110455%_
                                   _%body110447%_)))))
                        (let ((_%K110464110517%_
                               (lambda (_%rest110514%_ _%id110515%_)
                                 (let ((__tmp111890 (cdr _%exprs110452%_))
                                       (__tmp111889
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (__compile-head-id
                                                       _%id110515%_))
                                                    (cons (car _%exprs110452%_)
                                                          '()))
                                              _%bind110454%_)))
                                   (declare (not safe))
                                   (_%lp110449%_
                                    _%rest110514%_
                                    __tmp111890
                                    _%pre110453%_
                                    __tmp111889
                                    _%post110455%_))))
                              (_%K110461110499%_
                               (lambda (_%rest110482%_ _%hd110483%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd110483%_))
                                     (let ((__tmp111892 (cdr _%exprs110452%_))
                                           (__tmp111891
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (__compile-head-id
                                                           _%hd110483%_))
                                                        (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (car _%exprs110452%_) '()))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%bind110454%_)))
                                       (declare (not safe))
                                       (_%lp110449%_
                                        _%rest110482%_
                                        __tmp111892
                                        _%pre110453%_
                                        __tmp111891
                                        _%post110455%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _%hd110483%_))
                                         (let ()
                                           (let* ((_%len110487%_
                                                   (length _%hd110483%_))
                                                  (_%tmp110489%_
                                                   (let ((__tmp111893
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym))))
                                                     (declare (not safe))
                                                     (__SRC__0 __tmp111893))))
                                             (let ((__tmp111902
                                                    (cdr _%exprs110452%_))
                                                   (__tmp111900
                                                    (let ((__tmp111901
                                                           (lambda (_%id110492%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%r110493%_)
                     (if (let () (declare (not safe)) (__AST-e _%id110492%_))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (__SRC__0 _%id110492%_))
                                     (cons (cons 'quote (cons '#!void '()))
                                           '()))
                               _%r110493%_)
                         _%r110493%_))))
              (declare (not safe))
              (__foldl1 __tmp111901 _%pre110453%_ _%hd110483%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp111899
                                                    (cons (cons _%tmp110489%_
                                                                (cons (car _%exprs110452%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%bind110454%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp111894
                                                    (cons (let ((__tmp111895
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp111896
                                (let ((__tmp111898
                                       (lambda (_%id110495%_ _%k110496%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id110495%_))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _%id110495%_))
                                                   _%k110496%_)
                                             '#f)))
                                      (__tmp111897
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len110487%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp111898
                                   _%hd110483%_
                                   __tmp111897))))
                           (declare (not safe))
                           (cons _%len110487%_ __tmp111896))))
                    (declare (not safe))
                    (cons _%tmp110489%_ __tmp111895))
                  _%post110455%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%lp110449%_
                                                _%rest110482%_
                                                __tmp111902
                                                __tmp111900
                                                __tmp111899
                                                __tmp111894))))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _%stx110335%_
                                            _%hd110483%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest110456110470%_))
                              (let ((_%tl110466110522%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest110456110470%_)))
                                    (_%hd110465110520%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest110456110470%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd110465110520%_))
                                    (let ((_%tl110468110527%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd110465110520%_)))
                                          (_%hd110467110525%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd110465110520%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl110468110527%_))
                                          (let ((_%id110530%_
                                                 _%hd110467110525%_)
                                                (_%rest110532%_
                                                 _%tl110466110522%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K110464110517%_
                                               _%rest110532%_
                                               _%id110530%_)))
                                          (let ((_%hd110507%_
                                                 _%hd110465110520%_)
                                                (_%rest110509%_
                                                 _%tl110466110522%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K110461110499%_
                                               _%rest110509%_
                                               _%hd110507%_)))))
                                    (let ((_%hd110507%_ _%hd110465110520%_)
                                          (_%rest110509%_ _%tl110466110522%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%K110461110499%_
                                         _%rest110509%_
                                         _%hd110507%_)))))
                              (let ()
                                (declare (not safe))
                                (_%else110459110478%_))))))))
                 (_%compile-inner110339%_
                  (lambda (_%pre110440%_
                           _%bind110441%_
                           _%post110442%_
                           _%body110443%_)
                    (if (let () (declare (not safe)) (null? _%pre110440%_))
                        (let ()
                          (declare (not safe))
                          (_%compile-bind110340%_
                           _%bind110441%_
                           _%post110442%_
                           _%body110443%_))
                        (let ((__tmp111903
                               (cons 'let
                                     (cons (reverse _%pre110440%_)
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_%compile-bind110340%_
                                                    _%bind110441%_
                                                    _%post110442%_
                                                    _%body110443%_))
                                                 '())))))
                          (declare (not safe))
                          (__SRC__% __tmp111903 _%stx110335%_)))))
                 (_%compile-bind110340%_
                  (lambda (_%bind110436%_ _%post110437%_ _%body110438%_)
                    (let ((__tmp111904
                           (cons 'letrec
                                 (cons (reverse _%bind110436%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (_%compile-post110341%_
                                                _%post110437%_
                                                _%body110438%_))
                                             '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111904 _%stx110335%_))))
                 (_%compile-post110341%_
                  (lambda (_%post110343%_ _%body110344%_)
                    (let _%lp110346%_ ((_%rest110348%_ _%post110343%_)
                                       (_%check110349%_ '())
                                       (_%bind110350%_ '()))
                      (let* ((_%rest110351110363%_ _%rest110348%_)
                             (_%else110353110371%_
                              (lambda ()
                                (let ((__tmp111905
                                       (cons 'begin
                                             (let ((__tmp111906
                                                    (let ((__tmp111907
                                                           (cons _%body110344%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
              (declare (not safe))
              (__foldr1 cons __tmp111907 _%bind110350%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__foldr1
                                                cons
                                                __tmp111906
                                                _%check110349%_)))))
                                  (declare (not safe))
                                  (__SRC__% __tmp111905 _%stx110335%_))))
                             (_%K110355110410%_
                              (lambda (_%rest110374%_
                                       _%init110375%_
                                       _%len110376%_
                                       _%tmp110377%_)
                                (let ((__tmp111910
                                       (cons (let ((__tmp111911
                                                    (cons '__check-values
                                                          (cons _%tmp110377%_
                                                                (cons _%len110376%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp111911
                                                _%stx110335%_))
                                             _%check110349%_))
                                      (__tmp111908
                                       (let ((__tmp111909
                                              (lambda (_%hd110379%_
                                                       _%r110380%_)
                                                (let* ((_%hd110381110388%_
                                                        _%hd110379%_)
                                                       (_%E110383110392%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd110381110388%_
                           '([id . k])))
                  '#!void))
               (_%K110384110398%_
                (lambda (_%k110395%_ _%id110396%_)
                  (cons (cons 'set!
                              (cons _%id110396%_
                                    (cons (cons '##vector-ref
                                                (cons _%tmp110377%_
                                                      (cons _%k110395%_ '())))
                                          '())))
                        _%r110380%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd110381110388%_))
                                                      (let ((_%hd110385110401%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd110381110388%_)))
                    (_%tl110386110403%_
                     (let () (declare (not safe)) (##cdr _%hd110381110388%_))))
                (let* ((_%id110406%_ _%hd110385110401%_)
                       (_%k110408%_ _%tl110386110403%_))
                  (declare (not safe))
                  (_%K110384110398%_ _%k110408%_ _%id110406%_)))
              (let () (declare (not safe)) (_%E110383110392%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp111909
                                          _%bind110350%_
                                          _%init110375%_))))
                                  (declare (not safe))
                                  (_%lp110346%_
                                   _%rest110374%_
                                   __tmp111910
                                   __tmp111908)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest110351110363%_))
                            (let ((_%hd110356110413%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest110351110363%_)))
                                  (_%tl110357110415%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest110351110363%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd110356110413%_))
                                  (let ((_%hd110358110418%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd110356110413%_)))
                                        (_%tl110359110420%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd110356110413%_))))
                                    (let ((_%tmp110423%_ _%hd110358110418%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl110359110420%_))
                                          (let ((_%hd110360110425%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl110359110420%_)))
                                                (_%tl110361110427%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl110359110420%_))))
                                            (let* ((_%len110430%_
                                                    _%hd110360110425%_)
                                                   (_%init110432%_
                                                    _%tl110361110427%_)
                                                   (_%rest110434%_
                                                    _%tl110357110415%_))
                                              (declare (not safe))
                                              (_%K110355110410%_
                                               _%rest110434%_
                                               _%init110432%_
                                               _%len110430%_
                                               _%tmp110423%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%else110353110371%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%else110353110371%_))))
                            (let ()
                              (declare (not safe))
                              (_%else110353110371%_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _%stx110335%_
             _%compile-simple110337%_
             _%compile-values110338%_)))))
    (define __compile-letrec*-values%
      (lambda (_%stx110086%_)
        (letrec ((_%compile-simple110088%_
                  (lambda (_%hd-ids110331%_ _%exprs110332%_ _%body110333%_)
                    (let ((__tmp111912
                           (cons 'letrec*
                                 (cons (let ((__tmp111913
                                              (map __compile-head-id
                                                   _%hd-ids110331%_)))
                                         (declare (not safe))
                                         (##map list
                                                __tmp111913
                                                _%exprs110332%_))
                                       (cons _%body110333%_ '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111912 _%stx110086%_))))
                 (_%compile-values110089%_
                  (lambda (_%hd-ids110238%_ _%exprs110239%_ _%body110240%_)
                    (let _%lp110242%_ ((_%rest110244%_ _%hd-ids110238%_)
                                       (_%exprs110245%_ _%exprs110239%_)
                                       (_%bind110246%_ '())
                                       (_%post110247%_ '()))
                      (let* ((_%rest110248110262%_ _%rest110244%_)
                             (_%else110251110270%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_%compile-bind110090%_
                                   _%bind110246%_
                                   _%post110247%_
                                   _%body110240%_)))))
                        (let ((_%K110256110314%_
                               (lambda (_%rest110309%_ _%hd110310%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd110310%_))
                                     (let ((_%id110312%_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _%hd110310%_))))
                                       (let ((__tmp111916
                                              (cdr _%exprs110245%_))
                                             (__tmp111915
                                              (cons (cons _%id110312%_
                                                          (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons '#!void '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%bind110246%_))
                                             (__tmp111914
                                              (cons (cons _%id110312%_
                                                          (cons (car _%exprs110245%_)
                                                                '()))
                                                    _%post110247%_)))
                                         (declare (not safe))
                                         (_%lp110242%_
                                          _%rest110309%_
                                          __tmp111916
                                          __tmp111915
                                          __tmp111914)))
                                     (let ((__tmp111918 (cdr _%exprs110245%_))
                                           (__tmp111917
                                            (cons (cons '#f
                                                        (cons (car _%exprs110245%_)
                                                              '()))
                                                  _%post110247%_)))
                                       (declare (not safe))
                                       (_%lp110242%_
                                        _%rest110309%_
                                        __tmp111918
                                        _%bind110246%_
                                        __tmp111917)))))
                              (_%K110253110294%_
                               (lambda (_%rest110274%_ _%hd110275%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd110275%_))
                                     (let ((_%id110278%_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _%hd110275%_))))
                                       (let ((__tmp111921
                                              (cdr _%exprs110245%_))
                                             (__tmp111920
                                              (cons (cons _%id110278%_
                                                          (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons '#!void '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%bind110246%_))
                                             (__tmp111919
                                              (cons (cons _%id110278%_
                                                          (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (car _%exprs110245%_) '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%post110247%_)))
                                         (declare (not safe))
                                         (_%lp110242%_
                                          _%rest110274%_
                                          __tmp111921
                                          __tmp111920
                                          __tmp111919)))
                                     (if (let ((__tmp111922
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _%hd110275%_))))
                                           (declare (not safe))
                                           (not __tmp111922))
                                         (let ((__tmp111924
                                                (cdr _%exprs110245%_))
                                               (__tmp111923
                                                (cons (cons '#f
                                                            (cons (car _%exprs110245%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%post110247%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_%lp110242%_
                                            _%rest110274%_
                                            __tmp111924
                                            _%bind110246%_
                                            __tmp111923))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _%hd110275%_))
                                             (let ()
                                               (let* ((_%len110282%_
                                                       (length _%hd110275%_))
                                                      (_%tmp110284%_
                                                       (let ((__tmp111925
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym))))
                 (declare (not safe))
                 (__SRC__0 __tmp111925))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp111935
                                                        (cdr _%exprs110245%_))
                                                       (__tmp111933
                                                        (let ((__tmp111934
                                                               (lambda (_%id110287%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%r110288%_)
                         (if (let ()
                               (declare (not safe))
                               (__AST-e _%id110287%_))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (__SRC__0 _%id110287%_))
                                         (cons (cons 'quote (cons '#!void '()))
                                               '()))
                                   _%r110288%_)
                             _%r110288%_))))
                  (declare (not safe))
                  (__foldl1 __tmp111934 _%bind110246%_ _%hd110275%_)))
               (__tmp111926
                (cons (let ((__tmp111927
                             (let ((__tmp111932 (car _%exprs110245%_))
                                   (__tmp111928
                                    (let ((__tmp111929
                                           (let ((__tmp111931
                                                  (lambda (_%id110290%_
                                                           _%k110291%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%id110290%_))
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _%id110290%_))
                      _%k110291%_)
                '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (__tmp111930
                                                  (let ()
                                                    (declare (not safe))
                                                    (##iota _%len110282%_))))
                                             (declare (not safe))
                                             (__filter-map2
                                              __tmp111931
                                              _%hd110275%_
                                              __tmp111930))))
                                      (declare (not safe))
                                      (cons _%len110282%_ __tmp111929))))
                               (declare (not safe))
                               (cons __tmp111932 __tmp111928))))
                        (declare (not safe))
                        (cons _%tmp110284%_ __tmp111927))
                      _%post110247%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_%lp110242%_
                                                    _%rest110274%_
                                                    __tmp111935
                                                    __tmp111933
                                                    __tmp111926))))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _%stx110086%_
                                                _%hd110275%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest110248110262%_))
                              (let ((_%tl110258110319%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest110248110262%_)))
                                    (_%hd110257110317%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest110248110262%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd110257110317%_))
                                    (let ((_%tl110260110324%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd110257110317%_)))
                                          (_%hd110259110322%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd110257110317%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl110260110324%_))
                                          (let ((_%hd110327%_
                                                 _%hd110259110322%_)
                                                (_%rest110329%_
                                                 _%tl110258110319%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K110256110314%_
                                               _%rest110329%_
                                               _%hd110327%_)))
                                          (let ((_%hd110302%_
                                                 _%hd110257110317%_)
                                                (_%rest110304%_
                                                 _%tl110258110319%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K110253110294%_
                                               _%rest110304%_
                                               _%hd110302%_)))))
                                    (let ((_%hd110302%_ _%hd110257110317%_)
                                          (_%rest110304%_ _%tl110258110319%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%K110253110294%_
                                         _%rest110304%_
                                         _%hd110302%_)))))
                              (let ()
                                (declare (not safe))
                                (_%else110251110270%_))))))))
                 (_%compile-bind110090%_
                  (lambda (_%bind110234%_ _%post110235%_ _%body110236%_)
                    (let ((__tmp111936
                           (cons 'let
                                 (cons (reverse _%bind110234%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (_%compile-post110091%_
                                                _%post110235%_
                                                _%body110236%_))
                                             '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111936 _%stx110086%_))))
                 (_%compile-post110091%_
                  (lambda (_%post110093%_ _%body110094%_)
                    (let ((__tmp111937
                           (cons 'begin
                                 (let ((__tmp111938
                                        (let ((__tmp111940
                                               (lambda (_%hd110096%_
                                                        _%r110097%_)
                                                 (let* ((_%hd110098110121%_
                                                         _%hd110096%_)
                                                        (_%E110102110125%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd110098110121%_
                            '([#f expr])
                            '([id expr])
                            '([tmp expr len . init])))
                   '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%K110115110219%_
                                                          (lambda (_%expr110217%_)
                                                            (cons _%expr110217%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r110097%_)))
                 (_%K110110110197%_
                  (lambda (_%expr110194%_ _%id110195%_)
                    (cons (let ((__tmp111941
                                 (cons 'set!
                                       (cons _%id110195%_
                                             (cons _%expr110194%_ '())))))
                            (declare (not safe))
                            (__SRC__% __tmp111941 _%stx110086%_))
                          _%r110097%_)))
                 (_%K110103110164%_
                  (lambda (_%init110129%_
                           _%len110130%_
                           _%expr110131%_
                           _%tmp110132%_)
                    (cons (let ((__tmp111942
                                 (cons 'let
                                       (cons (cons (cons _%tmp110132%_
                                                         (cons _%expr110131%_
                                                               '()))
                                                   '())
                                             (cons (let ((__tmp111943
                                                          (cons '__check-values
                                                                (cons _%tmp110132%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%len110130%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__SRC__%
                                                      __tmp111943
                                                      _%stx110086%_))
                                                   (let ((__tmp111944
                                                          (map (lambda (_%hd110134%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_%hd110135110142%_ _%hd110134%_)
                                (_%E110137110146%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"No clause matching"
                                            _%hd110135110142%_
                                            '([id . k])))
                                   '#!void))
                                (_%K110138110152%_
                                 (lambda (_%k110149%_ _%id110150%_)
                                   (let ((__tmp111945
                                          (cons 'set!
                                                (cons _%id110150%_
                                                      (cons (cons '##vector-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%tmp110132%_ (cons _%k110149%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (declare (not safe))
                                     (__SRC__% __tmp111945 _%stx110086%_)))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%hd110135110142%_))
                               (let ((_%hd110139110155%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%hd110135110142%_)))
                                     (_%tl110140110157%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%hd110135110142%_))))
                                 (let* ((_%id110160%_ _%hd110139110155%_)
                                        (_%k110162%_ _%tl110140110157%_))
                                   (declare (not safe))
                                   (_%K110138110152%_
                                    _%k110162%_
                                    _%id110160%_)))
                               (let ()
                                 (declare (not safe))
                                 (_%E110137110146%_)))))
                       _%init110129%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      '()
                                                      __tmp111944)))))))
                            (declare (not safe))
                            (__SRC__% __tmp111942 _%stx110086%_))
                          _%r110097%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__match111713111714%_
                                                             (lambda (_%hd110104110167%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%tl110105110169%_
                              _%hd110106110174%_
                              _%tl110107110176%_)
                       (let ((_%tmp110172%_ _%hd110104110167%_)
                             (_%expr110179%_ _%hd110106110174%_))
                         (let () (declare (not safe)) (_%E110102110125%_)))))
                    (_%__match111707111708%_
                     (lambda (_%hd110104110167%_ _%tl110105110169%_)
                       (let ((_%tmp110172%_ _%hd110104110167%_))
                         (declare (not safe))
                         (_%E110102110125%_)))))
               (if (let () (declare (not safe)) (##pair? _%hd110098110121%_))
                   (let ((_%tl110117110224%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd110098110121%_)))
                         (_%hd110116110222%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd110098110121%_))))
                     (if (let ()
                           (declare (not safe))
                           (##eq? _%hd110116110222%_ '#f))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%tl110117110224%_))
                             (let ((_%tl110119110229%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl110117110224%_)))
                                   (_%hd110118110227%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%tl110117110224%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%tl110119110229%_))
                                   (let ((_%expr110232%_ _%hd110118110227%_))
                                     (declare (not safe))
                                     (_%K110115110219%_ _%expr110232%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%tl110119110229%_))
                                       (let ((_%tl110109110183%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl110119110229%_)))
                                             (_%hd110108110181%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%tl110119110229%_))))
                                         (let ((_%tmp110172%_
                                                _%hd110116110222%_)
                                               (_%expr110179%_
                                                _%hd110118110227%_)
                                               (_%len110186%_
                                                _%hd110108110181%_)
                                               (_%init110188%_
                                                _%tl110109110183%_))
                                           (let ()
                                             (declare (not safe))
                                             (_%K110103110164%_
                                              _%init110188%_
                                              _%len110186%_
                                              _%expr110179%_
                                              _%tmp110172%_))))
                                       (_%__match111713111714%_
                                        _%hd110116110222%_
                                        _%tl110117110224%_
                                        _%hd110118110227%_
                                        _%tl110119110229%_))))
                             (_%__match111707111708%_
                              _%hd110116110222%_
                              _%tl110117110224%_))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%tl110117110224%_))
                             (let ((_%tl110114110209%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl110117110224%_)))
                                   (_%hd110113110207%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%tl110117110224%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%tl110114110209%_))
                                   (let ((_%id110205%_ _%hd110116110222%_)
                                         (_%expr110212%_ _%hd110113110207%_))
                                     (let ()
                                       (declare (not safe))
                                       (_%K110110110197%_
                                        _%expr110212%_
                                        _%id110205%_)))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%tl110114110209%_))
                                       (let ((_%tl110109110183%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl110114110209%_)))
                                             (_%hd110108110181%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%tl110114110209%_))))
                                         (let ((_%tmp110172%_
                                                _%hd110116110222%_)
                                               (_%expr110179%_
                                                _%hd110113110207%_)
                                               (_%len110186%_
                                                _%hd110108110181%_)
                                               (_%init110188%_
                                                _%tl110109110183%_))
                                           (let ()
                                             (declare (not safe))
                                             (_%K110103110164%_
                                              _%init110188%_
                                              _%len110186%_
                                              _%expr110179%_
                                              _%tmp110172%_))))
                                       (_%__match111713111714%_
                                        _%hd110116110222%_
                                        _%tl110117110224%_
                                        _%hd110113110207%_
                                        _%tl110114110209%_))))
                             (_%__match111707111708%_
                              _%hd110116110222%_
                              _%tl110117110224%_))))
                   (let () (declare (not safe)) (_%E110102110125%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (__tmp111939
                                               (list _%body110094%_)))
                                          (declare (not safe))
                                          (__foldl1
                                           __tmp111940
                                           __tmp111939
                                           _%post110093%_))))
                                   (declare (not safe))
                                   (__foldr1 cons '() __tmp111938)))))
                      (declare (not safe))
                      (__SRC__% __tmp111937 _%stx110086%_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _%stx110086%_
             _%compile-simple110088%_
             _%compile-values110089%_)))))
    (define __compile-call%
      (lambda (_%stx110046%_)
        (let* ((_%$e110048%_ _%stx110046%_)
               (_%$E110050110059%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110048%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110048%_))
              (let* ((_%$tgt110051110062%_
                      (let () (declare (not safe)) (__AST-e _%$e110048%_)))
                     (_%$hd110052110065%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110051110062%_)))
                     (_%$tl110053110068%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110051110062%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl110053110068%_))
                    (let* ((_%$tgt110054110072%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl110053110068%_)))
                           (_%$hd110055110075%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt110054110072%_)))
                           (_%$tl110056110078%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt110054110072%_))))
                      (let* ((_%rator110082%_ _%$hd110055110075%_)
                             (_%rands110084%_ _%$tl110056110078%_)
                             (__tmp111946
                              (cons (let ()
                                      (declare (not safe))
                                      (__compile _%rator110082%_))
                                    (map __compile _%rands110084%_))))
                        (declare (not safe))
                        (__SRC__% __tmp111946 _%stx110046%_)))
                    (let () (declare (not safe)) (_%$E110050110059%_))))
              (let () (declare (not safe)) (_%$E110050110059%_))))))
    (define __compile-ref%
      (lambda (_%stx110008%_)
        (let* ((_%$e110010%_ _%stx110008%_)
               (_%$E110012110021%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110010%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110010%_))
              (let* ((_%$tgt110013110024%_
                      (let () (declare (not safe)) (__AST-e _%$e110010%_)))
                     (_%$hd110014110027%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110013110024%_)))
                     (_%$tl110015110030%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110013110024%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl110015110030%_))
                    (let* ((_%$tgt110016110034%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl110015110030%_)))
                           (_%$hd110017110037%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt110016110034%_)))
                           (_%$tl110018110040%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt110016110034%_)))
                           (_%id110044%_ _%$hd110017110037%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl110018110040%_))
                                  '())
                          (let ()
                            (declare (not safe))
                            (__SRC__% _%id110044%_ _%stx110008%_))
                          (let () (declare (not safe)) (_%$E110012110021%_))))
                    (let () (declare (not safe)) (_%$E110012110021%_))))
              (let () (declare (not safe)) (_%$E110012110021%_))))))
    (define __compile-setq%
      (lambda (_%stx109955%_)
        (let* ((_%$e109957%_ _%stx109955%_)
               (_%$E109959109971%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109957%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109957%_))
              (let* ((_%$tgt109960109974%_
                      (let () (declare (not safe)) (__AST-e _%$e109957%_)))
                     (_%$hd109961109977%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109960109974%_)))
                     (_%$tl109962109980%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109960109974%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109962109980%_))
                    (let* ((_%$tgt109963109984%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109962109980%_)))
                           (_%$hd109964109987%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109963109984%_)))
                           (_%$tl109965109990%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109963109984%_)))
                           (_%id109994%_ _%$hd109964109987%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl109965109990%_))
                          (let* ((_%$tgt109966109996%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl109965109990%_)))
                                 (_%$hd109967109999%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt109966109996%_)))
                                 (_%$tl109968110002%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt109966109996%_)))
                                 (_%expr110006%_ _%$hd109967109999%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl109968110002%_))
                                        '())
                                (let ((__tmp111947
                                       (cons 'set!
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (__SRC__%
                                                      _%id109994%_
                                                      _%stx109955%_))
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__compile
                                                            _%expr110006%_))
                                                         '())))))
                                  (declare (not safe))
                                  (__SRC__% __tmp111947 _%stx109955%_))
                                (let ()
                                  (declare (not safe))
                                  (_%$E109959109971%_))))
                          (let () (declare (not safe)) (_%$E109959109971%_))))
                    (let () (declare (not safe)) (_%$E109959109971%_))))
              (let () (declare (not safe)) (_%$E109959109971%_))))))
    (define __compile-if%
      (lambda (_%stx109887%_)
        (let* ((_%$e109889%_ _%stx109887%_)
               (_%$E109891109906%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109889%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109889%_))
              (let* ((_%$tgt109892109909%_
                      (let () (declare (not safe)) (__AST-e _%$e109889%_)))
                     (_%$hd109893109912%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109892109909%_)))
                     (_%$tl109894109915%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109892109909%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109894109915%_))
                    (let* ((_%$tgt109895109919%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109894109915%_)))
                           (_%$hd109896109922%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109895109919%_)))
                           (_%$tl109897109925%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109895109919%_)))
                           (_%p109929%_ _%$hd109896109922%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl109897109925%_))
                          (let* ((_%$tgt109898109931%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl109897109925%_)))
                                 (_%$hd109899109934%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt109898109931%_)))
                                 (_%$tl109900109937%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt109898109931%_)))
                                 (_%t109941%_ _%$hd109899109934%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl109900109937%_))
                                (let* ((_%$tgt109901109943%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl109900109937%_)))
                                       (_%$hd109902109946%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt109901109943%_)))
                                       (_%$tl109903109949%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt109901109943%_)))
                                       (_%f109953%_ _%$hd109902109946%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl109903109949%_))
                                              '())
                                      (let ((__tmp111948
                                             (cons 'if
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__compile
                                                            _%p109929%_))
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (__compile _%t109941%_))
                       (cons (let ()
                               (declare (not safe))
                               (__compile _%f109953%_))
                             '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (declare (not safe))
                                        (__SRC__% __tmp111948 _%stx109887%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%$E109891109906%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%$E109891109906%_))))
                          (let () (declare (not safe)) (_%$E109891109906%_))))
                    (let () (declare (not safe)) (_%$E109891109906%_))))
              (let () (declare (not safe)) (_%$E109891109906%_))))))
    (define __compile-quote%
      (lambda (_%stx109849%_)
        (let* ((_%$e109851%_ _%stx109849%_)
               (_%$E109853109862%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109851%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109851%_))
              (let* ((_%$tgt109854109865%_
                      (let () (declare (not safe)) (__AST-e _%$e109851%_)))
                     (_%$hd109855109868%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109854109865%_)))
                     (_%$tl109856109871%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109854109865%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109856109871%_))
                    (let* ((_%$tgt109857109875%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109856109871%_)))
                           (_%$hd109858109878%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109857109875%_)))
                           (_%$tl109859109881%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109857109875%_)))
                           (_%e109885%_ _%$hd109858109878%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl109859109881%_))
                                  '())
                          (let ((__tmp111949
                                 (cons 'quote
                                       (cons (let ()
                                               (declare (not safe))
                                               (__AST->datum _%e109885%_))
                                             '()))))
                            (declare (not safe))
                            (__SRC__% __tmp111949 _%stx109849%_))
                          (let () (declare (not safe)) (_%$E109853109862%_))))
                    (let () (declare (not safe)) (_%$E109853109862%_))))
              (let () (declare (not safe)) (_%$E109853109862%_))))))
    (define __compile-quote-syntax%
      (lambda (_%stx109811%_)
        (let* ((_%$e109813%_ _%stx109811%_)
               (_%$E109815109824%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109813%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109813%_))
              (let* ((_%$tgt109816109827%_
                      (let () (declare (not safe)) (__AST-e _%$e109813%_)))
                     (_%$hd109817109830%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109816109827%_)))
                     (_%$tl109818109833%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109816109827%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109818109833%_))
                    (let* ((_%$tgt109819109837%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109818109833%_)))
                           (_%$hd109820109840%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109819109837%_)))
                           (_%$tl109821109843%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109819109837%_)))
                           (_%e109847%_ _%$hd109820109840%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl109821109843%_))
                                  '())
                          (let ((__tmp111950
                                 (cons 'quote (cons _%e109847%_ '()))))
                            (declare (not safe))
                            (__SRC__% __tmp111950 _%stx109811%_))
                          (let () (declare (not safe)) (_%$E109815109824%_))))
                    (let () (declare (not safe)) (_%$E109815109824%_))))
              (let () (declare (not safe)) (_%$E109815109824%_))))))
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

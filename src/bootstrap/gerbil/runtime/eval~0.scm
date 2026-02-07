(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1770505716)
  (begin
    (define __syntax::t
      (let ((__tmp165729 (list)) (__tmp165728 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp165729
         '(e id)
         __tmp165728
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args165533%_
        (apply make-instance __syntax::t _%$args165533%_)))
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
      (let ((__tmp165731 (list __syntax::t))
            (__tmp165730 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp165731
         '()
         __tmp165730
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args165530%_
        (apply make-instance __core-form::t _%$args165530%_)))
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
      (let ((__tmp165733 (list __core-form::t))
            (__tmp165732 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp165733
         '()
         __tmp165732
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args165527%_
        (apply make-instance __core-expression::t _%$args165527%_)))
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
      (let ((__tmp165735 (list __core-form::t))
            (__tmp165734 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp165735
         '()
         __tmp165734
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args165524%_
        (apply make-instance __core-special-form::t _%$args165524%_)))
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
      (lambda (_%id165498%_)
        (let* ((_%h165500%_ __core)
               (_%key165503%_
                (let () (declare (not safe)) (__AST-e _%id165498%_)))
               (_%h165510%_
                (let ((_%$obj165507%_ _%h165500%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj165507%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj165507%_)))
                           '#t)
                      _%$obj165507%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj165507%_)))))
               (_%h165512%_ _%h165510%_))
          (declare (not safe))
          (__hash-get _%h165512%_ _%key165503%_))))
    (define __core-bound-id?__%
      (lambda (_%id165481%_ _%is?165482%_)
        (let ((_%$e165484%_ (__core-resolve _%id165481%_)))
          (if _%$e165484%_ (_%is?165482%_ _%$e165484%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id165491%_)
        (let ((_%is?165493%_ true))
          (__core-bound-id?__% _%id165491%_ _%is?165493%_))))
    (define __core-bound-id?
      (lambda _g165736_
        (let ((_g165737_ (let () (declare (not safe)) (##length _g165736_))))
          (cond ((let () (declare (not safe)) (##fx= _g165737_ 1))
                 (apply __core-bound-id?__0 _g165736_))
                ((let () (declare (not safe)) (##fx= _g165737_ 2))
                 (apply __core-bound-id?__% _g165736_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g165736_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id165436%_ _%e165437%_ _%make165438%_)
        (let* ((_%h165440%_ __core)
               (_%key165443%_ _%id165436%_)
               (_%value165446%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%e165437%_
                       'gerbil/runtime/eval#__syntax::t))
                    _%e165437%_
                    (_%make165438%_ _%e165437%_ _%id165436%_)))
               (_%h165453%_
                (let ((_%$obj165450%_ _%h165440%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj165450%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj165450%_)))
                           '#t)
                      _%$obj165450%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj165450%_)))))
               (_%h165455%_ _%h165453%_))
          (declare (not safe))
          (__hash-put! _%h165455%_ _%key165443%_ _%value165446%_))))
    (define __core-bind-syntax!__0
      (lambda (_%id165471%_ _%e165472%_)
        (let ((_%make165474%_ make-__syntax))
          (__core-bind-syntax!__% _%id165471%_ _%e165472%_ _%make165474%_))))
    (define __core-bind-syntax!
      (lambda _g165738_
        (let ((_g165739_ (let () (declare (not safe)) (##length _g165738_))))
          (cond ((let () (declare (not safe)) (##fx= _g165739_ 2))
                 (apply __core-bind-syntax!__0 _g165738_))
                ((let () (declare (not safe)) (##fx= _g165739_ 3))
                 (apply __core-bind-syntax!__% _g165738_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g165738_))))))
    (define __SRC__%
      (lambda (_%e165416%_ _%src-stx165417%_)
        (if (or (pair? _%e165416%_) (symbol? _%e165416%_))
            (let ((__tmp165740
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx165417%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx165417%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e165416%_ __tmp165740))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e165416%_ 'gerbil#AST::t))
                (let ((__tmp165742
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e165416%_ '1 '#f '#f)))
                      (__tmp165741
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e165416%_)))))
                  (declare (not safe))
                  (##make-source __tmp165742 __tmp165741))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e165416%_))))))
    (define __SRC__0
      (lambda (_%e165428%_)
        (let ((_%src-stx165430%_ '#f))
          (__SRC__% _%e165428%_ _%src-stx165430%_))))
    (define __SRC
      (lambda _g165743_
        (let ((_g165744_ (let () (declare (not safe)) (##length _g165743_))))
          (cond ((let () (declare (not safe)) (##fx= _g165744_ 1))
                 (apply __SRC__0 _g165743_))
                ((let () (declare (not safe)) (##fx= _g165744_ 2))
                 (apply __SRC__% _g165743_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g165743_))))))
    (define __locat
      (lambda (_%loc165413%_)
        (if (let () (declare (not safe)) (##locat? _%loc165413%_))
            _%loc165413%_
            '#f)))
    (define __check-values
      (lambda (_%obj165408%_ _%k165409%_)
        (let ((_%count165411%_
               (if (let () (declare (not safe)) (##values? _%obj165408%_))
                   (let ()
                     (declare (not safe))
                     (##values-length _%obj165408%_))
                   '1)))
          (if (fx= _%count165411%_ _%k165409%_)
              '#!void
              (let ((__tmp165746
                     (if (fx< _%count165411%_ _%k165409%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp165745
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj165408%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj165408%_))
                         _%obj165408%_)))
                (declare (not safe))
                (error __tmp165746 __tmp165745 _%k165409%_))))))
    (define __compile
      (lambda (_%stx165377%_)
        (let* ((_%$e165379%_ _%stx165377%_)
               (_%$E165381165387%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e165379%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e165379%_))
              (let* ((_%$tgt165382165390%_
                      (let () (declare (not safe)) (__AST-e _%$e165379%_)))
                     (_%$hd165383165393%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt165382165390%_)))
                     (_%$tl165384165396%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt165382165390%_)))
                     (_%form165400%_ _%$hd165383165393%_)
                     (_%$e165402%_ (__core-resolve _%form165400%_)))
                (if _%$e165402%_
                    ((lambda (_%bind165405%_)
                       ((##structure-ref _%bind165405%_ '1 __syntax::t '#f)
                        _%stx165377%_))
                     _%$e165402%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx165377%_
                       _%form165400%_))))
              (_%$E165381165387%_)))))
    (define __compile-error__%
      (lambda (_%stx165364%_ _%detail165365%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx165364%_
           _%detail165365%_))))
    (define __compile-error__0
      (lambda (_%stx165370%_)
        (let ((_%detail165372%_ '#f))
          (__compile-error__% _%stx165370%_ _%detail165372%_))))
    (define __compile-error
      (lambda _g165747_
        (let ((_g165748_ (let () (declare (not safe)) (##length _g165747_))))
          (cond ((let () (declare (not safe)) (##fx= _g165748_ 1))
                 (apply __compile-error__0 _g165747_))
                ((let () (declare (not safe)) (##fx= _g165748_ 2))
                 (apply __compile-error__% _g165747_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g165747_))))))
    (define __compile-ignore%
      (lambda (_%stx165361%_) (__SRC__% ''#!void _%stx165361%_)))
    (define __compile-begin%
      (lambda (_%stx165336%_)
        (let* ((_%$e165338%_ _%stx165336%_)
               (_%$E165340165346%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e165338%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e165338%_))
              (let* ((_%$tgt165341165349%_
                      (let () (declare (not safe)) (__AST-e _%$e165338%_)))
                     (_%$hd165342165352%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt165341165349%_)))
                     (_%$tl165343165355%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt165341165349%_)))
                     (_%body165359%_ _%$tl165343165355%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body165359%_))
                 _%stx165336%_))
              (_%$E165340165346%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx165311%_)
        (let* ((_%$e165313%_ _%stx165311%_)
               (_%$E165315165321%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e165313%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e165313%_))
              (let* ((_%$tgt165316165324%_
                      (let () (declare (not safe)) (__AST-e _%$e165313%_)))
                     (_%$hd165317165327%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt165316165324%_)))
                     (_%$tl165318165330%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt165316165324%_)))
                     (_%body165334%_ _%$tl165318165330%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body165334%_)))
                 _%stx165311%_))
              (_%$E165315165321%_)))))
    (define __compile-import%
      (lambda (_%stx165286%_)
        (let* ((_%$e165288%_ _%stx165286%_)
               (_%$E165290165296%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e165288%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e165288%_))
              (let* ((_%$tgt165291165299%_
                      (let () (declare (not safe)) (__AST-e _%$e165288%_)))
                     (_%$hd165292165302%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt165291165299%_)))
                     (_%$tl165293165305%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt165291165299%_)))
                     (_%body165309%_ _%$tl165293165305%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body165309%_ '())) '()))
                 _%stx165286%_))
              (_%$E165290165296%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx165233%_)
        (let* ((_%$e165235%_ _%stx165233%_)
               (_%$E165237165249%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e165235%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e165235%_))
              (let* ((_%$tgt165238165252%_
                      (let () (declare (not safe)) (__AST-e _%$e165235%_)))
                     (_%$hd165239165255%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt165238165252%_)))
                     (_%$tl165240165258%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt165238165252%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl165240165258%_))
                    (let* ((_%$tgt165241165262%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl165240165258%_)))
                           (_%$hd165242165265%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt165241165262%_)))
                           (_%$tl165243165268%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt165241165262%_)))
                           (_%ann165272%_ _%$hd165242165265%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl165243165268%_))
                          (let* ((_%$tgt165244165274%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl165243165268%_)))
                                 (_%$hd165245165277%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt165244165274%_)))
                                 (_%$tl165246165280%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt165244165274%_)))
                                 (_%expr165284%_ _%$hd165245165277%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl165246165280%_))
                                        '())
                                (__compile _%expr165284%_)
                                (_%$E165237165249%_)))
                          (_%$E165237165249%_)))
                    (_%$E165237165249%_)))
              (_%$E165237165249%_)))))
    (define __compile-define-values%
      (lambda (_%stx165124%_)
        (let* ((_%$e165126%_ _%stx165124%_)
               (_%$E165128165140%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e165126%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e165126%_))
              (let* ((_%$tgt165129165143%_
                      (let () (declare (not safe)) (__AST-e _%$e165126%_)))
                     (_%$hd165130165146%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt165129165143%_)))
                     (_%$tl165131165149%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt165129165143%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl165131165149%_))
                    (let* ((_%$tgt165132165153%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl165131165149%_)))
                           (_%$hd165133165156%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt165132165153%_)))
                           (_%$tl165134165159%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt165132165153%_)))
                           (_%hd165163%_ _%$hd165133165156%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl165134165159%_))
                          (let* ((_%$tgt165135165165%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl165134165159%_)))
                                 (_%$hd165136165168%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt165135165165%_)))
                                 (_%$tl165137165171%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt165135165165%_)))
                                 (_%expr165175%_ _%$hd165136165168%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl165137165171%_))
                                        '())
                                (let* ((_%$e165177%_ _%hd165163%_)
                                       (_%$E165179165220%_
                                        (lambda ()
                                          (let ((_%$E165180165205%_
                                                 (lambda ()
                                                   (let* ((_%$E165181165192%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e165177%_))))
                  (_%ids165195%_ _%hd165163%_)
                  (_%len165197%_ (length _%ids165195%_))
                  (_%tmp165199%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp165199%_
                                       (cons (__compile _%expr165175%_) '())))
                           _%stx165124%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp165199%_
                                             (cons _%len165197%_ '())))
                                 _%stx165124%_)
                                (let ((__tmp165749
                                       (let ((__tmp165751
                                              (lambda (_%id165202%_
                                                       _%k165203%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id165202%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id165202%_)
                         (cons (cons '##values-ref
                                     (cons _%tmp165199%_
                                           (cons _%k165203%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx165124%_)
                                                    '#f)))
                                             (__tmp165750
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len165197%_))))
                                         (declare (not safe))
                                         (filter-map__1
                                          __tmp165751
                                          _%ids165195%_
                                          __tmp165750))))
                                  (declare (not safe))
                                  (foldr__0 cons '() __tmp165749)))))
              _%stx165124%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e165177%_))
                                                (let* ((_%$tgt165182165208%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e165177%_)))
                                                       (_%$hd165183165211%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt165182165208%_)))
                                                       (_%$tl165184165214%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt165182165208%_)))
                                                       (_%id165218%_
                                                        _%$hd165183165211%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl165184165214%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id165218%_)
                           (cons (__compile _%expr165175%_) '())))
               _%stx165124%_)
              (_%$E165180165205%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E165180165205%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e165177%_))
                                      (let* ((_%$tgt165185165223%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e165177%_)))
                                             (_%$hd165186165226%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt165185165223%_)))
                                             (_%$tl165187165229%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt165185165223%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd165186165226%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl165187165229%_))
                                                        '())
                                                (__compile _%expr165175%_)
                                                (_%$E165179165220%_))
                                            (_%$E165179165220%_)))
                                      (_%$E165179165220%_)))
                                (_%$E165128165140%_)))
                          (_%$E165128165140%_)))
                    (_%$E165128165140%_)))
              (_%$E165128165140%_)))))
    (define __compile-head-id
      (lambda (_%e165122%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e165122%_))
             _%e165122%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd165079%_)
        (let _%recur165081%_ ((_%rest165083%_ _%hd165079%_))
          (let* ((_%$e165085%_ _%rest165083%_)
                 (_%$E165087165105%_
                  (lambda ()
                    (let ((_%$E165088165102%_
                           (lambda ()
                             (let* ((_%$E165089165097%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e165085%_))))
                                    (_%tail165100%_ _%$e165085%_))
                               (__compile-head-id _%tail165100%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e165085%_))
                                  '())
                          '()
                          (_%$E165088165102%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e165085%_))
                (let* ((_%$tgt165090165108%_
                        (let () (declare (not safe)) (__AST-e _%$e165085%_)))
                       (_%$hd165091165111%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt165090165108%_)))
                       (_%$tl165092165114%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt165090165108%_)))
                       (_%hd165118%_ _%$hd165091165111%_)
                       (_%rest165120%_ _%$tl165092165114%_))
                  (cons (__compile-head-id _%hd165118%_)
                        (_%recur165081%_ _%rest165120%_)))
                (_%$E165087165105%_))))))
    (define __compile-lambda%
      (lambda (_%stx165026%_)
        (let* ((_%$e165028%_ _%stx165026%_)
               (_%$E165030165042%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e165028%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e165028%_))
              (let* ((_%$tgt165031165045%_
                      (let () (declare (not safe)) (__AST-e _%$e165028%_)))
                     (_%$hd165032165048%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt165031165045%_)))
                     (_%$tl165033165051%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt165031165045%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl165033165051%_))
                    (let* ((_%$tgt165034165055%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl165033165051%_)))
                           (_%$hd165035165058%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt165034165055%_)))
                           (_%$tl165036165061%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt165034165055%_)))
                           (_%hd165065%_ _%$hd165035165058%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl165036165061%_))
                          (let* ((_%$tgt165037165067%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl165036165061%_)))
                                 (_%$hd165038165070%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt165037165067%_)))
                                 (_%$tl165039165073%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt165037165067%_)))
                                 (_%body165077%_ _%$hd165038165070%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl165039165073%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd165065%_)
                                             (cons (__compile _%body165077%_)
                                                   '())))
                                 _%stx165026%_)
                                (_%$E165030165042%_)))
                          (_%$E165030165042%_)))
                    (_%$E165030165042%_)))
              (_%$E165030165042%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx164791%_)
        (letrec ((_%variadic?164793%_
                  (lambda (_%hd164991%_)
                    (let* ((_%$e164993%_ _%hd164991%_)
                           (_%$E164995165011%_
                            (lambda ()
                              (let ((_%$E164996165008%_
                                     (lambda ()
                                       (let ((_%$E164997165005%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e164993%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e164993%_))
                                            '())
                                    '#f
                                    (_%$E164996165008%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e164993%_))
                          (let* ((_%$tgt164998165014%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e164993%_)))
                                 (_%$hd164999165017%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt164998165014%_)))
                                 (_%$tl165000165020%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt164998165014%_)))
                                 (_%rest165024%_ _%$tl165000165020%_))
                            (_%variadic?164793%_ _%rest165024%_))
                          (_%$E164995165011%_)))))
                 (_%arity164794%_
                  (lambda (_%hd164929%_)
                    (let _%lp164931%_ ((_%rest164933%_ _%hd164929%_)
                                       (_%k164934%_ '0))
                      (let* ((_%$e164936%_ _%rest164933%_)
                             (_%$E164938164949%_
                              (lambda ()
                                (let ((_%$E164939164946%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e164936%_)))))
                                  _%k164934%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e164936%_))
                            (let* ((_%$tgt164940164952%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e164936%_)))
                                   (_%$hd164941164955%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt164940164952%_)))
                                   (_%$tl164942164958%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt164940164952%_)))
                                   (_%rest164962%_ _%$tl164942164958%_))
                              (_%lp164931%_
                               _%rest164962%_
                               (let ((_%x164964%_ _%k164934%_))
                                 (if (fixnum? _%x164964%_)
                                     (let ((_%x164969%_ _%x164964%_))
                                       (declare (not safe))
                                       (__fx1+ _%x164969%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/eval
                                        'contract:
                                        'fixnum?
                                        'value:
                                        _%x164964%_)
                                       '#!void)))))
                            (_%$E164938164949%_))))))
                 (_%generate164795%_
                  (lambda (_%rest164856%_ _%args164857%_ _%len164858%_)
                    (let* ((_%$e164860%_ _%rest164856%_)
                           (_%$E164862164873%_
                            (lambda ()
                              (let ((_%$E164863164870%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e164860%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args164857%_ '())))
                                 _%stx164791%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e164860%_))
                          (let* ((_%$tgt164864164876%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e164860%_)))
                                 (_%$hd164865164879%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt164864164876%_)))
                                 (_%$tl164866164882%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt164864164876%_)))
                                 (_%clause164886%_ _%$hd164865164879%_)
                                 (_%rest164888%_ _%$tl164866164882%_)
                                 (_%$e164890%_ _%clause164886%_)
                                 (_%$E164892164901%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e164890%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e164890%_))
                                (let* ((_%$tgt164893164904%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e164890%_)))
                                       (_%$hd164894164907%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt164893164904%_)))
                                       (_%$tl164895164910%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt164893164904%_)))
                                       (_%hd164914%_ _%$hd164894164907%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl164895164910%_))
                                      (let* ((_%$tgt164896164916%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl164895164910%_)))
                                             (_%$hd164897164919%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt164896164916%_)))
                                             (_%$tl164898164922%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt164896164916%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl164898164922%_))
                                                    '())
                                            (let ((_%clen164926%_
                                                   (_%arity164794%_
                                                    _%hd164914%_))
                                                  (_%cmp164927%_
                                                   (if (_%variadic?164793%_
                                                        _%hd164914%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp164927%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len164858%_ (cons _%clen164926%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause164886%_))
                                      (cons _%args164857%_ '())))
                          _%stx164791%_)
                         (cons (_%generate164795%_
                                _%rest164888%_
                                _%args164857%_
                                _%len164858%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx164791%_))
                                            (_%$E164892164901%_)))
                                      (_%$E164892164901%_)))
                                (_%$E164892164901%_)))
                          (_%$E164862164873%_))))))
          (let* ((_%$e164797%_ _%stx164791%_)
                 (_%$E164799164831%_
                  (lambda ()
                    (let ((_%$E164800164813%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e164797%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e164797%_))
                          (let* ((_%$tgt164801164816%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e164797%_)))
                                 (_%$hd164802164819%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt164801164816%_)))
                                 (_%$tl164803164822%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt164801164816%_)))
                                 (_%clauses164826%_ _%$tl164803164822%_))
                            (let ((_%args164828%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx164791%_))
                                  (_%len164829%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx164791%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args164828%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len164829%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args164828%_ '()))
                                         _%stx164791%_)
                                        '()))
                            '())
                      (cons (_%generate164795%_
                             _%clauses164826%_
                             _%args164828%_
                             _%len164829%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx164791%_)
                                                 '())))
                               _%stx164791%_)))
                          (_%$E164800164813%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e164797%_))
                (let* ((_%$tgt164804164834%_
                        (let () (declare (not safe)) (__AST-e _%$e164797%_)))
                       (_%$hd164805164837%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt164804164834%_)))
                       (_%$tl164806164840%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt164804164834%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl164806164840%_))
                      (let* ((_%$tgt164807164844%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl164806164840%_)))
                             (_%$hd164808164847%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt164807164844%_)))
                             (_%$tl164809164850%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt164807164844%_)))
                             (_%clause164854%_ _%$hd164808164847%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl164809164850%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause164854%_))
                            (_%$E164799164831%_)))
                      (_%$E164799164831%_)))
                (_%$E164799164831%_))))))
    (define __compile-let-form
      (lambda (_%stx164560%_ _%compile-simple164561%_ _%compile-values164562%_)
        (letrec ((_%simple-bind?164564%_
                  (lambda (_%hd164749%_)
                    (let* ((_%hd164750164760%_ _%hd164749%_)
                           (_%else164753164768%_ (lambda () '#f)))
                      (let ((_%K164756164781%_ (lambda (_%id164779%_) '#t))
                            (_%K164755164773%_ (lambda () '#t)))
                        (let ((_%try-match164752164776%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd164750164760%_ '#f))
                                     (_%K164755164773%_)
                                     (_%else164753164768%_)))))
                          (if (pair? _%hd164750164760%_)
                              (let ((_%tl164758164786%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd164750164760%_)))
                                    (_%hd164757164784%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd164750164760%_))))
                                (if (null? _%tl164758164786%_)
                                    (let ((_%id164789%_ _%hd164757164784%_))
                                      (_%K164756164781%_ _%id164789%_))
                                    (_%try-match164752164776%_)))
                              (_%try-match164752164776%_)))))))
                 (_%car-e164565%_
                  (lambda (_%hd164747%_)
                    (if (pair? _%hd164747%_)
                        (let () (declare (not safe)) (##car _%hd164747%_))
                        _%hd164747%_))))
          (let* ((_%$e164567%_ _%stx164560%_)
                 (_%$E164569164712%_
                  (lambda ()
                    (let ((_%$E164570164592%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e164567%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e164567%_))
                          (let* ((_%$tgt164571164595%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e164567%_)))
                                 (_%$hd164572164598%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt164571164595%_)))
                                 (_%$tl164573164601%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt164571164595%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl164573164601%_))
                                (let* ((_%$tgt164574164605%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl164573164601%_)))
                                       (_%$hd164575164608%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt164574164605%_)))
                                       (_%$tl164576164611%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt164574164605%_)))
                                       (_%hd164615%_ _%$hd164575164608%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl164576164611%_))
                                      (let* ((_%$tgt164577164617%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl164576164611%_)))
                                             (_%$hd164578164620%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt164577164617%_)))
                                             (_%$tl164579164623%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt164577164617%_)))
                                             (_%body164627%_
                                              _%$hd164578164620%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl164579164623%_))
                                                    '())
                                            (let* ((_%hd-ids164667%_
                                                    (map (lambda (_%bind164629%_)
                                                           (let* ((_%$e164631%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind164629%_)
                          (_%$E164633164642%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e164631%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e164631%_))
                         (let* ((_%$tgt164634164645%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e164631%_)))
                                (_%$hd164635164648%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt164634164645%_)))
                                (_%$tl164636164651%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt164634164645%_)))
                                (_%ids164655%_ _%$hd164635164648%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl164636164651%_))
                               (let* ((_%$tgt164637164657%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl164636164651%_)))
                                      (_%$hd164638164660%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt164637164657%_)))
                                      (_%$tl164639164663%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt164637164657%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl164639164663%_))
                                             '())
                                     _%ids164655%_
                                     (_%$E164633164642%_)))
                               (_%$E164633164642%_)))
                         (_%$E164633164642%_))))
                 _%hd164615%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs164707%_
                                                    (map (lambda (_%bind164669%_)
                                                           (let* ((_%$e164671%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind164669%_)
                          (_%$E164673164682%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e164671%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e164671%_))
                         (let* ((_%$tgt164674164685%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e164671%_)))
                                (_%$hd164675164688%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt164674164685%_)))
                                (_%$tl164676164691%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt164674164685%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl164676164691%_))
                               (let* ((_%$tgt164677164695%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl164676164691%_)))
                                      (_%$hd164678164698%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt164677164695%_)))
                                      (_%$tl164679164701%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt164677164695%_)))
                                      (_%expr164705%_ _%$hd164678164698%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl164679164701%_))
                                             '())
                                     (__compile _%expr164705%_)
                                     (_%$E164673164682%_)))
                               (_%$E164673164682%_)))
                         (_%$E164673164682%_))))
                 _%hd164615%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body164709%_
                                                    (__compile
                                                     _%body164627%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (andmap__0
                                                     _%simple-bind?164564%_
                                                     _%hd-ids164667%_))
                                                  (_%compile-simple164561%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e164565%_
                                                            _%hd-ids164667%_))
                                                   _%exprs164707%_
                                                   _%body164709%_)
                                                  (_%compile-values164562%_
                                                   _%hd-ids164667%_
                                                   _%exprs164707%_
                                                   _%body164709%_)))
                                            (_%$E164570164592%_)))
                                      (_%$E164570164592%_)))
                                (_%$E164570164592%_)))
                          (_%$E164570164592%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e164567%_))
                (let* ((_%$tgt164580164715%_
                        (let () (declare (not safe)) (__AST-e _%$e164567%_)))
                       (_%$hd164581164718%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt164580164715%_)))
                       (_%$tl164582164721%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt164580164715%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl164582164721%_))
                      (let* ((_%$tgt164583164725%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl164582164721%_)))
                             (_%$hd164584164728%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt164583164725%_)))
                             (_%$tl164585164731%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt164583164725%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd164584164728%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl164585164731%_))
                                (let* ((_%$tgt164586164735%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl164585164731%_)))
                                       (_%$hd164587164738%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt164586164735%_)))
                                       (_%$tl164588164741%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt164586164735%_)))
                                       (_%body164745%_ _%$hd164587164738%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl164588164741%_))
                                              '())
                                      (__compile _%body164745%_)
                                      (_%$E164569164712%_)))
                                (_%$E164569164712%_))
                            (_%$E164569164712%_)))
                      (_%$E164569164712%_)))
                (_%$E164569164712%_))))))
    (define __compile-let-values%
      (lambda (_%stx164372%_)
        (letrec ((_%compile-simple164374%_
                  (lambda (_%hd-ids164556%_ _%exprs164557%_ _%body164558%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp165752
                                        (map __compile-head-id
                                             _%hd-ids164556%_)))
                                   (declare (not safe))
                                   (##map list __tmp165752 _%exprs164557%_))
                                 (cons _%body164558%_ '())))
                     _%stx164372%_)))
                 (_%compile-values164375%_
                  (lambda (_%hd-ids164471%_ _%exprs164472%_ _%body164473%_)
                    (let _%lp164475%_ ((_%rest164477%_ _%hd-ids164471%_)
                                       (_%exprs164478%_ _%exprs164472%_)
                                       (_%bind164479%_ '())
                                       (_%post164480%_ '()))
                      (let* ((_%rest164481164495%_ _%rest164477%_)
                             (_%else164484164503%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind164479%_)
                                             (cons (_%compile-post164376%_
                                                    _%post164480%_
                                                    _%body164473%_)
                                                   '())))
                                 _%stx164372%_))))
                        (let ((_%K164489164539%_
                               (lambda (_%rest164536%_ _%id164537%_)
                                 (_%lp164475%_
                                  _%rest164536%_
                                  (cdr _%exprs164478%_)
                                  (cons (cons (__compile-head-id _%id164537%_)
                                              (cons (car _%exprs164478%_) '()))
                                        _%bind164479%_)
                                  _%post164480%_)))
                              (_%K164486164521%_
                               (lambda (_%rest164507%_ _%hd164508%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd164508%_))
                                     (_%lp164475%_
                                      _%rest164507%_
                                      (cdr _%exprs164478%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd164508%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs164478%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind164479%_)
                                      _%post164480%_)
                                     (if (list? _%hd164508%_)
                                         (let* ((_%len164512%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd164508%_)))
                                                (_%tmp164514%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp164475%_
                                            _%rest164507%_
                                            (cdr _%exprs164478%_)
                                            (cons (cons _%tmp164514%_
                                                        (cons (car _%exprs164478%_)
                                                              '()))
                                                  _%bind164479%_)
                                            (cons (cons _%tmp164514%_
                                                        (cons _%len164512%_
                                                              (let ((__tmp165754
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id164517%_ _%k164518%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id164517%_))
                                   (cons (__SRC__0 _%id164517%_) _%k164518%_)
                                   '#f)))
                            (__tmp165753
                             (let ()
                               (declare (not safe))
                               (##iota _%len164512%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp165754 _%hd164508%_ __tmp165753))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post164480%_)))
                                         (__compile-error__%
                                          _%stx164372%_
                                          _%hd164508%_))))))
                          (if (pair? _%rest164481164495%_)
                              (let ((_%tl164491164544%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest164481164495%_)))
                                    (_%hd164490164542%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest164481164495%_))))
                                (if (pair? _%hd164490164542%_)
                                    (let ((_%tl164493164549%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd164490164542%_)))
                                          (_%hd164492164547%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd164490164542%_))))
                                      (if (null? _%tl164493164549%_)
                                          (let ((_%id164552%_
                                                 _%hd164492164547%_)
                                                (_%rest164554%_
                                                 _%tl164491164544%_))
                                            (_%K164489164539%_
                                             _%rest164554%_
                                             _%id164552%_))
                                          (let ((_%hd164529%_
                                                 _%hd164490164542%_)
                                                (_%rest164531%_
                                                 _%tl164491164544%_))
                                            (_%K164486164521%_
                                             _%rest164531%_
                                             _%hd164529%_))))
                                    (let ((_%hd164529%_ _%hd164490164542%_)
                                          (_%rest164531%_ _%tl164491164544%_))
                                      (_%K164486164521%_
                                       _%rest164531%_
                                       _%hd164529%_))))
                              (_%else164484164503%_)))))))
                 (_%compile-post164376%_
                  (lambda (_%post164378%_ _%body164379%_)
                    (let _%lp164381%_ ((_%rest164383%_ _%post164378%_)
                                       (_%check164384%_ '())
                                       (_%bind164385%_ '()))
                      (let* ((_%rest164386164398%_ _%rest164383%_)
                             (_%else164388164406%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp165755
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind164385%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body164379%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx164372%_)
                                                    '())))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp165755
                                          _%check164384%_)))
                                 _%stx164372%_)))
                             (_%K164390164445%_
                              (lambda (_%rest164409%_
                                       _%init164410%_
                                       _%len164411%_
                                       _%tmp164412%_)
                                (_%lp164381%_
                                 _%rest164409%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp164412%_
                                                    (cons _%len164411%_ '())))
                                        _%stx164372%_)
                                       _%check164384%_)
                                 (let ((__tmp165756
                                        (lambda (_%hd164414%_ _%r164415%_)
                                          (let* ((_%hd164416164423%_
                                                  _%hd164414%_)
                                                 (_%E164418164427%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd164416164423%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K164419164433%_
                                                  (lambda (_%k164430%_
                                                           _%id164431%_)
                                                    (cons (cons _%id164431%_
                                                                (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp164412%_
                                          (cons _%k164430%_ '())))
                              '()))
                  _%r164415%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd164416164423%_)
                                                (let ((_%hd164420164436%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd164416164423%_)))
                                                      (_%tl164421164438%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd164416164423%_))))
                                                  (let* ((_%id164441%_
                                                          _%hd164420164436%_)
                                                         (_%k164443%_
                                                          _%tl164421164438%_))
                                                    (_%K164419164433%_
                                                     _%k164443%_
                                                     _%id164441%_)))
                                                (_%E164418164427%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp165756
                                    _%bind164385%_
                                    _%init164410%_))))))
                        (if (pair? _%rest164386164398%_)
                            (let ((_%hd164391164448%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest164386164398%_)))
                                  (_%tl164392164450%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest164386164398%_))))
                              (if (pair? _%hd164391164448%_)
                                  (let ((_%hd164393164453%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd164391164448%_)))
                                        (_%tl164394164455%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd164391164448%_))))
                                    (let ((_%tmp164458%_ _%hd164393164453%_))
                                      (if (pair? _%tl164394164455%_)
                                          (let ((_%hd164395164460%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl164394164455%_)))
                                                (_%tl164396164462%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl164394164455%_))))
                                            (let* ((_%len164465%_
                                                    _%hd164395164460%_)
                                                   (_%init164467%_
                                                    _%tl164396164462%_)
                                                   (_%rest164469%_
                                                    _%tl164392164450%_))
                                              (_%K164390164445%_
                                               _%rest164469%_
                                               _%init164467%_
                                               _%len164465%_
                                               _%tmp164458%_)))
                                          (_%else164388164406%_))))
                                  (_%else164388164406%_)))
                            (_%else164388164406%_)))))))
          (__compile-let-form
           _%stx164372%_
           _%compile-simple164374%_
           _%compile-values164375%_))))
    (define __compile-letrec-values%
      (lambda (_%stx164169%_)
        (letrec ((_%compile-simple164171%_
                  (lambda (_%hd-ids164368%_ _%exprs164369%_ _%body164370%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp165757
                                        (map __compile-head-id
                                             _%hd-ids164368%_)))
                                   (declare (not safe))
                                   (##map list __tmp165757 _%exprs164369%_))
                                 (cons _%body164370%_ '())))
                     _%stx164169%_)))
                 (_%compile-values164172%_
                  (lambda (_%hd-ids164279%_ _%exprs164280%_ _%body164281%_)
                    (let _%lp164283%_ ((_%rest164285%_ _%hd-ids164279%_)
                                       (_%exprs164286%_ _%exprs164280%_)
                                       (_%pre164287%_ '())
                                       (_%bind164288%_ '())
                                       (_%post164289%_ '()))
                      (let* ((_%rest164290164304%_ _%rest164285%_)
                             (_%else164293164312%_
                              (lambda ()
                                (_%compile-inner164173%_
                                 _%pre164287%_
                                 _%bind164288%_
                                 _%post164289%_
                                 _%body164281%_))))
                        (let ((_%K164298164351%_
                               (lambda (_%rest164348%_ _%id164349%_)
                                 (_%lp164283%_
                                  _%rest164348%_
                                  (cdr _%exprs164286%_)
                                  _%pre164287%_
                                  (cons (cons (__compile-head-id _%id164349%_)
                                              (cons (car _%exprs164286%_) '()))
                                        _%bind164288%_)
                                  _%post164289%_)))
                              (_%K164295164333%_
                               (lambda (_%rest164316%_ _%hd164317%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd164317%_))
                                     (_%lp164283%_
                                      _%rest164316%_
                                      (cdr _%exprs164286%_)
                                      _%pre164287%_
                                      (cons (cons (__compile-head-id
                                                   _%hd164317%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs164286%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind164288%_)
                                      _%post164289%_)
                                     (if (list? _%hd164317%_)
                                         (let* ((_%len164321%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd164317%_)))
                                                (_%tmp164323%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp164283%_
                                            _%rest164316%_
                                            (cdr _%exprs164286%_)
                                            (let ((__tmp165758
                                                   (lambda (_%id164326%_
                                                            _%r164327%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id164326%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id164326%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r164327%_)
                 _%r164327%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (foldl__0
                                               __tmp165758
                                               _%pre164287%_
                                               _%hd164317%_))
                                            (cons (cons _%tmp164323%_
                                                        (cons (car _%exprs164286%_)
                                                              '()))
                                                  _%bind164288%_)
                                            (cons (cons _%tmp164323%_
                                                        (cons _%len164321%_
                                                              (let ((__tmp165760
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id164329%_ _%k164330%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id164329%_))
                                   (cons (__SRC__0 _%id164329%_) _%k164330%_)
                                   '#f)))
                            (__tmp165759
                             (let ()
                               (declare (not safe))
                               (##iota _%len164321%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp165760 _%hd164317%_ __tmp165759))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post164289%_)))
                                         (__compile-error__%
                                          _%stx164169%_
                                          _%hd164317%_))))))
                          (if (pair? _%rest164290164304%_)
                              (let ((_%tl164300164356%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest164290164304%_)))
                                    (_%hd164299164354%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest164290164304%_))))
                                (if (pair? _%hd164299164354%_)
                                    (let ((_%tl164302164361%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd164299164354%_)))
                                          (_%hd164301164359%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd164299164354%_))))
                                      (if (null? _%tl164302164361%_)
                                          (let ((_%id164364%_
                                                 _%hd164301164359%_)
                                                (_%rest164366%_
                                                 _%tl164300164356%_))
                                            (_%K164298164351%_
                                             _%rest164366%_
                                             _%id164364%_))
                                          (let ((_%hd164341%_
                                                 _%hd164299164354%_)
                                                (_%rest164343%_
                                                 _%tl164300164356%_))
                                            (_%K164295164333%_
                                             _%rest164343%_
                                             _%hd164341%_))))
                                    (let ((_%hd164341%_ _%hd164299164354%_)
                                          (_%rest164343%_ _%tl164300164356%_))
                                      (_%K164295164333%_
                                       _%rest164343%_
                                       _%hd164341%_))))
                              (_%else164293164312%_)))))))
                 (_%compile-inner164173%_
                  (lambda (_%pre164274%_
                           _%bind164275%_
                           _%post164276%_
                           _%body164277%_)
                    (if (null? _%pre164274%_)
                        (_%compile-bind164174%_
                         _%bind164275%_
                         _%post164276%_
                         _%body164277%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre164274%_)
                                     (cons (_%compile-bind164174%_
                                            _%bind164275%_
                                            _%post164276%_
                                            _%body164277%_)
                                           '())))
                         _%stx164169%_))))
                 (_%compile-bind164174%_
                  (lambda (_%bind164270%_ _%post164271%_ _%body164272%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind164270%_)
                                 (cons (_%compile-post164175%_
                                        _%post164271%_
                                        _%body164272%_)
                                       '())))
                     _%stx164169%_)))
                 (_%compile-post164175%_
                  (lambda (_%post164177%_ _%body164178%_)
                    (let _%lp164180%_ ((_%rest164182%_ _%post164177%_)
                                       (_%check164183%_ '())
                                       (_%bind164184%_ '()))
                      (let* ((_%rest164185164197%_ _%rest164182%_)
                             (_%else164187164205%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp165761
                                              (let ((__tmp165762
                                                     (cons _%body164178%_
                                                           '())))
                                                (declare (not safe))
                                                (foldr__0
                                                 cons
                                                 __tmp165762
                                                 _%bind164184%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp165761
                                          _%check164183%_)))
                                 _%stx164169%_)))
                             (_%K164189164244%_
                              (lambda (_%rest164208%_
                                       _%init164209%_
                                       _%len164210%_
                                       _%tmp164211%_)
                                (_%lp164180%_
                                 _%rest164208%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp164211%_
                                                    (cons _%len164210%_ '())))
                                        _%stx164169%_)
                                       _%check164183%_)
                                 (let ((__tmp165763
                                        (lambda (_%hd164213%_ _%r164214%_)
                                          (let* ((_%hd164215164222%_
                                                  _%hd164213%_)
                                                 (_%E164217164226%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd164215164222%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K164218164232%_
                                                  (lambda (_%k164229%_
                                                           _%id164230%_)
                                                    (cons (cons 'set!
                                                                (cons _%id164230%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##values-ref
                                          (cons _%tmp164211%_
                                                (cons _%k164229%_ '())))
                                    '())))
                  _%r164214%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd164215164222%_)
                                                (let ((_%hd164219164235%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd164215164222%_)))
                                                      (_%tl164220164237%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd164215164222%_))))
                                                  (let* ((_%id164240%_
                                                          _%hd164219164235%_)
                                                         (_%k164242%_
                                                          _%tl164220164237%_))
                                                    (_%K164218164232%_
                                                     _%k164242%_
                                                     _%id164240%_)))
                                                (_%E164217164226%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp165763
                                    _%bind164184%_
                                    _%init164209%_))))))
                        (if (pair? _%rest164185164197%_)
                            (let ((_%hd164190164247%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest164185164197%_)))
                                  (_%tl164191164249%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest164185164197%_))))
                              (if (pair? _%hd164190164247%_)
                                  (let ((_%hd164192164252%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd164190164247%_)))
                                        (_%tl164193164254%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd164190164247%_))))
                                    (let ((_%tmp164257%_ _%hd164192164252%_))
                                      (if (pair? _%tl164193164254%_)
                                          (let ((_%hd164194164259%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl164193164254%_)))
                                                (_%tl164195164261%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl164193164254%_))))
                                            (let* ((_%len164264%_
                                                    _%hd164194164259%_)
                                                   (_%init164266%_
                                                    _%tl164195164261%_)
                                                   (_%rest164268%_
                                                    _%tl164191164249%_))
                                              (_%K164189164244%_
                                               _%rest164268%_
                                               _%init164266%_
                                               _%len164264%_
                                               _%tmp164257%_)))
                                          (_%else164187164205%_))))
                                  (_%else164187164205%_)))
                            (_%else164187164205%_)))))))
          (__compile-let-form
           _%stx164169%_
           _%compile-simple164171%_
           _%compile-values164172%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx163920%_)
        (letrec ((_%compile-simple163922%_
                  (lambda (_%hd-ids164165%_ _%exprs164166%_ _%body164167%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp165764
                                        (map __compile-head-id
                                             _%hd-ids164165%_)))
                                   (declare (not safe))
                                   (##map list __tmp165764 _%exprs164166%_))
                                 (cons _%body164167%_ '())))
                     _%stx163920%_)))
                 (_%compile-values163923%_
                  (lambda (_%hd-ids164072%_ _%exprs164073%_ _%body164074%_)
                    (let _%lp164076%_ ((_%rest164078%_ _%hd-ids164072%_)
                                       (_%exprs164079%_ _%exprs164073%_)
                                       (_%bind164080%_ '())
                                       (_%post164081%_ '()))
                      (let* ((_%rest164082164096%_ _%rest164078%_)
                             (_%else164085164104%_
                              (lambda ()
                                (_%compile-bind163924%_
                                 _%bind164080%_
                                 _%post164081%_
                                 _%body164074%_))))
                        (let ((_%K164090164148%_
                               (lambda (_%rest164143%_ _%hd164144%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd164144%_))
                                     (let ((_%id164146%_
                                            (__SRC__0 _%hd164144%_)))
                                       (_%lp164076%_
                                        _%rest164143%_
                                        (cdr _%exprs164079%_)
                                        (cons (cons _%id164146%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind164080%_)
                                        (cons (cons _%id164146%_
                                                    (cons (car _%exprs164079%_)
                                                          '()))
                                              _%post164081%_)))
                                     (_%lp164076%_
                                      _%rest164143%_
                                      (cdr _%exprs164079%_)
                                      _%bind164080%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs164079%_)
                                                        '()))
                                            _%post164081%_)))))
                              (_%K164087164128%_
                               (lambda (_%rest164108%_ _%hd164109%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd164109%_))
                                     (let ((_%id164112%_
                                            (__SRC__0 _%hd164109%_)))
                                       (_%lp164076%_
                                        _%rest164108%_
                                        (cdr _%exprs164079%_)
                                        (cons (cons _%id164112%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind164080%_)
                                        (cons (cons _%id164112%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs164079%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post164081%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd164109%_))
                                         (if (list? _%hd164109%_)
                                             (let* ((_%len164116%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd164109%_)))
                                                    (_%tmp164118%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp164076%_
                                                _%rest164108%_
                                                (cdr _%exprs164079%_)
                                                (let ((__tmp165765
                                                       (lambda (_%id164121%_
                                                                _%r164122%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id164121%_))
                     (cons (cons (__SRC__0 _%id164121%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r164122%_)
                     _%r164122%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldl__0
                                                   __tmp165765
                                                   _%bind164080%_
                                                   _%hd164109%_))
                                                (cons (cons _%tmp164118%_
                                                            (cons (car _%exprs164079%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len164116%_
                                (let ((__tmp165767
                                       (lambda (_%id164124%_ _%k164125%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id164124%_))
                                             (cons (__SRC__0 _%id164124%_)
                                                   _%k164125%_)
                                             '#f)))
                                      (__tmp165766
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len164116%_))))
                                  (declare (not safe))
                                  (filter-map__1
                                   __tmp165767
                                   _%hd164109%_
                                   __tmp165766)))))
              _%post164081%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx163920%_
                                              _%hd164109%_))
                                         (_%lp164076%_
                                          _%rest164108%_
                                          (cdr _%exprs164079%_)
                                          _%bind164080%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs164079%_)
                                                            '()))
                                                _%post164081%_)))))))
                          (if (pair? _%rest164082164096%_)
                              (let ((_%tl164092164153%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest164082164096%_)))
                                    (_%hd164091164151%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest164082164096%_))))
                                (if (pair? _%hd164091164151%_)
                                    (let ((_%tl164094164158%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd164091164151%_)))
                                          (_%hd164093164156%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd164091164151%_))))
                                      (if (null? _%tl164094164158%_)
                                          (let ((_%hd164161%_
                                                 _%hd164093164156%_)
                                                (_%rest164163%_
                                                 _%tl164092164153%_))
                                            (_%K164090164148%_
                                             _%rest164163%_
                                             _%hd164161%_))
                                          (let ((_%hd164136%_
                                                 _%hd164091164151%_)
                                                (_%rest164138%_
                                                 _%tl164092164153%_))
                                            (_%K164087164128%_
                                             _%rest164138%_
                                             _%hd164136%_))))
                                    (let ((_%hd164136%_ _%hd164091164151%_)
                                          (_%rest164138%_ _%tl164092164153%_))
                                      (_%K164087164128%_
                                       _%rest164138%_
                                       _%hd164136%_))))
                              (_%else164085164104%_)))))))
                 (_%compile-bind163924%_
                  (lambda (_%bind164068%_ _%post164069%_ _%body164070%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind164068%_)
                                 (cons (_%compile-post163925%_
                                        _%post164069%_
                                        _%body164070%_)
                                       '())))
                     _%stx163920%_)))
                 (_%compile-post163925%_
                  (lambda (_%post163927%_ _%body163928%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp165768
                                  (let ((__tmp165770
                                         (lambda (_%hd163930%_ _%r163931%_)
                                           (let* ((_%hd163932163955%_
                                                   _%hd163930%_)
                                                  (_%E163936163959%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd163932163955%_
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
                                             (let ((_%K163949164053%_
                                                    (lambda (_%expr164051%_)
                                                      (cons _%expr164051%_
                                                            _%r163931%_)))
                                                   (_%K163944164031%_
                                                    (lambda (_%expr164028%_
                                                             _%id164029%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id164029%_ (cons _%expr164028%_ '())))
                     _%stx163920%_)
                    _%r163931%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K163937163998%_
                                                    (lambda (_%init163963%_
                                                             _%len163964%_
                                                             _%expr163965%_
                                                             _%tmp163966%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp163966%_
                                             (cons _%expr163965%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp163966%_
                                                    (cons _%len163964%_ '())))
                                        _%stx163920%_)
                                       (let ((__tmp165771
                                              (map (lambda (_%hd163968%_)
                                                     (let* ((_%hd163969163976%_
                                                             _%hd163968%_)
                                                            (_%E163971163980%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd163969163976%_
                                '([id . k])))
                       '#!void))
                    (_%K163972163986%_
                     (lambda (_%k163983%_ _%id163984%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id163984%_
                                    (cons (cons '##values-ref
                                                (cons _%tmp163966%_
                                                      (cons _%k163983%_ '())))
                                          '())))
                        _%stx163920%_))))
               (if (pair? _%hd163969163976%_)
                   (let ((_%hd163973163989%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd163969163976%_)))
                         (_%tl163974163991%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd163969163976%_))))
                     (let* ((_%id163994%_ _%hd163973163989%_)
                            (_%k163996%_ _%tl163974163991%_))
                       (_%K163972163986%_ _%k163996%_ _%id163994%_)))
                   (_%E163971163980%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init163963%_)))
                                         (declare (not safe))
                                         (foldr__0 cons '() __tmp165771)))))
                     _%stx163920%_)
                    _%r163931%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match165626165627%_
                                                       (lambda (_%hd163938164001%_
                                                                _%tl163939164003%_
                                                                _%hd163940164008%_
                                                                _%tl163941164010%_)
                                                         (let ((_%tmp164006%_
                                                                _%hd163938164001%_)
                                                               (_%expr164013%_
                                                                _%hd163940164008%_))
                                                           (_%E163936163959%_))))
                                                      (_%__match165620165621%_
                                                       (lambda (_%hd163938164001%_
                                                                _%tl163939164003%_)
                                                         (let ((_%tmp164006%_
                                                                _%hd163938164001%_))
                                                           (_%E163936163959%_)))))
                                                 (if (pair? _%hd163932163955%_)
                                                     (let ((_%tl163951164058%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd163932163955%_)))
                                                           (_%hd163950164056%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd163932163955%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd163950164056%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%tl163951164058%_)
                       (let ((_%tl163953164063%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl163951164058%_)))
                             (_%hd163952164061%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl163951164058%_))))
                         (if (null? _%tl163953164063%_)
                             (let ((_%expr164066%_ _%hd163952164061%_))
                               (_%K163949164053%_ _%expr164066%_))
                             (if (pair? _%tl163953164063%_)
                                 (let ((_%tl163943164017%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl163953164063%_)))
                                       (_%hd163942164015%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl163953164063%_))))
                                   (let ((_%tmp164006%_ _%hd163950164056%_)
                                         (_%expr164013%_ _%hd163952164061%_)
                                         (_%len164020%_ _%hd163942164015%_)
                                         (_%init164022%_ _%tl163943164017%_))
                                     (_%K163937163998%_
                                      _%init164022%_
                                      _%len164020%_
                                      _%expr164013%_
                                      _%tmp164006%_)))
                                 (_%__match165626165627%_
                                  _%hd163950164056%_
                                  _%tl163951164058%_
                                  _%hd163952164061%_
                                  _%tl163953164063%_))))
                       (_%__match165620165621%_
                        _%hd163950164056%_
                        _%tl163951164058%_))
                   (if (pair? _%tl163951164058%_)
                       (let ((_%tl163948164043%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl163951164058%_)))
                             (_%hd163947164041%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl163951164058%_))))
                         (if (null? _%tl163948164043%_)
                             (let ((_%id164039%_ _%hd163950164056%_)
                                   (_%expr164046%_ _%hd163947164041%_))
                               (_%K163944164031%_ _%expr164046%_ _%id164039%_))
                             (if (pair? _%tl163948164043%_)
                                 (let ((_%tl163943164017%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl163948164043%_)))
                                       (_%hd163942164015%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl163948164043%_))))
                                   (let ((_%tmp164006%_ _%hd163950164056%_)
                                         (_%expr164013%_ _%hd163947164041%_)
                                         (_%len164020%_ _%hd163942164015%_)
                                         (_%init164022%_ _%tl163943164017%_))
                                     (_%K163937163998%_
                                      _%init164022%_
                                      _%len164020%_
                                      _%expr164013%_
                                      _%tmp164006%_)))
                                 (_%__match165626165627%_
                                  _%hd163950164056%_
                                  _%tl163951164058%_
                                  _%hd163947164041%_
                                  _%tl163948164043%_))))
                       (_%__match165620165621%_
                        _%hd163950164056%_
                        _%tl163951164058%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E163936163959%_)))))))
                                        (__tmp165769 (list _%body163928%_)))
                                    (declare (not safe))
                                    (foldl__0
                                     __tmp165770
                                     __tmp165769
                                     _%post163927%_))))
                             (declare (not safe))
                             (foldr__0 cons '() __tmp165768)))
                     _%stx163920%_))))
          (__compile-let-form
           _%stx163920%_
           _%compile-simple163922%_
           _%compile-values163923%_))))
    (define __compile-call%
      (lambda (_%stx163880%_)
        (let* ((_%$e163882%_ _%stx163880%_)
               (_%$E163884163893%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e163882%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e163882%_))
              (let* ((_%$tgt163885163896%_
                      (let () (declare (not safe)) (__AST-e _%$e163882%_)))
                     (_%$hd163886163899%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt163885163896%_)))
                     (_%$tl163887163902%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt163885163896%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl163887163902%_))
                    (let* ((_%$tgt163888163906%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl163887163902%_)))
                           (_%$hd163889163909%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt163888163906%_)))
                           (_%$tl163890163912%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt163888163906%_)))
                           (_%rator163916%_ _%$hd163889163909%_)
                           (_%rands163918%_ _%$tl163890163912%_))
                      (__SRC__%
                       (cons (__compile _%rator163916%_)
                             (map __compile _%rands163918%_))
                       _%stx163880%_))
                    (_%$E163884163893%_)))
              (_%$E163884163893%_)))))
    (define __compile-ref%
      (lambda (_%stx163842%_)
        (let* ((_%$e163844%_ _%stx163842%_)
               (_%$E163846163855%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e163844%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e163844%_))
              (let* ((_%$tgt163847163858%_
                      (let () (declare (not safe)) (__AST-e _%$e163844%_)))
                     (_%$hd163848163861%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt163847163858%_)))
                     (_%$tl163849163864%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt163847163858%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl163849163864%_))
                    (let* ((_%$tgt163850163868%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl163849163864%_)))
                           (_%$hd163851163871%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt163850163868%_)))
                           (_%$tl163852163874%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt163850163868%_)))
                           (_%id163878%_ _%$hd163851163871%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl163852163874%_))
                                  '())
                          (__SRC__% _%id163878%_ _%stx163842%_)
                          (_%$E163846163855%_)))
                    (_%$E163846163855%_)))
              (_%$E163846163855%_)))))
    (define __compile-setq%
      (lambda (_%stx163789%_)
        (let* ((_%$e163791%_ _%stx163789%_)
               (_%$E163793163805%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e163791%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e163791%_))
              (let* ((_%$tgt163794163808%_
                      (let () (declare (not safe)) (__AST-e _%$e163791%_)))
                     (_%$hd163795163811%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt163794163808%_)))
                     (_%$tl163796163814%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt163794163808%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl163796163814%_))
                    (let* ((_%$tgt163797163818%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl163796163814%_)))
                           (_%$hd163798163821%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt163797163818%_)))
                           (_%$tl163799163824%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt163797163818%_)))
                           (_%id163828%_ _%$hd163798163821%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl163799163824%_))
                          (let* ((_%$tgt163800163830%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl163799163824%_)))
                                 (_%$hd163801163833%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt163800163830%_)))
                                 (_%$tl163802163836%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt163800163830%_)))
                                 (_%expr163840%_ _%$hd163801163833%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl163802163836%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id163828%_
                                              _%stx163789%_)
                                             (cons (__compile _%expr163840%_)
                                                   '())))
                                 _%stx163789%_)
                                (_%$E163793163805%_)))
                          (_%$E163793163805%_)))
                    (_%$E163793163805%_)))
              (_%$E163793163805%_)))))
    (define __compile-if%
      (lambda (_%stx163721%_)
        (let* ((_%$e163723%_ _%stx163721%_)
               (_%$E163725163740%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e163723%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e163723%_))
              (let* ((_%$tgt163726163743%_
                      (let () (declare (not safe)) (__AST-e _%$e163723%_)))
                     (_%$hd163727163746%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt163726163743%_)))
                     (_%$tl163728163749%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt163726163743%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl163728163749%_))
                    (let* ((_%$tgt163729163753%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl163728163749%_)))
                           (_%$hd163730163756%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt163729163753%_)))
                           (_%$tl163731163759%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt163729163753%_)))
                           (_%p163763%_ _%$hd163730163756%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl163731163759%_))
                          (let* ((_%$tgt163732163765%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl163731163759%_)))
                                 (_%$hd163733163768%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt163732163765%_)))
                                 (_%$tl163734163771%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt163732163765%_)))
                                 (_%t163775%_ _%$hd163733163768%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl163734163771%_))
                                (let* ((_%$tgt163735163777%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl163734163771%_)))
                                       (_%$hd163736163780%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt163735163777%_)))
                                       (_%$tl163737163783%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt163735163777%_)))
                                       (_%f163787%_ _%$hd163736163780%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl163737163783%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p163763%_)
                                                   (cons (__compile
                                                          _%t163775%_)
                                                         (cons (__compile
                                                                _%f163787%_)
                                                               '()))))
                                       _%stx163721%_)
                                      (_%$E163725163740%_)))
                                (_%$E163725163740%_)))
                          (_%$E163725163740%_)))
                    (_%$E163725163740%_)))
              (_%$E163725163740%_)))))
    (define __compile-quote%
      (lambda (_%stx163683%_)
        (let* ((_%$e163685%_ _%stx163683%_)
               (_%$E163687163696%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e163685%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e163685%_))
              (let* ((_%$tgt163688163699%_
                      (let () (declare (not safe)) (__AST-e _%$e163685%_)))
                     (_%$hd163689163702%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt163688163699%_)))
                     (_%$tl163690163705%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt163688163699%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl163690163705%_))
                    (let* ((_%$tgt163691163709%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl163690163705%_)))
                           (_%$hd163692163712%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt163691163709%_)))
                           (_%$tl163693163715%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt163691163709%_)))
                           (_%e163719%_ _%$hd163692163712%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl163693163715%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e163719%_))
                                       '()))
                           _%stx163683%_)
                          (_%$E163687163696%_)))
                    (_%$E163687163696%_)))
              (_%$E163687163696%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx163645%_)
        (let* ((_%$e163647%_ _%stx163645%_)
               (_%$E163649163658%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e163647%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e163647%_))
              (let* ((_%$tgt163650163661%_
                      (let () (declare (not safe)) (__AST-e _%$e163647%_)))
                     (_%$hd163651163664%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt163650163661%_)))
                     (_%$tl163652163667%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt163650163661%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl163652163667%_))
                    (let* ((_%$tgt163653163671%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl163652163667%_)))
                           (_%$hd163654163674%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt163653163671%_)))
                           (_%$tl163655163677%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt163653163671%_)))
                           (_%e163681%_ _%$hd163654163674%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl163655163677%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e163681%_ '()))
                           _%stx163645%_)
                          (_%$E163649163658%_)))
                    (_%$E163649163658%_)))
              (_%$E163649163658%_)))))
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

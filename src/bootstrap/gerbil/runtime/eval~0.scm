(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1773009266)
  (begin
    (define __syntax::t
      (let ((__tmp169846 (list)) (__tmp169845 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp169846
         '(e id)
         __tmp169845
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args169650%_
        (apply make-instance __syntax::t _%$args169650%_)))
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
      (let ((__tmp169848 (list __syntax::t))
            (__tmp169847 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp169848
         '()
         __tmp169847
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args169647%_
        (apply make-instance __core-form::t _%$args169647%_)))
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
      (let ((__tmp169850 (list __core-form::t))
            (__tmp169849 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp169850
         '()
         __tmp169849
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args169644%_
        (apply make-instance __core-expression::t _%$args169644%_)))
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
      (let ((__tmp169852 (list __core-form::t))
            (__tmp169851 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp169852
         '()
         __tmp169851
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args169641%_
        (apply make-instance __core-special-form::t _%$args169641%_)))
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
      (lambda (_%id169615%_)
        (let* ((_%h169617%_ __core)
               (_%key169620%_
                (let () (declare (not safe)) (__AST-e _%id169615%_)))
               (_%h169627%_
                (let ((_%$obj169624%_ _%h169617%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj169624%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj169624%_)))
                           '#t)
                      _%$obj169624%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj169624%_)))))
               (_%h169629%_ _%h169627%_))
          (declare (not safe))
          (__hash-get _%h169629%_ _%key169620%_))))
    (define __core-bound-id?__%
      (lambda (_%id169598%_ _%is?169599%_)
        (let ((_%$e169601%_ (__core-resolve _%id169598%_)))
          (if _%$e169601%_ (_%is?169599%_ _%$e169601%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id169608%_)
        (let ((_%is?169610%_ true))
          (__core-bound-id?__% _%id169608%_ _%is?169610%_))))
    (define __core-bound-id?
      (lambda _g169853_
        (let ((_g169854_ (let () (declare (not safe)) (##length _g169853_))))
          (cond ((let () (declare (not safe)) (##fx= _g169854_ 1))
                 (apply __core-bound-id?__0 _g169853_))
                ((let () (declare (not safe)) (##fx= _g169854_ 2))
                 (apply __core-bound-id?__% _g169853_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g169853_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id169553%_ _%e169554%_ _%make169555%_)
        (let* ((_%h169557%_ __core)
               (_%key169560%_ _%id169553%_)
               (_%value169563%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%e169554%_
                       'gerbil/runtime/eval#__syntax::t))
                    _%e169554%_
                    (_%make169555%_ _%e169554%_ _%id169553%_)))
               (_%h169570%_
                (let ((_%$obj169567%_ _%h169557%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj169567%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj169567%_)))
                           '#t)
                      _%$obj169567%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj169567%_)))))
               (_%h169572%_ _%h169570%_))
          (declare (not safe))
          (__hash-put! _%h169572%_ _%key169560%_ _%value169563%_))))
    (define __core-bind-syntax!__0
      (lambda (_%id169588%_ _%e169589%_)
        (let ((_%make169591%_ make-__syntax))
          (__core-bind-syntax!__% _%id169588%_ _%e169589%_ _%make169591%_))))
    (define __core-bind-syntax!
      (lambda _g169855_
        (let ((_g169856_ (let () (declare (not safe)) (##length _g169855_))))
          (cond ((let () (declare (not safe)) (##fx= _g169856_ 2))
                 (apply __core-bind-syntax!__0 _g169855_))
                ((let () (declare (not safe)) (##fx= _g169856_ 3))
                 (apply __core-bind-syntax!__% _g169855_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g169855_))))))
    (define __SRC__%
      (lambda (_%e169533%_ _%src-stx169534%_)
        (if (or (pair? _%e169533%_) (symbol? _%e169533%_))
            (let ((__tmp169857
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx169534%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx169534%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e169533%_ __tmp169857))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e169533%_ 'gerbil#AST::t))
                (let ((__tmp169859
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e169533%_ '1 '#f '#f)))
                      (__tmp169858
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e169533%_)))))
                  (declare (not safe))
                  (##make-source __tmp169859 __tmp169858))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e169533%_))))))
    (define __SRC__0
      (lambda (_%e169545%_)
        (let ((_%src-stx169547%_ '#f))
          (__SRC__% _%e169545%_ _%src-stx169547%_))))
    (define __SRC
      (lambda _g169860_
        (let ((_g169861_ (let () (declare (not safe)) (##length _g169860_))))
          (cond ((let () (declare (not safe)) (##fx= _g169861_ 1))
                 (apply __SRC__0 _g169860_))
                ((let () (declare (not safe)) (##fx= _g169861_ 2))
                 (apply __SRC__% _g169860_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g169860_))))))
    (define __locat
      (lambda (_%loc169530%_)
        (if (let () (declare (not safe)) (##locat? _%loc169530%_))
            _%loc169530%_
            '#f)))
    (define __check-values
      (lambda (_%obj169525%_ _%k169526%_)
        (let ((_%count169528%_
               (if (let () (declare (not safe)) (##values? _%obj169525%_))
                   (let ()
                     (declare (not safe))
                     (##values-length _%obj169525%_))
                   '1)))
          (if (fx= _%count169528%_ _%k169526%_)
              '#!void
              (let ((__tmp169863
                     (if (fx< _%count169528%_ _%k169526%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp169862
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj169525%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj169525%_))
                         _%obj169525%_)))
                (declare (not safe))
                (error __tmp169863 __tmp169862 _%k169526%_))))))
    (define __compile
      (lambda (_%stx169494%_)
        (let* ((_%$e169496%_ _%stx169494%_)
               (_%$E169498169504%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e169496%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e169496%_))
              (let* ((_%$tgt169499169507%_
                      (let () (declare (not safe)) (__AST-e _%$e169496%_)))
                     (_%$hd169500169510%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt169499169507%_)))
                     (_%$tl169501169513%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt169499169507%_)))
                     (_%form169517%_ _%$hd169500169510%_)
                     (_%$e169519%_ (__core-resolve _%form169517%_)))
                (if _%$e169519%_
                    ((lambda (_%bind169522%_)
                       ((##structure-ref _%bind169522%_ '1 __syntax::t '#f)
                        _%stx169494%_))
                     _%$e169519%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx169494%_
                       _%form169517%_))))
              (_%$E169498169504%_)))))
    (define __compile-error__%
      (lambda (_%stx169481%_ _%detail169482%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx169481%_
           _%detail169482%_))))
    (define __compile-error__0
      (lambda (_%stx169487%_)
        (let ((_%detail169489%_ '#f))
          (__compile-error__% _%stx169487%_ _%detail169489%_))))
    (define __compile-error
      (lambda _g169864_
        (let ((_g169865_ (let () (declare (not safe)) (##length _g169864_))))
          (cond ((let () (declare (not safe)) (##fx= _g169865_ 1))
                 (apply __compile-error__0 _g169864_))
                ((let () (declare (not safe)) (##fx= _g169865_ 2))
                 (apply __compile-error__% _g169864_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g169864_))))))
    (define __compile-ignore%
      (lambda (_%stx169478%_) (__SRC__% ''#!void _%stx169478%_)))
    (define __compile-begin%
      (lambda (_%stx169453%_)
        (let* ((_%$e169455%_ _%stx169453%_)
               (_%$E169457169463%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e169455%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e169455%_))
              (let* ((_%$tgt169458169466%_
                      (let () (declare (not safe)) (__AST-e _%$e169455%_)))
                     (_%$hd169459169469%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt169458169466%_)))
                     (_%$tl169460169472%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt169458169466%_)))
                     (_%body169476%_ _%$tl169460169472%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body169476%_))
                 _%stx169453%_))
              (_%$E169457169463%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx169428%_)
        (let* ((_%$e169430%_ _%stx169428%_)
               (_%$E169432169438%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e169430%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e169430%_))
              (let* ((_%$tgt169433169441%_
                      (let () (declare (not safe)) (__AST-e _%$e169430%_)))
                     (_%$hd169434169444%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt169433169441%_)))
                     (_%$tl169435169447%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt169433169441%_)))
                     (_%body169451%_ _%$tl169435169447%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body169451%_)))
                 _%stx169428%_))
              (_%$E169432169438%_)))))
    (define __compile-import%
      (lambda (_%stx169403%_)
        (let* ((_%$e169405%_ _%stx169403%_)
               (_%$E169407169413%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e169405%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e169405%_))
              (let* ((_%$tgt169408169416%_
                      (let () (declare (not safe)) (__AST-e _%$e169405%_)))
                     (_%$hd169409169419%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt169408169416%_)))
                     (_%$tl169410169422%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt169408169416%_)))
                     (_%body169426%_ _%$tl169410169422%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body169426%_ '())) '()))
                 _%stx169403%_))
              (_%$E169407169413%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx169350%_)
        (let* ((_%$e169352%_ _%stx169350%_)
               (_%$E169354169366%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e169352%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e169352%_))
              (let* ((_%$tgt169355169369%_
                      (let () (declare (not safe)) (__AST-e _%$e169352%_)))
                     (_%$hd169356169372%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt169355169369%_)))
                     (_%$tl169357169375%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt169355169369%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl169357169375%_))
                    (let* ((_%$tgt169358169379%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl169357169375%_)))
                           (_%$hd169359169382%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt169358169379%_)))
                           (_%$tl169360169385%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt169358169379%_)))
                           (_%ann169389%_ _%$hd169359169382%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl169360169385%_))
                          (let* ((_%$tgt169361169391%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl169360169385%_)))
                                 (_%$hd169362169394%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt169361169391%_)))
                                 (_%$tl169363169397%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt169361169391%_)))
                                 (_%expr169401%_ _%$hd169362169394%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl169363169397%_))
                                        '())
                                (__compile _%expr169401%_)
                                (_%$E169354169366%_)))
                          (_%$E169354169366%_)))
                    (_%$E169354169366%_)))
              (_%$E169354169366%_)))))
    (define __compile-define-values%
      (lambda (_%stx169241%_)
        (let* ((_%$e169243%_ _%stx169241%_)
               (_%$E169245169257%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e169243%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e169243%_))
              (let* ((_%$tgt169246169260%_
                      (let () (declare (not safe)) (__AST-e _%$e169243%_)))
                     (_%$hd169247169263%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt169246169260%_)))
                     (_%$tl169248169266%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt169246169260%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl169248169266%_))
                    (let* ((_%$tgt169249169270%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl169248169266%_)))
                           (_%$hd169250169273%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt169249169270%_)))
                           (_%$tl169251169276%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt169249169270%_)))
                           (_%hd169280%_ _%$hd169250169273%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl169251169276%_))
                          (let* ((_%$tgt169252169282%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl169251169276%_)))
                                 (_%$hd169253169285%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt169252169282%_)))
                                 (_%$tl169254169288%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt169252169282%_)))
                                 (_%expr169292%_ _%$hd169253169285%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl169254169288%_))
                                        '())
                                (let* ((_%$e169294%_ _%hd169280%_)
                                       (_%$E169296169337%_
                                        (lambda ()
                                          (let ((_%$E169297169322%_
                                                 (lambda ()
                                                   (let* ((_%$E169298169309%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e169294%_))))
                  (_%ids169312%_ _%hd169280%_)
                  (_%len169314%_ (length _%ids169312%_))
                  (_%tmp169316%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp169316%_
                                       (cons (__compile _%expr169292%_) '())))
                           _%stx169241%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp169316%_
                                             (cons _%len169314%_ '())))
                                 _%stx169241%_)
                                (let ((__tmp169866
                                       (let ((__tmp169868
                                              (lambda (_%id169319%_
                                                       _%k169320%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id169319%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id169319%_)
                         (cons (cons '##values-ref
                                     (cons _%tmp169316%_
                                           (cons _%k169320%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx169241%_)
                                                    '#f)))
                                             (__tmp169867
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len169314%_))))
                                         (declare (not safe))
                                         (filter-map__1
                                          __tmp169868
                                          _%ids169312%_
                                          __tmp169867))))
                                  (declare (not safe))
                                  (foldr__0 cons '() __tmp169866)))))
              _%stx169241%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e169294%_))
                                                (let* ((_%$tgt169299169325%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e169294%_)))
                                                       (_%$hd169300169328%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt169299169325%_)))
                                                       (_%$tl169301169331%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt169299169325%_)))
                                                       (_%id169335%_
                                                        _%$hd169300169328%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl169301169331%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id169335%_)
                           (cons (__compile _%expr169292%_) '())))
               _%stx169241%_)
              (_%$E169297169322%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E169297169322%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e169294%_))
                                      (let* ((_%$tgt169302169340%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e169294%_)))
                                             (_%$hd169303169343%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt169302169340%_)))
                                             (_%$tl169304169346%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt169302169340%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd169303169343%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl169304169346%_))
                                                        '())
                                                (__compile _%expr169292%_)
                                                (_%$E169296169337%_))
                                            (_%$E169296169337%_)))
                                      (_%$E169296169337%_)))
                                (_%$E169245169257%_)))
                          (_%$E169245169257%_)))
                    (_%$E169245169257%_)))
              (_%$E169245169257%_)))))
    (define __compile-head-id
      (lambda (_%e169239%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e169239%_))
             _%e169239%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd169196%_)
        (let _%recur169198%_ ((_%rest169200%_ _%hd169196%_))
          (let* ((_%$e169202%_ _%rest169200%_)
                 (_%$E169204169222%_
                  (lambda ()
                    (let ((_%$E169205169219%_
                           (lambda ()
                             (let* ((_%$E169206169214%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e169202%_))))
                                    (_%tail169217%_ _%$e169202%_))
                               (__compile-head-id _%tail169217%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e169202%_))
                                  '())
                          '()
                          (_%$E169205169219%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e169202%_))
                (let* ((_%$tgt169207169225%_
                        (let () (declare (not safe)) (__AST-e _%$e169202%_)))
                       (_%$hd169208169228%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt169207169225%_)))
                       (_%$tl169209169231%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt169207169225%_)))
                       (_%hd169235%_ _%$hd169208169228%_)
                       (_%rest169237%_ _%$tl169209169231%_))
                  (cons (__compile-head-id _%hd169235%_)
                        (_%recur169198%_ _%rest169237%_)))
                (_%$E169204169222%_))))))
    (define __compile-lambda%
      (lambda (_%stx169143%_)
        (let* ((_%$e169145%_ _%stx169143%_)
               (_%$E169147169159%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e169145%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e169145%_))
              (let* ((_%$tgt169148169162%_
                      (let () (declare (not safe)) (__AST-e _%$e169145%_)))
                     (_%$hd169149169165%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt169148169162%_)))
                     (_%$tl169150169168%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt169148169162%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl169150169168%_))
                    (let* ((_%$tgt169151169172%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl169150169168%_)))
                           (_%$hd169152169175%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt169151169172%_)))
                           (_%$tl169153169178%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt169151169172%_)))
                           (_%hd169182%_ _%$hd169152169175%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl169153169178%_))
                          (let* ((_%$tgt169154169184%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl169153169178%_)))
                                 (_%$hd169155169187%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt169154169184%_)))
                                 (_%$tl169156169190%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt169154169184%_)))
                                 (_%body169194%_ _%$hd169155169187%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl169156169190%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd169182%_)
                                             (cons (__compile _%body169194%_)
                                                   '())))
                                 _%stx169143%_)
                                (_%$E169147169159%_)))
                          (_%$E169147169159%_)))
                    (_%$E169147169159%_)))
              (_%$E169147169159%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx168908%_)
        (letrec ((_%variadic?168910%_
                  (lambda (_%hd169108%_)
                    (let* ((_%$e169110%_ _%hd169108%_)
                           (_%$E169112169128%_
                            (lambda ()
                              (let ((_%$E169113169125%_
                                     (lambda ()
                                       (let ((_%$E169114169122%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e169110%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e169110%_))
                                            '())
                                    '#f
                                    (_%$E169113169125%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e169110%_))
                          (let* ((_%$tgt169115169131%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e169110%_)))
                                 (_%$hd169116169134%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt169115169131%_)))
                                 (_%$tl169117169137%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt169115169131%_)))
                                 (_%rest169141%_ _%$tl169117169137%_))
                            (_%variadic?168910%_ _%rest169141%_))
                          (_%$E169112169128%_)))))
                 (_%arity168911%_
                  (lambda (_%hd169046%_)
                    (let _%lp169048%_ ((_%rest169050%_ _%hd169046%_)
                                       (_%k169051%_ '0))
                      (let* ((_%$e169053%_ _%rest169050%_)
                             (_%$E169055169066%_
                              (lambda ()
                                (let ((_%$E169056169063%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e169053%_)))))
                                  _%k169051%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e169053%_))
                            (let* ((_%$tgt169057169069%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e169053%_)))
                                   (_%$hd169058169072%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt169057169069%_)))
                                   (_%$tl169059169075%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt169057169069%_)))
                                   (_%rest169079%_ _%$tl169059169075%_))
                              (_%lp169048%_
                               _%rest169079%_
                               (let ((_%x169081%_ _%k169051%_))
                                 (if (fixnum? _%x169081%_)
                                     (let ((_%x169086%_ _%x169081%_))
                                       (declare (not safe))
                                       (__fx1+ _%x169086%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/eval
                                        'contract:
                                        'fixnum?
                                        'value:
                                        _%x169081%_)
                                       '#!void)))))
                            (_%$E169055169066%_))))))
                 (_%generate168912%_
                  (lambda (_%rest168973%_ _%args168974%_ _%len168975%_)
                    (let* ((_%$e168977%_ _%rest168973%_)
                           (_%$E168979168990%_
                            (lambda ()
                              (let ((_%$E168980168987%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e168977%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args168974%_ '())))
                                 _%stx168908%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e168977%_))
                          (let* ((_%$tgt168981168993%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e168977%_)))
                                 (_%$hd168982168996%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt168981168993%_)))
                                 (_%$tl168983168999%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt168981168993%_)))
                                 (_%clause169003%_ _%$hd168982168996%_)
                                 (_%rest169005%_ _%$tl168983168999%_)
                                 (_%$e169007%_ _%clause169003%_)
                                 (_%$E169009169018%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e169007%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e169007%_))
                                (let* ((_%$tgt169010169021%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e169007%_)))
                                       (_%$hd169011169024%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt169010169021%_)))
                                       (_%$tl169012169027%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt169010169021%_)))
                                       (_%hd169031%_ _%$hd169011169024%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl169012169027%_))
                                      (let* ((_%$tgt169013169033%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl169012169027%_)))
                                             (_%$hd169014169036%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt169013169033%_)))
                                             (_%$tl169015169039%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt169013169033%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl169015169039%_))
                                                    '())
                                            (let ((_%clen169043%_
                                                   (_%arity168911%_
                                                    _%hd169031%_))
                                                  (_%cmp169044%_
                                                   (if (_%variadic?168910%_
                                                        _%hd169031%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp169044%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len168975%_ (cons _%clen169043%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause169003%_))
                                      (cons _%args168974%_ '())))
                          _%stx168908%_)
                         (cons (_%generate168912%_
                                _%rest169005%_
                                _%args168974%_
                                _%len168975%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx168908%_))
                                            (_%$E169009169018%_)))
                                      (_%$E169009169018%_)))
                                (_%$E169009169018%_)))
                          (_%$E168979168990%_))))))
          (let* ((_%$e168914%_ _%stx168908%_)
                 (_%$E168916168948%_
                  (lambda ()
                    (let ((_%$E168917168930%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e168914%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e168914%_))
                          (let* ((_%$tgt168918168933%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e168914%_)))
                                 (_%$hd168919168936%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt168918168933%_)))
                                 (_%$tl168920168939%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt168918168933%_)))
                                 (_%clauses168943%_ _%$tl168920168939%_))
                            (let ((_%args168945%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx168908%_))
                                  (_%len168946%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx168908%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args168945%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len168946%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args168945%_ '()))
                                         _%stx168908%_)
                                        '()))
                            '())
                      (cons (_%generate168912%_
                             _%clauses168943%_
                             _%args168945%_
                             _%len168946%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx168908%_)
                                                 '())))
                               _%stx168908%_)))
                          (_%$E168917168930%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e168914%_))
                (let* ((_%$tgt168921168951%_
                        (let () (declare (not safe)) (__AST-e _%$e168914%_)))
                       (_%$hd168922168954%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt168921168951%_)))
                       (_%$tl168923168957%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt168921168951%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl168923168957%_))
                      (let* ((_%$tgt168924168961%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl168923168957%_)))
                             (_%$hd168925168964%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt168924168961%_)))
                             (_%$tl168926168967%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt168924168961%_)))
                             (_%clause168971%_ _%$hd168925168964%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl168926168967%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause168971%_))
                            (_%$E168916168948%_)))
                      (_%$E168916168948%_)))
                (_%$E168916168948%_))))))
    (define __compile-let-form
      (lambda (_%stx168677%_ _%compile-simple168678%_ _%compile-values168679%_)
        (letrec ((_%simple-bind?168681%_
                  (lambda (_%hd168866%_)
                    (let* ((_%hd168867168877%_ _%hd168866%_)
                           (_%else168870168885%_ (lambda () '#f)))
                      (let ((_%K168873168898%_ (lambda (_%id168896%_) '#t))
                            (_%K168872168890%_ (lambda () '#t)))
                        (let ((_%try-match168869168893%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd168867168877%_ '#f))
                                     (_%K168872168890%_)
                                     (_%else168870168885%_)))))
                          (if (pair? _%hd168867168877%_)
                              (let ((_%tl168875168903%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd168867168877%_)))
                                    (_%hd168874168901%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd168867168877%_))))
                                (if (null? _%tl168875168903%_)
                                    (let ((_%id168906%_ _%hd168874168901%_))
                                      (_%K168873168898%_ _%id168906%_))
                                    (_%try-match168869168893%_)))
                              (_%try-match168869168893%_)))))))
                 (_%car-e168682%_
                  (lambda (_%hd168864%_)
                    (if (pair? _%hd168864%_)
                        (let () (declare (not safe)) (##car _%hd168864%_))
                        _%hd168864%_))))
          (let* ((_%$e168684%_ _%stx168677%_)
                 (_%$E168686168829%_
                  (lambda ()
                    (let ((_%$E168687168709%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e168684%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e168684%_))
                          (let* ((_%$tgt168688168712%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e168684%_)))
                                 (_%$hd168689168715%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt168688168712%_)))
                                 (_%$tl168690168718%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt168688168712%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl168690168718%_))
                                (let* ((_%$tgt168691168722%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl168690168718%_)))
                                       (_%$hd168692168725%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt168691168722%_)))
                                       (_%$tl168693168728%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt168691168722%_)))
                                       (_%hd168732%_ _%$hd168692168725%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl168693168728%_))
                                      (let* ((_%$tgt168694168734%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl168693168728%_)))
                                             (_%$hd168695168737%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt168694168734%_)))
                                             (_%$tl168696168740%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt168694168734%_)))
                                             (_%body168744%_
                                              _%$hd168695168737%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl168696168740%_))
                                                    '())
                                            (let* ((_%hd-ids168784%_
                                                    (map (lambda (_%bind168746%_)
                                                           (let* ((_%$e168748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind168746%_)
                          (_%$E168750168759%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e168748%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e168748%_))
                         (let* ((_%$tgt168751168762%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e168748%_)))
                                (_%$hd168752168765%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt168751168762%_)))
                                (_%$tl168753168768%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt168751168762%_)))
                                (_%ids168772%_ _%$hd168752168765%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl168753168768%_))
                               (let* ((_%$tgt168754168774%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl168753168768%_)))
                                      (_%$hd168755168777%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt168754168774%_)))
                                      (_%$tl168756168780%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt168754168774%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl168756168780%_))
                                             '())
                                     _%ids168772%_
                                     (_%$E168750168759%_)))
                               (_%$E168750168759%_)))
                         (_%$E168750168759%_))))
                 _%hd168732%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs168824%_
                                                    (map (lambda (_%bind168786%_)
                                                           (let* ((_%$e168788%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind168786%_)
                          (_%$E168790168799%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e168788%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e168788%_))
                         (let* ((_%$tgt168791168802%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e168788%_)))
                                (_%$hd168792168805%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt168791168802%_)))
                                (_%$tl168793168808%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt168791168802%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl168793168808%_))
                               (let* ((_%$tgt168794168812%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl168793168808%_)))
                                      (_%$hd168795168815%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt168794168812%_)))
                                      (_%$tl168796168818%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt168794168812%_)))
                                      (_%expr168822%_ _%$hd168795168815%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl168796168818%_))
                                             '())
                                     (__compile _%expr168822%_)
                                     (_%$E168790168799%_)))
                               (_%$E168790168799%_)))
                         (_%$E168790168799%_))))
                 _%hd168732%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body168826%_
                                                    (__compile
                                                     _%body168744%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (andmap__0
                                                     _%simple-bind?168681%_
                                                     _%hd-ids168784%_))
                                                  (_%compile-simple168678%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e168682%_
                                                            _%hd-ids168784%_))
                                                   _%exprs168824%_
                                                   _%body168826%_)
                                                  (_%compile-values168679%_
                                                   _%hd-ids168784%_
                                                   _%exprs168824%_
                                                   _%body168826%_)))
                                            (_%$E168687168709%_)))
                                      (_%$E168687168709%_)))
                                (_%$E168687168709%_)))
                          (_%$E168687168709%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e168684%_))
                (let* ((_%$tgt168697168832%_
                        (let () (declare (not safe)) (__AST-e _%$e168684%_)))
                       (_%$hd168698168835%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt168697168832%_)))
                       (_%$tl168699168838%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt168697168832%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl168699168838%_))
                      (let* ((_%$tgt168700168842%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl168699168838%_)))
                             (_%$hd168701168845%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt168700168842%_)))
                             (_%$tl168702168848%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt168700168842%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd168701168845%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl168702168848%_))
                                (let* ((_%$tgt168703168852%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl168702168848%_)))
                                       (_%$hd168704168855%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt168703168852%_)))
                                       (_%$tl168705168858%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt168703168852%_)))
                                       (_%body168862%_ _%$hd168704168855%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl168705168858%_))
                                              '())
                                      (__compile _%body168862%_)
                                      (_%$E168686168829%_)))
                                (_%$E168686168829%_))
                            (_%$E168686168829%_)))
                      (_%$E168686168829%_)))
                (_%$E168686168829%_))))))
    (define __compile-let-values%
      (lambda (_%stx168489%_)
        (letrec ((_%compile-simple168491%_
                  (lambda (_%hd-ids168673%_ _%exprs168674%_ _%body168675%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp169869
                                        (map __compile-head-id
                                             _%hd-ids168673%_)))
                                   (declare (not safe))
                                   (##map list __tmp169869 _%exprs168674%_))
                                 (cons _%body168675%_ '())))
                     _%stx168489%_)))
                 (_%compile-values168492%_
                  (lambda (_%hd-ids168588%_ _%exprs168589%_ _%body168590%_)
                    (let _%lp168592%_ ((_%rest168594%_ _%hd-ids168588%_)
                                       (_%exprs168595%_ _%exprs168589%_)
                                       (_%bind168596%_ '())
                                       (_%post168597%_ '()))
                      (let* ((_%rest168598168612%_ _%rest168594%_)
                             (_%else168601168620%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind168596%_)
                                             (cons (_%compile-post168493%_
                                                    _%post168597%_
                                                    _%body168590%_)
                                                   '())))
                                 _%stx168489%_))))
                        (let ((_%K168606168656%_
                               (lambda (_%rest168653%_ _%id168654%_)
                                 (_%lp168592%_
                                  _%rest168653%_
                                  (cdr _%exprs168595%_)
                                  (cons (cons (__compile-head-id _%id168654%_)
                                              (cons (car _%exprs168595%_) '()))
                                        _%bind168596%_)
                                  _%post168597%_)))
                              (_%K168603168638%_
                               (lambda (_%rest168624%_ _%hd168625%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd168625%_))
                                     (_%lp168592%_
                                      _%rest168624%_
                                      (cdr _%exprs168595%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd168625%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs168595%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind168596%_)
                                      _%post168597%_)
                                     (if (list? _%hd168625%_)
                                         (let* ((_%len168629%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd168625%_)))
                                                (_%tmp168631%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp168592%_
                                            _%rest168624%_
                                            (cdr _%exprs168595%_)
                                            (cons (cons _%tmp168631%_
                                                        (cons (car _%exprs168595%_)
                                                              '()))
                                                  _%bind168596%_)
                                            (cons (cons _%tmp168631%_
                                                        (cons _%len168629%_
                                                              (let ((__tmp169871
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id168634%_ _%k168635%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id168634%_))
                                   (cons (__SRC__0 _%id168634%_) _%k168635%_)
                                   '#f)))
                            (__tmp169870
                             (let ()
                               (declare (not safe))
                               (##iota _%len168629%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp169871 _%hd168625%_ __tmp169870))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post168597%_)))
                                         (__compile-error__%
                                          _%stx168489%_
                                          _%hd168625%_))))))
                          (if (pair? _%rest168598168612%_)
                              (let ((_%tl168608168661%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest168598168612%_)))
                                    (_%hd168607168659%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest168598168612%_))))
                                (if (pair? _%hd168607168659%_)
                                    (let ((_%tl168610168666%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd168607168659%_)))
                                          (_%hd168609168664%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd168607168659%_))))
                                      (if (null? _%tl168610168666%_)
                                          (let ((_%id168669%_
                                                 _%hd168609168664%_)
                                                (_%rest168671%_
                                                 _%tl168608168661%_))
                                            (_%K168606168656%_
                                             _%rest168671%_
                                             _%id168669%_))
                                          (let ((_%hd168646%_
                                                 _%hd168607168659%_)
                                                (_%rest168648%_
                                                 _%tl168608168661%_))
                                            (_%K168603168638%_
                                             _%rest168648%_
                                             _%hd168646%_))))
                                    (let ((_%hd168646%_ _%hd168607168659%_)
                                          (_%rest168648%_ _%tl168608168661%_))
                                      (_%K168603168638%_
                                       _%rest168648%_
                                       _%hd168646%_))))
                              (_%else168601168620%_)))))))
                 (_%compile-post168493%_
                  (lambda (_%post168495%_ _%body168496%_)
                    (let _%lp168498%_ ((_%rest168500%_ _%post168495%_)
                                       (_%check168501%_ '())
                                       (_%bind168502%_ '()))
                      (let* ((_%rest168503168515%_ _%rest168500%_)
                             (_%else168505168523%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp169872
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind168502%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body168496%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx168489%_)
                                                    '())))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp169872
                                          _%check168501%_)))
                                 _%stx168489%_)))
                             (_%K168507168562%_
                              (lambda (_%rest168526%_
                                       _%init168527%_
                                       _%len168528%_
                                       _%tmp168529%_)
                                (_%lp168498%_
                                 _%rest168526%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp168529%_
                                                    (cons _%len168528%_ '())))
                                        _%stx168489%_)
                                       _%check168501%_)
                                 (let ((__tmp169873
                                        (lambda (_%hd168531%_ _%r168532%_)
                                          (let* ((_%hd168533168540%_
                                                  _%hd168531%_)
                                                 (_%E168535168544%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd168533168540%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K168536168550%_
                                                  (lambda (_%k168547%_
                                                           _%id168548%_)
                                                    (cons (cons _%id168548%_
                                                                (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp168529%_
                                          (cons _%k168547%_ '())))
                              '()))
                  _%r168532%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd168533168540%_)
                                                (let ((_%hd168537168553%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd168533168540%_)))
                                                      (_%tl168538168555%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd168533168540%_))))
                                                  (let* ((_%id168558%_
                                                          _%hd168537168553%_)
                                                         (_%k168560%_
                                                          _%tl168538168555%_))
                                                    (_%K168536168550%_
                                                     _%k168560%_
                                                     _%id168558%_)))
                                                (_%E168535168544%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp169873
                                    _%bind168502%_
                                    _%init168527%_))))))
                        (if (pair? _%rest168503168515%_)
                            (let ((_%hd168508168565%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest168503168515%_)))
                                  (_%tl168509168567%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest168503168515%_))))
                              (if (pair? _%hd168508168565%_)
                                  (let ((_%hd168510168570%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd168508168565%_)))
                                        (_%tl168511168572%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd168508168565%_))))
                                    (let ((_%tmp168575%_ _%hd168510168570%_))
                                      (if (pair? _%tl168511168572%_)
                                          (let ((_%hd168512168577%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl168511168572%_)))
                                                (_%tl168513168579%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl168511168572%_))))
                                            (let* ((_%len168582%_
                                                    _%hd168512168577%_)
                                                   (_%init168584%_
                                                    _%tl168513168579%_)
                                                   (_%rest168586%_
                                                    _%tl168509168567%_))
                                              (_%K168507168562%_
                                               _%rest168586%_
                                               _%init168584%_
                                               _%len168582%_
                                               _%tmp168575%_)))
                                          (_%else168505168523%_))))
                                  (_%else168505168523%_)))
                            (_%else168505168523%_)))))))
          (__compile-let-form
           _%stx168489%_
           _%compile-simple168491%_
           _%compile-values168492%_))))
    (define __compile-letrec-values%
      (lambda (_%stx168286%_)
        (letrec ((_%compile-simple168288%_
                  (lambda (_%hd-ids168485%_ _%exprs168486%_ _%body168487%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp169874
                                        (map __compile-head-id
                                             _%hd-ids168485%_)))
                                   (declare (not safe))
                                   (##map list __tmp169874 _%exprs168486%_))
                                 (cons _%body168487%_ '())))
                     _%stx168286%_)))
                 (_%compile-values168289%_
                  (lambda (_%hd-ids168396%_ _%exprs168397%_ _%body168398%_)
                    (let _%lp168400%_ ((_%rest168402%_ _%hd-ids168396%_)
                                       (_%exprs168403%_ _%exprs168397%_)
                                       (_%pre168404%_ '())
                                       (_%bind168405%_ '())
                                       (_%post168406%_ '()))
                      (let* ((_%rest168407168421%_ _%rest168402%_)
                             (_%else168410168429%_
                              (lambda ()
                                (_%compile-inner168290%_
                                 _%pre168404%_
                                 _%bind168405%_
                                 _%post168406%_
                                 _%body168398%_))))
                        (let ((_%K168415168468%_
                               (lambda (_%rest168465%_ _%id168466%_)
                                 (_%lp168400%_
                                  _%rest168465%_
                                  (cdr _%exprs168403%_)
                                  _%pre168404%_
                                  (cons (cons (__compile-head-id _%id168466%_)
                                              (cons (car _%exprs168403%_) '()))
                                        _%bind168405%_)
                                  _%post168406%_)))
                              (_%K168412168450%_
                               (lambda (_%rest168433%_ _%hd168434%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd168434%_))
                                     (_%lp168400%_
                                      _%rest168433%_
                                      (cdr _%exprs168403%_)
                                      _%pre168404%_
                                      (cons (cons (__compile-head-id
                                                   _%hd168434%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs168403%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind168405%_)
                                      _%post168406%_)
                                     (if (list? _%hd168434%_)
                                         (let* ((_%len168438%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd168434%_)))
                                                (_%tmp168440%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp168400%_
                                            _%rest168433%_
                                            (cdr _%exprs168403%_)
                                            (let ((__tmp169875
                                                   (lambda (_%id168443%_
                                                            _%r168444%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id168443%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id168443%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r168444%_)
                 _%r168444%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (foldl__0
                                               __tmp169875
                                               _%pre168404%_
                                               _%hd168434%_))
                                            (cons (cons _%tmp168440%_
                                                        (cons (car _%exprs168403%_)
                                                              '()))
                                                  _%bind168405%_)
                                            (cons (cons _%tmp168440%_
                                                        (cons _%len168438%_
                                                              (let ((__tmp169877
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id168446%_ _%k168447%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id168446%_))
                                   (cons (__SRC__0 _%id168446%_) _%k168447%_)
                                   '#f)))
                            (__tmp169876
                             (let ()
                               (declare (not safe))
                               (##iota _%len168438%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp169877 _%hd168434%_ __tmp169876))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post168406%_)))
                                         (__compile-error__%
                                          _%stx168286%_
                                          _%hd168434%_))))))
                          (if (pair? _%rest168407168421%_)
                              (let ((_%tl168417168473%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest168407168421%_)))
                                    (_%hd168416168471%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest168407168421%_))))
                                (if (pair? _%hd168416168471%_)
                                    (let ((_%tl168419168478%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd168416168471%_)))
                                          (_%hd168418168476%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd168416168471%_))))
                                      (if (null? _%tl168419168478%_)
                                          (let ((_%id168481%_
                                                 _%hd168418168476%_)
                                                (_%rest168483%_
                                                 _%tl168417168473%_))
                                            (_%K168415168468%_
                                             _%rest168483%_
                                             _%id168481%_))
                                          (let ((_%hd168458%_
                                                 _%hd168416168471%_)
                                                (_%rest168460%_
                                                 _%tl168417168473%_))
                                            (_%K168412168450%_
                                             _%rest168460%_
                                             _%hd168458%_))))
                                    (let ((_%hd168458%_ _%hd168416168471%_)
                                          (_%rest168460%_ _%tl168417168473%_))
                                      (_%K168412168450%_
                                       _%rest168460%_
                                       _%hd168458%_))))
                              (_%else168410168429%_)))))))
                 (_%compile-inner168290%_
                  (lambda (_%pre168391%_
                           _%bind168392%_
                           _%post168393%_
                           _%body168394%_)
                    (if (null? _%pre168391%_)
                        (_%compile-bind168291%_
                         _%bind168392%_
                         _%post168393%_
                         _%body168394%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre168391%_)
                                     (cons (_%compile-bind168291%_
                                            _%bind168392%_
                                            _%post168393%_
                                            _%body168394%_)
                                           '())))
                         _%stx168286%_))))
                 (_%compile-bind168291%_
                  (lambda (_%bind168387%_ _%post168388%_ _%body168389%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind168387%_)
                                 (cons (_%compile-post168292%_
                                        _%post168388%_
                                        _%body168389%_)
                                       '())))
                     _%stx168286%_)))
                 (_%compile-post168292%_
                  (lambda (_%post168294%_ _%body168295%_)
                    (let _%lp168297%_ ((_%rest168299%_ _%post168294%_)
                                       (_%check168300%_ '())
                                       (_%bind168301%_ '()))
                      (let* ((_%rest168302168314%_ _%rest168299%_)
                             (_%else168304168322%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp169878
                                              (let ((__tmp169879
                                                     (cons _%body168295%_
                                                           '())))
                                                (declare (not safe))
                                                (foldr__0
                                                 cons
                                                 __tmp169879
                                                 _%bind168301%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp169878
                                          _%check168300%_)))
                                 _%stx168286%_)))
                             (_%K168306168361%_
                              (lambda (_%rest168325%_
                                       _%init168326%_
                                       _%len168327%_
                                       _%tmp168328%_)
                                (_%lp168297%_
                                 _%rest168325%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp168328%_
                                                    (cons _%len168327%_ '())))
                                        _%stx168286%_)
                                       _%check168300%_)
                                 (let ((__tmp169880
                                        (lambda (_%hd168330%_ _%r168331%_)
                                          (let* ((_%hd168332168339%_
                                                  _%hd168330%_)
                                                 (_%E168334168343%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd168332168339%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K168335168349%_
                                                  (lambda (_%k168346%_
                                                           _%id168347%_)
                                                    (cons (cons 'set!
                                                                (cons _%id168347%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##values-ref
                                          (cons _%tmp168328%_
                                                (cons _%k168346%_ '())))
                                    '())))
                  _%r168331%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd168332168339%_)
                                                (let ((_%hd168336168352%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd168332168339%_)))
                                                      (_%tl168337168354%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd168332168339%_))))
                                                  (let* ((_%id168357%_
                                                          _%hd168336168352%_)
                                                         (_%k168359%_
                                                          _%tl168337168354%_))
                                                    (_%K168335168349%_
                                                     _%k168359%_
                                                     _%id168357%_)))
                                                (_%E168334168343%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp169880
                                    _%bind168301%_
                                    _%init168326%_))))))
                        (if (pair? _%rest168302168314%_)
                            (let ((_%hd168307168364%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest168302168314%_)))
                                  (_%tl168308168366%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest168302168314%_))))
                              (if (pair? _%hd168307168364%_)
                                  (let ((_%hd168309168369%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd168307168364%_)))
                                        (_%tl168310168371%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd168307168364%_))))
                                    (let ((_%tmp168374%_ _%hd168309168369%_))
                                      (if (pair? _%tl168310168371%_)
                                          (let ((_%hd168311168376%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl168310168371%_)))
                                                (_%tl168312168378%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl168310168371%_))))
                                            (let* ((_%len168381%_
                                                    _%hd168311168376%_)
                                                   (_%init168383%_
                                                    _%tl168312168378%_)
                                                   (_%rest168385%_
                                                    _%tl168308168366%_))
                                              (_%K168306168361%_
                                               _%rest168385%_
                                               _%init168383%_
                                               _%len168381%_
                                               _%tmp168374%_)))
                                          (_%else168304168322%_))))
                                  (_%else168304168322%_)))
                            (_%else168304168322%_)))))))
          (__compile-let-form
           _%stx168286%_
           _%compile-simple168288%_
           _%compile-values168289%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx168037%_)
        (letrec ((_%compile-simple168039%_
                  (lambda (_%hd-ids168282%_ _%exprs168283%_ _%body168284%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp169881
                                        (map __compile-head-id
                                             _%hd-ids168282%_)))
                                   (declare (not safe))
                                   (##map list __tmp169881 _%exprs168283%_))
                                 (cons _%body168284%_ '())))
                     _%stx168037%_)))
                 (_%compile-values168040%_
                  (lambda (_%hd-ids168189%_ _%exprs168190%_ _%body168191%_)
                    (let _%lp168193%_ ((_%rest168195%_ _%hd-ids168189%_)
                                       (_%exprs168196%_ _%exprs168190%_)
                                       (_%bind168197%_ '())
                                       (_%post168198%_ '()))
                      (let* ((_%rest168199168213%_ _%rest168195%_)
                             (_%else168202168221%_
                              (lambda ()
                                (_%compile-bind168041%_
                                 _%bind168197%_
                                 _%post168198%_
                                 _%body168191%_))))
                        (let ((_%K168207168265%_
                               (lambda (_%rest168260%_ _%hd168261%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd168261%_))
                                     (let ((_%id168263%_
                                            (__SRC__0 _%hd168261%_)))
                                       (_%lp168193%_
                                        _%rest168260%_
                                        (cdr _%exprs168196%_)
                                        (cons (cons _%id168263%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind168197%_)
                                        (cons (cons _%id168263%_
                                                    (cons (car _%exprs168196%_)
                                                          '()))
                                              _%post168198%_)))
                                     (_%lp168193%_
                                      _%rest168260%_
                                      (cdr _%exprs168196%_)
                                      _%bind168197%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs168196%_)
                                                        '()))
                                            _%post168198%_)))))
                              (_%K168204168245%_
                               (lambda (_%rest168225%_ _%hd168226%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd168226%_))
                                     (let ((_%id168229%_
                                            (__SRC__0 _%hd168226%_)))
                                       (_%lp168193%_
                                        _%rest168225%_
                                        (cdr _%exprs168196%_)
                                        (cons (cons _%id168229%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind168197%_)
                                        (cons (cons _%id168229%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs168196%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post168198%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd168226%_))
                                         (if (list? _%hd168226%_)
                                             (let* ((_%len168233%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd168226%_)))
                                                    (_%tmp168235%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp168193%_
                                                _%rest168225%_
                                                (cdr _%exprs168196%_)
                                                (let ((__tmp169882
                                                       (lambda (_%id168238%_
                                                                _%r168239%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id168238%_))
                     (cons (cons (__SRC__0 _%id168238%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r168239%_)
                     _%r168239%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldl__0
                                                   __tmp169882
                                                   _%bind168197%_
                                                   _%hd168226%_))
                                                (cons (cons _%tmp168235%_
                                                            (cons (car _%exprs168196%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len168233%_
                                (let ((__tmp169884
                                       (lambda (_%id168241%_ _%k168242%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id168241%_))
                                             (cons (__SRC__0 _%id168241%_)
                                                   _%k168242%_)
                                             '#f)))
                                      (__tmp169883
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len168233%_))))
                                  (declare (not safe))
                                  (filter-map__1
                                   __tmp169884
                                   _%hd168226%_
                                   __tmp169883)))))
              _%post168198%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx168037%_
                                              _%hd168226%_))
                                         (_%lp168193%_
                                          _%rest168225%_
                                          (cdr _%exprs168196%_)
                                          _%bind168197%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs168196%_)
                                                            '()))
                                                _%post168198%_)))))))
                          (if (pair? _%rest168199168213%_)
                              (let ((_%tl168209168270%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest168199168213%_)))
                                    (_%hd168208168268%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest168199168213%_))))
                                (if (pair? _%hd168208168268%_)
                                    (let ((_%tl168211168275%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd168208168268%_)))
                                          (_%hd168210168273%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd168208168268%_))))
                                      (if (null? _%tl168211168275%_)
                                          (let ((_%hd168278%_
                                                 _%hd168210168273%_)
                                                (_%rest168280%_
                                                 _%tl168209168270%_))
                                            (_%K168207168265%_
                                             _%rest168280%_
                                             _%hd168278%_))
                                          (let ((_%hd168253%_
                                                 _%hd168208168268%_)
                                                (_%rest168255%_
                                                 _%tl168209168270%_))
                                            (_%K168204168245%_
                                             _%rest168255%_
                                             _%hd168253%_))))
                                    (let ((_%hd168253%_ _%hd168208168268%_)
                                          (_%rest168255%_ _%tl168209168270%_))
                                      (_%K168204168245%_
                                       _%rest168255%_
                                       _%hd168253%_))))
                              (_%else168202168221%_)))))))
                 (_%compile-bind168041%_
                  (lambda (_%bind168185%_ _%post168186%_ _%body168187%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind168185%_)
                                 (cons (_%compile-post168042%_
                                        _%post168186%_
                                        _%body168187%_)
                                       '())))
                     _%stx168037%_)))
                 (_%compile-post168042%_
                  (lambda (_%post168044%_ _%body168045%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp169885
                                  (let ((__tmp169887
                                         (lambda (_%hd168047%_ _%r168048%_)
                                           (let* ((_%hd168049168072%_
                                                   _%hd168047%_)
                                                  (_%E168053168076%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd168049168072%_
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
                                             (let ((_%K168066168170%_
                                                    (lambda (_%expr168168%_)
                                                      (cons _%expr168168%_
                                                            _%r168048%_)))
                                                   (_%K168061168148%_
                                                    (lambda (_%expr168145%_
                                                             _%id168146%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id168146%_ (cons _%expr168145%_ '())))
                     _%stx168037%_)
                    _%r168048%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K168054168115%_
                                                    (lambda (_%init168080%_
                                                             _%len168081%_
                                                             _%expr168082%_
                                                             _%tmp168083%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp168083%_
                                             (cons _%expr168082%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp168083%_
                                                    (cons _%len168081%_ '())))
                                        _%stx168037%_)
                                       (let ((__tmp169888
                                              (map (lambda (_%hd168085%_)
                                                     (let* ((_%hd168086168093%_
                                                             _%hd168085%_)
                                                            (_%E168088168097%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd168086168093%_
                                '([id . k])))
                       '#!void))
                    (_%K168089168103%_
                     (lambda (_%k168100%_ _%id168101%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id168101%_
                                    (cons (cons '##values-ref
                                                (cons _%tmp168083%_
                                                      (cons _%k168100%_ '())))
                                          '())))
                        _%stx168037%_))))
               (if (pair? _%hd168086168093%_)
                   (let ((_%hd168090168106%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd168086168093%_)))
                         (_%tl168091168108%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd168086168093%_))))
                     (let* ((_%id168111%_ _%hd168090168106%_)
                            (_%k168113%_ _%tl168091168108%_))
                       (_%K168089168103%_ _%k168113%_ _%id168111%_)))
                   (_%E168088168097%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init168080%_)))
                                         (declare (not safe))
                                         (foldr__0 cons '() __tmp169888)))))
                     _%stx168037%_)
                    _%r168048%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match169743169744%_
                                                       (lambda (_%hd168055168118%_
                                                                _%tl168056168120%_
                                                                _%hd168057168125%_
                                                                _%tl168058168127%_)
                                                         (let ((_%tmp168123%_
                                                                _%hd168055168118%_)
                                                               (_%expr168130%_
                                                                _%hd168057168125%_))
                                                           (_%E168053168076%_))))
                                                      (_%__match169737169738%_
                                                       (lambda (_%hd168055168118%_
                                                                _%tl168056168120%_)
                                                         (let ((_%tmp168123%_
                                                                _%hd168055168118%_))
                                                           (_%E168053168076%_)))))
                                                 (if (pair? _%hd168049168072%_)
                                                     (let ((_%tl168068168175%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd168049168072%_)))
                                                           (_%hd168067168173%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd168049168072%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd168067168173%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%tl168068168175%_)
                       (let ((_%tl168070168180%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl168068168175%_)))
                             (_%hd168069168178%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl168068168175%_))))
                         (if (null? _%tl168070168180%_)
                             (let ((_%expr168183%_ _%hd168069168178%_))
                               (_%K168066168170%_ _%expr168183%_))
                             (if (pair? _%tl168070168180%_)
                                 (let ((_%tl168060168134%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl168070168180%_)))
                                       (_%hd168059168132%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl168070168180%_))))
                                   (let ((_%tmp168123%_ _%hd168067168173%_)
                                         (_%expr168130%_ _%hd168069168178%_)
                                         (_%len168137%_ _%hd168059168132%_)
                                         (_%init168139%_ _%tl168060168134%_))
                                     (_%K168054168115%_
                                      _%init168139%_
                                      _%len168137%_
                                      _%expr168130%_
                                      _%tmp168123%_)))
                                 (_%__match169743169744%_
                                  _%hd168067168173%_
                                  _%tl168068168175%_
                                  _%hd168069168178%_
                                  _%tl168070168180%_))))
                       (_%__match169737169738%_
                        _%hd168067168173%_
                        _%tl168068168175%_))
                   (if (pair? _%tl168068168175%_)
                       (let ((_%tl168065168160%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl168068168175%_)))
                             (_%hd168064168158%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl168068168175%_))))
                         (if (null? _%tl168065168160%_)
                             (let ((_%id168156%_ _%hd168067168173%_)
                                   (_%expr168163%_ _%hd168064168158%_))
                               (_%K168061168148%_ _%expr168163%_ _%id168156%_))
                             (if (pair? _%tl168065168160%_)
                                 (let ((_%tl168060168134%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl168065168160%_)))
                                       (_%hd168059168132%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl168065168160%_))))
                                   (let ((_%tmp168123%_ _%hd168067168173%_)
                                         (_%expr168130%_ _%hd168064168158%_)
                                         (_%len168137%_ _%hd168059168132%_)
                                         (_%init168139%_ _%tl168060168134%_))
                                     (_%K168054168115%_
                                      _%init168139%_
                                      _%len168137%_
                                      _%expr168130%_
                                      _%tmp168123%_)))
                                 (_%__match169743169744%_
                                  _%hd168067168173%_
                                  _%tl168068168175%_
                                  _%hd168064168158%_
                                  _%tl168065168160%_))))
                       (_%__match169737169738%_
                        _%hd168067168173%_
                        _%tl168068168175%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E168053168076%_)))))))
                                        (__tmp169886 (list _%body168045%_)))
                                    (declare (not safe))
                                    (foldl__0
                                     __tmp169887
                                     __tmp169886
                                     _%post168044%_))))
                             (declare (not safe))
                             (foldr__0 cons '() __tmp169885)))
                     _%stx168037%_))))
          (__compile-let-form
           _%stx168037%_
           _%compile-simple168039%_
           _%compile-values168040%_))))
    (define __compile-call%
      (lambda (_%stx167997%_)
        (let* ((_%$e167999%_ _%stx167997%_)
               (_%$E168001168010%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e167999%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e167999%_))
              (let* ((_%$tgt168002168013%_
                      (let () (declare (not safe)) (__AST-e _%$e167999%_)))
                     (_%$hd168003168016%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168002168013%_)))
                     (_%$tl168004168019%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168002168013%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl168004168019%_))
                    (let* ((_%$tgt168005168023%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl168004168019%_)))
                           (_%$hd168006168026%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt168005168023%_)))
                           (_%$tl168007168029%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt168005168023%_)))
                           (_%rator168033%_ _%$hd168006168026%_)
                           (_%rands168035%_ _%$tl168007168029%_))
                      (__SRC__%
                       (cons (__compile _%rator168033%_)
                             (map __compile _%rands168035%_))
                       _%stx167997%_))
                    (_%$E168001168010%_)))
              (_%$E168001168010%_)))))
    (define __compile-ref%
      (lambda (_%stx167959%_)
        (let* ((_%$e167961%_ _%stx167959%_)
               (_%$E167963167972%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e167961%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e167961%_))
              (let* ((_%$tgt167964167975%_
                      (let () (declare (not safe)) (__AST-e _%$e167961%_)))
                     (_%$hd167965167978%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt167964167975%_)))
                     (_%$tl167966167981%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt167964167975%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl167966167981%_))
                    (let* ((_%$tgt167967167985%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl167966167981%_)))
                           (_%$hd167968167988%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt167967167985%_)))
                           (_%$tl167969167991%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt167967167985%_)))
                           (_%id167995%_ _%$hd167968167988%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl167969167991%_))
                                  '())
                          (__SRC__% _%id167995%_ _%stx167959%_)
                          (_%$E167963167972%_)))
                    (_%$E167963167972%_)))
              (_%$E167963167972%_)))))
    (define __compile-setq%
      (lambda (_%stx167906%_)
        (let* ((_%$e167908%_ _%stx167906%_)
               (_%$E167910167922%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e167908%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e167908%_))
              (let* ((_%$tgt167911167925%_
                      (let () (declare (not safe)) (__AST-e _%$e167908%_)))
                     (_%$hd167912167928%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt167911167925%_)))
                     (_%$tl167913167931%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt167911167925%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl167913167931%_))
                    (let* ((_%$tgt167914167935%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl167913167931%_)))
                           (_%$hd167915167938%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt167914167935%_)))
                           (_%$tl167916167941%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt167914167935%_)))
                           (_%id167945%_ _%$hd167915167938%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl167916167941%_))
                          (let* ((_%$tgt167917167947%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl167916167941%_)))
                                 (_%$hd167918167950%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt167917167947%_)))
                                 (_%$tl167919167953%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt167917167947%_)))
                                 (_%expr167957%_ _%$hd167918167950%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl167919167953%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id167945%_
                                              _%stx167906%_)
                                             (cons (__compile _%expr167957%_)
                                                   '())))
                                 _%stx167906%_)
                                (_%$E167910167922%_)))
                          (_%$E167910167922%_)))
                    (_%$E167910167922%_)))
              (_%$E167910167922%_)))))
    (define __compile-if%
      (lambda (_%stx167838%_)
        (let* ((_%$e167840%_ _%stx167838%_)
               (_%$E167842167857%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e167840%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e167840%_))
              (let* ((_%$tgt167843167860%_
                      (let () (declare (not safe)) (__AST-e _%$e167840%_)))
                     (_%$hd167844167863%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt167843167860%_)))
                     (_%$tl167845167866%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt167843167860%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl167845167866%_))
                    (let* ((_%$tgt167846167870%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl167845167866%_)))
                           (_%$hd167847167873%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt167846167870%_)))
                           (_%$tl167848167876%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt167846167870%_)))
                           (_%p167880%_ _%$hd167847167873%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl167848167876%_))
                          (let* ((_%$tgt167849167882%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl167848167876%_)))
                                 (_%$hd167850167885%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt167849167882%_)))
                                 (_%$tl167851167888%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt167849167882%_)))
                                 (_%t167892%_ _%$hd167850167885%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl167851167888%_))
                                (let* ((_%$tgt167852167894%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl167851167888%_)))
                                       (_%$hd167853167897%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt167852167894%_)))
                                       (_%$tl167854167900%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt167852167894%_)))
                                       (_%f167904%_ _%$hd167853167897%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl167854167900%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p167880%_)
                                                   (cons (__compile
                                                          _%t167892%_)
                                                         (cons (__compile
                                                                _%f167904%_)
                                                               '()))))
                                       _%stx167838%_)
                                      (_%$E167842167857%_)))
                                (_%$E167842167857%_)))
                          (_%$E167842167857%_)))
                    (_%$E167842167857%_)))
              (_%$E167842167857%_)))))
    (define __compile-quote%
      (lambda (_%stx167800%_)
        (let* ((_%$e167802%_ _%stx167800%_)
               (_%$E167804167813%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e167802%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e167802%_))
              (let* ((_%$tgt167805167816%_
                      (let () (declare (not safe)) (__AST-e _%$e167802%_)))
                     (_%$hd167806167819%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt167805167816%_)))
                     (_%$tl167807167822%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt167805167816%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl167807167822%_))
                    (let* ((_%$tgt167808167826%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl167807167822%_)))
                           (_%$hd167809167829%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt167808167826%_)))
                           (_%$tl167810167832%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt167808167826%_)))
                           (_%e167836%_ _%$hd167809167829%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl167810167832%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e167836%_))
                                       '()))
                           _%stx167800%_)
                          (_%$E167804167813%_)))
                    (_%$E167804167813%_)))
              (_%$E167804167813%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx167762%_)
        (let* ((_%$e167764%_ _%stx167762%_)
               (_%$E167766167775%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e167764%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e167764%_))
              (let* ((_%$tgt167767167778%_
                      (let () (declare (not safe)) (__AST-e _%$e167764%_)))
                     (_%$hd167768167781%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt167767167778%_)))
                     (_%$tl167769167784%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt167767167778%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl167769167784%_))
                    (let* ((_%$tgt167770167788%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl167769167784%_)))
                           (_%$hd167771167791%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt167770167788%_)))
                           (_%$tl167772167794%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt167770167788%_)))
                           (_%e167798%_ _%$hd167771167791%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl167772167794%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e167798%_ '()))
                           _%stx167762%_)
                          (_%$E167766167775%_)))
                    (_%$E167766167775%_)))
              (_%$E167766167775%_)))))
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

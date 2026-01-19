(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1768865823)
  (begin
    (define __syntax::t
      (let ((__tmp126820 (list)) (__tmp126819 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp126820
         '(e id)
         __tmp126819
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args126624%_
        (apply make-instance __syntax::t _%$args126624%_)))
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
      (let ((__tmp126822 (list __syntax::t))
            (__tmp126821 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp126822
         '()
         __tmp126821
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args126621%_
        (apply make-instance __core-form::t _%$args126621%_)))
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
      (let ((__tmp126824 (list __core-form::t))
            (__tmp126823 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp126824
         '()
         __tmp126823
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args126618%_
        (apply make-instance __core-expression::t _%$args126618%_)))
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
      (let ((__tmp126826 (list __core-form::t))
            (__tmp126825 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp126826
         '()
         __tmp126825
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args126615%_
        (apply make-instance __core-special-form::t _%$args126615%_)))
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
      (lambda (_%id126613%_)
        (let ((__tmp126827
               (let () (declare (not safe)) (__AST-e _%id126613%_))))
          (declare (not safe))
          (__hash-get __core __tmp126827))))
    (define __core-bound-id?__%
      (lambda (_%id126596%_ _%is?126597%_)
        (let ((_%$e126599%_ (__core-resolve _%id126596%_)))
          (if _%$e126599%_ (_%is?126597%_ _%$e126599%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id126606%_)
        (let ((_%is?126608%_ true))
          (__core-bound-id?__% _%id126606%_ _%is?126608%_))))
    (define __core-bound-id?
      (lambda _g126828_
        (let ((_g126829_ (let () (declare (not safe)) (##length _g126828_))))
          (cond ((let () (declare (not safe)) (##fx= _g126829_ 1))
                 (apply __core-bound-id?__0 _g126828_))
                ((let () (declare (not safe)) (##fx= _g126829_ 2))
                 (apply __core-bound-id?__% _g126828_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g126828_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id126579%_ _%e126580%_ _%make126581%_)
        (let ((__tmp126830
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e126580%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e126580%_
                   (_%make126581%_ _%e126580%_ _%id126579%_))))
          (declare (not safe))
          (__hash-put! __core _%id126579%_ __tmp126830))))
    (define __core-bind-syntax!__0
      (lambda (_%id126586%_ _%e126587%_)
        (let ((_%make126589%_ make-__syntax))
          (__core-bind-syntax!__% _%id126586%_ _%e126587%_ _%make126589%_))))
    (define __core-bind-syntax!
      (lambda _g126831_
        (let ((_g126832_ (let () (declare (not safe)) (##length _g126831_))))
          (cond ((let () (declare (not safe)) (##fx= _g126832_ 2))
                 (apply __core-bind-syntax!__0 _g126831_))
                ((let () (declare (not safe)) (##fx= _g126832_ 3))
                 (apply __core-bind-syntax!__% _g126831_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g126831_))))))
    (define __SRC__%
      (lambda (_%e126559%_ _%src-stx126560%_)
        (if (or (pair? _%e126559%_) (symbol? _%e126559%_))
            (let ((__tmp126833
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx126560%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx126560%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e126559%_ __tmp126833))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e126559%_ 'gerbil#AST::t))
                (let ((__tmp126835
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e126559%_ '1 '#f '#f)))
                      (__tmp126834
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e126559%_)))))
                  (declare (not safe))
                  (##make-source __tmp126835 __tmp126834))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e126559%_))))))
    (define __SRC__0
      (lambda (_%e126571%_)
        (let ((_%src-stx126573%_ '#f))
          (__SRC__% _%e126571%_ _%src-stx126573%_))))
    (define __SRC
      (lambda _g126836_
        (let ((_g126837_ (let () (declare (not safe)) (##length _g126836_))))
          (cond ((let () (declare (not safe)) (##fx= _g126837_ 1))
                 (apply __SRC__0 _g126836_))
                ((let () (declare (not safe)) (##fx= _g126837_ 2))
                 (apply __SRC__% _g126836_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g126836_))))))
    (define __locat
      (lambda (_%loc126556%_)
        (if (let () (declare (not safe)) (##locat? _%loc126556%_))
            _%loc126556%_
            '#f)))
    (define __check-values
      (lambda (_%obj126551%_ _%k126552%_)
        (let ((_%count126554%_
               (if (let () (declare (not safe)) (##values? _%obj126551%_))
                   (let ()
                     (declare (not safe))
                     (##values-length _%obj126551%_))
                   '1)))
          (if (fx= _%count126554%_ _%k126552%_)
              '#!void
              (let ((__tmp126839
                     (if (fx< _%count126554%_ _%k126552%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp126838
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj126551%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj126551%_))
                         _%obj126551%_)))
                (declare (not safe))
                (error __tmp126839 __tmp126838 _%k126552%_))))))
    (define __compile
      (lambda (_%stx126520%_)
        (let* ((_%$e126522%_ _%stx126520%_)
               (_%$E126524126530%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e126522%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e126522%_))
              (let* ((_%$tgt126525126533%_
                      (let () (declare (not safe)) (__AST-e _%$e126522%_)))
                     (_%$hd126526126536%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt126525126533%_)))
                     (_%$tl126527126539%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt126525126533%_)))
                     (_%form126543%_ _%$hd126526126536%_)
                     (_%$e126545%_ (__core-resolve _%form126543%_)))
                (if _%$e126545%_
                    ((lambda (_%bind126548%_)
                       ((##structure-ref _%bind126548%_ '1 __syntax::t '#f)
                        _%stx126520%_))
                     _%$e126545%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx126520%_
                       _%form126543%_))))
              (_%$E126524126530%_)))))
    (define __compile-error__%
      (lambda (_%stx126507%_ _%detail126508%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx126507%_
           _%detail126508%_))))
    (define __compile-error__0
      (lambda (_%stx126513%_)
        (let ((_%detail126515%_ '#f))
          (__compile-error__% _%stx126513%_ _%detail126515%_))))
    (define __compile-error
      (lambda _g126840_
        (let ((_g126841_ (let () (declare (not safe)) (##length _g126840_))))
          (cond ((let () (declare (not safe)) (##fx= _g126841_ 1))
                 (apply __compile-error__0 _g126840_))
                ((let () (declare (not safe)) (##fx= _g126841_ 2))
                 (apply __compile-error__% _g126840_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g126840_))))))
    (define __compile-ignore%
      (lambda (_%stx126504%_) (__SRC__% ''#!void _%stx126504%_)))
    (define __compile-begin%
      (lambda (_%stx126479%_)
        (let* ((_%$e126481%_ _%stx126479%_)
               (_%$E126483126489%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e126481%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e126481%_))
              (let* ((_%$tgt126484126492%_
                      (let () (declare (not safe)) (__AST-e _%$e126481%_)))
                     (_%$hd126485126495%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt126484126492%_)))
                     (_%$tl126486126498%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt126484126492%_)))
                     (_%body126502%_ _%$tl126486126498%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body126502%_))
                 _%stx126479%_))
              (_%$E126483126489%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx126454%_)
        (let* ((_%$e126456%_ _%stx126454%_)
               (_%$E126458126464%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e126456%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e126456%_))
              (let* ((_%$tgt126459126467%_
                      (let () (declare (not safe)) (__AST-e _%$e126456%_)))
                     (_%$hd126460126470%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt126459126467%_)))
                     (_%$tl126461126473%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt126459126467%_)))
                     (_%body126477%_ _%$tl126461126473%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body126477%_)))
                 _%stx126454%_))
              (_%$E126458126464%_)))))
    (define __compile-import%
      (lambda (_%stx126429%_)
        (let* ((_%$e126431%_ _%stx126429%_)
               (_%$E126433126439%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e126431%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e126431%_))
              (let* ((_%$tgt126434126442%_
                      (let () (declare (not safe)) (__AST-e _%$e126431%_)))
                     (_%$hd126435126445%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt126434126442%_)))
                     (_%$tl126436126448%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt126434126442%_)))
                     (_%body126452%_ _%$tl126436126448%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body126452%_ '())) '()))
                 _%stx126429%_))
              (_%$E126433126439%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx126376%_)
        (let* ((_%$e126378%_ _%stx126376%_)
               (_%$E126380126392%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e126378%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e126378%_))
              (let* ((_%$tgt126381126395%_
                      (let () (declare (not safe)) (__AST-e _%$e126378%_)))
                     (_%$hd126382126398%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt126381126395%_)))
                     (_%$tl126383126401%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt126381126395%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl126383126401%_))
                    (let* ((_%$tgt126384126405%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl126383126401%_)))
                           (_%$hd126385126408%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt126384126405%_)))
                           (_%$tl126386126411%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt126384126405%_)))
                           (_%ann126415%_ _%$hd126385126408%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl126386126411%_))
                          (let* ((_%$tgt126387126417%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl126386126411%_)))
                                 (_%$hd126388126420%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt126387126417%_)))
                                 (_%$tl126389126423%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt126387126417%_)))
                                 (_%expr126427%_ _%$hd126388126420%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl126389126423%_))
                                        '())
                                (__compile _%expr126427%_)
                                (_%$E126380126392%_)))
                          (_%$E126380126392%_)))
                    (_%$E126380126392%_)))
              (_%$E126380126392%_)))))
    (define __compile-define-values%
      (lambda (_%stx126267%_)
        (let* ((_%$e126269%_ _%stx126267%_)
               (_%$E126271126283%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e126269%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e126269%_))
              (let* ((_%$tgt126272126286%_
                      (let () (declare (not safe)) (__AST-e _%$e126269%_)))
                     (_%$hd126273126289%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt126272126286%_)))
                     (_%$tl126274126292%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt126272126286%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl126274126292%_))
                    (let* ((_%$tgt126275126296%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl126274126292%_)))
                           (_%$hd126276126299%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt126275126296%_)))
                           (_%$tl126277126302%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt126275126296%_)))
                           (_%hd126306%_ _%$hd126276126299%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl126277126302%_))
                          (let* ((_%$tgt126278126308%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl126277126302%_)))
                                 (_%$hd126279126311%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt126278126308%_)))
                                 (_%$tl126280126314%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt126278126308%_)))
                                 (_%expr126318%_ _%$hd126279126311%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl126280126314%_))
                                        '())
                                (let* ((_%$e126320%_ _%hd126306%_)
                                       (_%$E126322126363%_
                                        (lambda ()
                                          (let ((_%$E126323126348%_
                                                 (lambda ()
                                                   (let* ((_%$E126324126335%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e126320%_))))
                  (_%ids126338%_ _%hd126306%_)
                  (_%len126340%_ (length _%ids126338%_))
                  (_%tmp126342%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp126342%_
                                       (cons (__compile _%expr126318%_) '())))
                           _%stx126267%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp126342%_
                                             (cons _%len126340%_ '())))
                                 _%stx126267%_)
                                (let ((__tmp126842
                                       (let ((__tmp126844
                                              (lambda (_%id126345%_
                                                       _%k126346%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id126345%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id126345%_)
                         (cons (cons '##values-ref
                                     (cons _%tmp126342%_
                                           (cons _%k126346%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx126267%_)
                                                    '#f)))
                                             (__tmp126843
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len126340%_))))
                                         (declare (not safe))
                                         (__filter-map2
                                          __tmp126844
                                          _%ids126338%_
                                          __tmp126843))))
                                  (declare (not safe))
                                  (__foldr1 cons '() __tmp126842)))))
              _%stx126267%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e126320%_))
                                                (let* ((_%$tgt126325126351%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e126320%_)))
                                                       (_%$hd126326126354%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt126325126351%_)))
                                                       (_%$tl126327126357%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt126325126351%_)))
                                                       (_%id126361%_
                                                        _%$hd126326126354%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl126327126357%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id126361%_)
                           (cons (__compile _%expr126318%_) '())))
               _%stx126267%_)
              (_%$E126323126348%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E126323126348%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e126320%_))
                                      (let* ((_%$tgt126328126366%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e126320%_)))
                                             (_%$hd126329126369%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt126328126366%_)))
                                             (_%$tl126330126372%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt126328126366%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd126329126369%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl126330126372%_))
                                                        '())
                                                (__compile _%expr126318%_)
                                                (_%$E126322126363%_))
                                            (_%$E126322126363%_)))
                                      (_%$E126322126363%_)))
                                (_%$E126271126283%_)))
                          (_%$E126271126283%_)))
                    (_%$E126271126283%_)))
              (_%$E126271126283%_)))))
    (define __compile-head-id
      (lambda (_%e126265%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e126265%_))
             _%e126265%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd126222%_)
        (let _%recur126224%_ ((_%rest126226%_ _%hd126222%_))
          (let* ((_%$e126228%_ _%rest126226%_)
                 (_%$E126230126248%_
                  (lambda ()
                    (let ((_%$E126231126245%_
                           (lambda ()
                             (let* ((_%$E126232126240%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e126228%_))))
                                    (_%tail126243%_ _%$e126228%_))
                               (__compile-head-id _%tail126243%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e126228%_))
                                  '())
                          '()
                          (_%$E126231126245%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e126228%_))
                (let* ((_%$tgt126233126251%_
                        (let () (declare (not safe)) (__AST-e _%$e126228%_)))
                       (_%$hd126234126254%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt126233126251%_)))
                       (_%$tl126235126257%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt126233126251%_)))
                       (_%hd126261%_ _%$hd126234126254%_)
                       (_%rest126263%_ _%$tl126235126257%_))
                  (cons (__compile-head-id _%hd126261%_)
                        (_%recur126224%_ _%rest126263%_)))
                (_%$E126230126248%_))))))
    (define __compile-lambda%
      (lambda (_%stx126169%_)
        (let* ((_%$e126171%_ _%stx126169%_)
               (_%$E126173126185%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e126171%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e126171%_))
              (let* ((_%$tgt126174126188%_
                      (let () (declare (not safe)) (__AST-e _%$e126171%_)))
                     (_%$hd126175126191%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt126174126188%_)))
                     (_%$tl126176126194%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt126174126188%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl126176126194%_))
                    (let* ((_%$tgt126177126198%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl126176126194%_)))
                           (_%$hd126178126201%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt126177126198%_)))
                           (_%$tl126179126204%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt126177126198%_)))
                           (_%hd126208%_ _%$hd126178126201%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl126179126204%_))
                          (let* ((_%$tgt126180126210%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl126179126204%_)))
                                 (_%$hd126181126213%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt126180126210%_)))
                                 (_%$tl126182126216%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt126180126210%_)))
                                 (_%body126220%_ _%$hd126181126213%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl126182126216%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd126208%_)
                                             (cons (__compile _%body126220%_)
                                                   '())))
                                 _%stx126169%_)
                                (_%$E126173126185%_)))
                          (_%$E126173126185%_)))
                    (_%$E126173126185%_)))
              (_%$E126173126185%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx125961%_)
        (letrec ((_%variadic?125963%_
                  (lambda (_%hd126134%_)
                    (let* ((_%$e126136%_ _%hd126134%_)
                           (_%$E126138126154%_
                            (lambda ()
                              (let ((_%$E126139126151%_
                                     (lambda ()
                                       (let ((_%$E126140126148%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e126136%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e126136%_))
                                            '())
                                    '#f
                                    (_%$E126139126151%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e126136%_))
                          (let* ((_%$tgt126141126157%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e126136%_)))
                                 (_%$hd126142126160%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt126141126157%_)))
                                 (_%$tl126143126163%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt126141126157%_)))
                                 (_%rest126167%_ _%$tl126143126163%_))
                            (_%variadic?125963%_ _%rest126167%_))
                          (_%$E126138126154%_)))))
                 (_%arity125964%_
                  (lambda (_%hd126099%_)
                    (let _%lp126101%_ ((_%rest126103%_ _%hd126099%_)
                                       (_%k126104%_ '0))
                      (let* ((_%$e126106%_ _%rest126103%_)
                             (_%$E126108126119%_
                              (lambda ()
                                (let ((_%$E126109126116%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e126106%_)))))
                                  _%k126104%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e126106%_))
                            (let* ((_%$tgt126110126122%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e126106%_)))
                                   (_%$hd126111126125%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt126110126122%_)))
                                   (_%$tl126112126128%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt126110126122%_)))
                                   (_%rest126132%_ _%$tl126112126128%_))
                              (_%lp126101%_
                               _%rest126132%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%k126104%_ '1))))
                            (_%$E126108126119%_))))))
                 (_%generate125965%_
                  (lambda (_%rest126026%_ _%args126027%_ _%len126028%_)
                    (let* ((_%$e126030%_ _%rest126026%_)
                           (_%$E126032126043%_
                            (lambda ()
                              (let ((_%$E126033126040%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e126030%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args126027%_ '())))
                                 _%stx125961%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e126030%_))
                          (let* ((_%$tgt126034126046%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e126030%_)))
                                 (_%$hd126035126049%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt126034126046%_)))
                                 (_%$tl126036126052%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt126034126046%_)))
                                 (_%clause126056%_ _%$hd126035126049%_)
                                 (_%rest126058%_ _%$tl126036126052%_)
                                 (_%$e126060%_ _%clause126056%_)
                                 (_%$E126062126071%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e126060%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e126060%_))
                                (let* ((_%$tgt126063126074%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e126060%_)))
                                       (_%$hd126064126077%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt126063126074%_)))
                                       (_%$tl126065126080%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt126063126074%_)))
                                       (_%hd126084%_ _%$hd126064126077%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl126065126080%_))
                                      (let* ((_%$tgt126066126086%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl126065126080%_)))
                                             (_%$hd126067126089%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt126066126086%_)))
                                             (_%$tl126068126092%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt126066126086%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl126068126092%_))
                                                    '())
                                            (let ((_%clen126096%_
                                                   (_%arity125964%_
                                                    _%hd126084%_))
                                                  (_%cmp126097%_
                                                   (if (_%variadic?125963%_
                                                        _%hd126084%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp126097%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len126028%_ (cons _%clen126096%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause126056%_))
                                      (cons _%args126027%_ '())))
                          _%stx125961%_)
                         (cons (_%generate125965%_
                                _%rest126058%_
                                _%args126027%_
                                _%len126028%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx125961%_))
                                            (_%$E126062126071%_)))
                                      (_%$E126062126071%_)))
                                (_%$E126062126071%_)))
                          (_%$E126032126043%_))))))
          (let* ((_%$e125967%_ _%stx125961%_)
                 (_%$E125969126001%_
                  (lambda ()
                    (let ((_%$E125970125983%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e125967%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e125967%_))
                          (let* ((_%$tgt125971125986%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e125967%_)))
                                 (_%$hd125972125989%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt125971125986%_)))
                                 (_%$tl125973125992%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt125971125986%_)))
                                 (_%clauses125996%_ _%$tl125973125992%_))
                            (let ((_%args125998%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx125961%_))
                                  (_%len125999%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx125961%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args125998%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len125999%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args125998%_ '()))
                                         _%stx125961%_)
                                        '()))
                            '())
                      (cons (_%generate125965%_
                             _%clauses125996%_
                             _%args125998%_
                             _%len125999%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx125961%_)
                                                 '())))
                               _%stx125961%_)))
                          (_%$E125970125983%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e125967%_))
                (let* ((_%$tgt125974126004%_
                        (let () (declare (not safe)) (__AST-e _%$e125967%_)))
                       (_%$hd125975126007%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt125974126004%_)))
                       (_%$tl125976126010%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt125974126004%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl125976126010%_))
                      (let* ((_%$tgt125977126014%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl125976126010%_)))
                             (_%$hd125978126017%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt125977126014%_)))
                             (_%$tl125979126020%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt125977126014%_)))
                             (_%clause126024%_ _%$hd125978126017%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl125979126020%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause126024%_))
                            (_%$E125969126001%_)))
                      (_%$E125969126001%_)))
                (_%$E125969126001%_))))))
    (define __compile-let-form
      (lambda (_%stx125730%_ _%compile-simple125731%_ _%compile-values125732%_)
        (letrec ((_%simple-bind?125734%_
                  (lambda (_%hd125919%_)
                    (let* ((_%hd125920125930%_ _%hd125919%_)
                           (_%else125923125938%_ (lambda () '#f)))
                      (let ((_%K125926125951%_ (lambda (_%id125949%_) '#t))
                            (_%K125925125943%_ (lambda () '#t)))
                        (let ((_%try-match125922125946%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd125920125930%_ '#f))
                                     (_%K125925125943%_)
                                     (_%else125923125938%_)))))
                          (if (pair? _%hd125920125930%_)
                              (let ((_%tl125928125956%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd125920125930%_)))
                                    (_%hd125927125954%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd125920125930%_))))
                                (if (null? _%tl125928125956%_)
                                    (let ((_%id125959%_ _%hd125927125954%_))
                                      (_%K125926125951%_ _%id125959%_))
                                    (_%try-match125922125946%_)))
                              (_%try-match125922125946%_)))))))
                 (_%car-e125735%_
                  (lambda (_%hd125917%_)
                    (if (pair? _%hd125917%_)
                        (let () (declare (not safe)) (##car _%hd125917%_))
                        _%hd125917%_))))
          (let* ((_%$e125737%_ _%stx125730%_)
                 (_%$E125739125882%_
                  (lambda ()
                    (let ((_%$E125740125762%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e125737%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e125737%_))
                          (let* ((_%$tgt125741125765%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e125737%_)))
                                 (_%$hd125742125768%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt125741125765%_)))
                                 (_%$tl125743125771%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt125741125765%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl125743125771%_))
                                (let* ((_%$tgt125744125775%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl125743125771%_)))
                                       (_%$hd125745125778%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt125744125775%_)))
                                       (_%$tl125746125781%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt125744125775%_)))
                                       (_%hd125785%_ _%$hd125745125778%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl125746125781%_))
                                      (let* ((_%$tgt125747125787%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl125746125781%_)))
                                             (_%$hd125748125790%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt125747125787%_)))
                                             (_%$tl125749125793%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt125747125787%_)))
                                             (_%body125797%_
                                              _%$hd125748125790%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl125749125793%_))
                                                    '())
                                            (let* ((_%hd-ids125837%_
                                                    (map (lambda (_%bind125799%_)
                                                           (let* ((_%$e125801%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind125799%_)
                          (_%$E125803125812%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e125801%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e125801%_))
                         (let* ((_%$tgt125804125815%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e125801%_)))
                                (_%$hd125805125818%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt125804125815%_)))
                                (_%$tl125806125821%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt125804125815%_)))
                                (_%ids125825%_ _%$hd125805125818%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl125806125821%_))
                               (let* ((_%$tgt125807125827%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl125806125821%_)))
                                      (_%$hd125808125830%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt125807125827%_)))
                                      (_%$tl125809125833%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt125807125827%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl125809125833%_))
                                             '())
                                     _%ids125825%_
                                     (_%$E125803125812%_)))
                               (_%$E125803125812%_)))
                         (_%$E125803125812%_))))
                 _%hd125785%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs125877%_
                                                    (map (lambda (_%bind125839%_)
                                                           (let* ((_%$e125841%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind125839%_)
                          (_%$E125843125852%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e125841%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e125841%_))
                         (let* ((_%$tgt125844125855%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e125841%_)))
                                (_%$hd125845125858%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt125844125855%_)))
                                (_%$tl125846125861%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt125844125855%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl125846125861%_))
                               (let* ((_%$tgt125847125865%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl125846125861%_)))
                                      (_%$hd125848125868%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt125847125865%_)))
                                      (_%$tl125849125871%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt125847125865%_)))
                                      (_%expr125875%_ _%$hd125848125868%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl125849125871%_))
                                             '())
                                     (__compile _%expr125875%_)
                                     (_%$E125843125852%_)))
                               (_%$E125843125852%_)))
                         (_%$E125843125852%_))))
                 _%hd125785%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body125879%_
                                                    (__compile
                                                     _%body125797%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__andmap1
                                                     _%simple-bind?125734%_
                                                     _%hd-ids125837%_))
                                                  (_%compile-simple125731%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e125735%_
                                                            _%hd-ids125837%_))
                                                   _%exprs125877%_
                                                   _%body125879%_)
                                                  (_%compile-values125732%_
                                                   _%hd-ids125837%_
                                                   _%exprs125877%_
                                                   _%body125879%_)))
                                            (_%$E125740125762%_)))
                                      (_%$E125740125762%_)))
                                (_%$E125740125762%_)))
                          (_%$E125740125762%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e125737%_))
                (let* ((_%$tgt125750125885%_
                        (let () (declare (not safe)) (__AST-e _%$e125737%_)))
                       (_%$hd125751125888%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt125750125885%_)))
                       (_%$tl125752125891%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt125750125885%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl125752125891%_))
                      (let* ((_%$tgt125753125895%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl125752125891%_)))
                             (_%$hd125754125898%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt125753125895%_)))
                             (_%$tl125755125901%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt125753125895%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd125754125898%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl125755125901%_))
                                (let* ((_%$tgt125756125905%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl125755125901%_)))
                                       (_%$hd125757125908%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt125756125905%_)))
                                       (_%$tl125758125911%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt125756125905%_)))
                                       (_%body125915%_ _%$hd125757125908%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl125758125911%_))
                                              '())
                                      (__compile _%body125915%_)
                                      (_%$E125739125882%_)))
                                (_%$E125739125882%_))
                            (_%$E125739125882%_)))
                      (_%$E125739125882%_)))
                (_%$E125739125882%_))))))
    (define __compile-let-values%
      (lambda (_%stx125542%_)
        (letrec ((_%compile-simple125544%_
                  (lambda (_%hd-ids125726%_ _%exprs125727%_ _%body125728%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp126845
                                        (map __compile-head-id
                                             _%hd-ids125726%_)))
                                   (declare (not safe))
                                   (##map list __tmp126845 _%exprs125727%_))
                                 (cons _%body125728%_ '())))
                     _%stx125542%_)))
                 (_%compile-values125545%_
                  (lambda (_%hd-ids125641%_ _%exprs125642%_ _%body125643%_)
                    (let _%lp125645%_ ((_%rest125647%_ _%hd-ids125641%_)
                                       (_%exprs125648%_ _%exprs125642%_)
                                       (_%bind125649%_ '())
                                       (_%post125650%_ '()))
                      (let* ((_%rest125651125665%_ _%rest125647%_)
                             (_%else125654125673%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind125649%_)
                                             (cons (_%compile-post125546%_
                                                    _%post125650%_
                                                    _%body125643%_)
                                                   '())))
                                 _%stx125542%_))))
                        (let ((_%K125659125709%_
                               (lambda (_%rest125706%_ _%id125707%_)
                                 (_%lp125645%_
                                  _%rest125706%_
                                  (cdr _%exprs125648%_)
                                  (cons (cons (__compile-head-id _%id125707%_)
                                              (cons (car _%exprs125648%_) '()))
                                        _%bind125649%_)
                                  _%post125650%_)))
                              (_%K125656125691%_
                               (lambda (_%rest125677%_ _%hd125678%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd125678%_))
                                     (_%lp125645%_
                                      _%rest125677%_
                                      (cdr _%exprs125648%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd125678%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs125648%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind125649%_)
                                      _%post125650%_)
                                     (if (list? _%hd125678%_)
                                         (let* ((_%len125682%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd125678%_)))
                                                (_%tmp125684%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp125645%_
                                            _%rest125677%_
                                            (cdr _%exprs125648%_)
                                            (cons (cons _%tmp125684%_
                                                        (cons (car _%exprs125648%_)
                                                              '()))
                                                  _%bind125649%_)
                                            (cons (cons _%tmp125684%_
                                                        (cons _%len125682%_
                                                              (let ((__tmp126847
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id125687%_ _%k125688%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id125687%_))
                                   (cons (__SRC__0 _%id125687%_) _%k125688%_)
                                   '#f)))
                            (__tmp126846
                             (let ()
                               (declare (not safe))
                               (##iota _%len125682%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp126847 _%hd125678%_ __tmp126846))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post125650%_)))
                                         (__compile-error__%
                                          _%stx125542%_
                                          _%hd125678%_))))))
                          (if (pair? _%rest125651125665%_)
                              (let ((_%tl125661125714%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest125651125665%_)))
                                    (_%hd125660125712%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest125651125665%_))))
                                (if (pair? _%hd125660125712%_)
                                    (let ((_%tl125663125719%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd125660125712%_)))
                                          (_%hd125662125717%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd125660125712%_))))
                                      (if (null? _%tl125663125719%_)
                                          (let ((_%id125722%_
                                                 _%hd125662125717%_)
                                                (_%rest125724%_
                                                 _%tl125661125714%_))
                                            (_%K125659125709%_
                                             _%rest125724%_
                                             _%id125722%_))
                                          (let ((_%hd125699%_
                                                 _%hd125660125712%_)
                                                (_%rest125701%_
                                                 _%tl125661125714%_))
                                            (_%K125656125691%_
                                             _%rest125701%_
                                             _%hd125699%_))))
                                    (let ((_%hd125699%_ _%hd125660125712%_)
                                          (_%rest125701%_ _%tl125661125714%_))
                                      (_%K125656125691%_
                                       _%rest125701%_
                                       _%hd125699%_))))
                              (_%else125654125673%_)))))))
                 (_%compile-post125546%_
                  (lambda (_%post125548%_ _%body125549%_)
                    (let _%lp125551%_ ((_%rest125553%_ _%post125548%_)
                                       (_%check125554%_ '())
                                       (_%bind125555%_ '()))
                      (let* ((_%rest125556125568%_ _%rest125553%_)
                             (_%else125558125576%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp126848
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind125555%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body125549%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx125542%_)
                                                    '())))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp126848
                                          _%check125554%_)))
                                 _%stx125542%_)))
                             (_%K125560125615%_
                              (lambda (_%rest125579%_
                                       _%init125580%_
                                       _%len125581%_
                                       _%tmp125582%_)
                                (_%lp125551%_
                                 _%rest125579%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp125582%_
                                                    (cons _%len125581%_ '())))
                                        _%stx125542%_)
                                       _%check125554%_)
                                 (let ((__tmp126849
                                        (lambda (_%hd125584%_ _%r125585%_)
                                          (let* ((_%hd125586125593%_
                                                  _%hd125584%_)
                                                 (_%E125588125597%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd125586125593%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K125589125603%_
                                                  (lambda (_%k125600%_
                                                           _%id125601%_)
                                                    (cons (cons _%id125601%_
                                                                (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp125582%_
                                          (cons _%k125600%_ '())))
                              '()))
                  _%r125585%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd125586125593%_)
                                                (let ((_%hd125590125606%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd125586125593%_)))
                                                      (_%tl125591125608%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd125586125593%_))))
                                                  (let* ((_%id125611%_
                                                          _%hd125590125606%_)
                                                         (_%k125613%_
                                                          _%tl125591125608%_))
                                                    (_%K125589125603%_
                                                     _%k125613%_
                                                     _%id125611%_)))
                                                (_%E125588125597%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp126849
                                    _%bind125555%_
                                    _%init125580%_))))))
                        (if (pair? _%rest125556125568%_)
                            (let ((_%hd125561125618%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest125556125568%_)))
                                  (_%tl125562125620%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest125556125568%_))))
                              (if (pair? _%hd125561125618%_)
                                  (let ((_%hd125563125623%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd125561125618%_)))
                                        (_%tl125564125625%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd125561125618%_))))
                                    (let ((_%tmp125628%_ _%hd125563125623%_))
                                      (if (pair? _%tl125564125625%_)
                                          (let ((_%hd125565125630%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl125564125625%_)))
                                                (_%tl125566125632%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl125564125625%_))))
                                            (let* ((_%len125635%_
                                                    _%hd125565125630%_)
                                                   (_%init125637%_
                                                    _%tl125566125632%_)
                                                   (_%rest125639%_
                                                    _%tl125562125620%_))
                                              (_%K125560125615%_
                                               _%rest125639%_
                                               _%init125637%_
                                               _%len125635%_
                                               _%tmp125628%_)))
                                          (_%else125558125576%_))))
                                  (_%else125558125576%_)))
                            (_%else125558125576%_)))))))
          (__compile-let-form
           _%stx125542%_
           _%compile-simple125544%_
           _%compile-values125545%_))))
    (define __compile-letrec-values%
      (lambda (_%stx125339%_)
        (letrec ((_%compile-simple125341%_
                  (lambda (_%hd-ids125538%_ _%exprs125539%_ _%body125540%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp126850
                                        (map __compile-head-id
                                             _%hd-ids125538%_)))
                                   (declare (not safe))
                                   (##map list __tmp126850 _%exprs125539%_))
                                 (cons _%body125540%_ '())))
                     _%stx125339%_)))
                 (_%compile-values125342%_
                  (lambda (_%hd-ids125449%_ _%exprs125450%_ _%body125451%_)
                    (let _%lp125453%_ ((_%rest125455%_ _%hd-ids125449%_)
                                       (_%exprs125456%_ _%exprs125450%_)
                                       (_%pre125457%_ '())
                                       (_%bind125458%_ '())
                                       (_%post125459%_ '()))
                      (let* ((_%rest125460125474%_ _%rest125455%_)
                             (_%else125463125482%_
                              (lambda ()
                                (_%compile-inner125343%_
                                 _%pre125457%_
                                 _%bind125458%_
                                 _%post125459%_
                                 _%body125451%_))))
                        (let ((_%K125468125521%_
                               (lambda (_%rest125518%_ _%id125519%_)
                                 (_%lp125453%_
                                  _%rest125518%_
                                  (cdr _%exprs125456%_)
                                  _%pre125457%_
                                  (cons (cons (__compile-head-id _%id125519%_)
                                              (cons (car _%exprs125456%_) '()))
                                        _%bind125458%_)
                                  _%post125459%_)))
                              (_%K125465125503%_
                               (lambda (_%rest125486%_ _%hd125487%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd125487%_))
                                     (_%lp125453%_
                                      _%rest125486%_
                                      (cdr _%exprs125456%_)
                                      _%pre125457%_
                                      (cons (cons (__compile-head-id
                                                   _%hd125487%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs125456%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind125458%_)
                                      _%post125459%_)
                                     (if (list? _%hd125487%_)
                                         (let* ((_%len125491%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd125487%_)))
                                                (_%tmp125493%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp125453%_
                                            _%rest125486%_
                                            (cdr _%exprs125456%_)
                                            (let ((__tmp126851
                                                   (lambda (_%id125496%_
                                                            _%r125497%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id125496%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id125496%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r125497%_)
                 _%r125497%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (__foldl1
                                               __tmp126851
                                               _%pre125457%_
                                               _%hd125487%_))
                                            (cons (cons _%tmp125493%_
                                                        (cons (car _%exprs125456%_)
                                                              '()))
                                                  _%bind125458%_)
                                            (cons (cons _%tmp125493%_
                                                        (cons _%len125491%_
                                                              (let ((__tmp126853
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id125499%_ _%k125500%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id125499%_))
                                   (cons (__SRC__0 _%id125499%_) _%k125500%_)
                                   '#f)))
                            (__tmp126852
                             (let ()
                               (declare (not safe))
                               (##iota _%len125491%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp126853 _%hd125487%_ __tmp126852))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post125459%_)))
                                         (__compile-error__%
                                          _%stx125339%_
                                          _%hd125487%_))))))
                          (if (pair? _%rest125460125474%_)
                              (let ((_%tl125470125526%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest125460125474%_)))
                                    (_%hd125469125524%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest125460125474%_))))
                                (if (pair? _%hd125469125524%_)
                                    (let ((_%tl125472125531%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd125469125524%_)))
                                          (_%hd125471125529%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd125469125524%_))))
                                      (if (null? _%tl125472125531%_)
                                          (let ((_%id125534%_
                                                 _%hd125471125529%_)
                                                (_%rest125536%_
                                                 _%tl125470125526%_))
                                            (_%K125468125521%_
                                             _%rest125536%_
                                             _%id125534%_))
                                          (let ((_%hd125511%_
                                                 _%hd125469125524%_)
                                                (_%rest125513%_
                                                 _%tl125470125526%_))
                                            (_%K125465125503%_
                                             _%rest125513%_
                                             _%hd125511%_))))
                                    (let ((_%hd125511%_ _%hd125469125524%_)
                                          (_%rest125513%_ _%tl125470125526%_))
                                      (_%K125465125503%_
                                       _%rest125513%_
                                       _%hd125511%_))))
                              (_%else125463125482%_)))))))
                 (_%compile-inner125343%_
                  (lambda (_%pre125444%_
                           _%bind125445%_
                           _%post125446%_
                           _%body125447%_)
                    (if (null? _%pre125444%_)
                        (_%compile-bind125344%_
                         _%bind125445%_
                         _%post125446%_
                         _%body125447%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre125444%_)
                                     (cons (_%compile-bind125344%_
                                            _%bind125445%_
                                            _%post125446%_
                                            _%body125447%_)
                                           '())))
                         _%stx125339%_))))
                 (_%compile-bind125344%_
                  (lambda (_%bind125440%_ _%post125441%_ _%body125442%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind125440%_)
                                 (cons (_%compile-post125345%_
                                        _%post125441%_
                                        _%body125442%_)
                                       '())))
                     _%stx125339%_)))
                 (_%compile-post125345%_
                  (lambda (_%post125347%_ _%body125348%_)
                    (let _%lp125350%_ ((_%rest125352%_ _%post125347%_)
                                       (_%check125353%_ '())
                                       (_%bind125354%_ '()))
                      (let* ((_%rest125355125367%_ _%rest125352%_)
                             (_%else125357125375%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp126854
                                              (let ((__tmp126855
                                                     (cons _%body125348%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp126855
                                                 _%bind125354%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp126854
                                          _%check125353%_)))
                                 _%stx125339%_)))
                             (_%K125359125414%_
                              (lambda (_%rest125378%_
                                       _%init125379%_
                                       _%len125380%_
                                       _%tmp125381%_)
                                (_%lp125350%_
                                 _%rest125378%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp125381%_
                                                    (cons _%len125380%_ '())))
                                        _%stx125339%_)
                                       _%check125353%_)
                                 (let ((__tmp126856
                                        (lambda (_%hd125383%_ _%r125384%_)
                                          (let* ((_%hd125385125392%_
                                                  _%hd125383%_)
                                                 (_%E125387125396%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd125385125392%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K125388125402%_
                                                  (lambda (_%k125399%_
                                                           _%id125400%_)
                                                    (cons (cons 'set!
                                                                (cons _%id125400%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##values-ref
                                          (cons _%tmp125381%_
                                                (cons _%k125399%_ '())))
                                    '())))
                  _%r125384%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd125385125392%_)
                                                (let ((_%hd125389125405%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd125385125392%_)))
                                                      (_%tl125390125407%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd125385125392%_))))
                                                  (let* ((_%id125410%_
                                                          _%hd125389125405%_)
                                                         (_%k125412%_
                                                          _%tl125390125407%_))
                                                    (_%K125388125402%_
                                                     _%k125412%_
                                                     _%id125410%_)))
                                                (_%E125387125396%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp126856
                                    _%bind125354%_
                                    _%init125379%_))))))
                        (if (pair? _%rest125355125367%_)
                            (let ((_%hd125360125417%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest125355125367%_)))
                                  (_%tl125361125419%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest125355125367%_))))
                              (if (pair? _%hd125360125417%_)
                                  (let ((_%hd125362125422%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd125360125417%_)))
                                        (_%tl125363125424%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd125360125417%_))))
                                    (let ((_%tmp125427%_ _%hd125362125422%_))
                                      (if (pair? _%tl125363125424%_)
                                          (let ((_%hd125364125429%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl125363125424%_)))
                                                (_%tl125365125431%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl125363125424%_))))
                                            (let* ((_%len125434%_
                                                    _%hd125364125429%_)
                                                   (_%init125436%_
                                                    _%tl125365125431%_)
                                                   (_%rest125438%_
                                                    _%tl125361125419%_))
                                              (_%K125359125414%_
                                               _%rest125438%_
                                               _%init125436%_
                                               _%len125434%_
                                               _%tmp125427%_)))
                                          (_%else125357125375%_))))
                                  (_%else125357125375%_)))
                            (_%else125357125375%_)))))))
          (__compile-let-form
           _%stx125339%_
           _%compile-simple125341%_
           _%compile-values125342%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx125090%_)
        (letrec ((_%compile-simple125092%_
                  (lambda (_%hd-ids125335%_ _%exprs125336%_ _%body125337%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp126857
                                        (map __compile-head-id
                                             _%hd-ids125335%_)))
                                   (declare (not safe))
                                   (##map list __tmp126857 _%exprs125336%_))
                                 (cons _%body125337%_ '())))
                     _%stx125090%_)))
                 (_%compile-values125093%_
                  (lambda (_%hd-ids125242%_ _%exprs125243%_ _%body125244%_)
                    (let _%lp125246%_ ((_%rest125248%_ _%hd-ids125242%_)
                                       (_%exprs125249%_ _%exprs125243%_)
                                       (_%bind125250%_ '())
                                       (_%post125251%_ '()))
                      (let* ((_%rest125252125266%_ _%rest125248%_)
                             (_%else125255125274%_
                              (lambda ()
                                (_%compile-bind125094%_
                                 _%bind125250%_
                                 _%post125251%_
                                 _%body125244%_))))
                        (let ((_%K125260125318%_
                               (lambda (_%rest125313%_ _%hd125314%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd125314%_))
                                     (let ((_%id125316%_
                                            (__SRC__0 _%hd125314%_)))
                                       (_%lp125246%_
                                        _%rest125313%_
                                        (cdr _%exprs125249%_)
                                        (cons (cons _%id125316%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind125250%_)
                                        (cons (cons _%id125316%_
                                                    (cons (car _%exprs125249%_)
                                                          '()))
                                              _%post125251%_)))
                                     (_%lp125246%_
                                      _%rest125313%_
                                      (cdr _%exprs125249%_)
                                      _%bind125250%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs125249%_)
                                                        '()))
                                            _%post125251%_)))))
                              (_%K125257125298%_
                               (lambda (_%rest125278%_ _%hd125279%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd125279%_))
                                     (let ((_%id125282%_
                                            (__SRC__0 _%hd125279%_)))
                                       (_%lp125246%_
                                        _%rest125278%_
                                        (cdr _%exprs125249%_)
                                        (cons (cons _%id125282%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind125250%_)
                                        (cons (cons _%id125282%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs125249%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post125251%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd125279%_))
                                         (if (list? _%hd125279%_)
                                             (let* ((_%len125286%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd125279%_)))
                                                    (_%tmp125288%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp125246%_
                                                _%rest125278%_
                                                (cdr _%exprs125249%_)
                                                (let ((__tmp126858
                                                       (lambda (_%id125291%_
                                                                _%r125292%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id125291%_))
                     (cons (cons (__SRC__0 _%id125291%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r125292%_)
                     _%r125292%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldl1
                                                   __tmp126858
                                                   _%bind125250%_
                                                   _%hd125279%_))
                                                (cons (cons _%tmp125288%_
                                                            (cons (car _%exprs125249%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len125286%_
                                (let ((__tmp126860
                                       (lambda (_%id125294%_ _%k125295%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id125294%_))
                                             (cons (__SRC__0 _%id125294%_)
                                                   _%k125295%_)
                                             '#f)))
                                      (__tmp126859
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len125286%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp126860
                                   _%hd125279%_
                                   __tmp126859)))))
              _%post125251%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx125090%_
                                              _%hd125279%_))
                                         (_%lp125246%_
                                          _%rest125278%_
                                          (cdr _%exprs125249%_)
                                          _%bind125250%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs125249%_)
                                                            '()))
                                                _%post125251%_)))))))
                          (if (pair? _%rest125252125266%_)
                              (let ((_%tl125262125323%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest125252125266%_)))
                                    (_%hd125261125321%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest125252125266%_))))
                                (if (pair? _%hd125261125321%_)
                                    (let ((_%tl125264125328%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd125261125321%_)))
                                          (_%hd125263125326%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd125261125321%_))))
                                      (if (null? _%tl125264125328%_)
                                          (let ((_%hd125331%_
                                                 _%hd125263125326%_)
                                                (_%rest125333%_
                                                 _%tl125262125323%_))
                                            (_%K125260125318%_
                                             _%rest125333%_
                                             _%hd125331%_))
                                          (let ((_%hd125306%_
                                                 _%hd125261125321%_)
                                                (_%rest125308%_
                                                 _%tl125262125323%_))
                                            (_%K125257125298%_
                                             _%rest125308%_
                                             _%hd125306%_))))
                                    (let ((_%hd125306%_ _%hd125261125321%_)
                                          (_%rest125308%_ _%tl125262125323%_))
                                      (_%K125257125298%_
                                       _%rest125308%_
                                       _%hd125306%_))))
                              (_%else125255125274%_)))))))
                 (_%compile-bind125094%_
                  (lambda (_%bind125238%_ _%post125239%_ _%body125240%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind125238%_)
                                 (cons (_%compile-post125095%_
                                        _%post125239%_
                                        _%body125240%_)
                                       '())))
                     _%stx125090%_)))
                 (_%compile-post125095%_
                  (lambda (_%post125097%_ _%body125098%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp126861
                                  (let ((__tmp126863
                                         (lambda (_%hd125100%_ _%r125101%_)
                                           (let* ((_%hd125102125125%_
                                                   _%hd125100%_)
                                                  (_%E125106125129%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd125102125125%_
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
                                             (let ((_%K125119125223%_
                                                    (lambda (_%expr125221%_)
                                                      (cons _%expr125221%_
                                                            _%r125101%_)))
                                                   (_%K125114125201%_
                                                    (lambda (_%expr125198%_
                                                             _%id125199%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id125199%_ (cons _%expr125198%_ '())))
                     _%stx125090%_)
                    _%r125101%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K125107125168%_
                                                    (lambda (_%init125133%_
                                                             _%len125134%_
                                                             _%expr125135%_
                                                             _%tmp125136%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp125136%_
                                             (cons _%expr125135%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp125136%_
                                                    (cons _%len125134%_ '())))
                                        _%stx125090%_)
                                       (let ((__tmp126864
                                              (map (lambda (_%hd125138%_)
                                                     (let* ((_%hd125139125146%_
                                                             _%hd125138%_)
                                                            (_%E125141125150%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd125139125146%_
                                '([id . k])))
                       '#!void))
                    (_%K125142125156%_
                     (lambda (_%k125153%_ _%id125154%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id125154%_
                                    (cons (cons '##values-ref
                                                (cons _%tmp125136%_
                                                      (cons _%k125153%_ '())))
                                          '())))
                        _%stx125090%_))))
               (if (pair? _%hd125139125146%_)
                   (let ((_%hd125143125159%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd125139125146%_)))
                         (_%tl125144125161%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd125139125146%_))))
                     (let* ((_%id125164%_ _%hd125143125159%_)
                            (_%k125166%_ _%tl125144125161%_))
                       (_%K125142125156%_ _%k125166%_ _%id125164%_)))
                   (_%E125141125150%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init125133%_)))
                                         (declare (not safe))
                                         (__foldr1 cons '() __tmp126864)))))
                     _%stx125090%_)
                    _%r125101%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match126717126718%_
                                                       (lambda (_%hd125108125171%_
                                                                _%tl125109125173%_
                                                                _%hd125110125178%_
                                                                _%tl125111125180%_)
                                                         (let ((_%tmp125176%_
                                                                _%hd125108125171%_)
                                                               (_%expr125183%_
                                                                _%hd125110125178%_))
                                                           (_%E125106125129%_))))
                                                      (_%__match126711126712%_
                                                       (lambda (_%hd125108125171%_
                                                                _%tl125109125173%_)
                                                         (let ((_%tmp125176%_
                                                                _%hd125108125171%_))
                                                           (_%E125106125129%_)))))
                                                 (if (pair? _%hd125102125125%_)
                                                     (let ((_%tl125121125228%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd125102125125%_)))
                                                           (_%hd125120125226%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd125102125125%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd125120125226%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%tl125121125228%_)
                       (let ((_%tl125123125233%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl125121125228%_)))
                             (_%hd125122125231%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl125121125228%_))))
                         (if (null? _%tl125123125233%_)
                             (let ((_%expr125236%_ _%hd125122125231%_))
                               (_%K125119125223%_ _%expr125236%_))
                             (if (pair? _%tl125123125233%_)
                                 (let ((_%tl125113125187%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl125123125233%_)))
                                       (_%hd125112125185%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl125123125233%_))))
                                   (let ((_%tmp125176%_ _%hd125120125226%_)
                                         (_%expr125183%_ _%hd125122125231%_)
                                         (_%len125190%_ _%hd125112125185%_)
                                         (_%init125192%_ _%tl125113125187%_))
                                     (_%K125107125168%_
                                      _%init125192%_
                                      _%len125190%_
                                      _%expr125183%_
                                      _%tmp125176%_)))
                                 (_%__match126717126718%_
                                  _%hd125120125226%_
                                  _%tl125121125228%_
                                  _%hd125122125231%_
                                  _%tl125123125233%_))))
                       (_%__match126711126712%_
                        _%hd125120125226%_
                        _%tl125121125228%_))
                   (if (pair? _%tl125121125228%_)
                       (let ((_%tl125118125213%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl125121125228%_)))
                             (_%hd125117125211%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl125121125228%_))))
                         (if (null? _%tl125118125213%_)
                             (let ((_%id125209%_ _%hd125120125226%_)
                                   (_%expr125216%_ _%hd125117125211%_))
                               (_%K125114125201%_ _%expr125216%_ _%id125209%_))
                             (if (pair? _%tl125118125213%_)
                                 (let ((_%tl125113125187%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl125118125213%_)))
                                       (_%hd125112125185%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl125118125213%_))))
                                   (let ((_%tmp125176%_ _%hd125120125226%_)
                                         (_%expr125183%_ _%hd125117125211%_)
                                         (_%len125190%_ _%hd125112125185%_)
                                         (_%init125192%_ _%tl125113125187%_))
                                     (_%K125107125168%_
                                      _%init125192%_
                                      _%len125190%_
                                      _%expr125183%_
                                      _%tmp125176%_)))
                                 (_%__match126717126718%_
                                  _%hd125120125226%_
                                  _%tl125121125228%_
                                  _%hd125117125211%_
                                  _%tl125118125213%_))))
                       (_%__match126711126712%_
                        _%hd125120125226%_
                        _%tl125121125228%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E125106125129%_)))))))
                                        (__tmp126862 (list _%body125098%_)))
                                    (declare (not safe))
                                    (__foldl1
                                     __tmp126863
                                     __tmp126862
                                     _%post125097%_))))
                             (declare (not safe))
                             (__foldr1 cons '() __tmp126861)))
                     _%stx125090%_))))
          (__compile-let-form
           _%stx125090%_
           _%compile-simple125092%_
           _%compile-values125093%_))))
    (define __compile-call%
      (lambda (_%stx125050%_)
        (let* ((_%$e125052%_ _%stx125050%_)
               (_%$E125054125063%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e125052%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e125052%_))
              (let* ((_%$tgt125055125066%_
                      (let () (declare (not safe)) (__AST-e _%$e125052%_)))
                     (_%$hd125056125069%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt125055125066%_)))
                     (_%$tl125057125072%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt125055125066%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl125057125072%_))
                    (let* ((_%$tgt125058125076%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl125057125072%_)))
                           (_%$hd125059125079%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt125058125076%_)))
                           (_%$tl125060125082%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt125058125076%_)))
                           (_%rator125086%_ _%$hd125059125079%_)
                           (_%rands125088%_ _%$tl125060125082%_))
                      (__SRC__%
                       (cons (__compile _%rator125086%_)
                             (map __compile _%rands125088%_))
                       _%stx125050%_))
                    (_%$E125054125063%_)))
              (_%$E125054125063%_)))))
    (define __compile-ref%
      (lambda (_%stx125012%_)
        (let* ((_%$e125014%_ _%stx125012%_)
               (_%$E125016125025%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e125014%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e125014%_))
              (let* ((_%$tgt125017125028%_
                      (let () (declare (not safe)) (__AST-e _%$e125014%_)))
                     (_%$hd125018125031%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt125017125028%_)))
                     (_%$tl125019125034%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt125017125028%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl125019125034%_))
                    (let* ((_%$tgt125020125038%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl125019125034%_)))
                           (_%$hd125021125041%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt125020125038%_)))
                           (_%$tl125022125044%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt125020125038%_)))
                           (_%id125048%_ _%$hd125021125041%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl125022125044%_))
                                  '())
                          (__SRC__% _%id125048%_ _%stx125012%_)
                          (_%$E125016125025%_)))
                    (_%$E125016125025%_)))
              (_%$E125016125025%_)))))
    (define __compile-setq%
      (lambda (_%stx124959%_)
        (let* ((_%$e124961%_ _%stx124959%_)
               (_%$E124963124975%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e124961%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e124961%_))
              (let* ((_%$tgt124964124978%_
                      (let () (declare (not safe)) (__AST-e _%$e124961%_)))
                     (_%$hd124965124981%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt124964124978%_)))
                     (_%$tl124966124984%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt124964124978%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl124966124984%_))
                    (let* ((_%$tgt124967124988%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl124966124984%_)))
                           (_%$hd124968124991%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt124967124988%_)))
                           (_%$tl124969124994%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt124967124988%_)))
                           (_%id124998%_ _%$hd124968124991%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl124969124994%_))
                          (let* ((_%$tgt124970125000%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl124969124994%_)))
                                 (_%$hd124971125003%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt124970125000%_)))
                                 (_%$tl124972125006%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt124970125000%_)))
                                 (_%expr125010%_ _%$hd124971125003%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl124972125006%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id124998%_
                                              _%stx124959%_)
                                             (cons (__compile _%expr125010%_)
                                                   '())))
                                 _%stx124959%_)
                                (_%$E124963124975%_)))
                          (_%$E124963124975%_)))
                    (_%$E124963124975%_)))
              (_%$E124963124975%_)))))
    (define __compile-if%
      (lambda (_%stx124891%_)
        (let* ((_%$e124893%_ _%stx124891%_)
               (_%$E124895124910%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e124893%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e124893%_))
              (let* ((_%$tgt124896124913%_
                      (let () (declare (not safe)) (__AST-e _%$e124893%_)))
                     (_%$hd124897124916%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt124896124913%_)))
                     (_%$tl124898124919%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt124896124913%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl124898124919%_))
                    (let* ((_%$tgt124899124923%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl124898124919%_)))
                           (_%$hd124900124926%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt124899124923%_)))
                           (_%$tl124901124929%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt124899124923%_)))
                           (_%p124933%_ _%$hd124900124926%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl124901124929%_))
                          (let* ((_%$tgt124902124935%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl124901124929%_)))
                                 (_%$hd124903124938%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt124902124935%_)))
                                 (_%$tl124904124941%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt124902124935%_)))
                                 (_%t124945%_ _%$hd124903124938%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl124904124941%_))
                                (let* ((_%$tgt124905124947%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl124904124941%_)))
                                       (_%$hd124906124950%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt124905124947%_)))
                                       (_%$tl124907124953%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt124905124947%_)))
                                       (_%f124957%_ _%$hd124906124950%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl124907124953%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p124933%_)
                                                   (cons (__compile
                                                          _%t124945%_)
                                                         (cons (__compile
                                                                _%f124957%_)
                                                               '()))))
                                       _%stx124891%_)
                                      (_%$E124895124910%_)))
                                (_%$E124895124910%_)))
                          (_%$E124895124910%_)))
                    (_%$E124895124910%_)))
              (_%$E124895124910%_)))))
    (define __compile-quote%
      (lambda (_%stx124853%_)
        (let* ((_%$e124855%_ _%stx124853%_)
               (_%$E124857124866%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e124855%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e124855%_))
              (let* ((_%$tgt124858124869%_
                      (let () (declare (not safe)) (__AST-e _%$e124855%_)))
                     (_%$hd124859124872%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt124858124869%_)))
                     (_%$tl124860124875%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt124858124869%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl124860124875%_))
                    (let* ((_%$tgt124861124879%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl124860124875%_)))
                           (_%$hd124862124882%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt124861124879%_)))
                           (_%$tl124863124885%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt124861124879%_)))
                           (_%e124889%_ _%$hd124862124882%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl124863124885%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e124889%_))
                                       '()))
                           _%stx124853%_)
                          (_%$E124857124866%_)))
                    (_%$E124857124866%_)))
              (_%$E124857124866%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx124815%_)
        (let* ((_%$e124817%_ _%stx124815%_)
               (_%$E124819124828%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e124817%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e124817%_))
              (let* ((_%$tgt124820124831%_
                      (let () (declare (not safe)) (__AST-e _%$e124817%_)))
                     (_%$hd124821124834%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt124820124831%_)))
                     (_%$tl124822124837%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt124820124831%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl124822124837%_))
                    (let* ((_%$tgt124823124841%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl124822124837%_)))
                           (_%$hd124824124844%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt124823124841%_)))
                           (_%$tl124825124847%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt124823124841%_)))
                           (_%e124851%_ _%$hd124824124844%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl124825124847%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e124851%_ '()))
                           _%stx124815%_)
                          (_%$E124819124828%_)))
                    (_%$E124819124828%_)))
              (_%$E124819124828%_)))))
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

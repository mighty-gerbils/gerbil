(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1779274770)
  (begin
    (define __syntax::t
      (let ((__tmp170135 (list)) (__tmp170134 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp170135
         '(e id)
         __tmp170134
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args169939%_
        (apply make-instance __syntax::t _%$args169939%_)))
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
      (let ((__tmp170137 (list __syntax::t))
            (__tmp170136 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp170137
         '()
         __tmp170136
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args169936%_
        (apply make-instance __core-form::t _%$args169936%_)))
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
      (let ((__tmp170139 (list __core-form::t))
            (__tmp170138 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp170139
         '()
         __tmp170138
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args169933%_
        (apply make-instance __core-expression::t _%$args169933%_)))
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
      (let ((__tmp170141 (list __core-form::t))
            (__tmp170140 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp170141
         '()
         __tmp170140
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args169930%_
        (apply make-instance __core-special-form::t _%$args169930%_)))
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
      (lambda (_%id169904%_)
        (let* ((_%h169906%_ __core)
               (_%key169909%_
                (let () (declare (not safe)) (__AST-e _%id169904%_)))
               (_%h169916%_
                (let ((_%$obj169913%_ _%h169906%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj169913%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj169913%_)))
                           '#t)
                      _%$obj169913%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj169913%_)))))
               (_%h169918%_ _%h169916%_))
          (declare (not safe))
          (__hash-get _%h169918%_ _%key169909%_))))
    (define __core-bound-id?__%
      (lambda (_%id169887%_ _%is?169888%_)
        (let ((_%$e169890%_ (__core-resolve _%id169887%_)))
          (if _%$e169890%_ (_%is?169888%_ _%$e169890%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id169897%_)
        (let ((_%is?169899%_ true))
          (__core-bound-id?__% _%id169897%_ _%is?169899%_))))
    (define __core-bound-id?
      (lambda _g170142_
        (let ((_g170143_ (let () (declare (not safe)) (##length _g170142_))))
          (cond ((let () (declare (not safe)) (##fx= _g170143_ 1))
                 (apply __core-bound-id?__0 _g170142_))
                ((let () (declare (not safe)) (##fx= _g170143_ 2))
                 (apply __core-bound-id?__% _g170142_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g170142_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id169842%_ _%e169843%_ _%make169844%_)
        (let* ((_%h169846%_ __core)
               (_%key169849%_ _%id169842%_)
               (_%value169852%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%e169843%_
                       'gerbil/runtime/eval#__syntax::t))
                    _%e169843%_
                    (_%make169844%_ _%e169843%_ _%id169842%_)))
               (_%h169859%_
                (let ((_%$obj169856%_ _%h169846%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj169856%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj169856%_)))
                           '#t)
                      _%$obj169856%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj169856%_)))))
               (_%h169861%_ _%h169859%_))
          (declare (not safe))
          (__hash-put! _%h169861%_ _%key169849%_ _%value169852%_))))
    (define __core-bind-syntax!__0
      (lambda (_%id169877%_ _%e169878%_)
        (let ((_%make169880%_ make-__syntax))
          (__core-bind-syntax!__% _%id169877%_ _%e169878%_ _%make169880%_))))
    (define __core-bind-syntax!
      (lambda _g170144_
        (let ((_g170145_ (let () (declare (not safe)) (##length _g170144_))))
          (cond ((let () (declare (not safe)) (##fx= _g170145_ 2))
                 (apply __core-bind-syntax!__0 _g170144_))
                ((let () (declare (not safe)) (##fx= _g170145_ 3))
                 (apply __core-bind-syntax!__% _g170144_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g170144_))))))
    (define __SRC__%
      (lambda (_%e169822%_ _%src-stx169823%_)
        (if (or (pair? _%e169822%_) (symbol? _%e169822%_))
            (let ((__tmp170146
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx169823%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx169823%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e169822%_ __tmp170146))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e169822%_ 'gerbil#AST::t))
                (let ((__tmp170148
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e169822%_ '1 '#f '#f)))
                      (__tmp170147
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e169822%_)))))
                  (declare (not safe))
                  (##make-source __tmp170148 __tmp170147))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e169822%_))))))
    (define __SRC__0
      (lambda (_%e169834%_)
        (let ((_%src-stx169836%_ '#f))
          (__SRC__% _%e169834%_ _%src-stx169836%_))))
    (define __SRC
      (lambda _g170149_
        (let ((_g170150_ (let () (declare (not safe)) (##length _g170149_))))
          (cond ((let () (declare (not safe)) (##fx= _g170150_ 1))
                 (apply __SRC__0 _g170149_))
                ((let () (declare (not safe)) (##fx= _g170150_ 2))
                 (apply __SRC__% _g170149_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g170149_))))))
    (define __locat
      (lambda (_%loc169819%_)
        (if (let () (declare (not safe)) (##locat? _%loc169819%_))
            _%loc169819%_
            '#f)))
    (define __check-values
      (lambda (_%obj169814%_ _%k169815%_)
        (let ((_%count169817%_
               (if (let () (declare (not safe)) (##values? _%obj169814%_))
                   (let ()
                     (declare (not safe))
                     (##values-length _%obj169814%_))
                   '1)))
          (if (fx= _%count169817%_ _%k169815%_)
              '#!void
              (let ((__tmp170152
                     (if (fx< _%count169817%_ _%k169815%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp170151
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj169814%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj169814%_))
                         _%obj169814%_)))
                (declare (not safe))
                (error __tmp170152 __tmp170151 _%k169815%_))))))
    (define __compile
      (lambda (_%stx169783%_)
        (let* ((_%$e169785%_ _%stx169783%_)
               (_%$E169787169793%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e169785%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e169785%_))
              (let* ((_%$tgt169788169796%_
                      (let () (declare (not safe)) (__AST-e _%$e169785%_)))
                     (_%$hd169789169799%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt169788169796%_)))
                     (_%$tl169790169802%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt169788169796%_)))
                     (_%form169806%_ _%$hd169789169799%_)
                     (_%$e169808%_ (__core-resolve _%form169806%_)))
                (if _%$e169808%_
                    ((lambda (_%bind169811%_)
                       ((##structure-ref _%bind169811%_ '1 __syntax::t '#f)
                        _%stx169783%_))
                     _%$e169808%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx169783%_
                       _%form169806%_))))
              (_%$E169787169793%_)))))
    (define __compile-error__%
      (lambda (_%stx169770%_ _%detail169771%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx169770%_
           _%detail169771%_))))
    (define __compile-error__0
      (lambda (_%stx169776%_)
        (let ((_%detail169778%_ '#f))
          (__compile-error__% _%stx169776%_ _%detail169778%_))))
    (define __compile-error
      (lambda _g170153_
        (let ((_g170154_ (let () (declare (not safe)) (##length _g170153_))))
          (cond ((let () (declare (not safe)) (##fx= _g170154_ 1))
                 (apply __compile-error__0 _g170153_))
                ((let () (declare (not safe)) (##fx= _g170154_ 2))
                 (apply __compile-error__% _g170153_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g170153_))))))
    (define __compile-ignore%
      (lambda (_%stx169767%_) (__SRC__% ''#!void _%stx169767%_)))
    (define __compile-begin%
      (lambda (_%stx169742%_)
        (let* ((_%$e169744%_ _%stx169742%_)
               (_%$E169746169752%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e169744%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e169744%_))
              (let* ((_%$tgt169747169755%_
                      (let () (declare (not safe)) (__AST-e _%$e169744%_)))
                     (_%$hd169748169758%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt169747169755%_)))
                     (_%$tl169749169761%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt169747169755%_)))
                     (_%body169765%_ _%$tl169749169761%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body169765%_))
                 _%stx169742%_))
              (_%$E169746169752%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx169717%_)
        (let* ((_%$e169719%_ _%stx169717%_)
               (_%$E169721169727%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e169719%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e169719%_))
              (let* ((_%$tgt169722169730%_
                      (let () (declare (not safe)) (__AST-e _%$e169719%_)))
                     (_%$hd169723169733%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt169722169730%_)))
                     (_%$tl169724169736%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt169722169730%_)))
                     (_%body169740%_ _%$tl169724169736%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body169740%_)))
                 _%stx169717%_))
              (_%$E169721169727%_)))))
    (define __compile-import%
      (lambda (_%stx169692%_)
        (let* ((_%$e169694%_ _%stx169692%_)
               (_%$E169696169702%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e169694%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e169694%_))
              (let* ((_%$tgt169697169705%_
                      (let () (declare (not safe)) (__AST-e _%$e169694%_)))
                     (_%$hd169698169708%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt169697169705%_)))
                     (_%$tl169699169711%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt169697169705%_)))
                     (_%body169715%_ _%$tl169699169711%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body169715%_ '())) '()))
                 _%stx169692%_))
              (_%$E169696169702%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx169639%_)
        (let* ((_%$e169641%_ _%stx169639%_)
               (_%$E169643169655%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e169641%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e169641%_))
              (let* ((_%$tgt169644169658%_
                      (let () (declare (not safe)) (__AST-e _%$e169641%_)))
                     (_%$hd169645169661%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt169644169658%_)))
                     (_%$tl169646169664%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt169644169658%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl169646169664%_))
                    (let* ((_%$tgt169647169668%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl169646169664%_)))
                           (_%$hd169648169671%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt169647169668%_)))
                           (_%$tl169649169674%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt169647169668%_)))
                           (_%ann169678%_ _%$hd169648169671%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl169649169674%_))
                          (let* ((_%$tgt169650169680%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl169649169674%_)))
                                 (_%$hd169651169683%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt169650169680%_)))
                                 (_%$tl169652169686%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt169650169680%_)))
                                 (_%expr169690%_ _%$hd169651169683%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl169652169686%_))
                                        '())
                                (__compile _%expr169690%_)
                                (_%$E169643169655%_)))
                          (_%$E169643169655%_)))
                    (_%$E169643169655%_)))
              (_%$E169643169655%_)))))
    (define __compile-define-values%
      (lambda (_%stx169530%_)
        (let* ((_%$e169532%_ _%stx169530%_)
               (_%$E169534169546%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e169532%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e169532%_))
              (let* ((_%$tgt169535169549%_
                      (let () (declare (not safe)) (__AST-e _%$e169532%_)))
                     (_%$hd169536169552%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt169535169549%_)))
                     (_%$tl169537169555%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt169535169549%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl169537169555%_))
                    (let* ((_%$tgt169538169559%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl169537169555%_)))
                           (_%$hd169539169562%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt169538169559%_)))
                           (_%$tl169540169565%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt169538169559%_)))
                           (_%hd169569%_ _%$hd169539169562%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl169540169565%_))
                          (let* ((_%$tgt169541169571%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl169540169565%_)))
                                 (_%$hd169542169574%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt169541169571%_)))
                                 (_%$tl169543169577%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt169541169571%_)))
                                 (_%expr169581%_ _%$hd169542169574%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl169543169577%_))
                                        '())
                                (let* ((_%$e169583%_ _%hd169569%_)
                                       (_%$E169585169626%_
                                        (lambda ()
                                          (let ((_%$E169586169611%_
                                                 (lambda ()
                                                   (let* ((_%$E169587169598%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e169583%_))))
                  (_%ids169601%_ _%hd169569%_)
                  (_%len169603%_ (length _%ids169601%_))
                  (_%tmp169605%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp169605%_
                                       (cons (__compile _%expr169581%_) '())))
                           _%stx169530%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp169605%_
                                             (cons _%len169603%_ '())))
                                 _%stx169530%_)
                                (let ((__tmp170155
                                       (let ((__tmp170157
                                              (lambda (_%id169608%_
                                                       _%k169609%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id169608%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id169608%_)
                         (cons (cons '##values-ref
                                     (cons _%tmp169605%_
                                           (cons _%k169609%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx169530%_)
                                                    '#f)))
                                             (__tmp170156
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len169603%_))))
                                         (declare (not safe))
                                         (filter-map__1
                                          __tmp170157
                                          _%ids169601%_
                                          __tmp170156))))
                                  (declare (not safe))
                                  (foldr__0 cons '() __tmp170155)))))
              _%stx169530%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e169583%_))
                                                (let* ((_%$tgt169588169614%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e169583%_)))
                                                       (_%$hd169589169617%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt169588169614%_)))
                                                       (_%$tl169590169620%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt169588169614%_)))
                                                       (_%id169624%_
                                                        _%$hd169589169617%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl169590169620%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id169624%_)
                           (cons (__compile _%expr169581%_) '())))
               _%stx169530%_)
              (_%$E169586169611%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E169586169611%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e169583%_))
                                      (let* ((_%$tgt169591169629%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e169583%_)))
                                             (_%$hd169592169632%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt169591169629%_)))
                                             (_%$tl169593169635%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt169591169629%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd169592169632%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl169593169635%_))
                                                        '())
                                                (__compile _%expr169581%_)
                                                (_%$E169585169626%_))
                                            (_%$E169585169626%_)))
                                      (_%$E169585169626%_)))
                                (_%$E169534169546%_)))
                          (_%$E169534169546%_)))
                    (_%$E169534169546%_)))
              (_%$E169534169546%_)))))
    (define __compile-head-id
      (lambda (_%e169528%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e169528%_))
             _%e169528%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd169485%_)
        (let _%recur169487%_ ((_%rest169489%_ _%hd169485%_))
          (let* ((_%$e169491%_ _%rest169489%_)
                 (_%$E169493169511%_
                  (lambda ()
                    (let ((_%$E169494169508%_
                           (lambda ()
                             (let* ((_%$E169495169503%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e169491%_))))
                                    (_%tail169506%_ _%$e169491%_))
                               (__compile-head-id _%tail169506%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e169491%_))
                                  '())
                          '()
                          (_%$E169494169508%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e169491%_))
                (let* ((_%$tgt169496169514%_
                        (let () (declare (not safe)) (__AST-e _%$e169491%_)))
                       (_%$hd169497169517%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt169496169514%_)))
                       (_%$tl169498169520%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt169496169514%_)))
                       (_%hd169524%_ _%$hd169497169517%_)
                       (_%rest169526%_ _%$tl169498169520%_))
                  (cons (__compile-head-id _%hd169524%_)
                        (_%recur169487%_ _%rest169526%_)))
                (_%$E169493169511%_))))))
    (define __compile-lambda%
      (lambda (_%stx169432%_)
        (let* ((_%$e169434%_ _%stx169432%_)
               (_%$E169436169448%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e169434%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e169434%_))
              (let* ((_%$tgt169437169451%_
                      (let () (declare (not safe)) (__AST-e _%$e169434%_)))
                     (_%$hd169438169454%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt169437169451%_)))
                     (_%$tl169439169457%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt169437169451%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl169439169457%_))
                    (let* ((_%$tgt169440169461%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl169439169457%_)))
                           (_%$hd169441169464%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt169440169461%_)))
                           (_%$tl169442169467%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt169440169461%_)))
                           (_%hd169471%_ _%$hd169441169464%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl169442169467%_))
                          (let* ((_%$tgt169443169473%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl169442169467%_)))
                                 (_%$hd169444169476%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt169443169473%_)))
                                 (_%$tl169445169479%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt169443169473%_)))
                                 (_%body169483%_ _%$hd169444169476%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl169445169479%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd169471%_)
                                             (cons (__compile _%body169483%_)
                                                   '())))
                                 _%stx169432%_)
                                (_%$E169436169448%_)))
                          (_%$E169436169448%_)))
                    (_%$E169436169448%_)))
              (_%$E169436169448%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx169197%_)
        (letrec ((_%variadic?169199%_
                  (lambda (_%hd169397%_)
                    (let* ((_%$e169399%_ _%hd169397%_)
                           (_%$E169401169417%_
                            (lambda ()
                              (let ((_%$E169402169414%_
                                     (lambda ()
                                       (let ((_%$E169403169411%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e169399%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e169399%_))
                                            '())
                                    '#f
                                    (_%$E169402169414%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e169399%_))
                          (let* ((_%$tgt169404169420%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e169399%_)))
                                 (_%$hd169405169423%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt169404169420%_)))
                                 (_%$tl169406169426%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt169404169420%_)))
                                 (_%rest169430%_ _%$tl169406169426%_))
                            (_%variadic?169199%_ _%rest169430%_))
                          (_%$E169401169417%_)))))
                 (_%arity169200%_
                  (lambda (_%hd169335%_)
                    (let _%lp169337%_ ((_%rest169339%_ _%hd169335%_)
                                       (_%k169340%_ '0))
                      (let* ((_%$e169342%_ _%rest169339%_)
                             (_%$E169344169355%_
                              (lambda ()
                                (let ((_%$E169345169352%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e169342%_)))))
                                  _%k169340%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e169342%_))
                            (let* ((_%$tgt169346169358%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e169342%_)))
                                   (_%$hd169347169361%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt169346169358%_)))
                                   (_%$tl169348169364%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt169346169358%_)))
                                   (_%rest169368%_ _%$tl169348169364%_))
                              (_%lp169337%_
                               _%rest169368%_
                               (let ((_%x169370%_ _%k169340%_))
                                 (if (fixnum? _%x169370%_)
                                     (let ((_%x169375%_ _%x169370%_))
                                       (declare (not safe))
                                       (__fx1+ _%x169375%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/eval
                                        'contract:
                                        'fixnum?
                                        'value:
                                        _%x169370%_)
                                       '#!void)))))
                            (_%$E169344169355%_))))))
                 (_%generate169201%_
                  (lambda (_%rest169262%_ _%args169263%_ _%len169264%_)
                    (let* ((_%$e169266%_ _%rest169262%_)
                           (_%$E169268169279%_
                            (lambda ()
                              (let ((_%$E169269169276%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e169266%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args169263%_ '())))
                                 _%stx169197%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e169266%_))
                          (let* ((_%$tgt169270169282%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e169266%_)))
                                 (_%$hd169271169285%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt169270169282%_)))
                                 (_%$tl169272169288%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt169270169282%_)))
                                 (_%clause169292%_ _%$hd169271169285%_)
                                 (_%rest169294%_ _%$tl169272169288%_)
                                 (_%$e169296%_ _%clause169292%_)
                                 (_%$E169298169307%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e169296%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e169296%_))
                                (let* ((_%$tgt169299169310%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e169296%_)))
                                       (_%$hd169300169313%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt169299169310%_)))
                                       (_%$tl169301169316%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt169299169310%_)))
                                       (_%hd169320%_ _%$hd169300169313%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl169301169316%_))
                                      (let* ((_%$tgt169302169322%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl169301169316%_)))
                                             (_%$hd169303169325%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt169302169322%_)))
                                             (_%$tl169304169328%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt169302169322%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl169304169328%_))
                                                    '())
                                            (let ((_%clen169332%_
                                                   (_%arity169200%_
                                                    _%hd169320%_))
                                                  (_%cmp169333%_
                                                   (if (_%variadic?169199%_
                                                        _%hd169320%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp169333%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len169264%_ (cons _%clen169332%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause169292%_))
                                      (cons _%args169263%_ '())))
                          _%stx169197%_)
                         (cons (_%generate169201%_
                                _%rest169294%_
                                _%args169263%_
                                _%len169264%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx169197%_))
                                            (_%$E169298169307%_)))
                                      (_%$E169298169307%_)))
                                (_%$E169298169307%_)))
                          (_%$E169268169279%_))))))
          (let* ((_%$e169203%_ _%stx169197%_)
                 (_%$E169205169237%_
                  (lambda ()
                    (let ((_%$E169206169219%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e169203%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e169203%_))
                          (let* ((_%$tgt169207169222%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e169203%_)))
                                 (_%$hd169208169225%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt169207169222%_)))
                                 (_%$tl169209169228%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt169207169222%_)))
                                 (_%clauses169232%_ _%$tl169209169228%_))
                            (let ((_%args169234%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx169197%_))
                                  (_%len169235%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx169197%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args169234%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len169235%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args169234%_ '()))
                                         _%stx169197%_)
                                        '()))
                            '())
                      (cons (_%generate169201%_
                             _%clauses169232%_
                             _%args169234%_
                             _%len169235%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx169197%_)
                                                 '())))
                               _%stx169197%_)))
                          (_%$E169206169219%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e169203%_))
                (let* ((_%$tgt169210169240%_
                        (let () (declare (not safe)) (__AST-e _%$e169203%_)))
                       (_%$hd169211169243%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt169210169240%_)))
                       (_%$tl169212169246%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt169210169240%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl169212169246%_))
                      (let* ((_%$tgt169213169250%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl169212169246%_)))
                             (_%$hd169214169253%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt169213169250%_)))
                             (_%$tl169215169256%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt169213169250%_)))
                             (_%clause169260%_ _%$hd169214169253%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl169215169256%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause169260%_))
                            (_%$E169205169237%_)))
                      (_%$E169205169237%_)))
                (_%$E169205169237%_))))))
    (define __compile-let-form
      (lambda (_%stx168966%_ _%compile-simple168967%_ _%compile-values168968%_)
        (letrec ((_%simple-bind?168970%_
                  (lambda (_%hd169155%_)
                    (let* ((_%hd169156169166%_ _%hd169155%_)
                           (_%else169159169174%_ (lambda () '#f)))
                      (let ((_%K169162169187%_ (lambda (_%id169185%_) '#t))
                            (_%K169161169179%_ (lambda () '#t)))
                        (let ((_%try-match169158169182%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd169156169166%_ '#f))
                                     (_%K169161169179%_)
                                     (_%else169159169174%_)))))
                          (if (pair? _%hd169156169166%_)
                              (let ((_%tl169164169192%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd169156169166%_)))
                                    (_%hd169163169190%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd169156169166%_))))
                                (if (null? _%tl169164169192%_)
                                    (let ((_%id169195%_ _%hd169163169190%_))
                                      (_%K169162169187%_ _%id169195%_))
                                    (_%try-match169158169182%_)))
                              (_%try-match169158169182%_)))))))
                 (_%car-e168971%_
                  (lambda (_%hd169153%_)
                    (if (pair? _%hd169153%_)
                        (let () (declare (not safe)) (##car _%hd169153%_))
                        _%hd169153%_))))
          (let* ((_%$e168973%_ _%stx168966%_)
                 (_%$E168975169118%_
                  (lambda ()
                    (let ((_%$E168976168998%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e168973%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e168973%_))
                          (let* ((_%$tgt168977169001%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e168973%_)))
                                 (_%$hd168978169004%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt168977169001%_)))
                                 (_%$tl168979169007%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt168977169001%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl168979169007%_))
                                (let* ((_%$tgt168980169011%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl168979169007%_)))
                                       (_%$hd168981169014%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt168980169011%_)))
                                       (_%$tl168982169017%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt168980169011%_)))
                                       (_%hd169021%_ _%$hd168981169014%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl168982169017%_))
                                      (let* ((_%$tgt168983169023%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl168982169017%_)))
                                             (_%$hd168984169026%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt168983169023%_)))
                                             (_%$tl168985169029%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt168983169023%_)))
                                             (_%body169033%_
                                              _%$hd168984169026%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl168985169029%_))
                                                    '())
                                            (let* ((_%hd-ids169073%_
                                                    (map (lambda (_%bind169035%_)
                                                           (let* ((_%$e169037%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind169035%_)
                          (_%$E169039169048%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e169037%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e169037%_))
                         (let* ((_%$tgt169040169051%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e169037%_)))
                                (_%$hd169041169054%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt169040169051%_)))
                                (_%$tl169042169057%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt169040169051%_)))
                                (_%ids169061%_ _%$hd169041169054%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl169042169057%_))
                               (let* ((_%$tgt169043169063%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl169042169057%_)))
                                      (_%$hd169044169066%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt169043169063%_)))
                                      (_%$tl169045169069%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt169043169063%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl169045169069%_))
                                             '())
                                     _%ids169061%_
                                     (_%$E169039169048%_)))
                               (_%$E169039169048%_)))
                         (_%$E169039169048%_))))
                 _%hd169021%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs169113%_
                                                    (map (lambda (_%bind169075%_)
                                                           (let* ((_%$e169077%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind169075%_)
                          (_%$E169079169088%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e169077%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e169077%_))
                         (let* ((_%$tgt169080169091%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e169077%_)))
                                (_%$hd169081169094%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt169080169091%_)))
                                (_%$tl169082169097%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt169080169091%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl169082169097%_))
                               (let* ((_%$tgt169083169101%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl169082169097%_)))
                                      (_%$hd169084169104%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt169083169101%_)))
                                      (_%$tl169085169107%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt169083169101%_)))
                                      (_%expr169111%_ _%$hd169084169104%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl169085169107%_))
                                             '())
                                     (__compile _%expr169111%_)
                                     (_%$E169079169088%_)))
                               (_%$E169079169088%_)))
                         (_%$E169079169088%_))))
                 _%hd169021%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body169115%_
                                                    (__compile
                                                     _%body169033%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (andmap__0
                                                     _%simple-bind?168970%_
                                                     _%hd-ids169073%_))
                                                  (_%compile-simple168967%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e168971%_
                                                            _%hd-ids169073%_))
                                                   _%exprs169113%_
                                                   _%body169115%_)
                                                  (_%compile-values168968%_
                                                   _%hd-ids169073%_
                                                   _%exprs169113%_
                                                   _%body169115%_)))
                                            (_%$E168976168998%_)))
                                      (_%$E168976168998%_)))
                                (_%$E168976168998%_)))
                          (_%$E168976168998%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e168973%_))
                (let* ((_%$tgt168986169121%_
                        (let () (declare (not safe)) (__AST-e _%$e168973%_)))
                       (_%$hd168987169124%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt168986169121%_)))
                       (_%$tl168988169127%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt168986169121%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl168988169127%_))
                      (let* ((_%$tgt168989169131%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl168988169127%_)))
                             (_%$hd168990169134%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt168989169131%_)))
                             (_%$tl168991169137%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt168989169131%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd168990169134%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl168991169137%_))
                                (let* ((_%$tgt168992169141%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl168991169137%_)))
                                       (_%$hd168993169144%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt168992169141%_)))
                                       (_%$tl168994169147%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt168992169141%_)))
                                       (_%body169151%_ _%$hd168993169144%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl168994169147%_))
                                              '())
                                      (__compile _%body169151%_)
                                      (_%$E168975169118%_)))
                                (_%$E168975169118%_))
                            (_%$E168975169118%_)))
                      (_%$E168975169118%_)))
                (_%$E168975169118%_))))))
    (define __compile-let-values%
      (lambda (_%stx168778%_)
        (letrec ((_%compile-simple168780%_
                  (lambda (_%hd-ids168962%_ _%exprs168963%_ _%body168964%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp170158
                                        (map __compile-head-id
                                             _%hd-ids168962%_)))
                                   (declare (not safe))
                                   (##map list __tmp170158 _%exprs168963%_))
                                 (cons _%body168964%_ '())))
                     _%stx168778%_)))
                 (_%compile-values168781%_
                  (lambda (_%hd-ids168877%_ _%exprs168878%_ _%body168879%_)
                    (let _%lp168881%_ ((_%rest168883%_ _%hd-ids168877%_)
                                       (_%exprs168884%_ _%exprs168878%_)
                                       (_%bind168885%_ '())
                                       (_%post168886%_ '()))
                      (let* ((_%rest168887168901%_ _%rest168883%_)
                             (_%else168890168909%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind168885%_)
                                             (cons (_%compile-post168782%_
                                                    _%post168886%_
                                                    _%body168879%_)
                                                   '())))
                                 _%stx168778%_))))
                        (let ((_%K168895168945%_
                               (lambda (_%rest168942%_ _%id168943%_)
                                 (_%lp168881%_
                                  _%rest168942%_
                                  (cdr _%exprs168884%_)
                                  (cons (cons (__compile-head-id _%id168943%_)
                                              (cons (car _%exprs168884%_) '()))
                                        _%bind168885%_)
                                  _%post168886%_)))
                              (_%K168892168927%_
                               (lambda (_%rest168913%_ _%hd168914%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd168914%_))
                                     (_%lp168881%_
                                      _%rest168913%_
                                      (cdr _%exprs168884%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd168914%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs168884%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind168885%_)
                                      _%post168886%_)
                                     (if (list? _%hd168914%_)
                                         (let* ((_%len168918%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd168914%_)))
                                                (_%tmp168920%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp168881%_
                                            _%rest168913%_
                                            (cdr _%exprs168884%_)
                                            (cons (cons _%tmp168920%_
                                                        (cons (car _%exprs168884%_)
                                                              '()))
                                                  _%bind168885%_)
                                            (cons (cons _%tmp168920%_
                                                        (cons _%len168918%_
                                                              (let ((__tmp170160
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id168923%_ _%k168924%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id168923%_))
                                   (cons (__SRC__0 _%id168923%_) _%k168924%_)
                                   '#f)))
                            (__tmp170159
                             (let ()
                               (declare (not safe))
                               (##iota _%len168918%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp170160 _%hd168914%_ __tmp170159))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post168886%_)))
                                         (__compile-error__%
                                          _%stx168778%_
                                          _%hd168914%_))))))
                          (if (pair? _%rest168887168901%_)
                              (let ((_%tl168897168950%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest168887168901%_)))
                                    (_%hd168896168948%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest168887168901%_))))
                                (if (pair? _%hd168896168948%_)
                                    (let ((_%tl168899168955%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd168896168948%_)))
                                          (_%hd168898168953%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd168896168948%_))))
                                      (if (null? _%tl168899168955%_)
                                          (let ((_%id168958%_
                                                 _%hd168898168953%_)
                                                (_%rest168960%_
                                                 _%tl168897168950%_))
                                            (_%K168895168945%_
                                             _%rest168960%_
                                             _%id168958%_))
                                          (let ((_%hd168935%_
                                                 _%hd168896168948%_)
                                                (_%rest168937%_
                                                 _%tl168897168950%_))
                                            (_%K168892168927%_
                                             _%rest168937%_
                                             _%hd168935%_))))
                                    (let ((_%hd168935%_ _%hd168896168948%_)
                                          (_%rest168937%_ _%tl168897168950%_))
                                      (_%K168892168927%_
                                       _%rest168937%_
                                       _%hd168935%_))))
                              (_%else168890168909%_)))))))
                 (_%compile-post168782%_
                  (lambda (_%post168784%_ _%body168785%_)
                    (let _%lp168787%_ ((_%rest168789%_ _%post168784%_)
                                       (_%check168790%_ '())
                                       (_%bind168791%_ '()))
                      (let* ((_%rest168792168804%_ _%rest168789%_)
                             (_%else168794168812%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp170161
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind168791%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body168785%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx168778%_)
                                                    '())))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp170161
                                          _%check168790%_)))
                                 _%stx168778%_)))
                             (_%K168796168851%_
                              (lambda (_%rest168815%_
                                       _%init168816%_
                                       _%len168817%_
                                       _%tmp168818%_)
                                (_%lp168787%_
                                 _%rest168815%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp168818%_
                                                    (cons _%len168817%_ '())))
                                        _%stx168778%_)
                                       _%check168790%_)
                                 (let ((__tmp170162
                                        (lambda (_%hd168820%_ _%r168821%_)
                                          (let* ((_%hd168822168829%_
                                                  _%hd168820%_)
                                                 (_%E168824168833%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd168822168829%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K168825168839%_
                                                  (lambda (_%k168836%_
                                                           _%id168837%_)
                                                    (cons (cons _%id168837%_
                                                                (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp168818%_
                                          (cons _%k168836%_ '())))
                              '()))
                  _%r168821%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd168822168829%_)
                                                (let ((_%hd168826168842%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd168822168829%_)))
                                                      (_%tl168827168844%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd168822168829%_))))
                                                  (let* ((_%id168847%_
                                                          _%hd168826168842%_)
                                                         (_%k168849%_
                                                          _%tl168827168844%_))
                                                    (_%K168825168839%_
                                                     _%k168849%_
                                                     _%id168847%_)))
                                                (_%E168824168833%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp170162
                                    _%bind168791%_
                                    _%init168816%_))))))
                        (if (pair? _%rest168792168804%_)
                            (let ((_%hd168797168854%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest168792168804%_)))
                                  (_%tl168798168856%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest168792168804%_))))
                              (if (pair? _%hd168797168854%_)
                                  (let ((_%hd168799168859%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd168797168854%_)))
                                        (_%tl168800168861%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd168797168854%_))))
                                    (let ((_%tmp168864%_ _%hd168799168859%_))
                                      (if (pair? _%tl168800168861%_)
                                          (let ((_%hd168801168866%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl168800168861%_)))
                                                (_%tl168802168868%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl168800168861%_))))
                                            (let* ((_%len168871%_
                                                    _%hd168801168866%_)
                                                   (_%init168873%_
                                                    _%tl168802168868%_)
                                                   (_%rest168875%_
                                                    _%tl168798168856%_))
                                              (_%K168796168851%_
                                               _%rest168875%_
                                               _%init168873%_
                                               _%len168871%_
                                               _%tmp168864%_)))
                                          (_%else168794168812%_))))
                                  (_%else168794168812%_)))
                            (_%else168794168812%_)))))))
          (__compile-let-form
           _%stx168778%_
           _%compile-simple168780%_
           _%compile-values168781%_))))
    (define __compile-letrec-values%
      (lambda (_%stx168575%_)
        (letrec ((_%compile-simple168577%_
                  (lambda (_%hd-ids168774%_ _%exprs168775%_ _%body168776%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp170163
                                        (map __compile-head-id
                                             _%hd-ids168774%_)))
                                   (declare (not safe))
                                   (##map list __tmp170163 _%exprs168775%_))
                                 (cons _%body168776%_ '())))
                     _%stx168575%_)))
                 (_%compile-values168578%_
                  (lambda (_%hd-ids168685%_ _%exprs168686%_ _%body168687%_)
                    (let _%lp168689%_ ((_%rest168691%_ _%hd-ids168685%_)
                                       (_%exprs168692%_ _%exprs168686%_)
                                       (_%pre168693%_ '())
                                       (_%bind168694%_ '())
                                       (_%post168695%_ '()))
                      (let* ((_%rest168696168710%_ _%rest168691%_)
                             (_%else168699168718%_
                              (lambda ()
                                (_%compile-inner168579%_
                                 _%pre168693%_
                                 _%bind168694%_
                                 _%post168695%_
                                 _%body168687%_))))
                        (let ((_%K168704168757%_
                               (lambda (_%rest168754%_ _%id168755%_)
                                 (_%lp168689%_
                                  _%rest168754%_
                                  (cdr _%exprs168692%_)
                                  _%pre168693%_
                                  (cons (cons (__compile-head-id _%id168755%_)
                                              (cons (car _%exprs168692%_) '()))
                                        _%bind168694%_)
                                  _%post168695%_)))
                              (_%K168701168739%_
                               (lambda (_%rest168722%_ _%hd168723%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd168723%_))
                                     (_%lp168689%_
                                      _%rest168722%_
                                      (cdr _%exprs168692%_)
                                      _%pre168693%_
                                      (cons (cons (__compile-head-id
                                                   _%hd168723%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs168692%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind168694%_)
                                      _%post168695%_)
                                     (if (list? _%hd168723%_)
                                         (let* ((_%len168727%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd168723%_)))
                                                (_%tmp168729%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp168689%_
                                            _%rest168722%_
                                            (cdr _%exprs168692%_)
                                            (let ((__tmp170164
                                                   (lambda (_%id168732%_
                                                            _%r168733%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id168732%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id168732%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r168733%_)
                 _%r168733%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (foldl__0
                                               __tmp170164
                                               _%pre168693%_
                                               _%hd168723%_))
                                            (cons (cons _%tmp168729%_
                                                        (cons (car _%exprs168692%_)
                                                              '()))
                                                  _%bind168694%_)
                                            (cons (cons _%tmp168729%_
                                                        (cons _%len168727%_
                                                              (let ((__tmp170166
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id168735%_ _%k168736%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id168735%_))
                                   (cons (__SRC__0 _%id168735%_) _%k168736%_)
                                   '#f)))
                            (__tmp170165
                             (let ()
                               (declare (not safe))
                               (##iota _%len168727%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp170166 _%hd168723%_ __tmp170165))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post168695%_)))
                                         (__compile-error__%
                                          _%stx168575%_
                                          _%hd168723%_))))))
                          (if (pair? _%rest168696168710%_)
                              (let ((_%tl168706168762%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest168696168710%_)))
                                    (_%hd168705168760%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest168696168710%_))))
                                (if (pair? _%hd168705168760%_)
                                    (let ((_%tl168708168767%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd168705168760%_)))
                                          (_%hd168707168765%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd168705168760%_))))
                                      (if (null? _%tl168708168767%_)
                                          (let ((_%id168770%_
                                                 _%hd168707168765%_)
                                                (_%rest168772%_
                                                 _%tl168706168762%_))
                                            (_%K168704168757%_
                                             _%rest168772%_
                                             _%id168770%_))
                                          (let ((_%hd168747%_
                                                 _%hd168705168760%_)
                                                (_%rest168749%_
                                                 _%tl168706168762%_))
                                            (_%K168701168739%_
                                             _%rest168749%_
                                             _%hd168747%_))))
                                    (let ((_%hd168747%_ _%hd168705168760%_)
                                          (_%rest168749%_ _%tl168706168762%_))
                                      (_%K168701168739%_
                                       _%rest168749%_
                                       _%hd168747%_))))
                              (_%else168699168718%_)))))))
                 (_%compile-inner168579%_
                  (lambda (_%pre168680%_
                           _%bind168681%_
                           _%post168682%_
                           _%body168683%_)
                    (if (null? _%pre168680%_)
                        (_%compile-bind168580%_
                         _%bind168681%_
                         _%post168682%_
                         _%body168683%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre168680%_)
                                     (cons (_%compile-bind168580%_
                                            _%bind168681%_
                                            _%post168682%_
                                            _%body168683%_)
                                           '())))
                         _%stx168575%_))))
                 (_%compile-bind168580%_
                  (lambda (_%bind168676%_ _%post168677%_ _%body168678%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind168676%_)
                                 (cons (_%compile-post168581%_
                                        _%post168677%_
                                        _%body168678%_)
                                       '())))
                     _%stx168575%_)))
                 (_%compile-post168581%_
                  (lambda (_%post168583%_ _%body168584%_)
                    (let _%lp168586%_ ((_%rest168588%_ _%post168583%_)
                                       (_%check168589%_ '())
                                       (_%bind168590%_ '()))
                      (let* ((_%rest168591168603%_ _%rest168588%_)
                             (_%else168593168611%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp170167
                                              (let ((__tmp170168
                                                     (cons _%body168584%_
                                                           '())))
                                                (declare (not safe))
                                                (foldr__0
                                                 cons
                                                 __tmp170168
                                                 _%bind168590%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp170167
                                          _%check168589%_)))
                                 _%stx168575%_)))
                             (_%K168595168650%_
                              (lambda (_%rest168614%_
                                       _%init168615%_
                                       _%len168616%_
                                       _%tmp168617%_)
                                (_%lp168586%_
                                 _%rest168614%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp168617%_
                                                    (cons _%len168616%_ '())))
                                        _%stx168575%_)
                                       _%check168589%_)
                                 (let ((__tmp170169
                                        (lambda (_%hd168619%_ _%r168620%_)
                                          (let* ((_%hd168621168628%_
                                                  _%hd168619%_)
                                                 (_%E168623168632%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd168621168628%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K168624168638%_
                                                  (lambda (_%k168635%_
                                                           _%id168636%_)
                                                    (cons (cons 'set!
                                                                (cons _%id168636%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##values-ref
                                          (cons _%tmp168617%_
                                                (cons _%k168635%_ '())))
                                    '())))
                  _%r168620%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd168621168628%_)
                                                (let ((_%hd168625168641%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd168621168628%_)))
                                                      (_%tl168626168643%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd168621168628%_))))
                                                  (let* ((_%id168646%_
                                                          _%hd168625168641%_)
                                                         (_%k168648%_
                                                          _%tl168626168643%_))
                                                    (_%K168624168638%_
                                                     _%k168648%_
                                                     _%id168646%_)))
                                                (_%E168623168632%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp170169
                                    _%bind168590%_
                                    _%init168615%_))))))
                        (if (pair? _%rest168591168603%_)
                            (let ((_%hd168596168653%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest168591168603%_)))
                                  (_%tl168597168655%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest168591168603%_))))
                              (if (pair? _%hd168596168653%_)
                                  (let ((_%hd168598168658%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd168596168653%_)))
                                        (_%tl168599168660%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd168596168653%_))))
                                    (let ((_%tmp168663%_ _%hd168598168658%_))
                                      (if (pair? _%tl168599168660%_)
                                          (let ((_%hd168600168665%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl168599168660%_)))
                                                (_%tl168601168667%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl168599168660%_))))
                                            (let* ((_%len168670%_
                                                    _%hd168600168665%_)
                                                   (_%init168672%_
                                                    _%tl168601168667%_)
                                                   (_%rest168674%_
                                                    _%tl168597168655%_))
                                              (_%K168595168650%_
                                               _%rest168674%_
                                               _%init168672%_
                                               _%len168670%_
                                               _%tmp168663%_)))
                                          (_%else168593168611%_))))
                                  (_%else168593168611%_)))
                            (_%else168593168611%_)))))))
          (__compile-let-form
           _%stx168575%_
           _%compile-simple168577%_
           _%compile-values168578%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx168326%_)
        (letrec ((_%compile-simple168328%_
                  (lambda (_%hd-ids168571%_ _%exprs168572%_ _%body168573%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp170170
                                        (map __compile-head-id
                                             _%hd-ids168571%_)))
                                   (declare (not safe))
                                   (##map list __tmp170170 _%exprs168572%_))
                                 (cons _%body168573%_ '())))
                     _%stx168326%_)))
                 (_%compile-values168329%_
                  (lambda (_%hd-ids168478%_ _%exprs168479%_ _%body168480%_)
                    (let _%lp168482%_ ((_%rest168484%_ _%hd-ids168478%_)
                                       (_%exprs168485%_ _%exprs168479%_)
                                       (_%bind168486%_ '())
                                       (_%post168487%_ '()))
                      (let* ((_%rest168488168502%_ _%rest168484%_)
                             (_%else168491168510%_
                              (lambda ()
                                (_%compile-bind168330%_
                                 _%bind168486%_
                                 _%post168487%_
                                 _%body168480%_))))
                        (let ((_%K168496168554%_
                               (lambda (_%rest168549%_ _%hd168550%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd168550%_))
                                     (let ((_%id168552%_
                                            (__SRC__0 _%hd168550%_)))
                                       (_%lp168482%_
                                        _%rest168549%_
                                        (cdr _%exprs168485%_)
                                        (cons (cons _%id168552%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind168486%_)
                                        (cons (cons _%id168552%_
                                                    (cons (car _%exprs168485%_)
                                                          '()))
                                              _%post168487%_)))
                                     (_%lp168482%_
                                      _%rest168549%_
                                      (cdr _%exprs168485%_)
                                      _%bind168486%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs168485%_)
                                                        '()))
                                            _%post168487%_)))))
                              (_%K168493168534%_
                               (lambda (_%rest168514%_ _%hd168515%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd168515%_))
                                     (let ((_%id168518%_
                                            (__SRC__0 _%hd168515%_)))
                                       (_%lp168482%_
                                        _%rest168514%_
                                        (cdr _%exprs168485%_)
                                        (cons (cons _%id168518%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind168486%_)
                                        (cons (cons _%id168518%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs168485%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post168487%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd168515%_))
                                         (if (list? _%hd168515%_)
                                             (let* ((_%len168522%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd168515%_)))
                                                    (_%tmp168524%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp168482%_
                                                _%rest168514%_
                                                (cdr _%exprs168485%_)
                                                (let ((__tmp170171
                                                       (lambda (_%id168527%_
                                                                _%r168528%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id168527%_))
                     (cons (cons (__SRC__0 _%id168527%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r168528%_)
                     _%r168528%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldl__0
                                                   __tmp170171
                                                   _%bind168486%_
                                                   _%hd168515%_))
                                                (cons (cons _%tmp168524%_
                                                            (cons (car _%exprs168485%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len168522%_
                                (let ((__tmp170173
                                       (lambda (_%id168530%_ _%k168531%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id168530%_))
                                             (cons (__SRC__0 _%id168530%_)
                                                   _%k168531%_)
                                             '#f)))
                                      (__tmp170172
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len168522%_))))
                                  (declare (not safe))
                                  (filter-map__1
                                   __tmp170173
                                   _%hd168515%_
                                   __tmp170172)))))
              _%post168487%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx168326%_
                                              _%hd168515%_))
                                         (_%lp168482%_
                                          _%rest168514%_
                                          (cdr _%exprs168485%_)
                                          _%bind168486%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs168485%_)
                                                            '()))
                                                _%post168487%_)))))))
                          (if (pair? _%rest168488168502%_)
                              (let ((_%tl168498168559%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest168488168502%_)))
                                    (_%hd168497168557%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest168488168502%_))))
                                (if (pair? _%hd168497168557%_)
                                    (let ((_%tl168500168564%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd168497168557%_)))
                                          (_%hd168499168562%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd168497168557%_))))
                                      (if (null? _%tl168500168564%_)
                                          (let ((_%hd168567%_
                                                 _%hd168499168562%_)
                                                (_%rest168569%_
                                                 _%tl168498168559%_))
                                            (_%K168496168554%_
                                             _%rest168569%_
                                             _%hd168567%_))
                                          (let ((_%hd168542%_
                                                 _%hd168497168557%_)
                                                (_%rest168544%_
                                                 _%tl168498168559%_))
                                            (_%K168493168534%_
                                             _%rest168544%_
                                             _%hd168542%_))))
                                    (let ((_%hd168542%_ _%hd168497168557%_)
                                          (_%rest168544%_ _%tl168498168559%_))
                                      (_%K168493168534%_
                                       _%rest168544%_
                                       _%hd168542%_))))
                              (_%else168491168510%_)))))))
                 (_%compile-bind168330%_
                  (lambda (_%bind168474%_ _%post168475%_ _%body168476%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind168474%_)
                                 (cons (_%compile-post168331%_
                                        _%post168475%_
                                        _%body168476%_)
                                       '())))
                     _%stx168326%_)))
                 (_%compile-post168331%_
                  (lambda (_%post168333%_ _%body168334%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp170174
                                  (let ((__tmp170176
                                         (lambda (_%hd168336%_ _%r168337%_)
                                           (let* ((_%hd168338168361%_
                                                   _%hd168336%_)
                                                  (_%E168342168365%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd168338168361%_
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
                                             (let ((_%K168355168459%_
                                                    (lambda (_%expr168457%_)
                                                      (cons _%expr168457%_
                                                            _%r168337%_)))
                                                   (_%K168350168437%_
                                                    (lambda (_%expr168434%_
                                                             _%id168435%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id168435%_ (cons _%expr168434%_ '())))
                     _%stx168326%_)
                    _%r168337%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K168343168404%_
                                                    (lambda (_%init168369%_
                                                             _%len168370%_
                                                             _%expr168371%_
                                                             _%tmp168372%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp168372%_
                                             (cons _%expr168371%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp168372%_
                                                    (cons _%len168370%_ '())))
                                        _%stx168326%_)
                                       (let ((__tmp170177
                                              (map (lambda (_%hd168374%_)
                                                     (let* ((_%hd168375168382%_
                                                             _%hd168374%_)
                                                            (_%E168377168386%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd168375168382%_
                                '([id . k])))
                       '#!void))
                    (_%K168378168392%_
                     (lambda (_%k168389%_ _%id168390%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id168390%_
                                    (cons (cons '##values-ref
                                                (cons _%tmp168372%_
                                                      (cons _%k168389%_ '())))
                                          '())))
                        _%stx168326%_))))
               (if (pair? _%hd168375168382%_)
                   (let ((_%hd168379168395%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd168375168382%_)))
                         (_%tl168380168397%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd168375168382%_))))
                     (let* ((_%id168400%_ _%hd168379168395%_)
                            (_%k168402%_ _%tl168380168397%_))
                       (_%K168378168392%_ _%k168402%_ _%id168400%_)))
                   (_%E168377168386%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init168369%_)))
                                         (declare (not safe))
                                         (foldr__0 cons '() __tmp170177)))))
                     _%stx168326%_)
                    _%r168337%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match170032170033%_
                                                       (lambda (_%hd168344168407%_
                                                                _%tl168345168409%_
                                                                _%hd168346168414%_
                                                                _%tl168347168416%_)
                                                         (let ((_%tmp168412%_
                                                                _%hd168344168407%_)
                                                               (_%expr168419%_
                                                                _%hd168346168414%_))
                                                           (_%E168342168365%_))))
                                                      (_%__match170026170027%_
                                                       (lambda (_%hd168344168407%_
                                                                _%tl168345168409%_)
                                                         (let ((_%tmp168412%_
                                                                _%hd168344168407%_))
                                                           (_%E168342168365%_)))))
                                                 (if (pair? _%hd168338168361%_)
                                                     (let ((_%tl168357168464%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd168338168361%_)))
                                                           (_%hd168356168462%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd168338168361%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd168356168462%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%tl168357168464%_)
                       (let ((_%tl168359168469%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl168357168464%_)))
                             (_%hd168358168467%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl168357168464%_))))
                         (if (null? _%tl168359168469%_)
                             (let ((_%expr168472%_ _%hd168358168467%_))
                               (_%K168355168459%_ _%expr168472%_))
                             (if (pair? _%tl168359168469%_)
                                 (let ((_%tl168349168423%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl168359168469%_)))
                                       (_%hd168348168421%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl168359168469%_))))
                                   (let ((_%tmp168412%_ _%hd168356168462%_)
                                         (_%expr168419%_ _%hd168358168467%_)
                                         (_%len168426%_ _%hd168348168421%_)
                                         (_%init168428%_ _%tl168349168423%_))
                                     (_%K168343168404%_
                                      _%init168428%_
                                      _%len168426%_
                                      _%expr168419%_
                                      _%tmp168412%_)))
                                 (_%__match170032170033%_
                                  _%hd168356168462%_
                                  _%tl168357168464%_
                                  _%hd168358168467%_
                                  _%tl168359168469%_))))
                       (_%__match170026170027%_
                        _%hd168356168462%_
                        _%tl168357168464%_))
                   (if (pair? _%tl168357168464%_)
                       (let ((_%tl168354168449%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl168357168464%_)))
                             (_%hd168353168447%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl168357168464%_))))
                         (if (null? _%tl168354168449%_)
                             (let ((_%id168445%_ _%hd168356168462%_)
                                   (_%expr168452%_ _%hd168353168447%_))
                               (_%K168350168437%_ _%expr168452%_ _%id168445%_))
                             (if (pair? _%tl168354168449%_)
                                 (let ((_%tl168349168423%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl168354168449%_)))
                                       (_%hd168348168421%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl168354168449%_))))
                                   (let ((_%tmp168412%_ _%hd168356168462%_)
                                         (_%expr168419%_ _%hd168353168447%_)
                                         (_%len168426%_ _%hd168348168421%_)
                                         (_%init168428%_ _%tl168349168423%_))
                                     (_%K168343168404%_
                                      _%init168428%_
                                      _%len168426%_
                                      _%expr168419%_
                                      _%tmp168412%_)))
                                 (_%__match170032170033%_
                                  _%hd168356168462%_
                                  _%tl168357168464%_
                                  _%hd168353168447%_
                                  _%tl168354168449%_))))
                       (_%__match170026170027%_
                        _%hd168356168462%_
                        _%tl168357168464%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E168342168365%_)))))))
                                        (__tmp170175 (list _%body168334%_)))
                                    (declare (not safe))
                                    (foldl__0
                                     __tmp170176
                                     __tmp170175
                                     _%post168333%_))))
                             (declare (not safe))
                             (foldr__0 cons '() __tmp170174)))
                     _%stx168326%_))))
          (__compile-let-form
           _%stx168326%_
           _%compile-simple168328%_
           _%compile-values168329%_))))
    (define __compile-call%
      (lambda (_%stx168286%_)
        (let* ((_%$e168288%_ _%stx168286%_)
               (_%$E168290168299%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168288%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168288%_))
              (let* ((_%$tgt168291168302%_
                      (let () (declare (not safe)) (__AST-e _%$e168288%_)))
                     (_%$hd168292168305%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168291168302%_)))
                     (_%$tl168293168308%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168291168302%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl168293168308%_))
                    (let* ((_%$tgt168294168312%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl168293168308%_)))
                           (_%$hd168295168315%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt168294168312%_)))
                           (_%$tl168296168318%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt168294168312%_)))
                           (_%rator168322%_ _%$hd168295168315%_)
                           (_%rands168324%_ _%$tl168296168318%_))
                      (__SRC__%
                       (cons (__compile _%rator168322%_)
                             (map __compile _%rands168324%_))
                       _%stx168286%_))
                    (_%$E168290168299%_)))
              (_%$E168290168299%_)))))
    (define __compile-ref%
      (lambda (_%stx168248%_)
        (let* ((_%$e168250%_ _%stx168248%_)
               (_%$E168252168261%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168250%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168250%_))
              (let* ((_%$tgt168253168264%_
                      (let () (declare (not safe)) (__AST-e _%$e168250%_)))
                     (_%$hd168254168267%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168253168264%_)))
                     (_%$tl168255168270%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168253168264%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl168255168270%_))
                    (let* ((_%$tgt168256168274%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl168255168270%_)))
                           (_%$hd168257168277%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt168256168274%_)))
                           (_%$tl168258168280%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt168256168274%_)))
                           (_%id168284%_ _%$hd168257168277%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl168258168280%_))
                                  '())
                          (__SRC__% _%id168284%_ _%stx168248%_)
                          (_%$E168252168261%_)))
                    (_%$E168252168261%_)))
              (_%$E168252168261%_)))))
    (define __compile-setq%
      (lambda (_%stx168195%_)
        (let* ((_%$e168197%_ _%stx168195%_)
               (_%$E168199168211%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168197%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168197%_))
              (let* ((_%$tgt168200168214%_
                      (let () (declare (not safe)) (__AST-e _%$e168197%_)))
                     (_%$hd168201168217%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168200168214%_)))
                     (_%$tl168202168220%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168200168214%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl168202168220%_))
                    (let* ((_%$tgt168203168224%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl168202168220%_)))
                           (_%$hd168204168227%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt168203168224%_)))
                           (_%$tl168205168230%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt168203168224%_)))
                           (_%id168234%_ _%$hd168204168227%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl168205168230%_))
                          (let* ((_%$tgt168206168236%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl168205168230%_)))
                                 (_%$hd168207168239%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt168206168236%_)))
                                 (_%$tl168208168242%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt168206168236%_)))
                                 (_%expr168246%_ _%$hd168207168239%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl168208168242%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id168234%_
                                              _%stx168195%_)
                                             (cons (__compile _%expr168246%_)
                                                   '())))
                                 _%stx168195%_)
                                (_%$E168199168211%_)))
                          (_%$E168199168211%_)))
                    (_%$E168199168211%_)))
              (_%$E168199168211%_)))))
    (define __compile-if%
      (lambda (_%stx168127%_)
        (let* ((_%$e168129%_ _%stx168127%_)
               (_%$E168131168146%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168129%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168129%_))
              (let* ((_%$tgt168132168149%_
                      (let () (declare (not safe)) (__AST-e _%$e168129%_)))
                     (_%$hd168133168152%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168132168149%_)))
                     (_%$tl168134168155%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168132168149%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl168134168155%_))
                    (let* ((_%$tgt168135168159%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl168134168155%_)))
                           (_%$hd168136168162%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt168135168159%_)))
                           (_%$tl168137168165%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt168135168159%_)))
                           (_%p168169%_ _%$hd168136168162%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl168137168165%_))
                          (let* ((_%$tgt168138168171%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl168137168165%_)))
                                 (_%$hd168139168174%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt168138168171%_)))
                                 (_%$tl168140168177%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt168138168171%_)))
                                 (_%t168181%_ _%$hd168139168174%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl168140168177%_))
                                (let* ((_%$tgt168141168183%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl168140168177%_)))
                                       (_%$hd168142168186%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt168141168183%_)))
                                       (_%$tl168143168189%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt168141168183%_)))
                                       (_%f168193%_ _%$hd168142168186%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl168143168189%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p168169%_)
                                                   (cons (__compile
                                                          _%t168181%_)
                                                         (cons (__compile
                                                                _%f168193%_)
                                                               '()))))
                                       _%stx168127%_)
                                      (_%$E168131168146%_)))
                                (_%$E168131168146%_)))
                          (_%$E168131168146%_)))
                    (_%$E168131168146%_)))
              (_%$E168131168146%_)))))
    (define __compile-quote%
      (lambda (_%stx168089%_)
        (let* ((_%$e168091%_ _%stx168089%_)
               (_%$E168093168102%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168091%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168091%_))
              (let* ((_%$tgt168094168105%_
                      (let () (declare (not safe)) (__AST-e _%$e168091%_)))
                     (_%$hd168095168108%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168094168105%_)))
                     (_%$tl168096168111%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168094168105%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl168096168111%_))
                    (let* ((_%$tgt168097168115%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl168096168111%_)))
                           (_%$hd168098168118%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt168097168115%_)))
                           (_%$tl168099168121%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt168097168115%_)))
                           (_%e168125%_ _%$hd168098168118%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl168099168121%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e168125%_))
                                       '()))
                           _%stx168089%_)
                          (_%$E168093168102%_)))
                    (_%$E168093168102%_)))
              (_%$E168093168102%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx168051%_)
        (let* ((_%$e168053%_ _%stx168051%_)
               (_%$E168055168064%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168053%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168053%_))
              (let* ((_%$tgt168056168067%_
                      (let () (declare (not safe)) (__AST-e _%$e168053%_)))
                     (_%$hd168057168070%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168056168067%_)))
                     (_%$tl168058168073%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168056168067%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl168058168073%_))
                    (let* ((_%$tgt168059168077%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl168058168073%_)))
                           (_%$hd168060168080%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt168059168077%_)))
                           (_%$tl168061168083%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt168059168077%_)))
                           (_%e168087%_ _%$hd168060168080%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl168061168083%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e168087%_ '()))
                           _%stx168051%_)
                          (_%$E168055168064%_)))
                    (_%$E168055168064%_)))
              (_%$E168055168064%_)))))
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

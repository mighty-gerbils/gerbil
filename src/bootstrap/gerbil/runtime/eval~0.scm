(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1768863412)
  (begin
    (define __syntax::t
      (let ((__tmp126778 (list)) (__tmp126777 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp126778
         '(e id)
         __tmp126777
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args126582%_
        (apply make-instance __syntax::t _%$args126582%_)))
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
      (let ((__tmp126780 (list __syntax::t))
            (__tmp126779 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp126780
         '()
         __tmp126779
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args126579%_
        (apply make-instance __core-form::t _%$args126579%_)))
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
      (let ((__tmp126782 (list __core-form::t))
            (__tmp126781 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp126782
         '()
         __tmp126781
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args126576%_
        (apply make-instance __core-expression::t _%$args126576%_)))
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
      (let ((__tmp126784 (list __core-form::t))
            (__tmp126783 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp126784
         '()
         __tmp126783
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args126573%_
        (apply make-instance __core-special-form::t _%$args126573%_)))
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
      (lambda (_%id126571%_)
        (let ((__tmp126785
               (let () (declare (not safe)) (__AST-e _%id126571%_))))
          (declare (not safe))
          (__hash-get __core __tmp126785))))
    (define __core-bound-id?__%
      (lambda (_%id126554%_ _%is?126555%_)
        (let ((_%$e126557%_ (__core-resolve _%id126554%_)))
          (if _%$e126557%_ (_%is?126555%_ _%$e126557%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id126564%_)
        (let ((_%is?126566%_ true))
          (__core-bound-id?__% _%id126564%_ _%is?126566%_))))
    (define __core-bound-id?
      (lambda _g126786_
        (let ((_g126787_ (let () (declare (not safe)) (##length _g126786_))))
          (cond ((let () (declare (not safe)) (##fx= _g126787_ 1))
                 (apply __core-bound-id?__0 _g126786_))
                ((let () (declare (not safe)) (##fx= _g126787_ 2))
                 (apply __core-bound-id?__% _g126786_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g126786_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id126537%_ _%e126538%_ _%make126539%_)
        (let ((__tmp126788
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e126538%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e126538%_
                   (_%make126539%_ _%e126538%_ _%id126537%_))))
          (declare (not safe))
          (__hash-put! __core _%id126537%_ __tmp126788))))
    (define __core-bind-syntax!__0
      (lambda (_%id126544%_ _%e126545%_)
        (let ((_%make126547%_ make-__syntax))
          (__core-bind-syntax!__% _%id126544%_ _%e126545%_ _%make126547%_))))
    (define __core-bind-syntax!
      (lambda _g126789_
        (let ((_g126790_ (let () (declare (not safe)) (##length _g126789_))))
          (cond ((let () (declare (not safe)) (##fx= _g126790_ 2))
                 (apply __core-bind-syntax!__0 _g126789_))
                ((let () (declare (not safe)) (##fx= _g126790_ 3))
                 (apply __core-bind-syntax!__% _g126789_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g126789_))))))
    (define __SRC__%
      (lambda (_%e126517%_ _%src-stx126518%_)
        (if (or (pair? _%e126517%_) (symbol? _%e126517%_))
            (let ((__tmp126791
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx126518%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx126518%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e126517%_ __tmp126791))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e126517%_ 'gerbil#AST::t))
                (let ((__tmp126793
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e126517%_ '1 '#f '#f)))
                      (__tmp126792
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e126517%_)))))
                  (declare (not safe))
                  (##make-source __tmp126793 __tmp126792))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e126517%_))))))
    (define __SRC__0
      (lambda (_%e126529%_)
        (let ((_%src-stx126531%_ '#f))
          (__SRC__% _%e126529%_ _%src-stx126531%_))))
    (define __SRC
      (lambda _g126794_
        (let ((_g126795_ (let () (declare (not safe)) (##length _g126794_))))
          (cond ((let () (declare (not safe)) (##fx= _g126795_ 1))
                 (apply __SRC__0 _g126794_))
                ((let () (declare (not safe)) (##fx= _g126795_ 2))
                 (apply __SRC__% _g126794_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g126794_))))))
    (define __locat
      (lambda (_%loc126514%_)
        (if (let () (declare (not safe)) (##locat? _%loc126514%_))
            _%loc126514%_
            '#f)))
    (define __check-values
      (lambda (_%obj126509%_ _%k126510%_)
        (let ((_%count126512%_
               (if (let () (declare (not safe)) (##values? _%obj126509%_))
                   (let ()
                     (declare (not safe))
                     (##values-length _%obj126509%_))
                   '1)))
          (if (fx= _%count126512%_ _%k126510%_)
              '#!void
              (let ((__tmp126797
                     (if (fx< _%count126512%_ _%k126510%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp126796
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj126509%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj126509%_))
                         _%obj126509%_)))
                (declare (not safe))
                (error __tmp126797 __tmp126796 _%k126510%_))))))
    (define __compile
      (lambda (_%stx126478%_)
        (let* ((_%$e126480%_ _%stx126478%_)
               (_%$E126482126488%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e126480%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e126480%_))
              (let* ((_%$tgt126483126491%_
                      (let () (declare (not safe)) (__AST-e _%$e126480%_)))
                     (_%$hd126484126494%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt126483126491%_)))
                     (_%$tl126485126497%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt126483126491%_)))
                     (_%form126501%_ _%$hd126484126494%_)
                     (_%$e126503%_ (__core-resolve _%form126501%_)))
                (if _%$e126503%_
                    ((lambda (_%bind126506%_)
                       ((##structure-ref _%bind126506%_ '1 __syntax::t '#f)
                        _%stx126478%_))
                     _%$e126503%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx126478%_
                       _%form126501%_))))
              (_%$E126482126488%_)))))
    (define __compile-error__%
      (lambda (_%stx126465%_ _%detail126466%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx126465%_
           _%detail126466%_))))
    (define __compile-error__0
      (lambda (_%stx126471%_)
        (let ((_%detail126473%_ '#f))
          (__compile-error__% _%stx126471%_ _%detail126473%_))))
    (define __compile-error
      (lambda _g126798_
        (let ((_g126799_ (let () (declare (not safe)) (##length _g126798_))))
          (cond ((let () (declare (not safe)) (##fx= _g126799_ 1))
                 (apply __compile-error__0 _g126798_))
                ((let () (declare (not safe)) (##fx= _g126799_ 2))
                 (apply __compile-error__% _g126798_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g126798_))))))
    (define __compile-ignore%
      (lambda (_%stx126462%_) (__SRC__% ''#!void _%stx126462%_)))
    (define __compile-begin%
      (lambda (_%stx126437%_)
        (let* ((_%$e126439%_ _%stx126437%_)
               (_%$E126441126447%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e126439%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e126439%_))
              (let* ((_%$tgt126442126450%_
                      (let () (declare (not safe)) (__AST-e _%$e126439%_)))
                     (_%$hd126443126453%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt126442126450%_)))
                     (_%$tl126444126456%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt126442126450%_)))
                     (_%body126460%_ _%$tl126444126456%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body126460%_))
                 _%stx126437%_))
              (_%$E126441126447%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx126412%_)
        (let* ((_%$e126414%_ _%stx126412%_)
               (_%$E126416126422%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e126414%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e126414%_))
              (let* ((_%$tgt126417126425%_
                      (let () (declare (not safe)) (__AST-e _%$e126414%_)))
                     (_%$hd126418126428%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt126417126425%_)))
                     (_%$tl126419126431%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt126417126425%_)))
                     (_%body126435%_ _%$tl126419126431%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body126435%_)))
                 _%stx126412%_))
              (_%$E126416126422%_)))))
    (define __compile-import%
      (lambda (_%stx126387%_)
        (let* ((_%$e126389%_ _%stx126387%_)
               (_%$E126391126397%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e126389%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e126389%_))
              (let* ((_%$tgt126392126400%_
                      (let () (declare (not safe)) (__AST-e _%$e126389%_)))
                     (_%$hd126393126403%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt126392126400%_)))
                     (_%$tl126394126406%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt126392126400%_)))
                     (_%body126410%_ _%$tl126394126406%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body126410%_ '())) '()))
                 _%stx126387%_))
              (_%$E126391126397%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx126334%_)
        (let* ((_%$e126336%_ _%stx126334%_)
               (_%$E126338126350%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e126336%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e126336%_))
              (let* ((_%$tgt126339126353%_
                      (let () (declare (not safe)) (__AST-e _%$e126336%_)))
                     (_%$hd126340126356%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt126339126353%_)))
                     (_%$tl126341126359%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt126339126353%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl126341126359%_))
                    (let* ((_%$tgt126342126363%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl126341126359%_)))
                           (_%$hd126343126366%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt126342126363%_)))
                           (_%$tl126344126369%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt126342126363%_)))
                           (_%ann126373%_ _%$hd126343126366%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl126344126369%_))
                          (let* ((_%$tgt126345126375%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl126344126369%_)))
                                 (_%$hd126346126378%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt126345126375%_)))
                                 (_%$tl126347126381%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt126345126375%_)))
                                 (_%expr126385%_ _%$hd126346126378%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl126347126381%_))
                                        '())
                                (__compile _%expr126385%_)
                                (_%$E126338126350%_)))
                          (_%$E126338126350%_)))
                    (_%$E126338126350%_)))
              (_%$E126338126350%_)))))
    (define __compile-define-values%
      (lambda (_%stx126225%_)
        (let* ((_%$e126227%_ _%stx126225%_)
               (_%$E126229126241%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e126227%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e126227%_))
              (let* ((_%$tgt126230126244%_
                      (let () (declare (not safe)) (__AST-e _%$e126227%_)))
                     (_%$hd126231126247%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt126230126244%_)))
                     (_%$tl126232126250%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt126230126244%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl126232126250%_))
                    (let* ((_%$tgt126233126254%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl126232126250%_)))
                           (_%$hd126234126257%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt126233126254%_)))
                           (_%$tl126235126260%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt126233126254%_)))
                           (_%hd126264%_ _%$hd126234126257%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl126235126260%_))
                          (let* ((_%$tgt126236126266%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl126235126260%_)))
                                 (_%$hd126237126269%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt126236126266%_)))
                                 (_%$tl126238126272%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt126236126266%_)))
                                 (_%expr126276%_ _%$hd126237126269%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl126238126272%_))
                                        '())
                                (let* ((_%$e126278%_ _%hd126264%_)
                                       (_%$E126280126321%_
                                        (lambda ()
                                          (let ((_%$E126281126306%_
                                                 (lambda ()
                                                   (let* ((_%$E126282126293%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e126278%_))))
                  (_%ids126296%_ _%hd126264%_)
                  (_%len126298%_ (length _%ids126296%_))
                  (_%tmp126300%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp126300%_
                                       (cons (__compile _%expr126276%_) '())))
                           _%stx126225%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp126300%_
                                             (cons _%len126298%_ '())))
                                 _%stx126225%_)
                                (let ((__tmp126800
                                       (let ((__tmp126802
                                              (lambda (_%id126303%_
                                                       _%k126304%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id126303%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id126303%_)
                         (cons (cons '##values-ref
                                     (cons _%tmp126300%_
                                           (cons _%k126304%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx126225%_)
                                                    '#f)))
                                             (__tmp126801
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len126298%_))))
                                         (declare (not safe))
                                         (__filter-map2
                                          __tmp126802
                                          _%ids126296%_
                                          __tmp126801))))
                                  (declare (not safe))
                                  (__foldr1 cons '() __tmp126800)))))
              _%stx126225%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e126278%_))
                                                (let* ((_%$tgt126283126309%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e126278%_)))
                                                       (_%$hd126284126312%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt126283126309%_)))
                                                       (_%$tl126285126315%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt126283126309%_)))
                                                       (_%id126319%_
                                                        _%$hd126284126312%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl126285126315%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id126319%_)
                           (cons (__compile _%expr126276%_) '())))
               _%stx126225%_)
              (_%$E126281126306%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E126281126306%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e126278%_))
                                      (let* ((_%$tgt126286126324%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e126278%_)))
                                             (_%$hd126287126327%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt126286126324%_)))
                                             (_%$tl126288126330%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt126286126324%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd126287126327%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl126288126330%_))
                                                        '())
                                                (__compile _%expr126276%_)
                                                (_%$E126280126321%_))
                                            (_%$E126280126321%_)))
                                      (_%$E126280126321%_)))
                                (_%$E126229126241%_)))
                          (_%$E126229126241%_)))
                    (_%$E126229126241%_)))
              (_%$E126229126241%_)))))
    (define __compile-head-id
      (lambda (_%e126223%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e126223%_))
             _%e126223%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd126180%_)
        (let _%recur126182%_ ((_%rest126184%_ _%hd126180%_))
          (let* ((_%$e126186%_ _%rest126184%_)
                 (_%$E126188126206%_
                  (lambda ()
                    (let ((_%$E126189126203%_
                           (lambda ()
                             (let* ((_%$E126190126198%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e126186%_))))
                                    (_%tail126201%_ _%$e126186%_))
                               (__compile-head-id _%tail126201%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e126186%_))
                                  '())
                          '()
                          (_%$E126189126203%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e126186%_))
                (let* ((_%$tgt126191126209%_
                        (let () (declare (not safe)) (__AST-e _%$e126186%_)))
                       (_%$hd126192126212%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt126191126209%_)))
                       (_%$tl126193126215%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt126191126209%_)))
                       (_%hd126219%_ _%$hd126192126212%_)
                       (_%rest126221%_ _%$tl126193126215%_))
                  (cons (__compile-head-id _%hd126219%_)
                        (_%recur126182%_ _%rest126221%_)))
                (_%$E126188126206%_))))))
    (define __compile-lambda%
      (lambda (_%stx126127%_)
        (let* ((_%$e126129%_ _%stx126127%_)
               (_%$E126131126143%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e126129%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e126129%_))
              (let* ((_%$tgt126132126146%_
                      (let () (declare (not safe)) (__AST-e _%$e126129%_)))
                     (_%$hd126133126149%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt126132126146%_)))
                     (_%$tl126134126152%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt126132126146%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl126134126152%_))
                    (let* ((_%$tgt126135126156%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl126134126152%_)))
                           (_%$hd126136126159%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt126135126156%_)))
                           (_%$tl126137126162%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt126135126156%_)))
                           (_%hd126166%_ _%$hd126136126159%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl126137126162%_))
                          (let* ((_%$tgt126138126168%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl126137126162%_)))
                                 (_%$hd126139126171%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt126138126168%_)))
                                 (_%$tl126140126174%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt126138126168%_)))
                                 (_%body126178%_ _%$hd126139126171%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl126140126174%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd126166%_)
                                             (cons (__compile _%body126178%_)
                                                   '())))
                                 _%stx126127%_)
                                (_%$E126131126143%_)))
                          (_%$E126131126143%_)))
                    (_%$E126131126143%_)))
              (_%$E126131126143%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx125919%_)
        (letrec ((_%variadic?125921%_
                  (lambda (_%hd126092%_)
                    (let* ((_%$e126094%_ _%hd126092%_)
                           (_%$E126096126112%_
                            (lambda ()
                              (let ((_%$E126097126109%_
                                     (lambda ()
                                       (let ((_%$E126098126106%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e126094%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e126094%_))
                                            '())
                                    '#f
                                    (_%$E126097126109%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e126094%_))
                          (let* ((_%$tgt126099126115%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e126094%_)))
                                 (_%$hd126100126118%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt126099126115%_)))
                                 (_%$tl126101126121%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt126099126115%_)))
                                 (_%rest126125%_ _%$tl126101126121%_))
                            (_%variadic?125921%_ _%rest126125%_))
                          (_%$E126096126112%_)))))
                 (_%arity125922%_
                  (lambda (_%hd126057%_)
                    (let _%lp126059%_ ((_%rest126061%_ _%hd126057%_)
                                       (_%k126062%_ '0))
                      (let* ((_%$e126064%_ _%rest126061%_)
                             (_%$E126066126077%_
                              (lambda ()
                                (let ((_%$E126067126074%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e126064%_)))))
                                  _%k126062%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e126064%_))
                            (let* ((_%$tgt126068126080%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e126064%_)))
                                   (_%$hd126069126083%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt126068126080%_)))
                                   (_%$tl126070126086%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt126068126080%_)))
                                   (_%rest126090%_ _%$tl126070126086%_))
                              (_%lp126059%_
                               _%rest126090%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%k126062%_ '1))))
                            (_%$E126066126077%_))))))
                 (_%generate125923%_
                  (lambda (_%rest125984%_ _%args125985%_ _%len125986%_)
                    (let* ((_%$e125988%_ _%rest125984%_)
                           (_%$E125990126001%_
                            (lambda ()
                              (let ((_%$E125991125998%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e125988%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args125985%_ '())))
                                 _%stx125919%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e125988%_))
                          (let* ((_%$tgt125992126004%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e125988%_)))
                                 (_%$hd125993126007%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt125992126004%_)))
                                 (_%$tl125994126010%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt125992126004%_)))
                                 (_%clause126014%_ _%$hd125993126007%_)
                                 (_%rest126016%_ _%$tl125994126010%_)
                                 (_%$e126018%_ _%clause126014%_)
                                 (_%$E126020126029%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e126018%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e126018%_))
                                (let* ((_%$tgt126021126032%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e126018%_)))
                                       (_%$hd126022126035%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt126021126032%_)))
                                       (_%$tl126023126038%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt126021126032%_)))
                                       (_%hd126042%_ _%$hd126022126035%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl126023126038%_))
                                      (let* ((_%$tgt126024126044%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl126023126038%_)))
                                             (_%$hd126025126047%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt126024126044%_)))
                                             (_%$tl126026126050%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt126024126044%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl126026126050%_))
                                                    '())
                                            (let ((_%clen126054%_
                                                   (_%arity125922%_
                                                    _%hd126042%_))
                                                  (_%cmp126055%_
                                                   (if (_%variadic?125921%_
                                                        _%hd126042%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp126055%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len125986%_ (cons _%clen126054%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause126014%_))
                                      (cons _%args125985%_ '())))
                          _%stx125919%_)
                         (cons (_%generate125923%_
                                _%rest126016%_
                                _%args125985%_
                                _%len125986%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx125919%_))
                                            (_%$E126020126029%_)))
                                      (_%$E126020126029%_)))
                                (_%$E126020126029%_)))
                          (_%$E125990126001%_))))))
          (let* ((_%$e125925%_ _%stx125919%_)
                 (_%$E125927125959%_
                  (lambda ()
                    (let ((_%$E125928125941%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e125925%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e125925%_))
                          (let* ((_%$tgt125929125944%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e125925%_)))
                                 (_%$hd125930125947%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt125929125944%_)))
                                 (_%$tl125931125950%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt125929125944%_)))
                                 (_%clauses125954%_ _%$tl125931125950%_))
                            (let ((_%args125956%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx125919%_))
                                  (_%len125957%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx125919%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args125956%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len125957%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args125956%_ '()))
                                         _%stx125919%_)
                                        '()))
                            '())
                      (cons (_%generate125923%_
                             _%clauses125954%_
                             _%args125956%_
                             _%len125957%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx125919%_)
                                                 '())))
                               _%stx125919%_)))
                          (_%$E125928125941%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e125925%_))
                (let* ((_%$tgt125932125962%_
                        (let () (declare (not safe)) (__AST-e _%$e125925%_)))
                       (_%$hd125933125965%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt125932125962%_)))
                       (_%$tl125934125968%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt125932125962%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl125934125968%_))
                      (let* ((_%$tgt125935125972%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl125934125968%_)))
                             (_%$hd125936125975%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt125935125972%_)))
                             (_%$tl125937125978%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt125935125972%_)))
                             (_%clause125982%_ _%$hd125936125975%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl125937125978%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause125982%_))
                            (_%$E125927125959%_)))
                      (_%$E125927125959%_)))
                (_%$E125927125959%_))))))
    (define __compile-let-form
      (lambda (_%stx125688%_ _%compile-simple125689%_ _%compile-values125690%_)
        (letrec ((_%simple-bind?125692%_
                  (lambda (_%hd125877%_)
                    (let* ((_%hd125878125888%_ _%hd125877%_)
                           (_%else125881125896%_ (lambda () '#f)))
                      (let ((_%K125884125909%_ (lambda (_%id125907%_) '#t))
                            (_%K125883125901%_ (lambda () '#t)))
                        (let ((_%try-match125880125904%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd125878125888%_ '#f))
                                     (_%K125883125901%_)
                                     (_%else125881125896%_)))))
                          (if (pair? _%hd125878125888%_)
                              (let ((_%tl125886125914%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd125878125888%_)))
                                    (_%hd125885125912%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd125878125888%_))))
                                (if (null? _%tl125886125914%_)
                                    (let ((_%id125917%_ _%hd125885125912%_))
                                      (_%K125884125909%_ _%id125917%_))
                                    (_%try-match125880125904%_)))
                              (_%try-match125880125904%_)))))))
                 (_%car-e125693%_
                  (lambda (_%hd125875%_)
                    (if (pair? _%hd125875%_)
                        (let () (declare (not safe)) (##car _%hd125875%_))
                        _%hd125875%_))))
          (let* ((_%$e125695%_ _%stx125688%_)
                 (_%$E125697125840%_
                  (lambda ()
                    (let ((_%$E125698125720%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e125695%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e125695%_))
                          (let* ((_%$tgt125699125723%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e125695%_)))
                                 (_%$hd125700125726%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt125699125723%_)))
                                 (_%$tl125701125729%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt125699125723%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl125701125729%_))
                                (let* ((_%$tgt125702125733%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl125701125729%_)))
                                       (_%$hd125703125736%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt125702125733%_)))
                                       (_%$tl125704125739%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt125702125733%_)))
                                       (_%hd125743%_ _%$hd125703125736%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl125704125739%_))
                                      (let* ((_%$tgt125705125745%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl125704125739%_)))
                                             (_%$hd125706125748%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt125705125745%_)))
                                             (_%$tl125707125751%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt125705125745%_)))
                                             (_%body125755%_
                                              _%$hd125706125748%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl125707125751%_))
                                                    '())
                                            (let* ((_%hd-ids125795%_
                                                    (map (lambda (_%bind125757%_)
                                                           (let* ((_%$e125759%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind125757%_)
                          (_%$E125761125770%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e125759%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e125759%_))
                         (let* ((_%$tgt125762125773%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e125759%_)))
                                (_%$hd125763125776%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt125762125773%_)))
                                (_%$tl125764125779%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt125762125773%_)))
                                (_%ids125783%_ _%$hd125763125776%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl125764125779%_))
                               (let* ((_%$tgt125765125785%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl125764125779%_)))
                                      (_%$hd125766125788%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt125765125785%_)))
                                      (_%$tl125767125791%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt125765125785%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl125767125791%_))
                                             '())
                                     _%ids125783%_
                                     (_%$E125761125770%_)))
                               (_%$E125761125770%_)))
                         (_%$E125761125770%_))))
                 _%hd125743%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs125835%_
                                                    (map (lambda (_%bind125797%_)
                                                           (let* ((_%$e125799%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind125797%_)
                          (_%$E125801125810%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e125799%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e125799%_))
                         (let* ((_%$tgt125802125813%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e125799%_)))
                                (_%$hd125803125816%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt125802125813%_)))
                                (_%$tl125804125819%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt125802125813%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl125804125819%_))
                               (let* ((_%$tgt125805125823%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl125804125819%_)))
                                      (_%$hd125806125826%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt125805125823%_)))
                                      (_%$tl125807125829%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt125805125823%_)))
                                      (_%expr125833%_ _%$hd125806125826%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl125807125829%_))
                                             '())
                                     (__compile _%expr125833%_)
                                     (_%$E125801125810%_)))
                               (_%$E125801125810%_)))
                         (_%$E125801125810%_))))
                 _%hd125743%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body125837%_
                                                    (__compile
                                                     _%body125755%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__andmap1
                                                     _%simple-bind?125692%_
                                                     _%hd-ids125795%_))
                                                  (_%compile-simple125689%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e125693%_
                                                            _%hd-ids125795%_))
                                                   _%exprs125835%_
                                                   _%body125837%_)
                                                  (_%compile-values125690%_
                                                   _%hd-ids125795%_
                                                   _%exprs125835%_
                                                   _%body125837%_)))
                                            (_%$E125698125720%_)))
                                      (_%$E125698125720%_)))
                                (_%$E125698125720%_)))
                          (_%$E125698125720%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e125695%_))
                (let* ((_%$tgt125708125843%_
                        (let () (declare (not safe)) (__AST-e _%$e125695%_)))
                       (_%$hd125709125846%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt125708125843%_)))
                       (_%$tl125710125849%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt125708125843%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl125710125849%_))
                      (let* ((_%$tgt125711125853%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl125710125849%_)))
                             (_%$hd125712125856%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt125711125853%_)))
                             (_%$tl125713125859%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt125711125853%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd125712125856%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl125713125859%_))
                                (let* ((_%$tgt125714125863%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl125713125859%_)))
                                       (_%$hd125715125866%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt125714125863%_)))
                                       (_%$tl125716125869%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt125714125863%_)))
                                       (_%body125873%_ _%$hd125715125866%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl125716125869%_))
                                              '())
                                      (__compile _%body125873%_)
                                      (_%$E125697125840%_)))
                                (_%$E125697125840%_))
                            (_%$E125697125840%_)))
                      (_%$E125697125840%_)))
                (_%$E125697125840%_))))))
    (define __compile-let-values%
      (lambda (_%stx125500%_)
        (letrec ((_%compile-simple125502%_
                  (lambda (_%hd-ids125684%_ _%exprs125685%_ _%body125686%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp126803
                                        (map __compile-head-id
                                             _%hd-ids125684%_)))
                                   (declare (not safe))
                                   (##map list __tmp126803 _%exprs125685%_))
                                 (cons _%body125686%_ '())))
                     _%stx125500%_)))
                 (_%compile-values125503%_
                  (lambda (_%hd-ids125599%_ _%exprs125600%_ _%body125601%_)
                    (let _%lp125603%_ ((_%rest125605%_ _%hd-ids125599%_)
                                       (_%exprs125606%_ _%exprs125600%_)
                                       (_%bind125607%_ '())
                                       (_%post125608%_ '()))
                      (let* ((_%rest125609125623%_ _%rest125605%_)
                             (_%else125612125631%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind125607%_)
                                             (cons (_%compile-post125504%_
                                                    _%post125608%_
                                                    _%body125601%_)
                                                   '())))
                                 _%stx125500%_))))
                        (let ((_%K125617125667%_
                               (lambda (_%rest125664%_ _%id125665%_)
                                 (_%lp125603%_
                                  _%rest125664%_
                                  (cdr _%exprs125606%_)
                                  (cons (cons (__compile-head-id _%id125665%_)
                                              (cons (car _%exprs125606%_) '()))
                                        _%bind125607%_)
                                  _%post125608%_)))
                              (_%K125614125649%_
                               (lambda (_%rest125635%_ _%hd125636%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd125636%_))
                                     (_%lp125603%_
                                      _%rest125635%_
                                      (cdr _%exprs125606%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd125636%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs125606%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind125607%_)
                                      _%post125608%_)
                                     (if (list? _%hd125636%_)
                                         (let* ((_%len125640%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd125636%_)))
                                                (_%tmp125642%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp125603%_
                                            _%rest125635%_
                                            (cdr _%exprs125606%_)
                                            (cons (cons _%tmp125642%_
                                                        (cons (car _%exprs125606%_)
                                                              '()))
                                                  _%bind125607%_)
                                            (cons (cons _%tmp125642%_
                                                        (cons _%len125640%_
                                                              (let ((__tmp126805
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id125645%_ _%k125646%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id125645%_))
                                   (cons (__SRC__0 _%id125645%_) _%k125646%_)
                                   '#f)))
                            (__tmp126804
                             (let ()
                               (declare (not safe))
                               (##iota _%len125640%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp126805 _%hd125636%_ __tmp126804))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post125608%_)))
                                         (__compile-error__%
                                          _%stx125500%_
                                          _%hd125636%_))))))
                          (if (pair? _%rest125609125623%_)
                              (let ((_%tl125619125672%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest125609125623%_)))
                                    (_%hd125618125670%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest125609125623%_))))
                                (if (pair? _%hd125618125670%_)
                                    (let ((_%tl125621125677%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd125618125670%_)))
                                          (_%hd125620125675%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd125618125670%_))))
                                      (if (null? _%tl125621125677%_)
                                          (let ((_%id125680%_
                                                 _%hd125620125675%_)
                                                (_%rest125682%_
                                                 _%tl125619125672%_))
                                            (_%K125617125667%_
                                             _%rest125682%_
                                             _%id125680%_))
                                          (let ((_%hd125657%_
                                                 _%hd125618125670%_)
                                                (_%rest125659%_
                                                 _%tl125619125672%_))
                                            (_%K125614125649%_
                                             _%rest125659%_
                                             _%hd125657%_))))
                                    (let ((_%hd125657%_ _%hd125618125670%_)
                                          (_%rest125659%_ _%tl125619125672%_))
                                      (_%K125614125649%_
                                       _%rest125659%_
                                       _%hd125657%_))))
                              (_%else125612125631%_)))))))
                 (_%compile-post125504%_
                  (lambda (_%post125506%_ _%body125507%_)
                    (let _%lp125509%_ ((_%rest125511%_ _%post125506%_)
                                       (_%check125512%_ '())
                                       (_%bind125513%_ '()))
                      (let* ((_%rest125514125526%_ _%rest125511%_)
                             (_%else125516125534%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp126806
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind125513%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body125507%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx125500%_)
                                                    '())))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp126806
                                          _%check125512%_)))
                                 _%stx125500%_)))
                             (_%K125518125573%_
                              (lambda (_%rest125537%_
                                       _%init125538%_
                                       _%len125539%_
                                       _%tmp125540%_)
                                (_%lp125509%_
                                 _%rest125537%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp125540%_
                                                    (cons _%len125539%_ '())))
                                        _%stx125500%_)
                                       _%check125512%_)
                                 (let ((__tmp126807
                                        (lambda (_%hd125542%_ _%r125543%_)
                                          (let* ((_%hd125544125551%_
                                                  _%hd125542%_)
                                                 (_%E125546125555%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd125544125551%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K125547125561%_
                                                  (lambda (_%k125558%_
                                                           _%id125559%_)
                                                    (cons (cons _%id125559%_
                                                                (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp125540%_
                                          (cons _%k125558%_ '())))
                              '()))
                  _%r125543%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd125544125551%_)
                                                (let ((_%hd125548125564%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd125544125551%_)))
                                                      (_%tl125549125566%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd125544125551%_))))
                                                  (let* ((_%id125569%_
                                                          _%hd125548125564%_)
                                                         (_%k125571%_
                                                          _%tl125549125566%_))
                                                    (_%K125547125561%_
                                                     _%k125571%_
                                                     _%id125569%_)))
                                                (_%E125546125555%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp126807
                                    _%bind125513%_
                                    _%init125538%_))))))
                        (if (pair? _%rest125514125526%_)
                            (let ((_%hd125519125576%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest125514125526%_)))
                                  (_%tl125520125578%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest125514125526%_))))
                              (if (pair? _%hd125519125576%_)
                                  (let ((_%hd125521125581%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd125519125576%_)))
                                        (_%tl125522125583%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd125519125576%_))))
                                    (let ((_%tmp125586%_ _%hd125521125581%_))
                                      (if (pair? _%tl125522125583%_)
                                          (let ((_%hd125523125588%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl125522125583%_)))
                                                (_%tl125524125590%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl125522125583%_))))
                                            (let* ((_%len125593%_
                                                    _%hd125523125588%_)
                                                   (_%init125595%_
                                                    _%tl125524125590%_)
                                                   (_%rest125597%_
                                                    _%tl125520125578%_))
                                              (_%K125518125573%_
                                               _%rest125597%_
                                               _%init125595%_
                                               _%len125593%_
                                               _%tmp125586%_)))
                                          (_%else125516125534%_))))
                                  (_%else125516125534%_)))
                            (_%else125516125534%_)))))))
          (__compile-let-form
           _%stx125500%_
           _%compile-simple125502%_
           _%compile-values125503%_))))
    (define __compile-letrec-values%
      (lambda (_%stx125297%_)
        (letrec ((_%compile-simple125299%_
                  (lambda (_%hd-ids125496%_ _%exprs125497%_ _%body125498%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp126808
                                        (map __compile-head-id
                                             _%hd-ids125496%_)))
                                   (declare (not safe))
                                   (##map list __tmp126808 _%exprs125497%_))
                                 (cons _%body125498%_ '())))
                     _%stx125297%_)))
                 (_%compile-values125300%_
                  (lambda (_%hd-ids125407%_ _%exprs125408%_ _%body125409%_)
                    (let _%lp125411%_ ((_%rest125413%_ _%hd-ids125407%_)
                                       (_%exprs125414%_ _%exprs125408%_)
                                       (_%pre125415%_ '())
                                       (_%bind125416%_ '())
                                       (_%post125417%_ '()))
                      (let* ((_%rest125418125432%_ _%rest125413%_)
                             (_%else125421125440%_
                              (lambda ()
                                (_%compile-inner125301%_
                                 _%pre125415%_
                                 _%bind125416%_
                                 _%post125417%_
                                 _%body125409%_))))
                        (let ((_%K125426125479%_
                               (lambda (_%rest125476%_ _%id125477%_)
                                 (_%lp125411%_
                                  _%rest125476%_
                                  (cdr _%exprs125414%_)
                                  _%pre125415%_
                                  (cons (cons (__compile-head-id _%id125477%_)
                                              (cons (car _%exprs125414%_) '()))
                                        _%bind125416%_)
                                  _%post125417%_)))
                              (_%K125423125461%_
                               (lambda (_%rest125444%_ _%hd125445%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd125445%_))
                                     (_%lp125411%_
                                      _%rest125444%_
                                      (cdr _%exprs125414%_)
                                      _%pre125415%_
                                      (cons (cons (__compile-head-id
                                                   _%hd125445%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs125414%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind125416%_)
                                      _%post125417%_)
                                     (if (list? _%hd125445%_)
                                         (let* ((_%len125449%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd125445%_)))
                                                (_%tmp125451%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp125411%_
                                            _%rest125444%_
                                            (cdr _%exprs125414%_)
                                            (let ((__tmp126809
                                                   (lambda (_%id125454%_
                                                            _%r125455%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id125454%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id125454%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r125455%_)
                 _%r125455%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (__foldl1
                                               __tmp126809
                                               _%pre125415%_
                                               _%hd125445%_))
                                            (cons (cons _%tmp125451%_
                                                        (cons (car _%exprs125414%_)
                                                              '()))
                                                  _%bind125416%_)
                                            (cons (cons _%tmp125451%_
                                                        (cons _%len125449%_
                                                              (let ((__tmp126811
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id125457%_ _%k125458%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id125457%_))
                                   (cons (__SRC__0 _%id125457%_) _%k125458%_)
                                   '#f)))
                            (__tmp126810
                             (let ()
                               (declare (not safe))
                               (##iota _%len125449%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp126811 _%hd125445%_ __tmp126810))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post125417%_)))
                                         (__compile-error__%
                                          _%stx125297%_
                                          _%hd125445%_))))))
                          (if (pair? _%rest125418125432%_)
                              (let ((_%tl125428125484%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest125418125432%_)))
                                    (_%hd125427125482%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest125418125432%_))))
                                (if (pair? _%hd125427125482%_)
                                    (let ((_%tl125430125489%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd125427125482%_)))
                                          (_%hd125429125487%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd125427125482%_))))
                                      (if (null? _%tl125430125489%_)
                                          (let ((_%id125492%_
                                                 _%hd125429125487%_)
                                                (_%rest125494%_
                                                 _%tl125428125484%_))
                                            (_%K125426125479%_
                                             _%rest125494%_
                                             _%id125492%_))
                                          (let ((_%hd125469%_
                                                 _%hd125427125482%_)
                                                (_%rest125471%_
                                                 _%tl125428125484%_))
                                            (_%K125423125461%_
                                             _%rest125471%_
                                             _%hd125469%_))))
                                    (let ((_%hd125469%_ _%hd125427125482%_)
                                          (_%rest125471%_ _%tl125428125484%_))
                                      (_%K125423125461%_
                                       _%rest125471%_
                                       _%hd125469%_))))
                              (_%else125421125440%_)))))))
                 (_%compile-inner125301%_
                  (lambda (_%pre125402%_
                           _%bind125403%_
                           _%post125404%_
                           _%body125405%_)
                    (if (null? _%pre125402%_)
                        (_%compile-bind125302%_
                         _%bind125403%_
                         _%post125404%_
                         _%body125405%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre125402%_)
                                     (cons (_%compile-bind125302%_
                                            _%bind125403%_
                                            _%post125404%_
                                            _%body125405%_)
                                           '())))
                         _%stx125297%_))))
                 (_%compile-bind125302%_
                  (lambda (_%bind125398%_ _%post125399%_ _%body125400%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind125398%_)
                                 (cons (_%compile-post125303%_
                                        _%post125399%_
                                        _%body125400%_)
                                       '())))
                     _%stx125297%_)))
                 (_%compile-post125303%_
                  (lambda (_%post125305%_ _%body125306%_)
                    (let _%lp125308%_ ((_%rest125310%_ _%post125305%_)
                                       (_%check125311%_ '())
                                       (_%bind125312%_ '()))
                      (let* ((_%rest125313125325%_ _%rest125310%_)
                             (_%else125315125333%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp126812
                                              (let ((__tmp126813
                                                     (cons _%body125306%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp126813
                                                 _%bind125312%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp126812
                                          _%check125311%_)))
                                 _%stx125297%_)))
                             (_%K125317125372%_
                              (lambda (_%rest125336%_
                                       _%init125337%_
                                       _%len125338%_
                                       _%tmp125339%_)
                                (_%lp125308%_
                                 _%rest125336%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp125339%_
                                                    (cons _%len125338%_ '())))
                                        _%stx125297%_)
                                       _%check125311%_)
                                 (let ((__tmp126814
                                        (lambda (_%hd125341%_ _%r125342%_)
                                          (let* ((_%hd125343125350%_
                                                  _%hd125341%_)
                                                 (_%E125345125354%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd125343125350%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K125346125360%_
                                                  (lambda (_%k125357%_
                                                           _%id125358%_)
                                                    (cons (cons 'set!
                                                                (cons _%id125358%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##values-ref
                                          (cons _%tmp125339%_
                                                (cons _%k125357%_ '())))
                                    '())))
                  _%r125342%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd125343125350%_)
                                                (let ((_%hd125347125363%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd125343125350%_)))
                                                      (_%tl125348125365%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd125343125350%_))))
                                                  (let* ((_%id125368%_
                                                          _%hd125347125363%_)
                                                         (_%k125370%_
                                                          _%tl125348125365%_))
                                                    (_%K125346125360%_
                                                     _%k125370%_
                                                     _%id125368%_)))
                                                (_%E125345125354%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp126814
                                    _%bind125312%_
                                    _%init125337%_))))))
                        (if (pair? _%rest125313125325%_)
                            (let ((_%hd125318125375%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest125313125325%_)))
                                  (_%tl125319125377%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest125313125325%_))))
                              (if (pair? _%hd125318125375%_)
                                  (let ((_%hd125320125380%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd125318125375%_)))
                                        (_%tl125321125382%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd125318125375%_))))
                                    (let ((_%tmp125385%_ _%hd125320125380%_))
                                      (if (pair? _%tl125321125382%_)
                                          (let ((_%hd125322125387%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl125321125382%_)))
                                                (_%tl125323125389%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl125321125382%_))))
                                            (let* ((_%len125392%_
                                                    _%hd125322125387%_)
                                                   (_%init125394%_
                                                    _%tl125323125389%_)
                                                   (_%rest125396%_
                                                    _%tl125319125377%_))
                                              (_%K125317125372%_
                                               _%rest125396%_
                                               _%init125394%_
                                               _%len125392%_
                                               _%tmp125385%_)))
                                          (_%else125315125333%_))))
                                  (_%else125315125333%_)))
                            (_%else125315125333%_)))))))
          (__compile-let-form
           _%stx125297%_
           _%compile-simple125299%_
           _%compile-values125300%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx125048%_)
        (letrec ((_%compile-simple125050%_
                  (lambda (_%hd-ids125293%_ _%exprs125294%_ _%body125295%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp126815
                                        (map __compile-head-id
                                             _%hd-ids125293%_)))
                                   (declare (not safe))
                                   (##map list __tmp126815 _%exprs125294%_))
                                 (cons _%body125295%_ '())))
                     _%stx125048%_)))
                 (_%compile-values125051%_
                  (lambda (_%hd-ids125200%_ _%exprs125201%_ _%body125202%_)
                    (let _%lp125204%_ ((_%rest125206%_ _%hd-ids125200%_)
                                       (_%exprs125207%_ _%exprs125201%_)
                                       (_%bind125208%_ '())
                                       (_%post125209%_ '()))
                      (let* ((_%rest125210125224%_ _%rest125206%_)
                             (_%else125213125232%_
                              (lambda ()
                                (_%compile-bind125052%_
                                 _%bind125208%_
                                 _%post125209%_
                                 _%body125202%_))))
                        (let ((_%K125218125276%_
                               (lambda (_%rest125271%_ _%hd125272%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd125272%_))
                                     (let ((_%id125274%_
                                            (__SRC__0 _%hd125272%_)))
                                       (_%lp125204%_
                                        _%rest125271%_
                                        (cdr _%exprs125207%_)
                                        (cons (cons _%id125274%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind125208%_)
                                        (cons (cons _%id125274%_
                                                    (cons (car _%exprs125207%_)
                                                          '()))
                                              _%post125209%_)))
                                     (_%lp125204%_
                                      _%rest125271%_
                                      (cdr _%exprs125207%_)
                                      _%bind125208%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs125207%_)
                                                        '()))
                                            _%post125209%_)))))
                              (_%K125215125256%_
                               (lambda (_%rest125236%_ _%hd125237%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd125237%_))
                                     (let ((_%id125240%_
                                            (__SRC__0 _%hd125237%_)))
                                       (_%lp125204%_
                                        _%rest125236%_
                                        (cdr _%exprs125207%_)
                                        (cons (cons _%id125240%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind125208%_)
                                        (cons (cons _%id125240%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs125207%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post125209%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd125237%_))
                                         (if (list? _%hd125237%_)
                                             (let* ((_%len125244%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd125237%_)))
                                                    (_%tmp125246%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp125204%_
                                                _%rest125236%_
                                                (cdr _%exprs125207%_)
                                                (let ((__tmp126816
                                                       (lambda (_%id125249%_
                                                                _%r125250%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id125249%_))
                     (cons (cons (__SRC__0 _%id125249%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r125250%_)
                     _%r125250%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldl1
                                                   __tmp126816
                                                   _%bind125208%_
                                                   _%hd125237%_))
                                                (cons (cons _%tmp125246%_
                                                            (cons (car _%exprs125207%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len125244%_
                                (let ((__tmp126818
                                       (lambda (_%id125252%_ _%k125253%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id125252%_))
                                             (cons (__SRC__0 _%id125252%_)
                                                   _%k125253%_)
                                             '#f)))
                                      (__tmp126817
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len125244%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp126818
                                   _%hd125237%_
                                   __tmp126817)))))
              _%post125209%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx125048%_
                                              _%hd125237%_))
                                         (_%lp125204%_
                                          _%rest125236%_
                                          (cdr _%exprs125207%_)
                                          _%bind125208%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs125207%_)
                                                            '()))
                                                _%post125209%_)))))))
                          (if (pair? _%rest125210125224%_)
                              (let ((_%tl125220125281%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest125210125224%_)))
                                    (_%hd125219125279%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest125210125224%_))))
                                (if (pair? _%hd125219125279%_)
                                    (let ((_%tl125222125286%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd125219125279%_)))
                                          (_%hd125221125284%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd125219125279%_))))
                                      (if (null? _%tl125222125286%_)
                                          (let ((_%hd125289%_
                                                 _%hd125221125284%_)
                                                (_%rest125291%_
                                                 _%tl125220125281%_))
                                            (_%K125218125276%_
                                             _%rest125291%_
                                             _%hd125289%_))
                                          (let ((_%hd125264%_
                                                 _%hd125219125279%_)
                                                (_%rest125266%_
                                                 _%tl125220125281%_))
                                            (_%K125215125256%_
                                             _%rest125266%_
                                             _%hd125264%_))))
                                    (let ((_%hd125264%_ _%hd125219125279%_)
                                          (_%rest125266%_ _%tl125220125281%_))
                                      (_%K125215125256%_
                                       _%rest125266%_
                                       _%hd125264%_))))
                              (_%else125213125232%_)))))))
                 (_%compile-bind125052%_
                  (lambda (_%bind125196%_ _%post125197%_ _%body125198%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind125196%_)
                                 (cons (_%compile-post125053%_
                                        _%post125197%_
                                        _%body125198%_)
                                       '())))
                     _%stx125048%_)))
                 (_%compile-post125053%_
                  (lambda (_%post125055%_ _%body125056%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp126819
                                  (let ((__tmp126821
                                         (lambda (_%hd125058%_ _%r125059%_)
                                           (let* ((_%hd125060125083%_
                                                   _%hd125058%_)
                                                  (_%E125064125087%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd125060125083%_
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
                                             (let ((_%K125077125181%_
                                                    (lambda (_%expr125179%_)
                                                      (cons _%expr125179%_
                                                            _%r125059%_)))
                                                   (_%K125072125159%_
                                                    (lambda (_%expr125156%_
                                                             _%id125157%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id125157%_ (cons _%expr125156%_ '())))
                     _%stx125048%_)
                    _%r125059%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K125065125126%_
                                                    (lambda (_%init125091%_
                                                             _%len125092%_
                                                             _%expr125093%_
                                                             _%tmp125094%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp125094%_
                                             (cons _%expr125093%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp125094%_
                                                    (cons _%len125092%_ '())))
                                        _%stx125048%_)
                                       (let ((__tmp126822
                                              (map (lambda (_%hd125096%_)
                                                     (let* ((_%hd125097125104%_
                                                             _%hd125096%_)
                                                            (_%E125099125108%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd125097125104%_
                                '([id . k])))
                       '#!void))
                    (_%K125100125114%_
                     (lambda (_%k125111%_ _%id125112%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id125112%_
                                    (cons (cons '##values-ref
                                                (cons _%tmp125094%_
                                                      (cons _%k125111%_ '())))
                                          '())))
                        _%stx125048%_))))
               (if (pair? _%hd125097125104%_)
                   (let ((_%hd125101125117%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd125097125104%_)))
                         (_%tl125102125119%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd125097125104%_))))
                     (let* ((_%id125122%_ _%hd125101125117%_)
                            (_%k125124%_ _%tl125102125119%_))
                       (_%K125100125114%_ _%k125124%_ _%id125122%_)))
                   (_%E125099125108%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init125091%_)))
                                         (declare (not safe))
                                         (__foldr1 cons '() __tmp126822)))))
                     _%stx125048%_)
                    _%r125059%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match126675126676%_
                                                       (lambda (_%hd125066125129%_
                                                                _%tl125067125131%_
                                                                _%hd125068125136%_
                                                                _%tl125069125138%_)
                                                         (let ((_%tmp125134%_
                                                                _%hd125066125129%_)
                                                               (_%expr125141%_
                                                                _%hd125068125136%_))
                                                           (_%E125064125087%_))))
                                                      (_%__match126669126670%_
                                                       (lambda (_%hd125066125129%_
                                                                _%tl125067125131%_)
                                                         (let ((_%tmp125134%_
                                                                _%hd125066125129%_))
                                                           (_%E125064125087%_)))))
                                                 (if (pair? _%hd125060125083%_)
                                                     (let ((_%tl125079125186%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd125060125083%_)))
                                                           (_%hd125078125184%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd125060125083%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd125078125184%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%tl125079125186%_)
                       (let ((_%tl125081125191%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl125079125186%_)))
                             (_%hd125080125189%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl125079125186%_))))
                         (if (null? _%tl125081125191%_)
                             (let ((_%expr125194%_ _%hd125080125189%_))
                               (_%K125077125181%_ _%expr125194%_))
                             (if (pair? _%tl125081125191%_)
                                 (let ((_%tl125071125145%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl125081125191%_)))
                                       (_%hd125070125143%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl125081125191%_))))
                                   (let ((_%tmp125134%_ _%hd125078125184%_)
                                         (_%expr125141%_ _%hd125080125189%_)
                                         (_%len125148%_ _%hd125070125143%_)
                                         (_%init125150%_ _%tl125071125145%_))
                                     (_%K125065125126%_
                                      _%init125150%_
                                      _%len125148%_
                                      _%expr125141%_
                                      _%tmp125134%_)))
                                 (_%__match126675126676%_
                                  _%hd125078125184%_
                                  _%tl125079125186%_
                                  _%hd125080125189%_
                                  _%tl125081125191%_))))
                       (_%__match126669126670%_
                        _%hd125078125184%_
                        _%tl125079125186%_))
                   (if (pair? _%tl125079125186%_)
                       (let ((_%tl125076125171%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl125079125186%_)))
                             (_%hd125075125169%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl125079125186%_))))
                         (if (null? _%tl125076125171%_)
                             (let ((_%id125167%_ _%hd125078125184%_)
                                   (_%expr125174%_ _%hd125075125169%_))
                               (_%K125072125159%_ _%expr125174%_ _%id125167%_))
                             (if (pair? _%tl125076125171%_)
                                 (let ((_%tl125071125145%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl125076125171%_)))
                                       (_%hd125070125143%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl125076125171%_))))
                                   (let ((_%tmp125134%_ _%hd125078125184%_)
                                         (_%expr125141%_ _%hd125075125169%_)
                                         (_%len125148%_ _%hd125070125143%_)
                                         (_%init125150%_ _%tl125071125145%_))
                                     (_%K125065125126%_
                                      _%init125150%_
                                      _%len125148%_
                                      _%expr125141%_
                                      _%tmp125134%_)))
                                 (_%__match126675126676%_
                                  _%hd125078125184%_
                                  _%tl125079125186%_
                                  _%hd125075125169%_
                                  _%tl125076125171%_))))
                       (_%__match126669126670%_
                        _%hd125078125184%_
                        _%tl125079125186%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E125064125087%_)))))))
                                        (__tmp126820 (list _%body125056%_)))
                                    (declare (not safe))
                                    (__foldl1
                                     __tmp126821
                                     __tmp126820
                                     _%post125055%_))))
                             (declare (not safe))
                             (__foldr1 cons '() __tmp126819)))
                     _%stx125048%_))))
          (__compile-let-form
           _%stx125048%_
           _%compile-simple125050%_
           _%compile-values125051%_))))
    (define __compile-call%
      (lambda (_%stx125008%_)
        (let* ((_%$e125010%_ _%stx125008%_)
               (_%$E125012125021%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e125010%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e125010%_))
              (let* ((_%$tgt125013125024%_
                      (let () (declare (not safe)) (__AST-e _%$e125010%_)))
                     (_%$hd125014125027%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt125013125024%_)))
                     (_%$tl125015125030%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt125013125024%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl125015125030%_))
                    (let* ((_%$tgt125016125034%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl125015125030%_)))
                           (_%$hd125017125037%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt125016125034%_)))
                           (_%$tl125018125040%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt125016125034%_)))
                           (_%rator125044%_ _%$hd125017125037%_)
                           (_%rands125046%_ _%$tl125018125040%_))
                      (__SRC__%
                       (cons (__compile _%rator125044%_)
                             (map __compile _%rands125046%_))
                       _%stx125008%_))
                    (_%$E125012125021%_)))
              (_%$E125012125021%_)))))
    (define __compile-ref%
      (lambda (_%stx124970%_)
        (let* ((_%$e124972%_ _%stx124970%_)
               (_%$E124974124983%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e124972%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e124972%_))
              (let* ((_%$tgt124975124986%_
                      (let () (declare (not safe)) (__AST-e _%$e124972%_)))
                     (_%$hd124976124989%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt124975124986%_)))
                     (_%$tl124977124992%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt124975124986%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl124977124992%_))
                    (let* ((_%$tgt124978124996%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl124977124992%_)))
                           (_%$hd124979124999%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt124978124996%_)))
                           (_%$tl124980125002%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt124978124996%_)))
                           (_%id125006%_ _%$hd124979124999%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl124980125002%_))
                                  '())
                          (__SRC__% _%id125006%_ _%stx124970%_)
                          (_%$E124974124983%_)))
                    (_%$E124974124983%_)))
              (_%$E124974124983%_)))))
    (define __compile-setq%
      (lambda (_%stx124917%_)
        (let* ((_%$e124919%_ _%stx124917%_)
               (_%$E124921124933%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e124919%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e124919%_))
              (let* ((_%$tgt124922124936%_
                      (let () (declare (not safe)) (__AST-e _%$e124919%_)))
                     (_%$hd124923124939%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt124922124936%_)))
                     (_%$tl124924124942%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt124922124936%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl124924124942%_))
                    (let* ((_%$tgt124925124946%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl124924124942%_)))
                           (_%$hd124926124949%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt124925124946%_)))
                           (_%$tl124927124952%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt124925124946%_)))
                           (_%id124956%_ _%$hd124926124949%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl124927124952%_))
                          (let* ((_%$tgt124928124958%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl124927124952%_)))
                                 (_%$hd124929124961%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt124928124958%_)))
                                 (_%$tl124930124964%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt124928124958%_)))
                                 (_%expr124968%_ _%$hd124929124961%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl124930124964%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id124956%_
                                              _%stx124917%_)
                                             (cons (__compile _%expr124968%_)
                                                   '())))
                                 _%stx124917%_)
                                (_%$E124921124933%_)))
                          (_%$E124921124933%_)))
                    (_%$E124921124933%_)))
              (_%$E124921124933%_)))))
    (define __compile-if%
      (lambda (_%stx124849%_)
        (let* ((_%$e124851%_ _%stx124849%_)
               (_%$E124853124868%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e124851%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e124851%_))
              (let* ((_%$tgt124854124871%_
                      (let () (declare (not safe)) (__AST-e _%$e124851%_)))
                     (_%$hd124855124874%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt124854124871%_)))
                     (_%$tl124856124877%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt124854124871%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl124856124877%_))
                    (let* ((_%$tgt124857124881%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl124856124877%_)))
                           (_%$hd124858124884%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt124857124881%_)))
                           (_%$tl124859124887%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt124857124881%_)))
                           (_%p124891%_ _%$hd124858124884%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl124859124887%_))
                          (let* ((_%$tgt124860124893%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl124859124887%_)))
                                 (_%$hd124861124896%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt124860124893%_)))
                                 (_%$tl124862124899%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt124860124893%_)))
                                 (_%t124903%_ _%$hd124861124896%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl124862124899%_))
                                (let* ((_%$tgt124863124905%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl124862124899%_)))
                                       (_%$hd124864124908%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt124863124905%_)))
                                       (_%$tl124865124911%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt124863124905%_)))
                                       (_%f124915%_ _%$hd124864124908%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl124865124911%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p124891%_)
                                                   (cons (__compile
                                                          _%t124903%_)
                                                         (cons (__compile
                                                                _%f124915%_)
                                                               '()))))
                                       _%stx124849%_)
                                      (_%$E124853124868%_)))
                                (_%$E124853124868%_)))
                          (_%$E124853124868%_)))
                    (_%$E124853124868%_)))
              (_%$E124853124868%_)))))
    (define __compile-quote%
      (lambda (_%stx124811%_)
        (let* ((_%$e124813%_ _%stx124811%_)
               (_%$E124815124824%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e124813%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e124813%_))
              (let* ((_%$tgt124816124827%_
                      (let () (declare (not safe)) (__AST-e _%$e124813%_)))
                     (_%$hd124817124830%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt124816124827%_)))
                     (_%$tl124818124833%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt124816124827%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl124818124833%_))
                    (let* ((_%$tgt124819124837%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl124818124833%_)))
                           (_%$hd124820124840%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt124819124837%_)))
                           (_%$tl124821124843%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt124819124837%_)))
                           (_%e124847%_ _%$hd124820124840%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl124821124843%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e124847%_))
                                       '()))
                           _%stx124811%_)
                          (_%$E124815124824%_)))
                    (_%$E124815124824%_)))
              (_%$E124815124824%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx124773%_)
        (let* ((_%$e124775%_ _%stx124773%_)
               (_%$E124777124786%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e124775%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e124775%_))
              (let* ((_%$tgt124778124789%_
                      (let () (declare (not safe)) (__AST-e _%$e124775%_)))
                     (_%$hd124779124792%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt124778124789%_)))
                     (_%$tl124780124795%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt124778124789%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl124780124795%_))
                    (let* ((_%$tgt124781124799%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl124780124795%_)))
                           (_%$hd124782124802%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt124781124799%_)))
                           (_%$tl124783124805%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt124781124799%_)))
                           (_%e124809%_ _%$hd124782124802%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl124783124805%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e124809%_ '()))
                           _%stx124773%_)
                          (_%$E124777124786%_)))
                    (_%$E124777124786%_)))
              (_%$E124777124786%_)))))
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

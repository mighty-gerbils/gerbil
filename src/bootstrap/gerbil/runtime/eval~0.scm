(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1768864948)
  (begin
    (define __syntax::t
      (let ((__tmp126805 (list)) (__tmp126804 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp126805
         '(e id)
         __tmp126804
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args126609%_
        (apply make-instance __syntax::t _%$args126609%_)))
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
      (let ((__tmp126807 (list __syntax::t))
            (__tmp126806 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp126807
         '()
         __tmp126806
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args126606%_
        (apply make-instance __core-form::t _%$args126606%_)))
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
      (let ((__tmp126809 (list __core-form::t))
            (__tmp126808 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp126809
         '()
         __tmp126808
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args126603%_
        (apply make-instance __core-expression::t _%$args126603%_)))
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
      (let ((__tmp126811 (list __core-form::t))
            (__tmp126810 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp126811
         '()
         __tmp126810
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args126600%_
        (apply make-instance __core-special-form::t _%$args126600%_)))
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
      (lambda (_%id126598%_)
        (let ((__tmp126812
               (let () (declare (not safe)) (__AST-e _%id126598%_))))
          (declare (not safe))
          (__hash-get __core __tmp126812))))
    (define __core-bound-id?__%
      (lambda (_%id126581%_ _%is?126582%_)
        (let ((_%$e126584%_ (__core-resolve _%id126581%_)))
          (if _%$e126584%_ (_%is?126582%_ _%$e126584%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id126591%_)
        (let ((_%is?126593%_ true))
          (__core-bound-id?__% _%id126591%_ _%is?126593%_))))
    (define __core-bound-id?
      (lambda _g126813_
        (let ((_g126814_ (let () (declare (not safe)) (##length _g126813_))))
          (cond ((let () (declare (not safe)) (##fx= _g126814_ 1))
                 (apply __core-bound-id?__0 _g126813_))
                ((let () (declare (not safe)) (##fx= _g126814_ 2))
                 (apply __core-bound-id?__% _g126813_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g126813_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id126564%_ _%e126565%_ _%make126566%_)
        (let ((__tmp126815
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e126565%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e126565%_
                   (_%make126566%_ _%e126565%_ _%id126564%_))))
          (declare (not safe))
          (__hash-put! __core _%id126564%_ __tmp126815))))
    (define __core-bind-syntax!__0
      (lambda (_%id126571%_ _%e126572%_)
        (let ((_%make126574%_ make-__syntax))
          (__core-bind-syntax!__% _%id126571%_ _%e126572%_ _%make126574%_))))
    (define __core-bind-syntax!
      (lambda _g126816_
        (let ((_g126817_ (let () (declare (not safe)) (##length _g126816_))))
          (cond ((let () (declare (not safe)) (##fx= _g126817_ 2))
                 (apply __core-bind-syntax!__0 _g126816_))
                ((let () (declare (not safe)) (##fx= _g126817_ 3))
                 (apply __core-bind-syntax!__% _g126816_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g126816_))))))
    (define __SRC__%
      (lambda (_%e126544%_ _%src-stx126545%_)
        (if (or (pair? _%e126544%_) (symbol? _%e126544%_))
            (let ((__tmp126818
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx126545%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx126545%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e126544%_ __tmp126818))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e126544%_ 'gerbil#AST::t))
                (let ((__tmp126820
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e126544%_ '1 '#f '#f)))
                      (__tmp126819
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e126544%_)))))
                  (declare (not safe))
                  (##make-source __tmp126820 __tmp126819))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e126544%_))))))
    (define __SRC__0
      (lambda (_%e126556%_)
        (let ((_%src-stx126558%_ '#f))
          (__SRC__% _%e126556%_ _%src-stx126558%_))))
    (define __SRC
      (lambda _g126821_
        (let ((_g126822_ (let () (declare (not safe)) (##length _g126821_))))
          (cond ((let () (declare (not safe)) (##fx= _g126822_ 1))
                 (apply __SRC__0 _g126821_))
                ((let () (declare (not safe)) (##fx= _g126822_ 2))
                 (apply __SRC__% _g126821_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g126821_))))))
    (define __locat
      (lambda (_%loc126541%_)
        (if (let () (declare (not safe)) (##locat? _%loc126541%_))
            _%loc126541%_
            '#f)))
    (define __check-values
      (lambda (_%obj126536%_ _%k126537%_)
        (let ((_%count126539%_
               (if (let () (declare (not safe)) (##values? _%obj126536%_))
                   (let ()
                     (declare (not safe))
                     (##values-length _%obj126536%_))
                   '1)))
          (if (fx= _%count126539%_ _%k126537%_)
              '#!void
              (let ((__tmp126824
                     (if (fx< _%count126539%_ _%k126537%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp126823
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj126536%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj126536%_))
                         _%obj126536%_)))
                (declare (not safe))
                (error __tmp126824 __tmp126823 _%k126537%_))))))
    (define __compile
      (lambda (_%stx126505%_)
        (let* ((_%$e126507%_ _%stx126505%_)
               (_%$E126509126515%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e126507%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e126507%_))
              (let* ((_%$tgt126510126518%_
                      (let () (declare (not safe)) (__AST-e _%$e126507%_)))
                     (_%$hd126511126521%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt126510126518%_)))
                     (_%$tl126512126524%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt126510126518%_)))
                     (_%form126528%_ _%$hd126511126521%_)
                     (_%$e126530%_ (__core-resolve _%form126528%_)))
                (if _%$e126530%_
                    ((lambda (_%bind126533%_)
                       ((##structure-ref _%bind126533%_ '1 __syntax::t '#f)
                        _%stx126505%_))
                     _%$e126530%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx126505%_
                       _%form126528%_))))
              (_%$E126509126515%_)))))
    (define __compile-error__%
      (lambda (_%stx126492%_ _%detail126493%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx126492%_
           _%detail126493%_))))
    (define __compile-error__0
      (lambda (_%stx126498%_)
        (let ((_%detail126500%_ '#f))
          (__compile-error__% _%stx126498%_ _%detail126500%_))))
    (define __compile-error
      (lambda _g126825_
        (let ((_g126826_ (let () (declare (not safe)) (##length _g126825_))))
          (cond ((let () (declare (not safe)) (##fx= _g126826_ 1))
                 (apply __compile-error__0 _g126825_))
                ((let () (declare (not safe)) (##fx= _g126826_ 2))
                 (apply __compile-error__% _g126825_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g126825_))))))
    (define __compile-ignore%
      (lambda (_%stx126489%_) (__SRC__% ''#!void _%stx126489%_)))
    (define __compile-begin%
      (lambda (_%stx126464%_)
        (let* ((_%$e126466%_ _%stx126464%_)
               (_%$E126468126474%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e126466%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e126466%_))
              (let* ((_%$tgt126469126477%_
                      (let () (declare (not safe)) (__AST-e _%$e126466%_)))
                     (_%$hd126470126480%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt126469126477%_)))
                     (_%$tl126471126483%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt126469126477%_)))
                     (_%body126487%_ _%$tl126471126483%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body126487%_))
                 _%stx126464%_))
              (_%$E126468126474%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx126439%_)
        (let* ((_%$e126441%_ _%stx126439%_)
               (_%$E126443126449%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e126441%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e126441%_))
              (let* ((_%$tgt126444126452%_
                      (let () (declare (not safe)) (__AST-e _%$e126441%_)))
                     (_%$hd126445126455%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt126444126452%_)))
                     (_%$tl126446126458%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt126444126452%_)))
                     (_%body126462%_ _%$tl126446126458%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body126462%_)))
                 _%stx126439%_))
              (_%$E126443126449%_)))))
    (define __compile-import%
      (lambda (_%stx126414%_)
        (let* ((_%$e126416%_ _%stx126414%_)
               (_%$E126418126424%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e126416%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e126416%_))
              (let* ((_%$tgt126419126427%_
                      (let () (declare (not safe)) (__AST-e _%$e126416%_)))
                     (_%$hd126420126430%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt126419126427%_)))
                     (_%$tl126421126433%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt126419126427%_)))
                     (_%body126437%_ _%$tl126421126433%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body126437%_ '())) '()))
                 _%stx126414%_))
              (_%$E126418126424%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx126361%_)
        (let* ((_%$e126363%_ _%stx126361%_)
               (_%$E126365126377%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e126363%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e126363%_))
              (let* ((_%$tgt126366126380%_
                      (let () (declare (not safe)) (__AST-e _%$e126363%_)))
                     (_%$hd126367126383%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt126366126380%_)))
                     (_%$tl126368126386%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt126366126380%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl126368126386%_))
                    (let* ((_%$tgt126369126390%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl126368126386%_)))
                           (_%$hd126370126393%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt126369126390%_)))
                           (_%$tl126371126396%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt126369126390%_)))
                           (_%ann126400%_ _%$hd126370126393%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl126371126396%_))
                          (let* ((_%$tgt126372126402%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl126371126396%_)))
                                 (_%$hd126373126405%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt126372126402%_)))
                                 (_%$tl126374126408%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt126372126402%_)))
                                 (_%expr126412%_ _%$hd126373126405%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl126374126408%_))
                                        '())
                                (__compile _%expr126412%_)
                                (_%$E126365126377%_)))
                          (_%$E126365126377%_)))
                    (_%$E126365126377%_)))
              (_%$E126365126377%_)))))
    (define __compile-define-values%
      (lambda (_%stx126252%_)
        (let* ((_%$e126254%_ _%stx126252%_)
               (_%$E126256126268%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e126254%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e126254%_))
              (let* ((_%$tgt126257126271%_
                      (let () (declare (not safe)) (__AST-e _%$e126254%_)))
                     (_%$hd126258126274%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt126257126271%_)))
                     (_%$tl126259126277%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt126257126271%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl126259126277%_))
                    (let* ((_%$tgt126260126281%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl126259126277%_)))
                           (_%$hd126261126284%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt126260126281%_)))
                           (_%$tl126262126287%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt126260126281%_)))
                           (_%hd126291%_ _%$hd126261126284%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl126262126287%_))
                          (let* ((_%$tgt126263126293%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl126262126287%_)))
                                 (_%$hd126264126296%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt126263126293%_)))
                                 (_%$tl126265126299%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt126263126293%_)))
                                 (_%expr126303%_ _%$hd126264126296%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl126265126299%_))
                                        '())
                                (let* ((_%$e126305%_ _%hd126291%_)
                                       (_%$E126307126348%_
                                        (lambda ()
                                          (let ((_%$E126308126333%_
                                                 (lambda ()
                                                   (let* ((_%$E126309126320%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e126305%_))))
                  (_%ids126323%_ _%hd126291%_)
                  (_%len126325%_ (length _%ids126323%_))
                  (_%tmp126327%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp126327%_
                                       (cons (__compile _%expr126303%_) '())))
                           _%stx126252%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp126327%_
                                             (cons _%len126325%_ '())))
                                 _%stx126252%_)
                                (let ((__tmp126827
                                       (let ((__tmp126829
                                              (lambda (_%id126330%_
                                                       _%k126331%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id126330%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id126330%_)
                         (cons (cons '##values-ref
                                     (cons _%tmp126327%_
                                           (cons _%k126331%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx126252%_)
                                                    '#f)))
                                             (__tmp126828
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len126325%_))))
                                         (declare (not safe))
                                         (__filter-map2
                                          __tmp126829
                                          _%ids126323%_
                                          __tmp126828))))
                                  (declare (not safe))
                                  (__foldr1 cons '() __tmp126827)))))
              _%stx126252%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e126305%_))
                                                (let* ((_%$tgt126310126336%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e126305%_)))
                                                       (_%$hd126311126339%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt126310126336%_)))
                                                       (_%$tl126312126342%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt126310126336%_)))
                                                       (_%id126346%_
                                                        _%$hd126311126339%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl126312126342%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id126346%_)
                           (cons (__compile _%expr126303%_) '())))
               _%stx126252%_)
              (_%$E126308126333%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E126308126333%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e126305%_))
                                      (let* ((_%$tgt126313126351%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e126305%_)))
                                             (_%$hd126314126354%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt126313126351%_)))
                                             (_%$tl126315126357%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt126313126351%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd126314126354%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl126315126357%_))
                                                        '())
                                                (__compile _%expr126303%_)
                                                (_%$E126307126348%_))
                                            (_%$E126307126348%_)))
                                      (_%$E126307126348%_)))
                                (_%$E126256126268%_)))
                          (_%$E126256126268%_)))
                    (_%$E126256126268%_)))
              (_%$E126256126268%_)))))
    (define __compile-head-id
      (lambda (_%e126250%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e126250%_))
             _%e126250%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd126207%_)
        (let _%recur126209%_ ((_%rest126211%_ _%hd126207%_))
          (let* ((_%$e126213%_ _%rest126211%_)
                 (_%$E126215126233%_
                  (lambda ()
                    (let ((_%$E126216126230%_
                           (lambda ()
                             (let* ((_%$E126217126225%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e126213%_))))
                                    (_%tail126228%_ _%$e126213%_))
                               (__compile-head-id _%tail126228%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e126213%_))
                                  '())
                          '()
                          (_%$E126216126230%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e126213%_))
                (let* ((_%$tgt126218126236%_
                        (let () (declare (not safe)) (__AST-e _%$e126213%_)))
                       (_%$hd126219126239%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt126218126236%_)))
                       (_%$tl126220126242%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt126218126236%_)))
                       (_%hd126246%_ _%$hd126219126239%_)
                       (_%rest126248%_ _%$tl126220126242%_))
                  (cons (__compile-head-id _%hd126246%_)
                        (_%recur126209%_ _%rest126248%_)))
                (_%$E126215126233%_))))))
    (define __compile-lambda%
      (lambda (_%stx126154%_)
        (let* ((_%$e126156%_ _%stx126154%_)
               (_%$E126158126170%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e126156%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e126156%_))
              (let* ((_%$tgt126159126173%_
                      (let () (declare (not safe)) (__AST-e _%$e126156%_)))
                     (_%$hd126160126176%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt126159126173%_)))
                     (_%$tl126161126179%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt126159126173%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl126161126179%_))
                    (let* ((_%$tgt126162126183%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl126161126179%_)))
                           (_%$hd126163126186%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt126162126183%_)))
                           (_%$tl126164126189%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt126162126183%_)))
                           (_%hd126193%_ _%$hd126163126186%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl126164126189%_))
                          (let* ((_%$tgt126165126195%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl126164126189%_)))
                                 (_%$hd126166126198%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt126165126195%_)))
                                 (_%$tl126167126201%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt126165126195%_)))
                                 (_%body126205%_ _%$hd126166126198%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl126167126201%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd126193%_)
                                             (cons (__compile _%body126205%_)
                                                   '())))
                                 _%stx126154%_)
                                (_%$E126158126170%_)))
                          (_%$E126158126170%_)))
                    (_%$E126158126170%_)))
              (_%$E126158126170%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx125946%_)
        (letrec ((_%variadic?125948%_
                  (lambda (_%hd126119%_)
                    (let* ((_%$e126121%_ _%hd126119%_)
                           (_%$E126123126139%_
                            (lambda ()
                              (let ((_%$E126124126136%_
                                     (lambda ()
                                       (let ((_%$E126125126133%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e126121%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e126121%_))
                                            '())
                                    '#f
                                    (_%$E126124126136%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e126121%_))
                          (let* ((_%$tgt126126126142%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e126121%_)))
                                 (_%$hd126127126145%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt126126126142%_)))
                                 (_%$tl126128126148%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt126126126142%_)))
                                 (_%rest126152%_ _%$tl126128126148%_))
                            (_%variadic?125948%_ _%rest126152%_))
                          (_%$E126123126139%_)))))
                 (_%arity125949%_
                  (lambda (_%hd126084%_)
                    (let _%lp126086%_ ((_%rest126088%_ _%hd126084%_)
                                       (_%k126089%_ '0))
                      (let* ((_%$e126091%_ _%rest126088%_)
                             (_%$E126093126104%_
                              (lambda ()
                                (let ((_%$E126094126101%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e126091%_)))))
                                  _%k126089%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e126091%_))
                            (let* ((_%$tgt126095126107%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e126091%_)))
                                   (_%$hd126096126110%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt126095126107%_)))
                                   (_%$tl126097126113%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt126095126107%_)))
                                   (_%rest126117%_ _%$tl126097126113%_))
                              (_%lp126086%_
                               _%rest126117%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%k126089%_ '1))))
                            (_%$E126093126104%_))))))
                 (_%generate125950%_
                  (lambda (_%rest126011%_ _%args126012%_ _%len126013%_)
                    (let* ((_%$e126015%_ _%rest126011%_)
                           (_%$E126017126028%_
                            (lambda ()
                              (let ((_%$E126018126025%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e126015%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args126012%_ '())))
                                 _%stx125946%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e126015%_))
                          (let* ((_%$tgt126019126031%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e126015%_)))
                                 (_%$hd126020126034%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt126019126031%_)))
                                 (_%$tl126021126037%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt126019126031%_)))
                                 (_%clause126041%_ _%$hd126020126034%_)
                                 (_%rest126043%_ _%$tl126021126037%_)
                                 (_%$e126045%_ _%clause126041%_)
                                 (_%$E126047126056%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e126045%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e126045%_))
                                (let* ((_%$tgt126048126059%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e126045%_)))
                                       (_%$hd126049126062%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt126048126059%_)))
                                       (_%$tl126050126065%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt126048126059%_)))
                                       (_%hd126069%_ _%$hd126049126062%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl126050126065%_))
                                      (let* ((_%$tgt126051126071%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl126050126065%_)))
                                             (_%$hd126052126074%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt126051126071%_)))
                                             (_%$tl126053126077%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt126051126071%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl126053126077%_))
                                                    '())
                                            (let ((_%clen126081%_
                                                   (_%arity125949%_
                                                    _%hd126069%_))
                                                  (_%cmp126082%_
                                                   (if (_%variadic?125948%_
                                                        _%hd126069%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp126082%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len126013%_ (cons _%clen126081%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause126041%_))
                                      (cons _%args126012%_ '())))
                          _%stx125946%_)
                         (cons (_%generate125950%_
                                _%rest126043%_
                                _%args126012%_
                                _%len126013%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx125946%_))
                                            (_%$E126047126056%_)))
                                      (_%$E126047126056%_)))
                                (_%$E126047126056%_)))
                          (_%$E126017126028%_))))))
          (let* ((_%$e125952%_ _%stx125946%_)
                 (_%$E125954125986%_
                  (lambda ()
                    (let ((_%$E125955125968%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e125952%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e125952%_))
                          (let* ((_%$tgt125956125971%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e125952%_)))
                                 (_%$hd125957125974%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt125956125971%_)))
                                 (_%$tl125958125977%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt125956125971%_)))
                                 (_%clauses125981%_ _%$tl125958125977%_))
                            (let ((_%args125983%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx125946%_))
                                  (_%len125984%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx125946%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args125983%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len125984%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args125983%_ '()))
                                         _%stx125946%_)
                                        '()))
                            '())
                      (cons (_%generate125950%_
                             _%clauses125981%_
                             _%args125983%_
                             _%len125984%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx125946%_)
                                                 '())))
                               _%stx125946%_)))
                          (_%$E125955125968%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e125952%_))
                (let* ((_%$tgt125959125989%_
                        (let () (declare (not safe)) (__AST-e _%$e125952%_)))
                       (_%$hd125960125992%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt125959125989%_)))
                       (_%$tl125961125995%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt125959125989%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl125961125995%_))
                      (let* ((_%$tgt125962125999%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl125961125995%_)))
                             (_%$hd125963126002%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt125962125999%_)))
                             (_%$tl125964126005%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt125962125999%_)))
                             (_%clause126009%_ _%$hd125963126002%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl125964126005%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause126009%_))
                            (_%$E125954125986%_)))
                      (_%$E125954125986%_)))
                (_%$E125954125986%_))))))
    (define __compile-let-form
      (lambda (_%stx125715%_ _%compile-simple125716%_ _%compile-values125717%_)
        (letrec ((_%simple-bind?125719%_
                  (lambda (_%hd125904%_)
                    (let* ((_%hd125905125915%_ _%hd125904%_)
                           (_%else125908125923%_ (lambda () '#f)))
                      (let ((_%K125911125936%_ (lambda (_%id125934%_) '#t))
                            (_%K125910125928%_ (lambda () '#t)))
                        (let ((_%try-match125907125931%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd125905125915%_ '#f))
                                     (_%K125910125928%_)
                                     (_%else125908125923%_)))))
                          (if (pair? _%hd125905125915%_)
                              (let ((_%tl125913125941%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd125905125915%_)))
                                    (_%hd125912125939%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd125905125915%_))))
                                (if (null? _%tl125913125941%_)
                                    (let ((_%id125944%_ _%hd125912125939%_))
                                      (_%K125911125936%_ _%id125944%_))
                                    (_%try-match125907125931%_)))
                              (_%try-match125907125931%_)))))))
                 (_%car-e125720%_
                  (lambda (_%hd125902%_)
                    (if (pair? _%hd125902%_)
                        (let () (declare (not safe)) (##car _%hd125902%_))
                        _%hd125902%_))))
          (let* ((_%$e125722%_ _%stx125715%_)
                 (_%$E125724125867%_
                  (lambda ()
                    (let ((_%$E125725125747%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e125722%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e125722%_))
                          (let* ((_%$tgt125726125750%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e125722%_)))
                                 (_%$hd125727125753%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt125726125750%_)))
                                 (_%$tl125728125756%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt125726125750%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl125728125756%_))
                                (let* ((_%$tgt125729125760%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl125728125756%_)))
                                       (_%$hd125730125763%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt125729125760%_)))
                                       (_%$tl125731125766%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt125729125760%_)))
                                       (_%hd125770%_ _%$hd125730125763%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl125731125766%_))
                                      (let* ((_%$tgt125732125772%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl125731125766%_)))
                                             (_%$hd125733125775%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt125732125772%_)))
                                             (_%$tl125734125778%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt125732125772%_)))
                                             (_%body125782%_
                                              _%$hd125733125775%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl125734125778%_))
                                                    '())
                                            (let* ((_%hd-ids125822%_
                                                    (map (lambda (_%bind125784%_)
                                                           (let* ((_%$e125786%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind125784%_)
                          (_%$E125788125797%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e125786%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e125786%_))
                         (let* ((_%$tgt125789125800%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e125786%_)))
                                (_%$hd125790125803%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt125789125800%_)))
                                (_%$tl125791125806%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt125789125800%_)))
                                (_%ids125810%_ _%$hd125790125803%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl125791125806%_))
                               (let* ((_%$tgt125792125812%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl125791125806%_)))
                                      (_%$hd125793125815%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt125792125812%_)))
                                      (_%$tl125794125818%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt125792125812%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl125794125818%_))
                                             '())
                                     _%ids125810%_
                                     (_%$E125788125797%_)))
                               (_%$E125788125797%_)))
                         (_%$E125788125797%_))))
                 _%hd125770%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs125862%_
                                                    (map (lambda (_%bind125824%_)
                                                           (let* ((_%$e125826%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind125824%_)
                          (_%$E125828125837%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e125826%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e125826%_))
                         (let* ((_%$tgt125829125840%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e125826%_)))
                                (_%$hd125830125843%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt125829125840%_)))
                                (_%$tl125831125846%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt125829125840%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl125831125846%_))
                               (let* ((_%$tgt125832125850%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl125831125846%_)))
                                      (_%$hd125833125853%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt125832125850%_)))
                                      (_%$tl125834125856%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt125832125850%_)))
                                      (_%expr125860%_ _%$hd125833125853%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl125834125856%_))
                                             '())
                                     (__compile _%expr125860%_)
                                     (_%$E125828125837%_)))
                               (_%$E125828125837%_)))
                         (_%$E125828125837%_))))
                 _%hd125770%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body125864%_
                                                    (__compile
                                                     _%body125782%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__andmap1
                                                     _%simple-bind?125719%_
                                                     _%hd-ids125822%_))
                                                  (_%compile-simple125716%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e125720%_
                                                            _%hd-ids125822%_))
                                                   _%exprs125862%_
                                                   _%body125864%_)
                                                  (_%compile-values125717%_
                                                   _%hd-ids125822%_
                                                   _%exprs125862%_
                                                   _%body125864%_)))
                                            (_%$E125725125747%_)))
                                      (_%$E125725125747%_)))
                                (_%$E125725125747%_)))
                          (_%$E125725125747%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e125722%_))
                (let* ((_%$tgt125735125870%_
                        (let () (declare (not safe)) (__AST-e _%$e125722%_)))
                       (_%$hd125736125873%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt125735125870%_)))
                       (_%$tl125737125876%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt125735125870%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl125737125876%_))
                      (let* ((_%$tgt125738125880%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl125737125876%_)))
                             (_%$hd125739125883%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt125738125880%_)))
                             (_%$tl125740125886%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt125738125880%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd125739125883%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl125740125886%_))
                                (let* ((_%$tgt125741125890%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl125740125886%_)))
                                       (_%$hd125742125893%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt125741125890%_)))
                                       (_%$tl125743125896%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt125741125890%_)))
                                       (_%body125900%_ _%$hd125742125893%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl125743125896%_))
                                              '())
                                      (__compile _%body125900%_)
                                      (_%$E125724125867%_)))
                                (_%$E125724125867%_))
                            (_%$E125724125867%_)))
                      (_%$E125724125867%_)))
                (_%$E125724125867%_))))))
    (define __compile-let-values%
      (lambda (_%stx125527%_)
        (letrec ((_%compile-simple125529%_
                  (lambda (_%hd-ids125711%_ _%exprs125712%_ _%body125713%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp126830
                                        (map __compile-head-id
                                             _%hd-ids125711%_)))
                                   (declare (not safe))
                                   (##map list __tmp126830 _%exprs125712%_))
                                 (cons _%body125713%_ '())))
                     _%stx125527%_)))
                 (_%compile-values125530%_
                  (lambda (_%hd-ids125626%_ _%exprs125627%_ _%body125628%_)
                    (let _%lp125630%_ ((_%rest125632%_ _%hd-ids125626%_)
                                       (_%exprs125633%_ _%exprs125627%_)
                                       (_%bind125634%_ '())
                                       (_%post125635%_ '()))
                      (let* ((_%rest125636125650%_ _%rest125632%_)
                             (_%else125639125658%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind125634%_)
                                             (cons (_%compile-post125531%_
                                                    _%post125635%_
                                                    _%body125628%_)
                                                   '())))
                                 _%stx125527%_))))
                        (let ((_%K125644125694%_
                               (lambda (_%rest125691%_ _%id125692%_)
                                 (_%lp125630%_
                                  _%rest125691%_
                                  (cdr _%exprs125633%_)
                                  (cons (cons (__compile-head-id _%id125692%_)
                                              (cons (car _%exprs125633%_) '()))
                                        _%bind125634%_)
                                  _%post125635%_)))
                              (_%K125641125676%_
                               (lambda (_%rest125662%_ _%hd125663%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd125663%_))
                                     (_%lp125630%_
                                      _%rest125662%_
                                      (cdr _%exprs125633%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd125663%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs125633%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind125634%_)
                                      _%post125635%_)
                                     (if (list? _%hd125663%_)
                                         (let* ((_%len125667%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd125663%_)))
                                                (_%tmp125669%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp125630%_
                                            _%rest125662%_
                                            (cdr _%exprs125633%_)
                                            (cons (cons _%tmp125669%_
                                                        (cons (car _%exprs125633%_)
                                                              '()))
                                                  _%bind125634%_)
                                            (cons (cons _%tmp125669%_
                                                        (cons _%len125667%_
                                                              (let ((__tmp126832
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id125672%_ _%k125673%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id125672%_))
                                   (cons (__SRC__0 _%id125672%_) _%k125673%_)
                                   '#f)))
                            (__tmp126831
                             (let ()
                               (declare (not safe))
                               (##iota _%len125667%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp126832 _%hd125663%_ __tmp126831))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post125635%_)))
                                         (__compile-error__%
                                          _%stx125527%_
                                          _%hd125663%_))))))
                          (if (pair? _%rest125636125650%_)
                              (let ((_%tl125646125699%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest125636125650%_)))
                                    (_%hd125645125697%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest125636125650%_))))
                                (if (pair? _%hd125645125697%_)
                                    (let ((_%tl125648125704%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd125645125697%_)))
                                          (_%hd125647125702%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd125645125697%_))))
                                      (if (null? _%tl125648125704%_)
                                          (let ((_%id125707%_
                                                 _%hd125647125702%_)
                                                (_%rest125709%_
                                                 _%tl125646125699%_))
                                            (_%K125644125694%_
                                             _%rest125709%_
                                             _%id125707%_))
                                          (let ((_%hd125684%_
                                                 _%hd125645125697%_)
                                                (_%rest125686%_
                                                 _%tl125646125699%_))
                                            (_%K125641125676%_
                                             _%rest125686%_
                                             _%hd125684%_))))
                                    (let ((_%hd125684%_ _%hd125645125697%_)
                                          (_%rest125686%_ _%tl125646125699%_))
                                      (_%K125641125676%_
                                       _%rest125686%_
                                       _%hd125684%_))))
                              (_%else125639125658%_)))))))
                 (_%compile-post125531%_
                  (lambda (_%post125533%_ _%body125534%_)
                    (let _%lp125536%_ ((_%rest125538%_ _%post125533%_)
                                       (_%check125539%_ '())
                                       (_%bind125540%_ '()))
                      (let* ((_%rest125541125553%_ _%rest125538%_)
                             (_%else125543125561%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp126833
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind125540%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body125534%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx125527%_)
                                                    '())))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp126833
                                          _%check125539%_)))
                                 _%stx125527%_)))
                             (_%K125545125600%_
                              (lambda (_%rest125564%_
                                       _%init125565%_
                                       _%len125566%_
                                       _%tmp125567%_)
                                (_%lp125536%_
                                 _%rest125564%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp125567%_
                                                    (cons _%len125566%_ '())))
                                        _%stx125527%_)
                                       _%check125539%_)
                                 (let ((__tmp126834
                                        (lambda (_%hd125569%_ _%r125570%_)
                                          (let* ((_%hd125571125578%_
                                                  _%hd125569%_)
                                                 (_%E125573125582%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd125571125578%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K125574125588%_
                                                  (lambda (_%k125585%_
                                                           _%id125586%_)
                                                    (cons (cons _%id125586%_
                                                                (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp125567%_
                                          (cons _%k125585%_ '())))
                              '()))
                  _%r125570%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd125571125578%_)
                                                (let ((_%hd125575125591%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd125571125578%_)))
                                                      (_%tl125576125593%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd125571125578%_))))
                                                  (let* ((_%id125596%_
                                                          _%hd125575125591%_)
                                                         (_%k125598%_
                                                          _%tl125576125593%_))
                                                    (_%K125574125588%_
                                                     _%k125598%_
                                                     _%id125596%_)))
                                                (_%E125573125582%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp126834
                                    _%bind125540%_
                                    _%init125565%_))))))
                        (if (pair? _%rest125541125553%_)
                            (let ((_%hd125546125603%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest125541125553%_)))
                                  (_%tl125547125605%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest125541125553%_))))
                              (if (pair? _%hd125546125603%_)
                                  (let ((_%hd125548125608%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd125546125603%_)))
                                        (_%tl125549125610%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd125546125603%_))))
                                    (let ((_%tmp125613%_ _%hd125548125608%_))
                                      (if (pair? _%tl125549125610%_)
                                          (let ((_%hd125550125615%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl125549125610%_)))
                                                (_%tl125551125617%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl125549125610%_))))
                                            (let* ((_%len125620%_
                                                    _%hd125550125615%_)
                                                   (_%init125622%_
                                                    _%tl125551125617%_)
                                                   (_%rest125624%_
                                                    _%tl125547125605%_))
                                              (_%K125545125600%_
                                               _%rest125624%_
                                               _%init125622%_
                                               _%len125620%_
                                               _%tmp125613%_)))
                                          (_%else125543125561%_))))
                                  (_%else125543125561%_)))
                            (_%else125543125561%_)))))))
          (__compile-let-form
           _%stx125527%_
           _%compile-simple125529%_
           _%compile-values125530%_))))
    (define __compile-letrec-values%
      (lambda (_%stx125324%_)
        (letrec ((_%compile-simple125326%_
                  (lambda (_%hd-ids125523%_ _%exprs125524%_ _%body125525%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp126835
                                        (map __compile-head-id
                                             _%hd-ids125523%_)))
                                   (declare (not safe))
                                   (##map list __tmp126835 _%exprs125524%_))
                                 (cons _%body125525%_ '())))
                     _%stx125324%_)))
                 (_%compile-values125327%_
                  (lambda (_%hd-ids125434%_ _%exprs125435%_ _%body125436%_)
                    (let _%lp125438%_ ((_%rest125440%_ _%hd-ids125434%_)
                                       (_%exprs125441%_ _%exprs125435%_)
                                       (_%pre125442%_ '())
                                       (_%bind125443%_ '())
                                       (_%post125444%_ '()))
                      (let* ((_%rest125445125459%_ _%rest125440%_)
                             (_%else125448125467%_
                              (lambda ()
                                (_%compile-inner125328%_
                                 _%pre125442%_
                                 _%bind125443%_
                                 _%post125444%_
                                 _%body125436%_))))
                        (let ((_%K125453125506%_
                               (lambda (_%rest125503%_ _%id125504%_)
                                 (_%lp125438%_
                                  _%rest125503%_
                                  (cdr _%exprs125441%_)
                                  _%pre125442%_
                                  (cons (cons (__compile-head-id _%id125504%_)
                                              (cons (car _%exprs125441%_) '()))
                                        _%bind125443%_)
                                  _%post125444%_)))
                              (_%K125450125488%_
                               (lambda (_%rest125471%_ _%hd125472%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd125472%_))
                                     (_%lp125438%_
                                      _%rest125471%_
                                      (cdr _%exprs125441%_)
                                      _%pre125442%_
                                      (cons (cons (__compile-head-id
                                                   _%hd125472%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs125441%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind125443%_)
                                      _%post125444%_)
                                     (if (list? _%hd125472%_)
                                         (let* ((_%len125476%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd125472%_)))
                                                (_%tmp125478%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp125438%_
                                            _%rest125471%_
                                            (cdr _%exprs125441%_)
                                            (let ((__tmp126836
                                                   (lambda (_%id125481%_
                                                            _%r125482%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id125481%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id125481%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r125482%_)
                 _%r125482%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (__foldl1
                                               __tmp126836
                                               _%pre125442%_
                                               _%hd125472%_))
                                            (cons (cons _%tmp125478%_
                                                        (cons (car _%exprs125441%_)
                                                              '()))
                                                  _%bind125443%_)
                                            (cons (cons _%tmp125478%_
                                                        (cons _%len125476%_
                                                              (let ((__tmp126838
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id125484%_ _%k125485%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id125484%_))
                                   (cons (__SRC__0 _%id125484%_) _%k125485%_)
                                   '#f)))
                            (__tmp126837
                             (let ()
                               (declare (not safe))
                               (##iota _%len125476%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp126838 _%hd125472%_ __tmp126837))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post125444%_)))
                                         (__compile-error__%
                                          _%stx125324%_
                                          _%hd125472%_))))))
                          (if (pair? _%rest125445125459%_)
                              (let ((_%tl125455125511%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest125445125459%_)))
                                    (_%hd125454125509%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest125445125459%_))))
                                (if (pair? _%hd125454125509%_)
                                    (let ((_%tl125457125516%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd125454125509%_)))
                                          (_%hd125456125514%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd125454125509%_))))
                                      (if (null? _%tl125457125516%_)
                                          (let ((_%id125519%_
                                                 _%hd125456125514%_)
                                                (_%rest125521%_
                                                 _%tl125455125511%_))
                                            (_%K125453125506%_
                                             _%rest125521%_
                                             _%id125519%_))
                                          (let ((_%hd125496%_
                                                 _%hd125454125509%_)
                                                (_%rest125498%_
                                                 _%tl125455125511%_))
                                            (_%K125450125488%_
                                             _%rest125498%_
                                             _%hd125496%_))))
                                    (let ((_%hd125496%_ _%hd125454125509%_)
                                          (_%rest125498%_ _%tl125455125511%_))
                                      (_%K125450125488%_
                                       _%rest125498%_
                                       _%hd125496%_))))
                              (_%else125448125467%_)))))))
                 (_%compile-inner125328%_
                  (lambda (_%pre125429%_
                           _%bind125430%_
                           _%post125431%_
                           _%body125432%_)
                    (if (null? _%pre125429%_)
                        (_%compile-bind125329%_
                         _%bind125430%_
                         _%post125431%_
                         _%body125432%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre125429%_)
                                     (cons (_%compile-bind125329%_
                                            _%bind125430%_
                                            _%post125431%_
                                            _%body125432%_)
                                           '())))
                         _%stx125324%_))))
                 (_%compile-bind125329%_
                  (lambda (_%bind125425%_ _%post125426%_ _%body125427%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind125425%_)
                                 (cons (_%compile-post125330%_
                                        _%post125426%_
                                        _%body125427%_)
                                       '())))
                     _%stx125324%_)))
                 (_%compile-post125330%_
                  (lambda (_%post125332%_ _%body125333%_)
                    (let _%lp125335%_ ((_%rest125337%_ _%post125332%_)
                                       (_%check125338%_ '())
                                       (_%bind125339%_ '()))
                      (let* ((_%rest125340125352%_ _%rest125337%_)
                             (_%else125342125360%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp126839
                                              (let ((__tmp126840
                                                     (cons _%body125333%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp126840
                                                 _%bind125339%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp126839
                                          _%check125338%_)))
                                 _%stx125324%_)))
                             (_%K125344125399%_
                              (lambda (_%rest125363%_
                                       _%init125364%_
                                       _%len125365%_
                                       _%tmp125366%_)
                                (_%lp125335%_
                                 _%rest125363%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp125366%_
                                                    (cons _%len125365%_ '())))
                                        _%stx125324%_)
                                       _%check125338%_)
                                 (let ((__tmp126841
                                        (lambda (_%hd125368%_ _%r125369%_)
                                          (let* ((_%hd125370125377%_
                                                  _%hd125368%_)
                                                 (_%E125372125381%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd125370125377%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K125373125387%_
                                                  (lambda (_%k125384%_
                                                           _%id125385%_)
                                                    (cons (cons 'set!
                                                                (cons _%id125385%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##values-ref
                                          (cons _%tmp125366%_
                                                (cons _%k125384%_ '())))
                                    '())))
                  _%r125369%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd125370125377%_)
                                                (let ((_%hd125374125390%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd125370125377%_)))
                                                      (_%tl125375125392%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd125370125377%_))))
                                                  (let* ((_%id125395%_
                                                          _%hd125374125390%_)
                                                         (_%k125397%_
                                                          _%tl125375125392%_))
                                                    (_%K125373125387%_
                                                     _%k125397%_
                                                     _%id125395%_)))
                                                (_%E125372125381%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp126841
                                    _%bind125339%_
                                    _%init125364%_))))))
                        (if (pair? _%rest125340125352%_)
                            (let ((_%hd125345125402%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest125340125352%_)))
                                  (_%tl125346125404%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest125340125352%_))))
                              (if (pair? _%hd125345125402%_)
                                  (let ((_%hd125347125407%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd125345125402%_)))
                                        (_%tl125348125409%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd125345125402%_))))
                                    (let ((_%tmp125412%_ _%hd125347125407%_))
                                      (if (pair? _%tl125348125409%_)
                                          (let ((_%hd125349125414%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl125348125409%_)))
                                                (_%tl125350125416%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl125348125409%_))))
                                            (let* ((_%len125419%_
                                                    _%hd125349125414%_)
                                                   (_%init125421%_
                                                    _%tl125350125416%_)
                                                   (_%rest125423%_
                                                    _%tl125346125404%_))
                                              (_%K125344125399%_
                                               _%rest125423%_
                                               _%init125421%_
                                               _%len125419%_
                                               _%tmp125412%_)))
                                          (_%else125342125360%_))))
                                  (_%else125342125360%_)))
                            (_%else125342125360%_)))))))
          (__compile-let-form
           _%stx125324%_
           _%compile-simple125326%_
           _%compile-values125327%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx125075%_)
        (letrec ((_%compile-simple125077%_
                  (lambda (_%hd-ids125320%_ _%exprs125321%_ _%body125322%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp126842
                                        (map __compile-head-id
                                             _%hd-ids125320%_)))
                                   (declare (not safe))
                                   (##map list __tmp126842 _%exprs125321%_))
                                 (cons _%body125322%_ '())))
                     _%stx125075%_)))
                 (_%compile-values125078%_
                  (lambda (_%hd-ids125227%_ _%exprs125228%_ _%body125229%_)
                    (let _%lp125231%_ ((_%rest125233%_ _%hd-ids125227%_)
                                       (_%exprs125234%_ _%exprs125228%_)
                                       (_%bind125235%_ '())
                                       (_%post125236%_ '()))
                      (let* ((_%rest125237125251%_ _%rest125233%_)
                             (_%else125240125259%_
                              (lambda ()
                                (_%compile-bind125079%_
                                 _%bind125235%_
                                 _%post125236%_
                                 _%body125229%_))))
                        (let ((_%K125245125303%_
                               (lambda (_%rest125298%_ _%hd125299%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd125299%_))
                                     (let ((_%id125301%_
                                            (__SRC__0 _%hd125299%_)))
                                       (_%lp125231%_
                                        _%rest125298%_
                                        (cdr _%exprs125234%_)
                                        (cons (cons _%id125301%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind125235%_)
                                        (cons (cons _%id125301%_
                                                    (cons (car _%exprs125234%_)
                                                          '()))
                                              _%post125236%_)))
                                     (_%lp125231%_
                                      _%rest125298%_
                                      (cdr _%exprs125234%_)
                                      _%bind125235%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs125234%_)
                                                        '()))
                                            _%post125236%_)))))
                              (_%K125242125283%_
                               (lambda (_%rest125263%_ _%hd125264%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd125264%_))
                                     (let ((_%id125267%_
                                            (__SRC__0 _%hd125264%_)))
                                       (_%lp125231%_
                                        _%rest125263%_
                                        (cdr _%exprs125234%_)
                                        (cons (cons _%id125267%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind125235%_)
                                        (cons (cons _%id125267%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs125234%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post125236%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd125264%_))
                                         (if (list? _%hd125264%_)
                                             (let* ((_%len125271%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd125264%_)))
                                                    (_%tmp125273%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp125231%_
                                                _%rest125263%_
                                                (cdr _%exprs125234%_)
                                                (let ((__tmp126843
                                                       (lambda (_%id125276%_
                                                                _%r125277%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id125276%_))
                     (cons (cons (__SRC__0 _%id125276%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r125277%_)
                     _%r125277%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldl1
                                                   __tmp126843
                                                   _%bind125235%_
                                                   _%hd125264%_))
                                                (cons (cons _%tmp125273%_
                                                            (cons (car _%exprs125234%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len125271%_
                                (let ((__tmp126845
                                       (lambda (_%id125279%_ _%k125280%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id125279%_))
                                             (cons (__SRC__0 _%id125279%_)
                                                   _%k125280%_)
                                             '#f)))
                                      (__tmp126844
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len125271%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp126845
                                   _%hd125264%_
                                   __tmp126844)))))
              _%post125236%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx125075%_
                                              _%hd125264%_))
                                         (_%lp125231%_
                                          _%rest125263%_
                                          (cdr _%exprs125234%_)
                                          _%bind125235%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs125234%_)
                                                            '()))
                                                _%post125236%_)))))))
                          (if (pair? _%rest125237125251%_)
                              (let ((_%tl125247125308%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest125237125251%_)))
                                    (_%hd125246125306%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest125237125251%_))))
                                (if (pair? _%hd125246125306%_)
                                    (let ((_%tl125249125313%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd125246125306%_)))
                                          (_%hd125248125311%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd125246125306%_))))
                                      (if (null? _%tl125249125313%_)
                                          (let ((_%hd125316%_
                                                 _%hd125248125311%_)
                                                (_%rest125318%_
                                                 _%tl125247125308%_))
                                            (_%K125245125303%_
                                             _%rest125318%_
                                             _%hd125316%_))
                                          (let ((_%hd125291%_
                                                 _%hd125246125306%_)
                                                (_%rest125293%_
                                                 _%tl125247125308%_))
                                            (_%K125242125283%_
                                             _%rest125293%_
                                             _%hd125291%_))))
                                    (let ((_%hd125291%_ _%hd125246125306%_)
                                          (_%rest125293%_ _%tl125247125308%_))
                                      (_%K125242125283%_
                                       _%rest125293%_
                                       _%hd125291%_))))
                              (_%else125240125259%_)))))))
                 (_%compile-bind125079%_
                  (lambda (_%bind125223%_ _%post125224%_ _%body125225%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind125223%_)
                                 (cons (_%compile-post125080%_
                                        _%post125224%_
                                        _%body125225%_)
                                       '())))
                     _%stx125075%_)))
                 (_%compile-post125080%_
                  (lambda (_%post125082%_ _%body125083%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp126846
                                  (let ((__tmp126848
                                         (lambda (_%hd125085%_ _%r125086%_)
                                           (let* ((_%hd125087125110%_
                                                   _%hd125085%_)
                                                  (_%E125091125114%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd125087125110%_
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
                                             (let ((_%K125104125208%_
                                                    (lambda (_%expr125206%_)
                                                      (cons _%expr125206%_
                                                            _%r125086%_)))
                                                   (_%K125099125186%_
                                                    (lambda (_%expr125183%_
                                                             _%id125184%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id125184%_ (cons _%expr125183%_ '())))
                     _%stx125075%_)
                    _%r125086%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K125092125153%_
                                                    (lambda (_%init125118%_
                                                             _%len125119%_
                                                             _%expr125120%_
                                                             _%tmp125121%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp125121%_
                                             (cons _%expr125120%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp125121%_
                                                    (cons _%len125119%_ '())))
                                        _%stx125075%_)
                                       (let ((__tmp126849
                                              (map (lambda (_%hd125123%_)
                                                     (let* ((_%hd125124125131%_
                                                             _%hd125123%_)
                                                            (_%E125126125135%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd125124125131%_
                                '([id . k])))
                       '#!void))
                    (_%K125127125141%_
                     (lambda (_%k125138%_ _%id125139%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id125139%_
                                    (cons (cons '##values-ref
                                                (cons _%tmp125121%_
                                                      (cons _%k125138%_ '())))
                                          '())))
                        _%stx125075%_))))
               (if (pair? _%hd125124125131%_)
                   (let ((_%hd125128125144%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd125124125131%_)))
                         (_%tl125129125146%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd125124125131%_))))
                     (let* ((_%id125149%_ _%hd125128125144%_)
                            (_%k125151%_ _%tl125129125146%_))
                       (_%K125127125141%_ _%k125151%_ _%id125149%_)))
                   (_%E125126125135%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init125118%_)))
                                         (declare (not safe))
                                         (__foldr1 cons '() __tmp126849)))))
                     _%stx125075%_)
                    _%r125086%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match126702126703%_
                                                       (lambda (_%hd125093125156%_
                                                                _%tl125094125158%_
                                                                _%hd125095125163%_
                                                                _%tl125096125165%_)
                                                         (let ((_%tmp125161%_
                                                                _%hd125093125156%_)
                                                               (_%expr125168%_
                                                                _%hd125095125163%_))
                                                           (_%E125091125114%_))))
                                                      (_%__match126696126697%_
                                                       (lambda (_%hd125093125156%_
                                                                _%tl125094125158%_)
                                                         (let ((_%tmp125161%_
                                                                _%hd125093125156%_))
                                                           (_%E125091125114%_)))))
                                                 (if (pair? _%hd125087125110%_)
                                                     (let ((_%tl125106125213%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd125087125110%_)))
                                                           (_%hd125105125211%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd125087125110%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd125105125211%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%tl125106125213%_)
                       (let ((_%tl125108125218%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl125106125213%_)))
                             (_%hd125107125216%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl125106125213%_))))
                         (if (null? _%tl125108125218%_)
                             (let ((_%expr125221%_ _%hd125107125216%_))
                               (_%K125104125208%_ _%expr125221%_))
                             (if (pair? _%tl125108125218%_)
                                 (let ((_%tl125098125172%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl125108125218%_)))
                                       (_%hd125097125170%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl125108125218%_))))
                                   (let ((_%tmp125161%_ _%hd125105125211%_)
                                         (_%expr125168%_ _%hd125107125216%_)
                                         (_%len125175%_ _%hd125097125170%_)
                                         (_%init125177%_ _%tl125098125172%_))
                                     (_%K125092125153%_
                                      _%init125177%_
                                      _%len125175%_
                                      _%expr125168%_
                                      _%tmp125161%_)))
                                 (_%__match126702126703%_
                                  _%hd125105125211%_
                                  _%tl125106125213%_
                                  _%hd125107125216%_
                                  _%tl125108125218%_))))
                       (_%__match126696126697%_
                        _%hd125105125211%_
                        _%tl125106125213%_))
                   (if (pair? _%tl125106125213%_)
                       (let ((_%tl125103125198%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl125106125213%_)))
                             (_%hd125102125196%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl125106125213%_))))
                         (if (null? _%tl125103125198%_)
                             (let ((_%id125194%_ _%hd125105125211%_)
                                   (_%expr125201%_ _%hd125102125196%_))
                               (_%K125099125186%_ _%expr125201%_ _%id125194%_))
                             (if (pair? _%tl125103125198%_)
                                 (let ((_%tl125098125172%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl125103125198%_)))
                                       (_%hd125097125170%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl125103125198%_))))
                                   (let ((_%tmp125161%_ _%hd125105125211%_)
                                         (_%expr125168%_ _%hd125102125196%_)
                                         (_%len125175%_ _%hd125097125170%_)
                                         (_%init125177%_ _%tl125098125172%_))
                                     (_%K125092125153%_
                                      _%init125177%_
                                      _%len125175%_
                                      _%expr125168%_
                                      _%tmp125161%_)))
                                 (_%__match126702126703%_
                                  _%hd125105125211%_
                                  _%tl125106125213%_
                                  _%hd125102125196%_
                                  _%tl125103125198%_))))
                       (_%__match126696126697%_
                        _%hd125105125211%_
                        _%tl125106125213%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E125091125114%_)))))))
                                        (__tmp126847 (list _%body125083%_)))
                                    (declare (not safe))
                                    (__foldl1
                                     __tmp126848
                                     __tmp126847
                                     _%post125082%_))))
                             (declare (not safe))
                             (__foldr1 cons '() __tmp126846)))
                     _%stx125075%_))))
          (__compile-let-form
           _%stx125075%_
           _%compile-simple125077%_
           _%compile-values125078%_))))
    (define __compile-call%
      (lambda (_%stx125035%_)
        (let* ((_%$e125037%_ _%stx125035%_)
               (_%$E125039125048%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e125037%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e125037%_))
              (let* ((_%$tgt125040125051%_
                      (let () (declare (not safe)) (__AST-e _%$e125037%_)))
                     (_%$hd125041125054%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt125040125051%_)))
                     (_%$tl125042125057%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt125040125051%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl125042125057%_))
                    (let* ((_%$tgt125043125061%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl125042125057%_)))
                           (_%$hd125044125064%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt125043125061%_)))
                           (_%$tl125045125067%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt125043125061%_)))
                           (_%rator125071%_ _%$hd125044125064%_)
                           (_%rands125073%_ _%$tl125045125067%_))
                      (__SRC__%
                       (cons (__compile _%rator125071%_)
                             (map __compile _%rands125073%_))
                       _%stx125035%_))
                    (_%$E125039125048%_)))
              (_%$E125039125048%_)))))
    (define __compile-ref%
      (lambda (_%stx124997%_)
        (let* ((_%$e124999%_ _%stx124997%_)
               (_%$E125001125010%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e124999%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e124999%_))
              (let* ((_%$tgt125002125013%_
                      (let () (declare (not safe)) (__AST-e _%$e124999%_)))
                     (_%$hd125003125016%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt125002125013%_)))
                     (_%$tl125004125019%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt125002125013%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl125004125019%_))
                    (let* ((_%$tgt125005125023%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl125004125019%_)))
                           (_%$hd125006125026%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt125005125023%_)))
                           (_%$tl125007125029%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt125005125023%_)))
                           (_%id125033%_ _%$hd125006125026%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl125007125029%_))
                                  '())
                          (__SRC__% _%id125033%_ _%stx124997%_)
                          (_%$E125001125010%_)))
                    (_%$E125001125010%_)))
              (_%$E125001125010%_)))))
    (define __compile-setq%
      (lambda (_%stx124944%_)
        (let* ((_%$e124946%_ _%stx124944%_)
               (_%$E124948124960%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e124946%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e124946%_))
              (let* ((_%$tgt124949124963%_
                      (let () (declare (not safe)) (__AST-e _%$e124946%_)))
                     (_%$hd124950124966%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt124949124963%_)))
                     (_%$tl124951124969%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt124949124963%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl124951124969%_))
                    (let* ((_%$tgt124952124973%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl124951124969%_)))
                           (_%$hd124953124976%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt124952124973%_)))
                           (_%$tl124954124979%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt124952124973%_)))
                           (_%id124983%_ _%$hd124953124976%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl124954124979%_))
                          (let* ((_%$tgt124955124985%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl124954124979%_)))
                                 (_%$hd124956124988%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt124955124985%_)))
                                 (_%$tl124957124991%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt124955124985%_)))
                                 (_%expr124995%_ _%$hd124956124988%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl124957124991%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id124983%_
                                              _%stx124944%_)
                                             (cons (__compile _%expr124995%_)
                                                   '())))
                                 _%stx124944%_)
                                (_%$E124948124960%_)))
                          (_%$E124948124960%_)))
                    (_%$E124948124960%_)))
              (_%$E124948124960%_)))))
    (define __compile-if%
      (lambda (_%stx124876%_)
        (let* ((_%$e124878%_ _%stx124876%_)
               (_%$E124880124895%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e124878%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e124878%_))
              (let* ((_%$tgt124881124898%_
                      (let () (declare (not safe)) (__AST-e _%$e124878%_)))
                     (_%$hd124882124901%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt124881124898%_)))
                     (_%$tl124883124904%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt124881124898%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl124883124904%_))
                    (let* ((_%$tgt124884124908%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl124883124904%_)))
                           (_%$hd124885124911%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt124884124908%_)))
                           (_%$tl124886124914%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt124884124908%_)))
                           (_%p124918%_ _%$hd124885124911%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl124886124914%_))
                          (let* ((_%$tgt124887124920%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl124886124914%_)))
                                 (_%$hd124888124923%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt124887124920%_)))
                                 (_%$tl124889124926%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt124887124920%_)))
                                 (_%t124930%_ _%$hd124888124923%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl124889124926%_))
                                (let* ((_%$tgt124890124932%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl124889124926%_)))
                                       (_%$hd124891124935%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt124890124932%_)))
                                       (_%$tl124892124938%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt124890124932%_)))
                                       (_%f124942%_ _%$hd124891124935%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl124892124938%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p124918%_)
                                                   (cons (__compile
                                                          _%t124930%_)
                                                         (cons (__compile
                                                                _%f124942%_)
                                                               '()))))
                                       _%stx124876%_)
                                      (_%$E124880124895%_)))
                                (_%$E124880124895%_)))
                          (_%$E124880124895%_)))
                    (_%$E124880124895%_)))
              (_%$E124880124895%_)))))
    (define __compile-quote%
      (lambda (_%stx124838%_)
        (let* ((_%$e124840%_ _%stx124838%_)
               (_%$E124842124851%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e124840%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e124840%_))
              (let* ((_%$tgt124843124854%_
                      (let () (declare (not safe)) (__AST-e _%$e124840%_)))
                     (_%$hd124844124857%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt124843124854%_)))
                     (_%$tl124845124860%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt124843124854%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl124845124860%_))
                    (let* ((_%$tgt124846124864%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl124845124860%_)))
                           (_%$hd124847124867%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt124846124864%_)))
                           (_%$tl124848124870%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt124846124864%_)))
                           (_%e124874%_ _%$hd124847124867%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl124848124870%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e124874%_))
                                       '()))
                           _%stx124838%_)
                          (_%$E124842124851%_)))
                    (_%$E124842124851%_)))
              (_%$E124842124851%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx124800%_)
        (let* ((_%$e124802%_ _%stx124800%_)
               (_%$E124804124813%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e124802%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e124802%_))
              (let* ((_%$tgt124805124816%_
                      (let () (declare (not safe)) (__AST-e _%$e124802%_)))
                     (_%$hd124806124819%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt124805124816%_)))
                     (_%$tl124807124822%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt124805124816%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl124807124822%_))
                    (let* ((_%$tgt124808124826%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl124807124822%_)))
                           (_%$hd124809124829%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt124808124826%_)))
                           (_%$tl124810124832%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt124808124826%_)))
                           (_%e124836%_ _%$hd124809124829%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl124810124832%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e124836%_ '()))
                           _%stx124800%_)
                          (_%$E124804124813%_)))
                    (_%$E124804124813%_)))
              (_%$E124804124813%_)))))
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

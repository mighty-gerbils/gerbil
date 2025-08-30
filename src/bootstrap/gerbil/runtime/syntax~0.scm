(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1756224515)
  (begin
    (declare (not safe))
    (define SyntaxError::t
      (__make-class-type
       'gerbil/runtime/syntax#SyntaxError::t
       'SyntaxError
       (list Exception::t StackTrace::t)
       '(message irritants where context phi marks)
       (cons (cons 'final: '#t) '())
       '#f))
    (define SyntaxError? (__make-class-predicate SyntaxError::t))
    (define make-SyntaxError
      (lambda _%$args120464%_
        (apply make-instance SyntaxError::t _%$args120464%_)))
    (define SyntaxError-message
      (__make-class-slot-accessor SyntaxError::t 'message))
    (define SyntaxError-irritants
      (__make-class-slot-accessor SyntaxError::t 'irritants))
    (define SyntaxError-where
      (__make-class-slot-accessor SyntaxError::t 'where))
    (define SyntaxError-context
      (__make-class-slot-accessor SyntaxError::t 'context))
    (define SyntaxError-phi (__make-class-slot-accessor SyntaxError::t 'phi))
    (define SyntaxError-marks
      (__make-class-slot-accessor SyntaxError::t 'marks))
    (define SyntaxError-continuation
      (__make-class-slot-accessor SyntaxError::t 'continuation))
    (define SyntaxError-message-set!
      (__make-class-slot-mutator SyntaxError::t 'message))
    (define SyntaxError-irritants-set!
      (__make-class-slot-mutator SyntaxError::t 'irritants))
    (define SyntaxError-where-set!
      (__make-class-slot-mutator SyntaxError::t 'where))
    (define SyntaxError-context-set!
      (__make-class-slot-mutator SyntaxError::t 'context))
    (define SyntaxError-phi-set!
      (__make-class-slot-mutator SyntaxError::t 'phi))
    (define SyntaxError-marks-set!
      (__make-class-slot-mutator SyntaxError::t 'marks))
    (define SyntaxError-continuation-set!
      (__make-class-slot-mutator SyntaxError::t 'continuation))
    (define &SyntaxError-message
      (__make-class-slot-unchecked-accessor SyntaxError::t 'message))
    (define &SyntaxError-irritants
      (__make-class-slot-unchecked-accessor SyntaxError::t 'irritants))
    (define &SyntaxError-where
      (__make-class-slot-unchecked-accessor SyntaxError::t 'where))
    (define &SyntaxError-context
      (__make-class-slot-unchecked-accessor SyntaxError::t 'context))
    (define &SyntaxError-phi
      (__make-class-slot-unchecked-accessor SyntaxError::t 'phi))
    (define &SyntaxError-marks
      (__make-class-slot-unchecked-accessor SyntaxError::t 'marks))
    (define &SyntaxError-continuation
      (__make-class-slot-unchecked-accessor SyntaxError::t 'continuation))
    (define &SyntaxError-message-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'message))
    (define &SyntaxError-irritants-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'irritants))
    (define &SyntaxError-where-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'where))
    (define &SyntaxError-context-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'context))
    (define &SyntaxError-phi-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'phi))
    (define &SyntaxError-marks-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'marks))
    (define &SyntaxError-continuation-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'continuation))
    (define SyntaxError::display-exception
      (lambda (_%self120182%_ _%port120183%_)
        (let ((_%self120186%_ _%self120182%_))
          (letrec ((_%location120197%_
                    (lambda ()
                      (letrec ((_%from-irritants120339%_
                                (lambda ()
                                  (let _%lp120424%_ ((_%rest120426%_
                                                      (##unchecked-structure-ref
                                                       _%self120186%_
                                                       '3
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest120427120435%_
                                            _%rest120426%_)
                                           (_%else120429120443%_
                                            (lambda () '#f))
                                           (_%K120431120452%_
                                            (lambda (_%rest120446%_
                                                     _%hd120447%_)
                                              (let ((_%$e120449%_
                                                     (__AST-source
                                                      _%hd120447%_)))
                                                (if _%$e120449%_
                                                    _%$e120449%_
                                                    (_%lp120424%_
                                                     _%rest120446%_))))))
                                      (if (pair? _%rest120427120435%_)
                                          (let ((_%hd120432120455%_
                                                 (##car _%rest120427120435%_))
                                                (_%tl120433120457%_
                                                 (##cdr _%rest120427120435%_)))
                                            (let* ((_%hd120460%_
                                                    _%hd120432120455%_)
                                                   (_%rest120462%_
                                                    _%tl120433120457%_))
                                              (_%K120431120452%_
                                               _%rest120462%_
                                               _%hd120460%_)))
                                          (_%else120429120443%_))))))
                               (_%from-context120340%_
                                (lambda ()
                                  (let _%lp120346%_ ((_%rest120348%_
                                                      (##unchecked-structure-ref
                                                       _%self120186%_
                                                       '4
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest120349120357%_
                                            _%rest120348%_)
                                           (_%else120351120365%_
                                            (lambda () '#f))
                                           (_%K120353120411%_
                                            (lambda (_%rest120368%_
                                                     _%hd120369%_)
                                              (let* ((_%hd120370120380%_
                                                      _%hd120369%_)
                                                     (_%else120372120388%_
                                                      (lambda ()
                                                        (_%lp120346%_
                                                         _%rest120368%_)))
                                                     (_%K120374120396%_
                                                      (lambda (_%loc120391%_)
                                                        (let ((_%$e120393%_
                                                               (__AST-source
                                                                _%loc120391%_)))
                                                          (if _%$e120393%_
                                                              _%$e120393%_
                                                              (_%lp120346%_
                                                               _%rest120368%_))))))
                                                (if (pair? _%hd120370120380%_)
                                                    (let ((_%hd120375120399%_
                                                           (##car _%hd120370120380%_))
                                                          (_%tl120376120401%_
                                                           (##cdr _%hd120370120380%_)))
                                                      (if (##eq? _%hd120375120399%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '@)
                  (if (pair? _%tl120376120401%_)
                      (let ((_%hd120377120404%_ (##car _%tl120376120401%_))
                            (_%tl120378120406%_ (##cdr _%tl120376120401%_)))
                        (let ((_%loc120409%_ _%hd120377120404%_))
                          (if (null? _%tl120378120406%_)
                              (_%K120374120396%_ _%loc120409%_)
                              (_%else120372120388%_))))
                      (_%else120372120388%_))
                  (_%else120372120388%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else120372120388%_))))))
                                      (if (pair? _%rest120349120357%_)
                                          (let ((_%hd120354120414%_
                                                 (##car _%rest120349120357%_))
                                                (_%tl120355120416%_
                                                 (##cdr _%rest120349120357%_)))
                                            (let* ((_%hd120419%_
                                                    _%hd120354120414%_)
                                                   (_%rest120421%_
                                                    _%tl120355120416%_))
                                              (_%K120353120411%_
                                               _%rest120421%_
                                               _%hd120419%_)))
                                          (_%else120351120365%_)))))))
                        (let ((_%$e120342%_ (_%from-irritants120339%_)))
                          (if _%$e120342%_
                              _%$e120342%_
                              (_%from-context120340%_)))))))
            (call-with-parameters__1
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e120200%_ (_%location120197%_)))
                 (if _%$e120200%_
                     ((lambda (_%loc120203%_)
                        (##display-locat _%loc120203%_ '#t _%port120183%_))
                      _%$e120200%_)
                     (display '"?")))
               (newline)
               (displayln
                '"--- Syntax Error: "
                (##unchecked-structure-ref _%self120186%_ '2 '#f '#f))
               (let ((_%$e120206%_
                      (##unchecked-structure-ref _%self120186%_ '4 '#f '#f)))
                 (if _%$e120206%_
                     ((lambda (_%where120209%_)
                        (displayln '"--- Context: ")
                        (let _%lp120211%_ ((_%rest120213%_ _%where120209%_))
                          (let* ((_%rest120214120222%_ _%rest120213%_)
                                 (_%else120216120230%_ (lambda () '#!void))
                                 (_%K120218120280%_
                                  (lambda (_%rest120233%_ _%hd120234%_)
                                    (let* ((_%hd120235120245%_ _%hd120234%_)
                                           (_%else120237120253%_
                                            (lambda ()
                                              (displayln '" at " _%hd120234%_)
                                              (_%lp120211%_ _%rest120233%_)))
                                           (_%K120239120265%_
                                            (lambda (_%ctx120256%_)
                                              (let ((_%$e120258%_
                                                     (__AST-source
                                                      _%ctx120256%_)))
                                                (if _%$e120258%_
                                                    ((lambda (_%loc120261%_)
                                                       (display '" at ")
                                                       (##display-locat
                                                        _%loc120261%_
                                                        '#t
                                                        _%port120183%_)
                                                       (newline)
                                                       (_%lp120211%_
                                                        _%rest120233%_))
                                                     _%$e120258%_)
                                                    (if (##structure-instance-of?
                                                         _%ctx120256%_
                                                         'gerbil#AST::t)
                                                        (let ()
                                                          (display '" at ")
                                                          (__pp-syntax
                                                           _%ctx120256%_)
                                                          (_%lp120211%_
                                                           _%rest120233%_))
                                                        (_%lp120211%_
                                                         _%rest120233%_)))))))
                                      (if (pair? _%hd120235120245%_)
                                          (let ((_%hd120240120268%_
                                                 (##car _%hd120235120245%_))
                                                (_%tl120241120270%_
                                                 (##cdr _%hd120235120245%_)))
                                            (if (##eq? _%hd120240120268%_ '@)
                                                (if (pair? _%tl120241120270%_)
                                                    (let ((_%hd120242120273%_
                                                           (##car _%tl120241120270%_))
                                                          (_%tl120243120275%_
                                                           (##cdr _%tl120241120270%_)))
                                                      (let ((_%ctx120278%_
                                                             _%hd120242120273%_))
                                                        (if (null? _%tl120243120275%_)
                                                            (_%K120239120265%_
                                                             _%ctx120278%_)
                                                            (_%else120237120253%_))))
                                                    (_%else120237120253%_))
                                                (_%else120237120253%_)))
                                          (_%else120237120253%_))))))
                            (if (pair? _%rest120214120222%_)
                                (let ((_%hd120219120283%_
                                       (##car _%rest120214120222%_))
                                      (_%tl120220120285%_
                                       (##cdr _%rest120214120222%_)))
                                  (let* ((_%hd120288%_ _%hd120219120283%_)
                                         (_%rest120290%_ _%tl120220120285%_))
                                    (_%K120218120280%_
                                     _%rest120290%_
                                     _%hd120288%_)))
                                '#!void))))
                      _%$e120206%_)
                     '#!void))
               (let* ((_%self.irritants120291120299%_
                       (##unchecked-structure-ref _%self120186%_ '3 '#f '#f))
                      (_%else120293120307%_ (lambda () '#!void))
                      (_%K120295120320%_
                       (lambda (_%rest120310%_ _%stx120311%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx120311%_)
                         (for-each
                          (lambda (_%detail120313%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail120313%_))
                            (let ((_%$e120315%_
                                   (__AST-source _%detail120313%_)))
                              (if _%$e120315%_
                                  ((lambda (_%loc120318%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc120318%_
                                      '#t
                                      _%port120183%_))
                                   _%$e120315%_)
                                  '#!void))
                            (newline))
                          _%rest120310%_))))
                 (if (pair? _%self.irritants120291120299%_)
                     (let ((_%hd120296120323%_
                            (##car _%self.irritants120291120299%_))
                           (_%tl120297120325%_
                            (##cdr _%self.irritants120291120299%_)))
                       (let* ((_%stx120328%_ _%hd120296120323%_)
                              (_%rest120330%_ _%tl120297120325%_))
                         (_%K120295120320%_ _%rest120330%_ _%stx120328%_)))
                     '#!void))
               (if (##getenv '"GERBIL_DEBUG" '#f)
                   (let ((_%cont120331120333%_
                          (##unchecked-structure-ref
                           _%self120186%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont120331120333%_
                         (let ((_%cont120336%_ _%cont120331120333%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont120336%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port120183%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message120053%_
               _%irritants120054%_
               _%where120055%_
               _%context120056%_
               _%marks120057%_
               _%phi120058%_)
        (let ((__obj120561
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj120561 _%message120053%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj120561
           _%irritants120054%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj120561 _%where120055%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj120561 _%context120056%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj120561 _%marks120057%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj120561 _%phi120058%_ '6 '#f '#f)
          __obj120561)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where120048%_
               _%message120049%_
               _%stx120050%_
               .
               _%details120051%_)
        (raise (make-syntax-error
                _%message120049%_
                (cons _%stx120050%_ _%details120051%_)
                _%where120048%_
                '#f
                '#f
                '#f))))
    (define AST::t
      (__make-class-type
       'gerbil#AST::t
       'syntax
       (list)
       '(e source)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define AST? (__make-class-predicate AST::t))
    (define make-AST
      (lambda _%$args120045%_ (apply make-instance AST::t _%$args120045%_)))
    (define AST-e (__make-class-slot-accessor AST::t 'e))
    (define AST-source (__make-class-slot-accessor AST::t 'source))
    (define AST-e-set! (__make-class-slot-mutator AST::t 'e))
    (define AST-source-set! (__make-class-slot-mutator AST::t 'source))
    (define &AST-e (__make-class-slot-unchecked-accessor AST::t 'e))
    (define &AST-source (__make-class-slot-unchecked-accessor AST::t 'source))
    (define &AST-e-set! (__make-class-slot-unchecked-mutator AST::t 'e))
    (define &AST-source-set!
      (__make-class-slot-unchecked-mutator AST::t 'source))
    (define __AST-e
      (lambda (_%stx120043%_)
        (if (##structure-instance-of? _%stx120043%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx120043%_ '1 '#f '#f)
            _%stx120043%_)))
    (define __AST-source
      (lambda (_%stx120034%_)
        (let _%lp120036%_ ((_%src120038%_ _%stx120034%_))
          (if (##structure-instance-of? _%src120038%_ 'gerbil#AST::t)
              (_%lp120036%_
               (##unchecked-structure-ref _%src120038%_ '2 '#f '#f))
              (if (##locat? _%src120038%_) _%src120038%_ '#f)))))
    (define __AST
      (lambda (_%e120026%_ _%src-stx120027%_)
        (let ((_%src120029%_ (__AST-source _%src-stx120027%_)))
          (if (or (##structure-instance-of? _%e120026%_ 'gerbil#AST::t)
                  (not _%src120029%_))
              _%e120026%_
              (##structure AST::t _%e120026%_ _%src120029%_)))))
    (define __AST-eq?
      (lambda (_%stx120023%_ _%obj120024%_)
        (eq? (__AST-e _%stx120023%_) _%obj120024%_)))
    (define __AST-pair?
      (lambda (_%stx120021%_) (pair? (__AST-e _%stx120021%_))))
    (define __AST-null?
      (lambda (_%stx120019%_) (null? (__AST-e _%stx120019%_))))
    (define __AST-datum?
      (lambda (_%stx120000%_)
        (let* ((_%e120002%_ (__AST-e _%stx120000%_))
               (_%$e120004%_ (number? _%e120002%_)))
          (if _%$e120004%_
              _%$e120004%_
              (let ((_%$e120007%_ (string? _%e120002%_)))
                (if _%$e120007%_
                    _%$e120007%_
                    (let ((_%$e120010%_ (char? _%e120002%_)))
                      (if _%$e120010%_
                          _%$e120010%_
                          (let ((_%$e120013%_ (keyword? _%e120002%_)))
                            (if _%$e120013%_
                                _%$e120013%_
                                (let ((_%$e120016%_ (boolean? _%e120002%_)))
                                  (if _%$e120016%_
                                      _%$e120016%_
                                      (eq? _%e120002%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx119998%_) (symbol? (__AST-e _%stx119998%_))))
    (define __AST-id-list?__%
      (lambda (_%stx119949%_ _%tail?119950%_)
        (let _%lp119952%_ ((_%rest119954%_ _%stx119949%_))
          (let* ((_%$e119956%_ _%rest119954%_)
                 (_%$E119958119971%_
                  (lambda ()
                    (let* ((_%$E119959119966%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e119956%_)))
                           (_%rest119969%_ _%$e119956%_))
                      (_%tail?119950%_ _%rest119969%_)))))
            (if (__AST-pair? _%$e119956%_)
                (let* ((_%$tgt119960119974%_ (__AST-e _%$e119956%_))
                       (_%$hd119961119977%_ (##car _%$tgt119960119974%_))
                       (_%$tl119962119980%_ (##cdr _%$tgt119960119974%_))
                       (_%hd119984%_ _%$hd119961119977%_)
                       (_%rest119986%_ _%$tl119962119980%_))
                  (if (__AST-id? _%hd119984%_)
                      (_%lp119952%_ _%rest119986%_)
                      '#f))
                (_%$E119958119971%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx119991%_)
        (let ((_%tail?119993%_ __AST-null?))
          (__AST-id-list?__% _%stx119991%_ _%tail?119993%_))))
    (define __AST-id-list?
      (lambda _g120563_
        (let ((_g120564_ (##length _g120563_)))
          (cond ((##fx= _g120564_ 1) (apply __AST-id-list?__0 _g120563_))
                ((##fx= _g120564_ 2) (apply __AST-id-list?__% _g120563_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g120563_))))))
    (define __AST-bind-list?
      (lambda (_%stx119941%_)
        (__AST-id-list?__%
         _%stx119941%_
         (lambda (_%e119943%_)
           (let ((_%$e119945%_ (__AST-null? _%e119943%_)))
             (if _%$e119945%_ _%$e119945%_ (__AST-id? _%e119943%_)))))))
    (define __AST-list?__%
      (lambda (_%stx119894%_ _%tail?119895%_)
        (let _%lp119897%_ ((_%rest119899%_ _%stx119894%_))
          (let* ((_%$e119901%_ _%rest119899%_)
                 (_%$E119903119916%_
                  (lambda ()
                    (let* ((_%$E119904119911%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e119901%_)))
                           (_%rest119914%_ _%$e119901%_))
                      (_%tail?119895%_ _%rest119914%_)))))
            (if (__AST-pair? _%$e119901%_)
                (let* ((_%$tgt119905119919%_ (__AST-e _%$e119901%_))
                       (_%$hd119906119922%_ (##car _%$tgt119905119919%_))
                       (_%$tl119907119925%_ (##cdr _%$tgt119905119919%_))
                       (_%rest119929%_ _%$tl119907119925%_))
                  (_%lp119897%_ _%rest119929%_))
                (_%$E119903119916%_))))))
    (define __AST-list?__0
      (lambda (_%stx119934%_)
        (let ((_%tail?119936%_ __AST-null?))
          (__AST-list?__% _%stx119934%_ _%tail?119936%_))))
    (define __AST-list?
      (lambda _g120565_
        (let ((_g120566_ (##length _g120565_)))
          (cond ((##fx= _g120566_ 1) (apply __AST-list?__0 _g120565_))
                ((##fx= _g120566_ 2) (apply __AST-list?__% _g120565_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g120565_))))))
    (define __AST->list
      (lambda (_%stx119859%_)
        (let* ((_%$e119861%_ _%stx119859%_)
               (_%$E119863119876%_
                (lambda ()
                  (let* ((_%$E119864119871%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e119861%_)))
                         (_%rest119874%_ _%$e119861%_))
                    (__AST-e _%rest119874%_)))))
          (if (__AST-pair? _%$e119861%_)
              (let* ((_%$tgt119865119879%_ (__AST-e _%$e119861%_))
                     (_%$hd119866119882%_ (##car _%$tgt119865119879%_))
                     (_%$tl119867119885%_ (##cdr _%$tgt119865119879%_))
                     (_%hd119889%_ _%$hd119866119882%_)
                     (_%rest119891%_ _%$tl119867119885%_))
                (cons _%hd119889%_ (__AST->list _%rest119891%_)))
              (_%$E119863119876%_)))))
    (define __AST->datum
      (lambda (_%stx119852%_)
        (if (##structure-instance-of? _%stx119852%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx119852%_))
            (if (pair? _%stx119852%_)
                (cons (__AST->datum (##car _%stx119852%_))
                      (__AST->datum (##cdr _%stx119852%_)))
                (if (vector? _%stx119852%_)
                    (vector-map __AST->datum _%stx119852%_)
                    (if (box? _%stx119852%_)
                        (box (__AST->datum (unbox _%stx119852%_)))
                        _%stx119852%_))))))
    (define get-readenv
      (lambda (_%port119850%_)
        (##make-readenv
         _%port119850%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in119838%_)
        (let ((_%e119840%_ (##read-datum-or-eof (get-readenv _%in119838%_))))
          (if (eof-object? (__AST-e _%e119840%_))
              (__AST-e _%e119840%_)
              _%e119840%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in119846%_ (current-input-port)))
          (read-syntax__% _%in119846%_))))
    (define read-syntax
      (lambda _g120567_
        (let ((_g120568_ (##length _g120567_)))
          (cond ((##fx= _g120568_ 0) (apply read-syntax__0 _g120567_))
                ((##fx= _g120568_ 1) (apply read-syntax__% _g120567_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g120567_))))))
    (define read-syntax-from-file
      (lambda (_%path119833%_)
        (let ((_%r119835%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path119833%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r119835%_)
              (cdr (__AST-e (vector-ref _%r119835%_ '1)))
              (error (err-code->string _%r119835%_) _%path119833%_)))))
    (define __wrap-syntax
      (lambda (_%re119830%_ _%e119831%_)
        (if (eof-object? _%e119831%_)
            _%e119831%_
            (##structure AST::t _%e119831%_ (##readenv->locat _%re119830%_)))))
    (define __unwrap-syntax
      (lambda (_%re119827%_ _%e119828%_) (__AST-e _%e119828%_)))
    (define __pp-syntax
      (lambda (_%stx119825%_) (pp (__AST->datum _%stx119825%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt119823%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt119823%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt119823%_ '@list)
          (macro-readtable-brace-handler-set! _%rt119823%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt119823%_
           '#\!
           __read-sharp-bang)
          _%rt119823%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt119819%_ _%kw119820%_)
        (macro-readtable-bracket-handler-set! _%rt119819%_ _%kw119820%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt119816%_ _%kw119817%_)
        (macro-readtable-brace-handler-set! _%rt119816%_ _%kw119817%_)))
    (define __read-sharp-bang
      (lambda (_%re119807%_ _%next119808%_ _%start-pos119809%_)
        (if (eq? _%start-pos119809%_ '0)
            (let* ((_%line119811%_
                    (##read-line
                     (macro-readenv-port _%re119807%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line119813%_
                    (substring
                     _%line119811%_
                     '1
                     (string-length _%line119811%_))))
              (macro-readenv-script-line-set!
               _%re119807%_
               _%script-line119813%_)
              (##script-marker))
            (##read-sharp-bang
             _%re119807%_
             _%next119808%_
             _%start-pos119809%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj119805%_)
        (if (source-location? _%obj119805%_)
            (string? (##locat-container _%obj119805%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj119803%_)
        (if (##locat? _%obj119803%_)
            (##container->path (##locat-container _%obj119803%_))
            '#f)))))

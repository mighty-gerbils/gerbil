(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1784279015)
  (begin
    (declare (not safe))
    (define SyntaxError::t
      (__make-class-type
       'SyntaxError::t
       'SyntaxError
       (list Exception::t StackTrace::t)
       '(message irritants where context phi marks)
       (cons (cons 'final: '#t) '())
       '#f))
    (define SyntaxError? (__make-class-predicate SyntaxError::t))
    (define make-SyntaxError
      (lambda _%$args175045%_
        (apply make-instance SyntaxError::t _%$args175045%_)))
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
      (lambda (_%self174764%_ _%port174765%_)
        (let ((_%self174768%_ _%self174764%_))
          (letrec ((_%location174779%_
                    (lambda ()
                      (letrec ((_%from-irritants174920%_
                                (lambda ()
                                  (let _%lp175005%_ ((_%rest175007%_
                                                      (##unchecked-structure-ref
                                                       _%self174768%_
                                                       '3
                                                       '#f
                                                       '#f)))
                                    (let* ((_%$%rest175008175016%_
                                            _%rest175007%_)
                                           (_%$%else175010175024%_
                                            (lambda () '#f))
                                           (_%$%K175012175033%_
                                            (lambda (_%rest175027%_
                                                     _%hd175028%_)
                                              (let ((_%$e175030%_
                                                     (__AST-source
                                                      _%hd175028%_)))
                                                (if _%$e175030%_
                                                    _%$e175030%_
                                                    (_%lp175005%_
                                                     _%rest175027%_))))))
                                      (if (pair? _%$%rest175008175016%_)
                                          (let ((_%$%hd175013175036%_
                                                 (##car _%$%rest175008175016%_))
                                                (_%$%tl175014175038%_
                                                 (##cdr _%$%rest175008175016%_)))
                                            (let* ((_%hd175041%_
                                                    _%$%hd175013175036%_)
                                                   (_%rest175043%_
                                                    _%$%tl175014175038%_))
                                              (_%$%K175012175033%_
                                               _%rest175043%_
                                               _%hd175041%_)))
                                          (_%$%else175010175024%_))))))
                               (_%from-context174921%_
                                (lambda ()
                                  (let _%lp174927%_ ((_%rest174929%_
                                                      (##unchecked-structure-ref
                                                       _%self174768%_
                                                       '4
                                                       '#f
                                                       '#f)))
                                    (let* ((_%$%rest174930174938%_
                                            _%rest174929%_)
                                           (_%$%else174932174946%_
                                            (lambda () '#f))
                                           (_%$%K174934174992%_
                                            (lambda (_%rest174949%_
                                                     _%hd174950%_)
                                              (let* ((_%$%hd174951174961%_
                                                      _%hd174950%_)
                                                     (_%$%else174953174969%_
                                                      (lambda ()
                                                        (_%lp174927%_
                                                         _%rest174949%_)))
                                                     (_%$%K174955174977%_
                                                      (lambda (_%loc174972%_)
                                                        (let ((_%$e174974%_
                                                               (__AST-source
                                                                _%loc174972%_)))
                                                          (if _%$e174974%_
                                                              _%$e174974%_
                                                              (_%lp174927%_
                                                               _%rest174949%_))))))
                                                (if (pair? _%$%hd174951174961%_)
                                                    (let ((_%$%hd174956174980%_
                                                           (##car _%$%hd174951174961%_))
                                                          (_%$%tl174957174982%_
                                                           (##cdr _%$%hd174951174961%_)))
                                                      (if (##eq? _%$%hd174956174980%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '@)
                  (if (pair? _%$%tl174957174982%_)
                      (let ((_%$%hd174958174985%_ (##car _%$%tl174957174982%_))
                            (_%$%tl174959174987%_
                             (##cdr _%$%tl174957174982%_)))
                        (let ((_%loc174990%_ _%$%hd174958174985%_))
                          (if (null? _%$%tl174959174987%_)
                              (_%$%K174955174977%_ _%loc174990%_)
                              (_%$%else174953174969%_))))
                      (_%$%else174953174969%_))
                  (_%$%else174953174969%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else174953174969%_))))))
                                      (if (pair? _%$%rest174930174938%_)
                                          (let ((_%$%hd174935174995%_
                                                 (##car _%$%rest174930174938%_))
                                                (_%$%tl174936174997%_
                                                 (##cdr _%$%rest174930174938%_)))
                                            (let* ((_%hd175000%_
                                                    _%$%hd174935174995%_)
                                                   (_%rest175002%_
                                                    _%$%tl174936174997%_))
                                              (_%$%K174934174992%_
                                               _%rest175002%_
                                               _%hd175000%_)))
                                          (_%$%else174932174946%_)))))))
                        (let ((_%$e174923%_ (_%from-irritants174920%_)))
                          (if _%$e174923%_
                              _%$e174923%_
                              (_%from-context174921%_)))))))
            (call-with-parameters__1
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e174782%_ (_%location174779%_)))
                 (if _%$e174782%_
                     (##display-locat _%$e174782%_ '#t _%port174765%_)
                     (display '"?")))
               (newline)
               (displayln
                '"--- Syntax Error: "
                (##unchecked-structure-ref _%self174768%_ '2 '#f '#f))
               (let ((_%$e174788%_
                      (##unchecked-structure-ref _%self174768%_ '4 '#f '#f)))
                 (if _%$e174788%_
                     (let ()
                       (displayln '"--- Context: ")
                       (let _%lp174793%_ ((_%rest174795%_ _%$e174788%_))
                         (let* ((_%$%rest174796174804%_ _%rest174795%_)
                                (_%$%else174798174812%_ (lambda () '#!void))
                                (_%$%K174800174862%_
                                 (lambda (_%rest174815%_ _%hd174816%_)
                                   (let* ((_%$%hd174817174827%_ _%hd174816%_)
                                          (_%$%else174819174835%_
                                           (lambda ()
                                             (displayln '" at " _%hd174816%_)
                                             (_%lp174793%_ _%rest174815%_)))
                                          (_%$%K174821174847%_
                                           (lambda (_%ctx174838%_)
                                             (let ((_%$e174840%_
                                                    (__AST-source
                                                     _%ctx174838%_)))
                                               (if _%$e174840%_
                                                   (let ()
                                                     (display '" at ")
                                                     (##display-locat
                                                      _%$e174840%_
                                                      '#t
                                                      _%port174765%_)
                                                     (newline)
                                                     (_%lp174793%_
                                                      _%rest174815%_))
                                                   (if (##structure-instance-of?
                                                        _%ctx174838%_
                                                        'gerbil#AST::t)
                                                       (let ()
                                                         (display '" at ")
                                                         (__pp-syntax
                                                          _%ctx174838%_)
                                                         (_%lp174793%_
                                                          _%rest174815%_))
                                                       (_%lp174793%_
                                                        _%rest174815%_)))))))
                                     (if (pair? _%$%hd174817174827%_)
                                         (let ((_%$%hd174822174850%_
                                                (##car _%$%hd174817174827%_))
                                               (_%$%tl174823174852%_
                                                (##cdr _%$%hd174817174827%_)))
                                           (if (##eq? _%$%hd174822174850%_ '@)
                                               (if (pair? _%$%tl174823174852%_)
                                                   (let ((_%$%hd174824174855%_
                                                          (##car _%$%tl174823174852%_))
                                                         (_%$%tl174825174857%_
                                                          (##cdr _%$%tl174823174852%_)))
                                                     (let ((_%ctx174860%_
                                                            _%$%hd174824174855%_))
                                                       (if (null? _%$%tl174825174857%_)
                                                           (_%$%K174821174847%_
                                                            _%ctx174860%_)
                                                           (_%$%else174819174835%_))))
                                                   (_%$%else174819174835%_))
                                               (_%$%else174819174835%_)))
                                         (_%$%else174819174835%_))))))
                           (if (pair? _%$%rest174796174804%_)
                               (let ((_%$%hd174801174865%_
                                      (##car _%$%rest174796174804%_))
                                     (_%$%tl174802174867%_
                                      (##cdr _%$%rest174796174804%_)))
                                 (let* ((_%hd174870%_ _%$%hd174801174865%_)
                                        (_%rest174872%_ _%$%tl174802174867%_))
                                   (_%$%K174800174862%_
                                    _%rest174872%_
                                    _%hd174870%_)))
                               '#!void))))
                     '#!void))
               (let* ((_%$%self.irritants174873174881%_
                       (##unchecked-structure-ref _%self174768%_ '3 '#f '#f))
                      (_%$%else174875174889%_ (lambda () '#!void))
                      (_%$%K174877174902%_
                       (lambda (_%rest174892%_ _%stx174893%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx174893%_)
                         (for-each
                          (lambda (_%detail174895%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail174895%_))
                            (let ((_%$e174897%_
                                   (__AST-source _%detail174895%_)))
                              (if _%$e174897%_
                                  (let ()
                                    (display '" at ")
                                    (##display-locat
                                     _%$e174897%_
                                     '#t
                                     _%port174765%_))
                                  '#!void))
                            (newline))
                          _%rest174892%_))))
                 (if (pair? _%$%self.irritants174873174881%_)
                     (let ((_%$%hd174878174905%_
                            (##car _%$%self.irritants174873174881%_))
                           (_%$%tl174879174907%_
                            (##cdr _%$%self.irritants174873174881%_)))
                       (let* ((_%stx174910%_ _%$%hd174878174905%_)
                              (_%rest174912%_ _%$%tl174879174907%_))
                         (_%$%K174877174902%_ _%rest174912%_ _%stx174910%_)))
                     '#!void))
               (if __DEBUG
                   (let ((_%$%cont174913174915%_
                          (##unchecked-structure-ref
                           _%self174768%_
                           '1
                           '#f
                           '#f)))
                     (if _%$%cont174913174915%_
                         (let ((_%cont174917%_ _%$%cont174913174915%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont174917%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port174765%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (let* ((_%klass174627%_ SyntaxError::t) (_%klass174632%_ _%klass174627%_))
      (__seal-class! _%klass174632%_))
    (define make-syntax-error
      (lambda (_%message174620%_
               _%irritants174621%_
               _%where174622%_
               _%context174623%_
               _%marks174624%_
               _%phi174625%_)
        (let ((__obj175142
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj175142 _%message174620%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj175142
           _%irritants174621%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj175142 _%where174622%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj175142 _%context174623%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj175142 _%marks174624%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj175142 _%phi174625%_ '6 '#f '#f)
          __obj175142)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where174615%_
               _%message174616%_
               _%stx174617%_
               .
               _%details174618%_)
        (raise (make-syntax-error
                _%message174616%_
                (cons _%stx174617%_ _%details174618%_)
                _%where174615%_
                '#f
                '#f
                '#f))))
    (define AST::t
      (__make-class-type
       'gerbil#AST::t
       'syntax
       (list)
       '(e source)
       (cons (cons 'struct: '#t) '((print: e)))
       '#f))
    (define AST? (__make-class-predicate AST::t))
    (define make-AST
      (lambda _%$args174612%_ (apply make-instance AST::t _%$args174612%_)))
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
      (lambda (_%stx174610%_)
        (if (##structure-instance-of? _%stx174610%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx174610%_ '1 '#f '#f)
            _%stx174610%_)))
    (define __AST-source
      (lambda (_%stx174601%_)
        (let _%lp174603%_ ((_%src174605%_ _%stx174601%_))
          (if (##structure-instance-of? _%src174605%_ 'gerbil#AST::t)
              (_%lp174603%_
               (##unchecked-structure-ref _%src174605%_ '2 '#f '#f))
              (if (##locat? _%src174605%_) _%src174605%_ '#f)))))
    (define __AST
      (lambda (_%e174593%_ _%src-stx174594%_)
        (let ((_%src174596%_ (__AST-source _%src-stx174594%_)))
          (if (or (##structure-instance-of? _%e174593%_ 'gerbil#AST::t)
                  (not _%src174596%_))
              _%e174593%_
              (##structure AST::t _%e174593%_ _%src174596%_)))))
    (define __AST-eq?
      (lambda (_%stx174590%_ _%obj174591%_)
        (eq? (__AST-e _%stx174590%_) _%obj174591%_)))
    (define __AST-pair?
      (lambda (_%stx174588%_) (pair? (__AST-e _%stx174588%_))))
    (define __AST-null?
      (lambda (_%stx174586%_) (null? (__AST-e _%stx174586%_))))
    (define __AST-datum?
      (lambda (_%stx174567%_)
        (let* ((_%e174569%_ (__AST-e _%stx174567%_))
               (_%$e174571%_ (number? _%e174569%_)))
          (if _%$e174571%_
              _%$e174571%_
              (let ((_%$e174574%_ (string? _%e174569%_)))
                (if _%$e174574%_
                    _%$e174574%_
                    (let ((_%$e174577%_ (char? _%e174569%_)))
                      (if _%$e174577%_
                          _%$e174577%_
                          (let ((_%$e174580%_ (keyword? _%e174569%_)))
                            (if _%$e174580%_
                                _%$e174580%_
                                (let ((_%$e174583%_ (boolean? _%e174569%_)))
                                  (if _%$e174583%_
                                      _%$e174583%_
                                      (eq? _%e174569%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx174565%_) (symbol? (__AST-e _%stx174565%_))))
    (define __AST-id-list?__%
      (lambda (_%stx174516%_ _%tail?174517%_)
        (let _%lp174519%_ ((_%rest174521%_ _%stx174516%_))
          (let* ((_%$e174523%_ _%rest174521%_)
                 (_%$%$E174525174538%_
                  (lambda ()
                    (let* ((_%$%$E174526174533%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e174523%_)))
                           (_%rest174536%_ _%$e174523%_))
                      (_%tail?174517%_ _%rest174536%_)))))
            (if (__AST-pair? _%$e174523%_)
                (let* ((_%$%$tgt174527174541%_ (__AST-e _%$e174523%_))
                       (_%$%$hd174528174544%_ (##car _%$%$tgt174527174541%_))
                       (_%$%$tl174529174547%_ (##cdr _%$%$tgt174527174541%_))
                       (_%hd174551%_ _%$%$hd174528174544%_)
                       (_%rest174553%_ _%$%$tl174529174547%_))
                  (if (__AST-id? _%hd174551%_)
                      (_%lp174519%_ _%rest174553%_)
                      '#f))
                (_%$%$E174525174538%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx174558%_)
        (let ((_%tail?174560%_ __AST-null?))
          (__AST-id-list?__% _%stx174558%_ _%tail?174560%_))))
    (define __AST-id-list?
      (lambda _g175144_
        (let ((_g175145_ (##length _g175144_)))
          (cond ((##fx= _g175145_ 1) (apply __AST-id-list?__0 _g175144_))
                ((##fx= _g175145_ 2) (apply __AST-id-list?__% _g175144_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g175144_))))))
    (define __AST-bind-list?
      (lambda (_%stx174508%_)
        (__AST-id-list?__%
         _%stx174508%_
         (lambda (_%e174510%_)
           (let ((_%$e174512%_ (__AST-null? _%e174510%_)))
             (if _%$e174512%_ _%$e174512%_ (__AST-id? _%e174510%_)))))))
    (define __AST-list?__%
      (lambda (_%stx174461%_ _%tail?174462%_)
        (let _%lp174464%_ ((_%rest174466%_ _%stx174461%_))
          (let* ((_%$e174468%_ _%rest174466%_)
                 (_%$%$E174470174483%_
                  (lambda ()
                    (let* ((_%$%$E174471174478%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e174468%_)))
                           (_%rest174481%_ _%$e174468%_))
                      (_%tail?174462%_ _%rest174481%_)))))
            (if (__AST-pair? _%$e174468%_)
                (let* ((_%$%$tgt174472174486%_ (__AST-e _%$e174468%_))
                       (_%$%$hd174473174489%_ (##car _%$%$tgt174472174486%_))
                       (_%$%$tl174474174492%_ (##cdr _%$%$tgt174472174486%_))
                       (_%rest174496%_ _%$%$tl174474174492%_))
                  (_%lp174464%_ _%rest174496%_))
                (_%$%$E174470174483%_))))))
    (define __AST-list?__0
      (lambda (_%stx174501%_)
        (let ((_%tail?174503%_ __AST-null?))
          (__AST-list?__% _%stx174501%_ _%tail?174503%_))))
    (define __AST-list?
      (lambda _g175146_
        (let ((_g175147_ (##length _g175146_)))
          (cond ((##fx= _g175147_ 1) (apply __AST-list?__0 _g175146_))
                ((##fx= _g175147_ 2) (apply __AST-list?__% _g175146_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g175146_))))))
    (define __AST->list
      (lambda (_%stx174426%_)
        (let* ((_%$e174428%_ _%stx174426%_)
               (_%$%$E174430174443%_
                (lambda ()
                  (let* ((_%$%$E174431174438%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e174428%_)))
                         (_%rest174441%_ _%$e174428%_))
                    (__AST-e _%rest174441%_)))))
          (if (__AST-pair? _%$e174428%_)
              (let* ((_%$%$tgt174432174446%_ (__AST-e _%$e174428%_))
                     (_%$%$hd174433174449%_ (##car _%$%$tgt174432174446%_))
                     (_%$%$tl174434174452%_ (##cdr _%$%$tgt174432174446%_))
                     (_%hd174456%_ _%$%$hd174433174449%_)
                     (_%rest174458%_ _%$%$tl174434174452%_))
                (cons _%hd174456%_ (__AST->list _%rest174458%_)))
              (_%$%$E174430174443%_)))))
    (define __AST->datum
      (lambda (_%stx174419%_)
        (if (##structure-instance-of? _%stx174419%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx174419%_))
            (if (pair? _%stx174419%_)
                (cons (__AST->datum (##car _%stx174419%_))
                      (__AST->datum (##cdr _%stx174419%_)))
                (if (vector? _%stx174419%_)
                    (vector-map __AST->datum _%stx174419%_)
                    (if (box? _%stx174419%_)
                        (box (__AST->datum (unbox _%stx174419%_)))
                        _%stx174419%_))))))
    (define get-readenv
      (lambda (_%port174417%_)
        (##make-readenv
         _%port174417%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in174405%_)
        (let ((_%e174407%_ (##read-datum-or-eof (get-readenv _%in174405%_))))
          (if (eof-object? (__AST-e _%e174407%_))
              (__AST-e _%e174407%_)
              _%e174407%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in174413%_ (current-input-port)))
          (read-syntax__% _%in174413%_))))
    (define read-syntax
      (lambda _g175148_
        (let ((_g175149_ (##length _g175148_)))
          (cond ((##fx= _g175149_ 0) (apply read-syntax__0 _g175148_))
                ((##fx= _g175149_ 1) (apply read-syntax__% _g175148_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g175148_))))))
    (define read-syntax-from-file
      (lambda (_%path174400%_)
        (let ((_%r174402%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path174400%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r174402%_)
              (cdr (__AST-e (vector-ref _%r174402%_ '1)))
              (error (err-code->string _%r174402%_) _%path174400%_)))))
    (define __wrap-syntax
      (lambda (_%re174397%_ _%e174398%_)
        (if (eof-object? _%e174398%_)
            _%e174398%_
            (##structure AST::t _%e174398%_ (##readenv->locat _%re174397%_)))))
    (define __unwrap-syntax
      (lambda (_%re174394%_ _%e174395%_) (__AST-e _%e174395%_)))
    (define __pp-syntax
      (lambda (_%stx174392%_) (pp (__AST->datum _%stx174392%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt174390%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt174390%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt174390%_ '@list)
          (macro-readtable-brace-handler-set! _%rt174390%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt174390%_
           '#\!
           __read-sharp-bang)
          _%rt174390%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt174386%_ _%kw174387%_)
        (macro-readtable-bracket-handler-set! _%rt174386%_ _%kw174387%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt174383%_ _%kw174384%_)
        (macro-readtable-brace-handler-set! _%rt174383%_ _%kw174384%_)))
    (define __read-sharp-bang
      (lambda (_%re174374%_ _%next174375%_ _%start-pos174376%_)
        (if (eq? _%start-pos174376%_ '0)
            (let* ((_%line174378%_
                    (##read-line
                     (macro-readenv-port _%re174374%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line174380%_
                    (substring
                     _%line174378%_
                     '1
                     (string-length _%line174378%_))))
              (macro-readenv-script-line-set!
               _%re174374%_
               _%script-line174380%_)
              (##script-marker))
            (##read-sharp-bang
             _%re174374%_
             _%next174375%_
             _%start-pos174376%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj174372%_)
        (if (source-location? _%obj174372%_)
            (string? (##locat-container _%obj174372%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj174370%_)
        (if (##locat? _%obj174370%_)
            (##container->path (##locat-container _%obj174370%_))
            '#f)))))

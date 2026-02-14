(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1771037608)
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
      (lambda _%$args175071%_
        (apply make-instance SyntaxError::t _%$args175071%_)))
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
      (lambda (_%self174790%_ _%port174791%_)
        (let ((_%self174794%_ _%self174790%_))
          (letrec ((_%location174805%_
                    (lambda ()
                      (letrec ((_%from-irritants174946%_
                                (lambda ()
                                  (let _%lp175031%_ ((_%rest175033%_
                                                      (##unchecked-structure-ref
                                                       _%self174794%_
                                                       '3
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest175034175042%_
                                            _%rest175033%_)
                                           (_%else175036175050%_
                                            (lambda () '#f))
                                           (_%K175038175059%_
                                            (lambda (_%rest175053%_
                                                     _%hd175054%_)
                                              (let ((_%$e175056%_
                                                     (__AST-source
                                                      _%hd175054%_)))
                                                (if _%$e175056%_
                                                    _%$e175056%_
                                                    (_%lp175031%_
                                                     _%rest175053%_))))))
                                      (if (pair? _%rest175034175042%_)
                                          (let ((_%hd175039175062%_
                                                 (##car _%rest175034175042%_))
                                                (_%tl175040175064%_
                                                 (##cdr _%rest175034175042%_)))
                                            (let* ((_%hd175067%_
                                                    _%hd175039175062%_)
                                                   (_%rest175069%_
                                                    _%tl175040175064%_))
                                              (_%K175038175059%_
                                               _%rest175069%_
                                               _%hd175067%_)))
                                          (_%else175036175050%_))))))
                               (_%from-context174947%_
                                (lambda ()
                                  (let _%lp174953%_ ((_%rest174955%_
                                                      (##unchecked-structure-ref
                                                       _%self174794%_
                                                       '4
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest174956174964%_
                                            _%rest174955%_)
                                           (_%else174958174972%_
                                            (lambda () '#f))
                                           (_%K174960175018%_
                                            (lambda (_%rest174975%_
                                                     _%hd174976%_)
                                              (let* ((_%hd174977174987%_
                                                      _%hd174976%_)
                                                     (_%else174979174995%_
                                                      (lambda ()
                                                        (_%lp174953%_
                                                         _%rest174975%_)))
                                                     (_%K174981175003%_
                                                      (lambda (_%loc174998%_)
                                                        (let ((_%$e175000%_
                                                               (__AST-source
                                                                _%loc174998%_)))
                                                          (if _%$e175000%_
                                                              _%$e175000%_
                                                              (_%lp174953%_
                                                               _%rest174975%_))))))
                                                (if (pair? _%hd174977174987%_)
                                                    (let ((_%hd174982175006%_
                                                           (##car _%hd174977174987%_))
                                                          (_%tl174983175008%_
                                                           (##cdr _%hd174977174987%_)))
                                                      (if (##eq? _%hd174982175006%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '@)
                  (if (pair? _%tl174983175008%_)
                      (let ((_%hd174984175011%_ (##car _%tl174983175008%_))
                            (_%tl174985175013%_ (##cdr _%tl174983175008%_)))
                        (let ((_%loc175016%_ _%hd174984175011%_))
                          (if (null? _%tl174985175013%_)
                              (_%K174981175003%_ _%loc175016%_)
                              (_%else174979174995%_))))
                      (_%else174979174995%_))
                  (_%else174979174995%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else174979174995%_))))))
                                      (if (pair? _%rest174956174964%_)
                                          (let ((_%hd174961175021%_
                                                 (##car _%rest174956174964%_))
                                                (_%tl174962175023%_
                                                 (##cdr _%rest174956174964%_)))
                                            (let* ((_%hd175026%_
                                                    _%hd174961175021%_)
                                                   (_%rest175028%_
                                                    _%tl174962175023%_))
                                              (_%K174960175018%_
                                               _%rest175028%_
                                               _%hd175026%_)))
                                          (_%else174958174972%_)))))))
                        (let ((_%$e174949%_ (_%from-irritants174946%_)))
                          (if _%$e174949%_
                              _%$e174949%_
                              (_%from-context174947%_)))))))
            (call-with-parameters__1
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e174808%_ (_%location174805%_)))
                 (if _%$e174808%_
                     ((lambda (_%loc174811%_)
                        (##display-locat _%loc174811%_ '#t _%port174791%_))
                      _%$e174808%_)
                     (display '"?")))
               (newline)
               (displayln
                '"--- Syntax Error: "
                (##unchecked-structure-ref _%self174794%_ '2 '#f '#f))
               (let ((_%$e174814%_
                      (##unchecked-structure-ref _%self174794%_ '4 '#f '#f)))
                 (if _%$e174814%_
                     ((lambda (_%where174817%_)
                        (displayln '"--- Context: ")
                        (let _%lp174819%_ ((_%rest174821%_ _%where174817%_))
                          (let* ((_%rest174822174830%_ _%rest174821%_)
                                 (_%else174824174838%_ (lambda () '#!void))
                                 (_%K174826174888%_
                                  (lambda (_%rest174841%_ _%hd174842%_)
                                    (let* ((_%hd174843174853%_ _%hd174842%_)
                                           (_%else174845174861%_
                                            (lambda ()
                                              (displayln '" at " _%hd174842%_)
                                              (_%lp174819%_ _%rest174841%_)))
                                           (_%K174847174873%_
                                            (lambda (_%ctx174864%_)
                                              (let ((_%$e174866%_
                                                     (__AST-source
                                                      _%ctx174864%_)))
                                                (if _%$e174866%_
                                                    ((lambda (_%loc174869%_)
                                                       (display '" at ")
                                                       (##display-locat
                                                        _%loc174869%_
                                                        '#t
                                                        _%port174791%_)
                                                       (newline)
                                                       (_%lp174819%_
                                                        _%rest174841%_))
                                                     _%$e174866%_)
                                                    (if (##structure-instance-of?
                                                         _%ctx174864%_
                                                         'gerbil#AST::t)
                                                        (let ()
                                                          (display '" at ")
                                                          (__pp-syntax
                                                           _%ctx174864%_)
                                                          (_%lp174819%_
                                                           _%rest174841%_))
                                                        (_%lp174819%_
                                                         _%rest174841%_)))))))
                                      (if (pair? _%hd174843174853%_)
                                          (let ((_%hd174848174876%_
                                                 (##car _%hd174843174853%_))
                                                (_%tl174849174878%_
                                                 (##cdr _%hd174843174853%_)))
                                            (if (##eq? _%hd174848174876%_ '@)
                                                (if (pair? _%tl174849174878%_)
                                                    (let ((_%hd174850174881%_
                                                           (##car _%tl174849174878%_))
                                                          (_%tl174851174883%_
                                                           (##cdr _%tl174849174878%_)))
                                                      (let ((_%ctx174886%_
                                                             _%hd174850174881%_))
                                                        (if (null? _%tl174851174883%_)
                                                            (_%K174847174873%_
                                                             _%ctx174886%_)
                                                            (_%else174845174861%_))))
                                                    (_%else174845174861%_))
                                                (_%else174845174861%_)))
                                          (_%else174845174861%_))))))
                            (if (pair? _%rest174822174830%_)
                                (let ((_%hd174827174891%_
                                       (##car _%rest174822174830%_))
                                      (_%tl174828174893%_
                                       (##cdr _%rest174822174830%_)))
                                  (let* ((_%hd174896%_ _%hd174827174891%_)
                                         (_%rest174898%_ _%tl174828174893%_))
                                    (_%K174826174888%_
                                     _%rest174898%_
                                     _%hd174896%_)))
                                '#!void))))
                      _%$e174814%_)
                     '#!void))
               (let* ((_%self.irritants174899174907%_
                       (##unchecked-structure-ref _%self174794%_ '3 '#f '#f))
                      (_%else174901174915%_ (lambda () '#!void))
                      (_%K174903174928%_
                       (lambda (_%rest174918%_ _%stx174919%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx174919%_)
                         (for-each
                          (lambda (_%detail174921%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail174921%_))
                            (let ((_%$e174923%_
                                   (__AST-source _%detail174921%_)))
                              (if _%$e174923%_
                                  ((lambda (_%loc174926%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc174926%_
                                      '#t
                                      _%port174791%_))
                                   _%$e174923%_)
                                  '#!void))
                            (newline))
                          _%rest174918%_))))
                 (if (pair? _%self.irritants174899174907%_)
                     (let ((_%hd174904174931%_
                            (##car _%self.irritants174899174907%_))
                           (_%tl174905174933%_
                            (##cdr _%self.irritants174899174907%_)))
                       (let* ((_%stx174936%_ _%hd174904174931%_)
                              (_%rest174938%_ _%tl174905174933%_))
                         (_%K174903174928%_ _%rest174938%_ _%stx174936%_)))
                     '#!void))
               (if __DEBUG
                   (let ((_%cont174939174941%_
                          (##unchecked-structure-ref
                           _%self174794%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont174939174941%_
                         (let ((_%cont174943%_ _%cont174939174941%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont174943%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port174791%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (let* ((_%klass174653%_ SyntaxError::t) (_%klass174658%_ _%klass174653%_))
      (__seal-class! _%klass174658%_))
    (define make-syntax-error
      (lambda (_%message174646%_
               _%irritants174647%_
               _%where174648%_
               _%context174649%_
               _%marks174650%_
               _%phi174651%_)
        (let ((__obj175168
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj175168 _%message174646%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj175168
           _%irritants174647%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj175168 _%where174648%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj175168 _%context174649%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj175168 _%marks174650%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj175168 _%phi174651%_ '6 '#f '#f)
          __obj175168)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where174641%_
               _%message174642%_
               _%stx174643%_
               .
               _%details174644%_)
        (raise (make-syntax-error
                _%message174642%_
                (cons _%stx174643%_ _%details174644%_)
                _%where174641%_
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
      (lambda _%$args174638%_ (apply make-instance AST::t _%$args174638%_)))
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
      (lambda (_%stx174636%_)
        (if (##structure-instance-of? _%stx174636%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx174636%_ '1 '#f '#f)
            _%stx174636%_)))
    (define __AST-source
      (lambda (_%stx174627%_)
        (let _%lp174629%_ ((_%src174631%_ _%stx174627%_))
          (if (##structure-instance-of? _%src174631%_ 'gerbil#AST::t)
              (_%lp174629%_
               (##unchecked-structure-ref _%src174631%_ '2 '#f '#f))
              (if (##locat? _%src174631%_) _%src174631%_ '#f)))))
    (define __AST
      (lambda (_%e174619%_ _%src-stx174620%_)
        (let ((_%src174622%_ (__AST-source _%src-stx174620%_)))
          (if (or (##structure-instance-of? _%e174619%_ 'gerbil#AST::t)
                  (not _%src174622%_))
              _%e174619%_
              (##structure AST::t _%e174619%_ _%src174622%_)))))
    (define __AST-eq?
      (lambda (_%stx174616%_ _%obj174617%_)
        (eq? (__AST-e _%stx174616%_) _%obj174617%_)))
    (define __AST-pair?
      (lambda (_%stx174614%_) (pair? (__AST-e _%stx174614%_))))
    (define __AST-null?
      (lambda (_%stx174612%_) (null? (__AST-e _%stx174612%_))))
    (define __AST-datum?
      (lambda (_%stx174593%_)
        (let* ((_%e174595%_ (__AST-e _%stx174593%_))
               (_%$e174597%_ (number? _%e174595%_)))
          (if _%$e174597%_
              _%$e174597%_
              (let ((_%$e174600%_ (string? _%e174595%_)))
                (if _%$e174600%_
                    _%$e174600%_
                    (let ((_%$e174603%_ (char? _%e174595%_)))
                      (if _%$e174603%_
                          _%$e174603%_
                          (let ((_%$e174606%_ (keyword? _%e174595%_)))
                            (if _%$e174606%_
                                _%$e174606%_
                                (let ((_%$e174609%_ (boolean? _%e174595%_)))
                                  (if _%$e174609%_
                                      _%$e174609%_
                                      (eq? _%e174595%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx174591%_) (symbol? (__AST-e _%stx174591%_))))
    (define __AST-id-list?__%
      (lambda (_%stx174542%_ _%tail?174543%_)
        (let _%lp174545%_ ((_%rest174547%_ _%stx174542%_))
          (let* ((_%$e174549%_ _%rest174547%_)
                 (_%$E174551174564%_
                  (lambda ()
                    (let* ((_%$E174552174559%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e174549%_)))
                           (_%rest174562%_ _%$e174549%_))
                      (_%tail?174543%_ _%rest174562%_)))))
            (if (__AST-pair? _%$e174549%_)
                (let* ((_%$tgt174553174567%_ (__AST-e _%$e174549%_))
                       (_%$hd174554174570%_ (##car _%$tgt174553174567%_))
                       (_%$tl174555174573%_ (##cdr _%$tgt174553174567%_))
                       (_%hd174577%_ _%$hd174554174570%_)
                       (_%rest174579%_ _%$tl174555174573%_))
                  (if (__AST-id? _%hd174577%_)
                      (_%lp174545%_ _%rest174579%_)
                      '#f))
                (_%$E174551174564%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx174584%_)
        (let ((_%tail?174586%_ __AST-null?))
          (__AST-id-list?__% _%stx174584%_ _%tail?174586%_))))
    (define __AST-id-list?
      (lambda _g175170_
        (let ((_g175171_ (##length _g175170_)))
          (cond ((##fx= _g175171_ 1) (apply __AST-id-list?__0 _g175170_))
                ((##fx= _g175171_ 2) (apply __AST-id-list?__% _g175170_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g175170_))))))
    (define __AST-bind-list?
      (lambda (_%stx174534%_)
        (__AST-id-list?__%
         _%stx174534%_
         (lambda (_%e174536%_)
           (let ((_%$e174538%_ (__AST-null? _%e174536%_)))
             (if _%$e174538%_ _%$e174538%_ (__AST-id? _%e174536%_)))))))
    (define __AST-list?__%
      (lambda (_%stx174487%_ _%tail?174488%_)
        (let _%lp174490%_ ((_%rest174492%_ _%stx174487%_))
          (let* ((_%$e174494%_ _%rest174492%_)
                 (_%$E174496174509%_
                  (lambda ()
                    (let* ((_%$E174497174504%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e174494%_)))
                           (_%rest174507%_ _%$e174494%_))
                      (_%tail?174488%_ _%rest174507%_)))))
            (if (__AST-pair? _%$e174494%_)
                (let* ((_%$tgt174498174512%_ (__AST-e _%$e174494%_))
                       (_%$hd174499174515%_ (##car _%$tgt174498174512%_))
                       (_%$tl174500174518%_ (##cdr _%$tgt174498174512%_))
                       (_%rest174522%_ _%$tl174500174518%_))
                  (_%lp174490%_ _%rest174522%_))
                (_%$E174496174509%_))))))
    (define __AST-list?__0
      (lambda (_%stx174527%_)
        (let ((_%tail?174529%_ __AST-null?))
          (__AST-list?__% _%stx174527%_ _%tail?174529%_))))
    (define __AST-list?
      (lambda _g175172_
        (let ((_g175173_ (##length _g175172_)))
          (cond ((##fx= _g175173_ 1) (apply __AST-list?__0 _g175172_))
                ((##fx= _g175173_ 2) (apply __AST-list?__% _g175172_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g175172_))))))
    (define __AST->list
      (lambda (_%stx174452%_)
        (let* ((_%$e174454%_ _%stx174452%_)
               (_%$E174456174469%_
                (lambda ()
                  (let* ((_%$E174457174464%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e174454%_)))
                         (_%rest174467%_ _%$e174454%_))
                    (__AST-e _%rest174467%_)))))
          (if (__AST-pair? _%$e174454%_)
              (let* ((_%$tgt174458174472%_ (__AST-e _%$e174454%_))
                     (_%$hd174459174475%_ (##car _%$tgt174458174472%_))
                     (_%$tl174460174478%_ (##cdr _%$tgt174458174472%_))
                     (_%hd174482%_ _%$hd174459174475%_)
                     (_%rest174484%_ _%$tl174460174478%_))
                (cons _%hd174482%_ (__AST->list _%rest174484%_)))
              (_%$E174456174469%_)))))
    (define __AST->datum
      (lambda (_%stx174445%_)
        (if (##structure-instance-of? _%stx174445%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx174445%_))
            (if (pair? _%stx174445%_)
                (cons (__AST->datum (##car _%stx174445%_))
                      (__AST->datum (##cdr _%stx174445%_)))
                (if (vector? _%stx174445%_)
                    (vector-map __AST->datum _%stx174445%_)
                    (if (box? _%stx174445%_)
                        (box (__AST->datum (unbox _%stx174445%_)))
                        _%stx174445%_))))))
    (define get-readenv
      (lambda (_%port174443%_)
        (##make-readenv
         _%port174443%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in174431%_)
        (let ((_%e174433%_ (##read-datum-or-eof (get-readenv _%in174431%_))))
          (if (eof-object? (__AST-e _%e174433%_))
              (__AST-e _%e174433%_)
              _%e174433%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in174439%_ (current-input-port)))
          (read-syntax__% _%in174439%_))))
    (define read-syntax
      (lambda _g175174_
        (let ((_g175175_ (##length _g175174_)))
          (cond ((##fx= _g175175_ 0) (apply read-syntax__0 _g175174_))
                ((##fx= _g175175_ 1) (apply read-syntax__% _g175174_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g175174_))))))
    (define read-syntax-from-file
      (lambda (_%path174426%_)
        (let ((_%r174428%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path174426%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r174428%_)
              (cdr (__AST-e (vector-ref _%r174428%_ '1)))
              (error (err-code->string _%r174428%_) _%path174426%_)))))
    (define __wrap-syntax
      (lambda (_%re174423%_ _%e174424%_)
        (if (eof-object? _%e174424%_)
            _%e174424%_
            (##structure AST::t _%e174424%_ (##readenv->locat _%re174423%_)))))
    (define __unwrap-syntax
      (lambda (_%re174420%_ _%e174421%_) (__AST-e _%e174421%_)))
    (define __pp-syntax
      (lambda (_%stx174418%_) (pp (__AST->datum _%stx174418%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt174416%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt174416%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt174416%_ '@list)
          (macro-readtable-brace-handler-set! _%rt174416%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt174416%_
           '#\!
           __read-sharp-bang)
          _%rt174416%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt174412%_ _%kw174413%_)
        (macro-readtable-bracket-handler-set! _%rt174412%_ _%kw174413%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt174409%_ _%kw174410%_)
        (macro-readtable-brace-handler-set! _%rt174409%_ _%kw174410%_)))
    (define __read-sharp-bang
      (lambda (_%re174400%_ _%next174401%_ _%start-pos174402%_)
        (if (eq? _%start-pos174402%_ '0)
            (let* ((_%line174404%_
                    (##read-line
                     (macro-readenv-port _%re174400%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line174406%_
                    (substring
                     _%line174404%_
                     '1
                     (string-length _%line174404%_))))
              (macro-readenv-script-line-set!
               _%re174400%_
               _%script-line174406%_)
              (##script-marker))
            (##read-sharp-bang
             _%re174400%_
             _%next174401%_
             _%start-pos174402%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj174398%_)
        (if (source-location? _%obj174398%_)
            (string? (##locat-container _%obj174398%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj174396%_)
        (if (##locat? _%obj174396%_)
            (##container->path (##locat-container _%obj174396%_))
            '#f)))))

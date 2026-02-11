(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1770752335)
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
      (lambda _%$args164170%_
        (apply make-instance SyntaxError::t _%$args164170%_)))
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
      (lambda (_%self163889%_ _%port163890%_)
        (let ((_%self163893%_ _%self163889%_))
          (letrec ((_%location163904%_
                    (lambda ()
                      (letrec ((_%from-irritants164045%_
                                (lambda ()
                                  (let _%lp164130%_ ((_%rest164132%_
                                                      (##unchecked-structure-ref
                                                       _%self163893%_
                                                       '3
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest164133164141%_
                                            _%rest164132%_)
                                           (_%else164135164149%_
                                            (lambda () '#f))
                                           (_%K164137164158%_
                                            (lambda (_%rest164152%_
                                                     _%hd164153%_)
                                              (let ((_%$e164155%_
                                                     (__AST-source
                                                      _%hd164153%_)))
                                                (if _%$e164155%_
                                                    _%$e164155%_
                                                    (_%lp164130%_
                                                     _%rest164152%_))))))
                                      (if (pair? _%rest164133164141%_)
                                          (let ((_%hd164138164161%_
                                                 (##car _%rest164133164141%_))
                                                (_%tl164139164163%_
                                                 (##cdr _%rest164133164141%_)))
                                            (let* ((_%hd164166%_
                                                    _%hd164138164161%_)
                                                   (_%rest164168%_
                                                    _%tl164139164163%_))
                                              (_%K164137164158%_
                                               _%rest164168%_
                                               _%hd164166%_)))
                                          (_%else164135164149%_))))))
                               (_%from-context164046%_
                                (lambda ()
                                  (let _%lp164052%_ ((_%rest164054%_
                                                      (##unchecked-structure-ref
                                                       _%self163893%_
                                                       '4
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest164055164063%_
                                            _%rest164054%_)
                                           (_%else164057164071%_
                                            (lambda () '#f))
                                           (_%K164059164117%_
                                            (lambda (_%rest164074%_
                                                     _%hd164075%_)
                                              (let* ((_%hd164076164086%_
                                                      _%hd164075%_)
                                                     (_%else164078164094%_
                                                      (lambda ()
                                                        (_%lp164052%_
                                                         _%rest164074%_)))
                                                     (_%K164080164102%_
                                                      (lambda (_%loc164097%_)
                                                        (let ((_%$e164099%_
                                                               (__AST-source
                                                                _%loc164097%_)))
                                                          (if _%$e164099%_
                                                              _%$e164099%_
                                                              (_%lp164052%_
                                                               _%rest164074%_))))))
                                                (if (pair? _%hd164076164086%_)
                                                    (let ((_%hd164081164105%_
                                                           (##car _%hd164076164086%_))
                                                          (_%tl164082164107%_
                                                           (##cdr _%hd164076164086%_)))
                                                      (if (##eq? _%hd164081164105%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '@)
                  (if (pair? _%tl164082164107%_)
                      (let ((_%hd164083164110%_ (##car _%tl164082164107%_))
                            (_%tl164084164112%_ (##cdr _%tl164082164107%_)))
                        (let ((_%loc164115%_ _%hd164083164110%_))
                          (if (null? _%tl164084164112%_)
                              (_%K164080164102%_ _%loc164115%_)
                              (_%else164078164094%_))))
                      (_%else164078164094%_))
                  (_%else164078164094%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else164078164094%_))))))
                                      (if (pair? _%rest164055164063%_)
                                          (let ((_%hd164060164120%_
                                                 (##car _%rest164055164063%_))
                                                (_%tl164061164122%_
                                                 (##cdr _%rest164055164063%_)))
                                            (let* ((_%hd164125%_
                                                    _%hd164060164120%_)
                                                   (_%rest164127%_
                                                    _%tl164061164122%_))
                                              (_%K164059164117%_
                                               _%rest164127%_
                                               _%hd164125%_)))
                                          (_%else164057164071%_)))))))
                        (let ((_%$e164048%_ (_%from-irritants164045%_)))
                          (if _%$e164048%_
                              _%$e164048%_
                              (_%from-context164046%_)))))))
            (call-with-parameters__1
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e163907%_ (_%location163904%_)))
                 (if _%$e163907%_
                     ((lambda (_%loc163910%_)
                        (##display-locat _%loc163910%_ '#t _%port163890%_))
                      _%$e163907%_)
                     (display '"?")))
               (newline)
               (displayln
                '"--- Syntax Error: "
                (##unchecked-structure-ref _%self163893%_ '2 '#f '#f))
               (let ((_%$e163913%_
                      (##unchecked-structure-ref _%self163893%_ '4 '#f '#f)))
                 (if _%$e163913%_
                     ((lambda (_%where163916%_)
                        (displayln '"--- Context: ")
                        (let _%lp163918%_ ((_%rest163920%_ _%where163916%_))
                          (let* ((_%rest163921163929%_ _%rest163920%_)
                                 (_%else163923163937%_ (lambda () '#!void))
                                 (_%K163925163987%_
                                  (lambda (_%rest163940%_ _%hd163941%_)
                                    (let* ((_%hd163942163952%_ _%hd163941%_)
                                           (_%else163944163960%_
                                            (lambda ()
                                              (displayln '" at " _%hd163941%_)
                                              (_%lp163918%_ _%rest163940%_)))
                                           (_%K163946163972%_
                                            (lambda (_%ctx163963%_)
                                              (let ((_%$e163965%_
                                                     (__AST-source
                                                      _%ctx163963%_)))
                                                (if _%$e163965%_
                                                    ((lambda (_%loc163968%_)
                                                       (display '" at ")
                                                       (##display-locat
                                                        _%loc163968%_
                                                        '#t
                                                        _%port163890%_)
                                                       (newline)
                                                       (_%lp163918%_
                                                        _%rest163940%_))
                                                     _%$e163965%_)
                                                    (if (##structure-instance-of?
                                                         _%ctx163963%_
                                                         'gerbil#AST::t)
                                                        (let ()
                                                          (display '" at ")
                                                          (__pp-syntax
                                                           _%ctx163963%_)
                                                          (_%lp163918%_
                                                           _%rest163940%_))
                                                        (_%lp163918%_
                                                         _%rest163940%_)))))))
                                      (if (pair? _%hd163942163952%_)
                                          (let ((_%hd163947163975%_
                                                 (##car _%hd163942163952%_))
                                                (_%tl163948163977%_
                                                 (##cdr _%hd163942163952%_)))
                                            (if (##eq? _%hd163947163975%_ '@)
                                                (if (pair? _%tl163948163977%_)
                                                    (let ((_%hd163949163980%_
                                                           (##car _%tl163948163977%_))
                                                          (_%tl163950163982%_
                                                           (##cdr _%tl163948163977%_)))
                                                      (let ((_%ctx163985%_
                                                             _%hd163949163980%_))
                                                        (if (null? _%tl163950163982%_)
                                                            (_%K163946163972%_
                                                             _%ctx163985%_)
                                                            (_%else163944163960%_))))
                                                    (_%else163944163960%_))
                                                (_%else163944163960%_)))
                                          (_%else163944163960%_))))))
                            (if (pair? _%rest163921163929%_)
                                (let ((_%hd163926163990%_
                                       (##car _%rest163921163929%_))
                                      (_%tl163927163992%_
                                       (##cdr _%rest163921163929%_)))
                                  (let* ((_%hd163995%_ _%hd163926163990%_)
                                         (_%rest163997%_ _%tl163927163992%_))
                                    (_%K163925163987%_
                                     _%rest163997%_
                                     _%hd163995%_)))
                                '#!void))))
                      _%$e163913%_)
                     '#!void))
               (let* ((_%self.irritants163998164006%_
                       (##unchecked-structure-ref _%self163893%_ '3 '#f '#f))
                      (_%else164000164014%_ (lambda () '#!void))
                      (_%K164002164027%_
                       (lambda (_%rest164017%_ _%stx164018%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx164018%_)
                         (for-each
                          (lambda (_%detail164020%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail164020%_))
                            (let ((_%$e164022%_
                                   (__AST-source _%detail164020%_)))
                              (if _%$e164022%_
                                  ((lambda (_%loc164025%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc164025%_
                                      '#t
                                      _%port163890%_))
                                   _%$e164022%_)
                                  '#!void))
                            (newline))
                          _%rest164017%_))))
                 (if (pair? _%self.irritants163998164006%_)
                     (let ((_%hd164003164030%_
                            (##car _%self.irritants163998164006%_))
                           (_%tl164004164032%_
                            (##cdr _%self.irritants163998164006%_)))
                       (let* ((_%stx164035%_ _%hd164003164030%_)
                              (_%rest164037%_ _%tl164004164032%_))
                         (_%K164002164027%_ _%rest164037%_ _%stx164035%_)))
                     '#!void))
               (if __DEBUG
                   (let ((_%cont164038164040%_
                          (##unchecked-structure-ref
                           _%self163893%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont164038164040%_
                         (let ((_%cont164042%_ _%cont164038164040%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont164042%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port163890%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (let* ((_%klass163752%_ SyntaxError::t) (_%klass163757%_ _%klass163752%_))
      (__seal-class! _%klass163757%_))
    (define make-syntax-error
      (lambda (_%message163745%_
               _%irritants163746%_
               _%where163747%_
               _%context163748%_
               _%marks163749%_
               _%phi163750%_)
        (let ((__obj164267
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj164267 _%message163745%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj164267
           _%irritants163746%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj164267 _%where163747%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj164267 _%context163748%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj164267 _%marks163749%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj164267 _%phi163750%_ '6 '#f '#f)
          __obj164267)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where163740%_
               _%message163741%_
               _%stx163742%_
               .
               _%details163743%_)
        (raise (make-syntax-error
                _%message163741%_
                (cons _%stx163742%_ _%details163743%_)
                _%where163740%_
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
      (lambda _%$args163737%_ (apply make-instance AST::t _%$args163737%_)))
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
      (lambda (_%stx163735%_)
        (if (##structure-instance-of? _%stx163735%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx163735%_ '1 '#f '#f)
            _%stx163735%_)))
    (define __AST-source
      (lambda (_%stx163726%_)
        (let _%lp163728%_ ((_%src163730%_ _%stx163726%_))
          (if (##structure-instance-of? _%src163730%_ 'gerbil#AST::t)
              (_%lp163728%_
               (##unchecked-structure-ref _%src163730%_ '2 '#f '#f))
              (if (##locat? _%src163730%_) _%src163730%_ '#f)))))
    (define __AST
      (lambda (_%e163718%_ _%src-stx163719%_)
        (let ((_%src163721%_ (__AST-source _%src-stx163719%_)))
          (if (or (##structure-instance-of? _%e163718%_ 'gerbil#AST::t)
                  (not _%src163721%_))
              _%e163718%_
              (##structure AST::t _%e163718%_ _%src163721%_)))))
    (define __AST-eq?
      (lambda (_%stx163715%_ _%obj163716%_)
        (eq? (__AST-e _%stx163715%_) _%obj163716%_)))
    (define __AST-pair?
      (lambda (_%stx163713%_) (pair? (__AST-e _%stx163713%_))))
    (define __AST-null?
      (lambda (_%stx163711%_) (null? (__AST-e _%stx163711%_))))
    (define __AST-datum?
      (lambda (_%stx163692%_)
        (let* ((_%e163694%_ (__AST-e _%stx163692%_))
               (_%$e163696%_ (number? _%e163694%_)))
          (if _%$e163696%_
              _%$e163696%_
              (let ((_%$e163699%_ (string? _%e163694%_)))
                (if _%$e163699%_
                    _%$e163699%_
                    (let ((_%$e163702%_ (char? _%e163694%_)))
                      (if _%$e163702%_
                          _%$e163702%_
                          (let ((_%$e163705%_ (keyword? _%e163694%_)))
                            (if _%$e163705%_
                                _%$e163705%_
                                (let ((_%$e163708%_ (boolean? _%e163694%_)))
                                  (if _%$e163708%_
                                      _%$e163708%_
                                      (eq? _%e163694%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx163690%_) (symbol? (__AST-e _%stx163690%_))))
    (define __AST-id-list?__%
      (lambda (_%stx163641%_ _%tail?163642%_)
        (let _%lp163644%_ ((_%rest163646%_ _%stx163641%_))
          (let* ((_%$e163648%_ _%rest163646%_)
                 (_%$E163650163663%_
                  (lambda ()
                    (let* ((_%$E163651163658%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e163648%_)))
                           (_%rest163661%_ _%$e163648%_))
                      (_%tail?163642%_ _%rest163661%_)))))
            (if (__AST-pair? _%$e163648%_)
                (let* ((_%$tgt163652163666%_ (__AST-e _%$e163648%_))
                       (_%$hd163653163669%_ (##car _%$tgt163652163666%_))
                       (_%$tl163654163672%_ (##cdr _%$tgt163652163666%_))
                       (_%hd163676%_ _%$hd163653163669%_)
                       (_%rest163678%_ _%$tl163654163672%_))
                  (if (__AST-id? _%hd163676%_)
                      (_%lp163644%_ _%rest163678%_)
                      '#f))
                (_%$E163650163663%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx163683%_)
        (let ((_%tail?163685%_ __AST-null?))
          (__AST-id-list?__% _%stx163683%_ _%tail?163685%_))))
    (define __AST-id-list?
      (lambda _g164269_
        (let ((_g164270_ (##length _g164269_)))
          (cond ((##fx= _g164270_ 1) (apply __AST-id-list?__0 _g164269_))
                ((##fx= _g164270_ 2) (apply __AST-id-list?__% _g164269_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g164269_))))))
    (define __AST-bind-list?
      (lambda (_%stx163633%_)
        (__AST-id-list?__%
         _%stx163633%_
         (lambda (_%e163635%_)
           (let ((_%$e163637%_ (__AST-null? _%e163635%_)))
             (if _%$e163637%_ _%$e163637%_ (__AST-id? _%e163635%_)))))))
    (define __AST-list?__%
      (lambda (_%stx163586%_ _%tail?163587%_)
        (let _%lp163589%_ ((_%rest163591%_ _%stx163586%_))
          (let* ((_%$e163593%_ _%rest163591%_)
                 (_%$E163595163608%_
                  (lambda ()
                    (let* ((_%$E163596163603%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e163593%_)))
                           (_%rest163606%_ _%$e163593%_))
                      (_%tail?163587%_ _%rest163606%_)))))
            (if (__AST-pair? _%$e163593%_)
                (let* ((_%$tgt163597163611%_ (__AST-e _%$e163593%_))
                       (_%$hd163598163614%_ (##car _%$tgt163597163611%_))
                       (_%$tl163599163617%_ (##cdr _%$tgt163597163611%_))
                       (_%rest163621%_ _%$tl163599163617%_))
                  (_%lp163589%_ _%rest163621%_))
                (_%$E163595163608%_))))))
    (define __AST-list?__0
      (lambda (_%stx163626%_)
        (let ((_%tail?163628%_ __AST-null?))
          (__AST-list?__% _%stx163626%_ _%tail?163628%_))))
    (define __AST-list?
      (lambda _g164271_
        (let ((_g164272_ (##length _g164271_)))
          (cond ((##fx= _g164272_ 1) (apply __AST-list?__0 _g164271_))
                ((##fx= _g164272_ 2) (apply __AST-list?__% _g164271_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g164271_))))))
    (define __AST->list
      (lambda (_%stx163551%_)
        (let* ((_%$e163553%_ _%stx163551%_)
               (_%$E163555163568%_
                (lambda ()
                  (let* ((_%$E163556163563%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e163553%_)))
                         (_%rest163566%_ _%$e163553%_))
                    (__AST-e _%rest163566%_)))))
          (if (__AST-pair? _%$e163553%_)
              (let* ((_%$tgt163557163571%_ (__AST-e _%$e163553%_))
                     (_%$hd163558163574%_ (##car _%$tgt163557163571%_))
                     (_%$tl163559163577%_ (##cdr _%$tgt163557163571%_))
                     (_%hd163581%_ _%$hd163558163574%_)
                     (_%rest163583%_ _%$tl163559163577%_))
                (cons _%hd163581%_ (__AST->list _%rest163583%_)))
              (_%$E163555163568%_)))))
    (define __AST->datum
      (lambda (_%stx163544%_)
        (if (##structure-instance-of? _%stx163544%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx163544%_))
            (if (pair? _%stx163544%_)
                (cons (__AST->datum (##car _%stx163544%_))
                      (__AST->datum (##cdr _%stx163544%_)))
                (if (vector? _%stx163544%_)
                    (vector-map __AST->datum _%stx163544%_)
                    (if (box? _%stx163544%_)
                        (box (__AST->datum (unbox _%stx163544%_)))
                        _%stx163544%_))))))
    (define get-readenv
      (lambda (_%port163542%_)
        (##make-readenv
         _%port163542%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in163530%_)
        (let ((_%e163532%_ (##read-datum-or-eof (get-readenv _%in163530%_))))
          (if (eof-object? (__AST-e _%e163532%_))
              (__AST-e _%e163532%_)
              _%e163532%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in163538%_ (current-input-port)))
          (read-syntax__% _%in163538%_))))
    (define read-syntax
      (lambda _g164273_
        (let ((_g164274_ (##length _g164273_)))
          (cond ((##fx= _g164274_ 0) (apply read-syntax__0 _g164273_))
                ((##fx= _g164274_ 1) (apply read-syntax__% _g164273_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g164273_))))))
    (define read-syntax-from-file
      (lambda (_%path163525%_)
        (let ((_%r163527%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path163525%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r163527%_)
              (cdr (__AST-e (vector-ref _%r163527%_ '1)))
              (error (err-code->string _%r163527%_) _%path163525%_)))))
    (define __wrap-syntax
      (lambda (_%re163522%_ _%e163523%_)
        (if (eof-object? _%e163523%_)
            _%e163523%_
            (##structure AST::t _%e163523%_ (##readenv->locat _%re163522%_)))))
    (define __unwrap-syntax
      (lambda (_%re163519%_ _%e163520%_) (__AST-e _%e163520%_)))
    (define __pp-syntax
      (lambda (_%stx163517%_) (pp (__AST->datum _%stx163517%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt163515%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt163515%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt163515%_ '@list)
          (macro-readtable-brace-handler-set! _%rt163515%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt163515%_
           '#\!
           __read-sharp-bang)
          _%rt163515%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt163511%_ _%kw163512%_)
        (macro-readtable-bracket-handler-set! _%rt163511%_ _%kw163512%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt163508%_ _%kw163509%_)
        (macro-readtable-brace-handler-set! _%rt163508%_ _%kw163509%_)))
    (define __read-sharp-bang
      (lambda (_%re163499%_ _%next163500%_ _%start-pos163501%_)
        (if (eq? _%start-pos163501%_ '0)
            (let* ((_%line163503%_
                    (##read-line
                     (macro-readenv-port _%re163499%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line163505%_
                    (substring
                     _%line163503%_
                     '1
                     (string-length _%line163503%_))))
              (macro-readenv-script-line-set!
               _%re163499%_
               _%script-line163505%_)
              (##script-marker))
            (##read-sharp-bang
             _%re163499%_
             _%next163500%_
             _%start-pos163501%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj163497%_)
        (if (source-location? _%obj163497%_)
            (string? (##locat-container _%obj163497%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj163495%_)
        (if (##locat? _%obj163495%_)
            (##container->path (##locat-container _%obj163495%_))
            '#f)))))

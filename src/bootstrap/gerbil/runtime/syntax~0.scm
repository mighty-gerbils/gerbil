(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1768865822)
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
      (lambda _%$args124184%_
        (apply make-instance SyntaxError::t _%$args124184%_)))
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
      (lambda (_%self123902%_ _%port123903%_)
        (let ((_%self123906%_ _%self123902%_))
          (letrec ((_%location123917%_
                    (lambda ()
                      (letrec ((_%from-irritants124059%_
                                (lambda ()
                                  (let _%lp124144%_ ((_%rest124146%_
                                                      (##unchecked-structure-ref
                                                       _%self123906%_
                                                       '3
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest124147124155%_
                                            _%rest124146%_)
                                           (_%else124149124163%_
                                            (lambda () '#f))
                                           (_%K124151124172%_
                                            (lambda (_%rest124166%_
                                                     _%hd124167%_)
                                              (let ((_%$e124169%_
                                                     (__AST-source
                                                      _%hd124167%_)))
                                                (if _%$e124169%_
                                                    _%$e124169%_
                                                    (_%lp124144%_
                                                     _%rest124166%_))))))
                                      (if (pair? _%rest124147124155%_)
                                          (let ((_%hd124152124175%_
                                                 (##car _%rest124147124155%_))
                                                (_%tl124153124177%_
                                                 (##cdr _%rest124147124155%_)))
                                            (let* ((_%hd124180%_
                                                    _%hd124152124175%_)
                                                   (_%rest124182%_
                                                    _%tl124153124177%_))
                                              (_%K124151124172%_
                                               _%rest124182%_
                                               _%hd124180%_)))
                                          (_%else124149124163%_))))))
                               (_%from-context124060%_
                                (lambda ()
                                  (let _%lp124066%_ ((_%rest124068%_
                                                      (##unchecked-structure-ref
                                                       _%self123906%_
                                                       '4
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest124069124077%_
                                            _%rest124068%_)
                                           (_%else124071124085%_
                                            (lambda () '#f))
                                           (_%K124073124131%_
                                            (lambda (_%rest124088%_
                                                     _%hd124089%_)
                                              (let* ((_%hd124090124100%_
                                                      _%hd124089%_)
                                                     (_%else124092124108%_
                                                      (lambda ()
                                                        (_%lp124066%_
                                                         _%rest124088%_)))
                                                     (_%K124094124116%_
                                                      (lambda (_%loc124111%_)
                                                        (let ((_%$e124113%_
                                                               (__AST-source
                                                                _%loc124111%_)))
                                                          (if _%$e124113%_
                                                              _%$e124113%_
                                                              (_%lp124066%_
                                                               _%rest124088%_))))))
                                                (if (pair? _%hd124090124100%_)
                                                    (let ((_%hd124095124119%_
                                                           (##car _%hd124090124100%_))
                                                          (_%tl124096124121%_
                                                           (##cdr _%hd124090124100%_)))
                                                      (if (##eq? _%hd124095124119%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '@)
                  (if (pair? _%tl124096124121%_)
                      (let ((_%hd124097124124%_ (##car _%tl124096124121%_))
                            (_%tl124098124126%_ (##cdr _%tl124096124121%_)))
                        (let ((_%loc124129%_ _%hd124097124124%_))
                          (if (null? _%tl124098124126%_)
                              (_%K124094124116%_ _%loc124129%_)
                              (_%else124092124108%_))))
                      (_%else124092124108%_))
                  (_%else124092124108%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else124092124108%_))))))
                                      (if (pair? _%rest124069124077%_)
                                          (let ((_%hd124074124134%_
                                                 (##car _%rest124069124077%_))
                                                (_%tl124075124136%_
                                                 (##cdr _%rest124069124077%_)))
                                            (let* ((_%hd124139%_
                                                    _%hd124074124134%_)
                                                   (_%rest124141%_
                                                    _%tl124075124136%_))
                                              (_%K124073124131%_
                                               _%rest124141%_
                                               _%hd124139%_)))
                                          (_%else124071124085%_)))))))
                        (let ((_%$e124062%_ (_%from-irritants124059%_)))
                          (if _%$e124062%_
                              _%$e124062%_
                              (_%from-context124060%_)))))))
            (call-with-parameters__1
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e123920%_ (_%location123917%_)))
                 (if _%$e123920%_
                     ((lambda (_%loc123923%_)
                        (##display-locat _%loc123923%_ '#t _%port123903%_))
                      _%$e123920%_)
                     (display '"?")))
               (newline)
               (displayln
                '"--- Syntax Error: "
                (##unchecked-structure-ref _%self123906%_ '2 '#f '#f))
               (let ((_%$e123926%_
                      (##unchecked-structure-ref _%self123906%_ '4 '#f '#f)))
                 (if _%$e123926%_
                     ((lambda (_%where123929%_)
                        (displayln '"--- Context: ")
                        (let _%lp123931%_ ((_%rest123933%_ _%where123929%_))
                          (let* ((_%rest123934123942%_ _%rest123933%_)
                                 (_%else123936123950%_ (lambda () '#!void))
                                 (_%K123938124000%_
                                  (lambda (_%rest123953%_ _%hd123954%_)
                                    (let* ((_%hd123955123965%_ _%hd123954%_)
                                           (_%else123957123973%_
                                            (lambda ()
                                              (displayln '" at " _%hd123954%_)
                                              (_%lp123931%_ _%rest123953%_)))
                                           (_%K123959123985%_
                                            (lambda (_%ctx123976%_)
                                              (let ((_%$e123978%_
                                                     (__AST-source
                                                      _%ctx123976%_)))
                                                (if _%$e123978%_
                                                    ((lambda (_%loc123981%_)
                                                       (display '" at ")
                                                       (##display-locat
                                                        _%loc123981%_
                                                        '#t
                                                        _%port123903%_)
                                                       (newline)
                                                       (_%lp123931%_
                                                        _%rest123953%_))
                                                     _%$e123978%_)
                                                    (if (##structure-instance-of?
                                                         _%ctx123976%_
                                                         'gerbil#AST::t)
                                                        (let ()
                                                          (display '" at ")
                                                          (__pp-syntax
                                                           _%ctx123976%_)
                                                          (_%lp123931%_
                                                           _%rest123953%_))
                                                        (_%lp123931%_
                                                         _%rest123953%_)))))))
                                      (if (pair? _%hd123955123965%_)
                                          (let ((_%hd123960123988%_
                                                 (##car _%hd123955123965%_))
                                                (_%tl123961123990%_
                                                 (##cdr _%hd123955123965%_)))
                                            (if (##eq? _%hd123960123988%_ '@)
                                                (if (pair? _%tl123961123990%_)
                                                    (let ((_%hd123962123993%_
                                                           (##car _%tl123961123990%_))
                                                          (_%tl123963123995%_
                                                           (##cdr _%tl123961123990%_)))
                                                      (let ((_%ctx123998%_
                                                             _%hd123962123993%_))
                                                        (if (null? _%tl123963123995%_)
                                                            (_%K123959123985%_
                                                             _%ctx123998%_)
                                                            (_%else123957123973%_))))
                                                    (_%else123957123973%_))
                                                (_%else123957123973%_)))
                                          (_%else123957123973%_))))))
                            (if (pair? _%rest123934123942%_)
                                (let ((_%hd123939124003%_
                                       (##car _%rest123934123942%_))
                                      (_%tl123940124005%_
                                       (##cdr _%rest123934123942%_)))
                                  (let* ((_%hd124008%_ _%hd123939124003%_)
                                         (_%rest124010%_ _%tl123940124005%_))
                                    (_%K123938124000%_
                                     _%rest124010%_
                                     _%hd124008%_)))
                                '#!void))))
                      _%$e123926%_)
                     '#!void))
               (let* ((_%self.irritants124011124019%_
                       (##unchecked-structure-ref _%self123906%_ '3 '#f '#f))
                      (_%else124013124027%_ (lambda () '#!void))
                      (_%K124015124040%_
                       (lambda (_%rest124030%_ _%stx124031%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx124031%_)
                         (for-each
                          (lambda (_%detail124033%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail124033%_))
                            (let ((_%$e124035%_
                                   (__AST-source _%detail124033%_)))
                              (if _%$e124035%_
                                  ((lambda (_%loc124038%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc124038%_
                                      '#t
                                      _%port123903%_))
                                   _%$e124035%_)
                                  '#!void))
                            (newline))
                          _%rest124030%_))))
                 (if (pair? _%self.irritants124011124019%_)
                     (let ((_%hd124016124043%_
                            (##car _%self.irritants124011124019%_))
                           (_%tl124017124045%_
                            (##cdr _%self.irritants124011124019%_)))
                       (let* ((_%stx124048%_ _%hd124016124043%_)
                              (_%rest124050%_ _%tl124017124045%_))
                         (_%K124015124040%_ _%rest124050%_ _%stx124048%_)))
                     '#!void))
               (if __DEBUG
                   (let ((_%cont124051124053%_
                          (##unchecked-structure-ref
                           _%self123906%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont124051124053%_
                         (let ((_%cont124056%_ _%cont124051124053%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont124056%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port123903%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message123773%_
               _%irritants123774%_
               _%where123775%_
               _%context123776%_
               _%marks123777%_
               _%phi123778%_)
        (let ((__obj124281
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj124281 _%message123773%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj124281
           _%irritants123774%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj124281 _%where123775%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj124281 _%context123776%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj124281 _%marks123777%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj124281 _%phi123778%_ '6 '#f '#f)
          __obj124281)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where123768%_
               _%message123769%_
               _%stx123770%_
               .
               _%details123771%_)
        (raise (make-syntax-error
                _%message123769%_
                (cons _%stx123770%_ _%details123771%_)
                _%where123768%_
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
      (lambda _%$args123765%_ (apply make-instance AST::t _%$args123765%_)))
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
      (lambda (_%stx123763%_)
        (if (##structure-instance-of? _%stx123763%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx123763%_ '1 '#f '#f)
            _%stx123763%_)))
    (define __AST-source
      (lambda (_%stx123754%_)
        (let _%lp123756%_ ((_%src123758%_ _%stx123754%_))
          (if (##structure-instance-of? _%src123758%_ 'gerbil#AST::t)
              (_%lp123756%_
               (##unchecked-structure-ref _%src123758%_ '2 '#f '#f))
              (if (##locat? _%src123758%_) _%src123758%_ '#f)))))
    (define __AST
      (lambda (_%e123746%_ _%src-stx123747%_)
        (let ((_%src123749%_ (__AST-source _%src-stx123747%_)))
          (if (or (##structure-instance-of? _%e123746%_ 'gerbil#AST::t)
                  (not _%src123749%_))
              _%e123746%_
              (##structure AST::t _%e123746%_ _%src123749%_)))))
    (define __AST-eq?
      (lambda (_%stx123743%_ _%obj123744%_)
        (eq? (__AST-e _%stx123743%_) _%obj123744%_)))
    (define __AST-pair?
      (lambda (_%stx123741%_) (pair? (__AST-e _%stx123741%_))))
    (define __AST-null?
      (lambda (_%stx123739%_) (null? (__AST-e _%stx123739%_))))
    (define __AST-datum?
      (lambda (_%stx123720%_)
        (let* ((_%e123722%_ (__AST-e _%stx123720%_))
               (_%$e123724%_ (number? _%e123722%_)))
          (if _%$e123724%_
              _%$e123724%_
              (let ((_%$e123727%_ (string? _%e123722%_)))
                (if _%$e123727%_
                    _%$e123727%_
                    (let ((_%$e123730%_ (char? _%e123722%_)))
                      (if _%$e123730%_
                          _%$e123730%_
                          (let ((_%$e123733%_ (keyword? _%e123722%_)))
                            (if _%$e123733%_
                                _%$e123733%_
                                (let ((_%$e123736%_ (boolean? _%e123722%_)))
                                  (if _%$e123736%_
                                      _%$e123736%_
                                      (eq? _%e123722%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx123718%_) (symbol? (__AST-e _%stx123718%_))))
    (define __AST-id-list?__%
      (lambda (_%stx123669%_ _%tail?123670%_)
        (let _%lp123672%_ ((_%rest123674%_ _%stx123669%_))
          (let* ((_%$e123676%_ _%rest123674%_)
                 (_%$E123678123691%_
                  (lambda ()
                    (let* ((_%$E123679123686%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e123676%_)))
                           (_%rest123689%_ _%$e123676%_))
                      (_%tail?123670%_ _%rest123689%_)))))
            (if (__AST-pair? _%$e123676%_)
                (let* ((_%$tgt123680123694%_ (__AST-e _%$e123676%_))
                       (_%$hd123681123697%_ (##car _%$tgt123680123694%_))
                       (_%$tl123682123700%_ (##cdr _%$tgt123680123694%_))
                       (_%hd123704%_ _%$hd123681123697%_)
                       (_%rest123706%_ _%$tl123682123700%_))
                  (if (__AST-id? _%hd123704%_)
                      (_%lp123672%_ _%rest123706%_)
                      '#f))
                (_%$E123678123691%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx123711%_)
        (let ((_%tail?123713%_ __AST-null?))
          (__AST-id-list?__% _%stx123711%_ _%tail?123713%_))))
    (define __AST-id-list?
      (lambda _g124283_
        (let ((_g124284_ (##length _g124283_)))
          (cond ((##fx= _g124284_ 1) (apply __AST-id-list?__0 _g124283_))
                ((##fx= _g124284_ 2) (apply __AST-id-list?__% _g124283_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g124283_))))))
    (define __AST-bind-list?
      (lambda (_%stx123661%_)
        (__AST-id-list?__%
         _%stx123661%_
         (lambda (_%e123663%_)
           (let ((_%$e123665%_ (__AST-null? _%e123663%_)))
             (if _%$e123665%_ _%$e123665%_ (__AST-id? _%e123663%_)))))))
    (define __AST-list?__%
      (lambda (_%stx123614%_ _%tail?123615%_)
        (let _%lp123617%_ ((_%rest123619%_ _%stx123614%_))
          (let* ((_%$e123621%_ _%rest123619%_)
                 (_%$E123623123636%_
                  (lambda ()
                    (let* ((_%$E123624123631%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e123621%_)))
                           (_%rest123634%_ _%$e123621%_))
                      (_%tail?123615%_ _%rest123634%_)))))
            (if (__AST-pair? _%$e123621%_)
                (let* ((_%$tgt123625123639%_ (__AST-e _%$e123621%_))
                       (_%$hd123626123642%_ (##car _%$tgt123625123639%_))
                       (_%$tl123627123645%_ (##cdr _%$tgt123625123639%_))
                       (_%rest123649%_ _%$tl123627123645%_))
                  (_%lp123617%_ _%rest123649%_))
                (_%$E123623123636%_))))))
    (define __AST-list?__0
      (lambda (_%stx123654%_)
        (let ((_%tail?123656%_ __AST-null?))
          (__AST-list?__% _%stx123654%_ _%tail?123656%_))))
    (define __AST-list?
      (lambda _g124285_
        (let ((_g124286_ (##length _g124285_)))
          (cond ((##fx= _g124286_ 1) (apply __AST-list?__0 _g124285_))
                ((##fx= _g124286_ 2) (apply __AST-list?__% _g124285_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g124285_))))))
    (define __AST->list
      (lambda (_%stx123579%_)
        (let* ((_%$e123581%_ _%stx123579%_)
               (_%$E123583123596%_
                (lambda ()
                  (let* ((_%$E123584123591%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e123581%_)))
                         (_%rest123594%_ _%$e123581%_))
                    (__AST-e _%rest123594%_)))))
          (if (__AST-pair? _%$e123581%_)
              (let* ((_%$tgt123585123599%_ (__AST-e _%$e123581%_))
                     (_%$hd123586123602%_ (##car _%$tgt123585123599%_))
                     (_%$tl123587123605%_ (##cdr _%$tgt123585123599%_))
                     (_%hd123609%_ _%$hd123586123602%_)
                     (_%rest123611%_ _%$tl123587123605%_))
                (cons _%hd123609%_ (__AST->list _%rest123611%_)))
              (_%$E123583123596%_)))))
    (define __AST->datum
      (lambda (_%stx123572%_)
        (if (##structure-instance-of? _%stx123572%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx123572%_))
            (if (pair? _%stx123572%_)
                (cons (__AST->datum (##car _%stx123572%_))
                      (__AST->datum (##cdr _%stx123572%_)))
                (if (vector? _%stx123572%_)
                    (vector-map __AST->datum _%stx123572%_)
                    (if (box? _%stx123572%_)
                        (box (__AST->datum (unbox _%stx123572%_)))
                        _%stx123572%_))))))
    (define get-readenv
      (lambda (_%port123570%_)
        (##make-readenv
         _%port123570%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in123558%_)
        (let ((_%e123560%_ (##read-datum-or-eof (get-readenv _%in123558%_))))
          (if (eof-object? (__AST-e _%e123560%_))
              (__AST-e _%e123560%_)
              _%e123560%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in123566%_ (current-input-port)))
          (read-syntax__% _%in123566%_))))
    (define read-syntax
      (lambda _g124287_
        (let ((_g124288_ (##length _g124287_)))
          (cond ((##fx= _g124288_ 0) (apply read-syntax__0 _g124287_))
                ((##fx= _g124288_ 1) (apply read-syntax__% _g124287_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g124287_))))))
    (define read-syntax-from-file
      (lambda (_%path123553%_)
        (let ((_%r123555%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path123553%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r123555%_)
              (cdr (__AST-e (vector-ref _%r123555%_ '1)))
              (error (err-code->string _%r123555%_) _%path123553%_)))))
    (define __wrap-syntax
      (lambda (_%re123550%_ _%e123551%_)
        (if (eof-object? _%e123551%_)
            _%e123551%_
            (##structure AST::t _%e123551%_ (##readenv->locat _%re123550%_)))))
    (define __unwrap-syntax
      (lambda (_%re123547%_ _%e123548%_) (__AST-e _%e123548%_)))
    (define __pp-syntax
      (lambda (_%stx123545%_) (pp (__AST->datum _%stx123545%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt123543%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt123543%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt123543%_ '@list)
          (macro-readtable-brace-handler-set! _%rt123543%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt123543%_
           '#\!
           __read-sharp-bang)
          _%rt123543%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt123539%_ _%kw123540%_)
        (macro-readtable-bracket-handler-set! _%rt123539%_ _%kw123540%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt123536%_ _%kw123537%_)
        (macro-readtable-brace-handler-set! _%rt123536%_ _%kw123537%_)))
    (define __read-sharp-bang
      (lambda (_%re123527%_ _%next123528%_ _%start-pos123529%_)
        (if (eq? _%start-pos123529%_ '0)
            (let* ((_%line123531%_
                    (##read-line
                     (macro-readenv-port _%re123527%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line123533%_
                    (substring
                     _%line123531%_
                     '1
                     (string-length _%line123531%_))))
              (macro-readenv-script-line-set!
               _%re123527%_
               _%script-line123533%_)
              (##script-marker))
            (##read-sharp-bang
             _%re123527%_
             _%next123528%_
             _%start-pos123529%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj123525%_)
        (if (source-location? _%obj123525%_)
            (string? (##locat-container _%obj123525%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj123523%_)
        (if (##locat? _%obj123523%_)
            (##container->path (##locat-container _%obj123523%_))
            '#f)))))

(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1769384628)
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
      (lambda _%$args124649%_
        (apply make-instance SyntaxError::t _%$args124649%_)))
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
      (lambda (_%self124368%_ _%port124369%_)
        (let ((_%self124372%_ _%self124368%_))
          (letrec ((_%location124383%_
                    (lambda ()
                      (letrec ((_%from-irritants124524%_
                                (lambda ()
                                  (let _%lp124609%_ ((_%rest124611%_
                                                      (##unchecked-structure-ref
                                                       _%self124372%_
                                                       '3
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest124612124620%_
                                            _%rest124611%_)
                                           (_%else124614124628%_
                                            (lambda () '#f))
                                           (_%K124616124637%_
                                            (lambda (_%rest124631%_
                                                     _%hd124632%_)
                                              (let ((_%$e124634%_
                                                     (__AST-source
                                                      _%hd124632%_)))
                                                (if _%$e124634%_
                                                    _%$e124634%_
                                                    (_%lp124609%_
                                                     _%rest124631%_))))))
                                      (if (pair? _%rest124612124620%_)
                                          (let ((_%hd124617124640%_
                                                 (##car _%rest124612124620%_))
                                                (_%tl124618124642%_
                                                 (##cdr _%rest124612124620%_)))
                                            (let* ((_%hd124645%_
                                                    _%hd124617124640%_)
                                                   (_%rest124647%_
                                                    _%tl124618124642%_))
                                              (_%K124616124637%_
                                               _%rest124647%_
                                               _%hd124645%_)))
                                          (_%else124614124628%_))))))
                               (_%from-context124525%_
                                (lambda ()
                                  (let _%lp124531%_ ((_%rest124533%_
                                                      (##unchecked-structure-ref
                                                       _%self124372%_
                                                       '4
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest124534124542%_
                                            _%rest124533%_)
                                           (_%else124536124550%_
                                            (lambda () '#f))
                                           (_%K124538124596%_
                                            (lambda (_%rest124553%_
                                                     _%hd124554%_)
                                              (let* ((_%hd124555124565%_
                                                      _%hd124554%_)
                                                     (_%else124557124573%_
                                                      (lambda ()
                                                        (_%lp124531%_
                                                         _%rest124553%_)))
                                                     (_%K124559124581%_
                                                      (lambda (_%loc124576%_)
                                                        (let ((_%$e124578%_
                                                               (__AST-source
                                                                _%loc124576%_)))
                                                          (if _%$e124578%_
                                                              _%$e124578%_
                                                              (_%lp124531%_
                                                               _%rest124553%_))))))
                                                (if (pair? _%hd124555124565%_)
                                                    (let ((_%hd124560124584%_
                                                           (##car _%hd124555124565%_))
                                                          (_%tl124561124586%_
                                                           (##cdr _%hd124555124565%_)))
                                                      (if (##eq? _%hd124560124584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '@)
                  (if (pair? _%tl124561124586%_)
                      (let ((_%hd124562124589%_ (##car _%tl124561124586%_))
                            (_%tl124563124591%_ (##cdr _%tl124561124586%_)))
                        (let ((_%loc124594%_ _%hd124562124589%_))
                          (if (null? _%tl124563124591%_)
                              (_%K124559124581%_ _%loc124594%_)
                              (_%else124557124573%_))))
                      (_%else124557124573%_))
                  (_%else124557124573%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else124557124573%_))))))
                                      (if (pair? _%rest124534124542%_)
                                          (let ((_%hd124539124599%_
                                                 (##car _%rest124534124542%_))
                                                (_%tl124540124601%_
                                                 (##cdr _%rest124534124542%_)))
                                            (let* ((_%hd124604%_
                                                    _%hd124539124599%_)
                                                   (_%rest124606%_
                                                    _%tl124540124601%_))
                                              (_%K124538124596%_
                                               _%rest124606%_
                                               _%hd124604%_)))
                                          (_%else124536124550%_)))))))
                        (let ((_%$e124527%_ (_%from-irritants124524%_)))
                          (if _%$e124527%_
                              _%$e124527%_
                              (_%from-context124525%_)))))))
            (call-with-parameters__1
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e124386%_ (_%location124383%_)))
                 (if _%$e124386%_
                     ((lambda (_%loc124389%_)
                        (##display-locat _%loc124389%_ '#t _%port124369%_))
                      _%$e124386%_)
                     (display '"?")))
               (newline)
               (displayln
                '"--- Syntax Error: "
                (##unchecked-structure-ref _%self124372%_ '2 '#f '#f))
               (let ((_%$e124392%_
                      (##unchecked-structure-ref _%self124372%_ '4 '#f '#f)))
                 (if _%$e124392%_
                     ((lambda (_%where124395%_)
                        (displayln '"--- Context: ")
                        (let _%lp124397%_ ((_%rest124399%_ _%where124395%_))
                          (let* ((_%rest124400124408%_ _%rest124399%_)
                                 (_%else124402124416%_ (lambda () '#!void))
                                 (_%K124404124466%_
                                  (lambda (_%rest124419%_ _%hd124420%_)
                                    (let* ((_%hd124421124431%_ _%hd124420%_)
                                           (_%else124423124439%_
                                            (lambda ()
                                              (displayln '" at " _%hd124420%_)
                                              (_%lp124397%_ _%rest124419%_)))
                                           (_%K124425124451%_
                                            (lambda (_%ctx124442%_)
                                              (let ((_%$e124444%_
                                                     (__AST-source
                                                      _%ctx124442%_)))
                                                (if _%$e124444%_
                                                    ((lambda (_%loc124447%_)
                                                       (display '" at ")
                                                       (##display-locat
                                                        _%loc124447%_
                                                        '#t
                                                        _%port124369%_)
                                                       (newline)
                                                       (_%lp124397%_
                                                        _%rest124419%_))
                                                     _%$e124444%_)
                                                    (if (##structure-instance-of?
                                                         _%ctx124442%_
                                                         'gerbil#AST::t)
                                                        (let ()
                                                          (display '" at ")
                                                          (__pp-syntax
                                                           _%ctx124442%_)
                                                          (_%lp124397%_
                                                           _%rest124419%_))
                                                        (_%lp124397%_
                                                         _%rest124419%_)))))))
                                      (if (pair? _%hd124421124431%_)
                                          (let ((_%hd124426124454%_
                                                 (##car _%hd124421124431%_))
                                                (_%tl124427124456%_
                                                 (##cdr _%hd124421124431%_)))
                                            (if (##eq? _%hd124426124454%_ '@)
                                                (if (pair? _%tl124427124456%_)
                                                    (let ((_%hd124428124459%_
                                                           (##car _%tl124427124456%_))
                                                          (_%tl124429124461%_
                                                           (##cdr _%tl124427124456%_)))
                                                      (let ((_%ctx124464%_
                                                             _%hd124428124459%_))
                                                        (if (null? _%tl124429124461%_)
                                                            (_%K124425124451%_
                                                             _%ctx124464%_)
                                                            (_%else124423124439%_))))
                                                    (_%else124423124439%_))
                                                (_%else124423124439%_)))
                                          (_%else124423124439%_))))))
                            (if (pair? _%rest124400124408%_)
                                (let ((_%hd124405124469%_
                                       (##car _%rest124400124408%_))
                                      (_%tl124406124471%_
                                       (##cdr _%rest124400124408%_)))
                                  (let* ((_%hd124474%_ _%hd124405124469%_)
                                         (_%rest124476%_ _%tl124406124471%_))
                                    (_%K124404124466%_
                                     _%rest124476%_
                                     _%hd124474%_)))
                                '#!void))))
                      _%$e124392%_)
                     '#!void))
               (let* ((_%self.irritants124477124485%_
                       (##unchecked-structure-ref _%self124372%_ '3 '#f '#f))
                      (_%else124479124493%_ (lambda () '#!void))
                      (_%K124481124506%_
                       (lambda (_%rest124496%_ _%stx124497%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx124497%_)
                         (for-each
                          (lambda (_%detail124499%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail124499%_))
                            (let ((_%$e124501%_
                                   (__AST-source _%detail124499%_)))
                              (if _%$e124501%_
                                  ((lambda (_%loc124504%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc124504%_
                                      '#t
                                      _%port124369%_))
                                   _%$e124501%_)
                                  '#!void))
                            (newline))
                          _%rest124496%_))))
                 (if (pair? _%self.irritants124477124485%_)
                     (let ((_%hd124482124509%_
                            (##car _%self.irritants124477124485%_))
                           (_%tl124483124511%_
                            (##cdr _%self.irritants124477124485%_)))
                       (let* ((_%stx124514%_ _%hd124482124509%_)
                              (_%rest124516%_ _%tl124483124511%_))
                         (_%K124481124506%_ _%rest124516%_ _%stx124514%_)))
                     '#!void))
               (if __DEBUG
                   (let ((_%cont124517124519%_
                          (##unchecked-structure-ref
                           _%self124372%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont124517124519%_
                         (let ((_%cont124521%_ _%cont124517124519%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont124521%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port124369%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message124239%_
               _%irritants124240%_
               _%where124241%_
               _%context124242%_
               _%marks124243%_
               _%phi124244%_)
        (let ((__obj124746
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj124746 _%message124239%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj124746
           _%irritants124240%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj124746 _%where124241%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj124746 _%context124242%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj124746 _%marks124243%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj124746 _%phi124244%_ '6 '#f '#f)
          __obj124746)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where124234%_
               _%message124235%_
               _%stx124236%_
               .
               _%details124237%_)
        (raise (make-syntax-error
                _%message124235%_
                (cons _%stx124236%_ _%details124237%_)
                _%where124234%_
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
      (lambda _%$args124231%_ (apply make-instance AST::t _%$args124231%_)))
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
      (lambda (_%stx124229%_)
        (if (##structure-instance-of? _%stx124229%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx124229%_ '1 '#f '#f)
            _%stx124229%_)))
    (define __AST-source
      (lambda (_%stx124220%_)
        (let _%lp124222%_ ((_%src124224%_ _%stx124220%_))
          (if (##structure-instance-of? _%src124224%_ 'gerbil#AST::t)
              (_%lp124222%_
               (##unchecked-structure-ref _%src124224%_ '2 '#f '#f))
              (if (##locat? _%src124224%_) _%src124224%_ '#f)))))
    (define __AST
      (lambda (_%e124212%_ _%src-stx124213%_)
        (let ((_%src124215%_ (__AST-source _%src-stx124213%_)))
          (if (or (##structure-instance-of? _%e124212%_ 'gerbil#AST::t)
                  (not _%src124215%_))
              _%e124212%_
              (##structure AST::t _%e124212%_ _%src124215%_)))))
    (define __AST-eq?
      (lambda (_%stx124209%_ _%obj124210%_)
        (eq? (__AST-e _%stx124209%_) _%obj124210%_)))
    (define __AST-pair?
      (lambda (_%stx124207%_) (pair? (__AST-e _%stx124207%_))))
    (define __AST-null?
      (lambda (_%stx124205%_) (null? (__AST-e _%stx124205%_))))
    (define __AST-datum?
      (lambda (_%stx124186%_)
        (let* ((_%e124188%_ (__AST-e _%stx124186%_))
               (_%$e124190%_ (number? _%e124188%_)))
          (if _%$e124190%_
              _%$e124190%_
              (let ((_%$e124193%_ (string? _%e124188%_)))
                (if _%$e124193%_
                    _%$e124193%_
                    (let ((_%$e124196%_ (char? _%e124188%_)))
                      (if _%$e124196%_
                          _%$e124196%_
                          (let ((_%$e124199%_ (keyword? _%e124188%_)))
                            (if _%$e124199%_
                                _%$e124199%_
                                (let ((_%$e124202%_ (boolean? _%e124188%_)))
                                  (if _%$e124202%_
                                      _%$e124202%_
                                      (eq? _%e124188%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx124184%_) (symbol? (__AST-e _%stx124184%_))))
    (define __AST-id-list?__%
      (lambda (_%stx124135%_ _%tail?124136%_)
        (let _%lp124138%_ ((_%rest124140%_ _%stx124135%_))
          (let* ((_%$e124142%_ _%rest124140%_)
                 (_%$E124144124157%_
                  (lambda ()
                    (let* ((_%$E124145124152%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e124142%_)))
                           (_%rest124155%_ _%$e124142%_))
                      (_%tail?124136%_ _%rest124155%_)))))
            (if (__AST-pair? _%$e124142%_)
                (let* ((_%$tgt124146124160%_ (__AST-e _%$e124142%_))
                       (_%$hd124147124163%_ (##car _%$tgt124146124160%_))
                       (_%$tl124148124166%_ (##cdr _%$tgt124146124160%_))
                       (_%hd124170%_ _%$hd124147124163%_)
                       (_%rest124172%_ _%$tl124148124166%_))
                  (if (__AST-id? _%hd124170%_)
                      (_%lp124138%_ _%rest124172%_)
                      '#f))
                (_%$E124144124157%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx124177%_)
        (let ((_%tail?124179%_ __AST-null?))
          (__AST-id-list?__% _%stx124177%_ _%tail?124179%_))))
    (define __AST-id-list?
      (lambda _g124748_
        (let ((_g124749_ (##length _g124748_)))
          (cond ((##fx= _g124749_ 1) (apply __AST-id-list?__0 _g124748_))
                ((##fx= _g124749_ 2) (apply __AST-id-list?__% _g124748_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g124748_))))))
    (define __AST-bind-list?
      (lambda (_%stx124127%_)
        (__AST-id-list?__%
         _%stx124127%_
         (lambda (_%e124129%_)
           (let ((_%$e124131%_ (__AST-null? _%e124129%_)))
             (if _%$e124131%_ _%$e124131%_ (__AST-id? _%e124129%_)))))))
    (define __AST-list?__%
      (lambda (_%stx124080%_ _%tail?124081%_)
        (let _%lp124083%_ ((_%rest124085%_ _%stx124080%_))
          (let* ((_%$e124087%_ _%rest124085%_)
                 (_%$E124089124102%_
                  (lambda ()
                    (let* ((_%$E124090124097%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e124087%_)))
                           (_%rest124100%_ _%$e124087%_))
                      (_%tail?124081%_ _%rest124100%_)))))
            (if (__AST-pair? _%$e124087%_)
                (let* ((_%$tgt124091124105%_ (__AST-e _%$e124087%_))
                       (_%$hd124092124108%_ (##car _%$tgt124091124105%_))
                       (_%$tl124093124111%_ (##cdr _%$tgt124091124105%_))
                       (_%rest124115%_ _%$tl124093124111%_))
                  (_%lp124083%_ _%rest124115%_))
                (_%$E124089124102%_))))))
    (define __AST-list?__0
      (lambda (_%stx124120%_)
        (let ((_%tail?124122%_ __AST-null?))
          (__AST-list?__% _%stx124120%_ _%tail?124122%_))))
    (define __AST-list?
      (lambda _g124750_
        (let ((_g124751_ (##length _g124750_)))
          (cond ((##fx= _g124751_ 1) (apply __AST-list?__0 _g124750_))
                ((##fx= _g124751_ 2) (apply __AST-list?__% _g124750_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g124750_))))))
    (define __AST->list
      (lambda (_%stx124045%_)
        (let* ((_%$e124047%_ _%stx124045%_)
               (_%$E124049124062%_
                (lambda ()
                  (let* ((_%$E124050124057%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e124047%_)))
                         (_%rest124060%_ _%$e124047%_))
                    (__AST-e _%rest124060%_)))))
          (if (__AST-pair? _%$e124047%_)
              (let* ((_%$tgt124051124065%_ (__AST-e _%$e124047%_))
                     (_%$hd124052124068%_ (##car _%$tgt124051124065%_))
                     (_%$tl124053124071%_ (##cdr _%$tgt124051124065%_))
                     (_%hd124075%_ _%$hd124052124068%_)
                     (_%rest124077%_ _%$tl124053124071%_))
                (cons _%hd124075%_ (__AST->list _%rest124077%_)))
              (_%$E124049124062%_)))))
    (define __AST->datum
      (lambda (_%stx124038%_)
        (if (##structure-instance-of? _%stx124038%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx124038%_))
            (if (pair? _%stx124038%_)
                (cons (__AST->datum (##car _%stx124038%_))
                      (__AST->datum (##cdr _%stx124038%_)))
                (if (vector? _%stx124038%_)
                    (vector-map __AST->datum _%stx124038%_)
                    (if (box? _%stx124038%_)
                        (box (__AST->datum (unbox _%stx124038%_)))
                        _%stx124038%_))))))
    (define get-readenv
      (lambda (_%port124036%_)
        (##make-readenv
         _%port124036%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in124024%_)
        (let ((_%e124026%_ (##read-datum-or-eof (get-readenv _%in124024%_))))
          (if (eof-object? (__AST-e _%e124026%_))
              (__AST-e _%e124026%_)
              _%e124026%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in124032%_ (current-input-port)))
          (read-syntax__% _%in124032%_))))
    (define read-syntax
      (lambda _g124752_
        (let ((_g124753_ (##length _g124752_)))
          (cond ((##fx= _g124753_ 0) (apply read-syntax__0 _g124752_))
                ((##fx= _g124753_ 1) (apply read-syntax__% _g124752_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g124752_))))))
    (define read-syntax-from-file
      (lambda (_%path124019%_)
        (let ((_%r124021%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path124019%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r124021%_)
              (cdr (__AST-e (vector-ref _%r124021%_ '1)))
              (error (err-code->string _%r124021%_) _%path124019%_)))))
    (define __wrap-syntax
      (lambda (_%re124016%_ _%e124017%_)
        (if (eof-object? _%e124017%_)
            _%e124017%_
            (##structure AST::t _%e124017%_ (##readenv->locat _%re124016%_)))))
    (define __unwrap-syntax
      (lambda (_%re124013%_ _%e124014%_) (__AST-e _%e124014%_)))
    (define __pp-syntax
      (lambda (_%stx124011%_) (pp (__AST->datum _%stx124011%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt124009%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt124009%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt124009%_ '@list)
          (macro-readtable-brace-handler-set! _%rt124009%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt124009%_
           '#\!
           __read-sharp-bang)
          _%rt124009%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt124005%_ _%kw124006%_)
        (macro-readtable-bracket-handler-set! _%rt124005%_ _%kw124006%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt124002%_ _%kw124003%_)
        (macro-readtable-brace-handler-set! _%rt124002%_ _%kw124003%_)))
    (define __read-sharp-bang
      (lambda (_%re123993%_ _%next123994%_ _%start-pos123995%_)
        (if (eq? _%start-pos123995%_ '0)
            (let* ((_%line123997%_
                    (##read-line
                     (macro-readenv-port _%re123993%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line123999%_
                    (substring
                     _%line123997%_
                     '1
                     (string-length _%line123997%_))))
              (macro-readenv-script-line-set!
               _%re123993%_
               _%script-line123999%_)
              (##script-marker))
            (##read-sharp-bang
             _%re123993%_
             _%next123994%_
             _%start-pos123995%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj123991%_)
        (if (source-location? _%obj123991%_)
            (string? (##locat-container _%obj123991%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj123989%_)
        (if (##locat? _%obj123989%_)
            (##container->path (##locat-container _%obj123989%_))
            '#f)))))

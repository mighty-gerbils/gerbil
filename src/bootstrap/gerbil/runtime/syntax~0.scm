(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1712121898)
  (begin
    (declare (not safe))
    (define SyntaxError::t
      (make-class-type
       'gerbil/runtime/syntax#SyntaxError::t
       'SyntaxError
       (list Exception::t StackTrace::t)
       '(message irritants where context phi marks)
       (cons (cons 'final: '#t) '())
       '#f))
    (define SyntaxError? (__make-class-predicate SyntaxError::t))
    (define make-SyntaxError
      (lambda _%$args108556%_
        (apply make-instance SyntaxError::t _%$args108556%_)))
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
      (lambda (_%self108440%_ _%port108441%_)
        (let ()
          (let ((_%self108444%_ _%self108440%_))
            (let ()
              (letrec ((_%location108454%_
                        (lambda ()
                          (let _%lp108516%_ ((_%rest108518%_
                                              (##unchecked-structure-ref
                                               _%self108444%_
                                               '3
                                               '#f
                                               '#f)))
                            (let* ((_%rest108519108527%_ _%rest108518%_)
                                   (_%else108521108535%_ (lambda () '#f))
                                   (_%K108523108544%_
                                    (lambda (_%rest108538%_ _%hd108539%_)
                                      (let ((_%$e108541%_
                                             (__AST-source _%hd108539%_)))
                                        (if _%$e108541%_
                                            _%$e108541%_
                                            (_%lp108516%_ _%rest108538%_))))))
                              (if (##pair? _%rest108519108527%_)
                                  (let ((_%hd108524108547%_
                                         (##car _%rest108519108527%_))
                                        (_%tl108525108549%_
                                         (##cdr _%rest108519108527%_)))
                                    (let* ((_%hd108552%_ _%hd108524108547%_)
                                           (_%rest108554%_ _%tl108525108549%_))
                                      (_%K108523108544%_
                                       _%rest108554%_
                                       _%hd108552%_)))
                                  (_%else108521108535%_)))))))
                (__call-with-parameters
                 (lambda ()
                   (newline)
                   (display '"*** ERROR IN ")
                   (let ((_%$e108457%_ (_%location108454%_)))
                     (if _%$e108457%_
                         ((lambda (_%where108460%_)
                            (##display-locat
                             _%where108460%_
                             '#t
                             _%port108441%_))
                          _%$e108457%_)
                         (let () (display '"?"))))
                   (newline)
                   (display '"--- Syntax Error")
                   (let ((_%$e108463%_
                          (##unchecked-structure-ref
                           _%self108444%_
                           '4
                           '#f
                           '#f)))
                     (if _%$e108463%_
                         ((lambda (_%where108466%_)
                            (displayln
                             '" at "
                             _%where108466%_
                             '": "
                             (##unchecked-structure-ref
                              _%self108444%_
                              '2
                              '#f
                              '#f)))
                          _%$e108463%_)
                         (let ()
                           (displayln
                            '": "
                            (##unchecked-structure-ref
                             _%self108444%_
                             '2
                             '#f
                             '#f)))))
                   (let* ((_%g108468108476%_
                           (##unchecked-structure-ref
                            _%self108444%_
                            '3
                            '#f
                            '#f))
                          (_%else108470108484%_ (lambda () '#!void))
                          (_%K108472108497%_
                           (lambda (_%rest108487%_ _%stx108488%_)
                             (display '"... form:   ")
                             (__pp-syntax _%stx108488%_)
                             (for-each
                              (lambda (_%detail108490%_)
                                (display '"... detail: ")
                                (##write (__AST->datum _%detail108490%_))
                                (let ((_%$e108492%_
                                       (__AST-source _%detail108490%_)))
                                  (if _%$e108492%_
                                      ((lambda (_%loc108495%_)
                                         (display '" at ")
                                         (##display-locat
                                          _%loc108495%_
                                          '#t
                                          _%port108441%_))
                                       _%$e108492%_)
                                      '#!void))
                                (newline))
                              _%rest108487%_))))
                     (if (##pair? _%g108468108476%_)
                         (let ((_%hd108473108500%_ (##car _%g108468108476%_))
                               (_%tl108474108502%_ (##cdr _%g108468108476%_)))
                           (let* ((_%stx108505%_ _%hd108473108500%_)
                                  (_%rest108507%_ _%tl108474108502%_))
                             (_%K108472108497%_ _%rest108507%_ _%stx108505%_)))
                         '#!void))
                   (if (##getenv '"GERBIL_EXPANDER_DEBUG" '#f)
                       (let ((_%cont108508108510%_
                              (unchecked-slot-ref
                               _%self108444%_
                               'continuation)))
                         (if _%cont108508108510%_
                             (let ((_%cont108513%_ _%cont108508108510%_))
                               (display '"--- continuation backtrace:")
                               (newline)
                               (display-continuation-backtrace _%cont108513%_))
                             '#f))
                       '#!void))
                 current-output-port
                 _%port108441%_)))))))
    (__bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message108311%_
               _%irritants108312%_
               _%where108313%_
               _%context108314%_
               _%marks108315%_
               _%phi108316%_)
        (let ((__obj108653
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj108653 _%message108311%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj108653
           _%irritants108312%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj108653 _%where108313%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj108653 _%context108314%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj108653 _%marks108315%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj108653 _%phi108316%_ '6 '#f '#f)
          __obj108653)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where108306%_
               _%message108307%_
               _%stx108308%_
               .
               _%details108309%_)
        (raise (make-syntax-error
                _%message108307%_
                (cons _%stx108308%_ _%details108309%_)
                _%where108306%_
                '#f
                '#f
                '#f))))
    (define AST::t
      (make-class-type
       'gerbil#AST::t
       'syntax
       (list)
       '(e source)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define AST? (__make-class-predicate AST::t))
    (define make-AST
      (lambda _%$args108303%_ (apply make-instance AST::t _%$args108303%_)))
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
      (lambda (_%stx108301%_)
        (if (##structure-instance-of? _%stx108301%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx108301%_ '1 '#f '#f)
            _%stx108301%_)))
    (define __AST-source
      (lambda (_%stx108292%_)
        (let _%lp108294%_ ((_%src108296%_ _%stx108292%_))
          (if (##structure-instance-of? _%src108296%_ 'gerbil#AST::t)
              (let ()
                (_%lp108294%_
                 (##unchecked-structure-ref _%src108296%_ '2 '#f '#f)))
              (if (##locat? _%src108296%_)
                  (let () _%src108296%_)
                  (let () '#f))))))
    (define __AST
      (lambda (_%e108284%_ _%src-stx108285%_)
        (let ((_%src108287%_ (__AST-source _%src-stx108285%_)))
          (if (or (##structure-instance-of? _%e108284%_ 'gerbil#AST::t)
                  (not _%src108287%_))
              _%e108284%_
              (##structure AST::t _%e108284%_ _%src108287%_)))))
    (define __AST-eq?
      (lambda (_%stx108281%_ _%obj108282%_)
        (eq? (__AST-e _%stx108281%_) _%obj108282%_)))
    (define __AST-pair?
      (lambda (_%stx108279%_) (pair? (__AST-e _%stx108279%_))))
    (define __AST-null?
      (lambda (_%stx108277%_) (null? (__AST-e _%stx108277%_))))
    (define __AST-datum?
      (lambda (_%stx108258%_)
        (let* ((_%e108260%_ (__AST-e _%stx108258%_))
               (_%$e108262%_ (number? _%e108260%_)))
          (if _%$e108262%_
              _%$e108262%_
              (let ((_%$e108265%_ (string? _%e108260%_)))
                (if _%$e108265%_
                    _%$e108265%_
                    (let ((_%$e108268%_ (char? _%e108260%_)))
                      (if _%$e108268%_
                          _%$e108268%_
                          (let ((_%$e108271%_ (keyword? _%e108260%_)))
                            (if _%$e108271%_
                                _%$e108271%_
                                (let ((_%$e108274%_ (boolean? _%e108260%_)))
                                  (if _%$e108274%_
                                      _%$e108274%_
                                      (eq? _%e108260%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx108256%_) (symbol? (__AST-e _%stx108256%_))))
    (define __AST-id-list?__%
      (lambda (_%stx108207%_ _%tail?108208%_)
        (let _%lp108210%_ ((_%rest108212%_ _%stx108207%_))
          (let* ((_%$e108214%_ _%rest108212%_)
                 (_%$E108216108229%_
                  (lambda ()
                    (let* ((_%$E108217108224%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e108214%_)))
                           (_%rest108227%_ _%$e108214%_))
                      (_%tail?108208%_ _%rest108227%_)))))
            (if (__AST-pair? _%$e108214%_)
                (let* ((_%$tgt108218108232%_ (__AST-e _%$e108214%_))
                       (_%$hd108219108235%_ (##car _%$tgt108218108232%_))
                       (_%$tl108220108238%_ (##cdr _%$tgt108218108232%_)))
                  (let* ((_%hd108242%_ _%$hd108219108235%_)
                         (_%rest108244%_ _%$tl108220108238%_))
                    (if (__AST-id? _%hd108242%_)
                        (_%lp108210%_ _%rest108244%_)
                        '#f)))
                (_%$E108216108229%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx108249%_)
        (let ((_%tail?108251%_ __AST-null?))
          (__AST-id-list?__% _%stx108249%_ _%tail?108251%_))))
    (define __AST-id-list?
      (lambda _g108656_
        (let ((_g108655_ (##length _g108656_)))
          (cond ((##fx= _g108655_ 1)
                 (apply (lambda (_%stx108249%_)
                          (__AST-id-list?__0 _%stx108249%_))
                        _g108656_))
                ((##fx= _g108655_ 2)
                 (apply (lambda (_%stx108253%_ _%tail?108254%_)
                          (__AST-id-list?__% _%stx108253%_ _%tail?108254%_))
                        _g108656_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g108656_))))))
    (define __AST-bind-list?
      (lambda (_%stx108199%_)
        (__AST-id-list?__%
         _%stx108199%_
         (lambda (_%e108201%_)
           (let ((_%$e108203%_ (__AST-null? _%e108201%_)))
             (if _%$e108203%_ _%$e108203%_ (__AST-id? _%e108201%_)))))))
    (define __AST-list?__%
      (lambda (_%stx108152%_ _%tail?108153%_)
        (let _%lp108155%_ ((_%rest108157%_ _%stx108152%_))
          (let* ((_%$e108159%_ _%rest108157%_)
                 (_%$E108161108174%_
                  (lambda ()
                    (let* ((_%$E108162108169%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e108159%_)))
                           (_%rest108172%_ _%$e108159%_))
                      (_%tail?108153%_ _%rest108172%_)))))
            (if (__AST-pair? _%$e108159%_)
                (let* ((_%$tgt108163108177%_ (__AST-e _%$e108159%_))
                       (_%$hd108164108180%_ (##car _%$tgt108163108177%_))
                       (_%$tl108165108183%_ (##cdr _%$tgt108163108177%_)))
                  (let ((_%rest108187%_ _%$tl108165108183%_))
                    (_%lp108155%_ _%rest108187%_)))
                (_%$E108161108174%_))))))
    (define __AST-list?__0
      (lambda (_%stx108192%_)
        (let ((_%tail?108194%_ __AST-null?))
          (__AST-list?__% _%stx108192%_ _%tail?108194%_))))
    (define __AST-list?
      (lambda _g108658_
        (let ((_g108657_ (##length _g108658_)))
          (cond ((##fx= _g108657_ 1)
                 (apply (lambda (_%stx108192%_) (__AST-list?__0 _%stx108192%_))
                        _g108658_))
                ((##fx= _g108657_ 2)
                 (apply (lambda (_%stx108196%_ _%tail?108197%_)
                          (__AST-list?__% _%stx108196%_ _%tail?108197%_))
                        _g108658_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g108658_))))))
    (define __AST->list
      (lambda (_%stx108117%_)
        (let* ((_%$e108119%_ _%stx108117%_)
               (_%$E108121108134%_
                (lambda ()
                  (let* ((_%$E108122108129%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e108119%_)))
                         (_%rest108132%_ _%$e108119%_))
                    (__AST-e _%rest108132%_)))))
          (if (__AST-pair? _%$e108119%_)
              (let* ((_%$tgt108123108137%_ (__AST-e _%$e108119%_))
                     (_%$hd108124108140%_ (##car _%$tgt108123108137%_))
                     (_%$tl108125108143%_ (##cdr _%$tgt108123108137%_)))
                (let* ((_%hd108147%_ _%$hd108124108140%_)
                       (_%rest108149%_ _%$tl108125108143%_))
                  (cons _%hd108147%_ (__AST->list _%rest108149%_))))
              (_%$E108121108134%_)))))
    (define __AST->datum
      (lambda (_%stx108110%_)
        (if (##structure-instance-of? _%stx108110%_ 'gerbil#AST::t)
            (let () (__AST->datum (__AST-e _%stx108110%_)))
            (if (pair? _%stx108110%_)
                (let ()
                  (cons (__AST->datum (car _%stx108110%_))
                        (__AST->datum (cdr _%stx108110%_))))
                (if (vector? _%stx108110%_)
                    (let () (vector-map __AST->datum _%stx108110%_))
                    (if (box? _%stx108110%_)
                        (let () (box (__AST->datum (unbox _%stx108110%_))))
                        (let () _%stx108110%_)))))))
    (define get-readenv
      (lambda (_%port108108%_)
        (##make-readenv
         _%port108108%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in108096%_)
        (let ((_%e108098%_ (##read-datum-or-eof (get-readenv _%in108096%_))))
          (if (eof-object? (__AST-e _%e108098%_))
              (__AST-e _%e108098%_)
              _%e108098%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in108104%_ (current-input-port)))
          (read-syntax__% _%in108104%_))))
    (define read-syntax
      (lambda _g108660_
        (let ((_g108659_ (##length _g108660_)))
          (cond ((##fx= _g108659_ 0)
                 (apply (lambda () (read-syntax__0)) _g108660_))
                ((##fx= _g108659_ 1)
                 (apply (lambda (_%in108106%_) (read-syntax__% _%in108106%_))
                        _g108660_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g108660_))))))
    (define read-syntax-from-file
      (lambda (_%path108091%_)
        (let ((_%r108093%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path108091%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r108093%_)
              (cdr (__AST-e (vector-ref _%r108093%_ '1)))
              (error (err-code->string _%r108093%_) _%path108091%_)))))
    (define __wrap-syntax
      (lambda (_%re108088%_ _%e108089%_)
        (if (eof-object? _%e108089%_)
            _%e108089%_
            (##structure AST::t _%e108089%_ (##readenv->locat _%re108088%_)))))
    (define __unwrap-syntax
      (lambda (_%re108085%_ _%e108086%_) (__AST-e _%e108086%_)))
    (define __pp-syntax
      (lambda (_%stx108083%_) (pp (__AST->datum _%stx108083%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt108081%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt108081%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt108081%_ '@list)
          (macro-readtable-brace-handler-set! _%rt108081%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt108081%_
           '#\!
           __read-sharp-bang)
          _%rt108081%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt108077%_ _%kw108078%_)
        (macro-readtable-bracket-handler-set! _%rt108077%_ _%kw108078%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt108074%_ _%kw108075%_)
        (macro-readtable-brace-handler-set! _%rt108074%_ _%kw108075%_)))
    (define __read-sharp-bang
      (lambda (_%re108065%_ _%next108066%_ _%start-pos108067%_)
        (if (eq? _%start-pos108067%_ '0)
            (let* ((_%line108069%_
                    (##read-line
                     (macro-readenv-port _%re108065%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line108071%_
                    (substring
                     _%line108069%_
                     '1
                     (string-length _%line108069%_))))
              (macro-readenv-script-line-set!
               _%re108065%_
               _%script-line108071%_)
              (##script-marker))
            (##read-sharp-bang
             _%re108065%_
             _%next108066%_
             _%start-pos108067%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj108063%_)
        (if (source-location? _%obj108063%_)
            (string? (##locat-container _%obj108063%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj108061%_)
        (if (##locat? _%obj108061%_)
            (##container->path (##locat-container _%obj108061%_))
            '#f)))))

(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1713001407)
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
      (lambda _%$args110743%_
        (apply make-instance SyntaxError::t _%$args110743%_)))
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
      (lambda (_%self110244110625%_ _%port110627%_)
        (let* ((_%self110629%_ _%self110244110625%_)
               (_%self110631%_ _%self110629%_))
          (letrec ((_%location110641%_
                    (lambda ()
                      (let _%lp110703%_ ((_%rest110705%_
                                          (##unchecked-structure-ref
                                           _%self110631%_
                                           '3
                                           '#f
                                           '#f)))
                        (let* ((_%rest110706110714%_ _%rest110705%_)
                               (_%else110708110722%_ (lambda () '#f))
                               (_%K110710110731%_
                                (lambda (_%rest110725%_ _%hd110726%_)
                                  (let ((_%$e110728%_
                                         (__AST-source _%hd110726%_)))
                                    (if _%$e110728%_
                                        _%$e110728%_
                                        (_%lp110703%_ _%rest110725%_))))))
                          (if (##pair? _%rest110706110714%_)
                              (let ((_%hd110711110734%_
                                     (##car _%rest110706110714%_))
                                    (_%tl110712110736%_
                                     (##cdr _%rest110706110714%_)))
                                (let* ((_%hd110739%_ _%hd110711110734%_)
                                       (_%rest110741%_ _%tl110712110736%_))
                                  (_%K110710110731%_
                                   _%rest110741%_
                                   _%hd110739%_)))
                              (_%else110708110722%_)))))))
            (__call-with-parameters
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e110644%_ (_%location110641%_)))
                 (if _%$e110644%_
                     ((lambda (_%where110647%_)
                        (##display-locat _%where110647%_ '#t _%port110627%_))
                      _%$e110644%_)
                     (display '"?")))
               (newline)
               (display '"--- Syntax Error")
               (let ((_%$e110650%_
                      (##unchecked-structure-ref _%self110631%_ '4 '#f '#f)))
                 (if _%$e110650%_
                     ((lambda (_%where110653%_)
                        (displayln
                         '" at "
                         _%where110653%_
                         '": "
                         (##unchecked-structure-ref
                          _%self110631%_
                          '2
                          '#f
                          '#f)))
                      _%$e110650%_)
                     (displayln
                      '": "
                      (##unchecked-structure-ref _%self110631%_ '2 '#f '#f))))
               (let* ((_%self.irritants110655110663%_
                       (##unchecked-structure-ref _%self110631%_ '3 '#f '#f))
                      (_%else110657110671%_ (lambda () '#!void))
                      (_%K110659110684%_
                       (lambda (_%rest110674%_ _%stx110675%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx110675%_)
                         (for-each
                          (lambda (_%detail110677%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail110677%_))
                            (let ((_%$e110679%_
                                   (__AST-source _%detail110677%_)))
                              (if _%$e110679%_
                                  ((lambda (_%loc110682%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc110682%_
                                      '#t
                                      _%port110627%_))
                                   _%$e110679%_)
                                  '#!void))
                            (newline))
                          _%rest110674%_))))
                 (if (##pair? _%self.irritants110655110663%_)
                     (let ((_%hd110660110687%_
                            (##car _%self.irritants110655110663%_))
                           (_%tl110661110689%_
                            (##cdr _%self.irritants110655110663%_)))
                       (let* ((_%stx110692%_ _%hd110660110687%_)
                              (_%rest110694%_ _%tl110661110689%_))
                         (_%K110659110684%_ _%rest110694%_ _%stx110692%_)))
                     '#!void))
               (if (##getenv '"GERBIL_DEBUG" '#f)
                   (let ((_%cont110695110697%_
                          (##unchecked-structure-ref
                           _%self110631%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont110695110697%_
                         (let ((_%cont110700%_ _%cont110695110697%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont110700%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port110627%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message110496%_
               _%irritants110497%_
               _%where110498%_
               _%context110499%_
               _%marks110500%_
               _%phi110501%_)
        (let ((__obj110840
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj110840 _%message110496%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj110840
           _%irritants110497%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj110840 _%where110498%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj110840 _%context110499%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj110840 _%marks110500%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj110840 _%phi110501%_ '6 '#f '#f)
          __obj110840)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where110491%_
               _%message110492%_
               _%stx110493%_
               .
               _%details110494%_)
        (raise (make-syntax-error
                _%message110492%_
                (cons _%stx110493%_ _%details110494%_)
                _%where110491%_
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
      (lambda _%$args110488%_ (apply make-instance AST::t _%$args110488%_)))
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
      (lambda (_%stx110486%_)
        (if (##structure-instance-of? _%stx110486%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx110486%_ '1 '#f '#f)
            _%stx110486%_)))
    (define __AST-source
      (lambda (_%stx110477%_)
        (let _%lp110479%_ ((_%src110481%_ _%stx110477%_))
          (if (##structure-instance-of? _%src110481%_ 'gerbil#AST::t)
              (_%lp110479%_
               (##unchecked-structure-ref _%src110481%_ '2 '#f '#f))
              (if (##locat? _%src110481%_) _%src110481%_ '#f)))))
    (define __AST
      (lambda (_%e110469%_ _%src-stx110470%_)
        (let ((_%src110472%_ (__AST-source _%src-stx110470%_)))
          (if (or (##structure-instance-of? _%e110469%_ 'gerbil#AST::t)
                  (not _%src110472%_))
              _%e110469%_
              (##structure AST::t _%e110469%_ _%src110472%_)))))
    (define __AST-eq?
      (lambda (_%stx110466%_ _%obj110467%_)
        (eq? (__AST-e _%stx110466%_) _%obj110467%_)))
    (define __AST-pair?
      (lambda (_%stx110464%_) (pair? (__AST-e _%stx110464%_))))
    (define __AST-null?
      (lambda (_%stx110462%_) (null? (__AST-e _%stx110462%_))))
    (define __AST-datum?
      (lambda (_%stx110443%_)
        (let* ((_%e110445%_ (__AST-e _%stx110443%_))
               (_%$e110447%_ (number? _%e110445%_)))
          (if _%$e110447%_
              _%$e110447%_
              (let ((_%$e110450%_ (string? _%e110445%_)))
                (if _%$e110450%_
                    _%$e110450%_
                    (let ((_%$e110453%_ (char? _%e110445%_)))
                      (if _%$e110453%_
                          _%$e110453%_
                          (let ((_%$e110456%_ (keyword? _%e110445%_)))
                            (if _%$e110456%_
                                _%$e110456%_
                                (let ((_%$e110459%_ (boolean? _%e110445%_)))
                                  (if _%$e110459%_
                                      _%$e110459%_
                                      (eq? _%e110445%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx110441%_) (symbol? (__AST-e _%stx110441%_))))
    (define __AST-id-list?__%
      (lambda (_%stx110392%_ _%tail?110393%_)
        (let _%lp110395%_ ((_%rest110397%_ _%stx110392%_))
          (let* ((_%$e110399%_ _%rest110397%_)
                 (_%$E110401110414%_
                  (lambda ()
                    (let* ((_%$E110402110409%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e110399%_)))
                           (_%rest110412%_ _%$e110399%_))
                      (_%tail?110393%_ _%rest110412%_)))))
            (if (__AST-pair? _%$e110399%_)
                (let* ((_%$tgt110403110417%_ (__AST-e _%$e110399%_))
                       (_%$hd110404110420%_ (##car _%$tgt110403110417%_))
                       (_%$tl110405110423%_ (##cdr _%$tgt110403110417%_))
                       (_%hd110427%_ _%$hd110404110420%_)
                       (_%rest110429%_ _%$tl110405110423%_))
                  (if (__AST-id? _%hd110427%_)
                      (_%lp110395%_ _%rest110429%_)
                      '#f))
                (_%$E110401110414%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx110434%_)
        (let ((_%tail?110436%_ __AST-null?))
          (__AST-id-list?__% _%stx110434%_ _%tail?110436%_))))
    (define __AST-id-list?
      (lambda _g110843_
        (let ((_g110842_ (##length _g110843_)))
          (cond ((##fx= _g110842_ 1) (apply __AST-id-list?__0 _g110843_))
                ((##fx= _g110842_ 2) (apply __AST-id-list?__% _g110843_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g110843_))))))
    (define __AST-bind-list?
      (lambda (_%stx110384%_)
        (__AST-id-list?__%
         _%stx110384%_
         (lambda (_%e110386%_)
           (let ((_%$e110388%_ (__AST-null? _%e110386%_)))
             (if _%$e110388%_ _%$e110388%_ (__AST-id? _%e110386%_)))))))
    (define __AST-list?__%
      (lambda (_%stx110337%_ _%tail?110338%_)
        (let _%lp110340%_ ((_%rest110342%_ _%stx110337%_))
          (let* ((_%$e110344%_ _%rest110342%_)
                 (_%$E110346110359%_
                  (lambda ()
                    (let* ((_%$E110347110354%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e110344%_)))
                           (_%rest110357%_ _%$e110344%_))
                      (_%tail?110338%_ _%rest110357%_)))))
            (if (__AST-pair? _%$e110344%_)
                (let* ((_%$tgt110348110362%_ (__AST-e _%$e110344%_))
                       (_%$hd110349110365%_ (##car _%$tgt110348110362%_))
                       (_%$tl110350110368%_ (##cdr _%$tgt110348110362%_))
                       (_%rest110372%_ _%$tl110350110368%_))
                  (_%lp110340%_ _%rest110372%_))
                (_%$E110346110359%_))))))
    (define __AST-list?__0
      (lambda (_%stx110377%_)
        (let ((_%tail?110379%_ __AST-null?))
          (__AST-list?__% _%stx110377%_ _%tail?110379%_))))
    (define __AST-list?
      (lambda _g110845_
        (let ((_g110844_ (##length _g110845_)))
          (cond ((##fx= _g110844_ 1) (apply __AST-list?__0 _g110845_))
                ((##fx= _g110844_ 2) (apply __AST-list?__% _g110845_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g110845_))))))
    (define __AST->list
      (lambda (_%stx110302%_)
        (let* ((_%$e110304%_ _%stx110302%_)
               (_%$E110306110319%_
                (lambda ()
                  (let* ((_%$E110307110314%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e110304%_)))
                         (_%rest110317%_ _%$e110304%_))
                    (__AST-e _%rest110317%_)))))
          (if (__AST-pair? _%$e110304%_)
              (let* ((_%$tgt110308110322%_ (__AST-e _%$e110304%_))
                     (_%$hd110309110325%_ (##car _%$tgt110308110322%_))
                     (_%$tl110310110328%_ (##cdr _%$tgt110308110322%_))
                     (_%hd110332%_ _%$hd110309110325%_)
                     (_%rest110334%_ _%$tl110310110328%_))
                (cons _%hd110332%_ (__AST->list _%rest110334%_)))
              (_%$E110306110319%_)))))
    (define __AST->datum
      (lambda (_%stx110295%_)
        (if (##structure-instance-of? _%stx110295%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx110295%_))
            (if (pair? _%stx110295%_)
                (cons (__AST->datum (##car _%stx110295%_))
                      (__AST->datum (##cdr _%stx110295%_)))
                (if (vector? _%stx110295%_)
                    (vector-map __AST->datum _%stx110295%_)
                    (if (box? _%stx110295%_)
                        (box (__AST->datum (unbox _%stx110295%_)))
                        _%stx110295%_))))))
    (define get-readenv
      (lambda (_%port110293%_)
        (##make-readenv
         _%port110293%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in110281%_)
        (let ((_%e110283%_ (##read-datum-or-eof (get-readenv _%in110281%_))))
          (if (eof-object? (__AST-e _%e110283%_))
              (__AST-e _%e110283%_)
              _%e110283%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in110289%_ (current-input-port)))
          (read-syntax__% _%in110289%_))))
    (define read-syntax
      (lambda _g110847_
        (let ((_g110846_ (##length _g110847_)))
          (cond ((##fx= _g110846_ 0) (apply read-syntax__0 _g110847_))
                ((##fx= _g110846_ 1) (apply read-syntax__% _g110847_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g110847_))))))
    (define read-syntax-from-file
      (lambda (_%path110276%_)
        (let ((_%r110278%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path110276%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r110278%_)
              (cdr (__AST-e (vector-ref _%r110278%_ '1)))
              (error (err-code->string _%r110278%_) _%path110276%_)))))
    (define __wrap-syntax
      (lambda (_%re110273%_ _%e110274%_)
        (if (eof-object? _%e110274%_)
            _%e110274%_
            (##structure AST::t _%e110274%_ (##readenv->locat _%re110273%_)))))
    (define __unwrap-syntax
      (lambda (_%re110270%_ _%e110271%_) (__AST-e _%e110271%_)))
    (define __pp-syntax
      (lambda (_%stx110268%_) (pp (__AST->datum _%stx110268%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt110266%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt110266%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt110266%_ '@list)
          (macro-readtable-brace-handler-set! _%rt110266%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt110266%_
           '#\!
           __read-sharp-bang)
          _%rt110266%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt110262%_ _%kw110263%_)
        (macro-readtable-bracket-handler-set! _%rt110262%_ _%kw110263%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt110259%_ _%kw110260%_)
        (macro-readtable-brace-handler-set! _%rt110259%_ _%kw110260%_)))
    (define __read-sharp-bang
      (lambda (_%re110250%_ _%next110251%_ _%start-pos110252%_)
        (if (eq? _%start-pos110252%_ '0)
            (let* ((_%line110254%_
                    (##read-line
                     (macro-readenv-port _%re110250%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line110256%_
                    (substring
                     _%line110254%_
                     '1
                     (string-length _%line110254%_))))
              (macro-readenv-script-line-set!
               _%re110250%_
               _%script-line110256%_)
              (##script-marker))
            (##read-sharp-bang
             _%re110250%_
             _%next110251%_
             _%start-pos110252%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj110248%_)
        (if (source-location? _%obj110248%_)
            (string? (##locat-container _%obj110248%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj110246%_)
        (if (##locat? _%obj110246%_)
            (##container->path (##locat-container _%obj110246%_))
            '#f)))))

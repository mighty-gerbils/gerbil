(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1713004410)
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
      (lambda _%$args110854%_
        (apply make-instance SyntaxError::t _%$args110854%_)))
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
      (lambda (_%self110355110736%_ _%port110738%_)
        (let* ((_%self110740%_ _%self110355110736%_)
               (_%self110742%_ _%self110740%_))
          (letrec ((_%location110752%_
                    (lambda ()
                      (let _%lp110814%_ ((_%rest110816%_
                                          (##unchecked-structure-ref
                                           _%self110742%_
                                           '3
                                           '#f
                                           '#f)))
                        (let* ((_%rest110817110825%_ _%rest110816%_)
                               (_%else110819110833%_ (lambda () '#f))
                               (_%K110821110842%_
                                (lambda (_%rest110836%_ _%hd110837%_)
                                  (let ((_%$e110839%_
                                         (__AST-source _%hd110837%_)))
                                    (if _%$e110839%_
                                        _%$e110839%_
                                        (_%lp110814%_ _%rest110836%_))))))
                          (if (##pair? _%rest110817110825%_)
                              (let ((_%hd110822110845%_
                                     (##car _%rest110817110825%_))
                                    (_%tl110823110847%_
                                     (##cdr _%rest110817110825%_)))
                                (let* ((_%hd110850%_ _%hd110822110845%_)
                                       (_%rest110852%_ _%tl110823110847%_))
                                  (_%K110821110842%_
                                   _%rest110852%_
                                   _%hd110850%_)))
                              (_%else110819110833%_)))))))
            (__call-with-parameters
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e110755%_ (_%location110752%_)))
                 (if _%$e110755%_
                     ((lambda (_%where110758%_)
                        (##display-locat _%where110758%_ '#t _%port110738%_))
                      _%$e110755%_)
                     (display '"?")))
               (newline)
               (display '"--- Syntax Error")
               (let ((_%$e110761%_
                      (##unchecked-structure-ref _%self110742%_ '4 '#f '#f)))
                 (if _%$e110761%_
                     ((lambda (_%where110764%_)
                        (displayln
                         '" at "
                         _%where110764%_
                         '": "
                         (##unchecked-structure-ref
                          _%self110742%_
                          '2
                          '#f
                          '#f)))
                      _%$e110761%_)
                     (displayln
                      '": "
                      (##unchecked-structure-ref _%self110742%_ '2 '#f '#f))))
               (let* ((_%self.irritants110766110774%_
                       (##unchecked-structure-ref _%self110742%_ '3 '#f '#f))
                      (_%else110768110782%_ (lambda () '#!void))
                      (_%K110770110795%_
                       (lambda (_%rest110785%_ _%stx110786%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx110786%_)
                         (for-each
                          (lambda (_%detail110788%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail110788%_))
                            (let ((_%$e110790%_
                                   (__AST-source _%detail110788%_)))
                              (if _%$e110790%_
                                  ((lambda (_%loc110793%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc110793%_
                                      '#t
                                      _%port110738%_))
                                   _%$e110790%_)
                                  '#!void))
                            (newline))
                          _%rest110785%_))))
                 (if (##pair? _%self.irritants110766110774%_)
                     (let ((_%hd110771110798%_
                            (##car _%self.irritants110766110774%_))
                           (_%tl110772110800%_
                            (##cdr _%self.irritants110766110774%_)))
                       (let* ((_%stx110803%_ _%hd110771110798%_)
                              (_%rest110805%_ _%tl110772110800%_))
                         (_%K110770110795%_ _%rest110805%_ _%stx110803%_)))
                     '#!void))
               (if (##getenv '"GERBIL_DEBUG" '#f)
                   (let ((_%cont110806110808%_
                          (##unchecked-structure-ref
                           _%self110742%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont110806110808%_
                         (let ((_%cont110811%_ _%cont110806110808%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont110811%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port110738%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message110607%_
               _%irritants110608%_
               _%where110609%_
               _%context110610%_
               _%marks110611%_
               _%phi110612%_)
        (let ((__obj110951
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj110951 _%message110607%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj110951
           _%irritants110608%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj110951 _%where110609%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj110951 _%context110610%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj110951 _%marks110611%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj110951 _%phi110612%_ '6 '#f '#f)
          __obj110951)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where110602%_
               _%message110603%_
               _%stx110604%_
               .
               _%details110605%_)
        (raise (make-syntax-error
                _%message110603%_
                (cons _%stx110604%_ _%details110605%_)
                _%where110602%_
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
      (lambda _%$args110599%_ (apply make-instance AST::t _%$args110599%_)))
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
      (lambda (_%stx110597%_)
        (if (##structure-instance-of? _%stx110597%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx110597%_ '1 '#f '#f)
            _%stx110597%_)))
    (define __AST-source
      (lambda (_%stx110588%_)
        (let _%lp110590%_ ((_%src110592%_ _%stx110588%_))
          (if (##structure-instance-of? _%src110592%_ 'gerbil#AST::t)
              (_%lp110590%_
               (##unchecked-structure-ref _%src110592%_ '2 '#f '#f))
              (if (##locat? _%src110592%_) _%src110592%_ '#f)))))
    (define __AST
      (lambda (_%e110580%_ _%src-stx110581%_)
        (let ((_%src110583%_ (__AST-source _%src-stx110581%_)))
          (if (or (##structure-instance-of? _%e110580%_ 'gerbil#AST::t)
                  (not _%src110583%_))
              _%e110580%_
              (##structure AST::t _%e110580%_ _%src110583%_)))))
    (define __AST-eq?
      (lambda (_%stx110577%_ _%obj110578%_)
        (eq? (__AST-e _%stx110577%_) _%obj110578%_)))
    (define __AST-pair?
      (lambda (_%stx110575%_) (pair? (__AST-e _%stx110575%_))))
    (define __AST-null?
      (lambda (_%stx110573%_) (null? (__AST-e _%stx110573%_))))
    (define __AST-datum?
      (lambda (_%stx110554%_)
        (let* ((_%e110556%_ (__AST-e _%stx110554%_))
               (_%$e110558%_ (number? _%e110556%_)))
          (if _%$e110558%_
              _%$e110558%_
              (let ((_%$e110561%_ (string? _%e110556%_)))
                (if _%$e110561%_
                    _%$e110561%_
                    (let ((_%$e110564%_ (char? _%e110556%_)))
                      (if _%$e110564%_
                          _%$e110564%_
                          (let ((_%$e110567%_ (keyword? _%e110556%_)))
                            (if _%$e110567%_
                                _%$e110567%_
                                (let ((_%$e110570%_ (boolean? _%e110556%_)))
                                  (if _%$e110570%_
                                      _%$e110570%_
                                      (eq? _%e110556%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx110552%_) (symbol? (__AST-e _%stx110552%_))))
    (define __AST-id-list?__%
      (lambda (_%stx110503%_ _%tail?110504%_)
        (let _%lp110506%_ ((_%rest110508%_ _%stx110503%_))
          (let* ((_%$e110510%_ _%rest110508%_)
                 (_%$E110512110525%_
                  (lambda ()
                    (let* ((_%$E110513110520%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e110510%_)))
                           (_%rest110523%_ _%$e110510%_))
                      (_%tail?110504%_ _%rest110523%_)))))
            (if (__AST-pair? _%$e110510%_)
                (let* ((_%$tgt110514110528%_ (__AST-e _%$e110510%_))
                       (_%$hd110515110531%_ (##car _%$tgt110514110528%_))
                       (_%$tl110516110534%_ (##cdr _%$tgt110514110528%_))
                       (_%hd110538%_ _%$hd110515110531%_)
                       (_%rest110540%_ _%$tl110516110534%_))
                  (if (__AST-id? _%hd110538%_)
                      (_%lp110506%_ _%rest110540%_)
                      '#f))
                (_%$E110512110525%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx110545%_)
        (let ((_%tail?110547%_ __AST-null?))
          (__AST-id-list?__% _%stx110545%_ _%tail?110547%_))))
    (define __AST-id-list?
      (lambda _g110954_
        (let ((_g110953_ (##length _g110954_)))
          (cond ((##fx= _g110953_ 1) (apply __AST-id-list?__0 _g110954_))
                ((##fx= _g110953_ 2) (apply __AST-id-list?__% _g110954_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g110954_))))))
    (define __AST-bind-list?
      (lambda (_%stx110495%_)
        (__AST-id-list?__%
         _%stx110495%_
         (lambda (_%e110497%_)
           (let ((_%$e110499%_ (__AST-null? _%e110497%_)))
             (if _%$e110499%_ _%$e110499%_ (__AST-id? _%e110497%_)))))))
    (define __AST-list?__%
      (lambda (_%stx110448%_ _%tail?110449%_)
        (let _%lp110451%_ ((_%rest110453%_ _%stx110448%_))
          (let* ((_%$e110455%_ _%rest110453%_)
                 (_%$E110457110470%_
                  (lambda ()
                    (let* ((_%$E110458110465%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e110455%_)))
                           (_%rest110468%_ _%$e110455%_))
                      (_%tail?110449%_ _%rest110468%_)))))
            (if (__AST-pair? _%$e110455%_)
                (let* ((_%$tgt110459110473%_ (__AST-e _%$e110455%_))
                       (_%$hd110460110476%_ (##car _%$tgt110459110473%_))
                       (_%$tl110461110479%_ (##cdr _%$tgt110459110473%_))
                       (_%rest110483%_ _%$tl110461110479%_))
                  (_%lp110451%_ _%rest110483%_))
                (_%$E110457110470%_))))))
    (define __AST-list?__0
      (lambda (_%stx110488%_)
        (let ((_%tail?110490%_ __AST-null?))
          (__AST-list?__% _%stx110488%_ _%tail?110490%_))))
    (define __AST-list?
      (lambda _g110956_
        (let ((_g110955_ (##length _g110956_)))
          (cond ((##fx= _g110955_ 1) (apply __AST-list?__0 _g110956_))
                ((##fx= _g110955_ 2) (apply __AST-list?__% _g110956_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g110956_))))))
    (define __AST->list
      (lambda (_%stx110413%_)
        (let* ((_%$e110415%_ _%stx110413%_)
               (_%$E110417110430%_
                (lambda ()
                  (let* ((_%$E110418110425%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e110415%_)))
                         (_%rest110428%_ _%$e110415%_))
                    (__AST-e _%rest110428%_)))))
          (if (__AST-pair? _%$e110415%_)
              (let* ((_%$tgt110419110433%_ (__AST-e _%$e110415%_))
                     (_%$hd110420110436%_ (##car _%$tgt110419110433%_))
                     (_%$tl110421110439%_ (##cdr _%$tgt110419110433%_))
                     (_%hd110443%_ _%$hd110420110436%_)
                     (_%rest110445%_ _%$tl110421110439%_))
                (cons _%hd110443%_ (__AST->list _%rest110445%_)))
              (_%$E110417110430%_)))))
    (define __AST->datum
      (lambda (_%stx110406%_)
        (if (##structure-instance-of? _%stx110406%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx110406%_))
            (if (pair? _%stx110406%_)
                (cons (__AST->datum (##car _%stx110406%_))
                      (__AST->datum (##cdr _%stx110406%_)))
                (if (vector? _%stx110406%_)
                    (vector-map __AST->datum _%stx110406%_)
                    (if (box? _%stx110406%_)
                        (box (__AST->datum (unbox _%stx110406%_)))
                        _%stx110406%_))))))
    (define get-readenv
      (lambda (_%port110404%_)
        (##make-readenv
         _%port110404%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in110392%_)
        (let ((_%e110394%_ (##read-datum-or-eof (get-readenv _%in110392%_))))
          (if (eof-object? (__AST-e _%e110394%_))
              (__AST-e _%e110394%_)
              _%e110394%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in110400%_ (current-input-port)))
          (read-syntax__% _%in110400%_))))
    (define read-syntax
      (lambda _g110958_
        (let ((_g110957_ (##length _g110958_)))
          (cond ((##fx= _g110957_ 0) (apply read-syntax__0 _g110958_))
                ((##fx= _g110957_ 1) (apply read-syntax__% _g110958_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g110958_))))))
    (define read-syntax-from-file
      (lambda (_%path110387%_)
        (let ((_%r110389%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path110387%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r110389%_)
              (cdr (__AST-e (vector-ref _%r110389%_ '1)))
              (error (err-code->string _%r110389%_) _%path110387%_)))))
    (define __wrap-syntax
      (lambda (_%re110384%_ _%e110385%_)
        (if (eof-object? _%e110385%_)
            _%e110385%_
            (##structure AST::t _%e110385%_ (##readenv->locat _%re110384%_)))))
    (define __unwrap-syntax
      (lambda (_%re110381%_ _%e110382%_) (__AST-e _%e110382%_)))
    (define __pp-syntax
      (lambda (_%stx110379%_) (pp (__AST->datum _%stx110379%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt110377%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt110377%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt110377%_ '@list)
          (macro-readtable-brace-handler-set! _%rt110377%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt110377%_
           '#\!
           __read-sharp-bang)
          _%rt110377%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt110373%_ _%kw110374%_)
        (macro-readtable-bracket-handler-set! _%rt110373%_ _%kw110374%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt110370%_ _%kw110371%_)
        (macro-readtable-brace-handler-set! _%rt110370%_ _%kw110371%_)))
    (define __read-sharp-bang
      (lambda (_%re110361%_ _%next110362%_ _%start-pos110363%_)
        (if (eq? _%start-pos110363%_ '0)
            (let* ((_%line110365%_
                    (##read-line
                     (macro-readenv-port _%re110361%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line110367%_
                    (substring
                     _%line110365%_
                     '1
                     (string-length _%line110365%_))))
              (macro-readenv-script-line-set!
               _%re110361%_
               _%script-line110367%_)
              (##script-marker))
            (##read-sharp-bang
             _%re110361%_
             _%next110362%_
             _%start-pos110363%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj110359%_)
        (if (source-location? _%obj110359%_)
            (string? (##locat-container _%obj110359%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj110357%_)
        (if (##locat? _%obj110357%_)
            (##container->path (##locat-container _%obj110357%_))
            '#f)))))

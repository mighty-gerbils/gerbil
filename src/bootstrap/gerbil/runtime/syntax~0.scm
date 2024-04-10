(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1712773524)
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
      (lambda _%$args109243%_
        (apply make-instance SyntaxError::t _%$args109243%_)))
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
      (lambda (_%self108744109125%_ _%port109127%_)
        (let* ((_%self109129%_ _%self108744109125%_)
               (_%self109131%_ _%self109129%_))
          (letrec ((_%location109141%_
                    (lambda ()
                      (let _%lp109203%_ ((_%rest109205%_
                                          (##unchecked-structure-ref
                                           _%self109131%_
                                           '3
                                           '#f
                                           '#f)))
                        (let* ((_%rest109206109214%_ _%rest109205%_)
                               (_%else109208109222%_ (lambda () '#f))
                               (_%K109210109231%_
                                (lambda (_%rest109225%_ _%hd109226%_)
                                  (let ((_%$e109228%_
                                         (__AST-source _%hd109226%_)))
                                    (if _%$e109228%_
                                        _%$e109228%_
                                        (_%lp109203%_ _%rest109225%_))))))
                          (if (##pair? _%rest109206109214%_)
                              (let ((_%hd109211109234%_
                                     (##car _%rest109206109214%_))
                                    (_%tl109212109236%_
                                     (##cdr _%rest109206109214%_)))
                                (let* ((_%hd109239%_ _%hd109211109234%_)
                                       (_%rest109241%_ _%tl109212109236%_))
                                  (_%K109210109231%_
                                   _%rest109241%_
                                   _%hd109239%_)))
                              (_%else109208109222%_)))))))
            (__call-with-parameters
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e109144%_ (_%location109141%_)))
                 (if _%$e109144%_
                     ((lambda (_%where109147%_)
                        (##display-locat _%where109147%_ '#t _%port109127%_))
                      _%$e109144%_)
                     (display '"?")))
               (newline)
               (display '"--- Syntax Error")
               (let ((_%$e109150%_
                      (##unchecked-structure-ref _%self109131%_ '4 '#f '#f)))
                 (if _%$e109150%_
                     ((lambda (_%where109153%_)
                        (displayln
                         '" at "
                         _%where109153%_
                         '": "
                         (##unchecked-structure-ref
                          _%self109131%_
                          '2
                          '#f
                          '#f)))
                      _%$e109150%_)
                     (displayln
                      '": "
                      (##unchecked-structure-ref _%self109131%_ '2 '#f '#f))))
               (let* ((_%self.irritants109155109163%_
                       (##unchecked-structure-ref _%self109131%_ '3 '#f '#f))
                      (_%else109157109171%_ (lambda () '#!void))
                      (_%K109159109184%_
                       (lambda (_%rest109174%_ _%stx109175%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx109175%_)
                         (for-each
                          (lambda (_%detail109177%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail109177%_))
                            (let ((_%$e109179%_
                                   (__AST-source _%detail109177%_)))
                              (if _%$e109179%_
                                  ((lambda (_%loc109182%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc109182%_
                                      '#t
                                      _%port109127%_))
                                   _%$e109179%_)
                                  '#!void))
                            (newline))
                          _%rest109174%_))))
                 (if (##pair? _%self.irritants109155109163%_)
                     (let ((_%hd109160109187%_
                            (##car _%self.irritants109155109163%_))
                           (_%tl109161109189%_
                            (##cdr _%self.irritants109155109163%_)))
                       (let* ((_%stx109192%_ _%hd109160109187%_)
                              (_%rest109194%_ _%tl109161109189%_))
                         (_%K109159109184%_ _%rest109194%_ _%stx109192%_)))
                     '#!void))
               (if (##getenv '"GERBIL_DEBUG" '#f)
                   (let ((_%cont109195109197%_
                          (##unchecked-structure-ref
                           _%self109131%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont109195109197%_
                         (let ((_%cont109200%_ _%cont109195109197%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont109200%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port109127%_)))))
    (__bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message108996%_
               _%irritants108997%_
               _%where108998%_
               _%context108999%_
               _%marks109000%_
               _%phi109001%_)
        (let ((__obj109340
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj109340 _%message108996%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj109340
           _%irritants108997%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj109340 _%where108998%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj109340 _%context108999%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj109340 _%marks109000%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj109340 _%phi109001%_ '6 '#f '#f)
          __obj109340)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where108991%_
               _%message108992%_
               _%stx108993%_
               .
               _%details108994%_)
        (raise (make-syntax-error
                _%message108992%_
                (cons _%stx108993%_ _%details108994%_)
                _%where108991%_
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
      (lambda _%$args108988%_ (apply make-instance AST::t _%$args108988%_)))
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
      (lambda (_%stx108986%_)
        (if (##structure-instance-of? _%stx108986%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx108986%_ '1 '#f '#f)
            _%stx108986%_)))
    (define __AST-source
      (lambda (_%stx108977%_)
        (let _%lp108979%_ ((_%src108981%_ _%stx108977%_))
          (if (##structure-instance-of? _%src108981%_ 'gerbil#AST::t)
              (_%lp108979%_
               (##unchecked-structure-ref _%src108981%_ '2 '#f '#f))
              (if (##locat? _%src108981%_) _%src108981%_ '#f)))))
    (define __AST
      (lambda (_%e108969%_ _%src-stx108970%_)
        (let ((_%src108972%_ (__AST-source _%src-stx108970%_)))
          (if (or (##structure-instance-of? _%e108969%_ 'gerbil#AST::t)
                  (not _%src108972%_))
              _%e108969%_
              (##structure AST::t _%e108969%_ _%src108972%_)))))
    (define __AST-eq?
      (lambda (_%stx108966%_ _%obj108967%_)
        (eq? (__AST-e _%stx108966%_) _%obj108967%_)))
    (define __AST-pair?
      (lambda (_%stx108964%_) (pair? (__AST-e _%stx108964%_))))
    (define __AST-null?
      (lambda (_%stx108962%_) (null? (__AST-e _%stx108962%_))))
    (define __AST-datum?
      (lambda (_%stx108943%_)
        (let* ((_%e108945%_ (__AST-e _%stx108943%_))
               (_%$e108947%_ (number? _%e108945%_)))
          (if _%$e108947%_
              _%$e108947%_
              (let ((_%$e108950%_ (string? _%e108945%_)))
                (if _%$e108950%_
                    _%$e108950%_
                    (let ((_%$e108953%_ (char? _%e108945%_)))
                      (if _%$e108953%_
                          _%$e108953%_
                          (let ((_%$e108956%_ (keyword? _%e108945%_)))
                            (if _%$e108956%_
                                _%$e108956%_
                                (let ((_%$e108959%_ (boolean? _%e108945%_)))
                                  (if _%$e108959%_
                                      _%$e108959%_
                                      (eq? _%e108945%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx108941%_) (symbol? (__AST-e _%stx108941%_))))
    (define __AST-id-list?__%
      (lambda (_%stx108892%_ _%tail?108893%_)
        (let _%lp108895%_ ((_%rest108897%_ _%stx108892%_))
          (let* ((_%$e108899%_ _%rest108897%_)
                 (_%$E108901108914%_
                  (lambda ()
                    (let* ((_%$E108902108909%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e108899%_)))
                           (_%rest108912%_ _%$e108899%_))
                      (_%tail?108893%_ _%rest108912%_)))))
            (if (__AST-pair? _%$e108899%_)
                (let* ((_%$tgt108903108917%_ (__AST-e _%$e108899%_))
                       (_%$hd108904108920%_ (##car _%$tgt108903108917%_))
                       (_%$tl108905108923%_ (##cdr _%$tgt108903108917%_))
                       (_%hd108927%_ _%$hd108904108920%_)
                       (_%rest108929%_ _%$tl108905108923%_))
                  (if (__AST-id? _%hd108927%_)
                      (_%lp108895%_ _%rest108929%_)
                      '#f))
                (_%$E108901108914%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx108934%_)
        (let ((_%tail?108936%_ __AST-null?))
          (__AST-id-list?__% _%stx108934%_ _%tail?108936%_))))
    (define __AST-id-list?
      (lambda _g109343_
        (let ((_g109342_ (##length _g109343_)))
          (cond ((##fx= _g109342_ 1) (apply __AST-id-list?__0 _g109343_))
                ((##fx= _g109342_ 2) (apply __AST-id-list?__% _g109343_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g109343_))))))
    (define __AST-bind-list?
      (lambda (_%stx108884%_)
        (__AST-id-list?__%
         _%stx108884%_
         (lambda (_%e108886%_)
           (let ((_%$e108888%_ (__AST-null? _%e108886%_)))
             (if _%$e108888%_ _%$e108888%_ (__AST-id? _%e108886%_)))))))
    (define __AST-list?__%
      (lambda (_%stx108837%_ _%tail?108838%_)
        (let _%lp108840%_ ((_%rest108842%_ _%stx108837%_))
          (let* ((_%$e108844%_ _%rest108842%_)
                 (_%$E108846108859%_
                  (lambda ()
                    (let* ((_%$E108847108854%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e108844%_)))
                           (_%rest108857%_ _%$e108844%_))
                      (_%tail?108838%_ _%rest108857%_)))))
            (if (__AST-pair? _%$e108844%_)
                (let* ((_%$tgt108848108862%_ (__AST-e _%$e108844%_))
                       (_%$hd108849108865%_ (##car _%$tgt108848108862%_))
                       (_%$tl108850108868%_ (##cdr _%$tgt108848108862%_))
                       (_%rest108872%_ _%$tl108850108868%_))
                  (_%lp108840%_ _%rest108872%_))
                (_%$E108846108859%_))))))
    (define __AST-list?__0
      (lambda (_%stx108877%_)
        (let ((_%tail?108879%_ __AST-null?))
          (__AST-list?__% _%stx108877%_ _%tail?108879%_))))
    (define __AST-list?
      (lambda _g109345_
        (let ((_g109344_ (##length _g109345_)))
          (cond ((##fx= _g109344_ 1) (apply __AST-list?__0 _g109345_))
                ((##fx= _g109344_ 2) (apply __AST-list?__% _g109345_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g109345_))))))
    (define __AST->list
      (lambda (_%stx108802%_)
        (let* ((_%$e108804%_ _%stx108802%_)
               (_%$E108806108819%_
                (lambda ()
                  (let* ((_%$E108807108814%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e108804%_)))
                         (_%rest108817%_ _%$e108804%_))
                    (__AST-e _%rest108817%_)))))
          (if (__AST-pair? _%$e108804%_)
              (let* ((_%$tgt108808108822%_ (__AST-e _%$e108804%_))
                     (_%$hd108809108825%_ (##car _%$tgt108808108822%_))
                     (_%$tl108810108828%_ (##cdr _%$tgt108808108822%_))
                     (_%hd108832%_ _%$hd108809108825%_)
                     (_%rest108834%_ _%$tl108810108828%_))
                (cons _%hd108832%_ (__AST->list _%rest108834%_)))
              (_%$E108806108819%_)))))
    (define __AST->datum
      (lambda (_%stx108795%_)
        (if (##structure-instance-of? _%stx108795%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx108795%_))
            (if (pair? _%stx108795%_)
                (cons (__AST->datum (car _%stx108795%_))
                      (__AST->datum (cdr _%stx108795%_)))
                (if (vector? _%stx108795%_)
                    (vector-map __AST->datum _%stx108795%_)
                    (if (box? _%stx108795%_)
                        (box (__AST->datum (unbox _%stx108795%_)))
                        _%stx108795%_))))))
    (define get-readenv
      (lambda (_%port108793%_)
        (##make-readenv
         _%port108793%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in108781%_)
        (let ((_%e108783%_ (##read-datum-or-eof (get-readenv _%in108781%_))))
          (if (eof-object? (__AST-e _%e108783%_))
              (__AST-e _%e108783%_)
              _%e108783%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in108789%_ (current-input-port)))
          (read-syntax__% _%in108789%_))))
    (define read-syntax
      (lambda _g109347_
        (let ((_g109346_ (##length _g109347_)))
          (cond ((##fx= _g109346_ 0) (apply read-syntax__0 _g109347_))
                ((##fx= _g109346_ 1) (apply read-syntax__% _g109347_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g109347_))))))
    (define read-syntax-from-file
      (lambda (_%path108776%_)
        (let ((_%r108778%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path108776%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r108778%_)
              (cdr (__AST-e (vector-ref _%r108778%_ '1)))
              (error (err-code->string _%r108778%_) _%path108776%_)))))
    (define __wrap-syntax
      (lambda (_%re108773%_ _%e108774%_)
        (if (eof-object? _%e108774%_)
            _%e108774%_
            (##structure AST::t _%e108774%_ (##readenv->locat _%re108773%_)))))
    (define __unwrap-syntax
      (lambda (_%re108770%_ _%e108771%_) (__AST-e _%e108771%_)))
    (define __pp-syntax
      (lambda (_%stx108768%_) (pp (__AST->datum _%stx108768%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt108766%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt108766%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt108766%_ '@list)
          (macro-readtable-brace-handler-set! _%rt108766%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt108766%_
           '#\!
           __read-sharp-bang)
          _%rt108766%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt108762%_ _%kw108763%_)
        (macro-readtable-bracket-handler-set! _%rt108762%_ _%kw108763%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt108759%_ _%kw108760%_)
        (macro-readtable-brace-handler-set! _%rt108759%_ _%kw108760%_)))
    (define __read-sharp-bang
      (lambda (_%re108750%_ _%next108751%_ _%start-pos108752%_)
        (if (eq? _%start-pos108752%_ '0)
            (let* ((_%line108754%_
                    (##read-line
                     (macro-readenv-port _%re108750%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line108756%_
                    (substring
                     _%line108754%_
                     '1
                     (string-length _%line108754%_))))
              (macro-readenv-script-line-set!
               _%re108750%_
               _%script-line108756%_)
              (##script-marker))
            (##read-sharp-bang
             _%re108750%_
             _%next108751%_
             _%start-pos108752%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj108748%_)
        (if (source-location? _%obj108748%_)
            (string? (##locat-container _%obj108748%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj108746%_)
        (if (##locat? _%obj108746%_)
            (##container->path (##locat-container _%obj108746%_))
            '#f)))))

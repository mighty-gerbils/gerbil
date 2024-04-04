(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1712256086)
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
      (lambda _%$args109163%_
        (apply make-instance SyntaxError::t _%$args109163%_)))
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
      (lambda (_%self109047%_ _%port109048%_)
        (let ((_%self109051%_ _%self109047%_))
          (letrec ((_%location109061%_
                    (lambda ()
                      (let _%lp109123%_ ((_%rest109125%_
                                          (##unchecked-structure-ref
                                           _%self109051%_
                                           '3
                                           '#f
                                           '#f)))
                        (let* ((_%rest109126109134%_ _%rest109125%_)
                               (_%else109128109142%_ (lambda () '#f))
                               (_%K109130109151%_
                                (lambda (_%rest109145%_ _%hd109146%_)
                                  (let ((_%$e109148%_
                                         (__AST-source _%hd109146%_)))
                                    (if _%$e109148%_
                                        _%$e109148%_
                                        (_%lp109123%_ _%rest109145%_))))))
                          (if (##pair? _%rest109126109134%_)
                              (let ((_%hd109131109154%_
                                     (##car _%rest109126109134%_))
                                    (_%tl109132109156%_
                                     (##cdr _%rest109126109134%_)))
                                (let* ((_%hd109159%_ _%hd109131109154%_)
                                       (_%rest109161%_ _%tl109132109156%_))
                                  (_%K109130109151%_
                                   _%rest109161%_
                                   _%hd109159%_)))
                              (_%else109128109142%_)))))))
            (__call-with-parameters
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e109064%_ (_%location109061%_)))
                 (if _%$e109064%_
                     ((lambda (_%where109067%_)
                        (##display-locat _%where109067%_ '#t _%port109048%_))
                      _%$e109064%_)
                     (let () (display '"?"))))
               (newline)
               (display '"--- Syntax Error")
               (let ((_%$e109070%_
                      (##unchecked-structure-ref _%self109051%_ '4 '#f '#f)))
                 (if _%$e109070%_
                     ((lambda (_%where109073%_)
                        (displayln
                         '" at "
                         _%where109073%_
                         '": "
                         (##unchecked-structure-ref
                          _%self109051%_
                          '2
                          '#f
                          '#f)))
                      _%$e109070%_)
                     (let ()
                       (displayln
                        '": "
                        (##unchecked-structure-ref
                         _%self109051%_
                         '2
                         '#f
                         '#f)))))
               (let* ((_%self.irritants109075109083%_
                       (##unchecked-structure-ref _%self109051%_ '3 '#f '#f))
                      (_%else109077109091%_ (lambda () '#!void))
                      (_%K109079109104%_
                       (lambda (_%rest109094%_ _%stx109095%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx109095%_)
                         (for-each
                          (lambda (_%detail109097%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail109097%_))
                            (let ((_%$e109099%_
                                   (__AST-source _%detail109097%_)))
                              (if _%$e109099%_
                                  ((lambda (_%loc109102%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc109102%_
                                      '#t
                                      _%port109048%_))
                                   _%$e109099%_)
                                  '#!void))
                            (newline))
                          _%rest109094%_))))
                 (if (##pair? _%self.irritants109075109083%_)
                     (let ((_%hd109080109107%_
                            (##car _%self.irritants109075109083%_))
                           (_%tl109081109109%_
                            (##cdr _%self.irritants109075109083%_)))
                       (let* ((_%stx109112%_ _%hd109080109107%_)
                              (_%rest109114%_ _%tl109081109109%_))
                         (_%K109079109104%_ _%rest109114%_ _%stx109112%_)))
                     '#!void))
               (if (##getenv '"GERBIL_DEBUG" '#f)
                   (let ((_%cont109115109117%_
                          (##unchecked-structure-ref
                           _%self109051%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont109115109117%_
                         (let ((_%cont109120%_ _%cont109115109117%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont109120%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port109048%_)))))
    (__bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message108918%_
               _%irritants108919%_
               _%where108920%_
               _%context108921%_
               _%marks108922%_
               _%phi108923%_)
        (let ((__obj109260
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj109260 _%message108918%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj109260
           _%irritants108919%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj109260 _%where108920%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj109260 _%context108921%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj109260 _%marks108922%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj109260 _%phi108923%_ '6 '#f '#f)
          __obj109260)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where108913%_
               _%message108914%_
               _%stx108915%_
               .
               _%details108916%_)
        (raise (make-syntax-error
                _%message108914%_
                (cons _%stx108915%_ _%details108916%_)
                _%where108913%_
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
      (lambda _%$args108910%_ (apply make-instance AST::t _%$args108910%_)))
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
      (lambda (_%stx108908%_)
        (if (##structure-instance-of? _%stx108908%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx108908%_ '1 '#f '#f)
            _%stx108908%_)))
    (define __AST-source
      (lambda (_%stx108899%_)
        (let _%lp108901%_ ((_%src108903%_ _%stx108899%_))
          (if (##structure-instance-of? _%src108903%_ 'gerbil#AST::t)
              (let ()
                (_%lp108901%_
                 (##unchecked-structure-ref _%src108903%_ '2 '#f '#f)))
              (if (##locat? _%src108903%_)
                  (let () _%src108903%_)
                  (let () '#f))))))
    (define __AST
      (lambda (_%e108891%_ _%src-stx108892%_)
        (let ((_%src108894%_ (__AST-source _%src-stx108892%_)))
          (if (or (##structure-instance-of? _%e108891%_ 'gerbil#AST::t)
                  (not _%src108894%_))
              _%e108891%_
              (##structure AST::t _%e108891%_ _%src108894%_)))))
    (define __AST-eq?
      (lambda (_%stx108888%_ _%obj108889%_)
        (eq? (__AST-e _%stx108888%_) _%obj108889%_)))
    (define __AST-pair?
      (lambda (_%stx108886%_) (pair? (__AST-e _%stx108886%_))))
    (define __AST-null?
      (lambda (_%stx108884%_) (null? (__AST-e _%stx108884%_))))
    (define __AST-datum?
      (lambda (_%stx108865%_)
        (let* ((_%e108867%_ (__AST-e _%stx108865%_))
               (_%$e108869%_ (number? _%e108867%_)))
          (if _%$e108869%_
              _%$e108869%_
              (let ((_%$e108872%_ (string? _%e108867%_)))
                (if _%$e108872%_
                    _%$e108872%_
                    (let ((_%$e108875%_ (char? _%e108867%_)))
                      (if _%$e108875%_
                          _%$e108875%_
                          (let ((_%$e108878%_ (keyword? _%e108867%_)))
                            (if _%$e108878%_
                                _%$e108878%_
                                (let ((_%$e108881%_ (boolean? _%e108867%_)))
                                  (if _%$e108881%_
                                      _%$e108881%_
                                      (eq? _%e108867%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx108863%_) (symbol? (__AST-e _%stx108863%_))))
    (define __AST-id-list?__%
      (lambda (_%stx108814%_ _%tail?108815%_)
        (let _%lp108817%_ ((_%rest108819%_ _%stx108814%_))
          (let* ((_%$e108821%_ _%rest108819%_)
                 (_%$E108823108836%_
                  (lambda ()
                    (let* ((_%$E108824108831%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e108821%_)))
                           (_%rest108834%_ _%$e108821%_))
                      (_%tail?108815%_ _%rest108834%_)))))
            (if (__AST-pair? _%$e108821%_)
                (let* ((_%$tgt108825108839%_ (__AST-e _%$e108821%_))
                       (_%$hd108826108842%_ (##car _%$tgt108825108839%_))
                       (_%$tl108827108845%_ (##cdr _%$tgt108825108839%_)))
                  (let* ((_%hd108849%_ _%$hd108826108842%_)
                         (_%rest108851%_ _%$tl108827108845%_))
                    (if (__AST-id? _%hd108849%_)
                        (_%lp108817%_ _%rest108851%_)
                        '#f)))
                (_%$E108823108836%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx108856%_)
        (let ((_%tail?108858%_ __AST-null?))
          (__AST-id-list?__% _%stx108856%_ _%tail?108858%_))))
    (define __AST-id-list?
      (lambda _g109263_
        (let ((_g109262_ (##length _g109263_)))
          (cond ((##fx= _g109262_ 1)
                 (apply (lambda (_%stx108856%_)
                          (__AST-id-list?__0 _%stx108856%_))
                        _g109263_))
                ((##fx= _g109262_ 2)
                 (apply (lambda (_%stx108860%_ _%tail?108861%_)
                          (__AST-id-list?__% _%stx108860%_ _%tail?108861%_))
                        _g109263_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g109263_))))))
    (define __AST-bind-list?
      (lambda (_%stx108806%_)
        (__AST-id-list?__%
         _%stx108806%_
         (lambda (_%e108808%_)
           (let ((_%$e108810%_ (__AST-null? _%e108808%_)))
             (if _%$e108810%_ _%$e108810%_ (__AST-id? _%e108808%_)))))))
    (define __AST-list?__%
      (lambda (_%stx108759%_ _%tail?108760%_)
        (let _%lp108762%_ ((_%rest108764%_ _%stx108759%_))
          (let* ((_%$e108766%_ _%rest108764%_)
                 (_%$E108768108781%_
                  (lambda ()
                    (let* ((_%$E108769108776%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e108766%_)))
                           (_%rest108779%_ _%$e108766%_))
                      (_%tail?108760%_ _%rest108779%_)))))
            (if (__AST-pair? _%$e108766%_)
                (let* ((_%$tgt108770108784%_ (__AST-e _%$e108766%_))
                       (_%$hd108771108787%_ (##car _%$tgt108770108784%_))
                       (_%$tl108772108790%_ (##cdr _%$tgt108770108784%_))
                       (_%rest108794%_ _%$tl108772108790%_))
                  (_%lp108762%_ _%rest108794%_))
                (_%$E108768108781%_))))))
    (define __AST-list?__0
      (lambda (_%stx108799%_)
        (let ((_%tail?108801%_ __AST-null?))
          (__AST-list?__% _%stx108799%_ _%tail?108801%_))))
    (define __AST-list?
      (lambda _g109265_
        (let ((_g109264_ (##length _g109265_)))
          (cond ((##fx= _g109264_ 1)
                 (apply (lambda (_%stx108799%_) (__AST-list?__0 _%stx108799%_))
                        _g109265_))
                ((##fx= _g109264_ 2)
                 (apply (lambda (_%stx108803%_ _%tail?108804%_)
                          (__AST-list?__% _%stx108803%_ _%tail?108804%_))
                        _g109265_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g109265_))))))
    (define __AST->list
      (lambda (_%stx108724%_)
        (let* ((_%$e108726%_ _%stx108724%_)
               (_%$E108728108741%_
                (lambda ()
                  (let* ((_%$E108729108736%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e108726%_)))
                         (_%rest108739%_ _%$e108726%_))
                    (__AST-e _%rest108739%_)))))
          (if (__AST-pair? _%$e108726%_)
              (let* ((_%$tgt108730108744%_ (__AST-e _%$e108726%_))
                     (_%$hd108731108747%_ (##car _%$tgt108730108744%_))
                     (_%$tl108732108750%_ (##cdr _%$tgt108730108744%_)))
                (let* ((_%hd108754%_ _%$hd108731108747%_)
                       (_%rest108756%_ _%$tl108732108750%_))
                  (cons _%hd108754%_ (__AST->list _%rest108756%_))))
              (_%$E108728108741%_)))))
    (define __AST->datum
      (lambda (_%stx108717%_)
        (if (##structure-instance-of? _%stx108717%_ 'gerbil#AST::t)
            (let () (__AST->datum (__AST-e _%stx108717%_)))
            (if (pair? _%stx108717%_)
                (let ()
                  (cons (__AST->datum (car _%stx108717%_))
                        (__AST->datum (cdr _%stx108717%_))))
                (if (vector? _%stx108717%_)
                    (let () (vector-map __AST->datum _%stx108717%_))
                    (if (box? _%stx108717%_)
                        (let () (box (__AST->datum (unbox _%stx108717%_))))
                        (let () _%stx108717%_)))))))
    (define get-readenv
      (lambda (_%port108715%_)
        (##make-readenv
         _%port108715%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in108703%_)
        (let ((_%e108705%_ (##read-datum-or-eof (get-readenv _%in108703%_))))
          (if (eof-object? (__AST-e _%e108705%_))
              (__AST-e _%e108705%_)
              _%e108705%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in108711%_ (current-input-port)))
          (read-syntax__% _%in108711%_))))
    (define read-syntax
      (lambda _g109267_
        (let ((_g109266_ (##length _g109267_)))
          (cond ((##fx= _g109266_ 0)
                 (apply (lambda () (read-syntax__0)) _g109267_))
                ((##fx= _g109266_ 1)
                 (apply (lambda (_%in108713%_) (read-syntax__% _%in108713%_))
                        _g109267_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g109267_))))))
    (define read-syntax-from-file
      (lambda (_%path108698%_)
        (let ((_%r108700%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path108698%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r108700%_)
              (cdr (__AST-e (vector-ref _%r108700%_ '1)))
              (error (err-code->string _%r108700%_) _%path108698%_)))))
    (define __wrap-syntax
      (lambda (_%re108695%_ _%e108696%_)
        (if (eof-object? _%e108696%_)
            _%e108696%_
            (##structure AST::t _%e108696%_ (##readenv->locat _%re108695%_)))))
    (define __unwrap-syntax
      (lambda (_%re108692%_ _%e108693%_) (__AST-e _%e108693%_)))
    (define __pp-syntax
      (lambda (_%stx108690%_) (pp (__AST->datum _%stx108690%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt108688%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt108688%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt108688%_ '@list)
          (macro-readtable-brace-handler-set! _%rt108688%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt108688%_
           '#\!
           __read-sharp-bang)
          _%rt108688%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt108684%_ _%kw108685%_)
        (macro-readtable-bracket-handler-set! _%rt108684%_ _%kw108685%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt108681%_ _%kw108682%_)
        (macro-readtable-brace-handler-set! _%rt108681%_ _%kw108682%_)))
    (define __read-sharp-bang
      (lambda (_%re108672%_ _%next108673%_ _%start-pos108674%_)
        (if (eq? _%start-pos108674%_ '0)
            (let* ((_%line108676%_
                    (##read-line
                     (macro-readenv-port _%re108672%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line108678%_
                    (substring
                     _%line108676%_
                     '1
                     (string-length _%line108676%_))))
              (macro-readenv-script-line-set!
               _%re108672%_
               _%script-line108678%_)
              (##script-marker))
            (##read-sharp-bang
             _%re108672%_
             _%next108673%_
             _%start-pos108674%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj108670%_)
        (if (source-location? _%obj108670%_)
            (string? (##locat-container _%obj108670%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj108668%_)
        (if (##locat? _%obj108668%_)
            (##container->path (##locat-container _%obj108668%_))
            '#f)))))

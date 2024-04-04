(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1712246555)
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
      (lambda _%$args109180%_
        (apply make-instance SyntaxError::t _%$args109180%_)))
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
      (lambda (_%self109064%_ _%port109065%_)
        (let ((_%self109068%_ _%self109064%_))
          (letrec ((_%location109078%_
                    (lambda ()
                      (let _%lp109140%_ ((_%rest109142%_
                                          (##unchecked-structure-ref
                                           _%self109068%_
                                           '3
                                           '#f
                                           '#f)))
                        (let* ((_%rest109143109151%_ _%rest109142%_)
                               (_%else109145109159%_ (lambda () '#f))
                               (_%K109147109168%_
                                (lambda (_%rest109162%_ _%hd109163%_)
                                  (let ((_%$e109165%_
                                         (__AST-source _%hd109163%_)))
                                    (if _%$e109165%_
                                        _%$e109165%_
                                        (_%lp109140%_ _%rest109162%_))))))
                          (if (##pair? _%rest109143109151%_)
                              (let ((_%hd109148109171%_
                                     (##car _%rest109143109151%_))
                                    (_%tl109149109173%_
                                     (##cdr _%rest109143109151%_)))
                                (let* ((_%hd109176%_ _%hd109148109171%_)
                                       (_%rest109178%_ _%tl109149109173%_))
                                  (_%K109147109168%_
                                   _%rest109178%_
                                   _%hd109176%_)))
                              (_%else109145109159%_)))))))
            (__call-with-parameters
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e109081%_ (_%location109078%_)))
                 (if _%$e109081%_
                     ((lambda (_%where109084%_)
                        (##display-locat _%where109084%_ '#t _%port109065%_))
                      _%$e109081%_)
                     (let () (display '"?"))))
               (newline)
               (display '"--- Syntax Error")
               (let ((_%$e109087%_
                      (##unchecked-structure-ref _%self109068%_ '4 '#f '#f)))
                 (if _%$e109087%_
                     ((lambda (_%where109090%_)
                        (displayln
                         '" at "
                         _%where109090%_
                         '": "
                         (##unchecked-structure-ref
                          _%self109068%_
                          '2
                          '#f
                          '#f)))
                      _%$e109087%_)
                     (let ()
                       (displayln
                        '": "
                        (##unchecked-structure-ref
                         _%self109068%_
                         '2
                         '#f
                         '#f)))))
               (let* ((_%self.irritants109092109100%_
                       (##unchecked-structure-ref _%self109068%_ '3 '#f '#f))
                      (_%else109094109108%_ (lambda () '#!void))
                      (_%K109096109121%_
                       (lambda (_%rest109111%_ _%stx109112%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx109112%_)
                         (for-each
                          (lambda (_%detail109114%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail109114%_))
                            (let ((_%$e109116%_
                                   (__AST-source _%detail109114%_)))
                              (if _%$e109116%_
                                  ((lambda (_%loc109119%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc109119%_
                                      '#t
                                      _%port109065%_))
                                   _%$e109116%_)
                                  '#!void))
                            (newline))
                          _%rest109111%_))))
                 (if (##pair? _%self.irritants109092109100%_)
                     (let ((_%hd109097109124%_
                            (##car _%self.irritants109092109100%_))
                           (_%tl109098109126%_
                            (##cdr _%self.irritants109092109100%_)))
                       (let* ((_%stx109129%_ _%hd109097109124%_)
                              (_%rest109131%_ _%tl109098109126%_))
                         (_%K109096109121%_ _%rest109131%_ _%stx109129%_)))
                     '#!void))
               (if (##getenv '"GERBIL_DEBUG" '#f)
                   (let ((_%cont109132109134%_
                          (##unchecked-structure-ref
                           _%self109068%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont109132109134%_
                         (let ((_%cont109137%_ _%cont109132109134%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont109137%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port109065%_)))))
    (__bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message108935%_
               _%irritants108936%_
               _%where108937%_
               _%context108938%_
               _%marks108939%_
               _%phi108940%_)
        (let ((__obj109277
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj109277 _%message108935%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj109277
           _%irritants108936%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj109277 _%where108937%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj109277 _%context108938%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj109277 _%marks108939%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj109277 _%phi108940%_ '6 '#f '#f)
          __obj109277)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where108930%_
               _%message108931%_
               _%stx108932%_
               .
               _%details108933%_)
        (raise (make-syntax-error
                _%message108931%_
                (cons _%stx108932%_ _%details108933%_)
                _%where108930%_
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
      (lambda _%$args108927%_ (apply make-instance AST::t _%$args108927%_)))
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
      (lambda (_%stx108925%_)
        (if (##structure-instance-of? _%stx108925%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx108925%_ '1 '#f '#f)
            _%stx108925%_)))
    (define __AST-source
      (lambda (_%stx108916%_)
        (let _%lp108918%_ ((_%src108920%_ _%stx108916%_))
          (if (##structure-instance-of? _%src108920%_ 'gerbil#AST::t)
              (let ()
                (_%lp108918%_
                 (##unchecked-structure-ref _%src108920%_ '2 '#f '#f)))
              (if (##locat? _%src108920%_)
                  (let () _%src108920%_)
                  (let () '#f))))))
    (define __AST
      (lambda (_%e108908%_ _%src-stx108909%_)
        (let ((_%src108911%_ (__AST-source _%src-stx108909%_)))
          (if (or (##structure-instance-of? _%e108908%_ 'gerbil#AST::t)
                  (not _%src108911%_))
              _%e108908%_
              (##structure AST::t _%e108908%_ _%src108911%_)))))
    (define __AST-eq?
      (lambda (_%stx108905%_ _%obj108906%_)
        (eq? (__AST-e _%stx108905%_) _%obj108906%_)))
    (define __AST-pair?
      (lambda (_%stx108903%_) (pair? (__AST-e _%stx108903%_))))
    (define __AST-null?
      (lambda (_%stx108901%_) (null? (__AST-e _%stx108901%_))))
    (define __AST-datum?
      (lambda (_%stx108882%_)
        (let* ((_%e108884%_ (__AST-e _%stx108882%_))
               (_%$e108886%_ (number? _%e108884%_)))
          (if _%$e108886%_
              _%$e108886%_
              (let ((_%$e108889%_ (string? _%e108884%_)))
                (if _%$e108889%_
                    _%$e108889%_
                    (let ((_%$e108892%_ (char? _%e108884%_)))
                      (if _%$e108892%_
                          _%$e108892%_
                          (let ((_%$e108895%_ (keyword? _%e108884%_)))
                            (if _%$e108895%_
                                _%$e108895%_
                                (let ((_%$e108898%_ (boolean? _%e108884%_)))
                                  (if _%$e108898%_
                                      _%$e108898%_
                                      (eq? _%e108884%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx108880%_) (symbol? (__AST-e _%stx108880%_))))
    (define __AST-id-list?__%
      (lambda (_%stx108831%_ _%tail?108832%_)
        (let _%lp108834%_ ((_%rest108836%_ _%stx108831%_))
          (let* ((_%$e108838%_ _%rest108836%_)
                 (_%$E108840108853%_
                  (lambda ()
                    (let* ((_%$E108841108848%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e108838%_)))
                           (_%rest108851%_ _%$e108838%_))
                      (_%tail?108832%_ _%rest108851%_)))))
            (if (__AST-pair? _%$e108838%_)
                (let* ((_%$tgt108842108856%_ (__AST-e _%$e108838%_))
                       (_%$hd108843108859%_ (##car _%$tgt108842108856%_))
                       (_%$tl108844108862%_ (##cdr _%$tgt108842108856%_)))
                  (let* ((_%hd108866%_ _%$hd108843108859%_)
                         (_%rest108868%_ _%$tl108844108862%_))
                    (if (__AST-id? _%hd108866%_)
                        (_%lp108834%_ _%rest108868%_)
                        '#f)))
                (_%$E108840108853%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx108873%_)
        (let ((_%tail?108875%_ __AST-null?))
          (__AST-id-list?__% _%stx108873%_ _%tail?108875%_))))
    (define __AST-id-list?
      (lambda _g109280_
        (let ((_g109279_ (##length _g109280_)))
          (cond ((##fx= _g109279_ 1)
                 (apply (lambda (_%stx108873%_)
                          (__AST-id-list?__0 _%stx108873%_))
                        _g109280_))
                ((##fx= _g109279_ 2)
                 (apply (lambda (_%stx108877%_ _%tail?108878%_)
                          (__AST-id-list?__% _%stx108877%_ _%tail?108878%_))
                        _g109280_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g109280_))))))
    (define __AST-bind-list?
      (lambda (_%stx108823%_)
        (__AST-id-list?__%
         _%stx108823%_
         (lambda (_%e108825%_)
           (let ((_%$e108827%_ (__AST-null? _%e108825%_)))
             (if _%$e108827%_ _%$e108827%_ (__AST-id? _%e108825%_)))))))
    (define __AST-list?__%
      (lambda (_%stx108776%_ _%tail?108777%_)
        (let _%lp108779%_ ((_%rest108781%_ _%stx108776%_))
          (let* ((_%$e108783%_ _%rest108781%_)
                 (_%$E108785108798%_
                  (lambda ()
                    (let* ((_%$E108786108793%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e108783%_)))
                           (_%rest108796%_ _%$e108783%_))
                      (_%tail?108777%_ _%rest108796%_)))))
            (if (__AST-pair? _%$e108783%_)
                (let* ((_%$tgt108787108801%_ (__AST-e _%$e108783%_))
                       (_%$hd108788108804%_ (##car _%$tgt108787108801%_))
                       (_%$tl108789108807%_ (##cdr _%$tgt108787108801%_))
                       (_%rest108811%_ _%$tl108789108807%_))
                  (_%lp108779%_ _%rest108811%_))
                (_%$E108785108798%_))))))
    (define __AST-list?__0
      (lambda (_%stx108816%_)
        (let ((_%tail?108818%_ __AST-null?))
          (__AST-list?__% _%stx108816%_ _%tail?108818%_))))
    (define __AST-list?
      (lambda _g109282_
        (let ((_g109281_ (##length _g109282_)))
          (cond ((##fx= _g109281_ 1)
                 (apply (lambda (_%stx108816%_) (__AST-list?__0 _%stx108816%_))
                        _g109282_))
                ((##fx= _g109281_ 2)
                 (apply (lambda (_%stx108820%_ _%tail?108821%_)
                          (__AST-list?__% _%stx108820%_ _%tail?108821%_))
                        _g109282_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g109282_))))))
    (define __AST->list
      (lambda (_%stx108741%_)
        (let* ((_%$e108743%_ _%stx108741%_)
               (_%$E108745108758%_
                (lambda ()
                  (let* ((_%$E108746108753%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e108743%_)))
                         (_%rest108756%_ _%$e108743%_))
                    (__AST-e _%rest108756%_)))))
          (if (__AST-pair? _%$e108743%_)
              (let* ((_%$tgt108747108761%_ (__AST-e _%$e108743%_))
                     (_%$hd108748108764%_ (##car _%$tgt108747108761%_))
                     (_%$tl108749108767%_ (##cdr _%$tgt108747108761%_)))
                (let* ((_%hd108771%_ _%$hd108748108764%_)
                       (_%rest108773%_ _%$tl108749108767%_))
                  (cons _%hd108771%_ (__AST->list _%rest108773%_))))
              (_%$E108745108758%_)))))
    (define __AST->datum
      (lambda (_%stx108734%_)
        (if (##structure-instance-of? _%stx108734%_ 'gerbil#AST::t)
            (let () (__AST->datum (__AST-e _%stx108734%_)))
            (if (pair? _%stx108734%_)
                (let ()
                  (cons (__AST->datum (car _%stx108734%_))
                        (__AST->datum (cdr _%stx108734%_))))
                (if (vector? _%stx108734%_)
                    (let () (vector-map __AST->datum _%stx108734%_))
                    (if (box? _%stx108734%_)
                        (let () (box (__AST->datum (unbox _%stx108734%_))))
                        (let () _%stx108734%_)))))))
    (define get-readenv
      (lambda (_%port108732%_)
        (##make-readenv
         _%port108732%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in108720%_)
        (let ((_%e108722%_ (##read-datum-or-eof (get-readenv _%in108720%_))))
          (if (eof-object? (__AST-e _%e108722%_))
              (__AST-e _%e108722%_)
              _%e108722%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in108728%_ (current-input-port)))
          (read-syntax__% _%in108728%_))))
    (define read-syntax
      (lambda _g109284_
        (let ((_g109283_ (##length _g109284_)))
          (cond ((##fx= _g109283_ 0)
                 (apply (lambda () (read-syntax__0)) _g109284_))
                ((##fx= _g109283_ 1)
                 (apply (lambda (_%in108730%_) (read-syntax__% _%in108730%_))
                        _g109284_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g109284_))))))
    (define read-syntax-from-file
      (lambda (_%path108715%_)
        (let ((_%r108717%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path108715%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r108717%_)
              (cdr (__AST-e (vector-ref _%r108717%_ '1)))
              (error (err-code->string _%r108717%_) _%path108715%_)))))
    (define __wrap-syntax
      (lambda (_%re108712%_ _%e108713%_)
        (if (eof-object? _%e108713%_)
            _%e108713%_
            (##structure AST::t _%e108713%_ (##readenv->locat _%re108712%_)))))
    (define __unwrap-syntax
      (lambda (_%re108709%_ _%e108710%_) (__AST-e _%e108710%_)))
    (define __pp-syntax
      (lambda (_%stx108707%_) (pp (__AST->datum _%stx108707%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt108705%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt108705%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt108705%_ '@list)
          (macro-readtable-brace-handler-set! _%rt108705%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt108705%_
           '#\!
           __read-sharp-bang)
          _%rt108705%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt108701%_ _%kw108702%_)
        (macro-readtable-bracket-handler-set! _%rt108701%_ _%kw108702%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt108698%_ _%kw108699%_)
        (macro-readtable-brace-handler-set! _%rt108698%_ _%kw108699%_)))
    (define __read-sharp-bang
      (lambda (_%re108689%_ _%next108690%_ _%start-pos108691%_)
        (if (eq? _%start-pos108691%_ '0)
            (let* ((_%line108693%_
                    (##read-line
                     (macro-readenv-port _%re108689%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line108695%_
                    (substring
                     _%line108693%_
                     '1
                     (string-length _%line108693%_))))
              (macro-readenv-script-line-set!
               _%re108689%_
               _%script-line108695%_)
              (##script-marker))
            (##read-sharp-bang
             _%re108689%_
             _%next108690%_
             _%start-pos108691%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj108687%_)
        (if (source-location? _%obj108687%_)
            (string? (##locat-container _%obj108687%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj108685%_)
        (if (##locat? _%obj108685%_)
            (##container->path (##locat-container _%obj108685%_))
            '#f)))))

(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1712084995)
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
      (lambda _%$args108450%_
        (apply make-instance SyntaxError::t _%$args108450%_)))
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
      (lambda (_%self108334%_ _%port108335%_)
        (let ()
          (let ((_%self108338%_ _%self108334%_))
            (let ()
              (letrec ((_%location108348%_
                        (lambda ()
                          (let _%lp108410%_ ((_%rest108412%_
                                              (##unchecked-structure-ref
                                               _%self108338%_
                                               '3
                                               '#f
                                               '#f)))
                            (let* ((_%rest108413108421%_ _%rest108412%_)
                                   (_%else108415108429%_ (lambda () '#f))
                                   (_%K108417108438%_
                                    (lambda (_%rest108432%_ _%hd108433%_)
                                      (let ((_%$e108435%_
                                             (__AST-source _%hd108433%_)))
                                        (if _%$e108435%_
                                            _%$e108435%_
                                            (_%lp108410%_ _%rest108432%_))))))
                              (if (##pair? _%rest108413108421%_)
                                  (let ((_%hd108418108441%_
                                         (##car _%rest108413108421%_))
                                        (_%tl108419108443%_
                                         (##cdr _%rest108413108421%_)))
                                    (let* ((_%hd108446%_ _%hd108418108441%_)
                                           (_%rest108448%_ _%tl108419108443%_))
                                      (_%K108417108438%_
                                       _%rest108448%_
                                       _%hd108446%_)))
                                  (_%else108415108429%_)))))))
                (__call-with-parameters
                 (lambda ()
                   (newline)
                   (display '"*** ERROR IN ")
                   (let ((_%$e108351%_ (_%location108348%_)))
                     (if _%$e108351%_
                         ((lambda (_%where108354%_)
                            (##display-locat
                             _%where108354%_
                             '#t
                             _%port108335%_))
                          _%$e108351%_)
                         (let () (display '"?"))))
                   (newline)
                   (display '"--- Syntax Error")
                   (let ((_%$e108357%_
                          (##unchecked-structure-ref
                           _%self108338%_
                           '4
                           '#f
                           '#f)))
                     (if _%$e108357%_
                         ((lambda (_%where108360%_)
                            (displayln
                             '" at "
                             _%where108360%_
                             '": "
                             (##unchecked-structure-ref
                              _%self108338%_
                              '2
                              '#f
                              '#f)))
                          _%$e108357%_)
                         (let ()
                           (displayln
                            '": "
                            (##unchecked-structure-ref
                             _%self108338%_
                             '2
                             '#f
                             '#f)))))
                   (let* ((_%g108362108370%_
                           (##unchecked-structure-ref
                            _%self108338%_
                            '3
                            '#f
                            '#f))
                          (_%else108364108378%_ (lambda () '#!void))
                          (_%K108366108391%_
                           (lambda (_%rest108381%_ _%stx108382%_)
                             (display '"... form:   ")
                             (__pp-syntax _%stx108382%_)
                             (for-each
                              (lambda (_%detail108384%_)
                                (display '"... detail: ")
                                (##write (__AST->datum _%detail108384%_))
                                (let ((_%$e108386%_
                                       (__AST-source _%detail108384%_)))
                                  (if _%$e108386%_
                                      ((lambda (_%loc108389%_)
                                         (display '" at ")
                                         (##display-locat
                                          _%loc108389%_
                                          '#t
                                          _%port108335%_))
                                       _%$e108386%_)
                                      '#!void))
                                (newline))
                              _%rest108381%_))))
                     (if (##pair? _%g108362108370%_)
                         (let ((_%hd108367108394%_ (##car _%g108362108370%_))
                               (_%tl108368108396%_ (##cdr _%g108362108370%_)))
                           (let* ((_%stx108399%_ _%hd108367108394%_)
                                  (_%rest108401%_ _%tl108368108396%_))
                             (_%K108366108391%_ _%rest108401%_ _%stx108399%_)))
                         '#!void))
                   (if (##getenv '"GERBIL_EXPANDER_DEBUG" '#f)
                       (let ((_%cont108402108404%_
                              (unchecked-slot-ref
                               _%self108338%_
                               'continuation)))
                         (if _%cont108402108404%_
                             (let ((_%cont108407%_ _%cont108402108404%_))
                               (display '"--- continuation backtrace:")
                               (newline)
                               (display-continuation-backtrace _%cont108407%_))
                             '#f))
                       '#!void))
                 current-output-port
                 _%port108335%_)))))))
    (__bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message108205%_
               _%irritants108206%_
               _%where108207%_
               _%context108208%_
               _%marks108209%_
               _%phi108210%_)
        (let ((__obj108547
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj108547 _%message108205%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj108547
           _%irritants108206%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj108547 _%where108207%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj108547 _%context108208%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj108547 _%marks108209%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj108547 _%phi108210%_ '6 '#f '#f)
          __obj108547)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where108200%_
               _%message108201%_
               _%stx108202%_
               .
               _%details108203%_)
        (raise (make-syntax-error
                _%message108201%_
                (cons _%stx108202%_ _%details108203%_)
                _%where108200%_
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
      (lambda _%$args108197%_ (apply make-instance AST::t _%$args108197%_)))
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
      (lambda (_%stx108195%_)
        (if (##structure-instance-of? _%stx108195%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx108195%_ '1 '#f '#f)
            _%stx108195%_)))
    (define __AST-source
      (lambda (_%stx108186%_)
        (let _%lp108188%_ ((_%src108190%_ _%stx108186%_))
          (if (##structure-instance-of? _%src108190%_ 'gerbil#AST::t)
              (let ()
                (_%lp108188%_
                 (##unchecked-structure-ref _%src108190%_ '2 '#f '#f)))
              (if (##locat? _%src108190%_)
                  (let () _%src108190%_)
                  (let () '#f))))))
    (define __AST
      (lambda (_%e108178%_ _%src-stx108179%_)
        (let ((_%src108181%_ (__AST-source _%src-stx108179%_)))
          (if (or (##structure-instance-of? _%e108178%_ 'gerbil#AST::t)
                  (not _%src108181%_))
              _%e108178%_
              (##structure AST::t _%e108178%_ _%src108181%_)))))
    (define __AST-eq?
      (lambda (_%stx108175%_ _%obj108176%_)
        (eq? (__AST-e _%stx108175%_) _%obj108176%_)))
    (define __AST-pair?
      (lambda (_%stx108173%_) (pair? (__AST-e _%stx108173%_))))
    (define __AST-null?
      (lambda (_%stx108171%_) (null? (__AST-e _%stx108171%_))))
    (define __AST-datum?
      (lambda (_%stx108152%_)
        (let* ((_%e108154%_ (__AST-e _%stx108152%_))
               (_%$e108156%_ (number? _%e108154%_)))
          (if _%$e108156%_
              _%$e108156%_
              (let ((_%$e108159%_ (string? _%e108154%_)))
                (if _%$e108159%_
                    _%$e108159%_
                    (let ((_%$e108162%_ (char? _%e108154%_)))
                      (if _%$e108162%_
                          _%$e108162%_
                          (let ((_%$e108165%_ (keyword? _%e108154%_)))
                            (if _%$e108165%_
                                _%$e108165%_
                                (let ((_%$e108168%_ (boolean? _%e108154%_)))
                                  (if _%$e108168%_
                                      _%$e108168%_
                                      (eq? _%e108154%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx108150%_) (symbol? (__AST-e _%stx108150%_))))
    (define __AST-id-list?__%
      (lambda (_%stx108101%_ _%tail?108102%_)
        (let _%lp108104%_ ((_%rest108106%_ _%stx108101%_))
          (let* ((_%$e108108%_ _%rest108106%_)
                 (_%$E108110108123%_
                  (lambda ()
                    (let* ((_%$E108111108118%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e108108%_)))
                           (_%rest108121%_ _%$e108108%_))
                      (_%tail?108102%_ _%rest108121%_)))))
            (if (__AST-pair? _%$e108108%_)
                (let* ((_%$tgt108112108126%_ (__AST-e _%$e108108%_))
                       (_%$hd108113108129%_ (##car _%$tgt108112108126%_))
                       (_%$tl108114108132%_ (##cdr _%$tgt108112108126%_)))
                  (let* ((_%hd108136%_ _%$hd108113108129%_)
                         (_%rest108138%_ _%$tl108114108132%_))
                    (if (__AST-id? _%hd108136%_)
                        (_%lp108104%_ _%rest108138%_)
                        '#f)))
                (_%$E108110108123%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx108143%_)
        (let ((_%tail?108145%_ __AST-null?))
          (__AST-id-list?__% _%stx108143%_ _%tail?108145%_))))
    (define __AST-id-list?
      (lambda _g108550_
        (let ((_g108549_ (##length _g108550_)))
          (cond ((##fx= _g108549_ 1)
                 (apply (lambda (_%stx108143%_)
                          (__AST-id-list?__0 _%stx108143%_))
                        _g108550_))
                ((##fx= _g108549_ 2)
                 (apply (lambda (_%stx108147%_ _%tail?108148%_)
                          (__AST-id-list?__% _%stx108147%_ _%tail?108148%_))
                        _g108550_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g108550_))))))
    (define __AST-bind-list?
      (lambda (_%stx108093%_)
        (__AST-id-list?__%
         _%stx108093%_
         (lambda (_%e108095%_)
           (let ((_%$e108097%_ (__AST-null? _%e108095%_)))
             (if _%$e108097%_ _%$e108097%_ (__AST-id? _%e108095%_)))))))
    (define __AST-list?__%
      (lambda (_%stx108046%_ _%tail?108047%_)
        (let _%lp108049%_ ((_%rest108051%_ _%stx108046%_))
          (let* ((_%$e108053%_ _%rest108051%_)
                 (_%$E108055108068%_
                  (lambda ()
                    (let* ((_%$E108056108063%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e108053%_)))
                           (_%rest108066%_ _%$e108053%_))
                      (_%tail?108047%_ _%rest108066%_)))))
            (if (__AST-pair? _%$e108053%_)
                (let* ((_%$tgt108057108071%_ (__AST-e _%$e108053%_))
                       (_%$hd108058108074%_ (##car _%$tgt108057108071%_))
                       (_%$tl108059108077%_ (##cdr _%$tgt108057108071%_)))
                  (let ((_%rest108081%_ _%$tl108059108077%_))
                    (_%lp108049%_ _%rest108081%_)))
                (_%$E108055108068%_))))))
    (define __AST-list?__0
      (lambda (_%stx108086%_)
        (let ((_%tail?108088%_ __AST-null?))
          (__AST-list?__% _%stx108086%_ _%tail?108088%_))))
    (define __AST-list?
      (lambda _g108552_
        (let ((_g108551_ (##length _g108552_)))
          (cond ((##fx= _g108551_ 1)
                 (apply (lambda (_%stx108086%_) (__AST-list?__0 _%stx108086%_))
                        _g108552_))
                ((##fx= _g108551_ 2)
                 (apply (lambda (_%stx108090%_ _%tail?108091%_)
                          (__AST-list?__% _%stx108090%_ _%tail?108091%_))
                        _g108552_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g108552_))))))
    (define __AST->list
      (lambda (_%stx108011%_)
        (let* ((_%$e108013%_ _%stx108011%_)
               (_%$E108015108028%_
                (lambda ()
                  (let* ((_%$E108016108023%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e108013%_)))
                         (_%rest108026%_ _%$e108013%_))
                    (__AST-e _%rest108026%_)))))
          (if (__AST-pair? _%$e108013%_)
              (let* ((_%$tgt108017108031%_ (__AST-e _%$e108013%_))
                     (_%$hd108018108034%_ (##car _%$tgt108017108031%_))
                     (_%$tl108019108037%_ (##cdr _%$tgt108017108031%_)))
                (let* ((_%hd108041%_ _%$hd108018108034%_)
                       (_%rest108043%_ _%$tl108019108037%_))
                  (cons _%hd108041%_ (__AST->list _%rest108043%_))))
              (_%$E108015108028%_)))))
    (define __AST->datum
      (lambda (_%stx108004%_)
        (if (##structure-instance-of? _%stx108004%_ 'gerbil#AST::t)
            (let () (__AST->datum (__AST-e _%stx108004%_)))
            (if (pair? _%stx108004%_)
                (let ()
                  (cons (__AST->datum (car _%stx108004%_))
                        (__AST->datum (cdr _%stx108004%_))))
                (if (vector? _%stx108004%_)
                    (let () (vector-map __AST->datum _%stx108004%_))
                    (if (box? _%stx108004%_)
                        (let () (box (__AST->datum (unbox _%stx108004%_))))
                        (let () _%stx108004%_)))))))
    (define get-readenv
      (lambda (_%port108002%_)
        (##make-readenv
         _%port108002%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in107990%_)
        (let ((_%e107992%_ (##read-datum-or-eof (get-readenv _%in107990%_))))
          (if (eof-object? (__AST-e _%e107992%_))
              (__AST-e _%e107992%_)
              _%e107992%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in107998%_ (current-input-port)))
          (read-syntax__% _%in107998%_))))
    (define read-syntax
      (lambda _g108554_
        (let ((_g108553_ (##length _g108554_)))
          (cond ((##fx= _g108553_ 0)
                 (apply (lambda () (read-syntax__0)) _g108554_))
                ((##fx= _g108553_ 1)
                 (apply (lambda (_%in108000%_) (read-syntax__% _%in108000%_))
                        _g108554_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g108554_))))))
    (define read-syntax-from-file
      (lambda (_%path107985%_)
        (let ((_%r107987%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path107985%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r107987%_)
              (cdr (__AST-e (vector-ref _%r107987%_ '1)))
              (error (err-code->string _%r107987%_) _%path107985%_)))))
    (define __wrap-syntax
      (lambda (_%re107982%_ _%e107983%_)
        (if (eof-object? _%e107983%_)
            _%e107983%_
            (##structure AST::t _%e107983%_ (##readenv->locat _%re107982%_)))))
    (define __unwrap-syntax
      (lambda (_%re107979%_ _%e107980%_) (__AST-e _%e107980%_)))
    (define __pp-syntax
      (lambda (_%stx107977%_) (pp (__AST->datum _%stx107977%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt107975%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt107975%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt107975%_ '@list)
          (macro-readtable-brace-handler-set! _%rt107975%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt107975%_
           '#\!
           __read-sharp-bang)
          _%rt107975%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt107971%_ _%kw107972%_)
        (macro-readtable-bracket-handler-set! _%rt107971%_ _%kw107972%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt107968%_ _%kw107969%_)
        (macro-readtable-brace-handler-set! _%rt107968%_ _%kw107969%_)))
    (define __read-sharp-bang
      (lambda (_%re107959%_ _%next107960%_ _%start-pos107961%_)
        (if (eq? _%start-pos107961%_ '0)
            (let* ((_%line107963%_
                    (##read-line
                     (macro-readenv-port _%re107959%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line107965%_
                    (substring
                     _%line107963%_
                     '1
                     (string-length _%line107963%_))))
              (macro-readenv-script-line-set!
               _%re107959%_
               _%script-line107965%_)
              (##script-marker))
            (##read-sharp-bang
             _%re107959%_
             _%next107960%_
             _%start-pos107961%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj107957%_)
        (if (source-location? _%obj107957%_)
            (string? (##locat-container _%obj107957%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj107955%_)
        (if (##locat? _%obj107955%_)
            (##container->path (##locat-container _%obj107955%_))
            '#f)))))

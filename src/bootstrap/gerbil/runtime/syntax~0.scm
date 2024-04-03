(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1712124234)
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
      (lambda _%$args108591%_
        (apply make-instance SyntaxError::t _%$args108591%_)))
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
      (lambda (_%self108475%_ _%port108476%_)
        (let ()
          (let ((_%self108479%_ _%self108475%_))
            (let ()
              (letrec ((_%location108489%_
                        (lambda ()
                          (let _%lp108551%_ ((_%rest108553%_
                                              (##unchecked-structure-ref
                                               _%self108479%_
                                               '3
                                               '#f
                                               '#f)))
                            (let* ((_%rest108554108562%_ _%rest108553%_)
                                   (_%else108556108570%_ (lambda () '#f))
                                   (_%K108558108579%_
                                    (lambda (_%rest108573%_ _%hd108574%_)
                                      (let ((_%$e108576%_
                                             (__AST-source _%hd108574%_)))
                                        (if _%$e108576%_
                                            _%$e108576%_
                                            (_%lp108551%_ _%rest108573%_))))))
                              (if (##pair? _%rest108554108562%_)
                                  (let ((_%hd108559108582%_
                                         (##car _%rest108554108562%_))
                                        (_%tl108560108584%_
                                         (##cdr _%rest108554108562%_)))
                                    (let* ((_%hd108587%_ _%hd108559108582%_)
                                           (_%rest108589%_ _%tl108560108584%_))
                                      (_%K108558108579%_
                                       _%rest108589%_
                                       _%hd108587%_)))
                                  (_%else108556108570%_)))))))
                (__call-with-parameters
                 (lambda ()
                   (newline)
                   (display '"*** ERROR IN ")
                   (let ((_%$e108492%_ (_%location108489%_)))
                     (if _%$e108492%_
                         ((lambda (_%where108495%_)
                            (##display-locat
                             _%where108495%_
                             '#t
                             _%port108476%_))
                          _%$e108492%_)
                         (let () (display '"?"))))
                   (newline)
                   (display '"--- Syntax Error")
                   (let ((_%$e108498%_
                          (##unchecked-structure-ref
                           _%self108479%_
                           '4
                           '#f
                           '#f)))
                     (if _%$e108498%_
                         ((lambda (_%where108501%_)
                            (displayln
                             '" at "
                             _%where108501%_
                             '": "
                             (##unchecked-structure-ref
                              _%self108479%_
                              '2
                              '#f
                              '#f)))
                          _%$e108498%_)
                         (let ()
                           (displayln
                            '": "
                            (##unchecked-structure-ref
                             _%self108479%_
                             '2
                             '#f
                             '#f)))))
                   (let* ((_%g108503108511%_
                           (##unchecked-structure-ref
                            _%self108479%_
                            '3
                            '#f
                            '#f))
                          (_%else108505108519%_ (lambda () '#!void))
                          (_%K108507108532%_
                           (lambda (_%rest108522%_ _%stx108523%_)
                             (display '"... form:   ")
                             (__pp-syntax _%stx108523%_)
                             (for-each
                              (lambda (_%detail108525%_)
                                (display '"... detail: ")
                                (##write (__AST->datum _%detail108525%_))
                                (let ((_%$e108527%_
                                       (__AST-source _%detail108525%_)))
                                  (if _%$e108527%_
                                      ((lambda (_%loc108530%_)
                                         (display '" at ")
                                         (##display-locat
                                          _%loc108530%_
                                          '#t
                                          _%port108476%_))
                                       _%$e108527%_)
                                      '#!void))
                                (newline))
                              _%rest108522%_))))
                     (if (##pair? _%g108503108511%_)
                         (let ((_%hd108508108535%_ (##car _%g108503108511%_))
                               (_%tl108509108537%_ (##cdr _%g108503108511%_)))
                           (let* ((_%stx108540%_ _%hd108508108535%_)
                                  (_%rest108542%_ _%tl108509108537%_))
                             (_%K108507108532%_ _%rest108542%_ _%stx108540%_)))
                         '#!void))
                   (if (##getenv '"GERBIL_EXPANDER_DEBUG" '#f)
                       (let ((_%cont108543108545%_
                              (unchecked-slot-ref
                               _%self108479%_
                               'continuation)))
                         (if _%cont108543108545%_
                             (let ((_%cont108548%_ _%cont108543108545%_))
                               (display '"--- continuation backtrace:")
                               (newline)
                               (display-continuation-backtrace _%cont108548%_))
                             '#f))
                       '#!void))
                 current-output-port
                 _%port108476%_)))))))
    (__bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message108346%_
               _%irritants108347%_
               _%where108348%_
               _%context108349%_
               _%marks108350%_
               _%phi108351%_)
        (let ((__obj108688
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj108688 _%message108346%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj108688
           _%irritants108347%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj108688 _%where108348%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj108688 _%context108349%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj108688 _%marks108350%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj108688 _%phi108351%_ '6 '#f '#f)
          __obj108688)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where108341%_
               _%message108342%_
               _%stx108343%_
               .
               _%details108344%_)
        (raise (make-syntax-error
                _%message108342%_
                (cons _%stx108343%_ _%details108344%_)
                _%where108341%_
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
      (lambda _%$args108338%_ (apply make-instance AST::t _%$args108338%_)))
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
      (lambda (_%stx108336%_)
        (if (##structure-instance-of? _%stx108336%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx108336%_ '1 '#f '#f)
            _%stx108336%_)))
    (define __AST-source
      (lambda (_%stx108327%_)
        (let _%lp108329%_ ((_%src108331%_ _%stx108327%_))
          (if (##structure-instance-of? _%src108331%_ 'gerbil#AST::t)
              (let ()
                (_%lp108329%_
                 (##unchecked-structure-ref _%src108331%_ '2 '#f '#f)))
              (if (##locat? _%src108331%_)
                  (let () _%src108331%_)
                  (let () '#f))))))
    (define __AST
      (lambda (_%e108319%_ _%src-stx108320%_)
        (let ((_%src108322%_ (__AST-source _%src-stx108320%_)))
          (if (or (##structure-instance-of? _%e108319%_ 'gerbil#AST::t)
                  (not _%src108322%_))
              _%e108319%_
              (##structure AST::t _%e108319%_ _%src108322%_)))))
    (define __AST-eq?
      (lambda (_%stx108316%_ _%obj108317%_)
        (eq? (__AST-e _%stx108316%_) _%obj108317%_)))
    (define __AST-pair?
      (lambda (_%stx108314%_) (pair? (__AST-e _%stx108314%_))))
    (define __AST-null?
      (lambda (_%stx108312%_) (null? (__AST-e _%stx108312%_))))
    (define __AST-datum?
      (lambda (_%stx108293%_)
        (let* ((_%e108295%_ (__AST-e _%stx108293%_))
               (_%$e108297%_ (number? _%e108295%_)))
          (if _%$e108297%_
              _%$e108297%_
              (let ((_%$e108300%_ (string? _%e108295%_)))
                (if _%$e108300%_
                    _%$e108300%_
                    (let ((_%$e108303%_ (char? _%e108295%_)))
                      (if _%$e108303%_
                          _%$e108303%_
                          (let ((_%$e108306%_ (keyword? _%e108295%_)))
                            (if _%$e108306%_
                                _%$e108306%_
                                (let ((_%$e108309%_ (boolean? _%e108295%_)))
                                  (if _%$e108309%_
                                      _%$e108309%_
                                      (eq? _%e108295%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx108291%_) (symbol? (__AST-e _%stx108291%_))))
    (define __AST-id-list?__%
      (lambda (_%stx108242%_ _%tail?108243%_)
        (let _%lp108245%_ ((_%rest108247%_ _%stx108242%_))
          (let* ((_%$e108249%_ _%rest108247%_)
                 (_%$E108251108264%_
                  (lambda ()
                    (let* ((_%$E108252108259%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e108249%_)))
                           (_%rest108262%_ _%$e108249%_))
                      (_%tail?108243%_ _%rest108262%_)))))
            (if (__AST-pair? _%$e108249%_)
                (let* ((_%$tgt108253108267%_ (__AST-e _%$e108249%_))
                       (_%$hd108254108270%_ (##car _%$tgt108253108267%_))
                       (_%$tl108255108273%_ (##cdr _%$tgt108253108267%_)))
                  (let* ((_%hd108277%_ _%$hd108254108270%_)
                         (_%rest108279%_ _%$tl108255108273%_))
                    (if (__AST-id? _%hd108277%_)
                        (_%lp108245%_ _%rest108279%_)
                        '#f)))
                (_%$E108251108264%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx108284%_)
        (let ((_%tail?108286%_ __AST-null?))
          (__AST-id-list?__% _%stx108284%_ _%tail?108286%_))))
    (define __AST-id-list?
      (lambda _g108691_
        (let ((_g108690_ (##length _g108691_)))
          (cond ((##fx= _g108690_ 1)
                 (apply (lambda (_%stx108284%_)
                          (__AST-id-list?__0 _%stx108284%_))
                        _g108691_))
                ((##fx= _g108690_ 2)
                 (apply (lambda (_%stx108288%_ _%tail?108289%_)
                          (__AST-id-list?__% _%stx108288%_ _%tail?108289%_))
                        _g108691_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g108691_))))))
    (define __AST-bind-list?
      (lambda (_%stx108234%_)
        (__AST-id-list?__%
         _%stx108234%_
         (lambda (_%e108236%_)
           (let ((_%$e108238%_ (__AST-null? _%e108236%_)))
             (if _%$e108238%_ _%$e108238%_ (__AST-id? _%e108236%_)))))))
    (define __AST-list?__%
      (lambda (_%stx108187%_ _%tail?108188%_)
        (let _%lp108190%_ ((_%rest108192%_ _%stx108187%_))
          (let* ((_%$e108194%_ _%rest108192%_)
                 (_%$E108196108209%_
                  (lambda ()
                    (let* ((_%$E108197108204%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e108194%_)))
                           (_%rest108207%_ _%$e108194%_))
                      (_%tail?108188%_ _%rest108207%_)))))
            (if (__AST-pair? _%$e108194%_)
                (let* ((_%$tgt108198108212%_ (__AST-e _%$e108194%_))
                       (_%$hd108199108215%_ (##car _%$tgt108198108212%_))
                       (_%$tl108200108218%_ (##cdr _%$tgt108198108212%_)))
                  (let ((_%rest108222%_ _%$tl108200108218%_))
                    (_%lp108190%_ _%rest108222%_)))
                (_%$E108196108209%_))))))
    (define __AST-list?__0
      (lambda (_%stx108227%_)
        (let ((_%tail?108229%_ __AST-null?))
          (__AST-list?__% _%stx108227%_ _%tail?108229%_))))
    (define __AST-list?
      (lambda _g108693_
        (let ((_g108692_ (##length _g108693_)))
          (cond ((##fx= _g108692_ 1)
                 (apply (lambda (_%stx108227%_) (__AST-list?__0 _%stx108227%_))
                        _g108693_))
                ((##fx= _g108692_ 2)
                 (apply (lambda (_%stx108231%_ _%tail?108232%_)
                          (__AST-list?__% _%stx108231%_ _%tail?108232%_))
                        _g108693_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g108693_))))))
    (define __AST->list
      (lambda (_%stx108152%_)
        (let* ((_%$e108154%_ _%stx108152%_)
               (_%$E108156108169%_
                (lambda ()
                  (let* ((_%$E108157108164%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e108154%_)))
                         (_%rest108167%_ _%$e108154%_))
                    (__AST-e _%rest108167%_)))))
          (if (__AST-pair? _%$e108154%_)
              (let* ((_%$tgt108158108172%_ (__AST-e _%$e108154%_))
                     (_%$hd108159108175%_ (##car _%$tgt108158108172%_))
                     (_%$tl108160108178%_ (##cdr _%$tgt108158108172%_)))
                (let* ((_%hd108182%_ _%$hd108159108175%_)
                       (_%rest108184%_ _%$tl108160108178%_))
                  (cons _%hd108182%_ (__AST->list _%rest108184%_))))
              (_%$E108156108169%_)))))
    (define __AST->datum
      (lambda (_%stx108145%_)
        (if (##structure-instance-of? _%stx108145%_ 'gerbil#AST::t)
            (let () (__AST->datum (__AST-e _%stx108145%_)))
            (if (pair? _%stx108145%_)
                (let ()
                  (cons (__AST->datum (car _%stx108145%_))
                        (__AST->datum (cdr _%stx108145%_))))
                (if (vector? _%stx108145%_)
                    (let () (vector-map __AST->datum _%stx108145%_))
                    (if (box? _%stx108145%_)
                        (let () (box (__AST->datum (unbox _%stx108145%_))))
                        (let () _%stx108145%_)))))))
    (define get-readenv
      (lambda (_%port108143%_)
        (##make-readenv
         _%port108143%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in108131%_)
        (let ((_%e108133%_ (##read-datum-or-eof (get-readenv _%in108131%_))))
          (if (eof-object? (__AST-e _%e108133%_))
              (__AST-e _%e108133%_)
              _%e108133%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in108139%_ (current-input-port)))
          (read-syntax__% _%in108139%_))))
    (define read-syntax
      (lambda _g108695_
        (let ((_g108694_ (##length _g108695_)))
          (cond ((##fx= _g108694_ 0)
                 (apply (lambda () (read-syntax__0)) _g108695_))
                ((##fx= _g108694_ 1)
                 (apply (lambda (_%in108141%_) (read-syntax__% _%in108141%_))
                        _g108695_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g108695_))))))
    (define read-syntax-from-file
      (lambda (_%path108126%_)
        (let ((_%r108128%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path108126%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r108128%_)
              (cdr (__AST-e (vector-ref _%r108128%_ '1)))
              (error (err-code->string _%r108128%_) _%path108126%_)))))
    (define __wrap-syntax
      (lambda (_%re108123%_ _%e108124%_)
        (if (eof-object? _%e108124%_)
            _%e108124%_
            (##structure AST::t _%e108124%_ (##readenv->locat _%re108123%_)))))
    (define __unwrap-syntax
      (lambda (_%re108120%_ _%e108121%_) (__AST-e _%e108121%_)))
    (define __pp-syntax
      (lambda (_%stx108118%_) (pp (__AST->datum _%stx108118%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt108116%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt108116%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt108116%_ '@list)
          (macro-readtable-brace-handler-set! _%rt108116%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt108116%_
           '#\!
           __read-sharp-bang)
          _%rt108116%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt108112%_ _%kw108113%_)
        (macro-readtable-bracket-handler-set! _%rt108112%_ _%kw108113%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt108109%_ _%kw108110%_)
        (macro-readtable-brace-handler-set! _%rt108109%_ _%kw108110%_)))
    (define __read-sharp-bang
      (lambda (_%re108100%_ _%next108101%_ _%start-pos108102%_)
        (if (eq? _%start-pos108102%_ '0)
            (let* ((_%line108104%_
                    (##read-line
                     (macro-readenv-port _%re108100%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line108106%_
                    (substring
                     _%line108104%_
                     '1
                     (string-length _%line108104%_))))
              (macro-readenv-script-line-set!
               _%re108100%_
               _%script-line108106%_)
              (##script-marker))
            (##read-sharp-bang
             _%re108100%_
             _%next108101%_
             _%start-pos108102%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj108098%_)
        (if (source-location? _%obj108098%_)
            (string? (##locat-container _%obj108098%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj108096%_)
        (if (##locat? _%obj108096%_)
            (##container->path (##locat-container _%obj108096%_))
            '#f)))))

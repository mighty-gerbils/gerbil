(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1712161240)
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
      (lambda _%$args108575%_
        (apply make-instance SyntaxError::t _%$args108575%_)))
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
      (lambda (_%self108459%_ _%port108460%_)
        (let ((_%self108463%_ _%self108459%_))
          (letrec ((_%location108473%_
                    (lambda ()
                      (let _%lp108535%_ ((_%rest108537%_
                                          (##unchecked-structure-ref
                                           _%self108463%_
                                           '3
                                           '#f
                                           '#f)))
                        (let* ((_%rest108538108546%_ _%rest108537%_)
                               (_%else108540108554%_ (lambda () '#f))
                               (_%K108542108563%_
                                (lambda (_%rest108557%_ _%hd108558%_)
                                  (let ((_%$e108560%_
                                         (__AST-source _%hd108558%_)))
                                    (if _%$e108560%_
                                        _%$e108560%_
                                        (_%lp108535%_ _%rest108557%_))))))
                          (if (##pair? _%rest108538108546%_)
                              (let ((_%hd108543108566%_
                                     (##car _%rest108538108546%_))
                                    (_%tl108544108568%_
                                     (##cdr _%rest108538108546%_)))
                                (let* ((_%hd108571%_ _%hd108543108566%_)
                                       (_%rest108573%_ _%tl108544108568%_))
                                  (_%K108542108563%_
                                   _%rest108573%_
                                   _%hd108571%_)))
                              (_%else108540108554%_)))))))
            (__call-with-parameters
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e108476%_ (_%location108473%_)))
                 (if _%$e108476%_
                     ((lambda (_%where108479%_)
                        (##display-locat _%where108479%_ '#t _%port108460%_))
                      _%$e108476%_)
                     (let () (display '"?"))))
               (newline)
               (display '"--- Syntax Error")
               (let ((_%$e108482%_
                      (##unchecked-structure-ref _%self108463%_ '4 '#f '#f)))
                 (if _%$e108482%_
                     ((lambda (_%where108485%_)
                        (displayln
                         '" at "
                         _%where108485%_
                         '": "
                         (##unchecked-structure-ref
                          _%self108463%_
                          '2
                          '#f
                          '#f)))
                      _%$e108482%_)
                     (let ()
                       (displayln
                        '": "
                        (##unchecked-structure-ref
                         _%self108463%_
                         '2
                         '#f
                         '#f)))))
               (let* ((_%self.irritants108487108495%_
                       (##unchecked-structure-ref _%self108463%_ '3 '#f '#f))
                      (_%else108489108503%_ (lambda () '#!void))
                      (_%K108491108516%_
                       (lambda (_%rest108506%_ _%stx108507%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx108507%_)
                         (for-each
                          (lambda (_%detail108509%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail108509%_))
                            (let ((_%$e108511%_
                                   (__AST-source _%detail108509%_)))
                              (if _%$e108511%_
                                  ((lambda (_%loc108514%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc108514%_
                                      '#t
                                      _%port108460%_))
                                   _%$e108511%_)
                                  '#!void))
                            (newline))
                          _%rest108506%_))))
                 (if (##pair? _%self.irritants108487108495%_)
                     (let ((_%hd108492108519%_
                            (##car _%self.irritants108487108495%_))
                           (_%tl108493108521%_
                            (##cdr _%self.irritants108487108495%_)))
                       (let* ((_%stx108524%_ _%hd108492108519%_)
                              (_%rest108526%_ _%tl108493108521%_))
                         (_%K108491108516%_ _%rest108526%_ _%stx108524%_)))
                     '#!void))
               (if (##getenv '"GERBIL_DEBUG" '#f)
                   (let ((_%cont108527108529%_
                          (##unchecked-structure-ref
                           _%self108463%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont108527108529%_
                         (let ((_%cont108532%_ _%cont108527108529%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont108532%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port108460%_)))))
    (__bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message108330%_
               _%irritants108331%_
               _%where108332%_
               _%context108333%_
               _%marks108334%_
               _%phi108335%_)
        (let ((__obj108672
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj108672 _%message108330%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj108672
           _%irritants108331%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj108672 _%where108332%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj108672 _%context108333%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj108672 _%marks108334%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj108672 _%phi108335%_ '6 '#f '#f)
          __obj108672)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where108325%_
               _%message108326%_
               _%stx108327%_
               .
               _%details108328%_)
        (raise (make-syntax-error
                _%message108326%_
                (cons _%stx108327%_ _%details108328%_)
                _%where108325%_
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
      (lambda _%$args108322%_ (apply make-instance AST::t _%$args108322%_)))
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
      (lambda (_%stx108320%_)
        (if (##structure-instance-of? _%stx108320%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx108320%_ '1 '#f '#f)
            _%stx108320%_)))
    (define __AST-source
      (lambda (_%stx108311%_)
        (let _%lp108313%_ ((_%src108315%_ _%stx108311%_))
          (if (##structure-instance-of? _%src108315%_ 'gerbil#AST::t)
              (let ()
                (_%lp108313%_
                 (##unchecked-structure-ref _%src108315%_ '2 '#f '#f)))
              (if (##locat? _%src108315%_)
                  (let () _%src108315%_)
                  (let () '#f))))))
    (define __AST
      (lambda (_%e108303%_ _%src-stx108304%_)
        (let ((_%src108306%_ (__AST-source _%src-stx108304%_)))
          (if (or (##structure-instance-of? _%e108303%_ 'gerbil#AST::t)
                  (not _%src108306%_))
              _%e108303%_
              (##structure AST::t _%e108303%_ _%src108306%_)))))
    (define __AST-eq?
      (lambda (_%stx108300%_ _%obj108301%_)
        (eq? (__AST-e _%stx108300%_) _%obj108301%_)))
    (define __AST-pair?
      (lambda (_%stx108298%_) (pair? (__AST-e _%stx108298%_))))
    (define __AST-null?
      (lambda (_%stx108296%_) (null? (__AST-e _%stx108296%_))))
    (define __AST-datum?
      (lambda (_%stx108277%_)
        (let* ((_%e108279%_ (__AST-e _%stx108277%_))
               (_%$e108281%_ (number? _%e108279%_)))
          (if _%$e108281%_
              _%$e108281%_
              (let ((_%$e108284%_ (string? _%e108279%_)))
                (if _%$e108284%_
                    _%$e108284%_
                    (let ((_%$e108287%_ (char? _%e108279%_)))
                      (if _%$e108287%_
                          _%$e108287%_
                          (let ((_%$e108290%_ (keyword? _%e108279%_)))
                            (if _%$e108290%_
                                _%$e108290%_
                                (let ((_%$e108293%_ (boolean? _%e108279%_)))
                                  (if _%$e108293%_
                                      _%$e108293%_
                                      (eq? _%e108279%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx108275%_) (symbol? (__AST-e _%stx108275%_))))
    (define __AST-id-list?__%
      (lambda (_%stx108226%_ _%tail?108227%_)
        (let _%lp108229%_ ((_%rest108231%_ _%stx108226%_))
          (let* ((_%$e108233%_ _%rest108231%_)
                 (_%$E108235108248%_
                  (lambda ()
                    (let* ((_%$E108236108243%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e108233%_)))
                           (_%rest108246%_ _%$e108233%_))
                      (_%tail?108227%_ _%rest108246%_)))))
            (if (__AST-pair? _%$e108233%_)
                (let* ((_%$tgt108237108251%_ (__AST-e _%$e108233%_))
                       (_%$hd108238108254%_ (##car _%$tgt108237108251%_))
                       (_%$tl108239108257%_ (##cdr _%$tgt108237108251%_)))
                  (let* ((_%hd108261%_ _%$hd108238108254%_)
                         (_%rest108263%_ _%$tl108239108257%_))
                    (if (__AST-id? _%hd108261%_)
                        (_%lp108229%_ _%rest108263%_)
                        '#f)))
                (_%$E108235108248%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx108268%_)
        (let ((_%tail?108270%_ __AST-null?))
          (__AST-id-list?__% _%stx108268%_ _%tail?108270%_))))
    (define __AST-id-list?
      (lambda _g108675_
        (let ((_g108674_ (##length _g108675_)))
          (cond ((##fx= _g108674_ 1)
                 (apply (lambda (_%stx108268%_)
                          (__AST-id-list?__0 _%stx108268%_))
                        _g108675_))
                ((##fx= _g108674_ 2)
                 (apply (lambda (_%stx108272%_ _%tail?108273%_)
                          (__AST-id-list?__% _%stx108272%_ _%tail?108273%_))
                        _g108675_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g108675_))))))
    (define __AST-bind-list?
      (lambda (_%stx108218%_)
        (__AST-id-list?__%
         _%stx108218%_
         (lambda (_%e108220%_)
           (let ((_%$e108222%_ (__AST-null? _%e108220%_)))
             (if _%$e108222%_ _%$e108222%_ (__AST-id? _%e108220%_)))))))
    (define __AST-list?__%
      (lambda (_%stx108171%_ _%tail?108172%_)
        (let _%lp108174%_ ((_%rest108176%_ _%stx108171%_))
          (let* ((_%$e108178%_ _%rest108176%_)
                 (_%$E108180108193%_
                  (lambda ()
                    (let* ((_%$E108181108188%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e108178%_)))
                           (_%rest108191%_ _%$e108178%_))
                      (_%tail?108172%_ _%rest108191%_)))))
            (if (__AST-pair? _%$e108178%_)
                (let* ((_%$tgt108182108196%_ (__AST-e _%$e108178%_))
                       (_%$hd108183108199%_ (##car _%$tgt108182108196%_))
                       (_%$tl108184108202%_ (##cdr _%$tgt108182108196%_))
                       (_%rest108206%_ _%$tl108184108202%_))
                  (_%lp108174%_ _%rest108206%_))
                (_%$E108180108193%_))))))
    (define __AST-list?__0
      (lambda (_%stx108211%_)
        (let ((_%tail?108213%_ __AST-null?))
          (__AST-list?__% _%stx108211%_ _%tail?108213%_))))
    (define __AST-list?
      (lambda _g108677_
        (let ((_g108676_ (##length _g108677_)))
          (cond ((##fx= _g108676_ 1)
                 (apply (lambda (_%stx108211%_) (__AST-list?__0 _%stx108211%_))
                        _g108677_))
                ((##fx= _g108676_ 2)
                 (apply (lambda (_%stx108215%_ _%tail?108216%_)
                          (__AST-list?__% _%stx108215%_ _%tail?108216%_))
                        _g108677_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g108677_))))))
    (define __AST->list
      (lambda (_%stx108136%_)
        (let* ((_%$e108138%_ _%stx108136%_)
               (_%$E108140108153%_
                (lambda ()
                  (let* ((_%$E108141108148%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e108138%_)))
                         (_%rest108151%_ _%$e108138%_))
                    (__AST-e _%rest108151%_)))))
          (if (__AST-pair? _%$e108138%_)
              (let* ((_%$tgt108142108156%_ (__AST-e _%$e108138%_))
                     (_%$hd108143108159%_ (##car _%$tgt108142108156%_))
                     (_%$tl108144108162%_ (##cdr _%$tgt108142108156%_)))
                (let* ((_%hd108166%_ _%$hd108143108159%_)
                       (_%rest108168%_ _%$tl108144108162%_))
                  (cons _%hd108166%_ (__AST->list _%rest108168%_))))
              (_%$E108140108153%_)))))
    (define __AST->datum
      (lambda (_%stx108129%_)
        (if (##structure-instance-of? _%stx108129%_ 'gerbil#AST::t)
            (let () (__AST->datum (__AST-e _%stx108129%_)))
            (if (pair? _%stx108129%_)
                (let ()
                  (cons (__AST->datum (car _%stx108129%_))
                        (__AST->datum (cdr _%stx108129%_))))
                (if (vector? _%stx108129%_)
                    (let () (vector-map __AST->datum _%stx108129%_))
                    (if (box? _%stx108129%_)
                        (let () (box (__AST->datum (unbox _%stx108129%_))))
                        (let () _%stx108129%_)))))))
    (define get-readenv
      (lambda (_%port108127%_)
        (##make-readenv
         _%port108127%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in108115%_)
        (let ((_%e108117%_ (##read-datum-or-eof (get-readenv _%in108115%_))))
          (if (eof-object? (__AST-e _%e108117%_))
              (__AST-e _%e108117%_)
              _%e108117%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in108123%_ (current-input-port)))
          (read-syntax__% _%in108123%_))))
    (define read-syntax
      (lambda _g108679_
        (let ((_g108678_ (##length _g108679_)))
          (cond ((##fx= _g108678_ 0)
                 (apply (lambda () (read-syntax__0)) _g108679_))
                ((##fx= _g108678_ 1)
                 (apply (lambda (_%in108125%_) (read-syntax__% _%in108125%_))
                        _g108679_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g108679_))))))
    (define read-syntax-from-file
      (lambda (_%path108110%_)
        (let ((_%r108112%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path108110%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r108112%_)
              (cdr (__AST-e (vector-ref _%r108112%_ '1)))
              (error (err-code->string _%r108112%_) _%path108110%_)))))
    (define __wrap-syntax
      (lambda (_%re108107%_ _%e108108%_)
        (if (eof-object? _%e108108%_)
            _%e108108%_
            (##structure AST::t _%e108108%_ (##readenv->locat _%re108107%_)))))
    (define __unwrap-syntax
      (lambda (_%re108104%_ _%e108105%_) (__AST-e _%e108105%_)))
    (define __pp-syntax
      (lambda (_%stx108102%_) (pp (__AST->datum _%stx108102%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt108100%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt108100%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt108100%_ '@list)
          (macro-readtable-brace-handler-set! _%rt108100%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt108100%_
           '#\!
           __read-sharp-bang)
          _%rt108100%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt108096%_ _%kw108097%_)
        (macro-readtable-bracket-handler-set! _%rt108096%_ _%kw108097%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt108093%_ _%kw108094%_)
        (macro-readtable-brace-handler-set! _%rt108093%_ _%kw108094%_)))
    (define __read-sharp-bang
      (lambda (_%re108084%_ _%next108085%_ _%start-pos108086%_)
        (if (eq? _%start-pos108086%_ '0)
            (let* ((_%line108088%_
                    (##read-line
                     (macro-readenv-port _%re108084%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line108090%_
                    (substring
                     _%line108088%_
                     '1
                     (string-length _%line108088%_))))
              (macro-readenv-script-line-set!
               _%re108084%_
               _%script-line108090%_)
              (##script-marker))
            (##read-sharp-bang
             _%re108084%_
             _%next108085%_
             _%start-pos108086%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj108082%_)
        (if (source-location? _%obj108082%_)
            (string? (##locat-container _%obj108082%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj108080%_)
        (if (##locat? _%obj108080%_)
            (##container->path (##locat-container _%obj108080%_))
            '#f)))))

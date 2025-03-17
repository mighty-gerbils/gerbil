(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1742222165)
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
      (lambda _%$args113394%_
        (apply make-instance SyntaxError::t _%$args113394%_)))
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
      (lambda (_%self112895113276%_ _%port113278%_)
        (let* ((_%self113280%_ _%self112895113276%_)
               (_%self113282%_ _%self113280%_))
          (letrec ((_%location113292%_
                    (lambda ()
                      (let _%lp113354%_ ((_%rest113356%_
                                          (##unchecked-structure-ref
                                           _%self113282%_
                                           '3
                                           '#f
                                           '#f)))
                        (let* ((_%rest113357113365%_ _%rest113356%_)
                               (_%else113359113373%_ (lambda () '#f))
                               (_%K113361113382%_
                                (lambda (_%rest113376%_ _%hd113377%_)
                                  (let ((_%$e113379%_
                                         (__AST-source _%hd113377%_)))
                                    (if _%$e113379%_
                                        _%$e113379%_
                                        (_%lp113354%_ _%rest113376%_))))))
                          (if (pair? _%rest113357113365%_)
                              (let ((_%hd113362113385%_
                                     (##car _%rest113357113365%_))
                                    (_%tl113363113387%_
                                     (##cdr _%rest113357113365%_)))
                                (let* ((_%hd113390%_ _%hd113362113385%_)
                                       (_%rest113392%_ _%tl113363113387%_))
                                  (_%K113361113382%_
                                   _%rest113392%_
                                   _%hd113390%_)))
                              (_%else113359113373%_)))))))
            (__call-with-parameters
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e113295%_ (_%location113292%_)))
                 (if _%$e113295%_
                     ((lambda (_%where113298%_)
                        (##display-locat _%where113298%_ '#t _%port113278%_))
                      _%$e113295%_)
                     (display '"?")))
               (newline)
               (display '"--- Syntax Error")
               (let ((_%$e113301%_
                      (##unchecked-structure-ref _%self113282%_ '4 '#f '#f)))
                 (if _%$e113301%_
                     ((lambda (_%where113304%_)
                        (displayln
                         '" at "
                         _%where113304%_
                         '": "
                         (##unchecked-structure-ref
                          _%self113282%_
                          '2
                          '#f
                          '#f)))
                      _%$e113301%_)
                     (displayln
                      '": "
                      (##unchecked-structure-ref _%self113282%_ '2 '#f '#f))))
               (let* ((_%self.irritants113306113314%_
                       (##unchecked-structure-ref _%self113282%_ '3 '#f '#f))
                      (_%else113308113322%_ (lambda () '#!void))
                      (_%K113310113335%_
                       (lambda (_%rest113325%_ _%stx113326%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx113326%_)
                         (for-each
                          (lambda (_%detail113328%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail113328%_))
                            (let ((_%$e113330%_
                                   (__AST-source _%detail113328%_)))
                              (if _%$e113330%_
                                  ((lambda (_%loc113333%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc113333%_
                                      '#t
                                      _%port113278%_))
                                   _%$e113330%_)
                                  '#!void))
                            (newline))
                          _%rest113325%_))))
                 (if (pair? _%self.irritants113306113314%_)
                     (let ((_%hd113311113338%_
                            (##car _%self.irritants113306113314%_))
                           (_%tl113312113340%_
                            (##cdr _%self.irritants113306113314%_)))
                       (let* ((_%stx113343%_ _%hd113311113338%_)
                              (_%rest113345%_ _%tl113312113340%_))
                         (_%K113310113335%_ _%rest113345%_ _%stx113343%_)))
                     '#!void))
               (if (##getenv '"GERBIL_DEBUG" '#f)
                   (let ((_%cont113346113348%_
                          (##unchecked-structure-ref
                           _%self113282%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont113346113348%_
                         (let ((_%cont113351%_ _%cont113346113348%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont113351%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port113278%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message113147%_
               _%irritants113148%_
               _%where113149%_
               _%context113150%_
               _%marks113151%_
               _%phi113152%_)
        (let ((__obj113491
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj113491 _%message113147%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj113491
           _%irritants113148%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj113491 _%where113149%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj113491 _%context113150%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj113491 _%marks113151%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj113491 _%phi113152%_ '6 '#f '#f)
          __obj113491)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where113142%_
               _%message113143%_
               _%stx113144%_
               .
               _%details113145%_)
        (raise (make-syntax-error
                _%message113143%_
                (cons _%stx113144%_ _%details113145%_)
                _%where113142%_
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
      (lambda _%$args113139%_ (apply make-instance AST::t _%$args113139%_)))
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
      (lambda (_%stx113137%_)
        (if (##structure-instance-of? _%stx113137%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx113137%_ '1 '#f '#f)
            _%stx113137%_)))
    (define __AST-source
      (lambda (_%stx113128%_)
        (let _%lp113130%_ ((_%src113132%_ _%stx113128%_))
          (if (##structure-instance-of? _%src113132%_ 'gerbil#AST::t)
              (_%lp113130%_
               (##unchecked-structure-ref _%src113132%_ '2 '#f '#f))
              (if (##locat? _%src113132%_) _%src113132%_ '#f)))))
    (define __AST
      (lambda (_%e113120%_ _%src-stx113121%_)
        (let ((_%src113123%_ (__AST-source _%src-stx113121%_)))
          (if (or (##structure-instance-of? _%e113120%_ 'gerbil#AST::t)
                  (not _%src113123%_))
              _%e113120%_
              (##structure AST::t _%e113120%_ _%src113123%_)))))
    (define __AST-eq?
      (lambda (_%stx113117%_ _%obj113118%_)
        (eq? (__AST-e _%stx113117%_) _%obj113118%_)))
    (define __AST-pair?
      (lambda (_%stx113115%_) (pair? (__AST-e _%stx113115%_))))
    (define __AST-null?
      (lambda (_%stx113113%_) (null? (__AST-e _%stx113113%_))))
    (define __AST-datum?
      (lambda (_%stx113094%_)
        (let* ((_%e113096%_ (__AST-e _%stx113094%_))
               (_%$e113098%_ (number? _%e113096%_)))
          (if _%$e113098%_
              _%$e113098%_
              (let ((_%$e113101%_ (string? _%e113096%_)))
                (if _%$e113101%_
                    _%$e113101%_
                    (let ((_%$e113104%_ (char? _%e113096%_)))
                      (if _%$e113104%_
                          _%$e113104%_
                          (let ((_%$e113107%_ (keyword? _%e113096%_)))
                            (if _%$e113107%_
                                _%$e113107%_
                                (let ((_%$e113110%_ (boolean? _%e113096%_)))
                                  (if _%$e113110%_
                                      _%$e113110%_
                                      (eq? _%e113096%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx113092%_) (symbol? (__AST-e _%stx113092%_))))
    (define __AST-id-list?__%
      (lambda (_%stx113043%_ _%tail?113044%_)
        (let _%lp113046%_ ((_%rest113048%_ _%stx113043%_))
          (let* ((_%$e113050%_ _%rest113048%_)
                 (_%$E113052113065%_
                  (lambda ()
                    (let* ((_%$E113053113060%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e113050%_)))
                           (_%rest113063%_ _%$e113050%_))
                      (_%tail?113044%_ _%rest113063%_)))))
            (if (__AST-pair? _%$e113050%_)
                (let* ((_%$tgt113054113068%_ (__AST-e _%$e113050%_))
                       (_%$hd113055113071%_ (##car _%$tgt113054113068%_))
                       (_%$tl113056113074%_ (##cdr _%$tgt113054113068%_))
                       (_%hd113078%_ _%$hd113055113071%_)
                       (_%rest113080%_ _%$tl113056113074%_))
                  (if (__AST-id? _%hd113078%_)
                      (_%lp113046%_ _%rest113080%_)
                      '#f))
                (_%$E113052113065%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx113085%_)
        (let ((_%tail?113087%_ __AST-null?))
          (__AST-id-list?__% _%stx113085%_ _%tail?113087%_))))
    (define __AST-id-list?
      (lambda _g113494_
        (let ((_g113493_ (##length _g113494_)))
          (cond ((##fx= _g113493_ 1) (apply __AST-id-list?__0 _g113494_))
                ((##fx= _g113493_ 2) (apply __AST-id-list?__% _g113494_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g113494_))))))
    (define __AST-bind-list?
      (lambda (_%stx113035%_)
        (__AST-id-list?__%
         _%stx113035%_
         (lambda (_%e113037%_)
           (let ((_%$e113039%_ (__AST-null? _%e113037%_)))
             (if _%$e113039%_ _%$e113039%_ (__AST-id? _%e113037%_)))))))
    (define __AST-list?__%
      (lambda (_%stx112988%_ _%tail?112989%_)
        (let _%lp112991%_ ((_%rest112993%_ _%stx112988%_))
          (let* ((_%$e112995%_ _%rest112993%_)
                 (_%$E112997113010%_
                  (lambda ()
                    (let* ((_%$E112998113005%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e112995%_)))
                           (_%rest113008%_ _%$e112995%_))
                      (_%tail?112989%_ _%rest113008%_)))))
            (if (__AST-pair? _%$e112995%_)
                (let* ((_%$tgt112999113013%_ (__AST-e _%$e112995%_))
                       (_%$hd113000113016%_ (##car _%$tgt112999113013%_))
                       (_%$tl113001113019%_ (##cdr _%$tgt112999113013%_))
                       (_%rest113023%_ _%$tl113001113019%_))
                  (_%lp112991%_ _%rest113023%_))
                (_%$E112997113010%_))))))
    (define __AST-list?__0
      (lambda (_%stx113028%_)
        (let ((_%tail?113030%_ __AST-null?))
          (__AST-list?__% _%stx113028%_ _%tail?113030%_))))
    (define __AST-list?
      (lambda _g113496_
        (let ((_g113495_ (##length _g113496_)))
          (cond ((##fx= _g113495_ 1) (apply __AST-list?__0 _g113496_))
                ((##fx= _g113495_ 2) (apply __AST-list?__% _g113496_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g113496_))))))
    (define __AST->list
      (lambda (_%stx112953%_)
        (let* ((_%$e112955%_ _%stx112953%_)
               (_%$E112957112970%_
                (lambda ()
                  (let* ((_%$E112958112965%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e112955%_)))
                         (_%rest112968%_ _%$e112955%_))
                    (__AST-e _%rest112968%_)))))
          (if (__AST-pair? _%$e112955%_)
              (let* ((_%$tgt112959112973%_ (__AST-e _%$e112955%_))
                     (_%$hd112960112976%_ (##car _%$tgt112959112973%_))
                     (_%$tl112961112979%_ (##cdr _%$tgt112959112973%_))
                     (_%hd112983%_ _%$hd112960112976%_)
                     (_%rest112985%_ _%$tl112961112979%_))
                (cons _%hd112983%_ (__AST->list _%rest112985%_)))
              (_%$E112957112970%_)))))
    (define __AST->datum
      (lambda (_%stx112946%_)
        (if (##structure-instance-of? _%stx112946%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx112946%_))
            (if (pair? _%stx112946%_)
                (cons (__AST->datum (##car _%stx112946%_))
                      (__AST->datum (##cdr _%stx112946%_)))
                (if (vector? _%stx112946%_)
                    (vector-map __AST->datum _%stx112946%_)
                    (if (box? _%stx112946%_)
                        (box (__AST->datum (unbox _%stx112946%_)))
                        _%stx112946%_))))))
    (define get-readenv
      (lambda (_%port112944%_)
        (##make-readenv
         _%port112944%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in112932%_)
        (let ((_%e112934%_ (##read-datum-or-eof (get-readenv _%in112932%_))))
          (if (eof-object? (__AST-e _%e112934%_))
              (__AST-e _%e112934%_)
              _%e112934%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in112940%_ (current-input-port)))
          (read-syntax__% _%in112940%_))))
    (define read-syntax
      (lambda _g113498_
        (let ((_g113497_ (##length _g113498_)))
          (cond ((##fx= _g113497_ 0) (apply read-syntax__0 _g113498_))
                ((##fx= _g113497_ 1) (apply read-syntax__% _g113498_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g113498_))))))
    (define read-syntax-from-file
      (lambda (_%path112927%_)
        (let ((_%r112929%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path112927%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r112929%_)
              (cdr (__AST-e (vector-ref _%r112929%_ '1)))
              (error (err-code->string _%r112929%_) _%path112927%_)))))
    (define __wrap-syntax
      (lambda (_%re112924%_ _%e112925%_)
        (if (eof-object? _%e112925%_)
            _%e112925%_
            (##structure AST::t _%e112925%_ (##readenv->locat _%re112924%_)))))
    (define __unwrap-syntax
      (lambda (_%re112921%_ _%e112922%_) (__AST-e _%e112922%_)))
    (define __pp-syntax
      (lambda (_%stx112919%_) (pp (__AST->datum _%stx112919%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt112917%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt112917%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt112917%_ '@list)
          (macro-readtable-brace-handler-set! _%rt112917%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt112917%_
           '#\!
           __read-sharp-bang)
          _%rt112917%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt112913%_ _%kw112914%_)
        (macro-readtable-bracket-handler-set! _%rt112913%_ _%kw112914%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt112910%_ _%kw112911%_)
        (macro-readtable-brace-handler-set! _%rt112910%_ _%kw112911%_)))
    (define __read-sharp-bang
      (lambda (_%re112901%_ _%next112902%_ _%start-pos112903%_)
        (if (eq? _%start-pos112903%_ '0)
            (let* ((_%line112905%_
                    (##read-line
                     (macro-readenv-port _%re112901%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line112907%_
                    (substring
                     _%line112905%_
                     '1
                     (string-length _%line112905%_))))
              (macro-readenv-script-line-set!
               _%re112901%_
               _%script-line112907%_)
              (##script-marker))
            (##read-sharp-bang
             _%re112901%_
             _%next112902%_
             _%start-pos112903%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj112899%_)
        (if (source-location? _%obj112899%_)
            (string? (##locat-container _%obj112899%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj112897%_)
        (if (##locat? _%obj112897%_)
            (##container->path (##locat-container _%obj112897%_))
            '#f)))))

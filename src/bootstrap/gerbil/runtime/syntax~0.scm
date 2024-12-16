(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1734357961)
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
      (lambda _%$args113458%_
        (apply make-instance SyntaxError::t _%$args113458%_)))
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
      (lambda (_%self112959113340%_ _%port113342%_)
        (let* ((_%self113344%_ _%self112959113340%_)
               (_%self113346%_ _%self113344%_))
          (letrec ((_%location113356%_
                    (lambda ()
                      (let _%lp113418%_ ((_%rest113420%_
                                          (##unchecked-structure-ref
                                           _%self113346%_
                                           '3
                                           '#f
                                           '#f)))
                        (let* ((_%rest113421113429%_ _%rest113420%_)
                               (_%else113423113437%_ (lambda () '#f))
                               (_%K113425113446%_
                                (lambda (_%rest113440%_ _%hd113441%_)
                                  (let ((_%$e113443%_
                                         (__AST-source _%hd113441%_)))
                                    (if _%$e113443%_
                                        _%$e113443%_
                                        (_%lp113418%_ _%rest113440%_))))))
                          (if (pair? _%rest113421113429%_)
                              (let ((_%hd113426113449%_
                                     (##car _%rest113421113429%_))
                                    (_%tl113427113451%_
                                     (##cdr _%rest113421113429%_)))
                                (let* ((_%hd113454%_ _%hd113426113449%_)
                                       (_%rest113456%_ _%tl113427113451%_))
                                  (_%K113425113446%_
                                   _%rest113456%_
                                   _%hd113454%_)))
                              (_%else113423113437%_)))))))
            (__call-with-parameters
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e113359%_ (_%location113356%_)))
                 (if _%$e113359%_
                     ((lambda (_%where113362%_)
                        (##display-locat _%where113362%_ '#t _%port113342%_))
                      _%$e113359%_)
                     (display '"?")))
               (newline)
               (display '"--- Syntax Error")
               (let ((_%$e113365%_
                      (##unchecked-structure-ref _%self113346%_ '4 '#f '#f)))
                 (if _%$e113365%_
                     ((lambda (_%where113368%_)
                        (displayln
                         '" at "
                         _%where113368%_
                         '": "
                         (##unchecked-structure-ref
                          _%self113346%_
                          '2
                          '#f
                          '#f)))
                      _%$e113365%_)
                     (displayln
                      '": "
                      (##unchecked-structure-ref _%self113346%_ '2 '#f '#f))))
               (let* ((_%self.irritants113370113378%_
                       (##unchecked-structure-ref _%self113346%_ '3 '#f '#f))
                      (_%else113372113386%_ (lambda () '#!void))
                      (_%K113374113399%_
                       (lambda (_%rest113389%_ _%stx113390%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx113390%_)
                         (for-each
                          (lambda (_%detail113392%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail113392%_))
                            (let ((_%$e113394%_
                                   (__AST-source _%detail113392%_)))
                              (if _%$e113394%_
                                  ((lambda (_%loc113397%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc113397%_
                                      '#t
                                      _%port113342%_))
                                   _%$e113394%_)
                                  '#!void))
                            (newline))
                          _%rest113389%_))))
                 (if (pair? _%self.irritants113370113378%_)
                     (let ((_%hd113375113402%_
                            (##car _%self.irritants113370113378%_))
                           (_%tl113376113404%_
                            (##cdr _%self.irritants113370113378%_)))
                       (let* ((_%stx113407%_ _%hd113375113402%_)
                              (_%rest113409%_ _%tl113376113404%_))
                         (_%K113374113399%_ _%rest113409%_ _%stx113407%_)))
                     '#!void))
               (if (##getenv '"GERBIL_DEBUG" '#f)
                   (let ((_%cont113410113412%_
                          (##unchecked-structure-ref
                           _%self113346%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont113410113412%_
                         (let ((_%cont113415%_ _%cont113410113412%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont113415%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port113342%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message113211%_
               _%irritants113212%_
               _%where113213%_
               _%context113214%_
               _%marks113215%_
               _%phi113216%_)
        (let ((__obj113555
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj113555 _%message113211%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj113555
           _%irritants113212%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj113555 _%where113213%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj113555 _%context113214%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj113555 _%marks113215%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj113555 _%phi113216%_ '6 '#f '#f)
          __obj113555)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where113206%_
               _%message113207%_
               _%stx113208%_
               .
               _%details113209%_)
        (raise (make-syntax-error
                _%message113207%_
                (cons _%stx113208%_ _%details113209%_)
                _%where113206%_
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
      (lambda _%$args113203%_ (apply make-instance AST::t _%$args113203%_)))
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
      (lambda (_%stx113201%_)
        (if (##structure-instance-of? _%stx113201%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx113201%_ '1 '#f '#f)
            _%stx113201%_)))
    (define __AST-source
      (lambda (_%stx113192%_)
        (let _%lp113194%_ ((_%src113196%_ _%stx113192%_))
          (if (##structure-instance-of? _%src113196%_ 'gerbil#AST::t)
              (_%lp113194%_
               (##unchecked-structure-ref _%src113196%_ '2 '#f '#f))
              (if (##locat? _%src113196%_) _%src113196%_ '#f)))))
    (define __AST
      (lambda (_%e113184%_ _%src-stx113185%_)
        (let ((_%src113187%_ (__AST-source _%src-stx113185%_)))
          (if (or (##structure-instance-of? _%e113184%_ 'gerbil#AST::t)
                  (not _%src113187%_))
              _%e113184%_
              (##structure AST::t _%e113184%_ _%src113187%_)))))
    (define __AST-eq?
      (lambda (_%stx113181%_ _%obj113182%_)
        (eq? (__AST-e _%stx113181%_) _%obj113182%_)))
    (define __AST-pair?
      (lambda (_%stx113179%_) (pair? (__AST-e _%stx113179%_))))
    (define __AST-null?
      (lambda (_%stx113177%_) (null? (__AST-e _%stx113177%_))))
    (define __AST-datum?
      (lambda (_%stx113158%_)
        (let* ((_%e113160%_ (__AST-e _%stx113158%_))
               (_%$e113162%_ (number? _%e113160%_)))
          (if _%$e113162%_
              _%$e113162%_
              (let ((_%$e113165%_ (string? _%e113160%_)))
                (if _%$e113165%_
                    _%$e113165%_
                    (let ((_%$e113168%_ (char? _%e113160%_)))
                      (if _%$e113168%_
                          _%$e113168%_
                          (let ((_%$e113171%_ (keyword? _%e113160%_)))
                            (if _%$e113171%_
                                _%$e113171%_
                                (let ((_%$e113174%_ (boolean? _%e113160%_)))
                                  (if _%$e113174%_
                                      _%$e113174%_
                                      (eq? _%e113160%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx113156%_) (symbol? (__AST-e _%stx113156%_))))
    (define __AST-id-list?__%
      (lambda (_%stx113107%_ _%tail?113108%_)
        (let _%lp113110%_ ((_%rest113112%_ _%stx113107%_))
          (let* ((_%$e113114%_ _%rest113112%_)
                 (_%$E113116113129%_
                  (lambda ()
                    (let* ((_%$E113117113124%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e113114%_)))
                           (_%rest113127%_ _%$e113114%_))
                      (_%tail?113108%_ _%rest113127%_)))))
            (if (__AST-pair? _%$e113114%_)
                (let* ((_%$tgt113118113132%_ (__AST-e _%$e113114%_))
                       (_%$hd113119113135%_ (##car _%$tgt113118113132%_))
                       (_%$tl113120113138%_ (##cdr _%$tgt113118113132%_))
                       (_%hd113142%_ _%$hd113119113135%_)
                       (_%rest113144%_ _%$tl113120113138%_))
                  (if (__AST-id? _%hd113142%_)
                      (_%lp113110%_ _%rest113144%_)
                      '#f))
                (_%$E113116113129%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx113149%_)
        (let ((_%tail?113151%_ __AST-null?))
          (__AST-id-list?__% _%stx113149%_ _%tail?113151%_))))
    (define __AST-id-list?
      (lambda _g113558_
        (let ((_g113557_ (##length _g113558_)))
          (cond ((##fx= _g113557_ 1) (apply __AST-id-list?__0 _g113558_))
                ((##fx= _g113557_ 2) (apply __AST-id-list?__% _g113558_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g113558_))))))
    (define __AST-bind-list?
      (lambda (_%stx113099%_)
        (__AST-id-list?__%
         _%stx113099%_
         (lambda (_%e113101%_)
           (let ((_%$e113103%_ (__AST-null? _%e113101%_)))
             (if _%$e113103%_ _%$e113103%_ (__AST-id? _%e113101%_)))))))
    (define __AST-list?__%
      (lambda (_%stx113052%_ _%tail?113053%_)
        (let _%lp113055%_ ((_%rest113057%_ _%stx113052%_))
          (let* ((_%$e113059%_ _%rest113057%_)
                 (_%$E113061113074%_
                  (lambda ()
                    (let* ((_%$E113062113069%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e113059%_)))
                           (_%rest113072%_ _%$e113059%_))
                      (_%tail?113053%_ _%rest113072%_)))))
            (if (__AST-pair? _%$e113059%_)
                (let* ((_%$tgt113063113077%_ (__AST-e _%$e113059%_))
                       (_%$hd113064113080%_ (##car _%$tgt113063113077%_))
                       (_%$tl113065113083%_ (##cdr _%$tgt113063113077%_))
                       (_%rest113087%_ _%$tl113065113083%_))
                  (_%lp113055%_ _%rest113087%_))
                (_%$E113061113074%_))))))
    (define __AST-list?__0
      (lambda (_%stx113092%_)
        (let ((_%tail?113094%_ __AST-null?))
          (__AST-list?__% _%stx113092%_ _%tail?113094%_))))
    (define __AST-list?
      (lambda _g113560_
        (let ((_g113559_ (##length _g113560_)))
          (cond ((##fx= _g113559_ 1) (apply __AST-list?__0 _g113560_))
                ((##fx= _g113559_ 2) (apply __AST-list?__% _g113560_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g113560_))))))
    (define __AST->list
      (lambda (_%stx113017%_)
        (let* ((_%$e113019%_ _%stx113017%_)
               (_%$E113021113034%_
                (lambda ()
                  (let* ((_%$E113022113029%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e113019%_)))
                         (_%rest113032%_ _%$e113019%_))
                    (__AST-e _%rest113032%_)))))
          (if (__AST-pair? _%$e113019%_)
              (let* ((_%$tgt113023113037%_ (__AST-e _%$e113019%_))
                     (_%$hd113024113040%_ (##car _%$tgt113023113037%_))
                     (_%$tl113025113043%_ (##cdr _%$tgt113023113037%_))
                     (_%hd113047%_ _%$hd113024113040%_)
                     (_%rest113049%_ _%$tl113025113043%_))
                (cons _%hd113047%_ (__AST->list _%rest113049%_)))
              (_%$E113021113034%_)))))
    (define __AST->datum
      (lambda (_%stx113010%_)
        (if (##structure-instance-of? _%stx113010%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx113010%_))
            (if (pair? _%stx113010%_)
                (cons (__AST->datum (##car _%stx113010%_))
                      (__AST->datum (##cdr _%stx113010%_)))
                (if (vector? _%stx113010%_)
                    (vector-map __AST->datum _%stx113010%_)
                    (if (box? _%stx113010%_)
                        (box (__AST->datum (unbox _%stx113010%_)))
                        _%stx113010%_))))))
    (define get-readenv
      (lambda (_%port113008%_)
        (##make-readenv
         _%port113008%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in112996%_)
        (let ((_%e112998%_ (##read-datum-or-eof (get-readenv _%in112996%_))))
          (if (eof-object? (__AST-e _%e112998%_))
              (__AST-e _%e112998%_)
              _%e112998%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in113004%_ (current-input-port)))
          (read-syntax__% _%in113004%_))))
    (define read-syntax
      (lambda _g113562_
        (let ((_g113561_ (##length _g113562_)))
          (cond ((##fx= _g113561_ 0) (apply read-syntax__0 _g113562_))
                ((##fx= _g113561_ 1) (apply read-syntax__% _g113562_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g113562_))))))
    (define read-syntax-from-file
      (lambda (_%path112991%_)
        (let ((_%r112993%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path112991%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r112993%_)
              (cdr (__AST-e (vector-ref _%r112993%_ '1)))
              (error (err-code->string _%r112993%_) _%path112991%_)))))
    (define __wrap-syntax
      (lambda (_%re112988%_ _%e112989%_)
        (if (eof-object? _%e112989%_)
            _%e112989%_
            (##structure AST::t _%e112989%_ (##readenv->locat _%re112988%_)))))
    (define __unwrap-syntax
      (lambda (_%re112985%_ _%e112986%_) (__AST-e _%e112986%_)))
    (define __pp-syntax
      (lambda (_%stx112983%_) (pp (__AST->datum _%stx112983%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt112981%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt112981%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt112981%_ '@list)
          (macro-readtable-brace-handler-set! _%rt112981%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt112981%_
           '#\!
           __read-sharp-bang)
          _%rt112981%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt112977%_ _%kw112978%_)
        (macro-readtable-bracket-handler-set! _%rt112977%_ _%kw112978%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt112974%_ _%kw112975%_)
        (macro-readtable-brace-handler-set! _%rt112974%_ _%kw112975%_)))
    (define __read-sharp-bang
      (lambda (_%re112965%_ _%next112966%_ _%start-pos112967%_)
        (if (eq? _%start-pos112967%_ '0)
            (let* ((_%line112969%_
                    (##read-line
                     (macro-readenv-port _%re112965%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line112971%_
                    (substring
                     _%line112969%_
                     '1
                     (string-length _%line112969%_))))
              (macro-readenv-script-line-set!
               _%re112965%_
               _%script-line112971%_)
              (##script-marker))
            (##read-sharp-bang
             _%re112965%_
             _%next112966%_
             _%start-pos112967%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj112963%_)
        (if (source-location? _%obj112963%_)
            (string? (##locat-container _%obj112963%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj112961%_)
        (if (##locat? _%obj112961%_)
            (##container->path (##locat-container _%obj112961%_))
            '#f)))))

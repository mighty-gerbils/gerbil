(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1712997786)
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
      (lambda _%$args110456%_
        (apply make-instance SyntaxError::t _%$args110456%_)))
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
      (lambda (_%self109957110338%_ _%port110340%_)
        (let* ((_%self110342%_ _%self109957110338%_)
               (_%self110344%_ _%self110342%_))
          (letrec ((_%location110354%_
                    (lambda ()
                      (let _%lp110416%_ ((_%rest110418%_
                                          (##unchecked-structure-ref
                                           _%self110344%_
                                           '3
                                           '#f
                                           '#f)))
                        (let* ((_%rest110419110427%_ _%rest110418%_)
                               (_%else110421110435%_ (lambda () '#f))
                               (_%K110423110444%_
                                (lambda (_%rest110438%_ _%hd110439%_)
                                  (let ((_%$e110441%_
                                         (__AST-source _%hd110439%_)))
                                    (if _%$e110441%_
                                        _%$e110441%_
                                        (_%lp110416%_ _%rest110438%_))))))
                          (if (##pair? _%rest110419110427%_)
                              (let ((_%hd110424110447%_
                                     (##car _%rest110419110427%_))
                                    (_%tl110425110449%_
                                     (##cdr _%rest110419110427%_)))
                                (let* ((_%hd110452%_ _%hd110424110447%_)
                                       (_%rest110454%_ _%tl110425110449%_))
                                  (_%K110423110444%_
                                   _%rest110454%_
                                   _%hd110452%_)))
                              (_%else110421110435%_)))))))
            (__call-with-parameters
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e110357%_ (_%location110354%_)))
                 (if _%$e110357%_
                     ((lambda (_%where110360%_)
                        (##display-locat _%where110360%_ '#t _%port110340%_))
                      _%$e110357%_)
                     (display '"?")))
               (newline)
               (display '"--- Syntax Error")
               (let ((_%$e110363%_
                      (##unchecked-structure-ref _%self110344%_ '4 '#f '#f)))
                 (if _%$e110363%_
                     ((lambda (_%where110366%_)
                        (displayln
                         '" at "
                         _%where110366%_
                         '": "
                         (##unchecked-structure-ref
                          _%self110344%_
                          '2
                          '#f
                          '#f)))
                      _%$e110363%_)
                     (displayln
                      '": "
                      (##unchecked-structure-ref _%self110344%_ '2 '#f '#f))))
               (let* ((_%self.irritants110368110376%_
                       (##unchecked-structure-ref _%self110344%_ '3 '#f '#f))
                      (_%else110370110384%_ (lambda () '#!void))
                      (_%K110372110397%_
                       (lambda (_%rest110387%_ _%stx110388%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx110388%_)
                         (for-each
                          (lambda (_%detail110390%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail110390%_))
                            (let ((_%$e110392%_
                                   (__AST-source _%detail110390%_)))
                              (if _%$e110392%_
                                  ((lambda (_%loc110395%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc110395%_
                                      '#t
                                      _%port110340%_))
                                   _%$e110392%_)
                                  '#!void))
                            (newline))
                          _%rest110387%_))))
                 (if (##pair? _%self.irritants110368110376%_)
                     (let ((_%hd110373110400%_
                            (##car _%self.irritants110368110376%_))
                           (_%tl110374110402%_
                            (##cdr _%self.irritants110368110376%_)))
                       (let* ((_%stx110405%_ _%hd110373110400%_)
                              (_%rest110407%_ _%tl110374110402%_))
                         (_%K110372110397%_ _%rest110407%_ _%stx110405%_)))
                     '#!void))
               (if (##getenv '"GERBIL_DEBUG" '#f)
                   (let ((_%cont110408110410%_
                          (##unchecked-structure-ref
                           _%self110344%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont110408110410%_
                         (let ((_%cont110413%_ _%cont110408110410%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont110413%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port110340%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message110209%_
               _%irritants110210%_
               _%where110211%_
               _%context110212%_
               _%marks110213%_
               _%phi110214%_)
        (let ((__obj110553
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj110553 _%message110209%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj110553
           _%irritants110210%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj110553 _%where110211%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj110553 _%context110212%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj110553 _%marks110213%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj110553 _%phi110214%_ '6 '#f '#f)
          __obj110553)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where110204%_
               _%message110205%_
               _%stx110206%_
               .
               _%details110207%_)
        (raise (make-syntax-error
                _%message110205%_
                (cons _%stx110206%_ _%details110207%_)
                _%where110204%_
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
      (lambda _%$args110201%_ (apply make-instance AST::t _%$args110201%_)))
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
      (lambda (_%stx110199%_)
        (if (##structure-instance-of? _%stx110199%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx110199%_ '1 '#f '#f)
            _%stx110199%_)))
    (define __AST-source
      (lambda (_%stx110190%_)
        (let _%lp110192%_ ((_%src110194%_ _%stx110190%_))
          (if (##structure-instance-of? _%src110194%_ 'gerbil#AST::t)
              (_%lp110192%_
               (##unchecked-structure-ref _%src110194%_ '2 '#f '#f))
              (if (##locat? _%src110194%_) _%src110194%_ '#f)))))
    (define __AST
      (lambda (_%e110182%_ _%src-stx110183%_)
        (let ((_%src110185%_ (__AST-source _%src-stx110183%_)))
          (if (or (##structure-instance-of? _%e110182%_ 'gerbil#AST::t)
                  (not _%src110185%_))
              _%e110182%_
              (##structure AST::t _%e110182%_ _%src110185%_)))))
    (define __AST-eq?
      (lambda (_%stx110179%_ _%obj110180%_)
        (eq? (__AST-e _%stx110179%_) _%obj110180%_)))
    (define __AST-pair?
      (lambda (_%stx110177%_) (pair? (__AST-e _%stx110177%_))))
    (define __AST-null?
      (lambda (_%stx110175%_) (null? (__AST-e _%stx110175%_))))
    (define __AST-datum?
      (lambda (_%stx110156%_)
        (let* ((_%e110158%_ (__AST-e _%stx110156%_))
               (_%$e110160%_ (number? _%e110158%_)))
          (if _%$e110160%_
              _%$e110160%_
              (let ((_%$e110163%_ (string? _%e110158%_)))
                (if _%$e110163%_
                    _%$e110163%_
                    (let ((_%$e110166%_ (char? _%e110158%_)))
                      (if _%$e110166%_
                          _%$e110166%_
                          (let ((_%$e110169%_ (keyword? _%e110158%_)))
                            (if _%$e110169%_
                                _%$e110169%_
                                (let ((_%$e110172%_ (boolean? _%e110158%_)))
                                  (if _%$e110172%_
                                      _%$e110172%_
                                      (eq? _%e110158%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx110154%_) (symbol? (__AST-e _%stx110154%_))))
    (define __AST-id-list?__%
      (lambda (_%stx110105%_ _%tail?110106%_)
        (let _%lp110108%_ ((_%rest110110%_ _%stx110105%_))
          (let* ((_%$e110112%_ _%rest110110%_)
                 (_%$E110114110127%_
                  (lambda ()
                    (let* ((_%$E110115110122%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e110112%_)))
                           (_%rest110125%_ _%$e110112%_))
                      (_%tail?110106%_ _%rest110125%_)))))
            (if (__AST-pair? _%$e110112%_)
                (let* ((_%$tgt110116110130%_ (__AST-e _%$e110112%_))
                       (_%$hd110117110133%_ (##car _%$tgt110116110130%_))
                       (_%$tl110118110136%_ (##cdr _%$tgt110116110130%_))
                       (_%hd110140%_ _%$hd110117110133%_)
                       (_%rest110142%_ _%$tl110118110136%_))
                  (if (__AST-id? _%hd110140%_)
                      (_%lp110108%_ _%rest110142%_)
                      '#f))
                (_%$E110114110127%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx110147%_)
        (let ((_%tail?110149%_ __AST-null?))
          (__AST-id-list?__% _%stx110147%_ _%tail?110149%_))))
    (define __AST-id-list?
      (lambda _g110556_
        (let ((_g110555_ (##length _g110556_)))
          (cond ((##fx= _g110555_ 1) (apply __AST-id-list?__0 _g110556_))
                ((##fx= _g110555_ 2) (apply __AST-id-list?__% _g110556_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g110556_))))))
    (define __AST-bind-list?
      (lambda (_%stx110097%_)
        (__AST-id-list?__%
         _%stx110097%_
         (lambda (_%e110099%_)
           (let ((_%$e110101%_ (__AST-null? _%e110099%_)))
             (if _%$e110101%_ _%$e110101%_ (__AST-id? _%e110099%_)))))))
    (define __AST-list?__%
      (lambda (_%stx110050%_ _%tail?110051%_)
        (let _%lp110053%_ ((_%rest110055%_ _%stx110050%_))
          (let* ((_%$e110057%_ _%rest110055%_)
                 (_%$E110059110072%_
                  (lambda ()
                    (let* ((_%$E110060110067%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e110057%_)))
                           (_%rest110070%_ _%$e110057%_))
                      (_%tail?110051%_ _%rest110070%_)))))
            (if (__AST-pair? _%$e110057%_)
                (let* ((_%$tgt110061110075%_ (__AST-e _%$e110057%_))
                       (_%$hd110062110078%_ (##car _%$tgt110061110075%_))
                       (_%$tl110063110081%_ (##cdr _%$tgt110061110075%_))
                       (_%rest110085%_ _%$tl110063110081%_))
                  (_%lp110053%_ _%rest110085%_))
                (_%$E110059110072%_))))))
    (define __AST-list?__0
      (lambda (_%stx110090%_)
        (let ((_%tail?110092%_ __AST-null?))
          (__AST-list?__% _%stx110090%_ _%tail?110092%_))))
    (define __AST-list?
      (lambda _g110558_
        (let ((_g110557_ (##length _g110558_)))
          (cond ((##fx= _g110557_ 1) (apply __AST-list?__0 _g110558_))
                ((##fx= _g110557_ 2) (apply __AST-list?__% _g110558_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g110558_))))))
    (define __AST->list
      (lambda (_%stx110015%_)
        (let* ((_%$e110017%_ _%stx110015%_)
               (_%$E110019110032%_
                (lambda ()
                  (let* ((_%$E110020110027%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e110017%_)))
                         (_%rest110030%_ _%$e110017%_))
                    (__AST-e _%rest110030%_)))))
          (if (__AST-pair? _%$e110017%_)
              (let* ((_%$tgt110021110035%_ (__AST-e _%$e110017%_))
                     (_%$hd110022110038%_ (##car _%$tgt110021110035%_))
                     (_%$tl110023110041%_ (##cdr _%$tgt110021110035%_))
                     (_%hd110045%_ _%$hd110022110038%_)
                     (_%rest110047%_ _%$tl110023110041%_))
                (cons _%hd110045%_ (__AST->list _%rest110047%_)))
              (_%$E110019110032%_)))))
    (define __AST->datum
      (lambda (_%stx110008%_)
        (if (##structure-instance-of? _%stx110008%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx110008%_))
            (if (pair? _%stx110008%_)
                (cons (__AST->datum (##car _%stx110008%_))
                      (__AST->datum (##cdr _%stx110008%_)))
                (if (vector? _%stx110008%_)
                    (vector-map __AST->datum _%stx110008%_)
                    (if (box? _%stx110008%_)
                        (box (__AST->datum (unbox _%stx110008%_)))
                        _%stx110008%_))))))
    (define get-readenv
      (lambda (_%port110006%_)
        (##make-readenv
         _%port110006%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in109994%_)
        (let ((_%e109996%_ (##read-datum-or-eof (get-readenv _%in109994%_))))
          (if (eof-object? (__AST-e _%e109996%_))
              (__AST-e _%e109996%_)
              _%e109996%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in110002%_ (current-input-port)))
          (read-syntax__% _%in110002%_))))
    (define read-syntax
      (lambda _g110560_
        (let ((_g110559_ (##length _g110560_)))
          (cond ((##fx= _g110559_ 0) (apply read-syntax__0 _g110560_))
                ((##fx= _g110559_ 1) (apply read-syntax__% _g110560_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g110560_))))))
    (define read-syntax-from-file
      (lambda (_%path109989%_)
        (let ((_%r109991%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path109989%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r109991%_)
              (cdr (__AST-e (vector-ref _%r109991%_ '1)))
              (error (err-code->string _%r109991%_) _%path109989%_)))))
    (define __wrap-syntax
      (lambda (_%re109986%_ _%e109987%_)
        (if (eof-object? _%e109987%_)
            _%e109987%_
            (##structure AST::t _%e109987%_ (##readenv->locat _%re109986%_)))))
    (define __unwrap-syntax
      (lambda (_%re109983%_ _%e109984%_) (__AST-e _%e109984%_)))
    (define __pp-syntax
      (lambda (_%stx109981%_) (pp (__AST->datum _%stx109981%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt109979%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt109979%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt109979%_ '@list)
          (macro-readtable-brace-handler-set! _%rt109979%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt109979%_
           '#\!
           __read-sharp-bang)
          _%rt109979%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt109975%_ _%kw109976%_)
        (macro-readtable-bracket-handler-set! _%rt109975%_ _%kw109976%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt109972%_ _%kw109973%_)
        (macro-readtable-brace-handler-set! _%rt109972%_ _%kw109973%_)))
    (define __read-sharp-bang
      (lambda (_%re109963%_ _%next109964%_ _%start-pos109965%_)
        (if (eq? _%start-pos109965%_ '0)
            (let* ((_%line109967%_
                    (##read-line
                     (macro-readenv-port _%re109963%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line109969%_
                    (substring
                     _%line109967%_
                     '1
                     (string-length _%line109967%_))))
              (macro-readenv-script-line-set!
               _%re109963%_
               _%script-line109969%_)
              (##script-marker))
            (##read-sharp-bang
             _%re109963%_
             _%next109964%_
             _%start-pos109965%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj109961%_)
        (if (source-location? _%obj109961%_)
            (string? (##locat-container _%obj109961%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj109959%_)
        (if (##locat? _%obj109959%_)
            (##container->path (##locat-container _%obj109959%_))
            '#f)))))

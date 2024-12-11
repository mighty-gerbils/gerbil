(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1733870073)
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
      (lambda _%$args112367%_
        (apply make-instance SyntaxError::t _%$args112367%_)))
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
      (lambda (_%self111868112249%_ _%port112251%_)
        (let* ((_%self112253%_ _%self111868112249%_)
               (_%self112255%_ _%self112253%_))
          (letrec ((_%location112265%_
                    (lambda ()
                      (let _%lp112327%_ ((_%rest112329%_
                                          (##unchecked-structure-ref
                                           _%self112255%_
                                           '3
                                           '#f
                                           '#f)))
                        (let* ((_%rest112330112338%_ _%rest112329%_)
                               (_%else112332112346%_ (lambda () '#f))
                               (_%K112334112355%_
                                (lambda (_%rest112349%_ _%hd112350%_)
                                  (let ((_%$e112352%_
                                         (__AST-source _%hd112350%_)))
                                    (if _%$e112352%_
                                        _%$e112352%_
                                        (_%lp112327%_ _%rest112349%_))))))
                          (if (pair? _%rest112330112338%_)
                              (let ((_%hd112335112358%_
                                     (##car _%rest112330112338%_))
                                    (_%tl112336112360%_
                                     (##cdr _%rest112330112338%_)))
                                (let* ((_%hd112363%_ _%hd112335112358%_)
                                       (_%rest112365%_ _%tl112336112360%_))
                                  (_%K112334112355%_
                                   _%rest112365%_
                                   _%hd112363%_)))
                              (_%else112332112346%_)))))))
            (__call-with-parameters
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e112268%_ (_%location112265%_)))
                 (if _%$e112268%_
                     ((lambda (_%where112271%_)
                        (##display-locat _%where112271%_ '#t _%port112251%_))
                      _%$e112268%_)
                     (display '"?")))
               (newline)
               (display '"--- Syntax Error")
               (let ((_%$e112274%_
                      (##unchecked-structure-ref _%self112255%_ '4 '#f '#f)))
                 (if _%$e112274%_
                     ((lambda (_%where112277%_)
                        (displayln
                         '" at "
                         _%where112277%_
                         '": "
                         (##unchecked-structure-ref
                          _%self112255%_
                          '2
                          '#f
                          '#f)))
                      _%$e112274%_)
                     (displayln
                      '": "
                      (##unchecked-structure-ref _%self112255%_ '2 '#f '#f))))
               (let* ((_%self.irritants112279112287%_
                       (##unchecked-structure-ref _%self112255%_ '3 '#f '#f))
                      (_%else112281112295%_ (lambda () '#!void))
                      (_%K112283112308%_
                       (lambda (_%rest112298%_ _%stx112299%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx112299%_)
                         (for-each
                          (lambda (_%detail112301%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail112301%_))
                            (let ((_%$e112303%_
                                   (__AST-source _%detail112301%_)))
                              (if _%$e112303%_
                                  ((lambda (_%loc112306%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc112306%_
                                      '#t
                                      _%port112251%_))
                                   _%$e112303%_)
                                  '#!void))
                            (newline))
                          _%rest112298%_))))
                 (if (pair? _%self.irritants112279112287%_)
                     (let ((_%hd112284112311%_
                            (##car _%self.irritants112279112287%_))
                           (_%tl112285112313%_
                            (##cdr _%self.irritants112279112287%_)))
                       (let* ((_%stx112316%_ _%hd112284112311%_)
                              (_%rest112318%_ _%tl112285112313%_))
                         (_%K112283112308%_ _%rest112318%_ _%stx112316%_)))
                     '#!void))
               (if (##getenv '"GERBIL_DEBUG" '#f)
                   (let ((_%cont112319112321%_
                          (##unchecked-structure-ref
                           _%self112255%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont112319112321%_
                         (let ((_%cont112324%_ _%cont112319112321%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont112324%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port112251%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message112120%_
               _%irritants112121%_
               _%where112122%_
               _%context112123%_
               _%marks112124%_
               _%phi112125%_)
        (let ((__obj112464
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj112464 _%message112120%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj112464
           _%irritants112121%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj112464 _%where112122%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj112464 _%context112123%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj112464 _%marks112124%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj112464 _%phi112125%_ '6 '#f '#f)
          __obj112464)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where112115%_
               _%message112116%_
               _%stx112117%_
               .
               _%details112118%_)
        (raise (make-syntax-error
                _%message112116%_
                (cons _%stx112117%_ _%details112118%_)
                _%where112115%_
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
      (lambda _%$args112112%_ (apply make-instance AST::t _%$args112112%_)))
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
      (lambda (_%stx112110%_)
        (if (##structure-instance-of? _%stx112110%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx112110%_ '1 '#f '#f)
            _%stx112110%_)))
    (define __AST-source
      (lambda (_%stx112101%_)
        (let _%lp112103%_ ((_%src112105%_ _%stx112101%_))
          (if (##structure-instance-of? _%src112105%_ 'gerbil#AST::t)
              (_%lp112103%_
               (##unchecked-structure-ref _%src112105%_ '2 '#f '#f))
              (if (##locat? _%src112105%_) _%src112105%_ '#f)))))
    (define __AST
      (lambda (_%e112093%_ _%src-stx112094%_)
        (let ((_%src112096%_ (__AST-source _%src-stx112094%_)))
          (if (or (##structure-instance-of? _%e112093%_ 'gerbil#AST::t)
                  (not _%src112096%_))
              _%e112093%_
              (##structure AST::t _%e112093%_ _%src112096%_)))))
    (define __AST-eq?
      (lambda (_%stx112090%_ _%obj112091%_)
        (eq? (__AST-e _%stx112090%_) _%obj112091%_)))
    (define __AST-pair?
      (lambda (_%stx112088%_) (pair? (__AST-e _%stx112088%_))))
    (define __AST-null?
      (lambda (_%stx112086%_) (null? (__AST-e _%stx112086%_))))
    (define __AST-datum?
      (lambda (_%stx112067%_)
        (let* ((_%e112069%_ (__AST-e _%stx112067%_))
               (_%$e112071%_ (number? _%e112069%_)))
          (if _%$e112071%_
              _%$e112071%_
              (let ((_%$e112074%_ (string? _%e112069%_)))
                (if _%$e112074%_
                    _%$e112074%_
                    (let ((_%$e112077%_ (char? _%e112069%_)))
                      (if _%$e112077%_
                          _%$e112077%_
                          (let ((_%$e112080%_ (keyword? _%e112069%_)))
                            (if _%$e112080%_
                                _%$e112080%_
                                (let ((_%$e112083%_ (boolean? _%e112069%_)))
                                  (if _%$e112083%_
                                      _%$e112083%_
                                      (eq? _%e112069%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx112065%_) (symbol? (__AST-e _%stx112065%_))))
    (define __AST-id-list?__%
      (lambda (_%stx112016%_ _%tail?112017%_)
        (let _%lp112019%_ ((_%rest112021%_ _%stx112016%_))
          (let* ((_%$e112023%_ _%rest112021%_)
                 (_%$E112025112038%_
                  (lambda ()
                    (let* ((_%$E112026112033%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e112023%_)))
                           (_%rest112036%_ _%$e112023%_))
                      (_%tail?112017%_ _%rest112036%_)))))
            (if (__AST-pair? _%$e112023%_)
                (let* ((_%$tgt112027112041%_ (__AST-e _%$e112023%_))
                       (_%$hd112028112044%_ (##car _%$tgt112027112041%_))
                       (_%$tl112029112047%_ (##cdr _%$tgt112027112041%_))
                       (_%hd112051%_ _%$hd112028112044%_)
                       (_%rest112053%_ _%$tl112029112047%_))
                  (if (__AST-id? _%hd112051%_)
                      (_%lp112019%_ _%rest112053%_)
                      '#f))
                (_%$E112025112038%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx112058%_)
        (let ((_%tail?112060%_ __AST-null?))
          (__AST-id-list?__% _%stx112058%_ _%tail?112060%_))))
    (define __AST-id-list?
      (lambda _g112467_
        (let ((_g112466_ (##length _g112467_)))
          (cond ((##fx= _g112466_ 1) (apply __AST-id-list?__0 _g112467_))
                ((##fx= _g112466_ 2) (apply __AST-id-list?__% _g112467_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g112467_))))))
    (define __AST-bind-list?
      (lambda (_%stx112008%_)
        (__AST-id-list?__%
         _%stx112008%_
         (lambda (_%e112010%_)
           (let ((_%$e112012%_ (__AST-null? _%e112010%_)))
             (if _%$e112012%_ _%$e112012%_ (__AST-id? _%e112010%_)))))))
    (define __AST-list?__%
      (lambda (_%stx111961%_ _%tail?111962%_)
        (let _%lp111964%_ ((_%rest111966%_ _%stx111961%_))
          (let* ((_%$e111968%_ _%rest111966%_)
                 (_%$E111970111983%_
                  (lambda ()
                    (let* ((_%$E111971111978%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e111968%_)))
                           (_%rest111981%_ _%$e111968%_))
                      (_%tail?111962%_ _%rest111981%_)))))
            (if (__AST-pair? _%$e111968%_)
                (let* ((_%$tgt111972111986%_ (__AST-e _%$e111968%_))
                       (_%$hd111973111989%_ (##car _%$tgt111972111986%_))
                       (_%$tl111974111992%_ (##cdr _%$tgt111972111986%_))
                       (_%rest111996%_ _%$tl111974111992%_))
                  (_%lp111964%_ _%rest111996%_))
                (_%$E111970111983%_))))))
    (define __AST-list?__0
      (lambda (_%stx112001%_)
        (let ((_%tail?112003%_ __AST-null?))
          (__AST-list?__% _%stx112001%_ _%tail?112003%_))))
    (define __AST-list?
      (lambda _g112469_
        (let ((_g112468_ (##length _g112469_)))
          (cond ((##fx= _g112468_ 1) (apply __AST-list?__0 _g112469_))
                ((##fx= _g112468_ 2) (apply __AST-list?__% _g112469_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g112469_))))))
    (define __AST->list
      (lambda (_%stx111926%_)
        (let* ((_%$e111928%_ _%stx111926%_)
               (_%$E111930111943%_
                (lambda ()
                  (let* ((_%$E111931111938%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e111928%_)))
                         (_%rest111941%_ _%$e111928%_))
                    (__AST-e _%rest111941%_)))))
          (if (__AST-pair? _%$e111928%_)
              (let* ((_%$tgt111932111946%_ (__AST-e _%$e111928%_))
                     (_%$hd111933111949%_ (##car _%$tgt111932111946%_))
                     (_%$tl111934111952%_ (##cdr _%$tgt111932111946%_))
                     (_%hd111956%_ _%$hd111933111949%_)
                     (_%rest111958%_ _%$tl111934111952%_))
                (cons _%hd111956%_ (__AST->list _%rest111958%_)))
              (_%$E111930111943%_)))))
    (define __AST->datum
      (lambda (_%stx111919%_)
        (if (##structure-instance-of? _%stx111919%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx111919%_))
            (if (pair? _%stx111919%_)
                (cons (__AST->datum (##car _%stx111919%_))
                      (__AST->datum (##cdr _%stx111919%_)))
                (if (vector? _%stx111919%_)
                    (vector-map __AST->datum _%stx111919%_)
                    (if (box? _%stx111919%_)
                        (box (__AST->datum (unbox _%stx111919%_)))
                        _%stx111919%_))))))
    (define get-readenv
      (lambda (_%port111917%_)
        (##make-readenv
         _%port111917%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in111905%_)
        (let ((_%e111907%_ (##read-datum-or-eof (get-readenv _%in111905%_))))
          (if (eof-object? (__AST-e _%e111907%_))
              (__AST-e _%e111907%_)
              _%e111907%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in111913%_ (current-input-port)))
          (read-syntax__% _%in111913%_))))
    (define read-syntax
      (lambda _g112471_
        (let ((_g112470_ (##length _g112471_)))
          (cond ((##fx= _g112470_ 0) (apply read-syntax__0 _g112471_))
                ((##fx= _g112470_ 1) (apply read-syntax__% _g112471_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g112471_))))))
    (define read-syntax-from-file
      (lambda (_%path111900%_)
        (let ((_%r111902%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path111900%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r111902%_)
              (cdr (__AST-e (vector-ref _%r111902%_ '1)))
              (error (err-code->string _%r111902%_) _%path111900%_)))))
    (define __wrap-syntax
      (lambda (_%re111897%_ _%e111898%_)
        (if (eof-object? _%e111898%_)
            _%e111898%_
            (##structure AST::t _%e111898%_ (##readenv->locat _%re111897%_)))))
    (define __unwrap-syntax
      (lambda (_%re111894%_ _%e111895%_) (__AST-e _%e111895%_)))
    (define __pp-syntax
      (lambda (_%stx111892%_) (pp (__AST->datum _%stx111892%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt111890%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt111890%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt111890%_ '@list)
          (macro-readtable-brace-handler-set! _%rt111890%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt111890%_
           '#\!
           __read-sharp-bang)
          _%rt111890%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt111886%_ _%kw111887%_)
        (macro-readtable-bracket-handler-set! _%rt111886%_ _%kw111887%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt111883%_ _%kw111884%_)
        (macro-readtable-brace-handler-set! _%rt111883%_ _%kw111884%_)))
    (define __read-sharp-bang
      (lambda (_%re111874%_ _%next111875%_ _%start-pos111876%_)
        (if (eq? _%start-pos111876%_ '0)
            (let* ((_%line111878%_
                    (##read-line
                     (macro-readenv-port _%re111874%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line111880%_
                    (substring
                     _%line111878%_
                     '1
                     (string-length _%line111878%_))))
              (macro-readenv-script-line-set!
               _%re111874%_
               _%script-line111880%_)
              (##script-marker))
            (##read-sharp-bang
             _%re111874%_
             _%next111875%_
             _%start-pos111876%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj111872%_)
        (if (source-location? _%obj111872%_)
            (string? (##locat-container _%obj111872%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj111870%_)
        (if (##locat? _%obj111870%_)
            (##container->path (##locat-container _%obj111870%_))
            '#f)))))

(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1713631265)
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
      (lambda _%$args112208%_
        (apply make-instance SyntaxError::t _%$args112208%_)))
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
      (lambda (_%self111709112090%_ _%port112092%_)
        (let* ((_%self112094%_ _%self111709112090%_)
               (_%self112096%_ _%self112094%_))
          (letrec ((_%location112106%_
                    (lambda ()
                      (let _%lp112168%_ ((_%rest112170%_
                                          (##unchecked-structure-ref
                                           _%self112096%_
                                           '3
                                           '#f
                                           '#f)))
                        (let* ((_%rest112171112179%_ _%rest112170%_)
                               (_%else112173112187%_ (lambda () '#f))
                               (_%K112175112196%_
                                (lambda (_%rest112190%_ _%hd112191%_)
                                  (let ((_%$e112193%_
                                         (__AST-source _%hd112191%_)))
                                    (if _%$e112193%_
                                        _%$e112193%_
                                        (_%lp112168%_ _%rest112190%_))))))
                          (if (pair? _%rest112171112179%_)
                              (let ((_%hd112176112199%_
                                     (##car _%rest112171112179%_))
                                    (_%tl112177112201%_
                                     (##cdr _%rest112171112179%_)))
                                (let* ((_%hd112204%_ _%hd112176112199%_)
                                       (_%rest112206%_ _%tl112177112201%_))
                                  (_%K112175112196%_
                                   _%rest112206%_
                                   _%hd112204%_)))
                              (_%else112173112187%_)))))))
            (__call-with-parameters
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e112109%_ (_%location112106%_)))
                 (if _%$e112109%_
                     ((lambda (_%where112112%_)
                        (##display-locat _%where112112%_ '#t _%port112092%_))
                      _%$e112109%_)
                     (display '"?")))
               (newline)
               (display '"--- Syntax Error")
               (let ((_%$e112115%_
                      (##unchecked-structure-ref _%self112096%_ '4 '#f '#f)))
                 (if _%$e112115%_
                     ((lambda (_%where112118%_)
                        (displayln
                         '" at "
                         _%where112118%_
                         '": "
                         (##unchecked-structure-ref
                          _%self112096%_
                          '2
                          '#f
                          '#f)))
                      _%$e112115%_)
                     (displayln
                      '": "
                      (##unchecked-structure-ref _%self112096%_ '2 '#f '#f))))
               (let* ((_%self.irritants112120112128%_
                       (##unchecked-structure-ref _%self112096%_ '3 '#f '#f))
                      (_%else112122112136%_ (lambda () '#!void))
                      (_%K112124112149%_
                       (lambda (_%rest112139%_ _%stx112140%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx112140%_)
                         (for-each
                          (lambda (_%detail112142%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail112142%_))
                            (let ((_%$e112144%_
                                   (__AST-source _%detail112142%_)))
                              (if _%$e112144%_
                                  ((lambda (_%loc112147%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc112147%_
                                      '#t
                                      _%port112092%_))
                                   _%$e112144%_)
                                  '#!void))
                            (newline))
                          _%rest112139%_))))
                 (if (pair? _%self.irritants112120112128%_)
                     (let ((_%hd112125112152%_
                            (##car _%self.irritants112120112128%_))
                           (_%tl112126112154%_
                            (##cdr _%self.irritants112120112128%_)))
                       (let* ((_%stx112157%_ _%hd112125112152%_)
                              (_%rest112159%_ _%tl112126112154%_))
                         (_%K112124112149%_ _%rest112159%_ _%stx112157%_)))
                     '#!void))
               (if (##getenv '"GERBIL_DEBUG" '#f)
                   (let ((_%cont112160112162%_
                          (##unchecked-structure-ref
                           _%self112096%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont112160112162%_
                         (let ((_%cont112165%_ _%cont112160112162%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont112165%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port112092%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message111961%_
               _%irritants111962%_
               _%where111963%_
               _%context111964%_
               _%marks111965%_
               _%phi111966%_)
        (let ((__obj112305
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj112305 _%message111961%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj112305
           _%irritants111962%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj112305 _%where111963%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj112305 _%context111964%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj112305 _%marks111965%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj112305 _%phi111966%_ '6 '#f '#f)
          __obj112305)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where111956%_
               _%message111957%_
               _%stx111958%_
               .
               _%details111959%_)
        (raise (make-syntax-error
                _%message111957%_
                (cons _%stx111958%_ _%details111959%_)
                _%where111956%_
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
      (lambda _%$args111953%_ (apply make-instance AST::t _%$args111953%_)))
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
      (lambda (_%stx111951%_)
        (if (##structure-instance-of? _%stx111951%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx111951%_ '1 '#f '#f)
            _%stx111951%_)))
    (define __AST-source
      (lambda (_%stx111942%_)
        (let _%lp111944%_ ((_%src111946%_ _%stx111942%_))
          (if (##structure-instance-of? _%src111946%_ 'gerbil#AST::t)
              (_%lp111944%_
               (##unchecked-structure-ref _%src111946%_ '2 '#f '#f))
              (if (##locat? _%src111946%_) _%src111946%_ '#f)))))
    (define __AST
      (lambda (_%e111934%_ _%src-stx111935%_)
        (let ((_%src111937%_ (__AST-source _%src-stx111935%_)))
          (if (or (##structure-instance-of? _%e111934%_ 'gerbil#AST::t)
                  (not _%src111937%_))
              _%e111934%_
              (##structure AST::t _%e111934%_ _%src111937%_)))))
    (define __AST-eq?
      (lambda (_%stx111931%_ _%obj111932%_)
        (eq? (__AST-e _%stx111931%_) _%obj111932%_)))
    (define __AST-pair?
      (lambda (_%stx111929%_) (pair? (__AST-e _%stx111929%_))))
    (define __AST-null?
      (lambda (_%stx111927%_) (null? (__AST-e _%stx111927%_))))
    (define __AST-datum?
      (lambda (_%stx111908%_)
        (let* ((_%e111910%_ (__AST-e _%stx111908%_))
               (_%$e111912%_ (number? _%e111910%_)))
          (if _%$e111912%_
              _%$e111912%_
              (let ((_%$e111915%_ (string? _%e111910%_)))
                (if _%$e111915%_
                    _%$e111915%_
                    (let ((_%$e111918%_ (char? _%e111910%_)))
                      (if _%$e111918%_
                          _%$e111918%_
                          (let ((_%$e111921%_ (keyword? _%e111910%_)))
                            (if _%$e111921%_
                                _%$e111921%_
                                (let ((_%$e111924%_ (boolean? _%e111910%_)))
                                  (if _%$e111924%_
                                      _%$e111924%_
                                      (eq? _%e111910%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx111906%_) (symbol? (__AST-e _%stx111906%_))))
    (define __AST-id-list?__%
      (lambda (_%stx111857%_ _%tail?111858%_)
        (let _%lp111860%_ ((_%rest111862%_ _%stx111857%_))
          (let* ((_%$e111864%_ _%rest111862%_)
                 (_%$E111866111879%_
                  (lambda ()
                    (let* ((_%$E111867111874%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e111864%_)))
                           (_%rest111877%_ _%$e111864%_))
                      (_%tail?111858%_ _%rest111877%_)))))
            (if (__AST-pair? _%$e111864%_)
                (let* ((_%$tgt111868111882%_ (__AST-e _%$e111864%_))
                       (_%$hd111869111885%_ (##car _%$tgt111868111882%_))
                       (_%$tl111870111888%_ (##cdr _%$tgt111868111882%_))
                       (_%hd111892%_ _%$hd111869111885%_)
                       (_%rest111894%_ _%$tl111870111888%_))
                  (if (__AST-id? _%hd111892%_)
                      (_%lp111860%_ _%rest111894%_)
                      '#f))
                (_%$E111866111879%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx111899%_)
        (let ((_%tail?111901%_ __AST-null?))
          (__AST-id-list?__% _%stx111899%_ _%tail?111901%_))))
    (define __AST-id-list?
      (lambda _g112308_
        (let ((_g112307_ (##length _g112308_)))
          (cond ((##fx= _g112307_ 1) (apply __AST-id-list?__0 _g112308_))
                ((##fx= _g112307_ 2) (apply __AST-id-list?__% _g112308_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g112308_))))))
    (define __AST-bind-list?
      (lambda (_%stx111849%_)
        (__AST-id-list?__%
         _%stx111849%_
         (lambda (_%e111851%_)
           (let ((_%$e111853%_ (__AST-null? _%e111851%_)))
             (if _%$e111853%_ _%$e111853%_ (__AST-id? _%e111851%_)))))))
    (define __AST-list?__%
      (lambda (_%stx111802%_ _%tail?111803%_)
        (let _%lp111805%_ ((_%rest111807%_ _%stx111802%_))
          (let* ((_%$e111809%_ _%rest111807%_)
                 (_%$E111811111824%_
                  (lambda ()
                    (let* ((_%$E111812111819%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e111809%_)))
                           (_%rest111822%_ _%$e111809%_))
                      (_%tail?111803%_ _%rest111822%_)))))
            (if (__AST-pair? _%$e111809%_)
                (let* ((_%$tgt111813111827%_ (__AST-e _%$e111809%_))
                       (_%$hd111814111830%_ (##car _%$tgt111813111827%_))
                       (_%$tl111815111833%_ (##cdr _%$tgt111813111827%_))
                       (_%rest111837%_ _%$tl111815111833%_))
                  (_%lp111805%_ _%rest111837%_))
                (_%$E111811111824%_))))))
    (define __AST-list?__0
      (lambda (_%stx111842%_)
        (let ((_%tail?111844%_ __AST-null?))
          (__AST-list?__% _%stx111842%_ _%tail?111844%_))))
    (define __AST-list?
      (lambda _g112310_
        (let ((_g112309_ (##length _g112310_)))
          (cond ((##fx= _g112309_ 1) (apply __AST-list?__0 _g112310_))
                ((##fx= _g112309_ 2) (apply __AST-list?__% _g112310_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g112310_))))))
    (define __AST->list
      (lambda (_%stx111767%_)
        (let* ((_%$e111769%_ _%stx111767%_)
               (_%$E111771111784%_
                (lambda ()
                  (let* ((_%$E111772111779%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e111769%_)))
                         (_%rest111782%_ _%$e111769%_))
                    (__AST-e _%rest111782%_)))))
          (if (__AST-pair? _%$e111769%_)
              (let* ((_%$tgt111773111787%_ (__AST-e _%$e111769%_))
                     (_%$hd111774111790%_ (##car _%$tgt111773111787%_))
                     (_%$tl111775111793%_ (##cdr _%$tgt111773111787%_))
                     (_%hd111797%_ _%$hd111774111790%_)
                     (_%rest111799%_ _%$tl111775111793%_))
                (cons _%hd111797%_ (__AST->list _%rest111799%_)))
              (_%$E111771111784%_)))))
    (define __AST->datum
      (lambda (_%stx111760%_)
        (if (##structure-instance-of? _%stx111760%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx111760%_))
            (if (pair? _%stx111760%_)
                (cons (__AST->datum (##car _%stx111760%_))
                      (__AST->datum (##cdr _%stx111760%_)))
                (if (vector? _%stx111760%_)
                    (vector-map __AST->datum _%stx111760%_)
                    (if (box? _%stx111760%_)
                        (box (__AST->datum (unbox _%stx111760%_)))
                        _%stx111760%_))))))
    (define get-readenv
      (lambda (_%port111758%_)
        (##make-readenv
         _%port111758%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in111746%_)
        (let ((_%e111748%_ (##read-datum-or-eof (get-readenv _%in111746%_))))
          (if (eof-object? (__AST-e _%e111748%_))
              (__AST-e _%e111748%_)
              _%e111748%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in111754%_ (current-input-port)))
          (read-syntax__% _%in111754%_))))
    (define read-syntax
      (lambda _g112312_
        (let ((_g112311_ (##length _g112312_)))
          (cond ((##fx= _g112311_ 0) (apply read-syntax__0 _g112312_))
                ((##fx= _g112311_ 1) (apply read-syntax__% _g112312_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g112312_))))))
    (define read-syntax-from-file
      (lambda (_%path111741%_)
        (let ((_%r111743%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path111741%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r111743%_)
              (cdr (__AST-e (vector-ref _%r111743%_ '1)))
              (error (err-code->string _%r111743%_) _%path111741%_)))))
    (define __wrap-syntax
      (lambda (_%re111738%_ _%e111739%_)
        (if (eof-object? _%e111739%_)
            _%e111739%_
            (##structure AST::t _%e111739%_ (##readenv->locat _%re111738%_)))))
    (define __unwrap-syntax
      (lambda (_%re111735%_ _%e111736%_) (__AST-e _%e111736%_)))
    (define __pp-syntax
      (lambda (_%stx111733%_) (pp (__AST->datum _%stx111733%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt111731%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt111731%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt111731%_ '@list)
          (macro-readtable-brace-handler-set! _%rt111731%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt111731%_
           '#\!
           __read-sharp-bang)
          _%rt111731%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt111727%_ _%kw111728%_)
        (macro-readtable-bracket-handler-set! _%rt111727%_ _%kw111728%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt111724%_ _%kw111725%_)
        (macro-readtable-brace-handler-set! _%rt111724%_ _%kw111725%_)))
    (define __read-sharp-bang
      (lambda (_%re111715%_ _%next111716%_ _%start-pos111717%_)
        (if (eq? _%start-pos111717%_ '0)
            (let* ((_%line111719%_
                    (##read-line
                     (macro-readenv-port _%re111715%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line111721%_
                    (substring
                     _%line111719%_
                     '1
                     (string-length _%line111719%_))))
              (macro-readenv-script-line-set!
               _%re111715%_
               _%script-line111721%_)
              (##script-marker))
            (##read-sharp-bang
             _%re111715%_
             _%next111716%_
             _%start-pos111717%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj111713%_)
        (if (source-location? _%obj111713%_)
            (string? (##locat-container _%obj111713%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj111711%_)
        (if (##locat? _%obj111711%_)
            (##container->path (##locat-container _%obj111711%_))
            '#f)))))

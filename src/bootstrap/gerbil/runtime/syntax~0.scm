(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1734131746)
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
      (lambda _%$args112473%_
        (apply make-instance SyntaxError::t _%$args112473%_)))
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
      (lambda (_%self111974112355%_ _%port112357%_)
        (let* ((_%self112359%_ _%self111974112355%_)
               (_%self112361%_ _%self112359%_))
          (letrec ((_%location112371%_
                    (lambda ()
                      (let _%lp112433%_ ((_%rest112435%_
                                          (##unchecked-structure-ref
                                           _%self112361%_
                                           '3
                                           '#f
                                           '#f)))
                        (let* ((_%rest112436112444%_ _%rest112435%_)
                               (_%else112438112452%_ (lambda () '#f))
                               (_%K112440112461%_
                                (lambda (_%rest112455%_ _%hd112456%_)
                                  (let ((_%$e112458%_
                                         (__AST-source _%hd112456%_)))
                                    (if _%$e112458%_
                                        _%$e112458%_
                                        (_%lp112433%_ _%rest112455%_))))))
                          (if (pair? _%rest112436112444%_)
                              (let ((_%hd112441112464%_
                                     (##car _%rest112436112444%_))
                                    (_%tl112442112466%_
                                     (##cdr _%rest112436112444%_)))
                                (let* ((_%hd112469%_ _%hd112441112464%_)
                                       (_%rest112471%_ _%tl112442112466%_))
                                  (_%K112440112461%_
                                   _%rest112471%_
                                   _%hd112469%_)))
                              (_%else112438112452%_)))))))
            (__call-with-parameters
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e112374%_ (_%location112371%_)))
                 (if _%$e112374%_
                     ((lambda (_%where112377%_)
                        (##display-locat _%where112377%_ '#t _%port112357%_))
                      _%$e112374%_)
                     (display '"?")))
               (newline)
               (display '"--- Syntax Error")
               (let ((_%$e112380%_
                      (##unchecked-structure-ref _%self112361%_ '4 '#f '#f)))
                 (if _%$e112380%_
                     ((lambda (_%where112383%_)
                        (displayln
                         '" at "
                         _%where112383%_
                         '": "
                         (##unchecked-structure-ref
                          _%self112361%_
                          '2
                          '#f
                          '#f)))
                      _%$e112380%_)
                     (displayln
                      '": "
                      (##unchecked-structure-ref _%self112361%_ '2 '#f '#f))))
               (let* ((_%self.irritants112385112393%_
                       (##unchecked-structure-ref _%self112361%_ '3 '#f '#f))
                      (_%else112387112401%_ (lambda () '#!void))
                      (_%K112389112414%_
                       (lambda (_%rest112404%_ _%stx112405%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx112405%_)
                         (for-each
                          (lambda (_%detail112407%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail112407%_))
                            (let ((_%$e112409%_
                                   (__AST-source _%detail112407%_)))
                              (if _%$e112409%_
                                  ((lambda (_%loc112412%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc112412%_
                                      '#t
                                      _%port112357%_))
                                   _%$e112409%_)
                                  '#!void))
                            (newline))
                          _%rest112404%_))))
                 (if (pair? _%self.irritants112385112393%_)
                     (let ((_%hd112390112417%_
                            (##car _%self.irritants112385112393%_))
                           (_%tl112391112419%_
                            (##cdr _%self.irritants112385112393%_)))
                       (let* ((_%stx112422%_ _%hd112390112417%_)
                              (_%rest112424%_ _%tl112391112419%_))
                         (_%K112389112414%_ _%rest112424%_ _%stx112422%_)))
                     '#!void))
               (if (##getenv '"GERBIL_DEBUG" '#f)
                   (let ((_%cont112425112427%_
                          (##unchecked-structure-ref
                           _%self112361%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont112425112427%_
                         (let ((_%cont112430%_ _%cont112425112427%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont112430%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port112357%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message112226%_
               _%irritants112227%_
               _%where112228%_
               _%context112229%_
               _%marks112230%_
               _%phi112231%_)
        (let ((__obj112570
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj112570 _%message112226%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj112570
           _%irritants112227%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj112570 _%where112228%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj112570 _%context112229%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj112570 _%marks112230%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj112570 _%phi112231%_ '6 '#f '#f)
          __obj112570)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where112221%_
               _%message112222%_
               _%stx112223%_
               .
               _%details112224%_)
        (raise (make-syntax-error
                _%message112222%_
                (cons _%stx112223%_ _%details112224%_)
                _%where112221%_
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
      (lambda _%$args112218%_ (apply make-instance AST::t _%$args112218%_)))
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
      (lambda (_%stx112216%_)
        (if (##structure-instance-of? _%stx112216%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx112216%_ '1 '#f '#f)
            _%stx112216%_)))
    (define __AST-source
      (lambda (_%stx112207%_)
        (let _%lp112209%_ ((_%src112211%_ _%stx112207%_))
          (if (##structure-instance-of? _%src112211%_ 'gerbil#AST::t)
              (_%lp112209%_
               (##unchecked-structure-ref _%src112211%_ '2 '#f '#f))
              (if (##locat? _%src112211%_) _%src112211%_ '#f)))))
    (define __AST
      (lambda (_%e112199%_ _%src-stx112200%_)
        (let ((_%src112202%_ (__AST-source _%src-stx112200%_)))
          (if (or (##structure-instance-of? _%e112199%_ 'gerbil#AST::t)
                  (not _%src112202%_))
              _%e112199%_
              (##structure AST::t _%e112199%_ _%src112202%_)))))
    (define __AST-eq?
      (lambda (_%stx112196%_ _%obj112197%_)
        (eq? (__AST-e _%stx112196%_) _%obj112197%_)))
    (define __AST-pair?
      (lambda (_%stx112194%_) (pair? (__AST-e _%stx112194%_))))
    (define __AST-null?
      (lambda (_%stx112192%_) (null? (__AST-e _%stx112192%_))))
    (define __AST-datum?
      (lambda (_%stx112173%_)
        (let* ((_%e112175%_ (__AST-e _%stx112173%_))
               (_%$e112177%_ (number? _%e112175%_)))
          (if _%$e112177%_
              _%$e112177%_
              (let ((_%$e112180%_ (string? _%e112175%_)))
                (if _%$e112180%_
                    _%$e112180%_
                    (let ((_%$e112183%_ (char? _%e112175%_)))
                      (if _%$e112183%_
                          _%$e112183%_
                          (let ((_%$e112186%_ (keyword? _%e112175%_)))
                            (if _%$e112186%_
                                _%$e112186%_
                                (let ((_%$e112189%_ (boolean? _%e112175%_)))
                                  (if _%$e112189%_
                                      _%$e112189%_
                                      (eq? _%e112175%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx112171%_) (symbol? (__AST-e _%stx112171%_))))
    (define __AST-id-list?__%
      (lambda (_%stx112122%_ _%tail?112123%_)
        (let _%lp112125%_ ((_%rest112127%_ _%stx112122%_))
          (let* ((_%$e112129%_ _%rest112127%_)
                 (_%$E112131112144%_
                  (lambda ()
                    (let* ((_%$E112132112139%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e112129%_)))
                           (_%rest112142%_ _%$e112129%_))
                      (_%tail?112123%_ _%rest112142%_)))))
            (if (__AST-pair? _%$e112129%_)
                (let* ((_%$tgt112133112147%_ (__AST-e _%$e112129%_))
                       (_%$hd112134112150%_ (##car _%$tgt112133112147%_))
                       (_%$tl112135112153%_ (##cdr _%$tgt112133112147%_))
                       (_%hd112157%_ _%$hd112134112150%_)
                       (_%rest112159%_ _%$tl112135112153%_))
                  (if (__AST-id? _%hd112157%_)
                      (_%lp112125%_ _%rest112159%_)
                      '#f))
                (_%$E112131112144%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx112164%_)
        (let ((_%tail?112166%_ __AST-null?))
          (__AST-id-list?__% _%stx112164%_ _%tail?112166%_))))
    (define __AST-id-list?
      (lambda _g112573_
        (let ((_g112572_ (##length _g112573_)))
          (cond ((##fx= _g112572_ 1) (apply __AST-id-list?__0 _g112573_))
                ((##fx= _g112572_ 2) (apply __AST-id-list?__% _g112573_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g112573_))))))
    (define __AST-bind-list?
      (lambda (_%stx112114%_)
        (__AST-id-list?__%
         _%stx112114%_
         (lambda (_%e112116%_)
           (let ((_%$e112118%_ (__AST-null? _%e112116%_)))
             (if _%$e112118%_ _%$e112118%_ (__AST-id? _%e112116%_)))))))
    (define __AST-list?__%
      (lambda (_%stx112067%_ _%tail?112068%_)
        (let _%lp112070%_ ((_%rest112072%_ _%stx112067%_))
          (let* ((_%$e112074%_ _%rest112072%_)
                 (_%$E112076112089%_
                  (lambda ()
                    (let* ((_%$E112077112084%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e112074%_)))
                           (_%rest112087%_ _%$e112074%_))
                      (_%tail?112068%_ _%rest112087%_)))))
            (if (__AST-pair? _%$e112074%_)
                (let* ((_%$tgt112078112092%_ (__AST-e _%$e112074%_))
                       (_%$hd112079112095%_ (##car _%$tgt112078112092%_))
                       (_%$tl112080112098%_ (##cdr _%$tgt112078112092%_))
                       (_%rest112102%_ _%$tl112080112098%_))
                  (_%lp112070%_ _%rest112102%_))
                (_%$E112076112089%_))))))
    (define __AST-list?__0
      (lambda (_%stx112107%_)
        (let ((_%tail?112109%_ __AST-null?))
          (__AST-list?__% _%stx112107%_ _%tail?112109%_))))
    (define __AST-list?
      (lambda _g112575_
        (let ((_g112574_ (##length _g112575_)))
          (cond ((##fx= _g112574_ 1) (apply __AST-list?__0 _g112575_))
                ((##fx= _g112574_ 2) (apply __AST-list?__% _g112575_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g112575_))))))
    (define __AST->list
      (lambda (_%stx112032%_)
        (let* ((_%$e112034%_ _%stx112032%_)
               (_%$E112036112049%_
                (lambda ()
                  (let* ((_%$E112037112044%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e112034%_)))
                         (_%rest112047%_ _%$e112034%_))
                    (__AST-e _%rest112047%_)))))
          (if (__AST-pair? _%$e112034%_)
              (let* ((_%$tgt112038112052%_ (__AST-e _%$e112034%_))
                     (_%$hd112039112055%_ (##car _%$tgt112038112052%_))
                     (_%$tl112040112058%_ (##cdr _%$tgt112038112052%_))
                     (_%hd112062%_ _%$hd112039112055%_)
                     (_%rest112064%_ _%$tl112040112058%_))
                (cons _%hd112062%_ (__AST->list _%rest112064%_)))
              (_%$E112036112049%_)))))
    (define __AST->datum
      (lambda (_%stx112025%_)
        (if (##structure-instance-of? _%stx112025%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx112025%_))
            (if (pair? _%stx112025%_)
                (cons (__AST->datum (##car _%stx112025%_))
                      (__AST->datum (##cdr _%stx112025%_)))
                (if (vector? _%stx112025%_)
                    (vector-map __AST->datum _%stx112025%_)
                    (if (box? _%stx112025%_)
                        (box (__AST->datum (unbox _%stx112025%_)))
                        _%stx112025%_))))))
    (define get-readenv
      (lambda (_%port112023%_)
        (##make-readenv
         _%port112023%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in112011%_)
        (let ((_%e112013%_ (##read-datum-or-eof (get-readenv _%in112011%_))))
          (if (eof-object? (__AST-e _%e112013%_))
              (__AST-e _%e112013%_)
              _%e112013%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in112019%_ (current-input-port)))
          (read-syntax__% _%in112019%_))))
    (define read-syntax
      (lambda _g112577_
        (let ((_g112576_ (##length _g112577_)))
          (cond ((##fx= _g112576_ 0) (apply read-syntax__0 _g112577_))
                ((##fx= _g112576_ 1) (apply read-syntax__% _g112577_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g112577_))))))
    (define read-syntax-from-file
      (lambda (_%path112006%_)
        (let ((_%r112008%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path112006%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r112008%_)
              (cdr (__AST-e (vector-ref _%r112008%_ '1)))
              (error (err-code->string _%r112008%_) _%path112006%_)))))
    (define __wrap-syntax
      (lambda (_%re112003%_ _%e112004%_)
        (if (eof-object? _%e112004%_)
            _%e112004%_
            (##structure AST::t _%e112004%_ (##readenv->locat _%re112003%_)))))
    (define __unwrap-syntax
      (lambda (_%re112000%_ _%e112001%_) (__AST-e _%e112001%_)))
    (define __pp-syntax
      (lambda (_%stx111998%_) (pp (__AST->datum _%stx111998%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt111996%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt111996%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt111996%_ '@list)
          (macro-readtable-brace-handler-set! _%rt111996%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt111996%_
           '#\!
           __read-sharp-bang)
          _%rt111996%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt111992%_ _%kw111993%_)
        (macro-readtable-bracket-handler-set! _%rt111992%_ _%kw111993%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt111989%_ _%kw111990%_)
        (macro-readtable-brace-handler-set! _%rt111989%_ _%kw111990%_)))
    (define __read-sharp-bang
      (lambda (_%re111980%_ _%next111981%_ _%start-pos111982%_)
        (if (eq? _%start-pos111982%_ '0)
            (let* ((_%line111984%_
                    (##read-line
                     (macro-readenv-port _%re111980%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line111986%_
                    (substring
                     _%line111984%_
                     '1
                     (string-length _%line111984%_))))
              (macro-readenv-script-line-set!
               _%re111980%_
               _%script-line111986%_)
              (##script-marker))
            (##read-sharp-bang
             _%re111980%_
             _%next111981%_
             _%start-pos111982%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj111978%_)
        (if (source-location? _%obj111978%_)
            (string? (##locat-container _%obj111978%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj111976%_)
        (if (##locat? _%obj111976%_)
            (##container->path (##locat-container _%obj111976%_))
            '#f)))))

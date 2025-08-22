(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1755903075)
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
      (lambda _%$args116786%_
        (apply make-instance SyntaxError::t _%$args116786%_)))
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
      (lambda (_%self116287116668%_ _%port116670%_)
        (let* ((_%self116672%_ _%self116287116668%_)
               (_%self116674%_ _%self116672%_))
          (letrec ((_%location116684%_
                    (lambda ()
                      (let _%lp116746%_ ((_%rest116748%_
                                          (##unchecked-structure-ref
                                           _%self116674%_
                                           '3
                                           '#f
                                           '#f)))
                        (let* ((_%rest116749116757%_ _%rest116748%_)
                               (_%else116751116765%_ (lambda () '#f))
                               (_%K116753116774%_
                                (lambda (_%rest116768%_ _%hd116769%_)
                                  (let ((_%$e116771%_
                                         (__AST-source _%hd116769%_)))
                                    (if _%$e116771%_
                                        _%$e116771%_
                                        (_%lp116746%_ _%rest116768%_))))))
                          (if (pair? _%rest116749116757%_)
                              (let ((_%hd116754116777%_
                                     (##car _%rest116749116757%_))
                                    (_%tl116755116779%_
                                     (##cdr _%rest116749116757%_)))
                                (let* ((_%hd116782%_ _%hd116754116777%_)
                                       (_%rest116784%_ _%tl116755116779%_))
                                  (_%K116753116774%_
                                   _%rest116784%_
                                   _%hd116782%_)))
                              (_%else116751116765%_)))))))
            (call-with-parameters__1
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e116687%_ (_%location116684%_)))
                 (if _%$e116687%_
                     ((lambda (_%where116690%_)
                        (##display-locat _%where116690%_ '#t _%port116670%_))
                      _%$e116687%_)
                     (display '"?")))
               (newline)
               (display '"--- Syntax Error")
               (let ((_%$e116693%_
                      (##unchecked-structure-ref _%self116674%_ '4 '#f '#f)))
                 (if _%$e116693%_
                     ((lambda (_%where116696%_)
                        (displayln
                         '" at "
                         _%where116696%_
                         '": "
                         (##unchecked-structure-ref
                          _%self116674%_
                          '2
                          '#f
                          '#f)))
                      _%$e116693%_)
                     (displayln
                      '": "
                      (##unchecked-structure-ref _%self116674%_ '2 '#f '#f))))
               (let* ((_%self.irritants116698116706%_
                       (##unchecked-structure-ref _%self116674%_ '3 '#f '#f))
                      (_%else116700116714%_ (lambda () '#!void))
                      (_%K116702116727%_
                       (lambda (_%rest116717%_ _%stx116718%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx116718%_)
                         (for-each
                          (lambda (_%detail116720%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail116720%_))
                            (let ((_%$e116722%_
                                   (__AST-source _%detail116720%_)))
                              (if _%$e116722%_
                                  ((lambda (_%loc116725%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc116725%_
                                      '#t
                                      _%port116670%_))
                                   _%$e116722%_)
                                  '#!void))
                            (newline))
                          _%rest116717%_))))
                 (if (pair? _%self.irritants116698116706%_)
                     (let ((_%hd116703116730%_
                            (##car _%self.irritants116698116706%_))
                           (_%tl116704116732%_
                            (##cdr _%self.irritants116698116706%_)))
                       (let* ((_%stx116735%_ _%hd116703116730%_)
                              (_%rest116737%_ _%tl116704116732%_))
                         (_%K116702116727%_ _%rest116737%_ _%stx116735%_)))
                     '#!void))
               (if (##getenv '"GERBIL_DEBUG" '#f)
                   (let ((_%cont116738116740%_
                          (##unchecked-structure-ref
                           _%self116674%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont116738116740%_
                         (let ((_%cont116743%_ _%cont116738116740%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont116743%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port116670%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message116539%_
               _%irritants116540%_
               _%where116541%_
               _%context116542%_
               _%marks116543%_
               _%phi116544%_)
        (let ((__obj116883
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj116883 _%message116539%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj116883
           _%irritants116540%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj116883 _%where116541%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj116883 _%context116542%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj116883 _%marks116543%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj116883 _%phi116544%_ '6 '#f '#f)
          __obj116883)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where116534%_
               _%message116535%_
               _%stx116536%_
               .
               _%details116537%_)
        (raise (make-syntax-error
                _%message116535%_
                (cons _%stx116536%_ _%details116537%_)
                _%where116534%_
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
      (lambda _%$args116531%_ (apply make-instance AST::t _%$args116531%_)))
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
      (lambda (_%stx116529%_)
        (if (##structure-instance-of? _%stx116529%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx116529%_ '1 '#f '#f)
            _%stx116529%_)))
    (define __AST-source
      (lambda (_%stx116520%_)
        (let _%lp116522%_ ((_%src116524%_ _%stx116520%_))
          (if (##structure-instance-of? _%src116524%_ 'gerbil#AST::t)
              (_%lp116522%_
               (##unchecked-structure-ref _%src116524%_ '2 '#f '#f))
              (if (##locat? _%src116524%_) _%src116524%_ '#f)))))
    (define __AST
      (lambda (_%e116512%_ _%src-stx116513%_)
        (let ((_%src116515%_ (__AST-source _%src-stx116513%_)))
          (if (or (##structure-instance-of? _%e116512%_ 'gerbil#AST::t)
                  (not _%src116515%_))
              _%e116512%_
              (##structure AST::t _%e116512%_ _%src116515%_)))))
    (define __AST-eq?
      (lambda (_%stx116509%_ _%obj116510%_)
        (eq? (__AST-e _%stx116509%_) _%obj116510%_)))
    (define __AST-pair?
      (lambda (_%stx116507%_) (pair? (__AST-e _%stx116507%_))))
    (define __AST-null?
      (lambda (_%stx116505%_) (null? (__AST-e _%stx116505%_))))
    (define __AST-datum?
      (lambda (_%stx116486%_)
        (let* ((_%e116488%_ (__AST-e _%stx116486%_))
               (_%$e116490%_ (number? _%e116488%_)))
          (if _%$e116490%_
              _%$e116490%_
              (let ((_%$e116493%_ (string? _%e116488%_)))
                (if _%$e116493%_
                    _%$e116493%_
                    (let ((_%$e116496%_ (char? _%e116488%_)))
                      (if _%$e116496%_
                          _%$e116496%_
                          (let ((_%$e116499%_ (keyword? _%e116488%_)))
                            (if _%$e116499%_
                                _%$e116499%_
                                (let ((_%$e116502%_ (boolean? _%e116488%_)))
                                  (if _%$e116502%_
                                      _%$e116502%_
                                      (eq? _%e116488%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx116484%_) (symbol? (__AST-e _%stx116484%_))))
    (define __AST-id-list?__%
      (lambda (_%stx116435%_ _%tail?116436%_)
        (let _%lp116438%_ ((_%rest116440%_ _%stx116435%_))
          (let* ((_%$e116442%_ _%rest116440%_)
                 (_%$E116444116457%_
                  (lambda ()
                    (let* ((_%$E116445116452%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e116442%_)))
                           (_%rest116455%_ _%$e116442%_))
                      (_%tail?116436%_ _%rest116455%_)))))
            (if (__AST-pair? _%$e116442%_)
                (let* ((_%$tgt116446116460%_ (__AST-e _%$e116442%_))
                       (_%$hd116447116463%_ (##car _%$tgt116446116460%_))
                       (_%$tl116448116466%_ (##cdr _%$tgt116446116460%_))
                       (_%hd116470%_ _%$hd116447116463%_)
                       (_%rest116472%_ _%$tl116448116466%_))
                  (if (__AST-id? _%hd116470%_)
                      (_%lp116438%_ _%rest116472%_)
                      '#f))
                (_%$E116444116457%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx116477%_)
        (let ((_%tail?116479%_ __AST-null?))
          (__AST-id-list?__% _%stx116477%_ _%tail?116479%_))))
    (define __AST-id-list?
      (lambda _g116885_
        (let ((_g116886_ (##length _g116885_)))
          (cond ((##fx= _g116886_ 1) (apply __AST-id-list?__0 _g116885_))
                ((##fx= _g116886_ 2) (apply __AST-id-list?__% _g116885_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g116885_))))))
    (define __AST-bind-list?
      (lambda (_%stx116427%_)
        (__AST-id-list?__%
         _%stx116427%_
         (lambda (_%e116429%_)
           (let ((_%$e116431%_ (__AST-null? _%e116429%_)))
             (if _%$e116431%_ _%$e116431%_ (__AST-id? _%e116429%_)))))))
    (define __AST-list?__%
      (lambda (_%stx116380%_ _%tail?116381%_)
        (let _%lp116383%_ ((_%rest116385%_ _%stx116380%_))
          (let* ((_%$e116387%_ _%rest116385%_)
                 (_%$E116389116402%_
                  (lambda ()
                    (let* ((_%$E116390116397%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e116387%_)))
                           (_%rest116400%_ _%$e116387%_))
                      (_%tail?116381%_ _%rest116400%_)))))
            (if (__AST-pair? _%$e116387%_)
                (let* ((_%$tgt116391116405%_ (__AST-e _%$e116387%_))
                       (_%$hd116392116408%_ (##car _%$tgt116391116405%_))
                       (_%$tl116393116411%_ (##cdr _%$tgt116391116405%_))
                       (_%rest116415%_ _%$tl116393116411%_))
                  (_%lp116383%_ _%rest116415%_))
                (_%$E116389116402%_))))))
    (define __AST-list?__0
      (lambda (_%stx116420%_)
        (let ((_%tail?116422%_ __AST-null?))
          (__AST-list?__% _%stx116420%_ _%tail?116422%_))))
    (define __AST-list?
      (lambda _g116887_
        (let ((_g116888_ (##length _g116887_)))
          (cond ((##fx= _g116888_ 1) (apply __AST-list?__0 _g116887_))
                ((##fx= _g116888_ 2) (apply __AST-list?__% _g116887_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g116887_))))))
    (define __AST->list
      (lambda (_%stx116345%_)
        (let* ((_%$e116347%_ _%stx116345%_)
               (_%$E116349116362%_
                (lambda ()
                  (let* ((_%$E116350116357%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e116347%_)))
                         (_%rest116360%_ _%$e116347%_))
                    (__AST-e _%rest116360%_)))))
          (if (__AST-pair? _%$e116347%_)
              (let* ((_%$tgt116351116365%_ (__AST-e _%$e116347%_))
                     (_%$hd116352116368%_ (##car _%$tgt116351116365%_))
                     (_%$tl116353116371%_ (##cdr _%$tgt116351116365%_))
                     (_%hd116375%_ _%$hd116352116368%_)
                     (_%rest116377%_ _%$tl116353116371%_))
                (cons _%hd116375%_ (__AST->list _%rest116377%_)))
              (_%$E116349116362%_)))))
    (define __AST->datum
      (lambda (_%stx116338%_)
        (if (##structure-instance-of? _%stx116338%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx116338%_))
            (if (pair? _%stx116338%_)
                (cons (__AST->datum (##car _%stx116338%_))
                      (__AST->datum (##cdr _%stx116338%_)))
                (if (vector? _%stx116338%_)
                    (vector-map __AST->datum _%stx116338%_)
                    (if (box? _%stx116338%_)
                        (box (__AST->datum (unbox _%stx116338%_)))
                        _%stx116338%_))))))
    (define get-readenv
      (lambda (_%port116336%_)
        (##make-readenv
         _%port116336%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in116324%_)
        (let ((_%e116326%_ (##read-datum-or-eof (get-readenv _%in116324%_))))
          (if (eof-object? (__AST-e _%e116326%_))
              (__AST-e _%e116326%_)
              _%e116326%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in116332%_ (current-input-port)))
          (read-syntax__% _%in116332%_))))
    (define read-syntax
      (lambda _g116889_
        (let ((_g116890_ (##length _g116889_)))
          (cond ((##fx= _g116890_ 0) (apply read-syntax__0 _g116889_))
                ((##fx= _g116890_ 1) (apply read-syntax__% _g116889_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g116889_))))))
    (define read-syntax-from-file
      (lambda (_%path116319%_)
        (let ((_%r116321%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path116319%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r116321%_)
              (cdr (__AST-e (vector-ref _%r116321%_ '1)))
              (error (err-code->string _%r116321%_) _%path116319%_)))))
    (define __wrap-syntax
      (lambda (_%re116316%_ _%e116317%_)
        (if (eof-object? _%e116317%_)
            _%e116317%_
            (##structure AST::t _%e116317%_ (##readenv->locat _%re116316%_)))))
    (define __unwrap-syntax
      (lambda (_%re116313%_ _%e116314%_) (__AST-e _%e116314%_)))
    (define __pp-syntax
      (lambda (_%stx116311%_) (pp (__AST->datum _%stx116311%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt116309%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt116309%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt116309%_ '@list)
          (macro-readtable-brace-handler-set! _%rt116309%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt116309%_
           '#\!
           __read-sharp-bang)
          _%rt116309%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt116305%_ _%kw116306%_)
        (macro-readtable-bracket-handler-set! _%rt116305%_ _%kw116306%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt116302%_ _%kw116303%_)
        (macro-readtable-brace-handler-set! _%rt116302%_ _%kw116303%_)))
    (define __read-sharp-bang
      (lambda (_%re116293%_ _%next116294%_ _%start-pos116295%_)
        (if (eq? _%start-pos116295%_ '0)
            (let* ((_%line116297%_
                    (##read-line
                     (macro-readenv-port _%re116293%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line116299%_
                    (substring
                     _%line116297%_
                     '1
                     (string-length _%line116297%_))))
              (macro-readenv-script-line-set!
               _%re116293%_
               _%script-line116299%_)
              (##script-marker))
            (##read-sharp-bang
             _%re116293%_
             _%next116294%_
             _%start-pos116295%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj116291%_)
        (if (source-location? _%obj116291%_)
            (string? (##locat-container _%obj116291%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj116289%_)
        (if (##locat? _%obj116289%_)
            (##container->path (##locat-container _%obj116289%_))
            '#f)))))

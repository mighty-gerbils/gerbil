(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1712507489)
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
      (lambda _%$args109090%_
        (apply make-instance SyntaxError::t _%$args109090%_)))
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
      (lambda (_%self108974%_ _%port108975%_)
        (let ((_%self108978%_ _%self108974%_))
          (letrec ((_%location108988%_
                    (lambda ()
                      (let _%lp109050%_ ((_%rest109052%_
                                          (##unchecked-structure-ref
                                           _%self108978%_
                                           '3
                                           '#f
                                           '#f)))
                        (let* ((_%rest109053109061%_ _%rest109052%_)
                               (_%else109055109069%_ (lambda () '#f))
                               (_%K109057109078%_
                                (lambda (_%rest109072%_ _%hd109073%_)
                                  (let ((_%$e109075%_
                                         (__AST-source _%hd109073%_)))
                                    (if _%$e109075%_
                                        _%$e109075%_
                                        (_%lp109050%_ _%rest109072%_))))))
                          (if (##pair? _%rest109053109061%_)
                              (let ((_%hd109058109081%_
                                     (##car _%rest109053109061%_))
                                    (_%tl109059109083%_
                                     (##cdr _%rest109053109061%_)))
                                (let* ((_%hd109086%_ _%hd109058109081%_)
                                       (_%rest109088%_ _%tl109059109083%_))
                                  (_%K109057109078%_
                                   _%rest109088%_
                                   _%hd109086%_)))
                              (_%else109055109069%_)))))))
            (__call-with-parameters
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e108991%_ (_%location108988%_)))
                 (if _%$e108991%_
                     ((lambda (_%where108994%_)
                        (##display-locat _%where108994%_ '#t _%port108975%_))
                      _%$e108991%_)
                     (let () (display '"?"))))
               (newline)
               (display '"--- Syntax Error")
               (let ((_%$e108997%_
                      (##unchecked-structure-ref _%self108978%_ '4 '#f '#f)))
                 (if _%$e108997%_
                     ((lambda (_%where109000%_)
                        (displayln
                         '" at "
                         _%where109000%_
                         '": "
                         (##unchecked-structure-ref
                          _%self108978%_
                          '2
                          '#f
                          '#f)))
                      _%$e108997%_)
                     (let ()
                       (displayln
                        '": "
                        (##unchecked-structure-ref
                         _%self108978%_
                         '2
                         '#f
                         '#f)))))
               (let* ((_%self.irritants109002109010%_
                       (##unchecked-structure-ref _%self108978%_ '3 '#f '#f))
                      (_%else109004109018%_ (lambda () '#!void))
                      (_%K109006109031%_
                       (lambda (_%rest109021%_ _%stx109022%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx109022%_)
                         (for-each
                          (lambda (_%detail109024%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail109024%_))
                            (let ((_%$e109026%_
                                   (__AST-source _%detail109024%_)))
                              (if _%$e109026%_
                                  ((lambda (_%loc109029%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc109029%_
                                      '#t
                                      _%port108975%_))
                                   _%$e109026%_)
                                  '#!void))
                            (newline))
                          _%rest109021%_))))
                 (if (##pair? _%self.irritants109002109010%_)
                     (let ((_%hd109007109034%_
                            (##car _%self.irritants109002109010%_))
                           (_%tl109008109036%_
                            (##cdr _%self.irritants109002109010%_)))
                       (let* ((_%stx109039%_ _%hd109007109034%_)
                              (_%rest109041%_ _%tl109008109036%_))
                         (_%K109006109031%_ _%rest109041%_ _%stx109039%_)))
                     '#!void))
               (if (##getenv '"GERBIL_DEBUG" '#f)
                   (let ((_%cont109042109044%_
                          (##unchecked-structure-ref
                           _%self108978%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont109042109044%_
                         (let ((_%cont109047%_ _%cont109042109044%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont109047%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port108975%_)))))
    (__bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message108845%_
               _%irritants108846%_
               _%where108847%_
               _%context108848%_
               _%marks108849%_
               _%phi108850%_)
        (let ((__obj109187
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj109187 _%message108845%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj109187
           _%irritants108846%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj109187 _%where108847%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj109187 _%context108848%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj109187 _%marks108849%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj109187 _%phi108850%_ '6 '#f '#f)
          __obj109187)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where108840%_
               _%message108841%_
               _%stx108842%_
               .
               _%details108843%_)
        (raise (make-syntax-error
                _%message108841%_
                (cons _%stx108842%_ _%details108843%_)
                _%where108840%_
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
      (lambda _%$args108837%_ (apply make-instance AST::t _%$args108837%_)))
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
      (lambda (_%stx108835%_)
        (if (##structure-instance-of? _%stx108835%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx108835%_ '1 '#f '#f)
            _%stx108835%_)))
    (define __AST-source
      (lambda (_%stx108826%_)
        (let _%lp108828%_ ((_%src108830%_ _%stx108826%_))
          (if (##structure-instance-of? _%src108830%_ 'gerbil#AST::t)
              (let ()
                (_%lp108828%_
                 (##unchecked-structure-ref _%src108830%_ '2 '#f '#f)))
              (if (##locat? _%src108830%_)
                  (let () _%src108830%_)
                  (let () '#f))))))
    (define __AST
      (lambda (_%e108818%_ _%src-stx108819%_)
        (let ((_%src108821%_ (__AST-source _%src-stx108819%_)))
          (if (or (##structure-instance-of? _%e108818%_ 'gerbil#AST::t)
                  (not _%src108821%_))
              _%e108818%_
              (##structure AST::t _%e108818%_ _%src108821%_)))))
    (define __AST-eq?
      (lambda (_%stx108815%_ _%obj108816%_)
        (eq? (__AST-e _%stx108815%_) _%obj108816%_)))
    (define __AST-pair?
      (lambda (_%stx108813%_) (pair? (__AST-e _%stx108813%_))))
    (define __AST-null?
      (lambda (_%stx108811%_) (null? (__AST-e _%stx108811%_))))
    (define __AST-datum?
      (lambda (_%stx108792%_)
        (let* ((_%e108794%_ (__AST-e _%stx108792%_))
               (_%$e108796%_ (number? _%e108794%_)))
          (if _%$e108796%_
              _%$e108796%_
              (let ((_%$e108799%_ (string? _%e108794%_)))
                (if _%$e108799%_
                    _%$e108799%_
                    (let ((_%$e108802%_ (char? _%e108794%_)))
                      (if _%$e108802%_
                          _%$e108802%_
                          (let ((_%$e108805%_ (keyword? _%e108794%_)))
                            (if _%$e108805%_
                                _%$e108805%_
                                (let ((_%$e108808%_ (boolean? _%e108794%_)))
                                  (if _%$e108808%_
                                      _%$e108808%_
                                      (eq? _%e108794%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx108790%_) (symbol? (__AST-e _%stx108790%_))))
    (define __AST-id-list?__%
      (lambda (_%stx108741%_ _%tail?108742%_)
        (let _%lp108744%_ ((_%rest108746%_ _%stx108741%_))
          (let* ((_%$e108748%_ _%rest108746%_)
                 (_%$E108750108763%_
                  (lambda ()
                    (let* ((_%$E108751108758%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e108748%_)))
                           (_%rest108761%_ _%$e108748%_))
                      (_%tail?108742%_ _%rest108761%_)))))
            (if (__AST-pair? _%$e108748%_)
                (let* ((_%$tgt108752108766%_ (__AST-e _%$e108748%_))
                       (_%$hd108753108769%_ (##car _%$tgt108752108766%_))
                       (_%$tl108754108772%_ (##cdr _%$tgt108752108766%_)))
                  (let* ((_%hd108776%_ _%$hd108753108769%_)
                         (_%rest108778%_ _%$tl108754108772%_))
                    (if (__AST-id? _%hd108776%_)
                        (_%lp108744%_ _%rest108778%_)
                        '#f)))
                (_%$E108750108763%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx108783%_)
        (let ((_%tail?108785%_ __AST-null?))
          (__AST-id-list?__% _%stx108783%_ _%tail?108785%_))))
    (define __AST-id-list?
      (lambda _g109190_
        (let ((_g109189_ (##length _g109190_)))
          (cond ((##fx= _g109189_ 1)
                 (apply (lambda (_%stx108783%_)
                          (__AST-id-list?__0 _%stx108783%_))
                        _g109190_))
                ((##fx= _g109189_ 2)
                 (apply (lambda (_%stx108787%_ _%tail?108788%_)
                          (__AST-id-list?__% _%stx108787%_ _%tail?108788%_))
                        _g109190_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g109190_))))))
    (define __AST-bind-list?
      (lambda (_%stx108733%_)
        (__AST-id-list?__%
         _%stx108733%_
         (lambda (_%e108735%_)
           (let ((_%$e108737%_ (__AST-null? _%e108735%_)))
             (if _%$e108737%_ _%$e108737%_ (__AST-id? _%e108735%_)))))))
    (define __AST-list?__%
      (lambda (_%stx108686%_ _%tail?108687%_)
        (let _%lp108689%_ ((_%rest108691%_ _%stx108686%_))
          (let* ((_%$e108693%_ _%rest108691%_)
                 (_%$E108695108708%_
                  (lambda ()
                    (let* ((_%$E108696108703%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e108693%_)))
                           (_%rest108706%_ _%$e108693%_))
                      (_%tail?108687%_ _%rest108706%_)))))
            (if (__AST-pair? _%$e108693%_)
                (let* ((_%$tgt108697108711%_ (__AST-e _%$e108693%_))
                       (_%$hd108698108714%_ (##car _%$tgt108697108711%_))
                       (_%$tl108699108717%_ (##cdr _%$tgt108697108711%_))
                       (_%rest108721%_ _%$tl108699108717%_))
                  (_%lp108689%_ _%rest108721%_))
                (_%$E108695108708%_))))))
    (define __AST-list?__0
      (lambda (_%stx108726%_)
        (let ((_%tail?108728%_ __AST-null?))
          (__AST-list?__% _%stx108726%_ _%tail?108728%_))))
    (define __AST-list?
      (lambda _g109192_
        (let ((_g109191_ (##length _g109192_)))
          (cond ((##fx= _g109191_ 1)
                 (apply (lambda (_%stx108726%_) (__AST-list?__0 _%stx108726%_))
                        _g109192_))
                ((##fx= _g109191_ 2)
                 (apply (lambda (_%stx108730%_ _%tail?108731%_)
                          (__AST-list?__% _%stx108730%_ _%tail?108731%_))
                        _g109192_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g109192_))))))
    (define __AST->list
      (lambda (_%stx108651%_)
        (let* ((_%$e108653%_ _%stx108651%_)
               (_%$E108655108668%_
                (lambda ()
                  (let* ((_%$E108656108663%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e108653%_)))
                         (_%rest108666%_ _%$e108653%_))
                    (__AST-e _%rest108666%_)))))
          (if (__AST-pair? _%$e108653%_)
              (let* ((_%$tgt108657108671%_ (__AST-e _%$e108653%_))
                     (_%$hd108658108674%_ (##car _%$tgt108657108671%_))
                     (_%$tl108659108677%_ (##cdr _%$tgt108657108671%_)))
                (let* ((_%hd108681%_ _%$hd108658108674%_)
                       (_%rest108683%_ _%$tl108659108677%_))
                  (cons _%hd108681%_ (__AST->list _%rest108683%_))))
              (_%$E108655108668%_)))))
    (define __AST->datum
      (lambda (_%stx108644%_)
        (if (##structure-instance-of? _%stx108644%_ 'gerbil#AST::t)
            (let () (__AST->datum (__AST-e _%stx108644%_)))
            (if (pair? _%stx108644%_)
                (let ()
                  (cons (__AST->datum (car _%stx108644%_))
                        (__AST->datum (cdr _%stx108644%_))))
                (if (vector? _%stx108644%_)
                    (let () (vector-map __AST->datum _%stx108644%_))
                    (if (box? _%stx108644%_)
                        (let () (box (__AST->datum (unbox _%stx108644%_))))
                        (let () _%stx108644%_)))))))
    (define get-readenv
      (lambda (_%port108642%_)
        (##make-readenv
         _%port108642%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in108630%_)
        (let ((_%e108632%_ (##read-datum-or-eof (get-readenv _%in108630%_))))
          (if (eof-object? (__AST-e _%e108632%_))
              (__AST-e _%e108632%_)
              _%e108632%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in108638%_ (current-input-port)))
          (read-syntax__% _%in108638%_))))
    (define read-syntax
      (lambda _g109194_
        (let ((_g109193_ (##length _g109194_)))
          (cond ((##fx= _g109193_ 0)
                 (apply (lambda () (read-syntax__0)) _g109194_))
                ((##fx= _g109193_ 1)
                 (apply (lambda (_%in108640%_) (read-syntax__% _%in108640%_))
                        _g109194_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g109194_))))))
    (define read-syntax-from-file
      (lambda (_%path108625%_)
        (let ((_%r108627%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path108625%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r108627%_)
              (cdr (__AST-e (vector-ref _%r108627%_ '1)))
              (error (err-code->string _%r108627%_) _%path108625%_)))))
    (define __wrap-syntax
      (lambda (_%re108622%_ _%e108623%_)
        (if (eof-object? _%e108623%_)
            _%e108623%_
            (##structure AST::t _%e108623%_ (##readenv->locat _%re108622%_)))))
    (define __unwrap-syntax
      (lambda (_%re108619%_ _%e108620%_) (__AST-e _%e108620%_)))
    (define __pp-syntax
      (lambda (_%stx108617%_) (pp (__AST->datum _%stx108617%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt108615%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt108615%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt108615%_ '@list)
          (macro-readtable-brace-handler-set! _%rt108615%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt108615%_
           '#\!
           __read-sharp-bang)
          _%rt108615%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt108611%_ _%kw108612%_)
        (macro-readtable-bracket-handler-set! _%rt108611%_ _%kw108612%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt108608%_ _%kw108609%_)
        (macro-readtable-brace-handler-set! _%rt108608%_ _%kw108609%_)))
    (define __read-sharp-bang
      (lambda (_%re108599%_ _%next108600%_ _%start-pos108601%_)
        (if (eq? _%start-pos108601%_ '0)
            (let* ((_%line108603%_
                    (##read-line
                     (macro-readenv-port _%re108599%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line108605%_
                    (substring
                     _%line108603%_
                     '1
                     (string-length _%line108603%_))))
              (macro-readenv-script-line-set!
               _%re108599%_
               _%script-line108605%_)
              (##script-marker))
            (##read-sharp-bang
             _%re108599%_
             _%next108600%_
             _%start-pos108601%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj108597%_)
        (if (source-location? _%obj108597%_)
            (string? (##locat-container _%obj108597%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj108595%_)
        (if (##locat? _%obj108595%_)
            (##container->path (##locat-container _%obj108595%_))
            '#f)))))

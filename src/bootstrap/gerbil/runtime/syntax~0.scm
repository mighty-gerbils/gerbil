(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1712757954)
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
      (lambda _%$args108913%_
        (apply make-instance SyntaxError::t _%$args108913%_)))
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
      (lambda (_%self108797%_ _%port108798%_)
        (let ((_%self108801%_ _%self108797%_))
          (letrec ((_%location108811%_
                    (lambda ()
                      (let _%lp108873%_ ((_%rest108875%_
                                          (##unchecked-structure-ref
                                           _%self108801%_
                                           '3
                                           '#f
                                           '#f)))
                        (let* ((_%rest108876108884%_ _%rest108875%_)
                               (_%else108878108892%_ (lambda () '#f))
                               (_%K108880108901%_
                                (lambda (_%rest108895%_ _%hd108896%_)
                                  (let ((_%$e108898%_
                                         (__AST-source _%hd108896%_)))
                                    (if _%$e108898%_
                                        _%$e108898%_
                                        (_%lp108873%_ _%rest108895%_))))))
                          (if (##pair? _%rest108876108884%_)
                              (let ((_%hd108881108904%_
                                     (##car _%rest108876108884%_))
                                    (_%tl108882108906%_
                                     (##cdr _%rest108876108884%_)))
                                (let* ((_%hd108909%_ _%hd108881108904%_)
                                       (_%rest108911%_ _%tl108882108906%_))
                                  (_%K108880108901%_
                                   _%rest108911%_
                                   _%hd108909%_)))
                              (_%else108878108892%_)))))))
            (__call-with-parameters
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e108814%_ (_%location108811%_)))
                 (if _%$e108814%_
                     ((lambda (_%where108817%_)
                        (##display-locat _%where108817%_ '#t _%port108798%_))
                      _%$e108814%_)
                     (display '"?")))
               (newline)
               (display '"--- Syntax Error")
               (let ((_%$e108820%_
                      (##unchecked-structure-ref _%self108801%_ '4 '#f '#f)))
                 (if _%$e108820%_
                     ((lambda (_%where108823%_)
                        (displayln
                         '" at "
                         _%where108823%_
                         '": "
                         (##unchecked-structure-ref
                          _%self108801%_
                          '2
                          '#f
                          '#f)))
                      _%$e108820%_)
                     (displayln
                      '": "
                      (##unchecked-structure-ref _%self108801%_ '2 '#f '#f))))
               (let* ((_%self.irritants108825108833%_
                       (##unchecked-structure-ref _%self108801%_ '3 '#f '#f))
                      (_%else108827108841%_ (lambda () '#!void))
                      (_%K108829108854%_
                       (lambda (_%rest108844%_ _%stx108845%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx108845%_)
                         (for-each
                          (lambda (_%detail108847%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail108847%_))
                            (let ((_%$e108849%_
                                   (__AST-source _%detail108847%_)))
                              (if _%$e108849%_
                                  ((lambda (_%loc108852%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc108852%_
                                      '#t
                                      _%port108798%_))
                                   _%$e108849%_)
                                  '#!void))
                            (newline))
                          _%rest108844%_))))
                 (if (##pair? _%self.irritants108825108833%_)
                     (let ((_%hd108830108857%_
                            (##car _%self.irritants108825108833%_))
                           (_%tl108831108859%_
                            (##cdr _%self.irritants108825108833%_)))
                       (let* ((_%stx108862%_ _%hd108830108857%_)
                              (_%rest108864%_ _%tl108831108859%_))
                         (_%K108829108854%_ _%rest108864%_ _%stx108862%_)))
                     '#!void))
               (if (##getenv '"GERBIL_DEBUG" '#f)
                   (let ((_%cont108865108867%_
                          (##unchecked-structure-ref
                           _%self108801%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont108865108867%_
                         (let ((_%cont108870%_ _%cont108865108867%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont108870%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port108798%_)))))
    (__bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message108668%_
               _%irritants108669%_
               _%where108670%_
               _%context108671%_
               _%marks108672%_
               _%phi108673%_)
        (let ((__obj109010
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj109010 _%message108668%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj109010
           _%irritants108669%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj109010 _%where108670%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj109010 _%context108671%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj109010 _%marks108672%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj109010 _%phi108673%_ '6 '#f '#f)
          __obj109010)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where108663%_
               _%message108664%_
               _%stx108665%_
               .
               _%details108666%_)
        (raise (make-syntax-error
                _%message108664%_
                (cons _%stx108665%_ _%details108666%_)
                _%where108663%_
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
      (lambda _%$args108660%_ (apply make-instance AST::t _%$args108660%_)))
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
      (lambda (_%stx108658%_)
        (if (##structure-instance-of? _%stx108658%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx108658%_ '1 '#f '#f)
            _%stx108658%_)))
    (define __AST-source
      (lambda (_%stx108649%_)
        (let _%lp108651%_ ((_%src108653%_ _%stx108649%_))
          (if (##structure-instance-of? _%src108653%_ 'gerbil#AST::t)
              (_%lp108651%_
               (##unchecked-structure-ref _%src108653%_ '2 '#f '#f))
              (if (##locat? _%src108653%_) _%src108653%_ '#f)))))
    (define __AST
      (lambda (_%e108641%_ _%src-stx108642%_)
        (let ((_%src108644%_ (__AST-source _%src-stx108642%_)))
          (if (or (##structure-instance-of? _%e108641%_ 'gerbil#AST::t)
                  (not _%src108644%_))
              _%e108641%_
              (##structure AST::t _%e108641%_ _%src108644%_)))))
    (define __AST-eq?
      (lambda (_%stx108638%_ _%obj108639%_)
        (eq? (__AST-e _%stx108638%_) _%obj108639%_)))
    (define __AST-pair?
      (lambda (_%stx108636%_) (pair? (__AST-e _%stx108636%_))))
    (define __AST-null?
      (lambda (_%stx108634%_) (null? (__AST-e _%stx108634%_))))
    (define __AST-datum?
      (lambda (_%stx108615%_)
        (let* ((_%e108617%_ (__AST-e _%stx108615%_))
               (_%$e108619%_ (number? _%e108617%_)))
          (if _%$e108619%_
              _%$e108619%_
              (let ((_%$e108622%_ (string? _%e108617%_)))
                (if _%$e108622%_
                    _%$e108622%_
                    (let ((_%$e108625%_ (char? _%e108617%_)))
                      (if _%$e108625%_
                          _%$e108625%_
                          (let ((_%$e108628%_ (keyword? _%e108617%_)))
                            (if _%$e108628%_
                                _%$e108628%_
                                (let ((_%$e108631%_ (boolean? _%e108617%_)))
                                  (if _%$e108631%_
                                      _%$e108631%_
                                      (eq? _%e108617%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx108613%_) (symbol? (__AST-e _%stx108613%_))))
    (define __AST-id-list?__%
      (lambda (_%stx108564%_ _%tail?108565%_)
        (let _%lp108567%_ ((_%rest108569%_ _%stx108564%_))
          (let* ((_%$e108571%_ _%rest108569%_)
                 (_%$E108573108586%_
                  (lambda ()
                    (let* ((_%$E108574108581%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e108571%_)))
                           (_%rest108584%_ _%$e108571%_))
                      (_%tail?108565%_ _%rest108584%_)))))
            (if (__AST-pair? _%$e108571%_)
                (let* ((_%$tgt108575108589%_ (__AST-e _%$e108571%_))
                       (_%$hd108576108592%_ (##car _%$tgt108575108589%_))
                       (_%$tl108577108595%_ (##cdr _%$tgt108575108589%_))
                       (_%hd108599%_ _%$hd108576108592%_)
                       (_%rest108601%_ _%$tl108577108595%_))
                  (if (__AST-id? _%hd108599%_)
                      (_%lp108567%_ _%rest108601%_)
                      '#f))
                (_%$E108573108586%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx108606%_)
        (let ((_%tail?108608%_ __AST-null?))
          (__AST-id-list?__% _%stx108606%_ _%tail?108608%_))))
    (define __AST-id-list?
      (lambda _g109013_
        (let ((_g109012_ (##length _g109013_)))
          (cond ((##fx= _g109012_ 1) (apply __AST-id-list?__0 _g109013_))
                ((##fx= _g109012_ 2) (apply __AST-id-list?__% _g109013_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g109013_))))))
    (define __AST-bind-list?
      (lambda (_%stx108556%_)
        (__AST-id-list?__%
         _%stx108556%_
         (lambda (_%e108558%_)
           (let ((_%$e108560%_ (__AST-null? _%e108558%_)))
             (if _%$e108560%_ _%$e108560%_ (__AST-id? _%e108558%_)))))))
    (define __AST-list?__%
      (lambda (_%stx108509%_ _%tail?108510%_)
        (let _%lp108512%_ ((_%rest108514%_ _%stx108509%_))
          (let* ((_%$e108516%_ _%rest108514%_)
                 (_%$E108518108531%_
                  (lambda ()
                    (let* ((_%$E108519108526%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e108516%_)))
                           (_%rest108529%_ _%$e108516%_))
                      (_%tail?108510%_ _%rest108529%_)))))
            (if (__AST-pair? _%$e108516%_)
                (let* ((_%$tgt108520108534%_ (__AST-e _%$e108516%_))
                       (_%$hd108521108537%_ (##car _%$tgt108520108534%_))
                       (_%$tl108522108540%_ (##cdr _%$tgt108520108534%_))
                       (_%rest108544%_ _%$tl108522108540%_))
                  (_%lp108512%_ _%rest108544%_))
                (_%$E108518108531%_))))))
    (define __AST-list?__0
      (lambda (_%stx108549%_)
        (let ((_%tail?108551%_ __AST-null?))
          (__AST-list?__% _%stx108549%_ _%tail?108551%_))))
    (define __AST-list?
      (lambda _g109015_
        (let ((_g109014_ (##length _g109015_)))
          (cond ((##fx= _g109014_ 1) (apply __AST-list?__0 _g109015_))
                ((##fx= _g109014_ 2) (apply __AST-list?__% _g109015_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g109015_))))))
    (define __AST->list
      (lambda (_%stx108474%_)
        (let* ((_%$e108476%_ _%stx108474%_)
               (_%$E108478108491%_
                (lambda ()
                  (let* ((_%$E108479108486%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e108476%_)))
                         (_%rest108489%_ _%$e108476%_))
                    (__AST-e _%rest108489%_)))))
          (if (__AST-pair? _%$e108476%_)
              (let* ((_%$tgt108480108494%_ (__AST-e _%$e108476%_))
                     (_%$hd108481108497%_ (##car _%$tgt108480108494%_))
                     (_%$tl108482108500%_ (##cdr _%$tgt108480108494%_))
                     (_%hd108504%_ _%$hd108481108497%_)
                     (_%rest108506%_ _%$tl108482108500%_))
                (cons _%hd108504%_ (__AST->list _%rest108506%_)))
              (_%$E108478108491%_)))))
    (define __AST->datum
      (lambda (_%stx108467%_)
        (if (##structure-instance-of? _%stx108467%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx108467%_))
            (if (pair? _%stx108467%_)
                (cons (__AST->datum (car _%stx108467%_))
                      (__AST->datum (cdr _%stx108467%_)))
                (if (vector? _%stx108467%_)
                    (vector-map __AST->datum _%stx108467%_)
                    (if (box? _%stx108467%_)
                        (box (__AST->datum (unbox _%stx108467%_)))
                        _%stx108467%_))))))
    (define get-readenv
      (lambda (_%port108465%_)
        (##make-readenv
         _%port108465%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in108453%_)
        (let ((_%e108455%_ (##read-datum-or-eof (get-readenv _%in108453%_))))
          (if (eof-object? (__AST-e _%e108455%_))
              (__AST-e _%e108455%_)
              _%e108455%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in108461%_ (current-input-port)))
          (read-syntax__% _%in108461%_))))
    (define read-syntax
      (lambda _g109017_
        (let ((_g109016_ (##length _g109017_)))
          (cond ((##fx= _g109016_ 0) (apply read-syntax__0 _g109017_))
                ((##fx= _g109016_ 1) (apply read-syntax__% _g109017_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g109017_))))))
    (define read-syntax-from-file
      (lambda (_%path108448%_)
        (let ((_%r108450%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path108448%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r108450%_)
              (cdr (__AST-e (vector-ref _%r108450%_ '1)))
              (error (err-code->string _%r108450%_) _%path108448%_)))))
    (define __wrap-syntax
      (lambda (_%re108445%_ _%e108446%_)
        (if (eof-object? _%e108446%_)
            _%e108446%_
            (##structure AST::t _%e108446%_ (##readenv->locat _%re108445%_)))))
    (define __unwrap-syntax
      (lambda (_%re108442%_ _%e108443%_) (__AST-e _%e108443%_)))
    (define __pp-syntax
      (lambda (_%stx108440%_) (pp (__AST->datum _%stx108440%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt108438%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt108438%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt108438%_ '@list)
          (macro-readtable-brace-handler-set! _%rt108438%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt108438%_
           '#\!
           __read-sharp-bang)
          _%rt108438%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt108434%_ _%kw108435%_)
        (macro-readtable-bracket-handler-set! _%rt108434%_ _%kw108435%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt108431%_ _%kw108432%_)
        (macro-readtable-brace-handler-set! _%rt108431%_ _%kw108432%_)))
    (define __read-sharp-bang
      (lambda (_%re108422%_ _%next108423%_ _%start-pos108424%_)
        (if (eq? _%start-pos108424%_ '0)
            (let* ((_%line108426%_
                    (##read-line
                     (macro-readenv-port _%re108422%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line108428%_
                    (substring
                     _%line108426%_
                     '1
                     (string-length _%line108426%_))))
              (macro-readenv-script-line-set!
               _%re108422%_
               _%script-line108428%_)
              (##script-marker))
            (##read-sharp-bang
             _%re108422%_
             _%next108423%_
             _%start-pos108424%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj108420%_)
        (if (source-location? _%obj108420%_)
            (string? (##locat-container _%obj108420%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj108418%_)
        (if (##locat? _%obj108418%_)
            (##container->path (##locat-container _%obj108418%_))
            '#f)))))

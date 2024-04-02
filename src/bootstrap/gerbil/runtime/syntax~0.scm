(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1712093475)
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
      (lambda _%$args108645%_
        (apply make-instance SyntaxError::t _%$args108645%_)))
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
      (lambda (_%self108529%_ _%port108530%_)
        (let ()
          (let ((_%self108533%_ _%self108529%_))
            (let ()
              (letrec ((_%location108543%_
                        (lambda ()
                          (let _%lp108605%_ ((_%rest108607%_
                                              (##unchecked-structure-ref
                                               _%self108533%_
                                               '3
                                               '#f
                                               '#f)))
                            (let* ((_%rest108608108616%_ _%rest108607%_)
                                   (_%else108610108624%_ (lambda () '#f))
                                   (_%K108612108633%_
                                    (lambda (_%rest108627%_ _%hd108628%_)
                                      (let ((_%$e108630%_
                                             (__AST-source _%hd108628%_)))
                                        (if _%$e108630%_
                                            _%$e108630%_
                                            (_%lp108605%_ _%rest108627%_))))))
                              (if (##pair? _%rest108608108616%_)
                                  (let ((_%hd108613108636%_
                                         (##car _%rest108608108616%_))
                                        (_%tl108614108638%_
                                         (##cdr _%rest108608108616%_)))
                                    (let* ((_%hd108641%_ _%hd108613108636%_)
                                           (_%rest108643%_ _%tl108614108638%_))
                                      (_%K108612108633%_
                                       _%rest108643%_
                                       _%hd108641%_)))
                                  (_%else108610108624%_)))))))
                (__call-with-parameters
                 (lambda ()
                   (newline)
                   (display '"*** ERROR IN ")
                   (let ((_%$e108546%_ (_%location108543%_)))
                     (if _%$e108546%_
                         ((lambda (_%where108549%_)
                            (##display-locat
                             _%where108549%_
                             '#t
                             _%port108530%_))
                          _%$e108546%_)
                         (let () (display '"?"))))
                   (newline)
                   (display '"--- Syntax Error")
                   (let ((_%$e108552%_
                          (##unchecked-structure-ref
                           _%self108533%_
                           '4
                           '#f
                           '#f)))
                     (if _%$e108552%_
                         ((lambda (_%where108555%_)
                            (displayln
                             '" at "
                             _%where108555%_
                             '": "
                             (##unchecked-structure-ref
                              _%self108533%_
                              '2
                              '#f
                              '#f)))
                          _%$e108552%_)
                         (let ()
                           (displayln
                            '": "
                            (##unchecked-structure-ref
                             _%self108533%_
                             '2
                             '#f
                             '#f)))))
                   (let* ((_%g108557108565%_
                           (##unchecked-structure-ref
                            _%self108533%_
                            '3
                            '#f
                            '#f))
                          (_%else108559108573%_ (lambda () '#!void))
                          (_%K108561108586%_
                           (lambda (_%rest108576%_ _%stx108577%_)
                             (display '"... form:   ")
                             (__pp-syntax _%stx108577%_)
                             (for-each
                              (lambda (_%detail108579%_)
                                (display '"... detail: ")
                                (##write (__AST->datum _%detail108579%_))
                                (let ((_%$e108581%_
                                       (__AST-source _%detail108579%_)))
                                  (if _%$e108581%_
                                      ((lambda (_%loc108584%_)
                                         (display '" at ")
                                         (##display-locat
                                          _%loc108584%_
                                          '#t
                                          _%port108530%_))
                                       _%$e108581%_)
                                      '#!void))
                                (newline))
                              _%rest108576%_))))
                     (if (##pair? _%g108557108565%_)
                         (let ((_%hd108562108589%_ (##car _%g108557108565%_))
                               (_%tl108563108591%_ (##cdr _%g108557108565%_)))
                           (let* ((_%stx108594%_ _%hd108562108589%_)
                                  (_%rest108596%_ _%tl108563108591%_))
                             (_%K108561108586%_ _%rest108596%_ _%stx108594%_)))
                         '#!void))
                   (if (##getenv '"GERBIL_EXPANDER_DEBUG" '#f)
                       (let ((_%cont108597108599%_
                              (unchecked-slot-ref
                               _%self108533%_
                               'continuation)))
                         (if _%cont108597108599%_
                             (let ((_%cont108602%_ _%cont108597108599%_))
                               (display '"--- continuation backtrace:")
                               (newline)
                               (display-continuation-backtrace _%cont108602%_))
                             '#f))
                       '#!void))
                 current-output-port
                 _%port108530%_)))))))
    (__bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message108400%_
               _%irritants108401%_
               _%where108402%_
               _%context108403%_
               _%marks108404%_
               _%phi108405%_)
        (let ((__obj108742
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj108742 _%message108400%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj108742
           _%irritants108401%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj108742 _%where108402%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj108742 _%context108403%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj108742 _%marks108404%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj108742 _%phi108405%_ '6 '#f '#f)
          __obj108742)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where108395%_
               _%message108396%_
               _%stx108397%_
               .
               _%details108398%_)
        (raise (make-syntax-error
                _%message108396%_
                (cons _%stx108397%_ _%details108398%_)
                _%where108395%_
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
      (lambda _%$args108392%_ (apply make-instance AST::t _%$args108392%_)))
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
      (lambda (_%stx108390%_)
        (if (##structure-instance-of? _%stx108390%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx108390%_ '1 '#f '#f)
            _%stx108390%_)))
    (define __AST-source
      (lambda (_%stx108381%_)
        (let _%lp108383%_ ((_%src108385%_ _%stx108381%_))
          (if (##structure-instance-of? _%src108385%_ 'gerbil#AST::t)
              (let ()
                (_%lp108383%_
                 (##unchecked-structure-ref _%src108385%_ '2 '#f '#f)))
              (if (##locat? _%src108385%_)
                  (let () _%src108385%_)
                  (let () '#f))))))
    (define __AST
      (lambda (_%e108373%_ _%src-stx108374%_)
        (let ((_%src108376%_ (__AST-source _%src-stx108374%_)))
          (if (or (##structure-instance-of? _%e108373%_ 'gerbil#AST::t)
                  (not _%src108376%_))
              _%e108373%_
              (##structure AST::t _%e108373%_ _%src108376%_)))))
    (define __AST-eq?
      (lambda (_%stx108370%_ _%obj108371%_)
        (eq? (__AST-e _%stx108370%_) _%obj108371%_)))
    (define __AST-pair?
      (lambda (_%stx108368%_) (pair? (__AST-e _%stx108368%_))))
    (define __AST-null?
      (lambda (_%stx108366%_) (null? (__AST-e _%stx108366%_))))
    (define __AST-datum?
      (lambda (_%stx108347%_)
        (let* ((_%e108349%_ (__AST-e _%stx108347%_))
               (_%$e108351%_ (number? _%e108349%_)))
          (if _%$e108351%_
              _%$e108351%_
              (let ((_%$e108354%_ (string? _%e108349%_)))
                (if _%$e108354%_
                    _%$e108354%_
                    (let ((_%$e108357%_ (char? _%e108349%_)))
                      (if _%$e108357%_
                          _%$e108357%_
                          (let ((_%$e108360%_ (keyword? _%e108349%_)))
                            (if _%$e108360%_
                                _%$e108360%_
                                (let ((_%$e108363%_ (boolean? _%e108349%_)))
                                  (if _%$e108363%_
                                      _%$e108363%_
                                      (eq? _%e108349%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx108345%_) (symbol? (__AST-e _%stx108345%_))))
    (define __AST-id-list?__%
      (lambda (_%stx108296%_ _%tail?108297%_)
        (let _%lp108299%_ ((_%rest108301%_ _%stx108296%_))
          (let* ((_%$e108303%_ _%rest108301%_)
                 (_%$E108305108318%_
                  (lambda ()
                    (let* ((_%$E108306108313%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e108303%_)))
                           (_%rest108316%_ _%$e108303%_))
                      (_%tail?108297%_ _%rest108316%_)))))
            (if (__AST-pair? _%$e108303%_)
                (let* ((_%$tgt108307108321%_ (__AST-e _%$e108303%_))
                       (_%$hd108308108324%_ (##car _%$tgt108307108321%_))
                       (_%$tl108309108327%_ (##cdr _%$tgt108307108321%_)))
                  (let* ((_%hd108331%_ _%$hd108308108324%_)
                         (_%rest108333%_ _%$tl108309108327%_))
                    (if (__AST-id? _%hd108331%_)
                        (_%lp108299%_ _%rest108333%_)
                        '#f)))
                (_%$E108305108318%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx108338%_)
        (let ((_%tail?108340%_ __AST-null?))
          (__AST-id-list?__% _%stx108338%_ _%tail?108340%_))))
    (define __AST-id-list?
      (lambda _g108745_
        (let ((_g108744_ (##length _g108745_)))
          (cond ((##fx= _g108744_ 1)
                 (apply (lambda (_%stx108338%_)
                          (__AST-id-list?__0 _%stx108338%_))
                        _g108745_))
                ((##fx= _g108744_ 2)
                 (apply (lambda (_%stx108342%_ _%tail?108343%_)
                          (__AST-id-list?__% _%stx108342%_ _%tail?108343%_))
                        _g108745_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g108745_))))))
    (define __AST-bind-list?
      (lambda (_%stx108288%_)
        (__AST-id-list?__%
         _%stx108288%_
         (lambda (_%e108290%_)
           (let ((_%$e108292%_ (__AST-null? _%e108290%_)))
             (if _%$e108292%_ _%$e108292%_ (__AST-id? _%e108290%_)))))))
    (define __AST-list?__%
      (lambda (_%stx108241%_ _%tail?108242%_)
        (let _%lp108244%_ ((_%rest108246%_ _%stx108241%_))
          (let* ((_%$e108248%_ _%rest108246%_)
                 (_%$E108250108263%_
                  (lambda ()
                    (let* ((_%$E108251108258%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e108248%_)))
                           (_%rest108261%_ _%$e108248%_))
                      (_%tail?108242%_ _%rest108261%_)))))
            (if (__AST-pair? _%$e108248%_)
                (let* ((_%$tgt108252108266%_ (__AST-e _%$e108248%_))
                       (_%$hd108253108269%_ (##car _%$tgt108252108266%_))
                       (_%$tl108254108272%_ (##cdr _%$tgt108252108266%_)))
                  (let ((_%rest108276%_ _%$tl108254108272%_))
                    (_%lp108244%_ _%rest108276%_)))
                (_%$E108250108263%_))))))
    (define __AST-list?__0
      (lambda (_%stx108281%_)
        (let ((_%tail?108283%_ __AST-null?))
          (__AST-list?__% _%stx108281%_ _%tail?108283%_))))
    (define __AST-list?
      (lambda _g108747_
        (let ((_g108746_ (##length _g108747_)))
          (cond ((##fx= _g108746_ 1)
                 (apply (lambda (_%stx108281%_) (__AST-list?__0 _%stx108281%_))
                        _g108747_))
                ((##fx= _g108746_ 2)
                 (apply (lambda (_%stx108285%_ _%tail?108286%_)
                          (__AST-list?__% _%stx108285%_ _%tail?108286%_))
                        _g108747_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g108747_))))))
    (define __AST->list
      (lambda (_%stx108206%_)
        (let* ((_%$e108208%_ _%stx108206%_)
               (_%$E108210108223%_
                (lambda ()
                  (let* ((_%$E108211108218%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e108208%_)))
                         (_%rest108221%_ _%$e108208%_))
                    (__AST-e _%rest108221%_)))))
          (if (__AST-pair? _%$e108208%_)
              (let* ((_%$tgt108212108226%_ (__AST-e _%$e108208%_))
                     (_%$hd108213108229%_ (##car _%$tgt108212108226%_))
                     (_%$tl108214108232%_ (##cdr _%$tgt108212108226%_)))
                (let* ((_%hd108236%_ _%$hd108213108229%_)
                       (_%rest108238%_ _%$tl108214108232%_))
                  (cons _%hd108236%_ (__AST->list _%rest108238%_))))
              (_%$E108210108223%_)))))
    (define __AST->datum
      (lambda (_%stx108199%_)
        (if (##structure-instance-of? _%stx108199%_ 'gerbil#AST::t)
            (let () (__AST->datum (__AST-e _%stx108199%_)))
            (if (pair? _%stx108199%_)
                (let ()
                  (cons (__AST->datum (car _%stx108199%_))
                        (__AST->datum (cdr _%stx108199%_))))
                (if (vector? _%stx108199%_)
                    (let () (vector-map __AST->datum _%stx108199%_))
                    (if (box? _%stx108199%_)
                        (let () (box (__AST->datum (unbox _%stx108199%_))))
                        (let () _%stx108199%_)))))))
    (define get-readenv
      (lambda (_%port108197%_)
        (##make-readenv
         _%port108197%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in108185%_)
        (let ((_%e108187%_ (##read-datum-or-eof (get-readenv _%in108185%_))))
          (if (eof-object? (__AST-e _%e108187%_))
              (__AST-e _%e108187%_)
              _%e108187%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in108193%_ (current-input-port)))
          (read-syntax__% _%in108193%_))))
    (define read-syntax
      (lambda _g108749_
        (let ((_g108748_ (##length _g108749_)))
          (cond ((##fx= _g108748_ 0)
                 (apply (lambda () (read-syntax__0)) _g108749_))
                ((##fx= _g108748_ 1)
                 (apply (lambda (_%in108195%_) (read-syntax__% _%in108195%_))
                        _g108749_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g108749_))))))
    (define read-syntax-from-file
      (lambda (_%path108180%_)
        (let ((_%r108182%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path108180%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r108182%_)
              (cdr (__AST-e (vector-ref _%r108182%_ '1)))
              (error (err-code->string _%r108182%_) _%path108180%_)))))
    (define __wrap-syntax
      (lambda (_%re108177%_ _%e108178%_)
        (if (eof-object? _%e108178%_)
            _%e108178%_
            (##structure AST::t _%e108178%_ (##readenv->locat _%re108177%_)))))
    (define __unwrap-syntax
      (lambda (_%re108174%_ _%e108175%_) (__AST-e _%e108175%_)))
    (define __pp-syntax
      (lambda (_%stx108172%_) (pp (__AST->datum _%stx108172%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt108170%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt108170%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt108170%_ '@list)
          (macro-readtable-brace-handler-set! _%rt108170%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt108170%_
           '#\!
           __read-sharp-bang)
          _%rt108170%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt108166%_ _%kw108167%_)
        (macro-readtable-bracket-handler-set! _%rt108166%_ _%kw108167%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt108163%_ _%kw108164%_)
        (macro-readtable-brace-handler-set! _%rt108163%_ _%kw108164%_)))
    (define __read-sharp-bang
      (lambda (_%re108154%_ _%next108155%_ _%start-pos108156%_)
        (if (eq? _%start-pos108156%_ '0)
            (let* ((_%line108158%_
                    (##read-line
                     (macro-readenv-port _%re108154%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line108160%_
                    (substring
                     _%line108158%_
                     '1
                     (string-length _%line108158%_))))
              (macro-readenv-script-line-set!
               _%re108154%_
               _%script-line108160%_)
              (##script-marker))
            (##read-sharp-bang
             _%re108154%_
             _%next108155%_
             _%start-pos108156%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj108152%_)
        (if (source-location? _%obj108152%_)
            (string? (##locat-container _%obj108152%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj108150%_)
        (if (##locat? _%obj108150%_)
            (##container->path (##locat-container _%obj108150%_))
            '#f)))))

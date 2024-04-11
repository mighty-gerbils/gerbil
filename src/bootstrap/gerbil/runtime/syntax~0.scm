(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1712823026)
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
      (lambda _%$args110396%_
        (apply make-instance SyntaxError::t _%$args110396%_)))
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
      (lambda (_%self109897110278%_ _%port110280%_)
        (let* ((_%self110282%_ _%self109897110278%_)
               (_%self110284%_ _%self110282%_))
          (letrec ((_%location110294%_
                    (lambda ()
                      (let _%lp110356%_ ((_%rest110358%_
                                          (##unchecked-structure-ref
                                           _%self110284%_
                                           '3
                                           '#f
                                           '#f)))
                        (let* ((_%rest110359110367%_ _%rest110358%_)
                               (_%else110361110375%_ (lambda () '#f))
                               (_%K110363110384%_
                                (lambda (_%rest110378%_ _%hd110379%_)
                                  (let ((_%$e110381%_
                                         (__AST-source _%hd110379%_)))
                                    (if _%$e110381%_
                                        _%$e110381%_
                                        (_%lp110356%_ _%rest110378%_))))))
                          (if (##pair? _%rest110359110367%_)
                              (let ((_%hd110364110387%_
                                     (##car _%rest110359110367%_))
                                    (_%tl110365110389%_
                                     (##cdr _%rest110359110367%_)))
                                (let* ((_%hd110392%_ _%hd110364110387%_)
                                       (_%rest110394%_ _%tl110365110389%_))
                                  (_%K110363110384%_
                                   _%rest110394%_
                                   _%hd110392%_)))
                              (_%else110361110375%_)))))))
            (__call-with-parameters
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e110297%_ (_%location110294%_)))
                 (if _%$e110297%_
                     ((lambda (_%where110300%_)
                        (##display-locat _%where110300%_ '#t _%port110280%_))
                      _%$e110297%_)
                     (display '"?")))
               (newline)
               (display '"--- Syntax Error")
               (let ((_%$e110303%_
                      (##unchecked-structure-ref _%self110284%_ '4 '#f '#f)))
                 (if _%$e110303%_
                     ((lambda (_%where110306%_)
                        (displayln
                         '" at "
                         _%where110306%_
                         '": "
                         (##unchecked-structure-ref
                          _%self110284%_
                          '2
                          '#f
                          '#f)))
                      _%$e110303%_)
                     (displayln
                      '": "
                      (##unchecked-structure-ref _%self110284%_ '2 '#f '#f))))
               (let* ((_%self.irritants110308110316%_
                       (##unchecked-structure-ref _%self110284%_ '3 '#f '#f))
                      (_%else110310110324%_ (lambda () '#!void))
                      (_%K110312110337%_
                       (lambda (_%rest110327%_ _%stx110328%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx110328%_)
                         (for-each
                          (lambda (_%detail110330%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail110330%_))
                            (let ((_%$e110332%_
                                   (__AST-source _%detail110330%_)))
                              (if _%$e110332%_
                                  ((lambda (_%loc110335%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc110335%_
                                      '#t
                                      _%port110280%_))
                                   _%$e110332%_)
                                  '#!void))
                            (newline))
                          _%rest110327%_))))
                 (if (##pair? _%self.irritants110308110316%_)
                     (let ((_%hd110313110340%_
                            (##car _%self.irritants110308110316%_))
                           (_%tl110314110342%_
                            (##cdr _%self.irritants110308110316%_)))
                       (let* ((_%stx110345%_ _%hd110313110340%_)
                              (_%rest110347%_ _%tl110314110342%_))
                         (_%K110312110337%_ _%rest110347%_ _%stx110345%_)))
                     '#!void))
               (if (##getenv '"GERBIL_DEBUG" '#f)
                   (let ((_%cont110348110350%_
                          (##unchecked-structure-ref
                           _%self110284%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont110348110350%_
                         (let ((_%cont110353%_ _%cont110348110350%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont110353%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port110280%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message110149%_
               _%irritants110150%_
               _%where110151%_
               _%context110152%_
               _%marks110153%_
               _%phi110154%_)
        (let ((__obj110493
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj110493 _%message110149%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj110493
           _%irritants110150%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj110493 _%where110151%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj110493 _%context110152%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj110493 _%marks110153%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj110493 _%phi110154%_ '6 '#f '#f)
          __obj110493)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where110144%_
               _%message110145%_
               _%stx110146%_
               .
               _%details110147%_)
        (raise (make-syntax-error
                _%message110145%_
                (cons _%stx110146%_ _%details110147%_)
                _%where110144%_
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
      (lambda _%$args110141%_ (apply make-instance AST::t _%$args110141%_)))
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
      (lambda (_%stx110139%_)
        (if (##structure-instance-of? _%stx110139%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx110139%_ '1 '#f '#f)
            _%stx110139%_)))
    (define __AST-source
      (lambda (_%stx110130%_)
        (let _%lp110132%_ ((_%src110134%_ _%stx110130%_))
          (if (##structure-instance-of? _%src110134%_ 'gerbil#AST::t)
              (_%lp110132%_
               (##unchecked-structure-ref _%src110134%_ '2 '#f '#f))
              (if (##locat? _%src110134%_) _%src110134%_ '#f)))))
    (define __AST
      (lambda (_%e110122%_ _%src-stx110123%_)
        (let ((_%src110125%_ (__AST-source _%src-stx110123%_)))
          (if (or (##structure-instance-of? _%e110122%_ 'gerbil#AST::t)
                  (not _%src110125%_))
              _%e110122%_
              (##structure AST::t _%e110122%_ _%src110125%_)))))
    (define __AST-eq?
      (lambda (_%stx110119%_ _%obj110120%_)
        (eq? (__AST-e _%stx110119%_) _%obj110120%_)))
    (define __AST-pair?
      (lambda (_%stx110117%_) (pair? (__AST-e _%stx110117%_))))
    (define __AST-null?
      (lambda (_%stx110115%_) (null? (__AST-e _%stx110115%_))))
    (define __AST-datum?
      (lambda (_%stx110096%_)
        (let* ((_%e110098%_ (__AST-e _%stx110096%_))
               (_%$e110100%_ (number? _%e110098%_)))
          (if _%$e110100%_
              _%$e110100%_
              (let ((_%$e110103%_ (string? _%e110098%_)))
                (if _%$e110103%_
                    _%$e110103%_
                    (let ((_%$e110106%_ (char? _%e110098%_)))
                      (if _%$e110106%_
                          _%$e110106%_
                          (let ((_%$e110109%_ (keyword? _%e110098%_)))
                            (if _%$e110109%_
                                _%$e110109%_
                                (let ((_%$e110112%_ (boolean? _%e110098%_)))
                                  (if _%$e110112%_
                                      _%$e110112%_
                                      (eq? _%e110098%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx110094%_) (symbol? (__AST-e _%stx110094%_))))
    (define __AST-id-list?__%
      (lambda (_%stx110045%_ _%tail?110046%_)
        (let _%lp110048%_ ((_%rest110050%_ _%stx110045%_))
          (let* ((_%$e110052%_ _%rest110050%_)
                 (_%$E110054110067%_
                  (lambda ()
                    (let* ((_%$E110055110062%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e110052%_)))
                           (_%rest110065%_ _%$e110052%_))
                      (_%tail?110046%_ _%rest110065%_)))))
            (if (__AST-pair? _%$e110052%_)
                (let* ((_%$tgt110056110070%_ (__AST-e _%$e110052%_))
                       (_%$hd110057110073%_ (##car _%$tgt110056110070%_))
                       (_%$tl110058110076%_ (##cdr _%$tgt110056110070%_))
                       (_%hd110080%_ _%$hd110057110073%_)
                       (_%rest110082%_ _%$tl110058110076%_))
                  (if (__AST-id? _%hd110080%_)
                      (_%lp110048%_ _%rest110082%_)
                      '#f))
                (_%$E110054110067%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx110087%_)
        (let ((_%tail?110089%_ __AST-null?))
          (__AST-id-list?__% _%stx110087%_ _%tail?110089%_))))
    (define __AST-id-list?
      (lambda _g110496_
        (let ((_g110495_ (##length _g110496_)))
          (cond ((##fx= _g110495_ 1) (apply __AST-id-list?__0 _g110496_))
                ((##fx= _g110495_ 2) (apply __AST-id-list?__% _g110496_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g110496_))))))
    (define __AST-bind-list?
      (lambda (_%stx110037%_)
        (__AST-id-list?__%
         _%stx110037%_
         (lambda (_%e110039%_)
           (let ((_%$e110041%_ (__AST-null? _%e110039%_)))
             (if _%$e110041%_ _%$e110041%_ (__AST-id? _%e110039%_)))))))
    (define __AST-list?__%
      (lambda (_%stx109990%_ _%tail?109991%_)
        (let _%lp109993%_ ((_%rest109995%_ _%stx109990%_))
          (let* ((_%$e109997%_ _%rest109995%_)
                 (_%$E109999110012%_
                  (lambda ()
                    (let* ((_%$E110000110007%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e109997%_)))
                           (_%rest110010%_ _%$e109997%_))
                      (_%tail?109991%_ _%rest110010%_)))))
            (if (__AST-pair? _%$e109997%_)
                (let* ((_%$tgt110001110015%_ (__AST-e _%$e109997%_))
                       (_%$hd110002110018%_ (##car _%$tgt110001110015%_))
                       (_%$tl110003110021%_ (##cdr _%$tgt110001110015%_))
                       (_%rest110025%_ _%$tl110003110021%_))
                  (_%lp109993%_ _%rest110025%_))
                (_%$E109999110012%_))))))
    (define __AST-list?__0
      (lambda (_%stx110030%_)
        (let ((_%tail?110032%_ __AST-null?))
          (__AST-list?__% _%stx110030%_ _%tail?110032%_))))
    (define __AST-list?
      (lambda _g110498_
        (let ((_g110497_ (##length _g110498_)))
          (cond ((##fx= _g110497_ 1) (apply __AST-list?__0 _g110498_))
                ((##fx= _g110497_ 2) (apply __AST-list?__% _g110498_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g110498_))))))
    (define __AST->list
      (lambda (_%stx109955%_)
        (let* ((_%$e109957%_ _%stx109955%_)
               (_%$E109959109972%_
                (lambda ()
                  (let* ((_%$E109960109967%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e109957%_)))
                         (_%rest109970%_ _%$e109957%_))
                    (__AST-e _%rest109970%_)))))
          (if (__AST-pair? _%$e109957%_)
              (let* ((_%$tgt109961109975%_ (__AST-e _%$e109957%_))
                     (_%$hd109962109978%_ (##car _%$tgt109961109975%_))
                     (_%$tl109963109981%_ (##cdr _%$tgt109961109975%_))
                     (_%hd109985%_ _%$hd109962109978%_)
                     (_%rest109987%_ _%$tl109963109981%_))
                (cons _%hd109985%_ (__AST->list _%rest109987%_)))
              (_%$E109959109972%_)))))
    (define __AST->datum
      (lambda (_%stx109948%_)
        (if (##structure-instance-of? _%stx109948%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx109948%_))
            (if (pair? _%stx109948%_)
                (cons (__AST->datum (car _%stx109948%_))
                      (__AST->datum (cdr _%stx109948%_)))
                (if (vector? _%stx109948%_)
                    (vector-map __AST->datum _%stx109948%_)
                    (if (box? _%stx109948%_)
                        (box (__AST->datum (unbox _%stx109948%_)))
                        _%stx109948%_))))))
    (define get-readenv
      (lambda (_%port109946%_)
        (##make-readenv
         _%port109946%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in109934%_)
        (let ((_%e109936%_ (##read-datum-or-eof (get-readenv _%in109934%_))))
          (if (eof-object? (__AST-e _%e109936%_))
              (__AST-e _%e109936%_)
              _%e109936%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in109942%_ (current-input-port)))
          (read-syntax__% _%in109942%_))))
    (define read-syntax
      (lambda _g110500_
        (let ((_g110499_ (##length _g110500_)))
          (cond ((##fx= _g110499_ 0) (apply read-syntax__0 _g110500_))
                ((##fx= _g110499_ 1) (apply read-syntax__% _g110500_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g110500_))))))
    (define read-syntax-from-file
      (lambda (_%path109929%_)
        (let ((_%r109931%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path109929%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r109931%_)
              (cdr (__AST-e (vector-ref _%r109931%_ '1)))
              (error (err-code->string _%r109931%_) _%path109929%_)))))
    (define __wrap-syntax
      (lambda (_%re109926%_ _%e109927%_)
        (if (eof-object? _%e109927%_)
            _%e109927%_
            (##structure AST::t _%e109927%_ (##readenv->locat _%re109926%_)))))
    (define __unwrap-syntax
      (lambda (_%re109923%_ _%e109924%_) (__AST-e _%e109924%_)))
    (define __pp-syntax
      (lambda (_%stx109921%_) (pp (__AST->datum _%stx109921%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt109919%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt109919%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt109919%_ '@list)
          (macro-readtable-brace-handler-set! _%rt109919%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt109919%_
           '#\!
           __read-sharp-bang)
          _%rt109919%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt109915%_ _%kw109916%_)
        (macro-readtable-bracket-handler-set! _%rt109915%_ _%kw109916%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt109912%_ _%kw109913%_)
        (macro-readtable-brace-handler-set! _%rt109912%_ _%kw109913%_)))
    (define __read-sharp-bang
      (lambda (_%re109903%_ _%next109904%_ _%start-pos109905%_)
        (if (eq? _%start-pos109905%_ '0)
            (let* ((_%line109907%_
                    (##read-line
                     (macro-readenv-port _%re109903%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line109909%_
                    (substring
                     _%line109907%_
                     '1
                     (string-length _%line109907%_))))
              (macro-readenv-script-line-set!
               _%re109903%_
               _%script-line109909%_)
              (##script-marker))
            (##read-sharp-bang
             _%re109903%_
             _%next109904%_
             _%start-pos109905%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj109901%_)
        (if (source-location? _%obj109901%_)
            (string? (##locat-container _%obj109901%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj109899%_)
        (if (##locat? _%obj109899%_)
            (##container->path (##locat-container _%obj109899%_))
            '#f)))))

(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1712836657)
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
      (lambda _%$args110398%_
        (apply make-instance SyntaxError::t _%$args110398%_)))
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
      (lambda (_%self109899110280%_ _%port110282%_)
        (let* ((_%self110284%_ _%self109899110280%_)
               (_%self110286%_ _%self110284%_))
          (letrec ((_%location110296%_
                    (lambda ()
                      (let _%lp110358%_ ((_%rest110360%_
                                          (##unchecked-structure-ref
                                           _%self110286%_
                                           '3
                                           '#f
                                           '#f)))
                        (let* ((_%rest110361110369%_ _%rest110360%_)
                               (_%else110363110377%_ (lambda () '#f))
                               (_%K110365110386%_
                                (lambda (_%rest110380%_ _%hd110381%_)
                                  (let ((_%$e110383%_
                                         (__AST-source _%hd110381%_)))
                                    (if _%$e110383%_
                                        _%$e110383%_
                                        (_%lp110358%_ _%rest110380%_))))))
                          (if (##pair? _%rest110361110369%_)
                              (let ((_%hd110366110389%_
                                     (##car _%rest110361110369%_))
                                    (_%tl110367110391%_
                                     (##cdr _%rest110361110369%_)))
                                (let* ((_%hd110394%_ _%hd110366110389%_)
                                       (_%rest110396%_ _%tl110367110391%_))
                                  (_%K110365110386%_
                                   _%rest110396%_
                                   _%hd110394%_)))
                              (_%else110363110377%_)))))))
            (__call-with-parameters
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e110299%_ (_%location110296%_)))
                 (if _%$e110299%_
                     ((lambda (_%where110302%_)
                        (##display-locat _%where110302%_ '#t _%port110282%_))
                      _%$e110299%_)
                     (display '"?")))
               (newline)
               (display '"--- Syntax Error")
               (let ((_%$e110305%_
                      (##unchecked-structure-ref _%self110286%_ '4 '#f '#f)))
                 (if _%$e110305%_
                     ((lambda (_%where110308%_)
                        (displayln
                         '" at "
                         _%where110308%_
                         '": "
                         (##unchecked-structure-ref
                          _%self110286%_
                          '2
                          '#f
                          '#f)))
                      _%$e110305%_)
                     (displayln
                      '": "
                      (##unchecked-structure-ref _%self110286%_ '2 '#f '#f))))
               (let* ((_%self.irritants110310110318%_
                       (##unchecked-structure-ref _%self110286%_ '3 '#f '#f))
                      (_%else110312110326%_ (lambda () '#!void))
                      (_%K110314110339%_
                       (lambda (_%rest110329%_ _%stx110330%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx110330%_)
                         (for-each
                          (lambda (_%detail110332%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail110332%_))
                            (let ((_%$e110334%_
                                   (__AST-source _%detail110332%_)))
                              (if _%$e110334%_
                                  ((lambda (_%loc110337%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc110337%_
                                      '#t
                                      _%port110282%_))
                                   _%$e110334%_)
                                  '#!void))
                            (newline))
                          _%rest110329%_))))
                 (if (##pair? _%self.irritants110310110318%_)
                     (let ((_%hd110315110342%_
                            (##car _%self.irritants110310110318%_))
                           (_%tl110316110344%_
                            (##cdr _%self.irritants110310110318%_)))
                       (let* ((_%stx110347%_ _%hd110315110342%_)
                              (_%rest110349%_ _%tl110316110344%_))
                         (_%K110314110339%_ _%rest110349%_ _%stx110347%_)))
                     '#!void))
               (if (##getenv '"GERBIL_DEBUG" '#f)
                   (let ((_%cont110350110352%_
                          (##unchecked-structure-ref
                           _%self110286%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont110350110352%_
                         (let ((_%cont110355%_ _%cont110350110352%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont110355%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port110282%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message110151%_
               _%irritants110152%_
               _%where110153%_
               _%context110154%_
               _%marks110155%_
               _%phi110156%_)
        (let ((__obj110495
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj110495 _%message110151%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj110495
           _%irritants110152%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj110495 _%where110153%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj110495 _%context110154%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj110495 _%marks110155%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj110495 _%phi110156%_ '6 '#f '#f)
          __obj110495)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where110146%_
               _%message110147%_
               _%stx110148%_
               .
               _%details110149%_)
        (raise (make-syntax-error
                _%message110147%_
                (cons _%stx110148%_ _%details110149%_)
                _%where110146%_
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
      (lambda _%$args110143%_ (apply make-instance AST::t _%$args110143%_)))
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
      (lambda (_%stx110141%_)
        (if (##structure-instance-of? _%stx110141%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx110141%_ '1 '#f '#f)
            _%stx110141%_)))
    (define __AST-source
      (lambda (_%stx110132%_)
        (let _%lp110134%_ ((_%src110136%_ _%stx110132%_))
          (if (##structure-instance-of? _%src110136%_ 'gerbil#AST::t)
              (_%lp110134%_
               (##unchecked-structure-ref _%src110136%_ '2 '#f '#f))
              (if (##locat? _%src110136%_) _%src110136%_ '#f)))))
    (define __AST
      (lambda (_%e110124%_ _%src-stx110125%_)
        (let ((_%src110127%_ (__AST-source _%src-stx110125%_)))
          (if (or (##structure-instance-of? _%e110124%_ 'gerbil#AST::t)
                  (not _%src110127%_))
              _%e110124%_
              (##structure AST::t _%e110124%_ _%src110127%_)))))
    (define __AST-eq?
      (lambda (_%stx110121%_ _%obj110122%_)
        (eq? (__AST-e _%stx110121%_) _%obj110122%_)))
    (define __AST-pair?
      (lambda (_%stx110119%_) (pair? (__AST-e _%stx110119%_))))
    (define __AST-null?
      (lambda (_%stx110117%_) (null? (__AST-e _%stx110117%_))))
    (define __AST-datum?
      (lambda (_%stx110098%_)
        (let* ((_%e110100%_ (__AST-e _%stx110098%_))
               (_%$e110102%_ (number? _%e110100%_)))
          (if _%$e110102%_
              _%$e110102%_
              (let ((_%$e110105%_ (string? _%e110100%_)))
                (if _%$e110105%_
                    _%$e110105%_
                    (let ((_%$e110108%_ (char? _%e110100%_)))
                      (if _%$e110108%_
                          _%$e110108%_
                          (let ((_%$e110111%_ (keyword? _%e110100%_)))
                            (if _%$e110111%_
                                _%$e110111%_
                                (let ((_%$e110114%_ (boolean? _%e110100%_)))
                                  (if _%$e110114%_
                                      _%$e110114%_
                                      (eq? _%e110100%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx110096%_) (symbol? (__AST-e _%stx110096%_))))
    (define __AST-id-list?__%
      (lambda (_%stx110047%_ _%tail?110048%_)
        (let _%lp110050%_ ((_%rest110052%_ _%stx110047%_))
          (let* ((_%$e110054%_ _%rest110052%_)
                 (_%$E110056110069%_
                  (lambda ()
                    (let* ((_%$E110057110064%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e110054%_)))
                           (_%rest110067%_ _%$e110054%_))
                      (_%tail?110048%_ _%rest110067%_)))))
            (if (__AST-pair? _%$e110054%_)
                (let* ((_%$tgt110058110072%_ (__AST-e _%$e110054%_))
                       (_%$hd110059110075%_ (##car _%$tgt110058110072%_))
                       (_%$tl110060110078%_ (##cdr _%$tgt110058110072%_))
                       (_%hd110082%_ _%$hd110059110075%_)
                       (_%rest110084%_ _%$tl110060110078%_))
                  (if (__AST-id? _%hd110082%_)
                      (_%lp110050%_ _%rest110084%_)
                      '#f))
                (_%$E110056110069%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx110089%_)
        (let ((_%tail?110091%_ __AST-null?))
          (__AST-id-list?__% _%stx110089%_ _%tail?110091%_))))
    (define __AST-id-list?
      (lambda _g110498_
        (let ((_g110497_ (##length _g110498_)))
          (cond ((##fx= _g110497_ 1) (apply __AST-id-list?__0 _g110498_))
                ((##fx= _g110497_ 2) (apply __AST-id-list?__% _g110498_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g110498_))))))
    (define __AST-bind-list?
      (lambda (_%stx110039%_)
        (__AST-id-list?__%
         _%stx110039%_
         (lambda (_%e110041%_)
           (let ((_%$e110043%_ (__AST-null? _%e110041%_)))
             (if _%$e110043%_ _%$e110043%_ (__AST-id? _%e110041%_)))))))
    (define __AST-list?__%
      (lambda (_%stx109992%_ _%tail?109993%_)
        (let _%lp109995%_ ((_%rest109997%_ _%stx109992%_))
          (let* ((_%$e109999%_ _%rest109997%_)
                 (_%$E110001110014%_
                  (lambda ()
                    (let* ((_%$E110002110009%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e109999%_)))
                           (_%rest110012%_ _%$e109999%_))
                      (_%tail?109993%_ _%rest110012%_)))))
            (if (__AST-pair? _%$e109999%_)
                (let* ((_%$tgt110003110017%_ (__AST-e _%$e109999%_))
                       (_%$hd110004110020%_ (##car _%$tgt110003110017%_))
                       (_%$tl110005110023%_ (##cdr _%$tgt110003110017%_))
                       (_%rest110027%_ _%$tl110005110023%_))
                  (_%lp109995%_ _%rest110027%_))
                (_%$E110001110014%_))))))
    (define __AST-list?__0
      (lambda (_%stx110032%_)
        (let ((_%tail?110034%_ __AST-null?))
          (__AST-list?__% _%stx110032%_ _%tail?110034%_))))
    (define __AST-list?
      (lambda _g110500_
        (let ((_g110499_ (##length _g110500_)))
          (cond ((##fx= _g110499_ 1) (apply __AST-list?__0 _g110500_))
                ((##fx= _g110499_ 2) (apply __AST-list?__% _g110500_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g110500_))))))
    (define __AST->list
      (lambda (_%stx109957%_)
        (let* ((_%$e109959%_ _%stx109957%_)
               (_%$E109961109974%_
                (lambda ()
                  (let* ((_%$E109962109969%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e109959%_)))
                         (_%rest109972%_ _%$e109959%_))
                    (__AST-e _%rest109972%_)))))
          (if (__AST-pair? _%$e109959%_)
              (let* ((_%$tgt109963109977%_ (__AST-e _%$e109959%_))
                     (_%$hd109964109980%_ (##car _%$tgt109963109977%_))
                     (_%$tl109965109983%_ (##cdr _%$tgt109963109977%_))
                     (_%hd109987%_ _%$hd109964109980%_)
                     (_%rest109989%_ _%$tl109965109983%_))
                (cons _%hd109987%_ (__AST->list _%rest109989%_)))
              (_%$E109961109974%_)))))
    (define __AST->datum
      (lambda (_%stx109950%_)
        (if (##structure-instance-of? _%stx109950%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx109950%_))
            (if (pair? _%stx109950%_)
                (cons (__AST->datum (##car _%stx109950%_))
                      (__AST->datum (##cdr _%stx109950%_)))
                (if (vector? _%stx109950%_)
                    (vector-map __AST->datum _%stx109950%_)
                    (if (box? _%stx109950%_)
                        (box (__AST->datum (unbox _%stx109950%_)))
                        _%stx109950%_))))))
    (define get-readenv
      (lambda (_%port109948%_)
        (##make-readenv
         _%port109948%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in109936%_)
        (let ((_%e109938%_ (##read-datum-or-eof (get-readenv _%in109936%_))))
          (if (eof-object? (__AST-e _%e109938%_))
              (__AST-e _%e109938%_)
              _%e109938%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in109944%_ (current-input-port)))
          (read-syntax__% _%in109944%_))))
    (define read-syntax
      (lambda _g110502_
        (let ((_g110501_ (##length _g110502_)))
          (cond ((##fx= _g110501_ 0) (apply read-syntax__0 _g110502_))
                ((##fx= _g110501_ 1) (apply read-syntax__% _g110502_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g110502_))))))
    (define read-syntax-from-file
      (lambda (_%path109931%_)
        (let ((_%r109933%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path109931%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r109933%_)
              (cdr (__AST-e (vector-ref _%r109933%_ '1)))
              (error (err-code->string _%r109933%_) _%path109931%_)))))
    (define __wrap-syntax
      (lambda (_%re109928%_ _%e109929%_)
        (if (eof-object? _%e109929%_)
            _%e109929%_
            (##structure AST::t _%e109929%_ (##readenv->locat _%re109928%_)))))
    (define __unwrap-syntax
      (lambda (_%re109925%_ _%e109926%_) (__AST-e _%e109926%_)))
    (define __pp-syntax
      (lambda (_%stx109923%_) (pp (__AST->datum _%stx109923%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt109921%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt109921%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt109921%_ '@list)
          (macro-readtable-brace-handler-set! _%rt109921%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt109921%_
           '#\!
           __read-sharp-bang)
          _%rt109921%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt109917%_ _%kw109918%_)
        (macro-readtable-bracket-handler-set! _%rt109917%_ _%kw109918%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt109914%_ _%kw109915%_)
        (macro-readtable-brace-handler-set! _%rt109914%_ _%kw109915%_)))
    (define __read-sharp-bang
      (lambda (_%re109905%_ _%next109906%_ _%start-pos109907%_)
        (if (eq? _%start-pos109907%_ '0)
            (let* ((_%line109909%_
                    (##read-line
                     (macro-readenv-port _%re109905%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line109911%_
                    (substring
                     _%line109909%_
                     '1
                     (string-length _%line109909%_))))
              (macro-readenv-script-line-set!
               _%re109905%_
               _%script-line109911%_)
              (##script-marker))
            (##read-sharp-bang
             _%re109905%_
             _%next109906%_
             _%start-pos109907%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj109903%_)
        (if (source-location? _%obj109903%_)
            (string? (##locat-container _%obj109903%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj109901%_)
        (if (##locat? _%obj109901%_)
            (##container->path (##locat-container _%obj109901%_))
            '#f)))))

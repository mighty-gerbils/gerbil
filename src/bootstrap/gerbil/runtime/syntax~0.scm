(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1784471380)
  (begin
    (declare (not safe))
    (define SyntaxError::t
      (__make-class-type
       'SyntaxError::t
       'SyntaxError
       (list Exception::t StackTrace::t)
       '(message irritants where context phi marks)
       (cons (cons 'final: '#t) '())
       '#f))
    (define SyntaxError? (__make-class-predicate SyntaxError::t))
    (define make-SyntaxError
      (lambda _%$args175178%_
        (apply make-instance SyntaxError::t _%$args175178%_)))
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
      (lambda (_%self174897%_ _%port174898%_)
        (let ((_%self174901%_ _%self174897%_))
          (letrec ((_%location174912%_
                    (lambda ()
                      (letrec ((_%from-irritants175053%_
                                (lambda ()
                                  (let _%lp175138%_ ((_%rest175140%_
                                                      (##unchecked-structure-ref
                                                       _%self174901%_
                                                       '3
                                                       '#f
                                                       '#f)))
                                    (let* ((_%$%rest175141175149%_
                                            _%rest175140%_)
                                           (_%$%else175143175157%_
                                            (lambda () '#f))
                                           (_%$%K175145175166%_
                                            (lambda (_%rest175160%_
                                                     _%hd175161%_)
                                              (let ((_%$e175163%_
                                                     (__AST-source
                                                      _%hd175161%_)))
                                                (if _%$e175163%_
                                                    _%$e175163%_
                                                    (_%lp175138%_
                                                     _%rest175160%_))))))
                                      (if (pair? _%$%rest175141175149%_)
                                          (let ((_%$%hd175146175169%_
                                                 (##car _%$%rest175141175149%_))
                                                (_%$%tl175147175171%_
                                                 (##cdr _%$%rest175141175149%_)))
                                            (let* ((_%hd175174%_
                                                    _%$%hd175146175169%_)
                                                   (_%rest175176%_
                                                    _%$%tl175147175171%_))
                                              (_%$%K175145175166%_
                                               _%rest175176%_
                                               _%hd175174%_)))
                                          (_%$%else175143175157%_))))))
                               (_%from-context175054%_
                                (lambda ()
                                  (let _%lp175060%_ ((_%rest175062%_
                                                      (##unchecked-structure-ref
                                                       _%self174901%_
                                                       '4
                                                       '#f
                                                       '#f)))
                                    (let* ((_%$%rest175063175071%_
                                            _%rest175062%_)
                                           (_%$%else175065175079%_
                                            (lambda () '#f))
                                           (_%$%K175067175125%_
                                            (lambda (_%rest175082%_
                                                     _%hd175083%_)
                                              (let* ((_%$%hd175084175094%_
                                                      _%hd175083%_)
                                                     (_%$%else175086175102%_
                                                      (lambda ()
                                                        (_%lp175060%_
                                                         _%rest175082%_)))
                                                     (_%$%K175088175110%_
                                                      (lambda (_%loc175105%_)
                                                        (let ((_%$e175107%_
                                                               (__AST-source
                                                                _%loc175105%_)))
                                                          (if _%$e175107%_
                                                              _%$e175107%_
                                                              (_%lp175060%_
                                                               _%rest175082%_))))))
                                                (if (pair? _%$%hd175084175094%_)
                                                    (let ((_%$%hd175089175113%_
                                                           (##car _%$%hd175084175094%_))
                                                          (_%$%tl175090175115%_
                                                           (##cdr _%$%hd175084175094%_)))
                                                      (if (##eq? _%$%hd175089175113%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '@)
                  (if (pair? _%$%tl175090175115%_)
                      (let ((_%$%hd175091175118%_ (##car _%$%tl175090175115%_))
                            (_%$%tl175092175120%_
                             (##cdr _%$%tl175090175115%_)))
                        (let ((_%loc175123%_ _%$%hd175091175118%_))
                          (if (null? _%$%tl175092175120%_)
                              (_%$%K175088175110%_ _%loc175123%_)
                              (_%$%else175086175102%_))))
                      (_%$%else175086175102%_))
                  (_%$%else175086175102%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else175086175102%_))))))
                                      (if (pair? _%$%rest175063175071%_)
                                          (let ((_%$%hd175068175128%_
                                                 (##car _%$%rest175063175071%_))
                                                (_%$%tl175069175130%_
                                                 (##cdr _%$%rest175063175071%_)))
                                            (let* ((_%hd175133%_
                                                    _%$%hd175068175128%_)
                                                   (_%rest175135%_
                                                    _%$%tl175069175130%_))
                                              (_%$%K175067175125%_
                                               _%rest175135%_
                                               _%hd175133%_)))
                                          (_%$%else175065175079%_)))))))
                        (let ((_%$e175056%_ (_%from-irritants175053%_)))
                          (if _%$e175056%_
                              _%$e175056%_
                              (_%from-context175054%_)))))))
            (call-with-parameters__1
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e174915%_ (_%location174912%_)))
                 (if _%$e174915%_
                     (##display-locat _%$e174915%_ '#t _%port174898%_)
                     (display '"?")))
               (newline)
               (displayln
                '"--- Syntax Error: "
                (##unchecked-structure-ref _%self174901%_ '2 '#f '#f))
               (let ((_%$e174921%_
                      (##unchecked-structure-ref _%self174901%_ '4 '#f '#f)))
                 (if _%$e174921%_
                     (let ()
                       (displayln '"--- Context: ")
                       (let _%lp174926%_ ((_%rest174928%_ _%$e174921%_))
                         (let* ((_%$%rest174929174937%_ _%rest174928%_)
                                (_%$%else174931174945%_ (lambda () '#!void))
                                (_%$%K174933174995%_
                                 (lambda (_%rest174948%_ _%hd174949%_)
                                   (let* ((_%$%hd174950174960%_ _%hd174949%_)
                                          (_%$%else174952174968%_
                                           (lambda ()
                                             (displayln '" at " _%hd174949%_)
                                             (_%lp174926%_ _%rest174948%_)))
                                          (_%$%K174954174980%_
                                           (lambda (_%ctx174971%_)
                                             (let ((_%$e174973%_
                                                    (__AST-source
                                                     _%ctx174971%_)))
                                               (if _%$e174973%_
                                                   (let ()
                                                     (display '" at ")
                                                     (##display-locat
                                                      _%$e174973%_
                                                      '#t
                                                      _%port174898%_)
                                                     (newline)
                                                     (_%lp174926%_
                                                      _%rest174948%_))
                                                   (if (##structure-instance-of?
                                                        _%ctx174971%_
                                                        'gerbil#AST::t)
                                                       (let ()
                                                         (display '" at ")
                                                         (__pp-syntax
                                                          _%ctx174971%_)
                                                         (_%lp174926%_
                                                          _%rest174948%_))
                                                       (_%lp174926%_
                                                        _%rest174948%_)))))))
                                     (if (pair? _%$%hd174950174960%_)
                                         (let ((_%$%hd174955174983%_
                                                (##car _%$%hd174950174960%_))
                                               (_%$%tl174956174985%_
                                                (##cdr _%$%hd174950174960%_)))
                                           (if (##eq? _%$%hd174955174983%_ '@)
                                               (if (pair? _%$%tl174956174985%_)
                                                   (let ((_%$%hd174957174988%_
                                                          (##car _%$%tl174956174985%_))
                                                         (_%$%tl174958174990%_
                                                          (##cdr _%$%tl174956174985%_)))
                                                     (let ((_%ctx174993%_
                                                            _%$%hd174957174988%_))
                                                       (if (null? _%$%tl174958174990%_)
                                                           (_%$%K174954174980%_
                                                            _%ctx174993%_)
                                                           (_%$%else174952174968%_))))
                                                   (_%$%else174952174968%_))
                                               (_%$%else174952174968%_)))
                                         (_%$%else174952174968%_))))))
                           (if (pair? _%$%rest174929174937%_)
                               (let ((_%$%hd174934174998%_
                                      (##car _%$%rest174929174937%_))
                                     (_%$%tl174935175000%_
                                      (##cdr _%$%rest174929174937%_)))
                                 (let* ((_%hd175003%_ _%$%hd174934174998%_)
                                        (_%rest175005%_ _%$%tl174935175000%_))
                                   (_%$%K174933174995%_
                                    _%rest175005%_
                                    _%hd175003%_)))
                               '#!void))))
                     '#!void))
               (let* ((_%$%self.irritants175006175014%_
                       (##unchecked-structure-ref _%self174901%_ '3 '#f '#f))
                      (_%$%else175008175022%_ (lambda () '#!void))
                      (_%$%K175010175035%_
                       (lambda (_%rest175025%_ _%stx175026%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx175026%_)
                         (for-each
                          (lambda (_%detail175028%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail175028%_))
                            (let ((_%$e175030%_
                                   (__AST-source _%detail175028%_)))
                              (if _%$e175030%_
                                  (let ()
                                    (display '" at ")
                                    (##display-locat
                                     _%$e175030%_
                                     '#t
                                     _%port174898%_))
                                  '#!void))
                            (newline))
                          _%rest175025%_))))
                 (if (pair? _%$%self.irritants175006175014%_)
                     (let ((_%$%hd175011175038%_
                            (##car _%$%self.irritants175006175014%_))
                           (_%$%tl175012175040%_
                            (##cdr _%$%self.irritants175006175014%_)))
                       (let* ((_%stx175043%_ _%$%hd175011175038%_)
                              (_%rest175045%_ _%$%tl175012175040%_))
                         (_%$%K175010175035%_ _%rest175045%_ _%stx175043%_)))
                     '#!void))
               (if __DEBUG
                   (let ((_%$%cont175046175048%_
                          (##unchecked-structure-ref
                           _%self174901%_
                           '1
                           '#f
                           '#f)))
                     (if _%$%cont175046175048%_
                         (let ((_%cont175050%_ _%$%cont175046175048%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont175050%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port174898%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (let* ((_%klass174760%_ SyntaxError::t) (_%klass174765%_ _%klass174760%_))
      (__seal-class! _%klass174765%_))
    (define make-syntax-error
      (lambda (_%message174753%_
               _%irritants174754%_
               _%where174755%_
               _%context174756%_
               _%marks174757%_
               _%phi174758%_)
        (let ((__obj175275
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj175275 _%message174753%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj175275
           _%irritants174754%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj175275 _%where174755%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj175275 _%context174756%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj175275 _%marks174757%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj175275 _%phi174758%_ '6 '#f '#f)
          __obj175275)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where174748%_
               _%message174749%_
               _%stx174750%_
               .
               _%details174751%_)
        (raise (make-syntax-error
                _%message174749%_
                (cons _%stx174750%_ _%details174751%_)
                _%where174748%_
                '#f
                '#f
                '#f))))
    (define AST::t
      (__make-class-type
       'gerbil#AST::t
       'syntax
       (list)
       '(e source)
       (cons (cons 'struct: '#t) '((print: e)))
       '#f))
    (define AST? (__make-class-predicate AST::t))
    (define make-AST
      (lambda _%$args174745%_ (apply make-instance AST::t _%$args174745%_)))
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
      (lambda (_%stx174743%_)
        (if (##structure-instance-of? _%stx174743%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx174743%_ '1 '#f '#f)
            _%stx174743%_)))
    (define __AST-source
      (lambda (_%stx174734%_)
        (let _%lp174736%_ ((_%src174738%_ _%stx174734%_))
          (if (##structure-instance-of? _%src174738%_ 'gerbil#AST::t)
              (_%lp174736%_
               (##unchecked-structure-ref _%src174738%_ '2 '#f '#f))
              (if (##locat? _%src174738%_) _%src174738%_ '#f)))))
    (define __AST
      (lambda (_%e174726%_ _%src-stx174727%_)
        (let ((_%src174729%_ (__AST-source _%src-stx174727%_)))
          (if (or (##structure-instance-of? _%e174726%_ 'gerbil#AST::t)
                  (not _%src174729%_))
              _%e174726%_
              (##structure AST::t _%e174726%_ _%src174729%_)))))
    (define __AST-eq?
      (lambda (_%stx174723%_ _%obj174724%_)
        (eq? (__AST-e _%stx174723%_) _%obj174724%_)))
    (define __AST-pair?
      (lambda (_%stx174721%_) (pair? (__AST-e _%stx174721%_))))
    (define __AST-null?
      (lambda (_%stx174719%_) (null? (__AST-e _%stx174719%_))))
    (define __AST-datum?
      (lambda (_%stx174700%_)
        (let* ((_%e174702%_ (__AST-e _%stx174700%_))
               (_%$e174704%_ (number? _%e174702%_)))
          (if _%$e174704%_
              _%$e174704%_
              (let ((_%$e174707%_ (string? _%e174702%_)))
                (if _%$e174707%_
                    _%$e174707%_
                    (let ((_%$e174710%_ (char? _%e174702%_)))
                      (if _%$e174710%_
                          _%$e174710%_
                          (let ((_%$e174713%_ (keyword? _%e174702%_)))
                            (if _%$e174713%_
                                _%$e174713%_
                                (let ((_%$e174716%_ (boolean? _%e174702%_)))
                                  (if _%$e174716%_
                                      _%$e174716%_
                                      (eq? _%e174702%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx174698%_) (symbol? (__AST-e _%stx174698%_))))
    (define __AST-id-list?__%
      (lambda (_%stx174649%_ _%tail?174650%_)
        (let _%lp174652%_ ((_%rest174654%_ _%stx174649%_))
          (let* ((_%$e174656%_ _%rest174654%_)
                 (_%$%$E174658174671%_
                  (lambda ()
                    (let* ((_%$%$E174659174666%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e174656%_)))
                           (_%rest174669%_ _%$e174656%_))
                      (_%tail?174650%_ _%rest174669%_)))))
            (if (__AST-pair? _%$e174656%_)
                (let* ((_%$%$tgt174660174674%_ (__AST-e _%$e174656%_))
                       (_%$%$hd174661174677%_ (##car _%$%$tgt174660174674%_))
                       (_%$%$tl174662174680%_ (##cdr _%$%$tgt174660174674%_))
                       (_%hd174684%_ _%$%$hd174661174677%_)
                       (_%rest174686%_ _%$%$tl174662174680%_))
                  (if (__AST-id? _%hd174684%_)
                      (_%lp174652%_ _%rest174686%_)
                      '#f))
                (_%$%$E174658174671%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx174691%_)
        (let ((_%tail?174693%_ __AST-null?))
          (__AST-id-list?__% _%stx174691%_ _%tail?174693%_))))
    (define __AST-id-list?
      (lambda _g175277_
        (let ((_g175278_ (##length _g175277_)))
          (cond ((##fx= _g175278_ 1) (apply __AST-id-list?__0 _g175277_))
                ((##fx= _g175278_ 2) (apply __AST-id-list?__% _g175277_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g175277_))))))
    (define __AST-bind-list?
      (lambda (_%stx174641%_)
        (__AST-id-list?__%
         _%stx174641%_
         (lambda (_%e174643%_)
           (let ((_%$e174645%_ (__AST-null? _%e174643%_)))
             (if _%$e174645%_ _%$e174645%_ (__AST-id? _%e174643%_)))))))
    (define __AST-list?__%
      (lambda (_%stx174594%_ _%tail?174595%_)
        (let _%lp174597%_ ((_%rest174599%_ _%stx174594%_))
          (let* ((_%$e174601%_ _%rest174599%_)
                 (_%$%$E174603174616%_
                  (lambda ()
                    (let* ((_%$%$E174604174611%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e174601%_)))
                           (_%rest174614%_ _%$e174601%_))
                      (_%tail?174595%_ _%rest174614%_)))))
            (if (__AST-pair? _%$e174601%_)
                (let* ((_%$%$tgt174605174619%_ (__AST-e _%$e174601%_))
                       (_%$%$hd174606174622%_ (##car _%$%$tgt174605174619%_))
                       (_%$%$tl174607174625%_ (##cdr _%$%$tgt174605174619%_))
                       (_%rest174629%_ _%$%$tl174607174625%_))
                  (_%lp174597%_ _%rest174629%_))
                (_%$%$E174603174616%_))))))
    (define __AST-list?__0
      (lambda (_%stx174634%_)
        (let ((_%tail?174636%_ __AST-null?))
          (__AST-list?__% _%stx174634%_ _%tail?174636%_))))
    (define __AST-list?
      (lambda _g175279_
        (let ((_g175280_ (##length _g175279_)))
          (cond ((##fx= _g175280_ 1) (apply __AST-list?__0 _g175279_))
                ((##fx= _g175280_ 2) (apply __AST-list?__% _g175279_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g175279_))))))
    (define __AST->list
      (lambda (_%stx174559%_)
        (let* ((_%$e174561%_ _%stx174559%_)
               (_%$%$E174563174576%_
                (lambda ()
                  (let* ((_%$%$E174564174571%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e174561%_)))
                         (_%rest174574%_ _%$e174561%_))
                    (__AST-e _%rest174574%_)))))
          (if (__AST-pair? _%$e174561%_)
              (let* ((_%$%$tgt174565174579%_ (__AST-e _%$e174561%_))
                     (_%$%$hd174566174582%_ (##car _%$%$tgt174565174579%_))
                     (_%$%$tl174567174585%_ (##cdr _%$%$tgt174565174579%_))
                     (_%hd174589%_ _%$%$hd174566174582%_)
                     (_%rest174591%_ _%$%$tl174567174585%_))
                (cons _%hd174589%_ (__AST->list _%rest174591%_)))
              (_%$%$E174563174576%_)))))
    (define __AST->datum
      (lambda (_%stx174552%_)
        (if (##structure-instance-of? _%stx174552%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx174552%_))
            (if (pair? _%stx174552%_)
                (cons (__AST->datum (##car _%stx174552%_))
                      (__AST->datum (##cdr _%stx174552%_)))
                (if (vector? _%stx174552%_)
                    (vector-map __AST->datum _%stx174552%_)
                    (if (box? _%stx174552%_)
                        (box (__AST->datum (unbox _%stx174552%_)))
                        _%stx174552%_))))))
    (define get-readenv
      (lambda (_%port174550%_)
        (##make-readenv
         _%port174550%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in174538%_)
        (let ((_%e174540%_ (##read-datum-or-eof (get-readenv _%in174538%_))))
          (if (eof-object? (__AST-e _%e174540%_))
              (__AST-e _%e174540%_)
              _%e174540%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in174546%_ (current-input-port)))
          (read-syntax__% _%in174546%_))))
    (define read-syntax
      (lambda _g175281_
        (let ((_g175282_ (##length _g175281_)))
          (cond ((##fx= _g175282_ 0) (apply read-syntax__0 _g175281_))
                ((##fx= _g175282_ 1) (apply read-syntax__% _g175281_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g175281_))))))
    (define read-syntax-from-file
      (lambda (_%path174533%_)
        (let ((_%r174535%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path174533%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r174535%_)
              (cdr (__AST-e (vector-ref _%r174535%_ '1)))
              (error (err-code->string _%r174535%_) _%path174533%_)))))
    (define __wrap-syntax
      (lambda (_%re174530%_ _%e174531%_)
        (if (eof-object? _%e174531%_)
            _%e174531%_
            (##structure AST::t _%e174531%_ (##readenv->locat _%re174530%_)))))
    (define __unwrap-syntax
      (lambda (_%re174527%_ _%e174528%_) (__AST-e _%e174528%_)))
    (define __pp-syntax
      (lambda (_%stx174525%_) (pp (__AST->datum _%stx174525%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt174523%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt174523%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt174523%_ '@list)
          (macro-readtable-brace-handler-set! _%rt174523%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt174523%_
           '#\!
           __read-sharp-bang)
          _%rt174523%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt174519%_ _%kw174520%_)
        (macro-readtable-bracket-handler-set! _%rt174519%_ _%kw174520%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt174516%_ _%kw174517%_)
        (macro-readtable-brace-handler-set! _%rt174516%_ _%kw174517%_)))
    (define __read-sharp-bang
      (lambda (_%re174507%_ _%next174508%_ _%start-pos174509%_)
        (if (eq? _%start-pos174509%_ '0)
            (let* ((_%line174511%_
                    (##read-line
                     (macro-readenv-port _%re174507%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line174513%_
                    (substring
                     _%line174511%_
                     '1
                     (string-length _%line174511%_))))
              (macro-readenv-script-line-set!
               _%re174507%_
               _%script-line174513%_)
              (##script-marker))
            (##read-sharp-bang
             _%re174507%_
             _%next174508%_
             _%start-pos174509%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj174505%_)
        (if (source-location? _%obj174505%_)
            (string? (##locat-container _%obj174505%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj174503%_)
        (if (##locat? _%obj174503%_)
            (##container->path (##locat-container _%obj174503%_))
            '#f)))))

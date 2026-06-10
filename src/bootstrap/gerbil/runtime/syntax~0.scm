(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1781119044)
  (begin
    (declare (not safe))
    (define SyntaxError::t
      (make-class-type
       'SyntaxError::t
       'SyntaxError
       (list Exception::t StackTrace::t)
       '(message irritants where context phi marks)
       (cons (cons 'final: '#t) '())
       '#f))
    (define SyntaxError? (make-class-predicate SyntaxError::t))
    (define make-SyntaxError
      (lambda _%$args146649%_
        (apply make-instance SyntaxError::t _%$args146649%_)))
    (define SyntaxError-message
      (make-class-slot-accessor SyntaxError::t 'message))
    (define SyntaxError-irritants
      (make-class-slot-accessor SyntaxError::t 'irritants))
    (define SyntaxError-where (make-class-slot-accessor SyntaxError::t 'where))
    (define SyntaxError-context
      (make-class-slot-accessor SyntaxError::t 'context))
    (define SyntaxError-phi (make-class-slot-accessor SyntaxError::t 'phi))
    (define SyntaxError-marks (make-class-slot-accessor SyntaxError::t 'marks))
    (define SyntaxError-continuation
      (make-class-slot-accessor SyntaxError::t 'continuation))
    (define SyntaxError-message-set!
      (make-class-slot-mutator SyntaxError::t 'message))
    (define SyntaxError-irritants-set!
      (make-class-slot-mutator SyntaxError::t 'irritants))
    (define SyntaxError-where-set!
      (make-class-slot-mutator SyntaxError::t 'where))
    (define SyntaxError-context-set!
      (make-class-slot-mutator SyntaxError::t 'context))
    (define SyntaxError-phi-set! (make-class-slot-mutator SyntaxError::t 'phi))
    (define SyntaxError-marks-set!
      (make-class-slot-mutator SyntaxError::t 'marks))
    (define SyntaxError-continuation-set!
      (make-class-slot-mutator SyntaxError::t 'continuation))
    (define &SyntaxError-message
      (make-class-slot-unchecked-accessor SyntaxError::t 'message))
    (define &SyntaxError-irritants
      (make-class-slot-unchecked-accessor SyntaxError::t 'irritants))
    (define &SyntaxError-where
      (make-class-slot-unchecked-accessor SyntaxError::t 'where))
    (define &SyntaxError-context
      (make-class-slot-unchecked-accessor SyntaxError::t 'context))
    (define &SyntaxError-phi
      (make-class-slot-unchecked-accessor SyntaxError::t 'phi))
    (define &SyntaxError-marks
      (make-class-slot-unchecked-accessor SyntaxError::t 'marks))
    (define &SyntaxError-continuation
      (make-class-slot-unchecked-accessor SyntaxError::t 'continuation))
    (define &SyntaxError-message-set!
      (make-class-slot-unchecked-mutator SyntaxError::t 'message))
    (define &SyntaxError-irritants-set!
      (make-class-slot-unchecked-mutator SyntaxError::t 'irritants))
    (define &SyntaxError-where-set!
      (make-class-slot-unchecked-mutator SyntaxError::t 'where))
    (define &SyntaxError-context-set!
      (make-class-slot-unchecked-mutator SyntaxError::t 'context))
    (define &SyntaxError-phi-set!
      (make-class-slot-unchecked-mutator SyntaxError::t 'phi))
    (define &SyntaxError-marks-set!
      (make-class-slot-unchecked-mutator SyntaxError::t 'marks))
    (define &SyntaxError-continuation-set!
      (make-class-slot-unchecked-mutator SyntaxError::t 'continuation))
    (define SyntaxError::display-exception
      (lambda (_%self146368%_ _%port146369%_)
        (let ((_%self146372%_ _%self146368%_))
          (letrec ((_%location146383%_
                    (lambda ()
                      (letrec ((_%from-irritants146524%_
                                (lambda ()
                                  (let _%lp146609%_ ((_%rest146611%_
                                                      (&SyntaxError-irritants
                                                       _%self146372%_)))
                                    (let* ((_%$%rest146612146620%_
                                            _%rest146611%_)
                                           (_%$%E146615146624%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%$%rest146612146620%_
                                                     '([hd . rest])
                                                     'else)
                                              (void)))
                                           (_%$%else146614146628%_
                                            (lambda () '#f))
                                           (_%$%K146616146637%_
                                            (lambda (_%rest146631%_
                                                     _%hd146632%_)
                                              (let ((_%$e146634%_
                                                     (__AST-source
                                                      _%hd146632%_)))
                                                (if _%$e146634%_
                                                    _%$e146634%_
                                                    (_%lp146609%_
                                                     _%rest146631%_))))))
                                      (if (pair? _%$%rest146612146620%_)
                                          (let ((_%$%hd146617146640%_
                                                 (##car _%$%rest146612146620%_))
                                                (_%$%tl146618146642%_
                                                 (##cdr _%$%rest146612146620%_)))
                                            (let* ((_%hd146645%_
                                                    _%$%hd146617146640%_)
                                                   (_%rest146647%_
                                                    _%$%tl146618146642%_))
                                              (_%$%K146616146637%_
                                               _%rest146647%_
                                               _%hd146645%_)))
                                          (_%$%else146614146628%_))))))
                               (_%from-context146525%_
                                (lambda ()
                                  (let _%lp146531%_ ((_%rest146533%_
                                                      (&SyntaxError-where
                                                       _%self146372%_)))
                                    (let* ((_%$%rest146534146542%_
                                            _%rest146533%_)
                                           (_%$%E146537146546%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%$%rest146534146542%_
                                                     '([hd . rest])
                                                     'else)
                                              (void)))
                                           (_%$%else146536146550%_
                                            (lambda () '#f))
                                           (_%$%K146538146596%_
                                            (lambda (_%rest146553%_
                                                     _%hd146554%_)
                                              (let* ((_%$%hd146555146565%_
                                                      _%hd146554%_)
                                                     (_%$%E146558146569%_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _%$%hd146555146565%_
                                                               '(['@ loc])
                                                               'else)
                                                        (void)))
                                                     (_%$%else146557146573%_
                                                      (lambda ()
                                                        (_%lp146531%_
                                                         _%rest146553%_)))
                                                     (_%$%K146559146581%_
                                                      (lambda (_%loc146576%_)
                                                        (let ((_%$e146578%_
                                                               (__AST-source
                                                                _%loc146576%_)))
                                                          (if _%$e146578%_
                                                              _%$e146578%_
                                                              (_%lp146531%_
                                                               _%rest146553%_))))))
                                                (if (pair? _%$%hd146555146565%_)
                                                    (let ((_%$%hd146560146584%_
                                                           (##car _%$%hd146555146565%_))
                                                          (_%$%tl146561146586%_
                                                           (##cdr _%$%hd146555146565%_)))
                                                      (if (##eq? _%$%hd146560146584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '@)
                  (if (pair? _%$%tl146561146586%_)
                      (let ((_%$%hd146562146589%_ (##car _%$%tl146561146586%_))
                            (_%$%tl146563146591%_
                             (##cdr _%$%tl146561146586%_)))
                        (let ((_%loc146594%_ _%$%hd146562146589%_))
                          (if (null? _%$%tl146563146591%_)
                              (_%$%K146559146581%_ _%loc146594%_)
                              (_%$%else146557146573%_))))
                      (_%$%else146557146573%_))
                  (_%$%else146557146573%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else146557146573%_))))))
                                      (if (pair? _%$%rest146534146542%_)
                                          (let ((_%$%hd146539146599%_
                                                 (##car _%$%rest146534146542%_))
                                                (_%$%tl146540146601%_
                                                 (##cdr _%$%rest146534146542%_)))
                                            (let* ((_%hd146604%_
                                                    _%$%hd146539146599%_)
                                                   (_%rest146606%_
                                                    _%$%tl146540146601%_))
                                              (_%$%K146538146596%_
                                               _%rest146606%_
                                               _%hd146604%_)))
                                          (_%$%else146536146550%_)))))))
                        (let ((_%$e146527%_ (_%from-irritants146524%_)))
                          (if _%$e146527%_
                              _%$e146527%_
                              (_%from-context146525%_)))))))
            (call-with-parameters
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e146386%_ (_%location146383%_)))
                 (if _%$e146386%_
                     ((lambda (_%loc146389%_)
                        (##display-locat _%loc146389%_ '#t _%port146369%_))
                      _%$e146386%_)
                     (display '"?")))
               (newline)
               (displayln
                '"--- Syntax Error: "
                (&SyntaxError-message _%self146372%_))
               (let ((_%$e146392%_ (&SyntaxError-where _%self146372%_)))
                 (if _%$e146392%_
                     ((lambda (_%where146395%_)
                        (displayln '"--- Context: ")
                        (let _%lp146397%_ ((_%rest146399%_ _%where146395%_))
                          (let* ((_%$%rest146400146408%_ _%rest146399%_)
                                 (_%$%E146403146412%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%$%rest146400146408%_
                                           '([hd . rest])
                                           'else)
                                    (void)))
                                 (_%$%else146402146416%_ (lambda () (void)))
                                 (_%$%K146404146466%_
                                  (lambda (_%rest146419%_ _%hd146420%_)
                                    (let* ((_%$%hd146421146431%_ _%hd146420%_)
                                           (_%$%E146424146435%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%$%hd146421146431%_
                                                     '(['@ ctx])
                                                     'else)
                                              (void)))
                                           (_%$%else146423146439%_
                                            (lambda ()
                                              (displayln '" at " _%hd146420%_)
                                              (_%lp146397%_ _%rest146419%_)))
                                           (_%$%K146425146451%_
                                            (lambda (_%ctx146442%_)
                                              (let ((_%$e146444%_
                                                     (__AST-source
                                                      _%ctx146442%_)))
                                                (if _%$e146444%_
                                                    ((lambda (_%loc146447%_)
                                                       (display '" at ")
                                                       (##display-locat
                                                        _%loc146447%_
                                                        '#t
                                                        _%port146369%_)
                                                       (newline)
                                                       (_%lp146397%_
                                                        _%rest146419%_))
                                                     _%$e146444%_)
                                                    (if (AST? _%ctx146442%_)
                                                        (let ()
                                                          (display '" at ")
                                                          (__pp-syntax
                                                           _%ctx146442%_)
                                                          (_%lp146397%_
                                                           _%rest146419%_))
                                                        (_%lp146397%_
                                                         _%rest146419%_)))))))
                                      (if (pair? _%$%hd146421146431%_)
                                          (let ((_%$%hd146426146454%_
                                                 (##car _%$%hd146421146431%_))
                                                (_%$%tl146427146456%_
                                                 (##cdr _%$%hd146421146431%_)))
                                            (if (##eq? _%$%hd146426146454%_ '@)
                                                (if (pair? _%$%tl146427146456%_)
                                                    (let ((_%$%hd146428146459%_
                                                           (##car _%$%tl146427146456%_))
                                                          (_%$%tl146429146461%_
                                                           (##cdr _%$%tl146427146456%_)))
                                                      (let ((_%ctx146464%_
                                                             _%$%hd146428146459%_))
                                                        (if (null? _%$%tl146429146461%_)
                                                            (_%$%K146425146451%_
                                                             _%ctx146464%_)
                                                            (_%$%else146423146439%_))))
                                                    (_%$%else146423146439%_))
                                                (_%$%else146423146439%_)))
                                          (_%$%else146423146439%_))))))
                            (if (pair? _%$%rest146400146408%_)
                                (let ((_%$%hd146405146469%_
                                       (##car _%$%rest146400146408%_))
                                      (_%$%tl146406146471%_
                                       (##cdr _%$%rest146400146408%_)))
                                  (let* ((_%hd146474%_ _%$%hd146405146469%_)
                                         (_%rest146476%_ _%$%tl146406146471%_))
                                    (_%$%K146404146466%_
                                     _%rest146476%_
                                     _%hd146474%_)))
                                (_%$%else146402146416%_)))))
                      _%$e146392%_)
                     '#!void))
               (let* ((_%$%self.irritants146477146485%_
                       (&SyntaxError-irritants _%self146372%_))
                      (_%$%E146480146489%_
                       (lambda ()
                         (error '"No clause matching"
                                _%$%self.irritants146477146485%_
                                '([stx . rest])
                                'else)
                         (void)))
                      (_%$%else146479146493%_ (lambda () (void)))
                      (_%$%K146481146506%_
                       (lambda (_%rest146496%_ _%stx146497%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx146497%_)
                         (for-each
                          (lambda (_%detail146499%_)
                            (display '"... detail: ")
                            (write (__AST->datum _%detail146499%_))
                            (let ((_%$e146501%_
                                   (__AST-source _%detail146499%_)))
                              (if _%$e146501%_
                                  ((lambda (_%loc146504%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc146504%_
                                      '#t
                                      _%port146369%_))
                                   _%$e146501%_)
                                  '#!void))
                            (newline))
                          _%rest146496%_))))
                 (if (pair? _%$%self.irritants146477146485%_)
                     (let ((_%$%hd146482146509%_
                            (##car _%$%self.irritants146477146485%_))
                           (_%$%tl146483146511%_
                            (##cdr _%$%self.irritants146477146485%_)))
                       (let* ((_%stx146514%_ _%$%hd146482146509%_)
                              (_%rest146516%_ _%$%tl146483146511%_))
                         (_%$%K146481146506%_ _%rest146516%_ _%stx146514%_)))
                     (_%$%else146479146493%_)))
               (if __DEBUG
                   (let ((_%$%cont146517146519%_
                          (&SyntaxError-continuation _%self146372%_)))
                     (if _%$%cont146517146519%_
                         (let ((_%cont146521%_ _%$%cont146517146519%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont146521%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port146369%_)))))
    (bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (let ((_%klass146231%_ SyntaxError::t))
      (if (class-type? _%klass146231%_)
          (let ((_%klass146236%_ _%klass146231%_))
            (__seal-class! _%klass146236%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/syntax
             'contract:
             'class-type?
             'value:
             _%klass146231%_)
            (void))))
    (define make-syntax-error
      (lambda (_%message146224%_
               _%irritants146225%_
               _%where146226%_
               _%context146227%_
               _%marks146228%_
               _%phi146229%_)
        (make-SyntaxError
         'message:
         _%message146224%_
         'irritants:
         _%irritants146225%_
         'where:
         _%where146226%_
         'context:
         _%context146227%_
         'marks:
         _%marks146228%_
         'phi:
         _%phi146229%_)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where146219%_
               _%message146220%_
               _%stx146221%_
               .
               _%details146222%_)
        (raise (make-syntax-error
                _%message146220%_
                (cons _%stx146221%_ _%details146222%_)
                _%where146219%_
                '#f
                '#f
                '#f))))
    (define AST::t
      (make-class-type
       'gerbil#AST::t
       'syntax
       (list)
       '(e source)
       (cons (cons 'struct: '#t) '((print: e)))
       '#f))
    (define AST? (make-class-predicate AST::t))
    (define make-AST
      (lambda _%$args146216%_ (apply make-instance AST::t _%$args146216%_)))
    (define AST-e (make-class-slot-accessor AST::t 'e))
    (define AST-source (make-class-slot-accessor AST::t 'source))
    (define AST-e-set! (make-class-slot-mutator AST::t 'e))
    (define AST-source-set! (make-class-slot-mutator AST::t 'source))
    (define &AST-e (make-class-slot-unchecked-accessor AST::t 'e))
    (define &AST-source (make-class-slot-unchecked-accessor AST::t 'source))
    (define &AST-e-set! (make-class-slot-unchecked-mutator AST::t 'e))
    (define &AST-source-set!
      (make-class-slot-unchecked-mutator AST::t 'source))
    (define __AST-e
      (lambda (_%stx146214%_)
        (if (AST? _%stx146214%_) (&AST-e _%stx146214%_) _%stx146214%_)))
    (define __AST-source
      (lambda (_%stx146205%_)
        (let _%lp146207%_ ((_%src146209%_ _%stx146205%_))
          (if (AST? _%src146209%_)
              (_%lp146207%_ (&AST-source _%src146209%_))
              (if (##locat? _%src146209%_) _%src146209%_ '#f)))))
    (define __AST
      (lambda (_%e146197%_ _%src-stx146198%_)
        (let ((_%src146200%_ (__AST-source _%src-stx146198%_)))
          (if (or (AST? _%e146197%_) (not _%src146200%_))
              _%e146197%_
              (make-AST _%e146197%_ _%src146200%_)))))
    (define __AST-eq?
      (lambda (_%stx146194%_ _%obj146195%_)
        (eq? (__AST-e _%stx146194%_) _%obj146195%_)))
    (define __AST-pair?
      (lambda (_%stx146192%_) (pair? (__AST-e _%stx146192%_))))
    (define __AST-null?
      (lambda (_%stx146190%_) (null? (__AST-e _%stx146190%_))))
    (define __AST-datum?
      (lambda (_%stx146171%_)
        (let* ((_%e146173%_ (__AST-e _%stx146171%_))
               (_%$e146175%_ (number? _%e146173%_)))
          (if _%$e146175%_
              _%$e146175%_
              (let ((_%$e146178%_ (string? _%e146173%_)))
                (if _%$e146178%_
                    _%$e146178%_
                    (let ((_%$e146181%_ (char? _%e146173%_)))
                      (if _%$e146181%_
                          _%$e146181%_
                          (let ((_%$e146184%_ (keyword? _%e146173%_)))
                            (if _%$e146184%_
                                _%$e146184%_
                                (let ((_%$e146187%_ (boolean? _%e146173%_)))
                                  (if _%$e146187%_
                                      _%$e146187%_
                                      (eq? _%e146173%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx146169%_) (symbol? (__AST-e _%stx146169%_))))
    (define __AST-id-list?
      (let ((_%$%opt-lambda146118146159%_
             (lambda (_%stx146120%_ _%tail?146121%_)
               (let _%lp146123%_ ((_%rest146125%_ _%stx146120%_))
                 (let* ((_%$e146127%_ _%rest146125%_)
                        (_%$%$E146129146142%_
                         (lambda ()
                           (let* ((_%$%$E146130146137%_
                                   (lambda ()
                                     (__raise-syntax-error
                                      '#f
                                      '"Bad syntax; malformed ast clause"
                                      _%$e146127%_)))
                                  (_%rest146140%_ _%$e146127%_))
                             (_%tail?146121%_ _%rest146140%_)))))
                   (if (__AST-pair? _%$e146127%_)
                       (let* ((_%$%$tgt146131146145%_ (__AST-e _%$e146127%_))
                              (_%$%$hd146132146148%_
                               (##car _%$%$tgt146131146145%_))
                              (_%$%$tl146133146151%_
                               (##cdr _%$%$tgt146131146145%_))
                              (_%hd146155%_ _%$%$hd146132146148%_)
                              (_%rest146157%_ _%$%$tl146133146151%_))
                         (if (__AST-id? _%hd146155%_)
                             (_%lp146123%_ _%rest146157%_)
                             '#f))
                       (_%$%$E146129146142%_)))))))
        (lambda _g146651_
          (let ((_g146652_ (##length _g146651_)))
            (cond ((##fx= _g146652_ 1)
                   (apply (lambda (_%stx146162%_)
                            (let ((_%tail?146164%_ __AST-null?))
                              (_%$%opt-lambda146118146159%_
                               _%stx146162%_
                               _%tail?146164%_)))
                          _g146651_))
                  ((##fx= _g146652_ 2)
                   (apply _%$%opt-lambda146118146159%_ _g146651_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    __AST-id-list?
                    _g146651_)))))))
    (define __AST-bind-list?
      (lambda (_%stx146112%_)
        (__AST-id-list?
         _%stx146112%_
         (lambda (_%e146114%_)
           (let ((_%$e146116%_ (__AST-null? _%e146114%_)))
             (if _%$e146116%_ _%$e146116%_ (__AST-id? _%e146114%_)))))))
    (define __AST-list?
      (let ((_%$%opt-lambda146063146102%_
             (lambda (_%stx146065%_ _%tail?146066%_)
               (let _%lp146068%_ ((_%rest146070%_ _%stx146065%_))
                 (let* ((_%$e146072%_ _%rest146070%_)
                        (_%$%$E146074146087%_
                         (lambda ()
                           (let* ((_%$%$E146075146082%_
                                   (lambda ()
                                     (__raise-syntax-error
                                      '#f
                                      '"Bad syntax; malformed ast clause"
                                      _%$e146072%_)))
                                  (_%rest146085%_ _%$e146072%_))
                             (_%tail?146066%_ _%rest146085%_)))))
                   (if (__AST-pair? _%$e146072%_)
                       (let* ((_%$%$tgt146076146090%_ (__AST-e _%$e146072%_))
                              (_%$%$hd146077146093%_
                               (##car _%$%$tgt146076146090%_))
                              (_%$%$tl146078146096%_
                               (##cdr _%$%$tgt146076146090%_))
                              (_%rest146100%_ _%$%$tl146078146096%_))
                         (_%lp146068%_ _%rest146100%_))
                       (_%$%$E146074146087%_)))))))
        (lambda _g146653_
          (let ((_g146654_ (##length _g146653_)))
            (cond ((##fx= _g146654_ 1)
                   (apply (lambda (_%stx146105%_)
                            (let ((_%tail?146107%_ __AST-null?))
                              (_%$%opt-lambda146063146102%_
                               _%stx146105%_
                               _%tail?146107%_)))
                          _g146653_))
                  ((##fx= _g146654_ 2)
                   (apply _%$%opt-lambda146063146102%_ _g146653_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    __AST-list?
                    _g146653_)))))))
    (define __AST->list
      (lambda (_%stx146030%_)
        (let* ((_%$e146032%_ _%stx146030%_)
               (_%$%$E146034146047%_
                (lambda ()
                  (let* ((_%$%$E146035146042%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e146032%_)))
                         (_%rest146045%_ _%$e146032%_))
                    (__AST-e _%rest146045%_)))))
          (if (__AST-pair? _%$e146032%_)
              (let* ((_%$%$tgt146036146050%_ (__AST-e _%$e146032%_))
                     (_%$%$hd146037146053%_ (##car _%$%$tgt146036146050%_))
                     (_%$%$tl146038146056%_ (##cdr _%$%$tgt146036146050%_))
                     (_%hd146060%_ _%$%$hd146037146053%_)
                     (_%rest146062%_ _%$%$tl146038146056%_))
                (cons _%hd146060%_ (__AST->list _%rest146062%_)))
              (_%$%$E146034146047%_)))))
    (define __AST->datum
      (lambda (_%stx146023%_)
        (if (AST? _%stx146023%_)
            (__AST->datum (__AST-e _%stx146023%_))
            (if (pair? _%stx146023%_)
                (cons (__AST->datum (car _%stx146023%_))
                      (__AST->datum (cdr _%stx146023%_)))
                (if (vector? _%stx146023%_)
                    (vector-map __AST->datum _%stx146023%_)
                    (if (box? _%stx146023%_)
                        (box (__AST->datum (unbox _%stx146023%_)))
                        _%stx146023%_))))))
    (define get-readenv
      (lambda (_%port146021%_)
        (##make-readenv
         _%port146021%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax
      (let ((_%$%opt-lambda146007146013%_
             (lambda (_%in146009%_)
               (let ((_%e146011%_
                      (##read-datum-or-eof (get-readenv _%in146009%_))))
                 (if (eof-object? (__AST-e _%e146011%_))
                     (__AST-e _%e146011%_)
                     _%e146011%_)))))
        (lambda _g146655_
          (let ((_g146656_ (##length _g146655_)))
            (cond ((##fx= _g146656_ 0)
                   (apply (lambda ()
                            (let ((_%in146017%_ (current-input-port)))
                              (_%$%opt-lambda146007146013%_ _%in146017%_)))
                          _g146655_))
                  ((##fx= _g146656_ 1)
                   (apply _%$%opt-lambda146007146013%_ _g146655_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    read-syntax
                    _g146655_)))))))
    (define read-syntax-from-file
      (lambda (_%path146004%_)
        (let ((_%r146006%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path146004%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r146006%_)
              (cdr (__AST-e (vector-ref _%r146006%_ '1)))
              (error (err-code->string _%r146006%_) _%path146004%_)))))
    (define __wrap-syntax
      (lambda (_%re146001%_ _%e146002%_)
        (if (eof-object? _%e146002%_)
            _%e146002%_
            (make-AST _%e146002%_ (##readenv->locat _%re146001%_)))))
    (define __unwrap-syntax
      (lambda (_%re145998%_ _%e145999%_) (__AST-e _%e145999%_)))
    (define __pp-syntax
      (lambda (_%stx145996%_) (pp (__AST->datum _%stx145996%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt145994%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt145994%_ '#t)
          (__readtable-bracket-keyword-set! _%rt145994%_ '@list)
          (__readtable-brace-keyword-set! _%rt145994%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt145994%_
           '#\!
           __read-sharp-bang)
          _%rt145994%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt145990%_ _%kw145991%_)
        (macro-readtable-bracket-handler-set! _%rt145990%_ _%kw145991%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt145987%_ _%kw145988%_)
        (macro-readtable-brace-handler-set! _%rt145987%_ _%kw145988%_)))
    (define __read-sharp-bang
      (lambda (_%re145978%_ _%next145979%_ _%start-pos145980%_)
        (if (eq? _%start-pos145980%_ '0)
            (let* ((_%line145982%_
                    (##read-line
                     (macro-readenv-port _%re145978%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line145984%_
                    (substring
                     _%line145982%_
                     '1
                     (string-length _%line145982%_))))
              (macro-readenv-script-line-set!
               _%re145978%_
               _%script-line145984%_)
              (##script-marker))
            (##read-sharp-bang
             _%re145978%_
             _%next145979%_
             _%start-pos145980%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj145976%_)
        (if (source-location? _%obj145976%_)
            (string? (##locat-container _%obj145976%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj145974%_)
        (if (##locat? _%obj145974%_)
            (##container->path (##locat-container _%obj145974%_))
            '#f)))))

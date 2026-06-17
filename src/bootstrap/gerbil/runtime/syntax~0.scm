(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1781697561)
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
      (lambda _%$args170982%_
        (apply make-instance SyntaxError::t _%$args170982%_)))
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
      (lambda (_%self170701%_ _%port170702%_)
        (let ((_%self170705%_ _%self170701%_))
          (letrec ((_%location170716%_
                    (lambda ()
                      (letrec ((_%from-irritants170857%_
                                (lambda ()
                                  (let _%lp170942%_ ((_%rest170944%_
                                                      (##unchecked-structure-ref
                                                       _%self170705%_
                                                       '3
                                                       '#f
                                                       '#f)))
                                    (let* ((_%$%rest170945170953%_
                                            _%rest170944%_)
                                           (_%$%else170947170961%_
                                            (lambda () '#f))
                                           (_%$%K170949170970%_
                                            (lambda (_%rest170964%_
                                                     _%hd170965%_)
                                              (let ((_%$e170967%_
                                                     (__AST-source
                                                      _%hd170965%_)))
                                                (if _%$e170967%_
                                                    _%$e170967%_
                                                    (_%lp170942%_
                                                     _%rest170964%_))))))
                                      (if (pair? _%$%rest170945170953%_)
                                          (let ((_%$%hd170950170973%_
                                                 (##car _%$%rest170945170953%_))
                                                (_%$%tl170951170975%_
                                                 (##cdr _%$%rest170945170953%_)))
                                            (let* ((_%hd170978%_
                                                    _%$%hd170950170973%_)
                                                   (_%rest170980%_
                                                    _%$%tl170951170975%_))
                                              (_%$%K170949170970%_
                                               _%rest170980%_
                                               _%hd170978%_)))
                                          (_%$%else170947170961%_))))))
                               (_%from-context170858%_
                                (lambda ()
                                  (let _%lp170864%_ ((_%rest170866%_
                                                      (##unchecked-structure-ref
                                                       _%self170705%_
                                                       '4
                                                       '#f
                                                       '#f)))
                                    (let* ((_%$%rest170867170875%_
                                            _%rest170866%_)
                                           (_%$%else170869170883%_
                                            (lambda () '#f))
                                           (_%$%K170871170929%_
                                            (lambda (_%rest170886%_
                                                     _%hd170887%_)
                                              (let* ((_%$%hd170888170898%_
                                                      _%hd170887%_)
                                                     (_%$%else170890170906%_
                                                      (lambda ()
                                                        (_%lp170864%_
                                                         _%rest170886%_)))
                                                     (_%$%K170892170914%_
                                                      (lambda (_%loc170909%_)
                                                        (let ((_%$e170911%_
                                                               (__AST-source
                                                                _%loc170909%_)))
                                                          (if _%$e170911%_
                                                              _%$e170911%_
                                                              (_%lp170864%_
                                                               _%rest170886%_))))))
                                                (if (pair? _%$%hd170888170898%_)
                                                    (let ((_%$%hd170893170917%_
                                                           (##car _%$%hd170888170898%_))
                                                          (_%$%tl170894170919%_
                                                           (##cdr _%$%hd170888170898%_)))
                                                      (if (##eq? _%$%hd170893170917%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '@)
                  (if (pair? _%$%tl170894170919%_)
                      (let ((_%$%hd170895170922%_ (##car _%$%tl170894170919%_))
                            (_%$%tl170896170924%_
                             (##cdr _%$%tl170894170919%_)))
                        (let ((_%loc170927%_ _%$%hd170895170922%_))
                          (if (null? _%$%tl170896170924%_)
                              (_%$%K170892170914%_ _%loc170927%_)
                              (_%$%else170890170906%_))))
                      (_%$%else170890170906%_))
                  (_%$%else170890170906%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else170890170906%_))))))
                                      (if (pair? _%$%rest170867170875%_)
                                          (let ((_%$%hd170872170932%_
                                                 (##car _%$%rest170867170875%_))
                                                (_%$%tl170873170934%_
                                                 (##cdr _%$%rest170867170875%_)))
                                            (let* ((_%hd170937%_
                                                    _%$%hd170872170932%_)
                                                   (_%rest170939%_
                                                    _%$%tl170873170934%_))
                                              (_%$%K170871170929%_
                                               _%rest170939%_
                                               _%hd170937%_)))
                                          (_%$%else170869170883%_)))))))
                        (let ((_%$e170860%_ (_%from-irritants170857%_)))
                          (if _%$e170860%_
                              _%$e170860%_
                              (_%from-context170858%_)))))))
            (call-with-parameters__1
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e170719%_ (_%location170716%_)))
                 (if _%$e170719%_
                     (##display-locat _%$e170719%_ '#t _%port170702%_)
                     (display '"?")))
               (newline)
               (displayln
                '"--- Syntax Error: "
                (##unchecked-structure-ref _%self170705%_ '2 '#f '#f))
               (let ((_%$e170725%_
                      (##unchecked-structure-ref _%self170705%_ '4 '#f '#f)))
                 (if _%$e170725%_
                     (let ()
                       (displayln '"--- Context: ")
                       (let _%lp170730%_ ((_%rest170732%_ _%$e170725%_))
                         (let* ((_%$%rest170733170741%_ _%rest170732%_)
                                (_%$%else170735170749%_ (lambda () '#!void))
                                (_%$%K170737170799%_
                                 (lambda (_%rest170752%_ _%hd170753%_)
                                   (let* ((_%$%hd170754170764%_ _%hd170753%_)
                                          (_%$%else170756170772%_
                                           (lambda ()
                                             (displayln '" at " _%hd170753%_)
                                             (_%lp170730%_ _%rest170752%_)))
                                          (_%$%K170758170784%_
                                           (lambda (_%ctx170775%_)
                                             (let ((_%$e170777%_
                                                    (__AST-source
                                                     _%ctx170775%_)))
                                               (if _%$e170777%_
                                                   (let ()
                                                     (display '" at ")
                                                     (##display-locat
                                                      _%$e170777%_
                                                      '#t
                                                      _%port170702%_)
                                                     (newline)
                                                     (_%lp170730%_
                                                      _%rest170752%_))
                                                   (if (##structure-instance-of?
                                                        _%ctx170775%_
                                                        'gerbil#AST::t)
                                                       (let ()
                                                         (display '" at ")
                                                         (__pp-syntax
                                                          _%ctx170775%_)
                                                         (_%lp170730%_
                                                          _%rest170752%_))
                                                       (_%lp170730%_
                                                        _%rest170752%_)))))))
                                     (if (pair? _%$%hd170754170764%_)
                                         (let ((_%$%hd170759170787%_
                                                (##car _%$%hd170754170764%_))
                                               (_%$%tl170760170789%_
                                                (##cdr _%$%hd170754170764%_)))
                                           (if (##eq? _%$%hd170759170787%_ '@)
                                               (if (pair? _%$%tl170760170789%_)
                                                   (let ((_%$%hd170761170792%_
                                                          (##car _%$%tl170760170789%_))
                                                         (_%$%tl170762170794%_
                                                          (##cdr _%$%tl170760170789%_)))
                                                     (let ((_%ctx170797%_
                                                            _%$%hd170761170792%_))
                                                       (if (null? _%$%tl170762170794%_)
                                                           (_%$%K170758170784%_
                                                            _%ctx170797%_)
                                                           (_%$%else170756170772%_))))
                                                   (_%$%else170756170772%_))
                                               (_%$%else170756170772%_)))
                                         (_%$%else170756170772%_))))))
                           (if (pair? _%$%rest170733170741%_)
                               (let ((_%$%hd170738170802%_
                                      (##car _%$%rest170733170741%_))
                                     (_%$%tl170739170804%_
                                      (##cdr _%$%rest170733170741%_)))
                                 (let* ((_%hd170807%_ _%$%hd170738170802%_)
                                        (_%rest170809%_ _%$%tl170739170804%_))
                                   (_%$%K170737170799%_
                                    _%rest170809%_
                                    _%hd170807%_)))
                               '#!void))))
                     '#!void))
               (let* ((_%$%self.irritants170810170818%_
                       (##unchecked-structure-ref _%self170705%_ '3 '#f '#f))
                      (_%$%else170812170826%_ (lambda () '#!void))
                      (_%$%K170814170839%_
                       (lambda (_%rest170829%_ _%stx170830%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx170830%_)
                         (for-each
                          (lambda (_%detail170832%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail170832%_))
                            (let ((_%$e170834%_
                                   (__AST-source _%detail170832%_)))
                              (if _%$e170834%_
                                  (let ()
                                    (display '" at ")
                                    (##display-locat
                                     _%$e170834%_
                                     '#t
                                     _%port170702%_))
                                  '#!void))
                            (newline))
                          _%rest170829%_))))
                 (if (pair? _%$%self.irritants170810170818%_)
                     (let ((_%$%hd170815170842%_
                            (##car _%$%self.irritants170810170818%_))
                           (_%$%tl170816170844%_
                            (##cdr _%$%self.irritants170810170818%_)))
                       (let* ((_%stx170847%_ _%$%hd170815170842%_)
                              (_%rest170849%_ _%$%tl170816170844%_))
                         (_%$%K170814170839%_ _%rest170849%_ _%stx170847%_)))
                     '#!void))
               (if __DEBUG
                   (let ((_%$%cont170850170852%_
                          (##unchecked-structure-ref
                           _%self170705%_
                           '1
                           '#f
                           '#f)))
                     (if _%$%cont170850170852%_
                         (let ((_%cont170854%_ _%$%cont170850170852%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont170854%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port170702%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (let* ((_%klass170564%_ SyntaxError::t) (_%klass170569%_ _%klass170564%_))
      (__seal-class! _%klass170569%_))
    (define make-syntax-error
      (lambda (_%message170557%_
               _%irritants170558%_
               _%where170559%_
               _%context170560%_
               _%marks170561%_
               _%phi170562%_)
        (let ((__obj171079
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj171079 _%message170557%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj171079
           _%irritants170558%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj171079 _%where170559%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj171079 _%context170560%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj171079 _%marks170561%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj171079 _%phi170562%_ '6 '#f '#f)
          __obj171079)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where170552%_
               _%message170553%_
               _%stx170554%_
               .
               _%details170555%_)
        (raise (make-syntax-error
                _%message170553%_
                (cons _%stx170554%_ _%details170555%_)
                _%where170552%_
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
      (lambda _%$args170549%_ (apply make-instance AST::t _%$args170549%_)))
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
      (lambda (_%stx170547%_)
        (if (##structure-instance-of? _%stx170547%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx170547%_ '1 '#f '#f)
            _%stx170547%_)))
    (define __AST-source
      (lambda (_%stx170538%_)
        (let _%lp170540%_ ((_%src170542%_ _%stx170538%_))
          (if (##structure-instance-of? _%src170542%_ 'gerbil#AST::t)
              (_%lp170540%_
               (##unchecked-structure-ref _%src170542%_ '2 '#f '#f))
              (if (##locat? _%src170542%_) _%src170542%_ '#f)))))
    (define __AST
      (lambda (_%e170530%_ _%src-stx170531%_)
        (let ((_%src170533%_ (__AST-source _%src-stx170531%_)))
          (if (or (##structure-instance-of? _%e170530%_ 'gerbil#AST::t)
                  (not _%src170533%_))
              _%e170530%_
              (##structure AST::t _%e170530%_ _%src170533%_)))))
    (define __AST-eq?
      (lambda (_%stx170527%_ _%obj170528%_)
        (eq? (__AST-e _%stx170527%_) _%obj170528%_)))
    (define __AST-pair?
      (lambda (_%stx170525%_) (pair? (__AST-e _%stx170525%_))))
    (define __AST-null?
      (lambda (_%stx170523%_) (null? (__AST-e _%stx170523%_))))
    (define __AST-datum?
      (lambda (_%stx170504%_)
        (let* ((_%e170506%_ (__AST-e _%stx170504%_))
               (_%$e170508%_ (number? _%e170506%_)))
          (if _%$e170508%_
              _%$e170508%_
              (let ((_%$e170511%_ (string? _%e170506%_)))
                (if _%$e170511%_
                    _%$e170511%_
                    (let ((_%$e170514%_ (char? _%e170506%_)))
                      (if _%$e170514%_
                          _%$e170514%_
                          (let ((_%$e170517%_ (keyword? _%e170506%_)))
                            (if _%$e170517%_
                                _%$e170517%_
                                (let ((_%$e170520%_ (boolean? _%e170506%_)))
                                  (if _%$e170520%_
                                      _%$e170520%_
                                      (eq? _%e170506%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx170502%_) (symbol? (__AST-e _%stx170502%_))))
    (define __AST-id-list?__%
      (lambda (_%stx170453%_ _%tail?170454%_)
        (let _%lp170456%_ ((_%rest170458%_ _%stx170453%_))
          (let* ((_%$e170460%_ _%rest170458%_)
                 (_%$%$E170462170475%_
                  (lambda ()
                    (let* ((_%$%$E170463170470%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e170460%_)))
                           (_%rest170473%_ _%$e170460%_))
                      (_%tail?170454%_ _%rest170473%_)))))
            (if (__AST-pair? _%$e170460%_)
                (let* ((_%$%$tgt170464170478%_ (__AST-e _%$e170460%_))
                       (_%$%$hd170465170481%_ (##car _%$%$tgt170464170478%_))
                       (_%$%$tl170466170484%_ (##cdr _%$%$tgt170464170478%_))
                       (_%hd170488%_ _%$%$hd170465170481%_)
                       (_%rest170490%_ _%$%$tl170466170484%_))
                  (if (__AST-id? _%hd170488%_)
                      (_%lp170456%_ _%rest170490%_)
                      '#f))
                (_%$%$E170462170475%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx170495%_)
        (let ((_%tail?170497%_ __AST-null?))
          (__AST-id-list?__% _%stx170495%_ _%tail?170497%_))))
    (define __AST-id-list?
      (lambda _g171081_
        (let ((_g171082_ (##length _g171081_)))
          (cond ((##fx= _g171082_ 1) (apply __AST-id-list?__0 _g171081_))
                ((##fx= _g171082_ 2) (apply __AST-id-list?__% _g171081_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g171081_))))))
    (define __AST-bind-list?
      (lambda (_%stx170445%_)
        (__AST-id-list?__%
         _%stx170445%_
         (lambda (_%e170447%_)
           (let ((_%$e170449%_ (__AST-null? _%e170447%_)))
             (if _%$e170449%_ _%$e170449%_ (__AST-id? _%e170447%_)))))))
    (define __AST-list?__%
      (lambda (_%stx170398%_ _%tail?170399%_)
        (let _%lp170401%_ ((_%rest170403%_ _%stx170398%_))
          (let* ((_%$e170405%_ _%rest170403%_)
                 (_%$%$E170407170420%_
                  (lambda ()
                    (let* ((_%$%$E170408170415%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e170405%_)))
                           (_%rest170418%_ _%$e170405%_))
                      (_%tail?170399%_ _%rest170418%_)))))
            (if (__AST-pair? _%$e170405%_)
                (let* ((_%$%$tgt170409170423%_ (__AST-e _%$e170405%_))
                       (_%$%$hd170410170426%_ (##car _%$%$tgt170409170423%_))
                       (_%$%$tl170411170429%_ (##cdr _%$%$tgt170409170423%_))
                       (_%rest170433%_ _%$%$tl170411170429%_))
                  (_%lp170401%_ _%rest170433%_))
                (_%$%$E170407170420%_))))))
    (define __AST-list?__0
      (lambda (_%stx170438%_)
        (let ((_%tail?170440%_ __AST-null?))
          (__AST-list?__% _%stx170438%_ _%tail?170440%_))))
    (define __AST-list?
      (lambda _g171083_
        (let ((_g171084_ (##length _g171083_)))
          (cond ((##fx= _g171084_ 1) (apply __AST-list?__0 _g171083_))
                ((##fx= _g171084_ 2) (apply __AST-list?__% _g171083_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g171083_))))))
    (define __AST->list
      (lambda (_%stx170363%_)
        (let* ((_%$e170365%_ _%stx170363%_)
               (_%$%$E170367170380%_
                (lambda ()
                  (let* ((_%$%$E170368170375%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e170365%_)))
                         (_%rest170378%_ _%$e170365%_))
                    (__AST-e _%rest170378%_)))))
          (if (__AST-pair? _%$e170365%_)
              (let* ((_%$%$tgt170369170383%_ (__AST-e _%$e170365%_))
                     (_%$%$hd170370170386%_ (##car _%$%$tgt170369170383%_))
                     (_%$%$tl170371170389%_ (##cdr _%$%$tgt170369170383%_))
                     (_%hd170393%_ _%$%$hd170370170386%_)
                     (_%rest170395%_ _%$%$tl170371170389%_))
                (cons _%hd170393%_ (__AST->list _%rest170395%_)))
              (_%$%$E170367170380%_)))))
    (define __AST->datum
      (lambda (_%stx170356%_)
        (if (##structure-instance-of? _%stx170356%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx170356%_))
            (if (pair? _%stx170356%_)
                (cons (__AST->datum (##car _%stx170356%_))
                      (__AST->datum (##cdr _%stx170356%_)))
                (if (vector? _%stx170356%_)
                    (vector-map __AST->datum _%stx170356%_)
                    (if (box? _%stx170356%_)
                        (box (__AST->datum (unbox _%stx170356%_)))
                        _%stx170356%_))))))
    (define get-readenv
      (lambda (_%port170354%_)
        (##make-readenv
         _%port170354%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in170342%_)
        (let ((_%e170344%_ (##read-datum-or-eof (get-readenv _%in170342%_))))
          (if (eof-object? (__AST-e _%e170344%_))
              (__AST-e _%e170344%_)
              _%e170344%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in170350%_ (current-input-port)))
          (read-syntax__% _%in170350%_))))
    (define read-syntax
      (lambda _g171085_
        (let ((_g171086_ (##length _g171085_)))
          (cond ((##fx= _g171086_ 0) (apply read-syntax__0 _g171085_))
                ((##fx= _g171086_ 1) (apply read-syntax__% _g171085_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g171085_))))))
    (define read-syntax-from-file
      (lambda (_%path170337%_)
        (let ((_%r170339%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path170337%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r170339%_)
              (cdr (__AST-e (vector-ref _%r170339%_ '1)))
              (error (err-code->string _%r170339%_) _%path170337%_)))))
    (define __wrap-syntax
      (lambda (_%re170334%_ _%e170335%_)
        (if (eof-object? _%e170335%_)
            _%e170335%_
            (##structure AST::t _%e170335%_ (##readenv->locat _%re170334%_)))))
    (define __unwrap-syntax
      (lambda (_%re170331%_ _%e170332%_) (__AST-e _%e170332%_)))
    (define __pp-syntax
      (lambda (_%stx170329%_) (pp (__AST->datum _%stx170329%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt170327%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt170327%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt170327%_ '@list)
          (macro-readtable-brace-handler-set! _%rt170327%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt170327%_
           '#\!
           __read-sharp-bang)
          _%rt170327%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt170323%_ _%kw170324%_)
        (macro-readtable-bracket-handler-set! _%rt170323%_ _%kw170324%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt170320%_ _%kw170321%_)
        (macro-readtable-brace-handler-set! _%rt170320%_ _%kw170321%_)))
    (define __read-sharp-bang
      (lambda (_%re170311%_ _%next170312%_ _%start-pos170313%_)
        (if (eq? _%start-pos170313%_ '0)
            (let* ((_%line170315%_
                    (##read-line
                     (macro-readenv-port _%re170311%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line170317%_
                    (substring
                     _%line170315%_
                     '1
                     (string-length _%line170315%_))))
              (macro-readenv-script-line-set!
               _%re170311%_
               _%script-line170317%_)
              (##script-marker))
            (##read-sharp-bang
             _%re170311%_
             _%next170312%_
             _%start-pos170313%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj170309%_)
        (if (source-location? _%obj170309%_)
            (string? (##locat-container _%obj170309%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj170307%_)
        (if (##locat? _%obj170307%_)
            (##container->path (##locat-container _%obj170307%_))
            '#f)))))

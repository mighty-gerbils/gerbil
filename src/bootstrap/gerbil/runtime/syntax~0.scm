(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1771092627)
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
      (lambda _%$args166064%_
        (apply make-instance SyntaxError::t _%$args166064%_)))
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
      (lambda (_%self165783%_ _%port165784%_)
        (let ((_%self165787%_ _%self165783%_))
          (letrec ((_%location165798%_
                    (lambda ()
                      (letrec ((_%from-irritants165939%_
                                (lambda ()
                                  (let _%lp166024%_ ((_%rest166026%_
                                                      (##unchecked-structure-ref
                                                       _%self165787%_
                                                       '3
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest166027166035%_
                                            _%rest166026%_)
                                           (_%else166029166043%_
                                            (lambda () '#f))
                                           (_%K166031166052%_
                                            (lambda (_%rest166046%_
                                                     _%hd166047%_)
                                              (let ((_%$e166049%_
                                                     (__AST-source
                                                      _%hd166047%_)))
                                                (if _%$e166049%_
                                                    _%$e166049%_
                                                    (_%lp166024%_
                                                     _%rest166046%_))))))
                                      (if (pair? _%rest166027166035%_)
                                          (let ((_%hd166032166055%_
                                                 (##car _%rest166027166035%_))
                                                (_%tl166033166057%_
                                                 (##cdr _%rest166027166035%_)))
                                            (let* ((_%hd166060%_
                                                    _%hd166032166055%_)
                                                   (_%rest166062%_
                                                    _%tl166033166057%_))
                                              (_%K166031166052%_
                                               _%rest166062%_
                                               _%hd166060%_)))
                                          (_%else166029166043%_))))))
                               (_%from-context165940%_
                                (lambda ()
                                  (let _%lp165946%_ ((_%rest165948%_
                                                      (##unchecked-structure-ref
                                                       _%self165787%_
                                                       '4
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest165949165957%_
                                            _%rest165948%_)
                                           (_%else165951165965%_
                                            (lambda () '#f))
                                           (_%K165953166011%_
                                            (lambda (_%rest165968%_
                                                     _%hd165969%_)
                                              (let* ((_%hd165970165980%_
                                                      _%hd165969%_)
                                                     (_%else165972165988%_
                                                      (lambda ()
                                                        (_%lp165946%_
                                                         _%rest165968%_)))
                                                     (_%K165974165996%_
                                                      (lambda (_%loc165991%_)
                                                        (let ((_%$e165993%_
                                                               (__AST-source
                                                                _%loc165991%_)))
                                                          (if _%$e165993%_
                                                              _%$e165993%_
                                                              (_%lp165946%_
                                                               _%rest165968%_))))))
                                                (if (pair? _%hd165970165980%_)
                                                    (let ((_%hd165975165999%_
                                                           (##car _%hd165970165980%_))
                                                          (_%tl165976166001%_
                                                           (##cdr _%hd165970165980%_)))
                                                      (if (##eq? _%hd165975165999%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '@)
                  (if (pair? _%tl165976166001%_)
                      (let ((_%hd165977166004%_ (##car _%tl165976166001%_))
                            (_%tl165978166006%_ (##cdr _%tl165976166001%_)))
                        (let ((_%loc166009%_ _%hd165977166004%_))
                          (if (null? _%tl165978166006%_)
                              (_%K165974165996%_ _%loc166009%_)
                              (_%else165972165988%_))))
                      (_%else165972165988%_))
                  (_%else165972165988%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else165972165988%_))))))
                                      (if (pair? _%rest165949165957%_)
                                          (let ((_%hd165954166014%_
                                                 (##car _%rest165949165957%_))
                                                (_%tl165955166016%_
                                                 (##cdr _%rest165949165957%_)))
                                            (let* ((_%hd166019%_
                                                    _%hd165954166014%_)
                                                   (_%rest166021%_
                                                    _%tl165955166016%_))
                                              (_%K165953166011%_
                                               _%rest166021%_
                                               _%hd166019%_)))
                                          (_%else165951165965%_)))))))
                        (let ((_%$e165942%_ (_%from-irritants165939%_)))
                          (if _%$e165942%_
                              _%$e165942%_
                              (_%from-context165940%_)))))))
            (call-with-parameters__1
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e165801%_ (_%location165798%_)))
                 (if _%$e165801%_
                     ((lambda (_%loc165804%_)
                        (##display-locat _%loc165804%_ '#t _%port165784%_))
                      _%$e165801%_)
                     (display '"?")))
               (newline)
               (displayln
                '"--- Syntax Error: "
                (##unchecked-structure-ref _%self165787%_ '2 '#f '#f))
               (let ((_%$e165807%_
                      (##unchecked-structure-ref _%self165787%_ '4 '#f '#f)))
                 (if _%$e165807%_
                     ((lambda (_%where165810%_)
                        (displayln '"--- Context: ")
                        (let _%lp165812%_ ((_%rest165814%_ _%where165810%_))
                          (let* ((_%rest165815165823%_ _%rest165814%_)
                                 (_%else165817165831%_ (lambda () '#!void))
                                 (_%K165819165881%_
                                  (lambda (_%rest165834%_ _%hd165835%_)
                                    (let* ((_%hd165836165846%_ _%hd165835%_)
                                           (_%else165838165854%_
                                            (lambda ()
                                              (displayln '" at " _%hd165835%_)
                                              (_%lp165812%_ _%rest165834%_)))
                                           (_%K165840165866%_
                                            (lambda (_%ctx165857%_)
                                              (let ((_%$e165859%_
                                                     (__AST-source
                                                      _%ctx165857%_)))
                                                (if _%$e165859%_
                                                    ((lambda (_%loc165862%_)
                                                       (display '" at ")
                                                       (##display-locat
                                                        _%loc165862%_
                                                        '#t
                                                        _%port165784%_)
                                                       (newline)
                                                       (_%lp165812%_
                                                        _%rest165834%_))
                                                     _%$e165859%_)
                                                    (if (##structure-instance-of?
                                                         _%ctx165857%_
                                                         'gerbil#AST::t)
                                                        (let ()
                                                          (display '" at ")
                                                          (__pp-syntax
                                                           _%ctx165857%_)
                                                          (_%lp165812%_
                                                           _%rest165834%_))
                                                        (_%lp165812%_
                                                         _%rest165834%_)))))))
                                      (if (pair? _%hd165836165846%_)
                                          (let ((_%hd165841165869%_
                                                 (##car _%hd165836165846%_))
                                                (_%tl165842165871%_
                                                 (##cdr _%hd165836165846%_)))
                                            (if (##eq? _%hd165841165869%_ '@)
                                                (if (pair? _%tl165842165871%_)
                                                    (let ((_%hd165843165874%_
                                                           (##car _%tl165842165871%_))
                                                          (_%tl165844165876%_
                                                           (##cdr _%tl165842165871%_)))
                                                      (let ((_%ctx165879%_
                                                             _%hd165843165874%_))
                                                        (if (null? _%tl165844165876%_)
                                                            (_%K165840165866%_
                                                             _%ctx165879%_)
                                                            (_%else165838165854%_))))
                                                    (_%else165838165854%_))
                                                (_%else165838165854%_)))
                                          (_%else165838165854%_))))))
                            (if (pair? _%rest165815165823%_)
                                (let ((_%hd165820165884%_
                                       (##car _%rest165815165823%_))
                                      (_%tl165821165886%_
                                       (##cdr _%rest165815165823%_)))
                                  (let* ((_%hd165889%_ _%hd165820165884%_)
                                         (_%rest165891%_ _%tl165821165886%_))
                                    (_%K165819165881%_
                                     _%rest165891%_
                                     _%hd165889%_)))
                                '#!void))))
                      _%$e165807%_)
                     '#!void))
               (let* ((_%self.irritants165892165900%_
                       (##unchecked-structure-ref _%self165787%_ '3 '#f '#f))
                      (_%else165894165908%_ (lambda () '#!void))
                      (_%K165896165921%_
                       (lambda (_%rest165911%_ _%stx165912%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx165912%_)
                         (for-each
                          (lambda (_%detail165914%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail165914%_))
                            (let ((_%$e165916%_
                                   (__AST-source _%detail165914%_)))
                              (if _%$e165916%_
                                  ((lambda (_%loc165919%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc165919%_
                                      '#t
                                      _%port165784%_))
                                   _%$e165916%_)
                                  '#!void))
                            (newline))
                          _%rest165911%_))))
                 (if (pair? _%self.irritants165892165900%_)
                     (let ((_%hd165897165924%_
                            (##car _%self.irritants165892165900%_))
                           (_%tl165898165926%_
                            (##cdr _%self.irritants165892165900%_)))
                       (let* ((_%stx165929%_ _%hd165897165924%_)
                              (_%rest165931%_ _%tl165898165926%_))
                         (_%K165896165921%_ _%rest165931%_ _%stx165929%_)))
                     '#!void))
               (if __DEBUG
                   (let ((_%cont165932165934%_
                          (##unchecked-structure-ref
                           _%self165787%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont165932165934%_
                         (let ((_%cont165936%_ _%cont165932165934%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont165936%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port165784%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (let* ((_%klass165646%_ SyntaxError::t) (_%klass165651%_ _%klass165646%_))
      (__seal-class! _%klass165651%_))
    (define make-syntax-error
      (lambda (_%message165639%_
               _%irritants165640%_
               _%where165641%_
               _%context165642%_
               _%marks165643%_
               _%phi165644%_)
        (let ((__obj166161
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj166161 _%message165639%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj166161
           _%irritants165640%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj166161 _%where165641%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj166161 _%context165642%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj166161 _%marks165643%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj166161 _%phi165644%_ '6 '#f '#f)
          __obj166161)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where165634%_
               _%message165635%_
               _%stx165636%_
               .
               _%details165637%_)
        (raise (make-syntax-error
                _%message165635%_
                (cons _%stx165636%_ _%details165637%_)
                _%where165634%_
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
      (lambda _%$args165631%_ (apply make-instance AST::t _%$args165631%_)))
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
      (lambda (_%stx165629%_)
        (if (##structure-instance-of? _%stx165629%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx165629%_ '1 '#f '#f)
            _%stx165629%_)))
    (define __AST-source
      (lambda (_%stx165620%_)
        (let _%lp165622%_ ((_%src165624%_ _%stx165620%_))
          (if (##structure-instance-of? _%src165624%_ 'gerbil#AST::t)
              (_%lp165622%_
               (##unchecked-structure-ref _%src165624%_ '2 '#f '#f))
              (if (##locat? _%src165624%_) _%src165624%_ '#f)))))
    (define __AST
      (lambda (_%e165612%_ _%src-stx165613%_)
        (let ((_%src165615%_ (__AST-source _%src-stx165613%_)))
          (if (or (##structure-instance-of? _%e165612%_ 'gerbil#AST::t)
                  (not _%src165615%_))
              _%e165612%_
              (##structure AST::t _%e165612%_ _%src165615%_)))))
    (define __AST-eq?
      (lambda (_%stx165609%_ _%obj165610%_)
        (eq? (__AST-e _%stx165609%_) _%obj165610%_)))
    (define __AST-pair?
      (lambda (_%stx165607%_) (pair? (__AST-e _%stx165607%_))))
    (define __AST-null?
      (lambda (_%stx165605%_) (null? (__AST-e _%stx165605%_))))
    (define __AST-datum?
      (lambda (_%stx165586%_)
        (let* ((_%e165588%_ (__AST-e _%stx165586%_))
               (_%$e165590%_ (number? _%e165588%_)))
          (if _%$e165590%_
              _%$e165590%_
              (let ((_%$e165593%_ (string? _%e165588%_)))
                (if _%$e165593%_
                    _%$e165593%_
                    (let ((_%$e165596%_ (char? _%e165588%_)))
                      (if _%$e165596%_
                          _%$e165596%_
                          (let ((_%$e165599%_ (keyword? _%e165588%_)))
                            (if _%$e165599%_
                                _%$e165599%_
                                (let ((_%$e165602%_ (boolean? _%e165588%_)))
                                  (if _%$e165602%_
                                      _%$e165602%_
                                      (eq? _%e165588%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx165584%_) (symbol? (__AST-e _%stx165584%_))))
    (define __AST-id-list?__%
      (lambda (_%stx165535%_ _%tail?165536%_)
        (let _%lp165538%_ ((_%rest165540%_ _%stx165535%_))
          (let* ((_%$e165542%_ _%rest165540%_)
                 (_%$E165544165557%_
                  (lambda ()
                    (let* ((_%$E165545165552%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e165542%_)))
                           (_%rest165555%_ _%$e165542%_))
                      (_%tail?165536%_ _%rest165555%_)))))
            (if (__AST-pair? _%$e165542%_)
                (let* ((_%$tgt165546165560%_ (__AST-e _%$e165542%_))
                       (_%$hd165547165563%_ (##car _%$tgt165546165560%_))
                       (_%$tl165548165566%_ (##cdr _%$tgt165546165560%_))
                       (_%hd165570%_ _%$hd165547165563%_)
                       (_%rest165572%_ _%$tl165548165566%_))
                  (if (__AST-id? _%hd165570%_)
                      (_%lp165538%_ _%rest165572%_)
                      '#f))
                (_%$E165544165557%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx165577%_)
        (let ((_%tail?165579%_ __AST-null?))
          (__AST-id-list?__% _%stx165577%_ _%tail?165579%_))))
    (define __AST-id-list?
      (lambda _g166163_
        (let ((_g166164_ (##length _g166163_)))
          (cond ((##fx= _g166164_ 1) (apply __AST-id-list?__0 _g166163_))
                ((##fx= _g166164_ 2) (apply __AST-id-list?__% _g166163_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g166163_))))))
    (define __AST-bind-list?
      (lambda (_%stx165527%_)
        (__AST-id-list?__%
         _%stx165527%_
         (lambda (_%e165529%_)
           (let ((_%$e165531%_ (__AST-null? _%e165529%_)))
             (if _%$e165531%_ _%$e165531%_ (__AST-id? _%e165529%_)))))))
    (define __AST-list?__%
      (lambda (_%stx165480%_ _%tail?165481%_)
        (let _%lp165483%_ ((_%rest165485%_ _%stx165480%_))
          (let* ((_%$e165487%_ _%rest165485%_)
                 (_%$E165489165502%_
                  (lambda ()
                    (let* ((_%$E165490165497%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e165487%_)))
                           (_%rest165500%_ _%$e165487%_))
                      (_%tail?165481%_ _%rest165500%_)))))
            (if (__AST-pair? _%$e165487%_)
                (let* ((_%$tgt165491165505%_ (__AST-e _%$e165487%_))
                       (_%$hd165492165508%_ (##car _%$tgt165491165505%_))
                       (_%$tl165493165511%_ (##cdr _%$tgt165491165505%_))
                       (_%rest165515%_ _%$tl165493165511%_))
                  (_%lp165483%_ _%rest165515%_))
                (_%$E165489165502%_))))))
    (define __AST-list?__0
      (lambda (_%stx165520%_)
        (let ((_%tail?165522%_ __AST-null?))
          (__AST-list?__% _%stx165520%_ _%tail?165522%_))))
    (define __AST-list?
      (lambda _g166165_
        (let ((_g166166_ (##length _g166165_)))
          (cond ((##fx= _g166166_ 1) (apply __AST-list?__0 _g166165_))
                ((##fx= _g166166_ 2) (apply __AST-list?__% _g166165_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g166165_))))))
    (define __AST->list
      (lambda (_%stx165445%_)
        (let* ((_%$e165447%_ _%stx165445%_)
               (_%$E165449165462%_
                (lambda ()
                  (let* ((_%$E165450165457%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e165447%_)))
                         (_%rest165460%_ _%$e165447%_))
                    (__AST-e _%rest165460%_)))))
          (if (__AST-pair? _%$e165447%_)
              (let* ((_%$tgt165451165465%_ (__AST-e _%$e165447%_))
                     (_%$hd165452165468%_ (##car _%$tgt165451165465%_))
                     (_%$tl165453165471%_ (##cdr _%$tgt165451165465%_))
                     (_%hd165475%_ _%$hd165452165468%_)
                     (_%rest165477%_ _%$tl165453165471%_))
                (cons _%hd165475%_ (__AST->list _%rest165477%_)))
              (_%$E165449165462%_)))))
    (define __AST->datum
      (lambda (_%stx165438%_)
        (if (##structure-instance-of? _%stx165438%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx165438%_))
            (if (pair? _%stx165438%_)
                (cons (__AST->datum (##car _%stx165438%_))
                      (__AST->datum (##cdr _%stx165438%_)))
                (if (vector? _%stx165438%_)
                    (vector-map __AST->datum _%stx165438%_)
                    (if (box? _%stx165438%_)
                        (box (__AST->datum (unbox _%stx165438%_)))
                        _%stx165438%_))))))
    (define get-readenv
      (lambda (_%port165436%_)
        (##make-readenv
         _%port165436%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in165424%_)
        (let ((_%e165426%_ (##read-datum-or-eof (get-readenv _%in165424%_))))
          (if (eof-object? (__AST-e _%e165426%_))
              (__AST-e _%e165426%_)
              _%e165426%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in165432%_ (current-input-port)))
          (read-syntax__% _%in165432%_))))
    (define read-syntax
      (lambda _g166167_
        (let ((_g166168_ (##length _g166167_)))
          (cond ((##fx= _g166168_ 0) (apply read-syntax__0 _g166167_))
                ((##fx= _g166168_ 1) (apply read-syntax__% _g166167_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g166167_))))))
    (define read-syntax-from-file
      (lambda (_%path165419%_)
        (let ((_%r165421%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path165419%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r165421%_)
              (cdr (__AST-e (vector-ref _%r165421%_ '1)))
              (error (err-code->string _%r165421%_) _%path165419%_)))))
    (define __wrap-syntax
      (lambda (_%re165416%_ _%e165417%_)
        (if (eof-object? _%e165417%_)
            _%e165417%_
            (##structure AST::t _%e165417%_ (##readenv->locat _%re165416%_)))))
    (define __unwrap-syntax
      (lambda (_%re165413%_ _%e165414%_) (__AST-e _%e165414%_)))
    (define __pp-syntax
      (lambda (_%stx165411%_) (pp (__AST->datum _%stx165411%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt165409%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt165409%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt165409%_ '@list)
          (macro-readtable-brace-handler-set! _%rt165409%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt165409%_
           '#\!
           __read-sharp-bang)
          _%rt165409%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt165405%_ _%kw165406%_)
        (macro-readtable-bracket-handler-set! _%rt165405%_ _%kw165406%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt165402%_ _%kw165403%_)
        (macro-readtable-brace-handler-set! _%rt165402%_ _%kw165403%_)))
    (define __read-sharp-bang
      (lambda (_%re165393%_ _%next165394%_ _%start-pos165395%_)
        (if (eq? _%start-pos165395%_ '0)
            (let* ((_%line165397%_
                    (##read-line
                     (macro-readenv-port _%re165393%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line165399%_
                    (substring
                     _%line165397%_
                     '1
                     (string-length _%line165397%_))))
              (macro-readenv-script-line-set!
               _%re165393%_
               _%script-line165399%_)
              (##script-marker))
            (##read-sharp-bang
             _%re165393%_
             _%next165394%_
             _%start-pos165395%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj165391%_)
        (if (source-location? _%obj165391%_)
            (string? (##locat-container _%obj165391%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj165389%_)
        (if (##locat? _%obj165389%_)
            (##container->path (##locat-container _%obj165389%_))
            '#f)))))

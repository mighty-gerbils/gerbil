(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1771104505)
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
      (lambda _%$args166595%_
        (apply make-instance SyntaxError::t _%$args166595%_)))
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
      (lambda (_%self166314%_ _%port166315%_)
        (let ((_%self166318%_ _%self166314%_))
          (letrec ((_%location166329%_
                    (lambda ()
                      (letrec ((_%from-irritants166470%_
                                (lambda ()
                                  (let _%lp166555%_ ((_%rest166557%_
                                                      (##unchecked-structure-ref
                                                       _%self166318%_
                                                       '3
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest166558166566%_
                                            _%rest166557%_)
                                           (_%else166560166574%_
                                            (lambda () '#f))
                                           (_%K166562166583%_
                                            (lambda (_%rest166577%_
                                                     _%hd166578%_)
                                              (let ((_%$e166580%_
                                                     (__AST-source
                                                      _%hd166578%_)))
                                                (if _%$e166580%_
                                                    _%$e166580%_
                                                    (_%lp166555%_
                                                     _%rest166577%_))))))
                                      (if (pair? _%rest166558166566%_)
                                          (let ((_%hd166563166586%_
                                                 (##car _%rest166558166566%_))
                                                (_%tl166564166588%_
                                                 (##cdr _%rest166558166566%_)))
                                            (let* ((_%hd166591%_
                                                    _%hd166563166586%_)
                                                   (_%rest166593%_
                                                    _%tl166564166588%_))
                                              (_%K166562166583%_
                                               _%rest166593%_
                                               _%hd166591%_)))
                                          (_%else166560166574%_))))))
                               (_%from-context166471%_
                                (lambda ()
                                  (let _%lp166477%_ ((_%rest166479%_
                                                      (##unchecked-structure-ref
                                                       _%self166318%_
                                                       '4
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest166480166488%_
                                            _%rest166479%_)
                                           (_%else166482166496%_
                                            (lambda () '#f))
                                           (_%K166484166542%_
                                            (lambda (_%rest166499%_
                                                     _%hd166500%_)
                                              (let* ((_%hd166501166511%_
                                                      _%hd166500%_)
                                                     (_%else166503166519%_
                                                      (lambda ()
                                                        (_%lp166477%_
                                                         _%rest166499%_)))
                                                     (_%K166505166527%_
                                                      (lambda (_%loc166522%_)
                                                        (let ((_%$e166524%_
                                                               (__AST-source
                                                                _%loc166522%_)))
                                                          (if _%$e166524%_
                                                              _%$e166524%_
                                                              (_%lp166477%_
                                                               _%rest166499%_))))))
                                                (if (pair? _%hd166501166511%_)
                                                    (let ((_%hd166506166530%_
                                                           (##car _%hd166501166511%_))
                                                          (_%tl166507166532%_
                                                           (##cdr _%hd166501166511%_)))
                                                      (if (##eq? _%hd166506166530%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '@)
                  (if (pair? _%tl166507166532%_)
                      (let ((_%hd166508166535%_ (##car _%tl166507166532%_))
                            (_%tl166509166537%_ (##cdr _%tl166507166532%_)))
                        (let ((_%loc166540%_ _%hd166508166535%_))
                          (if (null? _%tl166509166537%_)
                              (_%K166505166527%_ _%loc166540%_)
                              (_%else166503166519%_))))
                      (_%else166503166519%_))
                  (_%else166503166519%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else166503166519%_))))))
                                      (if (pair? _%rest166480166488%_)
                                          (let ((_%hd166485166545%_
                                                 (##car _%rest166480166488%_))
                                                (_%tl166486166547%_
                                                 (##cdr _%rest166480166488%_)))
                                            (let* ((_%hd166550%_
                                                    _%hd166485166545%_)
                                                   (_%rest166552%_
                                                    _%tl166486166547%_))
                                              (_%K166484166542%_
                                               _%rest166552%_
                                               _%hd166550%_)))
                                          (_%else166482166496%_)))))))
                        (let ((_%$e166473%_ (_%from-irritants166470%_)))
                          (if _%$e166473%_
                              _%$e166473%_
                              (_%from-context166471%_)))))))
            (call-with-parameters__1
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e166332%_ (_%location166329%_)))
                 (if _%$e166332%_
                     ((lambda (_%loc166335%_)
                        (##display-locat _%loc166335%_ '#t _%port166315%_))
                      _%$e166332%_)
                     (display '"?")))
               (newline)
               (displayln
                '"--- Syntax Error: "
                (##unchecked-structure-ref _%self166318%_ '2 '#f '#f))
               (let ((_%$e166338%_
                      (##unchecked-structure-ref _%self166318%_ '4 '#f '#f)))
                 (if _%$e166338%_
                     ((lambda (_%where166341%_)
                        (displayln '"--- Context: ")
                        (let _%lp166343%_ ((_%rest166345%_ _%where166341%_))
                          (let* ((_%rest166346166354%_ _%rest166345%_)
                                 (_%else166348166362%_ (lambda () '#!void))
                                 (_%K166350166412%_
                                  (lambda (_%rest166365%_ _%hd166366%_)
                                    (let* ((_%hd166367166377%_ _%hd166366%_)
                                           (_%else166369166385%_
                                            (lambda ()
                                              (displayln '" at " _%hd166366%_)
                                              (_%lp166343%_ _%rest166365%_)))
                                           (_%K166371166397%_
                                            (lambda (_%ctx166388%_)
                                              (let ((_%$e166390%_
                                                     (__AST-source
                                                      _%ctx166388%_)))
                                                (if _%$e166390%_
                                                    ((lambda (_%loc166393%_)
                                                       (display '" at ")
                                                       (##display-locat
                                                        _%loc166393%_
                                                        '#t
                                                        _%port166315%_)
                                                       (newline)
                                                       (_%lp166343%_
                                                        _%rest166365%_))
                                                     _%$e166390%_)
                                                    (if (##structure-instance-of?
                                                         _%ctx166388%_
                                                         'gerbil#AST::t)
                                                        (let ()
                                                          (display '" at ")
                                                          (__pp-syntax
                                                           _%ctx166388%_)
                                                          (_%lp166343%_
                                                           _%rest166365%_))
                                                        (_%lp166343%_
                                                         _%rest166365%_)))))))
                                      (if (pair? _%hd166367166377%_)
                                          (let ((_%hd166372166400%_
                                                 (##car _%hd166367166377%_))
                                                (_%tl166373166402%_
                                                 (##cdr _%hd166367166377%_)))
                                            (if (##eq? _%hd166372166400%_ '@)
                                                (if (pair? _%tl166373166402%_)
                                                    (let ((_%hd166374166405%_
                                                           (##car _%tl166373166402%_))
                                                          (_%tl166375166407%_
                                                           (##cdr _%tl166373166402%_)))
                                                      (let ((_%ctx166410%_
                                                             _%hd166374166405%_))
                                                        (if (null? _%tl166375166407%_)
                                                            (_%K166371166397%_
                                                             _%ctx166410%_)
                                                            (_%else166369166385%_))))
                                                    (_%else166369166385%_))
                                                (_%else166369166385%_)))
                                          (_%else166369166385%_))))))
                            (if (pair? _%rest166346166354%_)
                                (let ((_%hd166351166415%_
                                       (##car _%rest166346166354%_))
                                      (_%tl166352166417%_
                                       (##cdr _%rest166346166354%_)))
                                  (let* ((_%hd166420%_ _%hd166351166415%_)
                                         (_%rest166422%_ _%tl166352166417%_))
                                    (_%K166350166412%_
                                     _%rest166422%_
                                     _%hd166420%_)))
                                '#!void))))
                      _%$e166338%_)
                     '#!void))
               (let* ((_%self.irritants166423166431%_
                       (##unchecked-structure-ref _%self166318%_ '3 '#f '#f))
                      (_%else166425166439%_ (lambda () '#!void))
                      (_%K166427166452%_
                       (lambda (_%rest166442%_ _%stx166443%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx166443%_)
                         (for-each
                          (lambda (_%detail166445%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail166445%_))
                            (let ((_%$e166447%_
                                   (__AST-source _%detail166445%_)))
                              (if _%$e166447%_
                                  ((lambda (_%loc166450%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc166450%_
                                      '#t
                                      _%port166315%_))
                                   _%$e166447%_)
                                  '#!void))
                            (newline))
                          _%rest166442%_))))
                 (if (pair? _%self.irritants166423166431%_)
                     (let ((_%hd166428166455%_
                            (##car _%self.irritants166423166431%_))
                           (_%tl166429166457%_
                            (##cdr _%self.irritants166423166431%_)))
                       (let* ((_%stx166460%_ _%hd166428166455%_)
                              (_%rest166462%_ _%tl166429166457%_))
                         (_%K166427166452%_ _%rest166462%_ _%stx166460%_)))
                     '#!void))
               (if __DEBUG
                   (let ((_%cont166463166465%_
                          (##unchecked-structure-ref
                           _%self166318%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont166463166465%_
                         (let ((_%cont166467%_ _%cont166463166465%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont166467%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port166315%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (let* ((_%klass166177%_ SyntaxError::t) (_%klass166182%_ _%klass166177%_))
      (__seal-class! _%klass166182%_))
    (define make-syntax-error
      (lambda (_%message166170%_
               _%irritants166171%_
               _%where166172%_
               _%context166173%_
               _%marks166174%_
               _%phi166175%_)
        (let ((__obj166692
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj166692 _%message166170%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj166692
           _%irritants166171%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj166692 _%where166172%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj166692 _%context166173%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj166692 _%marks166174%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj166692 _%phi166175%_ '6 '#f '#f)
          __obj166692)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where166165%_
               _%message166166%_
               _%stx166167%_
               .
               _%details166168%_)
        (raise (make-syntax-error
                _%message166166%_
                (cons _%stx166167%_ _%details166168%_)
                _%where166165%_
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
      (lambda _%$args166162%_ (apply make-instance AST::t _%$args166162%_)))
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
      (lambda (_%stx166160%_)
        (if (##structure-instance-of? _%stx166160%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx166160%_ '1 '#f '#f)
            _%stx166160%_)))
    (define __AST-source
      (lambda (_%stx166151%_)
        (let _%lp166153%_ ((_%src166155%_ _%stx166151%_))
          (if (##structure-instance-of? _%src166155%_ 'gerbil#AST::t)
              (_%lp166153%_
               (##unchecked-structure-ref _%src166155%_ '2 '#f '#f))
              (if (##locat? _%src166155%_) _%src166155%_ '#f)))))
    (define __AST
      (lambda (_%e166143%_ _%src-stx166144%_)
        (let ((_%src166146%_ (__AST-source _%src-stx166144%_)))
          (if (or (##structure-instance-of? _%e166143%_ 'gerbil#AST::t)
                  (not _%src166146%_))
              _%e166143%_
              (##structure AST::t _%e166143%_ _%src166146%_)))))
    (define __AST-eq?
      (lambda (_%stx166140%_ _%obj166141%_)
        (eq? (__AST-e _%stx166140%_) _%obj166141%_)))
    (define __AST-pair?
      (lambda (_%stx166138%_) (pair? (__AST-e _%stx166138%_))))
    (define __AST-null?
      (lambda (_%stx166136%_) (null? (__AST-e _%stx166136%_))))
    (define __AST-datum?
      (lambda (_%stx166117%_)
        (let* ((_%e166119%_ (__AST-e _%stx166117%_))
               (_%$e166121%_ (number? _%e166119%_)))
          (if _%$e166121%_
              _%$e166121%_
              (let ((_%$e166124%_ (string? _%e166119%_)))
                (if _%$e166124%_
                    _%$e166124%_
                    (let ((_%$e166127%_ (char? _%e166119%_)))
                      (if _%$e166127%_
                          _%$e166127%_
                          (let ((_%$e166130%_ (keyword? _%e166119%_)))
                            (if _%$e166130%_
                                _%$e166130%_
                                (let ((_%$e166133%_ (boolean? _%e166119%_)))
                                  (if _%$e166133%_
                                      _%$e166133%_
                                      (eq? _%e166119%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx166115%_) (symbol? (__AST-e _%stx166115%_))))
    (define __AST-id-list?__%
      (lambda (_%stx166066%_ _%tail?166067%_)
        (let _%lp166069%_ ((_%rest166071%_ _%stx166066%_))
          (let* ((_%$e166073%_ _%rest166071%_)
                 (_%$E166075166088%_
                  (lambda ()
                    (let* ((_%$E166076166083%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e166073%_)))
                           (_%rest166086%_ _%$e166073%_))
                      (_%tail?166067%_ _%rest166086%_)))))
            (if (__AST-pair? _%$e166073%_)
                (let* ((_%$tgt166077166091%_ (__AST-e _%$e166073%_))
                       (_%$hd166078166094%_ (##car _%$tgt166077166091%_))
                       (_%$tl166079166097%_ (##cdr _%$tgt166077166091%_))
                       (_%hd166101%_ _%$hd166078166094%_)
                       (_%rest166103%_ _%$tl166079166097%_))
                  (if (__AST-id? _%hd166101%_)
                      (_%lp166069%_ _%rest166103%_)
                      '#f))
                (_%$E166075166088%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx166108%_)
        (let ((_%tail?166110%_ __AST-null?))
          (__AST-id-list?__% _%stx166108%_ _%tail?166110%_))))
    (define __AST-id-list?
      (lambda _g166694_
        (let ((_g166695_ (##length _g166694_)))
          (cond ((##fx= _g166695_ 1) (apply __AST-id-list?__0 _g166694_))
                ((##fx= _g166695_ 2) (apply __AST-id-list?__% _g166694_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g166694_))))))
    (define __AST-bind-list?
      (lambda (_%stx166058%_)
        (__AST-id-list?__%
         _%stx166058%_
         (lambda (_%e166060%_)
           (let ((_%$e166062%_ (__AST-null? _%e166060%_)))
             (if _%$e166062%_ _%$e166062%_ (__AST-id? _%e166060%_)))))))
    (define __AST-list?__%
      (lambda (_%stx166011%_ _%tail?166012%_)
        (let _%lp166014%_ ((_%rest166016%_ _%stx166011%_))
          (let* ((_%$e166018%_ _%rest166016%_)
                 (_%$E166020166033%_
                  (lambda ()
                    (let* ((_%$E166021166028%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e166018%_)))
                           (_%rest166031%_ _%$e166018%_))
                      (_%tail?166012%_ _%rest166031%_)))))
            (if (__AST-pair? _%$e166018%_)
                (let* ((_%$tgt166022166036%_ (__AST-e _%$e166018%_))
                       (_%$hd166023166039%_ (##car _%$tgt166022166036%_))
                       (_%$tl166024166042%_ (##cdr _%$tgt166022166036%_))
                       (_%rest166046%_ _%$tl166024166042%_))
                  (_%lp166014%_ _%rest166046%_))
                (_%$E166020166033%_))))))
    (define __AST-list?__0
      (lambda (_%stx166051%_)
        (let ((_%tail?166053%_ __AST-null?))
          (__AST-list?__% _%stx166051%_ _%tail?166053%_))))
    (define __AST-list?
      (lambda _g166696_
        (let ((_g166697_ (##length _g166696_)))
          (cond ((##fx= _g166697_ 1) (apply __AST-list?__0 _g166696_))
                ((##fx= _g166697_ 2) (apply __AST-list?__% _g166696_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g166696_))))))
    (define __AST->list
      (lambda (_%stx165976%_)
        (let* ((_%$e165978%_ _%stx165976%_)
               (_%$E165980165993%_
                (lambda ()
                  (let* ((_%$E165981165988%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e165978%_)))
                         (_%rest165991%_ _%$e165978%_))
                    (__AST-e _%rest165991%_)))))
          (if (__AST-pair? _%$e165978%_)
              (let* ((_%$tgt165982165996%_ (__AST-e _%$e165978%_))
                     (_%$hd165983165999%_ (##car _%$tgt165982165996%_))
                     (_%$tl165984166002%_ (##cdr _%$tgt165982165996%_))
                     (_%hd166006%_ _%$hd165983165999%_)
                     (_%rest166008%_ _%$tl165984166002%_))
                (cons _%hd166006%_ (__AST->list _%rest166008%_)))
              (_%$E165980165993%_)))))
    (define __AST->datum
      (lambda (_%stx165969%_)
        (if (##structure-instance-of? _%stx165969%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx165969%_))
            (if (pair? _%stx165969%_)
                (cons (__AST->datum (##car _%stx165969%_))
                      (__AST->datum (##cdr _%stx165969%_)))
                (if (vector? _%stx165969%_)
                    (vector-map __AST->datum _%stx165969%_)
                    (if (box? _%stx165969%_)
                        (box (__AST->datum (unbox _%stx165969%_)))
                        _%stx165969%_))))))
    (define get-readenv
      (lambda (_%port165967%_)
        (##make-readenv
         _%port165967%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in165955%_)
        (let ((_%e165957%_ (##read-datum-or-eof (get-readenv _%in165955%_))))
          (if (eof-object? (__AST-e _%e165957%_))
              (__AST-e _%e165957%_)
              _%e165957%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in165963%_ (current-input-port)))
          (read-syntax__% _%in165963%_))))
    (define read-syntax
      (lambda _g166698_
        (let ((_g166699_ (##length _g166698_)))
          (cond ((##fx= _g166699_ 0) (apply read-syntax__0 _g166698_))
                ((##fx= _g166699_ 1) (apply read-syntax__% _g166698_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g166698_))))))
    (define read-syntax-from-file
      (lambda (_%path165950%_)
        (let ((_%r165952%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path165950%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r165952%_)
              (cdr (__AST-e (vector-ref _%r165952%_ '1)))
              (error (err-code->string _%r165952%_) _%path165950%_)))))
    (define __wrap-syntax
      (lambda (_%re165947%_ _%e165948%_)
        (if (eof-object? _%e165948%_)
            _%e165948%_
            (##structure AST::t _%e165948%_ (##readenv->locat _%re165947%_)))))
    (define __unwrap-syntax
      (lambda (_%re165944%_ _%e165945%_) (__AST-e _%e165945%_)))
    (define __pp-syntax
      (lambda (_%stx165942%_) (pp (__AST->datum _%stx165942%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt165940%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt165940%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt165940%_ '@list)
          (macro-readtable-brace-handler-set! _%rt165940%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt165940%_
           '#\!
           __read-sharp-bang)
          _%rt165940%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt165936%_ _%kw165937%_)
        (macro-readtable-bracket-handler-set! _%rt165936%_ _%kw165937%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt165933%_ _%kw165934%_)
        (macro-readtable-brace-handler-set! _%rt165933%_ _%kw165934%_)))
    (define __read-sharp-bang
      (lambda (_%re165924%_ _%next165925%_ _%start-pos165926%_)
        (if (eq? _%start-pos165926%_ '0)
            (let* ((_%line165928%_
                    (##read-line
                     (macro-readenv-port _%re165924%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line165930%_
                    (substring
                     _%line165928%_
                     '1
                     (string-length _%line165928%_))))
              (macro-readenv-script-line-set!
               _%re165924%_
               _%script-line165930%_)
              (##script-marker))
            (##read-sharp-bang
             _%re165924%_
             _%next165925%_
             _%start-pos165926%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj165922%_)
        (if (source-location? _%obj165922%_)
            (string? (##locat-container _%obj165922%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj165920%_)
        (if (##locat? _%obj165920%_)
            (##container->path (##locat-container _%obj165920%_))
            '#f)))))

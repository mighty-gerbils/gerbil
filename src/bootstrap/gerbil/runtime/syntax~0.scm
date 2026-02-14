(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1771093448)
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
      (lambda _%$args166068%_
        (apply make-instance SyntaxError::t _%$args166068%_)))
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
      (lambda (_%self165787%_ _%port165788%_)
        (let ((_%self165791%_ _%self165787%_))
          (letrec ((_%location165802%_
                    (lambda ()
                      (letrec ((_%from-irritants165943%_
                                (lambda ()
                                  (let _%lp166028%_ ((_%rest166030%_
                                                      (##unchecked-structure-ref
                                                       _%self165791%_
                                                       '3
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest166031166039%_
                                            _%rest166030%_)
                                           (_%else166033166047%_
                                            (lambda () '#f))
                                           (_%K166035166056%_
                                            (lambda (_%rest166050%_
                                                     _%hd166051%_)
                                              (let ((_%$e166053%_
                                                     (__AST-source
                                                      _%hd166051%_)))
                                                (if _%$e166053%_
                                                    _%$e166053%_
                                                    (_%lp166028%_
                                                     _%rest166050%_))))))
                                      (if (pair? _%rest166031166039%_)
                                          (let ((_%hd166036166059%_
                                                 (##car _%rest166031166039%_))
                                                (_%tl166037166061%_
                                                 (##cdr _%rest166031166039%_)))
                                            (let* ((_%hd166064%_
                                                    _%hd166036166059%_)
                                                   (_%rest166066%_
                                                    _%tl166037166061%_))
                                              (_%K166035166056%_
                                               _%rest166066%_
                                               _%hd166064%_)))
                                          (_%else166033166047%_))))))
                               (_%from-context165944%_
                                (lambda ()
                                  (let _%lp165950%_ ((_%rest165952%_
                                                      (##unchecked-structure-ref
                                                       _%self165791%_
                                                       '4
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest165953165961%_
                                            _%rest165952%_)
                                           (_%else165955165969%_
                                            (lambda () '#f))
                                           (_%K165957166015%_
                                            (lambda (_%rest165972%_
                                                     _%hd165973%_)
                                              (let* ((_%hd165974165984%_
                                                      _%hd165973%_)
                                                     (_%else165976165992%_
                                                      (lambda ()
                                                        (_%lp165950%_
                                                         _%rest165972%_)))
                                                     (_%K165978166000%_
                                                      (lambda (_%loc165995%_)
                                                        (let ((_%$e165997%_
                                                               (__AST-source
                                                                _%loc165995%_)))
                                                          (if _%$e165997%_
                                                              _%$e165997%_
                                                              (_%lp165950%_
                                                               _%rest165972%_))))))
                                                (if (pair? _%hd165974165984%_)
                                                    (let ((_%hd165979166003%_
                                                           (##car _%hd165974165984%_))
                                                          (_%tl165980166005%_
                                                           (##cdr _%hd165974165984%_)))
                                                      (if (##eq? _%hd165979166003%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '@)
                  (if (pair? _%tl165980166005%_)
                      (let ((_%hd165981166008%_ (##car _%tl165980166005%_))
                            (_%tl165982166010%_ (##cdr _%tl165980166005%_)))
                        (let ((_%loc166013%_ _%hd165981166008%_))
                          (if (null? _%tl165982166010%_)
                              (_%K165978166000%_ _%loc166013%_)
                              (_%else165976165992%_))))
                      (_%else165976165992%_))
                  (_%else165976165992%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else165976165992%_))))))
                                      (if (pair? _%rest165953165961%_)
                                          (let ((_%hd165958166018%_
                                                 (##car _%rest165953165961%_))
                                                (_%tl165959166020%_
                                                 (##cdr _%rest165953165961%_)))
                                            (let* ((_%hd166023%_
                                                    _%hd165958166018%_)
                                                   (_%rest166025%_
                                                    _%tl165959166020%_))
                                              (_%K165957166015%_
                                               _%rest166025%_
                                               _%hd166023%_)))
                                          (_%else165955165969%_)))))))
                        (let ((_%$e165946%_ (_%from-irritants165943%_)))
                          (if _%$e165946%_
                              _%$e165946%_
                              (_%from-context165944%_)))))))
            (call-with-parameters__1
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e165805%_ (_%location165802%_)))
                 (if _%$e165805%_
                     ((lambda (_%loc165808%_)
                        (##display-locat _%loc165808%_ '#t _%port165788%_))
                      _%$e165805%_)
                     (display '"?")))
               (newline)
               (displayln
                '"--- Syntax Error: "
                (##unchecked-structure-ref _%self165791%_ '2 '#f '#f))
               (let ((_%$e165811%_
                      (##unchecked-structure-ref _%self165791%_ '4 '#f '#f)))
                 (if _%$e165811%_
                     ((lambda (_%where165814%_)
                        (displayln '"--- Context: ")
                        (let _%lp165816%_ ((_%rest165818%_ _%where165814%_))
                          (let* ((_%rest165819165827%_ _%rest165818%_)
                                 (_%else165821165835%_ (lambda () '#!void))
                                 (_%K165823165885%_
                                  (lambda (_%rest165838%_ _%hd165839%_)
                                    (let* ((_%hd165840165850%_ _%hd165839%_)
                                           (_%else165842165858%_
                                            (lambda ()
                                              (displayln '" at " _%hd165839%_)
                                              (_%lp165816%_ _%rest165838%_)))
                                           (_%K165844165870%_
                                            (lambda (_%ctx165861%_)
                                              (let ((_%$e165863%_
                                                     (__AST-source
                                                      _%ctx165861%_)))
                                                (if _%$e165863%_
                                                    ((lambda (_%loc165866%_)
                                                       (display '" at ")
                                                       (##display-locat
                                                        _%loc165866%_
                                                        '#t
                                                        _%port165788%_)
                                                       (newline)
                                                       (_%lp165816%_
                                                        _%rest165838%_))
                                                     _%$e165863%_)
                                                    (if (##structure-instance-of?
                                                         _%ctx165861%_
                                                         'gerbil#AST::t)
                                                        (let ()
                                                          (display '" at ")
                                                          (__pp-syntax
                                                           _%ctx165861%_)
                                                          (_%lp165816%_
                                                           _%rest165838%_))
                                                        (_%lp165816%_
                                                         _%rest165838%_)))))))
                                      (if (pair? _%hd165840165850%_)
                                          (let ((_%hd165845165873%_
                                                 (##car _%hd165840165850%_))
                                                (_%tl165846165875%_
                                                 (##cdr _%hd165840165850%_)))
                                            (if (##eq? _%hd165845165873%_ '@)
                                                (if (pair? _%tl165846165875%_)
                                                    (let ((_%hd165847165878%_
                                                           (##car _%tl165846165875%_))
                                                          (_%tl165848165880%_
                                                           (##cdr _%tl165846165875%_)))
                                                      (let ((_%ctx165883%_
                                                             _%hd165847165878%_))
                                                        (if (null? _%tl165848165880%_)
                                                            (_%K165844165870%_
                                                             _%ctx165883%_)
                                                            (_%else165842165858%_))))
                                                    (_%else165842165858%_))
                                                (_%else165842165858%_)))
                                          (_%else165842165858%_))))))
                            (if (pair? _%rest165819165827%_)
                                (let ((_%hd165824165888%_
                                       (##car _%rest165819165827%_))
                                      (_%tl165825165890%_
                                       (##cdr _%rest165819165827%_)))
                                  (let* ((_%hd165893%_ _%hd165824165888%_)
                                         (_%rest165895%_ _%tl165825165890%_))
                                    (_%K165823165885%_
                                     _%rest165895%_
                                     _%hd165893%_)))
                                '#!void))))
                      _%$e165811%_)
                     '#!void))
               (let* ((_%self.irritants165896165904%_
                       (##unchecked-structure-ref _%self165791%_ '3 '#f '#f))
                      (_%else165898165912%_ (lambda () '#!void))
                      (_%K165900165925%_
                       (lambda (_%rest165915%_ _%stx165916%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx165916%_)
                         (for-each
                          (lambda (_%detail165918%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail165918%_))
                            (let ((_%$e165920%_
                                   (__AST-source _%detail165918%_)))
                              (if _%$e165920%_
                                  ((lambda (_%loc165923%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc165923%_
                                      '#t
                                      _%port165788%_))
                                   _%$e165920%_)
                                  '#!void))
                            (newline))
                          _%rest165915%_))))
                 (if (pair? _%self.irritants165896165904%_)
                     (let ((_%hd165901165928%_
                            (##car _%self.irritants165896165904%_))
                           (_%tl165902165930%_
                            (##cdr _%self.irritants165896165904%_)))
                       (let* ((_%stx165933%_ _%hd165901165928%_)
                              (_%rest165935%_ _%tl165902165930%_))
                         (_%K165900165925%_ _%rest165935%_ _%stx165933%_)))
                     '#!void))
               (if __DEBUG
                   (let ((_%cont165936165938%_
                          (##unchecked-structure-ref
                           _%self165791%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont165936165938%_
                         (let ((_%cont165940%_ _%cont165936165938%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont165940%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port165788%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (let* ((_%klass165650%_ SyntaxError::t) (_%klass165655%_ _%klass165650%_))
      (__seal-class! _%klass165655%_))
    (define make-syntax-error
      (lambda (_%message165643%_
               _%irritants165644%_
               _%where165645%_
               _%context165646%_
               _%marks165647%_
               _%phi165648%_)
        (let ((__obj166165
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj166165 _%message165643%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj166165
           _%irritants165644%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj166165 _%where165645%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj166165 _%context165646%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj166165 _%marks165647%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj166165 _%phi165648%_ '6 '#f '#f)
          __obj166165)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where165638%_
               _%message165639%_
               _%stx165640%_
               .
               _%details165641%_)
        (raise (make-syntax-error
                _%message165639%_
                (cons _%stx165640%_ _%details165641%_)
                _%where165638%_
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
      (lambda _%$args165635%_ (apply make-instance AST::t _%$args165635%_)))
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
      (lambda (_%stx165633%_)
        (if (##structure-instance-of? _%stx165633%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx165633%_ '1 '#f '#f)
            _%stx165633%_)))
    (define __AST-source
      (lambda (_%stx165624%_)
        (let _%lp165626%_ ((_%src165628%_ _%stx165624%_))
          (if (##structure-instance-of? _%src165628%_ 'gerbil#AST::t)
              (_%lp165626%_
               (##unchecked-structure-ref _%src165628%_ '2 '#f '#f))
              (if (##locat? _%src165628%_) _%src165628%_ '#f)))))
    (define __AST
      (lambda (_%e165616%_ _%src-stx165617%_)
        (let ((_%src165619%_ (__AST-source _%src-stx165617%_)))
          (if (or (##structure-instance-of? _%e165616%_ 'gerbil#AST::t)
                  (not _%src165619%_))
              _%e165616%_
              (##structure AST::t _%e165616%_ _%src165619%_)))))
    (define __AST-eq?
      (lambda (_%stx165613%_ _%obj165614%_)
        (eq? (__AST-e _%stx165613%_) _%obj165614%_)))
    (define __AST-pair?
      (lambda (_%stx165611%_) (pair? (__AST-e _%stx165611%_))))
    (define __AST-null?
      (lambda (_%stx165609%_) (null? (__AST-e _%stx165609%_))))
    (define __AST-datum?
      (lambda (_%stx165590%_)
        (let* ((_%e165592%_ (__AST-e _%stx165590%_))
               (_%$e165594%_ (number? _%e165592%_)))
          (if _%$e165594%_
              _%$e165594%_
              (let ((_%$e165597%_ (string? _%e165592%_)))
                (if _%$e165597%_
                    _%$e165597%_
                    (let ((_%$e165600%_ (char? _%e165592%_)))
                      (if _%$e165600%_
                          _%$e165600%_
                          (let ((_%$e165603%_ (keyword? _%e165592%_)))
                            (if _%$e165603%_
                                _%$e165603%_
                                (let ((_%$e165606%_ (boolean? _%e165592%_)))
                                  (if _%$e165606%_
                                      _%$e165606%_
                                      (eq? _%e165592%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx165588%_) (symbol? (__AST-e _%stx165588%_))))
    (define __AST-id-list?__%
      (lambda (_%stx165539%_ _%tail?165540%_)
        (let _%lp165542%_ ((_%rest165544%_ _%stx165539%_))
          (let* ((_%$e165546%_ _%rest165544%_)
                 (_%$E165548165561%_
                  (lambda ()
                    (let* ((_%$E165549165556%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e165546%_)))
                           (_%rest165559%_ _%$e165546%_))
                      (_%tail?165540%_ _%rest165559%_)))))
            (if (__AST-pair? _%$e165546%_)
                (let* ((_%$tgt165550165564%_ (__AST-e _%$e165546%_))
                       (_%$hd165551165567%_ (##car _%$tgt165550165564%_))
                       (_%$tl165552165570%_ (##cdr _%$tgt165550165564%_))
                       (_%hd165574%_ _%$hd165551165567%_)
                       (_%rest165576%_ _%$tl165552165570%_))
                  (if (__AST-id? _%hd165574%_)
                      (_%lp165542%_ _%rest165576%_)
                      '#f))
                (_%$E165548165561%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx165581%_)
        (let ((_%tail?165583%_ __AST-null?))
          (__AST-id-list?__% _%stx165581%_ _%tail?165583%_))))
    (define __AST-id-list?
      (lambda _g166167_
        (let ((_g166168_ (##length _g166167_)))
          (cond ((##fx= _g166168_ 1) (apply __AST-id-list?__0 _g166167_))
                ((##fx= _g166168_ 2) (apply __AST-id-list?__% _g166167_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g166167_))))))
    (define __AST-bind-list?
      (lambda (_%stx165531%_)
        (__AST-id-list?__%
         _%stx165531%_
         (lambda (_%e165533%_)
           (let ((_%$e165535%_ (__AST-null? _%e165533%_)))
             (if _%$e165535%_ _%$e165535%_ (__AST-id? _%e165533%_)))))))
    (define __AST-list?__%
      (lambda (_%stx165484%_ _%tail?165485%_)
        (let _%lp165487%_ ((_%rest165489%_ _%stx165484%_))
          (let* ((_%$e165491%_ _%rest165489%_)
                 (_%$E165493165506%_
                  (lambda ()
                    (let* ((_%$E165494165501%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e165491%_)))
                           (_%rest165504%_ _%$e165491%_))
                      (_%tail?165485%_ _%rest165504%_)))))
            (if (__AST-pair? _%$e165491%_)
                (let* ((_%$tgt165495165509%_ (__AST-e _%$e165491%_))
                       (_%$hd165496165512%_ (##car _%$tgt165495165509%_))
                       (_%$tl165497165515%_ (##cdr _%$tgt165495165509%_))
                       (_%rest165519%_ _%$tl165497165515%_))
                  (_%lp165487%_ _%rest165519%_))
                (_%$E165493165506%_))))))
    (define __AST-list?__0
      (lambda (_%stx165524%_)
        (let ((_%tail?165526%_ __AST-null?))
          (__AST-list?__% _%stx165524%_ _%tail?165526%_))))
    (define __AST-list?
      (lambda _g166169_
        (let ((_g166170_ (##length _g166169_)))
          (cond ((##fx= _g166170_ 1) (apply __AST-list?__0 _g166169_))
                ((##fx= _g166170_ 2) (apply __AST-list?__% _g166169_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g166169_))))))
    (define __AST->list
      (lambda (_%stx165449%_)
        (let* ((_%$e165451%_ _%stx165449%_)
               (_%$E165453165466%_
                (lambda ()
                  (let* ((_%$E165454165461%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e165451%_)))
                         (_%rest165464%_ _%$e165451%_))
                    (__AST-e _%rest165464%_)))))
          (if (__AST-pair? _%$e165451%_)
              (let* ((_%$tgt165455165469%_ (__AST-e _%$e165451%_))
                     (_%$hd165456165472%_ (##car _%$tgt165455165469%_))
                     (_%$tl165457165475%_ (##cdr _%$tgt165455165469%_))
                     (_%hd165479%_ _%$hd165456165472%_)
                     (_%rest165481%_ _%$tl165457165475%_))
                (cons _%hd165479%_ (__AST->list _%rest165481%_)))
              (_%$E165453165466%_)))))
    (define __AST->datum
      (lambda (_%stx165442%_)
        (if (##structure-instance-of? _%stx165442%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx165442%_))
            (if (pair? _%stx165442%_)
                (cons (__AST->datum (##car _%stx165442%_))
                      (__AST->datum (##cdr _%stx165442%_)))
                (if (vector? _%stx165442%_)
                    (vector-map __AST->datum _%stx165442%_)
                    (if (box? _%stx165442%_)
                        (box (__AST->datum (unbox _%stx165442%_)))
                        _%stx165442%_))))))
    (define get-readenv
      (lambda (_%port165440%_)
        (##make-readenv
         _%port165440%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in165428%_)
        (let ((_%e165430%_ (##read-datum-or-eof (get-readenv _%in165428%_))))
          (if (eof-object? (__AST-e _%e165430%_))
              (__AST-e _%e165430%_)
              _%e165430%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in165436%_ (current-input-port)))
          (read-syntax__% _%in165436%_))))
    (define read-syntax
      (lambda _g166171_
        (let ((_g166172_ (##length _g166171_)))
          (cond ((##fx= _g166172_ 0) (apply read-syntax__0 _g166171_))
                ((##fx= _g166172_ 1) (apply read-syntax__% _g166171_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g166171_))))))
    (define read-syntax-from-file
      (lambda (_%path165423%_)
        (let ((_%r165425%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path165423%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r165425%_)
              (cdr (__AST-e (vector-ref _%r165425%_ '1)))
              (error (err-code->string _%r165425%_) _%path165423%_)))))
    (define __wrap-syntax
      (lambda (_%re165420%_ _%e165421%_)
        (if (eof-object? _%e165421%_)
            _%e165421%_
            (##structure AST::t _%e165421%_ (##readenv->locat _%re165420%_)))))
    (define __unwrap-syntax
      (lambda (_%re165417%_ _%e165418%_) (__AST-e _%e165418%_)))
    (define __pp-syntax
      (lambda (_%stx165415%_) (pp (__AST->datum _%stx165415%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt165413%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt165413%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt165413%_ '@list)
          (macro-readtable-brace-handler-set! _%rt165413%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt165413%_
           '#\!
           __read-sharp-bang)
          _%rt165413%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt165409%_ _%kw165410%_)
        (macro-readtable-bracket-handler-set! _%rt165409%_ _%kw165410%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt165406%_ _%kw165407%_)
        (macro-readtable-brace-handler-set! _%rt165406%_ _%kw165407%_)))
    (define __read-sharp-bang
      (lambda (_%re165397%_ _%next165398%_ _%start-pos165399%_)
        (if (eq? _%start-pos165399%_ '0)
            (let* ((_%line165401%_
                    (##read-line
                     (macro-readenv-port _%re165397%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line165403%_
                    (substring
                     _%line165401%_
                     '1
                     (string-length _%line165401%_))))
              (macro-readenv-script-line-set!
               _%re165397%_
               _%script-line165403%_)
              (##script-marker))
            (##read-sharp-bang
             _%re165397%_
             _%next165398%_
             _%start-pos165399%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj165395%_)
        (if (source-location? _%obj165395%_)
            (string? (##locat-container _%obj165395%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj165393%_)
        (if (##locat? _%obj165393%_)
            (##container->path (##locat-container _%obj165393%_))
            '#f)))))

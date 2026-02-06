(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1770341476)
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
      (lambda _%$args134636%_
        (apply make-instance SyntaxError::t _%$args134636%_)))
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
      (lambda (_%self134355%_ _%port134356%_)
        (let ((_%self134359%_ _%self134355%_))
          (letrec ((_%location134370%_
                    (lambda ()
                      (letrec ((_%from-irritants134511%_
                                (lambda ()
                                  (let _%lp134596%_ ((_%rest134598%_
                                                      (##unchecked-structure-ref
                                                       _%self134359%_
                                                       '3
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest134599134607%_
                                            _%rest134598%_)
                                           (_%else134601134615%_
                                            (lambda () '#f))
                                           (_%K134603134624%_
                                            (lambda (_%rest134618%_
                                                     _%hd134619%_)
                                              (let ((_%$e134621%_
                                                     (__AST-source
                                                      _%hd134619%_)))
                                                (if _%$e134621%_
                                                    _%$e134621%_
                                                    (_%lp134596%_
                                                     _%rest134618%_))))))
                                      (if (pair? _%rest134599134607%_)
                                          (let ((_%hd134604134627%_
                                                 (##car _%rest134599134607%_))
                                                (_%tl134605134629%_
                                                 (##cdr _%rest134599134607%_)))
                                            (let* ((_%hd134632%_
                                                    _%hd134604134627%_)
                                                   (_%rest134634%_
                                                    _%tl134605134629%_))
                                              (_%K134603134624%_
                                               _%rest134634%_
                                               _%hd134632%_)))
                                          (_%else134601134615%_))))))
                               (_%from-context134512%_
                                (lambda ()
                                  (let _%lp134518%_ ((_%rest134520%_
                                                      (##unchecked-structure-ref
                                                       _%self134359%_
                                                       '4
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest134521134529%_
                                            _%rest134520%_)
                                           (_%else134523134537%_
                                            (lambda () '#f))
                                           (_%K134525134583%_
                                            (lambda (_%rest134540%_
                                                     _%hd134541%_)
                                              (let* ((_%hd134542134552%_
                                                      _%hd134541%_)
                                                     (_%else134544134560%_
                                                      (lambda ()
                                                        (_%lp134518%_
                                                         _%rest134540%_)))
                                                     (_%K134546134568%_
                                                      (lambda (_%loc134563%_)
                                                        (let ((_%$e134565%_
                                                               (__AST-source
                                                                _%loc134563%_)))
                                                          (if _%$e134565%_
                                                              _%$e134565%_
                                                              (_%lp134518%_
                                                               _%rest134540%_))))))
                                                (if (pair? _%hd134542134552%_)
                                                    (let ((_%hd134547134571%_
                                                           (##car _%hd134542134552%_))
                                                          (_%tl134548134573%_
                                                           (##cdr _%hd134542134552%_)))
                                                      (if (##eq? _%hd134547134571%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '@)
                  (if (pair? _%tl134548134573%_)
                      (let ((_%hd134549134576%_ (##car _%tl134548134573%_))
                            (_%tl134550134578%_ (##cdr _%tl134548134573%_)))
                        (let ((_%loc134581%_ _%hd134549134576%_))
                          (if (null? _%tl134550134578%_)
                              (_%K134546134568%_ _%loc134581%_)
                              (_%else134544134560%_))))
                      (_%else134544134560%_))
                  (_%else134544134560%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else134544134560%_))))))
                                      (if (pair? _%rest134521134529%_)
                                          (let ((_%hd134526134586%_
                                                 (##car _%rest134521134529%_))
                                                (_%tl134527134588%_
                                                 (##cdr _%rest134521134529%_)))
                                            (let* ((_%hd134591%_
                                                    _%hd134526134586%_)
                                                   (_%rest134593%_
                                                    _%tl134527134588%_))
                                              (_%K134525134583%_
                                               _%rest134593%_
                                               _%hd134591%_)))
                                          (_%else134523134537%_)))))))
                        (let ((_%$e134514%_ (_%from-irritants134511%_)))
                          (if _%$e134514%_
                              _%$e134514%_
                              (_%from-context134512%_)))))))
            (call-with-parameters__1
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e134373%_ (_%location134370%_)))
                 (if _%$e134373%_
                     ((lambda (_%loc134376%_)
                        (##display-locat _%loc134376%_ '#t _%port134356%_))
                      _%$e134373%_)
                     (display '"?")))
               (newline)
               (displayln
                '"--- Syntax Error: "
                (##unchecked-structure-ref _%self134359%_ '2 '#f '#f))
               (let ((_%$e134379%_
                      (##unchecked-structure-ref _%self134359%_ '4 '#f '#f)))
                 (if _%$e134379%_
                     ((lambda (_%where134382%_)
                        (displayln '"--- Context: ")
                        (let _%lp134384%_ ((_%rest134386%_ _%where134382%_))
                          (let* ((_%rest134387134395%_ _%rest134386%_)
                                 (_%else134389134403%_ (lambda () '#!void))
                                 (_%K134391134453%_
                                  (lambda (_%rest134406%_ _%hd134407%_)
                                    (let* ((_%hd134408134418%_ _%hd134407%_)
                                           (_%else134410134426%_
                                            (lambda ()
                                              (displayln '" at " _%hd134407%_)
                                              (_%lp134384%_ _%rest134406%_)))
                                           (_%K134412134438%_
                                            (lambda (_%ctx134429%_)
                                              (let ((_%$e134431%_
                                                     (__AST-source
                                                      _%ctx134429%_)))
                                                (if _%$e134431%_
                                                    ((lambda (_%loc134434%_)
                                                       (display '" at ")
                                                       (##display-locat
                                                        _%loc134434%_
                                                        '#t
                                                        _%port134356%_)
                                                       (newline)
                                                       (_%lp134384%_
                                                        _%rest134406%_))
                                                     _%$e134431%_)
                                                    (if (##structure-instance-of?
                                                         _%ctx134429%_
                                                         'gerbil#AST::t)
                                                        (let ()
                                                          (display '" at ")
                                                          (__pp-syntax
                                                           _%ctx134429%_)
                                                          (_%lp134384%_
                                                           _%rest134406%_))
                                                        (_%lp134384%_
                                                         _%rest134406%_)))))))
                                      (if (pair? _%hd134408134418%_)
                                          (let ((_%hd134413134441%_
                                                 (##car _%hd134408134418%_))
                                                (_%tl134414134443%_
                                                 (##cdr _%hd134408134418%_)))
                                            (if (##eq? _%hd134413134441%_ '@)
                                                (if (pair? _%tl134414134443%_)
                                                    (let ((_%hd134415134446%_
                                                           (##car _%tl134414134443%_))
                                                          (_%tl134416134448%_
                                                           (##cdr _%tl134414134443%_)))
                                                      (let ((_%ctx134451%_
                                                             _%hd134415134446%_))
                                                        (if (null? _%tl134416134448%_)
                                                            (_%K134412134438%_
                                                             _%ctx134451%_)
                                                            (_%else134410134426%_))))
                                                    (_%else134410134426%_))
                                                (_%else134410134426%_)))
                                          (_%else134410134426%_))))))
                            (if (pair? _%rest134387134395%_)
                                (let ((_%hd134392134456%_
                                       (##car _%rest134387134395%_))
                                      (_%tl134393134458%_
                                       (##cdr _%rest134387134395%_)))
                                  (let* ((_%hd134461%_ _%hd134392134456%_)
                                         (_%rest134463%_ _%tl134393134458%_))
                                    (_%K134391134453%_
                                     _%rest134463%_
                                     _%hd134461%_)))
                                '#!void))))
                      _%$e134379%_)
                     '#!void))
               (let* ((_%self.irritants134464134472%_
                       (##unchecked-structure-ref _%self134359%_ '3 '#f '#f))
                      (_%else134466134480%_ (lambda () '#!void))
                      (_%K134468134493%_
                       (lambda (_%rest134483%_ _%stx134484%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx134484%_)
                         (for-each
                          (lambda (_%detail134486%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail134486%_))
                            (let ((_%$e134488%_
                                   (__AST-source _%detail134486%_)))
                              (if _%$e134488%_
                                  ((lambda (_%loc134491%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc134491%_
                                      '#t
                                      _%port134356%_))
                                   _%$e134488%_)
                                  '#!void))
                            (newline))
                          _%rest134483%_))))
                 (if (pair? _%self.irritants134464134472%_)
                     (let ((_%hd134469134496%_
                            (##car _%self.irritants134464134472%_))
                           (_%tl134470134498%_
                            (##cdr _%self.irritants134464134472%_)))
                       (let* ((_%stx134501%_ _%hd134469134496%_)
                              (_%rest134503%_ _%tl134470134498%_))
                         (_%K134468134493%_ _%rest134503%_ _%stx134501%_)))
                     '#!void))
               (if __DEBUG
                   (let ((_%cont134504134506%_
                          (##unchecked-structure-ref
                           _%self134359%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont134504134506%_
                         (let ((_%cont134508%_ _%cont134504134506%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont134508%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port134356%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message134226%_
               _%irritants134227%_
               _%where134228%_
               _%context134229%_
               _%marks134230%_
               _%phi134231%_)
        (let ((__obj134733
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj134733 _%message134226%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj134733
           _%irritants134227%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj134733 _%where134228%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj134733 _%context134229%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj134733 _%marks134230%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj134733 _%phi134231%_ '6 '#f '#f)
          __obj134733)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where134221%_
               _%message134222%_
               _%stx134223%_
               .
               _%details134224%_)
        (raise (make-syntax-error
                _%message134222%_
                (cons _%stx134223%_ _%details134224%_)
                _%where134221%_
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
      (lambda _%$args134218%_ (apply make-instance AST::t _%$args134218%_)))
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
      (lambda (_%stx134216%_)
        (if (##structure-instance-of? _%stx134216%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx134216%_ '1 '#f '#f)
            _%stx134216%_)))
    (define __AST-source
      (lambda (_%stx134207%_)
        (let _%lp134209%_ ((_%src134211%_ _%stx134207%_))
          (if (##structure-instance-of? _%src134211%_ 'gerbil#AST::t)
              (_%lp134209%_
               (##unchecked-structure-ref _%src134211%_ '2 '#f '#f))
              (if (##locat? _%src134211%_) _%src134211%_ '#f)))))
    (define __AST
      (lambda (_%e134199%_ _%src-stx134200%_)
        (let ((_%src134202%_ (__AST-source _%src-stx134200%_)))
          (if (or (##structure-instance-of? _%e134199%_ 'gerbil#AST::t)
                  (not _%src134202%_))
              _%e134199%_
              (##structure AST::t _%e134199%_ _%src134202%_)))))
    (define __AST-eq?
      (lambda (_%stx134196%_ _%obj134197%_)
        (eq? (__AST-e _%stx134196%_) _%obj134197%_)))
    (define __AST-pair?
      (lambda (_%stx134194%_) (pair? (__AST-e _%stx134194%_))))
    (define __AST-null?
      (lambda (_%stx134192%_) (null? (__AST-e _%stx134192%_))))
    (define __AST-datum?
      (lambda (_%stx134173%_)
        (let* ((_%e134175%_ (__AST-e _%stx134173%_))
               (_%$e134177%_ (number? _%e134175%_)))
          (if _%$e134177%_
              _%$e134177%_
              (let ((_%$e134180%_ (string? _%e134175%_)))
                (if _%$e134180%_
                    _%$e134180%_
                    (let ((_%$e134183%_ (char? _%e134175%_)))
                      (if _%$e134183%_
                          _%$e134183%_
                          (let ((_%$e134186%_ (keyword? _%e134175%_)))
                            (if _%$e134186%_
                                _%$e134186%_
                                (let ((_%$e134189%_ (boolean? _%e134175%_)))
                                  (if _%$e134189%_
                                      _%$e134189%_
                                      (eq? _%e134175%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx134171%_) (symbol? (__AST-e _%stx134171%_))))
    (define __AST-id-list?__%
      (lambda (_%stx134122%_ _%tail?134123%_)
        (let _%lp134125%_ ((_%rest134127%_ _%stx134122%_))
          (let* ((_%$e134129%_ _%rest134127%_)
                 (_%$E134131134144%_
                  (lambda ()
                    (let* ((_%$E134132134139%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e134129%_)))
                           (_%rest134142%_ _%$e134129%_))
                      (_%tail?134123%_ _%rest134142%_)))))
            (if (__AST-pair? _%$e134129%_)
                (let* ((_%$tgt134133134147%_ (__AST-e _%$e134129%_))
                       (_%$hd134134134150%_ (##car _%$tgt134133134147%_))
                       (_%$tl134135134153%_ (##cdr _%$tgt134133134147%_))
                       (_%hd134157%_ _%$hd134134134150%_)
                       (_%rest134159%_ _%$tl134135134153%_))
                  (if (__AST-id? _%hd134157%_)
                      (_%lp134125%_ _%rest134159%_)
                      '#f))
                (_%$E134131134144%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx134164%_)
        (let ((_%tail?134166%_ __AST-null?))
          (__AST-id-list?__% _%stx134164%_ _%tail?134166%_))))
    (define __AST-id-list?
      (lambda _g134735_
        (let ((_g134736_ (##length _g134735_)))
          (cond ((##fx= _g134736_ 1) (apply __AST-id-list?__0 _g134735_))
                ((##fx= _g134736_ 2) (apply __AST-id-list?__% _g134735_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g134735_))))))
    (define __AST-bind-list?
      (lambda (_%stx134114%_)
        (__AST-id-list?__%
         _%stx134114%_
         (lambda (_%e134116%_)
           (let ((_%$e134118%_ (__AST-null? _%e134116%_)))
             (if _%$e134118%_ _%$e134118%_ (__AST-id? _%e134116%_)))))))
    (define __AST-list?__%
      (lambda (_%stx134067%_ _%tail?134068%_)
        (let _%lp134070%_ ((_%rest134072%_ _%stx134067%_))
          (let* ((_%$e134074%_ _%rest134072%_)
                 (_%$E134076134089%_
                  (lambda ()
                    (let* ((_%$E134077134084%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e134074%_)))
                           (_%rest134087%_ _%$e134074%_))
                      (_%tail?134068%_ _%rest134087%_)))))
            (if (__AST-pair? _%$e134074%_)
                (let* ((_%$tgt134078134092%_ (__AST-e _%$e134074%_))
                       (_%$hd134079134095%_ (##car _%$tgt134078134092%_))
                       (_%$tl134080134098%_ (##cdr _%$tgt134078134092%_))
                       (_%rest134102%_ _%$tl134080134098%_))
                  (_%lp134070%_ _%rest134102%_))
                (_%$E134076134089%_))))))
    (define __AST-list?__0
      (lambda (_%stx134107%_)
        (let ((_%tail?134109%_ __AST-null?))
          (__AST-list?__% _%stx134107%_ _%tail?134109%_))))
    (define __AST-list?
      (lambda _g134737_
        (let ((_g134738_ (##length _g134737_)))
          (cond ((##fx= _g134738_ 1) (apply __AST-list?__0 _g134737_))
                ((##fx= _g134738_ 2) (apply __AST-list?__% _g134737_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g134737_))))))
    (define __AST->list
      (lambda (_%stx134032%_)
        (let* ((_%$e134034%_ _%stx134032%_)
               (_%$E134036134049%_
                (lambda ()
                  (let* ((_%$E134037134044%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e134034%_)))
                         (_%rest134047%_ _%$e134034%_))
                    (__AST-e _%rest134047%_)))))
          (if (__AST-pair? _%$e134034%_)
              (let* ((_%$tgt134038134052%_ (__AST-e _%$e134034%_))
                     (_%$hd134039134055%_ (##car _%$tgt134038134052%_))
                     (_%$tl134040134058%_ (##cdr _%$tgt134038134052%_))
                     (_%hd134062%_ _%$hd134039134055%_)
                     (_%rest134064%_ _%$tl134040134058%_))
                (cons _%hd134062%_ (__AST->list _%rest134064%_)))
              (_%$E134036134049%_)))))
    (define __AST->datum
      (lambda (_%stx134025%_)
        (if (##structure-instance-of? _%stx134025%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx134025%_))
            (if (pair? _%stx134025%_)
                (cons (__AST->datum (##car _%stx134025%_))
                      (__AST->datum (##cdr _%stx134025%_)))
                (if (vector? _%stx134025%_)
                    (vector-map __AST->datum _%stx134025%_)
                    (if (box? _%stx134025%_)
                        (box (__AST->datum (unbox _%stx134025%_)))
                        _%stx134025%_))))))
    (define get-readenv
      (lambda (_%port134023%_)
        (##make-readenv
         _%port134023%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in134011%_)
        (let ((_%e134013%_ (##read-datum-or-eof (get-readenv _%in134011%_))))
          (if (eof-object? (__AST-e _%e134013%_))
              (__AST-e _%e134013%_)
              _%e134013%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in134019%_ (current-input-port)))
          (read-syntax__% _%in134019%_))))
    (define read-syntax
      (lambda _g134739_
        (let ((_g134740_ (##length _g134739_)))
          (cond ((##fx= _g134740_ 0) (apply read-syntax__0 _g134739_))
                ((##fx= _g134740_ 1) (apply read-syntax__% _g134739_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g134739_))))))
    (define read-syntax-from-file
      (lambda (_%path134006%_)
        (let ((_%r134008%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path134006%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r134008%_)
              (cdr (__AST-e (vector-ref _%r134008%_ '1)))
              (error (err-code->string _%r134008%_) _%path134006%_)))))
    (define __wrap-syntax
      (lambda (_%re134003%_ _%e134004%_)
        (if (eof-object? _%e134004%_)
            _%e134004%_
            (##structure AST::t _%e134004%_ (##readenv->locat _%re134003%_)))))
    (define __unwrap-syntax
      (lambda (_%re134000%_ _%e134001%_) (__AST-e _%e134001%_)))
    (define __pp-syntax
      (lambda (_%stx133998%_) (pp (__AST->datum _%stx133998%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt133996%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt133996%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt133996%_ '@list)
          (macro-readtable-brace-handler-set! _%rt133996%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt133996%_
           '#\!
           __read-sharp-bang)
          _%rt133996%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt133992%_ _%kw133993%_)
        (macro-readtable-bracket-handler-set! _%rt133992%_ _%kw133993%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt133989%_ _%kw133990%_)
        (macro-readtable-brace-handler-set! _%rt133989%_ _%kw133990%_)))
    (define __read-sharp-bang
      (lambda (_%re133980%_ _%next133981%_ _%start-pos133982%_)
        (if (eq? _%start-pos133982%_ '0)
            (let* ((_%line133984%_
                    (##read-line
                     (macro-readenv-port _%re133980%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line133986%_
                    (substring
                     _%line133984%_
                     '1
                     (string-length _%line133984%_))))
              (macro-readenv-script-line-set!
               _%re133980%_
               _%script-line133986%_)
              (##script-marker))
            (##read-sharp-bang
             _%re133980%_
             _%next133981%_
             _%start-pos133982%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj133978%_)
        (if (source-location? _%obj133978%_)
            (string? (##locat-container _%obj133978%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj133976%_)
        (if (##locat? _%obj133976%_)
            (##container->path (##locat-container _%obj133976%_))
            '#f)))))

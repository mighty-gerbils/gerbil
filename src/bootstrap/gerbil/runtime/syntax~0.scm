(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1770405373)
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
      (lambda _%$args163008%_
        (apply make-instance SyntaxError::t _%$args163008%_)))
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
      (lambda (_%self162727%_ _%port162728%_)
        (let ((_%self162731%_ _%self162727%_))
          (letrec ((_%location162742%_
                    (lambda ()
                      (letrec ((_%from-irritants162883%_
                                (lambda ()
                                  (let _%lp162968%_ ((_%rest162970%_
                                                      (##unchecked-structure-ref
                                                       _%self162731%_
                                                       '3
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest162971162979%_
                                            _%rest162970%_)
                                           (_%else162973162987%_
                                            (lambda () '#f))
                                           (_%K162975162996%_
                                            (lambda (_%rest162990%_
                                                     _%hd162991%_)
                                              (let ((_%$e162993%_
                                                     (__AST-source
                                                      _%hd162991%_)))
                                                (if _%$e162993%_
                                                    _%$e162993%_
                                                    (_%lp162968%_
                                                     _%rest162990%_))))))
                                      (if (pair? _%rest162971162979%_)
                                          (let ((_%hd162976162999%_
                                                 (##car _%rest162971162979%_))
                                                (_%tl162977163001%_
                                                 (##cdr _%rest162971162979%_)))
                                            (let* ((_%hd163004%_
                                                    _%hd162976162999%_)
                                                   (_%rest163006%_
                                                    _%tl162977163001%_))
                                              (_%K162975162996%_
                                               _%rest163006%_
                                               _%hd163004%_)))
                                          (_%else162973162987%_))))))
                               (_%from-context162884%_
                                (lambda ()
                                  (let _%lp162890%_ ((_%rest162892%_
                                                      (##unchecked-structure-ref
                                                       _%self162731%_
                                                       '4
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest162893162901%_
                                            _%rest162892%_)
                                           (_%else162895162909%_
                                            (lambda () '#f))
                                           (_%K162897162955%_
                                            (lambda (_%rest162912%_
                                                     _%hd162913%_)
                                              (let* ((_%hd162914162924%_
                                                      _%hd162913%_)
                                                     (_%else162916162932%_
                                                      (lambda ()
                                                        (_%lp162890%_
                                                         _%rest162912%_)))
                                                     (_%K162918162940%_
                                                      (lambda (_%loc162935%_)
                                                        (let ((_%$e162937%_
                                                               (__AST-source
                                                                _%loc162935%_)))
                                                          (if _%$e162937%_
                                                              _%$e162937%_
                                                              (_%lp162890%_
                                                               _%rest162912%_))))))
                                                (if (pair? _%hd162914162924%_)
                                                    (let ((_%hd162919162943%_
                                                           (##car _%hd162914162924%_))
                                                          (_%tl162920162945%_
                                                           (##cdr _%hd162914162924%_)))
                                                      (if (##eq? _%hd162919162943%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '@)
                  (if (pair? _%tl162920162945%_)
                      (let ((_%hd162921162948%_ (##car _%tl162920162945%_))
                            (_%tl162922162950%_ (##cdr _%tl162920162945%_)))
                        (let ((_%loc162953%_ _%hd162921162948%_))
                          (if (null? _%tl162922162950%_)
                              (_%K162918162940%_ _%loc162953%_)
                              (_%else162916162932%_))))
                      (_%else162916162932%_))
                  (_%else162916162932%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else162916162932%_))))))
                                      (if (pair? _%rest162893162901%_)
                                          (let ((_%hd162898162958%_
                                                 (##car _%rest162893162901%_))
                                                (_%tl162899162960%_
                                                 (##cdr _%rest162893162901%_)))
                                            (let* ((_%hd162963%_
                                                    _%hd162898162958%_)
                                                   (_%rest162965%_
                                                    _%tl162899162960%_))
                                              (_%K162897162955%_
                                               _%rest162965%_
                                               _%hd162963%_)))
                                          (_%else162895162909%_)))))))
                        (let ((_%$e162886%_ (_%from-irritants162883%_)))
                          (if _%$e162886%_
                              _%$e162886%_
                              (_%from-context162884%_)))))))
            (call-with-parameters__1
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e162745%_ (_%location162742%_)))
                 (if _%$e162745%_
                     ((lambda (_%loc162748%_)
                        (##display-locat _%loc162748%_ '#t _%port162728%_))
                      _%$e162745%_)
                     (display '"?")))
               (newline)
               (displayln
                '"--- Syntax Error: "
                (##unchecked-structure-ref _%self162731%_ '2 '#f '#f))
               (let ((_%$e162751%_
                      (##unchecked-structure-ref _%self162731%_ '4 '#f '#f)))
                 (if _%$e162751%_
                     ((lambda (_%where162754%_)
                        (displayln '"--- Context: ")
                        (let _%lp162756%_ ((_%rest162758%_ _%where162754%_))
                          (let* ((_%rest162759162767%_ _%rest162758%_)
                                 (_%else162761162775%_ (lambda () '#!void))
                                 (_%K162763162825%_
                                  (lambda (_%rest162778%_ _%hd162779%_)
                                    (let* ((_%hd162780162790%_ _%hd162779%_)
                                           (_%else162782162798%_
                                            (lambda ()
                                              (displayln '" at " _%hd162779%_)
                                              (_%lp162756%_ _%rest162778%_)))
                                           (_%K162784162810%_
                                            (lambda (_%ctx162801%_)
                                              (let ((_%$e162803%_
                                                     (__AST-source
                                                      _%ctx162801%_)))
                                                (if _%$e162803%_
                                                    ((lambda (_%loc162806%_)
                                                       (display '" at ")
                                                       (##display-locat
                                                        _%loc162806%_
                                                        '#t
                                                        _%port162728%_)
                                                       (newline)
                                                       (_%lp162756%_
                                                        _%rest162778%_))
                                                     _%$e162803%_)
                                                    (if (##structure-instance-of?
                                                         _%ctx162801%_
                                                         'gerbil#AST::t)
                                                        (let ()
                                                          (display '" at ")
                                                          (__pp-syntax
                                                           _%ctx162801%_)
                                                          (_%lp162756%_
                                                           _%rest162778%_))
                                                        (_%lp162756%_
                                                         _%rest162778%_)))))))
                                      (if (pair? _%hd162780162790%_)
                                          (let ((_%hd162785162813%_
                                                 (##car _%hd162780162790%_))
                                                (_%tl162786162815%_
                                                 (##cdr _%hd162780162790%_)))
                                            (if (##eq? _%hd162785162813%_ '@)
                                                (if (pair? _%tl162786162815%_)
                                                    (let ((_%hd162787162818%_
                                                           (##car _%tl162786162815%_))
                                                          (_%tl162788162820%_
                                                           (##cdr _%tl162786162815%_)))
                                                      (let ((_%ctx162823%_
                                                             _%hd162787162818%_))
                                                        (if (null? _%tl162788162820%_)
                                                            (_%K162784162810%_
                                                             _%ctx162823%_)
                                                            (_%else162782162798%_))))
                                                    (_%else162782162798%_))
                                                (_%else162782162798%_)))
                                          (_%else162782162798%_))))))
                            (if (pair? _%rest162759162767%_)
                                (let ((_%hd162764162828%_
                                       (##car _%rest162759162767%_))
                                      (_%tl162765162830%_
                                       (##cdr _%rest162759162767%_)))
                                  (let* ((_%hd162833%_ _%hd162764162828%_)
                                         (_%rest162835%_ _%tl162765162830%_))
                                    (_%K162763162825%_
                                     _%rest162835%_
                                     _%hd162833%_)))
                                '#!void))))
                      _%$e162751%_)
                     '#!void))
               (let* ((_%self.irritants162836162844%_
                       (##unchecked-structure-ref _%self162731%_ '3 '#f '#f))
                      (_%else162838162852%_ (lambda () '#!void))
                      (_%K162840162865%_
                       (lambda (_%rest162855%_ _%stx162856%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx162856%_)
                         (for-each
                          (lambda (_%detail162858%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail162858%_))
                            (let ((_%$e162860%_
                                   (__AST-source _%detail162858%_)))
                              (if _%$e162860%_
                                  ((lambda (_%loc162863%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc162863%_
                                      '#t
                                      _%port162728%_))
                                   _%$e162860%_)
                                  '#!void))
                            (newline))
                          _%rest162855%_))))
                 (if (pair? _%self.irritants162836162844%_)
                     (let ((_%hd162841162868%_
                            (##car _%self.irritants162836162844%_))
                           (_%tl162842162870%_
                            (##cdr _%self.irritants162836162844%_)))
                       (let* ((_%stx162873%_ _%hd162841162868%_)
                              (_%rest162875%_ _%tl162842162870%_))
                         (_%K162840162865%_ _%rest162875%_ _%stx162873%_)))
                     '#!void))
               (if __DEBUG
                   (let ((_%cont162876162878%_
                          (##unchecked-structure-ref
                           _%self162731%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont162876162878%_
                         (let ((_%cont162880%_ _%cont162876162878%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont162880%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port162728%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (let* ((_%klass162590%_ SyntaxError::t) (_%klass162595%_ _%klass162590%_))
      (__seal-class! _%klass162595%_))
    (define make-syntax-error
      (lambda (_%message162583%_
               _%irritants162584%_
               _%where162585%_
               _%context162586%_
               _%marks162587%_
               _%phi162588%_)
        (let ((__obj163105
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj163105 _%message162583%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj163105
           _%irritants162584%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj163105 _%where162585%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj163105 _%context162586%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj163105 _%marks162587%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj163105 _%phi162588%_ '6 '#f '#f)
          __obj163105)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where162578%_
               _%message162579%_
               _%stx162580%_
               .
               _%details162581%_)
        (raise (make-syntax-error
                _%message162579%_
                (cons _%stx162580%_ _%details162581%_)
                _%where162578%_
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
      (lambda _%$args162575%_ (apply make-instance AST::t _%$args162575%_)))
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
      (lambda (_%stx162573%_)
        (if (##structure-instance-of? _%stx162573%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx162573%_ '1 '#f '#f)
            _%stx162573%_)))
    (define __AST-source
      (lambda (_%stx162564%_)
        (let _%lp162566%_ ((_%src162568%_ _%stx162564%_))
          (if (##structure-instance-of? _%src162568%_ 'gerbil#AST::t)
              (_%lp162566%_
               (##unchecked-structure-ref _%src162568%_ '2 '#f '#f))
              (if (##locat? _%src162568%_) _%src162568%_ '#f)))))
    (define __AST
      (lambda (_%e162556%_ _%src-stx162557%_)
        (let ((_%src162559%_ (__AST-source _%src-stx162557%_)))
          (if (or (##structure-instance-of? _%e162556%_ 'gerbil#AST::t)
                  (not _%src162559%_))
              _%e162556%_
              (##structure AST::t _%e162556%_ _%src162559%_)))))
    (define __AST-eq?
      (lambda (_%stx162553%_ _%obj162554%_)
        (eq? (__AST-e _%stx162553%_) _%obj162554%_)))
    (define __AST-pair?
      (lambda (_%stx162551%_) (pair? (__AST-e _%stx162551%_))))
    (define __AST-null?
      (lambda (_%stx162549%_) (null? (__AST-e _%stx162549%_))))
    (define __AST-datum?
      (lambda (_%stx162530%_)
        (let* ((_%e162532%_ (__AST-e _%stx162530%_))
               (_%$e162534%_ (number? _%e162532%_)))
          (if _%$e162534%_
              _%$e162534%_
              (let ((_%$e162537%_ (string? _%e162532%_)))
                (if _%$e162537%_
                    _%$e162537%_
                    (let ((_%$e162540%_ (char? _%e162532%_)))
                      (if _%$e162540%_
                          _%$e162540%_
                          (let ((_%$e162543%_ (keyword? _%e162532%_)))
                            (if _%$e162543%_
                                _%$e162543%_
                                (let ((_%$e162546%_ (boolean? _%e162532%_)))
                                  (if _%$e162546%_
                                      _%$e162546%_
                                      (eq? _%e162532%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx162528%_) (symbol? (__AST-e _%stx162528%_))))
    (define __AST-id-list?__%
      (lambda (_%stx162479%_ _%tail?162480%_)
        (let _%lp162482%_ ((_%rest162484%_ _%stx162479%_))
          (let* ((_%$e162486%_ _%rest162484%_)
                 (_%$E162488162501%_
                  (lambda ()
                    (let* ((_%$E162489162496%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e162486%_)))
                           (_%rest162499%_ _%$e162486%_))
                      (_%tail?162480%_ _%rest162499%_)))))
            (if (__AST-pair? _%$e162486%_)
                (let* ((_%$tgt162490162504%_ (__AST-e _%$e162486%_))
                       (_%$hd162491162507%_ (##car _%$tgt162490162504%_))
                       (_%$tl162492162510%_ (##cdr _%$tgt162490162504%_))
                       (_%hd162514%_ _%$hd162491162507%_)
                       (_%rest162516%_ _%$tl162492162510%_))
                  (if (__AST-id? _%hd162514%_)
                      (_%lp162482%_ _%rest162516%_)
                      '#f))
                (_%$E162488162501%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx162521%_)
        (let ((_%tail?162523%_ __AST-null?))
          (__AST-id-list?__% _%stx162521%_ _%tail?162523%_))))
    (define __AST-id-list?
      (lambda _g163107_
        (let ((_g163108_ (##length _g163107_)))
          (cond ((##fx= _g163108_ 1) (apply __AST-id-list?__0 _g163107_))
                ((##fx= _g163108_ 2) (apply __AST-id-list?__% _g163107_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g163107_))))))
    (define __AST-bind-list?
      (lambda (_%stx162471%_)
        (__AST-id-list?__%
         _%stx162471%_
         (lambda (_%e162473%_)
           (let ((_%$e162475%_ (__AST-null? _%e162473%_)))
             (if _%$e162475%_ _%$e162475%_ (__AST-id? _%e162473%_)))))))
    (define __AST-list?__%
      (lambda (_%stx162424%_ _%tail?162425%_)
        (let _%lp162427%_ ((_%rest162429%_ _%stx162424%_))
          (let* ((_%$e162431%_ _%rest162429%_)
                 (_%$E162433162446%_
                  (lambda ()
                    (let* ((_%$E162434162441%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e162431%_)))
                           (_%rest162444%_ _%$e162431%_))
                      (_%tail?162425%_ _%rest162444%_)))))
            (if (__AST-pair? _%$e162431%_)
                (let* ((_%$tgt162435162449%_ (__AST-e _%$e162431%_))
                       (_%$hd162436162452%_ (##car _%$tgt162435162449%_))
                       (_%$tl162437162455%_ (##cdr _%$tgt162435162449%_))
                       (_%rest162459%_ _%$tl162437162455%_))
                  (_%lp162427%_ _%rest162459%_))
                (_%$E162433162446%_))))))
    (define __AST-list?__0
      (lambda (_%stx162464%_)
        (let ((_%tail?162466%_ __AST-null?))
          (__AST-list?__% _%stx162464%_ _%tail?162466%_))))
    (define __AST-list?
      (lambda _g163109_
        (let ((_g163110_ (##length _g163109_)))
          (cond ((##fx= _g163110_ 1) (apply __AST-list?__0 _g163109_))
                ((##fx= _g163110_ 2) (apply __AST-list?__% _g163109_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g163109_))))))
    (define __AST->list
      (lambda (_%stx162389%_)
        (let* ((_%$e162391%_ _%stx162389%_)
               (_%$E162393162406%_
                (lambda ()
                  (let* ((_%$E162394162401%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e162391%_)))
                         (_%rest162404%_ _%$e162391%_))
                    (__AST-e _%rest162404%_)))))
          (if (__AST-pair? _%$e162391%_)
              (let* ((_%$tgt162395162409%_ (__AST-e _%$e162391%_))
                     (_%$hd162396162412%_ (##car _%$tgt162395162409%_))
                     (_%$tl162397162415%_ (##cdr _%$tgt162395162409%_))
                     (_%hd162419%_ _%$hd162396162412%_)
                     (_%rest162421%_ _%$tl162397162415%_))
                (cons _%hd162419%_ (__AST->list _%rest162421%_)))
              (_%$E162393162406%_)))))
    (define __AST->datum
      (lambda (_%stx162382%_)
        (if (##structure-instance-of? _%stx162382%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx162382%_))
            (if (pair? _%stx162382%_)
                (cons (__AST->datum (##car _%stx162382%_))
                      (__AST->datum (##cdr _%stx162382%_)))
                (if (vector? _%stx162382%_)
                    (vector-map __AST->datum _%stx162382%_)
                    (if (box? _%stx162382%_)
                        (box (__AST->datum (unbox _%stx162382%_)))
                        _%stx162382%_))))))
    (define get-readenv
      (lambda (_%port162380%_)
        (##make-readenv
         _%port162380%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in162368%_)
        (let ((_%e162370%_ (##read-datum-or-eof (get-readenv _%in162368%_))))
          (if (eof-object? (__AST-e _%e162370%_))
              (__AST-e _%e162370%_)
              _%e162370%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in162376%_ (current-input-port)))
          (read-syntax__% _%in162376%_))))
    (define read-syntax
      (lambda _g163111_
        (let ((_g163112_ (##length _g163111_)))
          (cond ((##fx= _g163112_ 0) (apply read-syntax__0 _g163111_))
                ((##fx= _g163112_ 1) (apply read-syntax__% _g163111_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g163111_))))))
    (define read-syntax-from-file
      (lambda (_%path162363%_)
        (let ((_%r162365%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path162363%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r162365%_)
              (cdr (__AST-e (vector-ref _%r162365%_ '1)))
              (error (err-code->string _%r162365%_) _%path162363%_)))))
    (define __wrap-syntax
      (lambda (_%re162360%_ _%e162361%_)
        (if (eof-object? _%e162361%_)
            _%e162361%_
            (##structure AST::t _%e162361%_ (##readenv->locat _%re162360%_)))))
    (define __unwrap-syntax
      (lambda (_%re162357%_ _%e162358%_) (__AST-e _%e162358%_)))
    (define __pp-syntax
      (lambda (_%stx162355%_) (pp (__AST->datum _%stx162355%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt162353%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt162353%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt162353%_ '@list)
          (macro-readtable-brace-handler-set! _%rt162353%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt162353%_
           '#\!
           __read-sharp-bang)
          _%rt162353%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt162349%_ _%kw162350%_)
        (macro-readtable-bracket-handler-set! _%rt162349%_ _%kw162350%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt162346%_ _%kw162347%_)
        (macro-readtable-brace-handler-set! _%rt162346%_ _%kw162347%_)))
    (define __read-sharp-bang
      (lambda (_%re162337%_ _%next162338%_ _%start-pos162339%_)
        (if (eq? _%start-pos162339%_ '0)
            (let* ((_%line162341%_
                    (##read-line
                     (macro-readenv-port _%re162337%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line162343%_
                    (substring
                     _%line162341%_
                     '1
                     (string-length _%line162341%_))))
              (macro-readenv-script-line-set!
               _%re162337%_
               _%script-line162343%_)
              (##script-marker))
            (##read-sharp-bang
             _%re162337%_
             _%next162338%_
             _%start-pos162339%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj162335%_)
        (if (source-location? _%obj162335%_)
            (string? (##locat-container _%obj162335%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj162333%_)
        (if (##locat? _%obj162333%_)
            (##container->path (##locat-container _%obj162333%_))
            '#f)))))

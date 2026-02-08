(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1770513295)
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
      (lambda _%$args163100%_
        (apply make-instance SyntaxError::t _%$args163100%_)))
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
      (lambda (_%self162819%_ _%port162820%_)
        (let ((_%self162823%_ _%self162819%_))
          (letrec ((_%location162834%_
                    (lambda ()
                      (letrec ((_%from-irritants162975%_
                                (lambda ()
                                  (let _%lp163060%_ ((_%rest163062%_
                                                      (##unchecked-structure-ref
                                                       _%self162823%_
                                                       '3
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest163063163071%_
                                            _%rest163062%_)
                                           (_%else163065163079%_
                                            (lambda () '#f))
                                           (_%K163067163088%_
                                            (lambda (_%rest163082%_
                                                     _%hd163083%_)
                                              (let ((_%$e163085%_
                                                     (__AST-source
                                                      _%hd163083%_)))
                                                (if _%$e163085%_
                                                    _%$e163085%_
                                                    (_%lp163060%_
                                                     _%rest163082%_))))))
                                      (if (pair? _%rest163063163071%_)
                                          (let ((_%hd163068163091%_
                                                 (##car _%rest163063163071%_))
                                                (_%tl163069163093%_
                                                 (##cdr _%rest163063163071%_)))
                                            (let* ((_%hd163096%_
                                                    _%hd163068163091%_)
                                                   (_%rest163098%_
                                                    _%tl163069163093%_))
                                              (_%K163067163088%_
                                               _%rest163098%_
                                               _%hd163096%_)))
                                          (_%else163065163079%_))))))
                               (_%from-context162976%_
                                (lambda ()
                                  (let _%lp162982%_ ((_%rest162984%_
                                                      (##unchecked-structure-ref
                                                       _%self162823%_
                                                       '4
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest162985162993%_
                                            _%rest162984%_)
                                           (_%else162987163001%_
                                            (lambda () '#f))
                                           (_%K162989163047%_
                                            (lambda (_%rest163004%_
                                                     _%hd163005%_)
                                              (let* ((_%hd163006163016%_
                                                      _%hd163005%_)
                                                     (_%else163008163024%_
                                                      (lambda ()
                                                        (_%lp162982%_
                                                         _%rest163004%_)))
                                                     (_%K163010163032%_
                                                      (lambda (_%loc163027%_)
                                                        (let ((_%$e163029%_
                                                               (__AST-source
                                                                _%loc163027%_)))
                                                          (if _%$e163029%_
                                                              _%$e163029%_
                                                              (_%lp162982%_
                                                               _%rest163004%_))))))
                                                (if (pair? _%hd163006163016%_)
                                                    (let ((_%hd163011163035%_
                                                           (##car _%hd163006163016%_))
                                                          (_%tl163012163037%_
                                                           (##cdr _%hd163006163016%_)))
                                                      (if (##eq? _%hd163011163035%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '@)
                  (if (pair? _%tl163012163037%_)
                      (let ((_%hd163013163040%_ (##car _%tl163012163037%_))
                            (_%tl163014163042%_ (##cdr _%tl163012163037%_)))
                        (let ((_%loc163045%_ _%hd163013163040%_))
                          (if (null? _%tl163014163042%_)
                              (_%K163010163032%_ _%loc163045%_)
                              (_%else163008163024%_))))
                      (_%else163008163024%_))
                  (_%else163008163024%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else163008163024%_))))))
                                      (if (pair? _%rest162985162993%_)
                                          (let ((_%hd162990163050%_
                                                 (##car _%rest162985162993%_))
                                                (_%tl162991163052%_
                                                 (##cdr _%rest162985162993%_)))
                                            (let* ((_%hd163055%_
                                                    _%hd162990163050%_)
                                                   (_%rest163057%_
                                                    _%tl162991163052%_))
                                              (_%K162989163047%_
                                               _%rest163057%_
                                               _%hd163055%_)))
                                          (_%else162987163001%_)))))))
                        (let ((_%$e162978%_ (_%from-irritants162975%_)))
                          (if _%$e162978%_
                              _%$e162978%_
                              (_%from-context162976%_)))))))
            (call-with-parameters__1
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e162837%_ (_%location162834%_)))
                 (if _%$e162837%_
                     ((lambda (_%loc162840%_)
                        (##display-locat _%loc162840%_ '#t _%port162820%_))
                      _%$e162837%_)
                     (display '"?")))
               (newline)
               (displayln
                '"--- Syntax Error: "
                (##unchecked-structure-ref _%self162823%_ '2 '#f '#f))
               (let ((_%$e162843%_
                      (##unchecked-structure-ref _%self162823%_ '4 '#f '#f)))
                 (if _%$e162843%_
                     ((lambda (_%where162846%_)
                        (displayln '"--- Context: ")
                        (let _%lp162848%_ ((_%rest162850%_ _%where162846%_))
                          (let* ((_%rest162851162859%_ _%rest162850%_)
                                 (_%else162853162867%_ (lambda () '#!void))
                                 (_%K162855162917%_
                                  (lambda (_%rest162870%_ _%hd162871%_)
                                    (let* ((_%hd162872162882%_ _%hd162871%_)
                                           (_%else162874162890%_
                                            (lambda ()
                                              (displayln '" at " _%hd162871%_)
                                              (_%lp162848%_ _%rest162870%_)))
                                           (_%K162876162902%_
                                            (lambda (_%ctx162893%_)
                                              (let ((_%$e162895%_
                                                     (__AST-source
                                                      _%ctx162893%_)))
                                                (if _%$e162895%_
                                                    ((lambda (_%loc162898%_)
                                                       (display '" at ")
                                                       (##display-locat
                                                        _%loc162898%_
                                                        '#t
                                                        _%port162820%_)
                                                       (newline)
                                                       (_%lp162848%_
                                                        _%rest162870%_))
                                                     _%$e162895%_)
                                                    (if (##structure-instance-of?
                                                         _%ctx162893%_
                                                         'gerbil#AST::t)
                                                        (let ()
                                                          (display '" at ")
                                                          (__pp-syntax
                                                           _%ctx162893%_)
                                                          (_%lp162848%_
                                                           _%rest162870%_))
                                                        (_%lp162848%_
                                                         _%rest162870%_)))))))
                                      (if (pair? _%hd162872162882%_)
                                          (let ((_%hd162877162905%_
                                                 (##car _%hd162872162882%_))
                                                (_%tl162878162907%_
                                                 (##cdr _%hd162872162882%_)))
                                            (if (##eq? _%hd162877162905%_ '@)
                                                (if (pair? _%tl162878162907%_)
                                                    (let ((_%hd162879162910%_
                                                           (##car _%tl162878162907%_))
                                                          (_%tl162880162912%_
                                                           (##cdr _%tl162878162907%_)))
                                                      (let ((_%ctx162915%_
                                                             _%hd162879162910%_))
                                                        (if (null? _%tl162880162912%_)
                                                            (_%K162876162902%_
                                                             _%ctx162915%_)
                                                            (_%else162874162890%_))))
                                                    (_%else162874162890%_))
                                                (_%else162874162890%_)))
                                          (_%else162874162890%_))))))
                            (if (pair? _%rest162851162859%_)
                                (let ((_%hd162856162920%_
                                       (##car _%rest162851162859%_))
                                      (_%tl162857162922%_
                                       (##cdr _%rest162851162859%_)))
                                  (let* ((_%hd162925%_ _%hd162856162920%_)
                                         (_%rest162927%_ _%tl162857162922%_))
                                    (_%K162855162917%_
                                     _%rest162927%_
                                     _%hd162925%_)))
                                '#!void))))
                      _%$e162843%_)
                     '#!void))
               (let* ((_%self.irritants162928162936%_
                       (##unchecked-structure-ref _%self162823%_ '3 '#f '#f))
                      (_%else162930162944%_ (lambda () '#!void))
                      (_%K162932162957%_
                       (lambda (_%rest162947%_ _%stx162948%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx162948%_)
                         (for-each
                          (lambda (_%detail162950%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail162950%_))
                            (let ((_%$e162952%_
                                   (__AST-source _%detail162950%_)))
                              (if _%$e162952%_
                                  ((lambda (_%loc162955%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc162955%_
                                      '#t
                                      _%port162820%_))
                                   _%$e162952%_)
                                  '#!void))
                            (newline))
                          _%rest162947%_))))
                 (if (pair? _%self.irritants162928162936%_)
                     (let ((_%hd162933162960%_
                            (##car _%self.irritants162928162936%_))
                           (_%tl162934162962%_
                            (##cdr _%self.irritants162928162936%_)))
                       (let* ((_%stx162965%_ _%hd162933162960%_)
                              (_%rest162967%_ _%tl162934162962%_))
                         (_%K162932162957%_ _%rest162967%_ _%stx162965%_)))
                     '#!void))
               (if __DEBUG
                   (let ((_%cont162968162970%_
                          (##unchecked-structure-ref
                           _%self162823%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont162968162970%_
                         (let ((_%cont162972%_ _%cont162968162970%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont162972%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port162820%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (let* ((_%klass162682%_ SyntaxError::t) (_%klass162687%_ _%klass162682%_))
      (__seal-class! _%klass162687%_))
    (define make-syntax-error
      (lambda (_%message162675%_
               _%irritants162676%_
               _%where162677%_
               _%context162678%_
               _%marks162679%_
               _%phi162680%_)
        (let ((__obj163197
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj163197 _%message162675%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj163197
           _%irritants162676%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj163197 _%where162677%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj163197 _%context162678%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj163197 _%marks162679%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj163197 _%phi162680%_ '6 '#f '#f)
          __obj163197)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where162670%_
               _%message162671%_
               _%stx162672%_
               .
               _%details162673%_)
        (raise (make-syntax-error
                _%message162671%_
                (cons _%stx162672%_ _%details162673%_)
                _%where162670%_
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
      (lambda _%$args162667%_ (apply make-instance AST::t _%$args162667%_)))
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
      (lambda (_%stx162665%_)
        (if (##structure-instance-of? _%stx162665%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx162665%_ '1 '#f '#f)
            _%stx162665%_)))
    (define __AST-source
      (lambda (_%stx162656%_)
        (let _%lp162658%_ ((_%src162660%_ _%stx162656%_))
          (if (##structure-instance-of? _%src162660%_ 'gerbil#AST::t)
              (_%lp162658%_
               (##unchecked-structure-ref _%src162660%_ '2 '#f '#f))
              (if (##locat? _%src162660%_) _%src162660%_ '#f)))))
    (define __AST
      (lambda (_%e162648%_ _%src-stx162649%_)
        (let ((_%src162651%_ (__AST-source _%src-stx162649%_)))
          (if (or (##structure-instance-of? _%e162648%_ 'gerbil#AST::t)
                  (not _%src162651%_))
              _%e162648%_
              (##structure AST::t _%e162648%_ _%src162651%_)))))
    (define __AST-eq?
      (lambda (_%stx162645%_ _%obj162646%_)
        (eq? (__AST-e _%stx162645%_) _%obj162646%_)))
    (define __AST-pair?
      (lambda (_%stx162643%_) (pair? (__AST-e _%stx162643%_))))
    (define __AST-null?
      (lambda (_%stx162641%_) (null? (__AST-e _%stx162641%_))))
    (define __AST-datum?
      (lambda (_%stx162622%_)
        (let* ((_%e162624%_ (__AST-e _%stx162622%_))
               (_%$e162626%_ (number? _%e162624%_)))
          (if _%$e162626%_
              _%$e162626%_
              (let ((_%$e162629%_ (string? _%e162624%_)))
                (if _%$e162629%_
                    _%$e162629%_
                    (let ((_%$e162632%_ (char? _%e162624%_)))
                      (if _%$e162632%_
                          _%$e162632%_
                          (let ((_%$e162635%_ (keyword? _%e162624%_)))
                            (if _%$e162635%_
                                _%$e162635%_
                                (let ((_%$e162638%_ (boolean? _%e162624%_)))
                                  (if _%$e162638%_
                                      _%$e162638%_
                                      (eq? _%e162624%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx162620%_) (symbol? (__AST-e _%stx162620%_))))
    (define __AST-id-list?__%
      (lambda (_%stx162571%_ _%tail?162572%_)
        (let _%lp162574%_ ((_%rest162576%_ _%stx162571%_))
          (let* ((_%$e162578%_ _%rest162576%_)
                 (_%$E162580162593%_
                  (lambda ()
                    (let* ((_%$E162581162588%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e162578%_)))
                           (_%rest162591%_ _%$e162578%_))
                      (_%tail?162572%_ _%rest162591%_)))))
            (if (__AST-pair? _%$e162578%_)
                (let* ((_%$tgt162582162596%_ (__AST-e _%$e162578%_))
                       (_%$hd162583162599%_ (##car _%$tgt162582162596%_))
                       (_%$tl162584162602%_ (##cdr _%$tgt162582162596%_))
                       (_%hd162606%_ _%$hd162583162599%_)
                       (_%rest162608%_ _%$tl162584162602%_))
                  (if (__AST-id? _%hd162606%_)
                      (_%lp162574%_ _%rest162608%_)
                      '#f))
                (_%$E162580162593%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx162613%_)
        (let ((_%tail?162615%_ __AST-null?))
          (__AST-id-list?__% _%stx162613%_ _%tail?162615%_))))
    (define __AST-id-list?
      (lambda _g163199_
        (let ((_g163200_ (##length _g163199_)))
          (cond ((##fx= _g163200_ 1) (apply __AST-id-list?__0 _g163199_))
                ((##fx= _g163200_ 2) (apply __AST-id-list?__% _g163199_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g163199_))))))
    (define __AST-bind-list?
      (lambda (_%stx162563%_)
        (__AST-id-list?__%
         _%stx162563%_
         (lambda (_%e162565%_)
           (let ((_%$e162567%_ (__AST-null? _%e162565%_)))
             (if _%$e162567%_ _%$e162567%_ (__AST-id? _%e162565%_)))))))
    (define __AST-list?__%
      (lambda (_%stx162516%_ _%tail?162517%_)
        (let _%lp162519%_ ((_%rest162521%_ _%stx162516%_))
          (let* ((_%$e162523%_ _%rest162521%_)
                 (_%$E162525162538%_
                  (lambda ()
                    (let* ((_%$E162526162533%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e162523%_)))
                           (_%rest162536%_ _%$e162523%_))
                      (_%tail?162517%_ _%rest162536%_)))))
            (if (__AST-pair? _%$e162523%_)
                (let* ((_%$tgt162527162541%_ (__AST-e _%$e162523%_))
                       (_%$hd162528162544%_ (##car _%$tgt162527162541%_))
                       (_%$tl162529162547%_ (##cdr _%$tgt162527162541%_))
                       (_%rest162551%_ _%$tl162529162547%_))
                  (_%lp162519%_ _%rest162551%_))
                (_%$E162525162538%_))))))
    (define __AST-list?__0
      (lambda (_%stx162556%_)
        (let ((_%tail?162558%_ __AST-null?))
          (__AST-list?__% _%stx162556%_ _%tail?162558%_))))
    (define __AST-list?
      (lambda _g163201_
        (let ((_g163202_ (##length _g163201_)))
          (cond ((##fx= _g163202_ 1) (apply __AST-list?__0 _g163201_))
                ((##fx= _g163202_ 2) (apply __AST-list?__% _g163201_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g163201_))))))
    (define __AST->list
      (lambda (_%stx162481%_)
        (let* ((_%$e162483%_ _%stx162481%_)
               (_%$E162485162498%_
                (lambda ()
                  (let* ((_%$E162486162493%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e162483%_)))
                         (_%rest162496%_ _%$e162483%_))
                    (__AST-e _%rest162496%_)))))
          (if (__AST-pair? _%$e162483%_)
              (let* ((_%$tgt162487162501%_ (__AST-e _%$e162483%_))
                     (_%$hd162488162504%_ (##car _%$tgt162487162501%_))
                     (_%$tl162489162507%_ (##cdr _%$tgt162487162501%_))
                     (_%hd162511%_ _%$hd162488162504%_)
                     (_%rest162513%_ _%$tl162489162507%_))
                (cons _%hd162511%_ (__AST->list _%rest162513%_)))
              (_%$E162485162498%_)))))
    (define __AST->datum
      (lambda (_%stx162474%_)
        (if (##structure-instance-of? _%stx162474%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx162474%_))
            (if (pair? _%stx162474%_)
                (cons (__AST->datum (##car _%stx162474%_))
                      (__AST->datum (##cdr _%stx162474%_)))
                (if (vector? _%stx162474%_)
                    (vector-map __AST->datum _%stx162474%_)
                    (if (box? _%stx162474%_)
                        (box (__AST->datum (unbox _%stx162474%_)))
                        _%stx162474%_))))))
    (define get-readenv
      (lambda (_%port162472%_)
        (##make-readenv
         _%port162472%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in162460%_)
        (let ((_%e162462%_ (##read-datum-or-eof (get-readenv _%in162460%_))))
          (if (eof-object? (__AST-e _%e162462%_))
              (__AST-e _%e162462%_)
              _%e162462%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in162468%_ (current-input-port)))
          (read-syntax__% _%in162468%_))))
    (define read-syntax
      (lambda _g163203_
        (let ((_g163204_ (##length _g163203_)))
          (cond ((##fx= _g163204_ 0) (apply read-syntax__0 _g163203_))
                ((##fx= _g163204_ 1) (apply read-syntax__% _g163203_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g163203_))))))
    (define read-syntax-from-file
      (lambda (_%path162455%_)
        (let ((_%r162457%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path162455%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r162457%_)
              (cdr (__AST-e (vector-ref _%r162457%_ '1)))
              (error (err-code->string _%r162457%_) _%path162455%_)))))
    (define __wrap-syntax
      (lambda (_%re162452%_ _%e162453%_)
        (if (eof-object? _%e162453%_)
            _%e162453%_
            (##structure AST::t _%e162453%_ (##readenv->locat _%re162452%_)))))
    (define __unwrap-syntax
      (lambda (_%re162449%_ _%e162450%_) (__AST-e _%e162450%_)))
    (define __pp-syntax
      (lambda (_%stx162447%_) (pp (__AST->datum _%stx162447%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt162445%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt162445%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt162445%_ '@list)
          (macro-readtable-brace-handler-set! _%rt162445%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt162445%_
           '#\!
           __read-sharp-bang)
          _%rt162445%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt162441%_ _%kw162442%_)
        (macro-readtable-bracket-handler-set! _%rt162441%_ _%kw162442%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt162438%_ _%kw162439%_)
        (macro-readtable-brace-handler-set! _%rt162438%_ _%kw162439%_)))
    (define __read-sharp-bang
      (lambda (_%re162429%_ _%next162430%_ _%start-pos162431%_)
        (if (eq? _%start-pos162431%_ '0)
            (let* ((_%line162433%_
                    (##read-line
                     (macro-readenv-port _%re162429%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line162435%_
                    (substring
                     _%line162433%_
                     '1
                     (string-length _%line162433%_))))
              (macro-readenv-script-line-set!
               _%re162429%_
               _%script-line162435%_)
              (##script-marker))
            (##read-sharp-bang
             _%re162429%_
             _%next162430%_
             _%start-pos162431%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj162427%_)
        (if (source-location? _%obj162427%_)
            (string? (##locat-container _%obj162427%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj162425%_)
        (if (##locat? _%obj162425%_)
            (##container->path (##locat-container _%obj162425%_))
            '#f)))))

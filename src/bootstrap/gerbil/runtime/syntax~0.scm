(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1773012984)
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
      (lambda _%$args167143%_
        (apply make-instance SyntaxError::t _%$args167143%_)))
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
      (lambda (_%self166862%_ _%port166863%_)
        (let ((_%self166866%_ _%self166862%_))
          (letrec ((_%location166877%_
                    (lambda ()
                      (letrec ((_%from-irritants167018%_
                                (lambda ()
                                  (let _%lp167103%_ ((_%rest167105%_
                                                      (##unchecked-structure-ref
                                                       _%self166866%_
                                                       '3
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest167106167114%_
                                            _%rest167105%_)
                                           (_%else167108167122%_
                                            (lambda () '#f))
                                           (_%K167110167131%_
                                            (lambda (_%rest167125%_
                                                     _%hd167126%_)
                                              (let ((_%$e167128%_
                                                     (__AST-source
                                                      _%hd167126%_)))
                                                (if _%$e167128%_
                                                    _%$e167128%_
                                                    (_%lp167103%_
                                                     _%rest167125%_))))))
                                      (if (pair? _%rest167106167114%_)
                                          (let ((_%hd167111167134%_
                                                 (##car _%rest167106167114%_))
                                                (_%tl167112167136%_
                                                 (##cdr _%rest167106167114%_)))
                                            (let* ((_%hd167139%_
                                                    _%hd167111167134%_)
                                                   (_%rest167141%_
                                                    _%tl167112167136%_))
                                              (_%K167110167131%_
                                               _%rest167141%_
                                               _%hd167139%_)))
                                          (_%else167108167122%_))))))
                               (_%from-context167019%_
                                (lambda ()
                                  (let _%lp167025%_ ((_%rest167027%_
                                                      (##unchecked-structure-ref
                                                       _%self166866%_
                                                       '4
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest167028167036%_
                                            _%rest167027%_)
                                           (_%else167030167044%_
                                            (lambda () '#f))
                                           (_%K167032167090%_
                                            (lambda (_%rest167047%_
                                                     _%hd167048%_)
                                              (let* ((_%hd167049167059%_
                                                      _%hd167048%_)
                                                     (_%else167051167067%_
                                                      (lambda ()
                                                        (_%lp167025%_
                                                         _%rest167047%_)))
                                                     (_%K167053167075%_
                                                      (lambda (_%loc167070%_)
                                                        (let ((_%$e167072%_
                                                               (__AST-source
                                                                _%loc167070%_)))
                                                          (if _%$e167072%_
                                                              _%$e167072%_
                                                              (_%lp167025%_
                                                               _%rest167047%_))))))
                                                (if (pair? _%hd167049167059%_)
                                                    (let ((_%hd167054167078%_
                                                           (##car _%hd167049167059%_))
                                                          (_%tl167055167080%_
                                                           (##cdr _%hd167049167059%_)))
                                                      (if (##eq? _%hd167054167078%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '@)
                  (if (pair? _%tl167055167080%_)
                      (let ((_%hd167056167083%_ (##car _%tl167055167080%_))
                            (_%tl167057167085%_ (##cdr _%tl167055167080%_)))
                        (let ((_%loc167088%_ _%hd167056167083%_))
                          (if (null? _%tl167057167085%_)
                              (_%K167053167075%_ _%loc167088%_)
                              (_%else167051167067%_))))
                      (_%else167051167067%_))
                  (_%else167051167067%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else167051167067%_))))))
                                      (if (pair? _%rest167028167036%_)
                                          (let ((_%hd167033167093%_
                                                 (##car _%rest167028167036%_))
                                                (_%tl167034167095%_
                                                 (##cdr _%rest167028167036%_)))
                                            (let* ((_%hd167098%_
                                                    _%hd167033167093%_)
                                                   (_%rest167100%_
                                                    _%tl167034167095%_))
                                              (_%K167032167090%_
                                               _%rest167100%_
                                               _%hd167098%_)))
                                          (_%else167030167044%_)))))))
                        (let ((_%$e167021%_ (_%from-irritants167018%_)))
                          (if _%$e167021%_
                              _%$e167021%_
                              (_%from-context167019%_)))))))
            (call-with-parameters__1
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e166880%_ (_%location166877%_)))
                 (if _%$e166880%_
                     ((lambda (_%loc166883%_)
                        (##display-locat _%loc166883%_ '#t _%port166863%_))
                      _%$e166880%_)
                     (display '"?")))
               (newline)
               (displayln
                '"--- Syntax Error: "
                (##unchecked-structure-ref _%self166866%_ '2 '#f '#f))
               (let ((_%$e166886%_
                      (##unchecked-structure-ref _%self166866%_ '4 '#f '#f)))
                 (if _%$e166886%_
                     ((lambda (_%where166889%_)
                        (displayln '"--- Context: ")
                        (let _%lp166891%_ ((_%rest166893%_ _%where166889%_))
                          (let* ((_%rest166894166902%_ _%rest166893%_)
                                 (_%else166896166910%_ (lambda () '#!void))
                                 (_%K166898166960%_
                                  (lambda (_%rest166913%_ _%hd166914%_)
                                    (let* ((_%hd166915166925%_ _%hd166914%_)
                                           (_%else166917166933%_
                                            (lambda ()
                                              (displayln '" at " _%hd166914%_)
                                              (_%lp166891%_ _%rest166913%_)))
                                           (_%K166919166945%_
                                            (lambda (_%ctx166936%_)
                                              (let ((_%$e166938%_
                                                     (__AST-source
                                                      _%ctx166936%_)))
                                                (if _%$e166938%_
                                                    ((lambda (_%loc166941%_)
                                                       (display '" at ")
                                                       (##display-locat
                                                        _%loc166941%_
                                                        '#t
                                                        _%port166863%_)
                                                       (newline)
                                                       (_%lp166891%_
                                                        _%rest166913%_))
                                                     _%$e166938%_)
                                                    (if (##structure-instance-of?
                                                         _%ctx166936%_
                                                         'gerbil#AST::t)
                                                        (let ()
                                                          (display '" at ")
                                                          (__pp-syntax
                                                           _%ctx166936%_)
                                                          (_%lp166891%_
                                                           _%rest166913%_))
                                                        (_%lp166891%_
                                                         _%rest166913%_)))))))
                                      (if (pair? _%hd166915166925%_)
                                          (let ((_%hd166920166948%_
                                                 (##car _%hd166915166925%_))
                                                (_%tl166921166950%_
                                                 (##cdr _%hd166915166925%_)))
                                            (if (##eq? _%hd166920166948%_ '@)
                                                (if (pair? _%tl166921166950%_)
                                                    (let ((_%hd166922166953%_
                                                           (##car _%tl166921166950%_))
                                                          (_%tl166923166955%_
                                                           (##cdr _%tl166921166950%_)))
                                                      (let ((_%ctx166958%_
                                                             _%hd166922166953%_))
                                                        (if (null? _%tl166923166955%_)
                                                            (_%K166919166945%_
                                                             _%ctx166958%_)
                                                            (_%else166917166933%_))))
                                                    (_%else166917166933%_))
                                                (_%else166917166933%_)))
                                          (_%else166917166933%_))))))
                            (if (pair? _%rest166894166902%_)
                                (let ((_%hd166899166963%_
                                       (##car _%rest166894166902%_))
                                      (_%tl166900166965%_
                                       (##cdr _%rest166894166902%_)))
                                  (let* ((_%hd166968%_ _%hd166899166963%_)
                                         (_%rest166970%_ _%tl166900166965%_))
                                    (_%K166898166960%_
                                     _%rest166970%_
                                     _%hd166968%_)))
                                '#!void))))
                      _%$e166886%_)
                     '#!void))
               (let* ((_%self.irritants166971166979%_
                       (##unchecked-structure-ref _%self166866%_ '3 '#f '#f))
                      (_%else166973166987%_ (lambda () '#!void))
                      (_%K166975167000%_
                       (lambda (_%rest166990%_ _%stx166991%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx166991%_)
                         (for-each
                          (lambda (_%detail166993%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail166993%_))
                            (let ((_%$e166995%_
                                   (__AST-source _%detail166993%_)))
                              (if _%$e166995%_
                                  ((lambda (_%loc166998%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc166998%_
                                      '#t
                                      _%port166863%_))
                                   _%$e166995%_)
                                  '#!void))
                            (newline))
                          _%rest166990%_))))
                 (if (pair? _%self.irritants166971166979%_)
                     (let ((_%hd166976167003%_
                            (##car _%self.irritants166971166979%_))
                           (_%tl166977167005%_
                            (##cdr _%self.irritants166971166979%_)))
                       (let* ((_%stx167008%_ _%hd166976167003%_)
                              (_%rest167010%_ _%tl166977167005%_))
                         (_%K166975167000%_ _%rest167010%_ _%stx167008%_)))
                     '#!void))
               (if __DEBUG
                   (let ((_%cont167011167013%_
                          (##unchecked-structure-ref
                           _%self166866%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont167011167013%_
                         (let ((_%cont167015%_ _%cont167011167013%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont167015%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port166863%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (let* ((_%klass166725%_ SyntaxError::t) (_%klass166730%_ _%klass166725%_))
      (__seal-class! _%klass166730%_))
    (define make-syntax-error
      (lambda (_%message166718%_
               _%irritants166719%_
               _%where166720%_
               _%context166721%_
               _%marks166722%_
               _%phi166723%_)
        (let ((__obj167240
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj167240 _%message166718%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj167240
           _%irritants166719%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj167240 _%where166720%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj167240 _%context166721%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj167240 _%marks166722%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj167240 _%phi166723%_ '6 '#f '#f)
          __obj167240)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where166713%_
               _%message166714%_
               _%stx166715%_
               .
               _%details166716%_)
        (raise (make-syntax-error
                _%message166714%_
                (cons _%stx166715%_ _%details166716%_)
                _%where166713%_
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
      (lambda _%$args166710%_ (apply make-instance AST::t _%$args166710%_)))
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
      (lambda (_%stx166708%_)
        (if (##structure-instance-of? _%stx166708%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx166708%_ '1 '#f '#f)
            _%stx166708%_)))
    (define __AST-source
      (lambda (_%stx166699%_)
        (let _%lp166701%_ ((_%src166703%_ _%stx166699%_))
          (if (##structure-instance-of? _%src166703%_ 'gerbil#AST::t)
              (_%lp166701%_
               (##unchecked-structure-ref _%src166703%_ '2 '#f '#f))
              (if (##locat? _%src166703%_) _%src166703%_ '#f)))))
    (define __AST
      (lambda (_%e166691%_ _%src-stx166692%_)
        (let ((_%src166694%_ (__AST-source _%src-stx166692%_)))
          (if (or (##structure-instance-of? _%e166691%_ 'gerbil#AST::t)
                  (not _%src166694%_))
              _%e166691%_
              (##structure AST::t _%e166691%_ _%src166694%_)))))
    (define __AST-eq?
      (lambda (_%stx166688%_ _%obj166689%_)
        (eq? (__AST-e _%stx166688%_) _%obj166689%_)))
    (define __AST-pair?
      (lambda (_%stx166686%_) (pair? (__AST-e _%stx166686%_))))
    (define __AST-null?
      (lambda (_%stx166684%_) (null? (__AST-e _%stx166684%_))))
    (define __AST-datum?
      (lambda (_%stx166665%_)
        (let* ((_%e166667%_ (__AST-e _%stx166665%_))
               (_%$e166669%_ (number? _%e166667%_)))
          (if _%$e166669%_
              _%$e166669%_
              (let ((_%$e166672%_ (string? _%e166667%_)))
                (if _%$e166672%_
                    _%$e166672%_
                    (let ((_%$e166675%_ (char? _%e166667%_)))
                      (if _%$e166675%_
                          _%$e166675%_
                          (let ((_%$e166678%_ (keyword? _%e166667%_)))
                            (if _%$e166678%_
                                _%$e166678%_
                                (let ((_%$e166681%_ (boolean? _%e166667%_)))
                                  (if _%$e166681%_
                                      _%$e166681%_
                                      (eq? _%e166667%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx166663%_) (symbol? (__AST-e _%stx166663%_))))
    (define __AST-id-list?__%
      (lambda (_%stx166614%_ _%tail?166615%_)
        (let _%lp166617%_ ((_%rest166619%_ _%stx166614%_))
          (let* ((_%$e166621%_ _%rest166619%_)
                 (_%$E166623166636%_
                  (lambda ()
                    (let* ((_%$E166624166631%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e166621%_)))
                           (_%rest166634%_ _%$e166621%_))
                      (_%tail?166615%_ _%rest166634%_)))))
            (if (__AST-pair? _%$e166621%_)
                (let* ((_%$tgt166625166639%_ (__AST-e _%$e166621%_))
                       (_%$hd166626166642%_ (##car _%$tgt166625166639%_))
                       (_%$tl166627166645%_ (##cdr _%$tgt166625166639%_))
                       (_%hd166649%_ _%$hd166626166642%_)
                       (_%rest166651%_ _%$tl166627166645%_))
                  (if (__AST-id? _%hd166649%_)
                      (_%lp166617%_ _%rest166651%_)
                      '#f))
                (_%$E166623166636%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx166656%_)
        (let ((_%tail?166658%_ __AST-null?))
          (__AST-id-list?__% _%stx166656%_ _%tail?166658%_))))
    (define __AST-id-list?
      (lambda _g167242_
        (let ((_g167243_ (##length _g167242_)))
          (cond ((##fx= _g167243_ 1) (apply __AST-id-list?__0 _g167242_))
                ((##fx= _g167243_ 2) (apply __AST-id-list?__% _g167242_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g167242_))))))
    (define __AST-bind-list?
      (lambda (_%stx166606%_)
        (__AST-id-list?__%
         _%stx166606%_
         (lambda (_%e166608%_)
           (let ((_%$e166610%_ (__AST-null? _%e166608%_)))
             (if _%$e166610%_ _%$e166610%_ (__AST-id? _%e166608%_)))))))
    (define __AST-list?__%
      (lambda (_%stx166559%_ _%tail?166560%_)
        (let _%lp166562%_ ((_%rest166564%_ _%stx166559%_))
          (let* ((_%$e166566%_ _%rest166564%_)
                 (_%$E166568166581%_
                  (lambda ()
                    (let* ((_%$E166569166576%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e166566%_)))
                           (_%rest166579%_ _%$e166566%_))
                      (_%tail?166560%_ _%rest166579%_)))))
            (if (__AST-pair? _%$e166566%_)
                (let* ((_%$tgt166570166584%_ (__AST-e _%$e166566%_))
                       (_%$hd166571166587%_ (##car _%$tgt166570166584%_))
                       (_%$tl166572166590%_ (##cdr _%$tgt166570166584%_))
                       (_%rest166594%_ _%$tl166572166590%_))
                  (_%lp166562%_ _%rest166594%_))
                (_%$E166568166581%_))))))
    (define __AST-list?__0
      (lambda (_%stx166599%_)
        (let ((_%tail?166601%_ __AST-null?))
          (__AST-list?__% _%stx166599%_ _%tail?166601%_))))
    (define __AST-list?
      (lambda _g167244_
        (let ((_g167245_ (##length _g167244_)))
          (cond ((##fx= _g167245_ 1) (apply __AST-list?__0 _g167244_))
                ((##fx= _g167245_ 2) (apply __AST-list?__% _g167244_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g167244_))))))
    (define __AST->list
      (lambda (_%stx166524%_)
        (let* ((_%$e166526%_ _%stx166524%_)
               (_%$E166528166541%_
                (lambda ()
                  (let* ((_%$E166529166536%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e166526%_)))
                         (_%rest166539%_ _%$e166526%_))
                    (__AST-e _%rest166539%_)))))
          (if (__AST-pair? _%$e166526%_)
              (let* ((_%$tgt166530166544%_ (__AST-e _%$e166526%_))
                     (_%$hd166531166547%_ (##car _%$tgt166530166544%_))
                     (_%$tl166532166550%_ (##cdr _%$tgt166530166544%_))
                     (_%hd166554%_ _%$hd166531166547%_)
                     (_%rest166556%_ _%$tl166532166550%_))
                (cons _%hd166554%_ (__AST->list _%rest166556%_)))
              (_%$E166528166541%_)))))
    (define __AST->datum
      (lambda (_%stx166517%_)
        (if (##structure-instance-of? _%stx166517%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx166517%_))
            (if (pair? _%stx166517%_)
                (cons (__AST->datum (##car _%stx166517%_))
                      (__AST->datum (##cdr _%stx166517%_)))
                (if (vector? _%stx166517%_)
                    (vector-map __AST->datum _%stx166517%_)
                    (if (box? _%stx166517%_)
                        (box (__AST->datum (unbox _%stx166517%_)))
                        _%stx166517%_))))))
    (define get-readenv
      (lambda (_%port166515%_)
        (##make-readenv
         _%port166515%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in166503%_)
        (let ((_%e166505%_ (##read-datum-or-eof (get-readenv _%in166503%_))))
          (if (eof-object? (__AST-e _%e166505%_))
              (__AST-e _%e166505%_)
              _%e166505%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in166511%_ (current-input-port)))
          (read-syntax__% _%in166511%_))))
    (define read-syntax
      (lambda _g167246_
        (let ((_g167247_ (##length _g167246_)))
          (cond ((##fx= _g167247_ 0) (apply read-syntax__0 _g167246_))
                ((##fx= _g167247_ 1) (apply read-syntax__% _g167246_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g167246_))))))
    (define read-syntax-from-file
      (lambda (_%path166498%_)
        (let ((_%r166500%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path166498%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r166500%_)
              (cdr (__AST-e (vector-ref _%r166500%_ '1)))
              (error (err-code->string _%r166500%_) _%path166498%_)))))
    (define __wrap-syntax
      (lambda (_%re166495%_ _%e166496%_)
        (if (eof-object? _%e166496%_)
            _%e166496%_
            (##structure AST::t _%e166496%_ (##readenv->locat _%re166495%_)))))
    (define __unwrap-syntax
      (lambda (_%re166492%_ _%e166493%_) (__AST-e _%e166493%_)))
    (define __pp-syntax
      (lambda (_%stx166490%_) (pp (__AST->datum _%stx166490%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt166488%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt166488%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt166488%_ '@list)
          (macro-readtable-brace-handler-set! _%rt166488%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt166488%_
           '#\!
           __read-sharp-bang)
          _%rt166488%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt166484%_ _%kw166485%_)
        (macro-readtable-bracket-handler-set! _%rt166484%_ _%kw166485%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt166481%_ _%kw166482%_)
        (macro-readtable-brace-handler-set! _%rt166481%_ _%kw166482%_)))
    (define __read-sharp-bang
      (lambda (_%re166472%_ _%next166473%_ _%start-pos166474%_)
        (if (eq? _%start-pos166474%_ '0)
            (let* ((_%line166476%_
                    (##read-line
                     (macro-readenv-port _%re166472%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line166478%_
                    (substring
                     _%line166476%_
                     '1
                     (string-length _%line166476%_))))
              (macro-readenv-script-line-set!
               _%re166472%_
               _%script-line166478%_)
              (##script-marker))
            (##read-sharp-bang
             _%re166472%_
             _%next166473%_
             _%start-pos166474%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj166470%_)
        (if (source-location? _%obj166470%_)
            (string? (##locat-container _%obj166470%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj166468%_)
        (if (##locat? _%obj166468%_)
            (##container->path (##locat-container _%obj166468%_))
            '#f)))))

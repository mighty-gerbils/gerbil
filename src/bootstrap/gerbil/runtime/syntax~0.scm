(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1773009265)
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
      (lambda _%$args167133%_
        (apply make-instance SyntaxError::t _%$args167133%_)))
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
      (lambda (_%self166852%_ _%port166853%_)
        (let ((_%self166856%_ _%self166852%_))
          (letrec ((_%location166867%_
                    (lambda ()
                      (letrec ((_%from-irritants167008%_
                                (lambda ()
                                  (let _%lp167093%_ ((_%rest167095%_
                                                      (##unchecked-structure-ref
                                                       _%self166856%_
                                                       '3
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest167096167104%_
                                            _%rest167095%_)
                                           (_%else167098167112%_
                                            (lambda () '#f))
                                           (_%K167100167121%_
                                            (lambda (_%rest167115%_
                                                     _%hd167116%_)
                                              (let ((_%$e167118%_
                                                     (__AST-source
                                                      _%hd167116%_)))
                                                (if _%$e167118%_
                                                    _%$e167118%_
                                                    (_%lp167093%_
                                                     _%rest167115%_))))))
                                      (if (pair? _%rest167096167104%_)
                                          (let ((_%hd167101167124%_
                                                 (##car _%rest167096167104%_))
                                                (_%tl167102167126%_
                                                 (##cdr _%rest167096167104%_)))
                                            (let* ((_%hd167129%_
                                                    _%hd167101167124%_)
                                                   (_%rest167131%_
                                                    _%tl167102167126%_))
                                              (_%K167100167121%_
                                               _%rest167131%_
                                               _%hd167129%_)))
                                          (_%else167098167112%_))))))
                               (_%from-context167009%_
                                (lambda ()
                                  (let _%lp167015%_ ((_%rest167017%_
                                                      (##unchecked-structure-ref
                                                       _%self166856%_
                                                       '4
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest167018167026%_
                                            _%rest167017%_)
                                           (_%else167020167034%_
                                            (lambda () '#f))
                                           (_%K167022167080%_
                                            (lambda (_%rest167037%_
                                                     _%hd167038%_)
                                              (let* ((_%hd167039167049%_
                                                      _%hd167038%_)
                                                     (_%else167041167057%_
                                                      (lambda ()
                                                        (_%lp167015%_
                                                         _%rest167037%_)))
                                                     (_%K167043167065%_
                                                      (lambda (_%loc167060%_)
                                                        (let ((_%$e167062%_
                                                               (__AST-source
                                                                _%loc167060%_)))
                                                          (if _%$e167062%_
                                                              _%$e167062%_
                                                              (_%lp167015%_
                                                               _%rest167037%_))))))
                                                (if (pair? _%hd167039167049%_)
                                                    (let ((_%hd167044167068%_
                                                           (##car _%hd167039167049%_))
                                                          (_%tl167045167070%_
                                                           (##cdr _%hd167039167049%_)))
                                                      (if (##eq? _%hd167044167068%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '@)
                  (if (pair? _%tl167045167070%_)
                      (let ((_%hd167046167073%_ (##car _%tl167045167070%_))
                            (_%tl167047167075%_ (##cdr _%tl167045167070%_)))
                        (let ((_%loc167078%_ _%hd167046167073%_))
                          (if (null? _%tl167047167075%_)
                              (_%K167043167065%_ _%loc167078%_)
                              (_%else167041167057%_))))
                      (_%else167041167057%_))
                  (_%else167041167057%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else167041167057%_))))))
                                      (if (pair? _%rest167018167026%_)
                                          (let ((_%hd167023167083%_
                                                 (##car _%rest167018167026%_))
                                                (_%tl167024167085%_
                                                 (##cdr _%rest167018167026%_)))
                                            (let* ((_%hd167088%_
                                                    _%hd167023167083%_)
                                                   (_%rest167090%_
                                                    _%tl167024167085%_))
                                              (_%K167022167080%_
                                               _%rest167090%_
                                               _%hd167088%_)))
                                          (_%else167020167034%_)))))))
                        (let ((_%$e167011%_ (_%from-irritants167008%_)))
                          (if _%$e167011%_
                              _%$e167011%_
                              (_%from-context167009%_)))))))
            (call-with-parameters__1
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e166870%_ (_%location166867%_)))
                 (if _%$e166870%_
                     ((lambda (_%loc166873%_)
                        (##display-locat _%loc166873%_ '#t _%port166853%_))
                      _%$e166870%_)
                     (display '"?")))
               (newline)
               (displayln
                '"--- Syntax Error: "
                (##unchecked-structure-ref _%self166856%_ '2 '#f '#f))
               (let ((_%$e166876%_
                      (##unchecked-structure-ref _%self166856%_ '4 '#f '#f)))
                 (if _%$e166876%_
                     ((lambda (_%where166879%_)
                        (displayln '"--- Context: ")
                        (let _%lp166881%_ ((_%rest166883%_ _%where166879%_))
                          (let* ((_%rest166884166892%_ _%rest166883%_)
                                 (_%else166886166900%_ (lambda () '#!void))
                                 (_%K166888166950%_
                                  (lambda (_%rest166903%_ _%hd166904%_)
                                    (let* ((_%hd166905166915%_ _%hd166904%_)
                                           (_%else166907166923%_
                                            (lambda ()
                                              (displayln '" at " _%hd166904%_)
                                              (_%lp166881%_ _%rest166903%_)))
                                           (_%K166909166935%_
                                            (lambda (_%ctx166926%_)
                                              (let ((_%$e166928%_
                                                     (__AST-source
                                                      _%ctx166926%_)))
                                                (if _%$e166928%_
                                                    ((lambda (_%loc166931%_)
                                                       (display '" at ")
                                                       (##display-locat
                                                        _%loc166931%_
                                                        '#t
                                                        _%port166853%_)
                                                       (newline)
                                                       (_%lp166881%_
                                                        _%rest166903%_))
                                                     _%$e166928%_)
                                                    (if (##structure-instance-of?
                                                         _%ctx166926%_
                                                         'gerbil#AST::t)
                                                        (let ()
                                                          (display '" at ")
                                                          (__pp-syntax
                                                           _%ctx166926%_)
                                                          (_%lp166881%_
                                                           _%rest166903%_))
                                                        (_%lp166881%_
                                                         _%rest166903%_)))))))
                                      (if (pair? _%hd166905166915%_)
                                          (let ((_%hd166910166938%_
                                                 (##car _%hd166905166915%_))
                                                (_%tl166911166940%_
                                                 (##cdr _%hd166905166915%_)))
                                            (if (##eq? _%hd166910166938%_ '@)
                                                (if (pair? _%tl166911166940%_)
                                                    (let ((_%hd166912166943%_
                                                           (##car _%tl166911166940%_))
                                                          (_%tl166913166945%_
                                                           (##cdr _%tl166911166940%_)))
                                                      (let ((_%ctx166948%_
                                                             _%hd166912166943%_))
                                                        (if (null? _%tl166913166945%_)
                                                            (_%K166909166935%_
                                                             _%ctx166948%_)
                                                            (_%else166907166923%_))))
                                                    (_%else166907166923%_))
                                                (_%else166907166923%_)))
                                          (_%else166907166923%_))))))
                            (if (pair? _%rest166884166892%_)
                                (let ((_%hd166889166953%_
                                       (##car _%rest166884166892%_))
                                      (_%tl166890166955%_
                                       (##cdr _%rest166884166892%_)))
                                  (let* ((_%hd166958%_ _%hd166889166953%_)
                                         (_%rest166960%_ _%tl166890166955%_))
                                    (_%K166888166950%_
                                     _%rest166960%_
                                     _%hd166958%_)))
                                '#!void))))
                      _%$e166876%_)
                     '#!void))
               (let* ((_%self.irritants166961166969%_
                       (##unchecked-structure-ref _%self166856%_ '3 '#f '#f))
                      (_%else166963166977%_ (lambda () '#!void))
                      (_%K166965166990%_
                       (lambda (_%rest166980%_ _%stx166981%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx166981%_)
                         (for-each
                          (lambda (_%detail166983%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail166983%_))
                            (let ((_%$e166985%_
                                   (__AST-source _%detail166983%_)))
                              (if _%$e166985%_
                                  ((lambda (_%loc166988%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc166988%_
                                      '#t
                                      _%port166853%_))
                                   _%$e166985%_)
                                  '#!void))
                            (newline))
                          _%rest166980%_))))
                 (if (pair? _%self.irritants166961166969%_)
                     (let ((_%hd166966166993%_
                            (##car _%self.irritants166961166969%_))
                           (_%tl166967166995%_
                            (##cdr _%self.irritants166961166969%_)))
                       (let* ((_%stx166998%_ _%hd166966166993%_)
                              (_%rest167000%_ _%tl166967166995%_))
                         (_%K166965166990%_ _%rest167000%_ _%stx166998%_)))
                     '#!void))
               (if __DEBUG
                   (let ((_%cont167001167003%_
                          (##unchecked-structure-ref
                           _%self166856%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont167001167003%_
                         (let ((_%cont167005%_ _%cont167001167003%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont167005%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port166853%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (let* ((_%klass166715%_ SyntaxError::t) (_%klass166720%_ _%klass166715%_))
      (__seal-class! _%klass166720%_))
    (define make-syntax-error
      (lambda (_%message166708%_
               _%irritants166709%_
               _%where166710%_
               _%context166711%_
               _%marks166712%_
               _%phi166713%_)
        (let ((__obj167230
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj167230 _%message166708%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj167230
           _%irritants166709%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj167230 _%where166710%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj167230 _%context166711%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj167230 _%marks166712%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj167230 _%phi166713%_ '6 '#f '#f)
          __obj167230)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where166703%_
               _%message166704%_
               _%stx166705%_
               .
               _%details166706%_)
        (raise (make-syntax-error
                _%message166704%_
                (cons _%stx166705%_ _%details166706%_)
                _%where166703%_
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
      (lambda _%$args166700%_ (apply make-instance AST::t _%$args166700%_)))
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
      (lambda (_%stx166698%_)
        (if (##structure-instance-of? _%stx166698%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx166698%_ '1 '#f '#f)
            _%stx166698%_)))
    (define __AST-source
      (lambda (_%stx166689%_)
        (let _%lp166691%_ ((_%src166693%_ _%stx166689%_))
          (if (##structure-instance-of? _%src166693%_ 'gerbil#AST::t)
              (_%lp166691%_
               (##unchecked-structure-ref _%src166693%_ '2 '#f '#f))
              (if (##locat? _%src166693%_) _%src166693%_ '#f)))))
    (define __AST
      (lambda (_%e166681%_ _%src-stx166682%_)
        (let ((_%src166684%_ (__AST-source _%src-stx166682%_)))
          (if (or (##structure-instance-of? _%e166681%_ 'gerbil#AST::t)
                  (not _%src166684%_))
              _%e166681%_
              (##structure AST::t _%e166681%_ _%src166684%_)))))
    (define __AST-eq?
      (lambda (_%stx166678%_ _%obj166679%_)
        (eq? (__AST-e _%stx166678%_) _%obj166679%_)))
    (define __AST-pair?
      (lambda (_%stx166676%_) (pair? (__AST-e _%stx166676%_))))
    (define __AST-null?
      (lambda (_%stx166674%_) (null? (__AST-e _%stx166674%_))))
    (define __AST-datum?
      (lambda (_%stx166655%_)
        (let* ((_%e166657%_ (__AST-e _%stx166655%_))
               (_%$e166659%_ (number? _%e166657%_)))
          (if _%$e166659%_
              _%$e166659%_
              (let ((_%$e166662%_ (string? _%e166657%_)))
                (if _%$e166662%_
                    _%$e166662%_
                    (let ((_%$e166665%_ (char? _%e166657%_)))
                      (if _%$e166665%_
                          _%$e166665%_
                          (let ((_%$e166668%_ (keyword? _%e166657%_)))
                            (if _%$e166668%_
                                _%$e166668%_
                                (let ((_%$e166671%_ (boolean? _%e166657%_)))
                                  (if _%$e166671%_
                                      _%$e166671%_
                                      (eq? _%e166657%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx166653%_) (symbol? (__AST-e _%stx166653%_))))
    (define __AST-id-list?__%
      (lambda (_%stx166604%_ _%tail?166605%_)
        (let _%lp166607%_ ((_%rest166609%_ _%stx166604%_))
          (let* ((_%$e166611%_ _%rest166609%_)
                 (_%$E166613166626%_
                  (lambda ()
                    (let* ((_%$E166614166621%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e166611%_)))
                           (_%rest166624%_ _%$e166611%_))
                      (_%tail?166605%_ _%rest166624%_)))))
            (if (__AST-pair? _%$e166611%_)
                (let* ((_%$tgt166615166629%_ (__AST-e _%$e166611%_))
                       (_%$hd166616166632%_ (##car _%$tgt166615166629%_))
                       (_%$tl166617166635%_ (##cdr _%$tgt166615166629%_))
                       (_%hd166639%_ _%$hd166616166632%_)
                       (_%rest166641%_ _%$tl166617166635%_))
                  (if (__AST-id? _%hd166639%_)
                      (_%lp166607%_ _%rest166641%_)
                      '#f))
                (_%$E166613166626%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx166646%_)
        (let ((_%tail?166648%_ __AST-null?))
          (__AST-id-list?__% _%stx166646%_ _%tail?166648%_))))
    (define __AST-id-list?
      (lambda _g167232_
        (let ((_g167233_ (##length _g167232_)))
          (cond ((##fx= _g167233_ 1) (apply __AST-id-list?__0 _g167232_))
                ((##fx= _g167233_ 2) (apply __AST-id-list?__% _g167232_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g167232_))))))
    (define __AST-bind-list?
      (lambda (_%stx166596%_)
        (__AST-id-list?__%
         _%stx166596%_
         (lambda (_%e166598%_)
           (let ((_%$e166600%_ (__AST-null? _%e166598%_)))
             (if _%$e166600%_ _%$e166600%_ (__AST-id? _%e166598%_)))))))
    (define __AST-list?__%
      (lambda (_%stx166549%_ _%tail?166550%_)
        (let _%lp166552%_ ((_%rest166554%_ _%stx166549%_))
          (let* ((_%$e166556%_ _%rest166554%_)
                 (_%$E166558166571%_
                  (lambda ()
                    (let* ((_%$E166559166566%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e166556%_)))
                           (_%rest166569%_ _%$e166556%_))
                      (_%tail?166550%_ _%rest166569%_)))))
            (if (__AST-pair? _%$e166556%_)
                (let* ((_%$tgt166560166574%_ (__AST-e _%$e166556%_))
                       (_%$hd166561166577%_ (##car _%$tgt166560166574%_))
                       (_%$tl166562166580%_ (##cdr _%$tgt166560166574%_))
                       (_%rest166584%_ _%$tl166562166580%_))
                  (_%lp166552%_ _%rest166584%_))
                (_%$E166558166571%_))))))
    (define __AST-list?__0
      (lambda (_%stx166589%_)
        (let ((_%tail?166591%_ __AST-null?))
          (__AST-list?__% _%stx166589%_ _%tail?166591%_))))
    (define __AST-list?
      (lambda _g167234_
        (let ((_g167235_ (##length _g167234_)))
          (cond ((##fx= _g167235_ 1) (apply __AST-list?__0 _g167234_))
                ((##fx= _g167235_ 2) (apply __AST-list?__% _g167234_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g167234_))))))
    (define __AST->list
      (lambda (_%stx166514%_)
        (let* ((_%$e166516%_ _%stx166514%_)
               (_%$E166518166531%_
                (lambda ()
                  (let* ((_%$E166519166526%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e166516%_)))
                         (_%rest166529%_ _%$e166516%_))
                    (__AST-e _%rest166529%_)))))
          (if (__AST-pair? _%$e166516%_)
              (let* ((_%$tgt166520166534%_ (__AST-e _%$e166516%_))
                     (_%$hd166521166537%_ (##car _%$tgt166520166534%_))
                     (_%$tl166522166540%_ (##cdr _%$tgt166520166534%_))
                     (_%hd166544%_ _%$hd166521166537%_)
                     (_%rest166546%_ _%$tl166522166540%_))
                (cons _%hd166544%_ (__AST->list _%rest166546%_)))
              (_%$E166518166531%_)))))
    (define __AST->datum
      (lambda (_%stx166507%_)
        (if (##structure-instance-of? _%stx166507%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx166507%_))
            (if (pair? _%stx166507%_)
                (cons (__AST->datum (##car _%stx166507%_))
                      (__AST->datum (##cdr _%stx166507%_)))
                (if (vector? _%stx166507%_)
                    (vector-map __AST->datum _%stx166507%_)
                    (if (box? _%stx166507%_)
                        (box (__AST->datum (unbox _%stx166507%_)))
                        _%stx166507%_))))))
    (define get-readenv
      (lambda (_%port166505%_)
        (##make-readenv
         _%port166505%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in166493%_)
        (let ((_%e166495%_ (##read-datum-or-eof (get-readenv _%in166493%_))))
          (if (eof-object? (__AST-e _%e166495%_))
              (__AST-e _%e166495%_)
              _%e166495%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in166501%_ (current-input-port)))
          (read-syntax__% _%in166501%_))))
    (define read-syntax
      (lambda _g167236_
        (let ((_g167237_ (##length _g167236_)))
          (cond ((##fx= _g167237_ 0) (apply read-syntax__0 _g167236_))
                ((##fx= _g167237_ 1) (apply read-syntax__% _g167236_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g167236_))))))
    (define read-syntax-from-file
      (lambda (_%path166488%_)
        (let ((_%r166490%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path166488%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r166490%_)
              (cdr (__AST-e (vector-ref _%r166490%_ '1)))
              (error (err-code->string _%r166490%_) _%path166488%_)))))
    (define __wrap-syntax
      (lambda (_%re166485%_ _%e166486%_)
        (if (eof-object? _%e166486%_)
            _%e166486%_
            (##structure AST::t _%e166486%_ (##readenv->locat _%re166485%_)))))
    (define __unwrap-syntax
      (lambda (_%re166482%_ _%e166483%_) (__AST-e _%e166483%_)))
    (define __pp-syntax
      (lambda (_%stx166480%_) (pp (__AST->datum _%stx166480%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt166478%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt166478%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt166478%_ '@list)
          (macro-readtable-brace-handler-set! _%rt166478%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt166478%_
           '#\!
           __read-sharp-bang)
          _%rt166478%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt166474%_ _%kw166475%_)
        (macro-readtable-bracket-handler-set! _%rt166474%_ _%kw166475%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt166471%_ _%kw166472%_)
        (macro-readtable-brace-handler-set! _%rt166471%_ _%kw166472%_)))
    (define __read-sharp-bang
      (lambda (_%re166462%_ _%next166463%_ _%start-pos166464%_)
        (if (eq? _%start-pos166464%_ '0)
            (let* ((_%line166466%_
                    (##read-line
                     (macro-readenv-port _%re166462%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line166468%_
                    (substring
                     _%line166466%_
                     '1
                     (string-length _%line166466%_))))
              (macro-readenv-script-line-set!
               _%re166462%_
               _%script-line166468%_)
              (##script-marker))
            (##read-sharp-bang
             _%re166462%_
             _%next166463%_
             _%start-pos166464%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj166460%_)
        (if (source-location? _%obj166460%_)
            (string? (##locat-container _%obj166460%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj166458%_)
        (if (##locat? _%obj166458%_)
            (##container->path (##locat-container _%obj166458%_))
            '#f)))))

(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1771178564)
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
      (lambda _%$args166544%_
        (apply make-instance SyntaxError::t _%$args166544%_)))
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
      (lambda (_%self166263%_ _%port166264%_)
        (let ((_%self166267%_ _%self166263%_))
          (letrec ((_%location166278%_
                    (lambda ()
                      (letrec ((_%from-irritants166419%_
                                (lambda ()
                                  (let _%lp166504%_ ((_%rest166506%_
                                                      (##unchecked-structure-ref
                                                       _%self166267%_
                                                       '3
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest166507166515%_
                                            _%rest166506%_)
                                           (_%else166509166523%_
                                            (lambda () '#f))
                                           (_%K166511166532%_
                                            (lambda (_%rest166526%_
                                                     _%hd166527%_)
                                              (let ((_%$e166529%_
                                                     (__AST-source
                                                      _%hd166527%_)))
                                                (if _%$e166529%_
                                                    _%$e166529%_
                                                    (_%lp166504%_
                                                     _%rest166526%_))))))
                                      (if (pair? _%rest166507166515%_)
                                          (let ((_%hd166512166535%_
                                                 (##car _%rest166507166515%_))
                                                (_%tl166513166537%_
                                                 (##cdr _%rest166507166515%_)))
                                            (let* ((_%hd166540%_
                                                    _%hd166512166535%_)
                                                   (_%rest166542%_
                                                    _%tl166513166537%_))
                                              (_%K166511166532%_
                                               _%rest166542%_
                                               _%hd166540%_)))
                                          (_%else166509166523%_))))))
                               (_%from-context166420%_
                                (lambda ()
                                  (let _%lp166426%_ ((_%rest166428%_
                                                      (##unchecked-structure-ref
                                                       _%self166267%_
                                                       '4
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest166429166437%_
                                            _%rest166428%_)
                                           (_%else166431166445%_
                                            (lambda () '#f))
                                           (_%K166433166491%_
                                            (lambda (_%rest166448%_
                                                     _%hd166449%_)
                                              (let* ((_%hd166450166460%_
                                                      _%hd166449%_)
                                                     (_%else166452166468%_
                                                      (lambda ()
                                                        (_%lp166426%_
                                                         _%rest166448%_)))
                                                     (_%K166454166476%_
                                                      (lambda (_%loc166471%_)
                                                        (let ((_%$e166473%_
                                                               (__AST-source
                                                                _%loc166471%_)))
                                                          (if _%$e166473%_
                                                              _%$e166473%_
                                                              (_%lp166426%_
                                                               _%rest166448%_))))))
                                                (if (pair? _%hd166450166460%_)
                                                    (let ((_%hd166455166479%_
                                                           (##car _%hd166450166460%_))
                                                          (_%tl166456166481%_
                                                           (##cdr _%hd166450166460%_)))
                                                      (if (##eq? _%hd166455166479%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '@)
                  (if (pair? _%tl166456166481%_)
                      (let ((_%hd166457166484%_ (##car _%tl166456166481%_))
                            (_%tl166458166486%_ (##cdr _%tl166456166481%_)))
                        (let ((_%loc166489%_ _%hd166457166484%_))
                          (if (null? _%tl166458166486%_)
                              (_%K166454166476%_ _%loc166489%_)
                              (_%else166452166468%_))))
                      (_%else166452166468%_))
                  (_%else166452166468%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else166452166468%_))))))
                                      (if (pair? _%rest166429166437%_)
                                          (let ((_%hd166434166494%_
                                                 (##car _%rest166429166437%_))
                                                (_%tl166435166496%_
                                                 (##cdr _%rest166429166437%_)))
                                            (let* ((_%hd166499%_
                                                    _%hd166434166494%_)
                                                   (_%rest166501%_
                                                    _%tl166435166496%_))
                                              (_%K166433166491%_
                                               _%rest166501%_
                                               _%hd166499%_)))
                                          (_%else166431166445%_)))))))
                        (let ((_%$e166422%_ (_%from-irritants166419%_)))
                          (if _%$e166422%_
                              _%$e166422%_
                              (_%from-context166420%_)))))))
            (call-with-parameters__1
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e166281%_ (_%location166278%_)))
                 (if _%$e166281%_
                     ((lambda (_%loc166284%_)
                        (##display-locat _%loc166284%_ '#t _%port166264%_))
                      _%$e166281%_)
                     (display '"?")))
               (newline)
               (displayln
                '"--- Syntax Error: "
                (##unchecked-structure-ref _%self166267%_ '2 '#f '#f))
               (let ((_%$e166287%_
                      (##unchecked-structure-ref _%self166267%_ '4 '#f '#f)))
                 (if _%$e166287%_
                     ((lambda (_%where166290%_)
                        (displayln '"--- Context: ")
                        (let _%lp166292%_ ((_%rest166294%_ _%where166290%_))
                          (let* ((_%rest166295166303%_ _%rest166294%_)
                                 (_%else166297166311%_ (lambda () '#!void))
                                 (_%K166299166361%_
                                  (lambda (_%rest166314%_ _%hd166315%_)
                                    (let* ((_%hd166316166326%_ _%hd166315%_)
                                           (_%else166318166334%_
                                            (lambda ()
                                              (displayln '" at " _%hd166315%_)
                                              (_%lp166292%_ _%rest166314%_)))
                                           (_%K166320166346%_
                                            (lambda (_%ctx166337%_)
                                              (let ((_%$e166339%_
                                                     (__AST-source
                                                      _%ctx166337%_)))
                                                (if _%$e166339%_
                                                    ((lambda (_%loc166342%_)
                                                       (display '" at ")
                                                       (##display-locat
                                                        _%loc166342%_
                                                        '#t
                                                        _%port166264%_)
                                                       (newline)
                                                       (_%lp166292%_
                                                        _%rest166314%_))
                                                     _%$e166339%_)
                                                    (if (##structure-instance-of?
                                                         _%ctx166337%_
                                                         'gerbil#AST::t)
                                                        (let ()
                                                          (display '" at ")
                                                          (__pp-syntax
                                                           _%ctx166337%_)
                                                          (_%lp166292%_
                                                           _%rest166314%_))
                                                        (_%lp166292%_
                                                         _%rest166314%_)))))))
                                      (if (pair? _%hd166316166326%_)
                                          (let ((_%hd166321166349%_
                                                 (##car _%hd166316166326%_))
                                                (_%tl166322166351%_
                                                 (##cdr _%hd166316166326%_)))
                                            (if (##eq? _%hd166321166349%_ '@)
                                                (if (pair? _%tl166322166351%_)
                                                    (let ((_%hd166323166354%_
                                                           (##car _%tl166322166351%_))
                                                          (_%tl166324166356%_
                                                           (##cdr _%tl166322166351%_)))
                                                      (let ((_%ctx166359%_
                                                             _%hd166323166354%_))
                                                        (if (null? _%tl166324166356%_)
                                                            (_%K166320166346%_
                                                             _%ctx166359%_)
                                                            (_%else166318166334%_))))
                                                    (_%else166318166334%_))
                                                (_%else166318166334%_)))
                                          (_%else166318166334%_))))))
                            (if (pair? _%rest166295166303%_)
                                (let ((_%hd166300166364%_
                                       (##car _%rest166295166303%_))
                                      (_%tl166301166366%_
                                       (##cdr _%rest166295166303%_)))
                                  (let* ((_%hd166369%_ _%hd166300166364%_)
                                         (_%rest166371%_ _%tl166301166366%_))
                                    (_%K166299166361%_
                                     _%rest166371%_
                                     _%hd166369%_)))
                                '#!void))))
                      _%$e166287%_)
                     '#!void))
               (let* ((_%self.irritants166372166380%_
                       (##unchecked-structure-ref _%self166267%_ '3 '#f '#f))
                      (_%else166374166388%_ (lambda () '#!void))
                      (_%K166376166401%_
                       (lambda (_%rest166391%_ _%stx166392%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx166392%_)
                         (for-each
                          (lambda (_%detail166394%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail166394%_))
                            (let ((_%$e166396%_
                                   (__AST-source _%detail166394%_)))
                              (if _%$e166396%_
                                  ((lambda (_%loc166399%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc166399%_
                                      '#t
                                      _%port166264%_))
                                   _%$e166396%_)
                                  '#!void))
                            (newline))
                          _%rest166391%_))))
                 (if (pair? _%self.irritants166372166380%_)
                     (let ((_%hd166377166404%_
                            (##car _%self.irritants166372166380%_))
                           (_%tl166378166406%_
                            (##cdr _%self.irritants166372166380%_)))
                       (let* ((_%stx166409%_ _%hd166377166404%_)
                              (_%rest166411%_ _%tl166378166406%_))
                         (_%K166376166401%_ _%rest166411%_ _%stx166409%_)))
                     '#!void))
               (if __DEBUG
                   (let ((_%cont166412166414%_
                          (##unchecked-structure-ref
                           _%self166267%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont166412166414%_
                         (let ((_%cont166416%_ _%cont166412166414%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont166416%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port166264%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (let* ((_%klass166126%_ SyntaxError::t) (_%klass166131%_ _%klass166126%_))
      (__seal-class! _%klass166131%_))
    (define make-syntax-error
      (lambda (_%message166119%_
               _%irritants166120%_
               _%where166121%_
               _%context166122%_
               _%marks166123%_
               _%phi166124%_)
        (let ((__obj166641
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj166641 _%message166119%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj166641
           _%irritants166120%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj166641 _%where166121%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj166641 _%context166122%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj166641 _%marks166123%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj166641 _%phi166124%_ '6 '#f '#f)
          __obj166641)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where166114%_
               _%message166115%_
               _%stx166116%_
               .
               _%details166117%_)
        (raise (make-syntax-error
                _%message166115%_
                (cons _%stx166116%_ _%details166117%_)
                _%where166114%_
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
      (lambda _%$args166111%_ (apply make-instance AST::t _%$args166111%_)))
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
      (lambda (_%stx166109%_)
        (if (##structure-instance-of? _%stx166109%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx166109%_ '1 '#f '#f)
            _%stx166109%_)))
    (define __AST-source
      (lambda (_%stx166100%_)
        (let _%lp166102%_ ((_%src166104%_ _%stx166100%_))
          (if (##structure-instance-of? _%src166104%_ 'gerbil#AST::t)
              (_%lp166102%_
               (##unchecked-structure-ref _%src166104%_ '2 '#f '#f))
              (if (##locat? _%src166104%_) _%src166104%_ '#f)))))
    (define __AST
      (lambda (_%e166092%_ _%src-stx166093%_)
        (let ((_%src166095%_ (__AST-source _%src-stx166093%_)))
          (if (or (##structure-instance-of? _%e166092%_ 'gerbil#AST::t)
                  (not _%src166095%_))
              _%e166092%_
              (##structure AST::t _%e166092%_ _%src166095%_)))))
    (define __AST-eq?
      (lambda (_%stx166089%_ _%obj166090%_)
        (eq? (__AST-e _%stx166089%_) _%obj166090%_)))
    (define __AST-pair?
      (lambda (_%stx166087%_) (pair? (__AST-e _%stx166087%_))))
    (define __AST-null?
      (lambda (_%stx166085%_) (null? (__AST-e _%stx166085%_))))
    (define __AST-datum?
      (lambda (_%stx166066%_)
        (let* ((_%e166068%_ (__AST-e _%stx166066%_))
               (_%$e166070%_ (number? _%e166068%_)))
          (if _%$e166070%_
              _%$e166070%_
              (let ((_%$e166073%_ (string? _%e166068%_)))
                (if _%$e166073%_
                    _%$e166073%_
                    (let ((_%$e166076%_ (char? _%e166068%_)))
                      (if _%$e166076%_
                          _%$e166076%_
                          (let ((_%$e166079%_ (keyword? _%e166068%_)))
                            (if _%$e166079%_
                                _%$e166079%_
                                (let ((_%$e166082%_ (boolean? _%e166068%_)))
                                  (if _%$e166082%_
                                      _%$e166082%_
                                      (eq? _%e166068%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx166064%_) (symbol? (__AST-e _%stx166064%_))))
    (define __AST-id-list?__%
      (lambda (_%stx166015%_ _%tail?166016%_)
        (let _%lp166018%_ ((_%rest166020%_ _%stx166015%_))
          (let* ((_%$e166022%_ _%rest166020%_)
                 (_%$E166024166037%_
                  (lambda ()
                    (let* ((_%$E166025166032%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e166022%_)))
                           (_%rest166035%_ _%$e166022%_))
                      (_%tail?166016%_ _%rest166035%_)))))
            (if (__AST-pair? _%$e166022%_)
                (let* ((_%$tgt166026166040%_ (__AST-e _%$e166022%_))
                       (_%$hd166027166043%_ (##car _%$tgt166026166040%_))
                       (_%$tl166028166046%_ (##cdr _%$tgt166026166040%_))
                       (_%hd166050%_ _%$hd166027166043%_)
                       (_%rest166052%_ _%$tl166028166046%_))
                  (if (__AST-id? _%hd166050%_)
                      (_%lp166018%_ _%rest166052%_)
                      '#f))
                (_%$E166024166037%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx166057%_)
        (let ((_%tail?166059%_ __AST-null?))
          (__AST-id-list?__% _%stx166057%_ _%tail?166059%_))))
    (define __AST-id-list?
      (lambda _g166643_
        (let ((_g166644_ (##length _g166643_)))
          (cond ((##fx= _g166644_ 1) (apply __AST-id-list?__0 _g166643_))
                ((##fx= _g166644_ 2) (apply __AST-id-list?__% _g166643_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g166643_))))))
    (define __AST-bind-list?
      (lambda (_%stx166007%_)
        (__AST-id-list?__%
         _%stx166007%_
         (lambda (_%e166009%_)
           (let ((_%$e166011%_ (__AST-null? _%e166009%_)))
             (if _%$e166011%_ _%$e166011%_ (__AST-id? _%e166009%_)))))))
    (define __AST-list?__%
      (lambda (_%stx165960%_ _%tail?165961%_)
        (let _%lp165963%_ ((_%rest165965%_ _%stx165960%_))
          (let* ((_%$e165967%_ _%rest165965%_)
                 (_%$E165969165982%_
                  (lambda ()
                    (let* ((_%$E165970165977%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e165967%_)))
                           (_%rest165980%_ _%$e165967%_))
                      (_%tail?165961%_ _%rest165980%_)))))
            (if (__AST-pair? _%$e165967%_)
                (let* ((_%$tgt165971165985%_ (__AST-e _%$e165967%_))
                       (_%$hd165972165988%_ (##car _%$tgt165971165985%_))
                       (_%$tl165973165991%_ (##cdr _%$tgt165971165985%_))
                       (_%rest165995%_ _%$tl165973165991%_))
                  (_%lp165963%_ _%rest165995%_))
                (_%$E165969165982%_))))))
    (define __AST-list?__0
      (lambda (_%stx166000%_)
        (let ((_%tail?166002%_ __AST-null?))
          (__AST-list?__% _%stx166000%_ _%tail?166002%_))))
    (define __AST-list?
      (lambda _g166645_
        (let ((_g166646_ (##length _g166645_)))
          (cond ((##fx= _g166646_ 1) (apply __AST-list?__0 _g166645_))
                ((##fx= _g166646_ 2) (apply __AST-list?__% _g166645_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g166645_))))))
    (define __AST->list
      (lambda (_%stx165925%_)
        (let* ((_%$e165927%_ _%stx165925%_)
               (_%$E165929165942%_
                (lambda ()
                  (let* ((_%$E165930165937%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e165927%_)))
                         (_%rest165940%_ _%$e165927%_))
                    (__AST-e _%rest165940%_)))))
          (if (__AST-pair? _%$e165927%_)
              (let* ((_%$tgt165931165945%_ (__AST-e _%$e165927%_))
                     (_%$hd165932165948%_ (##car _%$tgt165931165945%_))
                     (_%$tl165933165951%_ (##cdr _%$tgt165931165945%_))
                     (_%hd165955%_ _%$hd165932165948%_)
                     (_%rest165957%_ _%$tl165933165951%_))
                (cons _%hd165955%_ (__AST->list _%rest165957%_)))
              (_%$E165929165942%_)))))
    (define __AST->datum
      (lambda (_%stx165918%_)
        (if (##structure-instance-of? _%stx165918%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx165918%_))
            (if (pair? _%stx165918%_)
                (cons (__AST->datum (##car _%stx165918%_))
                      (__AST->datum (##cdr _%stx165918%_)))
                (if (vector? _%stx165918%_)
                    (vector-map __AST->datum _%stx165918%_)
                    (if (box? _%stx165918%_)
                        (box (__AST->datum (unbox _%stx165918%_)))
                        _%stx165918%_))))))
    (define get-readenv
      (lambda (_%port165916%_)
        (##make-readenv
         _%port165916%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in165904%_)
        (let ((_%e165906%_ (##read-datum-or-eof (get-readenv _%in165904%_))))
          (if (eof-object? (__AST-e _%e165906%_))
              (__AST-e _%e165906%_)
              _%e165906%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in165912%_ (current-input-port)))
          (read-syntax__% _%in165912%_))))
    (define read-syntax
      (lambda _g166647_
        (let ((_g166648_ (##length _g166647_)))
          (cond ((##fx= _g166648_ 0) (apply read-syntax__0 _g166647_))
                ((##fx= _g166648_ 1) (apply read-syntax__% _g166647_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g166647_))))))
    (define read-syntax-from-file
      (lambda (_%path165899%_)
        (let ((_%r165901%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path165899%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r165901%_)
              (cdr (__AST-e (vector-ref _%r165901%_ '1)))
              (error (err-code->string _%r165901%_) _%path165899%_)))))
    (define __wrap-syntax
      (lambda (_%re165896%_ _%e165897%_)
        (if (eof-object? _%e165897%_)
            _%e165897%_
            (##structure AST::t _%e165897%_ (##readenv->locat _%re165896%_)))))
    (define __unwrap-syntax
      (lambda (_%re165893%_ _%e165894%_) (__AST-e _%e165894%_)))
    (define __pp-syntax
      (lambda (_%stx165891%_) (pp (__AST->datum _%stx165891%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt165889%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt165889%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt165889%_ '@list)
          (macro-readtable-brace-handler-set! _%rt165889%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt165889%_
           '#\!
           __read-sharp-bang)
          _%rt165889%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt165885%_ _%kw165886%_)
        (macro-readtable-bracket-handler-set! _%rt165885%_ _%kw165886%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt165882%_ _%kw165883%_)
        (macro-readtable-brace-handler-set! _%rt165882%_ _%kw165883%_)))
    (define __read-sharp-bang
      (lambda (_%re165873%_ _%next165874%_ _%start-pos165875%_)
        (if (eq? _%start-pos165875%_ '0)
            (let* ((_%line165877%_
                    (##read-line
                     (macro-readenv-port _%re165873%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line165879%_
                    (substring
                     _%line165877%_
                     '1
                     (string-length _%line165877%_))))
              (macro-readenv-script-line-set!
               _%re165873%_
               _%script-line165879%_)
              (##script-marker))
            (##read-sharp-bang
             _%re165873%_
             _%next165874%_
             _%start-pos165875%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj165871%_)
        (if (source-location? _%obj165871%_)
            (string? (##locat-container _%obj165871%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj165869%_)
        (if (##locat? _%obj165869%_)
            (##container->path (##locat-container _%obj165869%_))
            '#f)))))

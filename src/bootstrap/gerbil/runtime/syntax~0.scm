(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1756715352)
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
      (lambda _%$args120881%_
        (apply make-instance SyntaxError::t _%$args120881%_)))
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
      (lambda (_%self120599%_ _%port120600%_)
        (let ((_%self120603%_ _%self120599%_))
          (letrec ((_%location120614%_
                    (lambda ()
                      (letrec ((_%from-irritants120756%_
                                (lambda ()
                                  (let _%lp120841%_ ((_%rest120843%_
                                                      (##unchecked-structure-ref
                                                       _%self120603%_
                                                       '3
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest120844120852%_
                                            _%rest120843%_)
                                           (_%else120846120860%_
                                            (lambda () '#f))
                                           (_%K120848120869%_
                                            (lambda (_%rest120863%_
                                                     _%hd120864%_)
                                              (let ((_%$e120866%_
                                                     (__AST-source
                                                      _%hd120864%_)))
                                                (if _%$e120866%_
                                                    _%$e120866%_
                                                    (_%lp120841%_
                                                     _%rest120863%_))))))
                                      (if (pair? _%rest120844120852%_)
                                          (let ((_%hd120849120872%_
                                                 (##car _%rest120844120852%_))
                                                (_%tl120850120874%_
                                                 (##cdr _%rest120844120852%_)))
                                            (let* ((_%hd120877%_
                                                    _%hd120849120872%_)
                                                   (_%rest120879%_
                                                    _%tl120850120874%_))
                                              (_%K120848120869%_
                                               _%rest120879%_
                                               _%hd120877%_)))
                                          (_%else120846120860%_))))))
                               (_%from-context120757%_
                                (lambda ()
                                  (let _%lp120763%_ ((_%rest120765%_
                                                      (##unchecked-structure-ref
                                                       _%self120603%_
                                                       '4
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest120766120774%_
                                            _%rest120765%_)
                                           (_%else120768120782%_
                                            (lambda () '#f))
                                           (_%K120770120828%_
                                            (lambda (_%rest120785%_
                                                     _%hd120786%_)
                                              (let* ((_%hd120787120797%_
                                                      _%hd120786%_)
                                                     (_%else120789120805%_
                                                      (lambda ()
                                                        (_%lp120763%_
                                                         _%rest120785%_)))
                                                     (_%K120791120813%_
                                                      (lambda (_%loc120808%_)
                                                        (let ((_%$e120810%_
                                                               (__AST-source
                                                                _%loc120808%_)))
                                                          (if _%$e120810%_
                                                              _%$e120810%_
                                                              (_%lp120763%_
                                                               _%rest120785%_))))))
                                                (if (pair? _%hd120787120797%_)
                                                    (let ((_%hd120792120816%_
                                                           (##car _%hd120787120797%_))
                                                          (_%tl120793120818%_
                                                           (##cdr _%hd120787120797%_)))
                                                      (if (##eq? _%hd120792120816%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '@)
                  (if (pair? _%tl120793120818%_)
                      (let ((_%hd120794120821%_ (##car _%tl120793120818%_))
                            (_%tl120795120823%_ (##cdr _%tl120793120818%_)))
                        (let ((_%loc120826%_ _%hd120794120821%_))
                          (if (null? _%tl120795120823%_)
                              (_%K120791120813%_ _%loc120826%_)
                              (_%else120789120805%_))))
                      (_%else120789120805%_))
                  (_%else120789120805%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else120789120805%_))))))
                                      (if (pair? _%rest120766120774%_)
                                          (let ((_%hd120771120831%_
                                                 (##car _%rest120766120774%_))
                                                (_%tl120772120833%_
                                                 (##cdr _%rest120766120774%_)))
                                            (let* ((_%hd120836%_
                                                    _%hd120771120831%_)
                                                   (_%rest120838%_
                                                    _%tl120772120833%_))
                                              (_%K120770120828%_
                                               _%rest120838%_
                                               _%hd120836%_)))
                                          (_%else120768120782%_)))))))
                        (let ((_%$e120759%_ (_%from-irritants120756%_)))
                          (if _%$e120759%_
                              _%$e120759%_
                              (_%from-context120757%_)))))))
            (call-with-parameters__1
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e120617%_ (_%location120614%_)))
                 (if _%$e120617%_
                     ((lambda (_%loc120620%_)
                        (##display-locat _%loc120620%_ '#t _%port120600%_))
                      _%$e120617%_)
                     (display '"?")))
               (newline)
               (displayln
                '"--- Syntax Error: "
                (##unchecked-structure-ref _%self120603%_ '2 '#f '#f))
               (let ((_%$e120623%_
                      (##unchecked-structure-ref _%self120603%_ '4 '#f '#f)))
                 (if _%$e120623%_
                     ((lambda (_%where120626%_)
                        (displayln '"--- Context: ")
                        (let _%lp120628%_ ((_%rest120630%_ _%where120626%_))
                          (let* ((_%rest120631120639%_ _%rest120630%_)
                                 (_%else120633120647%_ (lambda () '#!void))
                                 (_%K120635120697%_
                                  (lambda (_%rest120650%_ _%hd120651%_)
                                    (let* ((_%hd120652120662%_ _%hd120651%_)
                                           (_%else120654120670%_
                                            (lambda ()
                                              (displayln '" at " _%hd120651%_)
                                              (_%lp120628%_ _%rest120650%_)))
                                           (_%K120656120682%_
                                            (lambda (_%ctx120673%_)
                                              (let ((_%$e120675%_
                                                     (__AST-source
                                                      _%ctx120673%_)))
                                                (if _%$e120675%_
                                                    ((lambda (_%loc120678%_)
                                                       (display '" at ")
                                                       (##display-locat
                                                        _%loc120678%_
                                                        '#t
                                                        _%port120600%_)
                                                       (newline)
                                                       (_%lp120628%_
                                                        _%rest120650%_))
                                                     _%$e120675%_)
                                                    (if (##structure-instance-of?
                                                         _%ctx120673%_
                                                         'gerbil#AST::t)
                                                        (let ()
                                                          (display '" at ")
                                                          (__pp-syntax
                                                           _%ctx120673%_)
                                                          (_%lp120628%_
                                                           _%rest120650%_))
                                                        (_%lp120628%_
                                                         _%rest120650%_)))))))
                                      (if (pair? _%hd120652120662%_)
                                          (let ((_%hd120657120685%_
                                                 (##car _%hd120652120662%_))
                                                (_%tl120658120687%_
                                                 (##cdr _%hd120652120662%_)))
                                            (if (##eq? _%hd120657120685%_ '@)
                                                (if (pair? _%tl120658120687%_)
                                                    (let ((_%hd120659120690%_
                                                           (##car _%tl120658120687%_))
                                                          (_%tl120660120692%_
                                                           (##cdr _%tl120658120687%_)))
                                                      (let ((_%ctx120695%_
                                                             _%hd120659120690%_))
                                                        (if (null? _%tl120660120692%_)
                                                            (_%K120656120682%_
                                                             _%ctx120695%_)
                                                            (_%else120654120670%_))))
                                                    (_%else120654120670%_))
                                                (_%else120654120670%_)))
                                          (_%else120654120670%_))))))
                            (if (pair? _%rest120631120639%_)
                                (let ((_%hd120636120700%_
                                       (##car _%rest120631120639%_))
                                      (_%tl120637120702%_
                                       (##cdr _%rest120631120639%_)))
                                  (let* ((_%hd120705%_ _%hd120636120700%_)
                                         (_%rest120707%_ _%tl120637120702%_))
                                    (_%K120635120697%_
                                     _%rest120707%_
                                     _%hd120705%_)))
                                '#!void))))
                      _%$e120623%_)
                     '#!void))
               (let* ((_%self.irritants120708120716%_
                       (##unchecked-structure-ref _%self120603%_ '3 '#f '#f))
                      (_%else120710120724%_ (lambda () '#!void))
                      (_%K120712120737%_
                       (lambda (_%rest120727%_ _%stx120728%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx120728%_)
                         (for-each
                          (lambda (_%detail120730%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail120730%_))
                            (let ((_%$e120732%_
                                   (__AST-source _%detail120730%_)))
                              (if _%$e120732%_
                                  ((lambda (_%loc120735%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc120735%_
                                      '#t
                                      _%port120600%_))
                                   _%$e120732%_)
                                  '#!void))
                            (newline))
                          _%rest120727%_))))
                 (if (pair? _%self.irritants120708120716%_)
                     (let ((_%hd120713120740%_
                            (##car _%self.irritants120708120716%_))
                           (_%tl120714120742%_
                            (##cdr _%self.irritants120708120716%_)))
                       (let* ((_%stx120745%_ _%hd120713120740%_)
                              (_%rest120747%_ _%tl120714120742%_))
                         (_%K120712120737%_ _%rest120747%_ _%stx120745%_)))
                     '#!void))
               (if (##getenv '"GERBIL_DEBUG" '#f)
                   (let ((_%cont120748120750%_
                          (##unchecked-structure-ref
                           _%self120603%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont120748120750%_
                         (let ((_%cont120753%_ _%cont120748120750%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont120753%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port120600%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message120470%_
               _%irritants120471%_
               _%where120472%_
               _%context120473%_
               _%marks120474%_
               _%phi120475%_)
        (let ((__obj120978
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj120978 _%message120470%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj120978
           _%irritants120471%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj120978 _%where120472%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj120978 _%context120473%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj120978 _%marks120474%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj120978 _%phi120475%_ '6 '#f '#f)
          __obj120978)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where120465%_
               _%message120466%_
               _%stx120467%_
               .
               _%details120468%_)
        (raise (make-syntax-error
                _%message120466%_
                (cons _%stx120467%_ _%details120468%_)
                _%where120465%_
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
      (lambda _%$args120462%_ (apply make-instance AST::t _%$args120462%_)))
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
      (lambda (_%stx120460%_)
        (if (##structure-instance-of? _%stx120460%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx120460%_ '1 '#f '#f)
            _%stx120460%_)))
    (define __AST-source
      (lambda (_%stx120451%_)
        (let _%lp120453%_ ((_%src120455%_ _%stx120451%_))
          (if (##structure-instance-of? _%src120455%_ 'gerbil#AST::t)
              (_%lp120453%_
               (##unchecked-structure-ref _%src120455%_ '2 '#f '#f))
              (if (##locat? _%src120455%_) _%src120455%_ '#f)))))
    (define __AST
      (lambda (_%e120443%_ _%src-stx120444%_)
        (let ((_%src120446%_ (__AST-source _%src-stx120444%_)))
          (if (or (##structure-instance-of? _%e120443%_ 'gerbil#AST::t)
                  (not _%src120446%_))
              _%e120443%_
              (##structure AST::t _%e120443%_ _%src120446%_)))))
    (define __AST-eq?
      (lambda (_%stx120440%_ _%obj120441%_)
        (eq? (__AST-e _%stx120440%_) _%obj120441%_)))
    (define __AST-pair?
      (lambda (_%stx120438%_) (pair? (__AST-e _%stx120438%_))))
    (define __AST-null?
      (lambda (_%stx120436%_) (null? (__AST-e _%stx120436%_))))
    (define __AST-datum?
      (lambda (_%stx120417%_)
        (let* ((_%e120419%_ (__AST-e _%stx120417%_))
               (_%$e120421%_ (number? _%e120419%_)))
          (if _%$e120421%_
              _%$e120421%_
              (let ((_%$e120424%_ (string? _%e120419%_)))
                (if _%$e120424%_
                    _%$e120424%_
                    (let ((_%$e120427%_ (char? _%e120419%_)))
                      (if _%$e120427%_
                          _%$e120427%_
                          (let ((_%$e120430%_ (keyword? _%e120419%_)))
                            (if _%$e120430%_
                                _%$e120430%_
                                (let ((_%$e120433%_ (boolean? _%e120419%_)))
                                  (if _%$e120433%_
                                      _%$e120433%_
                                      (eq? _%e120419%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx120415%_) (symbol? (__AST-e _%stx120415%_))))
    (define __AST-id-list?__%
      (lambda (_%stx120366%_ _%tail?120367%_)
        (let _%lp120369%_ ((_%rest120371%_ _%stx120366%_))
          (let* ((_%$e120373%_ _%rest120371%_)
                 (_%$E120375120388%_
                  (lambda ()
                    (let* ((_%$E120376120383%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e120373%_)))
                           (_%rest120386%_ _%$e120373%_))
                      (_%tail?120367%_ _%rest120386%_)))))
            (if (__AST-pair? _%$e120373%_)
                (let* ((_%$tgt120377120391%_ (__AST-e _%$e120373%_))
                       (_%$hd120378120394%_ (##car _%$tgt120377120391%_))
                       (_%$tl120379120397%_ (##cdr _%$tgt120377120391%_))
                       (_%hd120401%_ _%$hd120378120394%_)
                       (_%rest120403%_ _%$tl120379120397%_))
                  (if (__AST-id? _%hd120401%_)
                      (_%lp120369%_ _%rest120403%_)
                      '#f))
                (_%$E120375120388%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx120408%_)
        (let ((_%tail?120410%_ __AST-null?))
          (__AST-id-list?__% _%stx120408%_ _%tail?120410%_))))
    (define __AST-id-list?
      (lambda _g120980_
        (let ((_g120981_ (##length _g120980_)))
          (cond ((##fx= _g120981_ 1) (apply __AST-id-list?__0 _g120980_))
                ((##fx= _g120981_ 2) (apply __AST-id-list?__% _g120980_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g120980_))))))
    (define __AST-bind-list?
      (lambda (_%stx120358%_)
        (__AST-id-list?__%
         _%stx120358%_
         (lambda (_%e120360%_)
           (let ((_%$e120362%_ (__AST-null? _%e120360%_)))
             (if _%$e120362%_ _%$e120362%_ (__AST-id? _%e120360%_)))))))
    (define __AST-list?__%
      (lambda (_%stx120311%_ _%tail?120312%_)
        (let _%lp120314%_ ((_%rest120316%_ _%stx120311%_))
          (let* ((_%$e120318%_ _%rest120316%_)
                 (_%$E120320120333%_
                  (lambda ()
                    (let* ((_%$E120321120328%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e120318%_)))
                           (_%rest120331%_ _%$e120318%_))
                      (_%tail?120312%_ _%rest120331%_)))))
            (if (__AST-pair? _%$e120318%_)
                (let* ((_%$tgt120322120336%_ (__AST-e _%$e120318%_))
                       (_%$hd120323120339%_ (##car _%$tgt120322120336%_))
                       (_%$tl120324120342%_ (##cdr _%$tgt120322120336%_))
                       (_%rest120346%_ _%$tl120324120342%_))
                  (_%lp120314%_ _%rest120346%_))
                (_%$E120320120333%_))))))
    (define __AST-list?__0
      (lambda (_%stx120351%_)
        (let ((_%tail?120353%_ __AST-null?))
          (__AST-list?__% _%stx120351%_ _%tail?120353%_))))
    (define __AST-list?
      (lambda _g120982_
        (let ((_g120983_ (##length _g120982_)))
          (cond ((##fx= _g120983_ 1) (apply __AST-list?__0 _g120982_))
                ((##fx= _g120983_ 2) (apply __AST-list?__% _g120982_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g120982_))))))
    (define __AST->list
      (lambda (_%stx120276%_)
        (let* ((_%$e120278%_ _%stx120276%_)
               (_%$E120280120293%_
                (lambda ()
                  (let* ((_%$E120281120288%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e120278%_)))
                         (_%rest120291%_ _%$e120278%_))
                    (__AST-e _%rest120291%_)))))
          (if (__AST-pair? _%$e120278%_)
              (let* ((_%$tgt120282120296%_ (__AST-e _%$e120278%_))
                     (_%$hd120283120299%_ (##car _%$tgt120282120296%_))
                     (_%$tl120284120302%_ (##cdr _%$tgt120282120296%_))
                     (_%hd120306%_ _%$hd120283120299%_)
                     (_%rest120308%_ _%$tl120284120302%_))
                (cons _%hd120306%_ (__AST->list _%rest120308%_)))
              (_%$E120280120293%_)))))
    (define __AST->datum
      (lambda (_%stx120269%_)
        (if (##structure-instance-of? _%stx120269%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx120269%_))
            (if (pair? _%stx120269%_)
                (cons (__AST->datum (##car _%stx120269%_))
                      (__AST->datum (##cdr _%stx120269%_)))
                (if (vector? _%stx120269%_)
                    (vector-map __AST->datum _%stx120269%_)
                    (if (box? _%stx120269%_)
                        (box (__AST->datum (unbox _%stx120269%_)))
                        _%stx120269%_))))))
    (define get-readenv
      (lambda (_%port120267%_)
        (##make-readenv
         _%port120267%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in120255%_)
        (let ((_%e120257%_ (##read-datum-or-eof (get-readenv _%in120255%_))))
          (if (eof-object? (__AST-e _%e120257%_))
              (__AST-e _%e120257%_)
              _%e120257%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in120263%_ (current-input-port)))
          (read-syntax__% _%in120263%_))))
    (define read-syntax
      (lambda _g120984_
        (let ((_g120985_ (##length _g120984_)))
          (cond ((##fx= _g120985_ 0) (apply read-syntax__0 _g120984_))
                ((##fx= _g120985_ 1) (apply read-syntax__% _g120984_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g120984_))))))
    (define read-syntax-from-file
      (lambda (_%path120250%_)
        (let ((_%r120252%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path120250%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r120252%_)
              (cdr (__AST-e (vector-ref _%r120252%_ '1)))
              (error (err-code->string _%r120252%_) _%path120250%_)))))
    (define __wrap-syntax
      (lambda (_%re120247%_ _%e120248%_)
        (if (eof-object? _%e120248%_)
            _%e120248%_
            (##structure AST::t _%e120248%_ (##readenv->locat _%re120247%_)))))
    (define __unwrap-syntax
      (lambda (_%re120244%_ _%e120245%_) (__AST-e _%e120245%_)))
    (define __pp-syntax
      (lambda (_%stx120242%_) (pp (__AST->datum _%stx120242%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt120240%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt120240%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt120240%_ '@list)
          (macro-readtable-brace-handler-set! _%rt120240%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt120240%_
           '#\!
           __read-sharp-bang)
          _%rt120240%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt120236%_ _%kw120237%_)
        (macro-readtable-bracket-handler-set! _%rt120236%_ _%kw120237%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt120233%_ _%kw120234%_)
        (macro-readtable-brace-handler-set! _%rt120233%_ _%kw120234%_)))
    (define __read-sharp-bang
      (lambda (_%re120224%_ _%next120225%_ _%start-pos120226%_)
        (if (eq? _%start-pos120226%_ '0)
            (let* ((_%line120228%_
                    (##read-line
                     (macro-readenv-port _%re120224%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line120230%_
                    (substring
                     _%line120228%_
                     '1
                     (string-length _%line120228%_))))
              (macro-readenv-script-line-set!
               _%re120224%_
               _%script-line120230%_)
              (##script-marker))
            (##read-sharp-bang
             _%re120224%_
             _%next120225%_
             _%start-pos120226%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj120222%_)
        (if (source-location? _%obj120222%_)
            (string? (##locat-container _%obj120222%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj120220%_)
        (if (##locat? _%obj120220%_)
            (##container->path (##locat-container _%obj120220%_))
            '#f)))))

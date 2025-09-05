(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1756721295)
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
      (lambda _%$args120879%_
        (apply make-instance SyntaxError::t _%$args120879%_)))
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
      (lambda (_%self120597%_ _%port120598%_)
        (let ((_%self120601%_ _%self120597%_))
          (letrec ((_%location120612%_
                    (lambda ()
                      (letrec ((_%from-irritants120754%_
                                (lambda ()
                                  (let _%lp120839%_ ((_%rest120841%_
                                                      (##unchecked-structure-ref
                                                       _%self120601%_
                                                       '3
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest120842120850%_
                                            _%rest120841%_)
                                           (_%else120844120858%_
                                            (lambda () '#f))
                                           (_%K120846120867%_
                                            (lambda (_%rest120861%_
                                                     _%hd120862%_)
                                              (let ((_%$e120864%_
                                                     (__AST-source
                                                      _%hd120862%_)))
                                                (if _%$e120864%_
                                                    _%$e120864%_
                                                    (_%lp120839%_
                                                     _%rest120861%_))))))
                                      (if (pair? _%rest120842120850%_)
                                          (let ((_%hd120847120870%_
                                                 (##car _%rest120842120850%_))
                                                (_%tl120848120872%_
                                                 (##cdr _%rest120842120850%_)))
                                            (let* ((_%hd120875%_
                                                    _%hd120847120870%_)
                                                   (_%rest120877%_
                                                    _%tl120848120872%_))
                                              (_%K120846120867%_
                                               _%rest120877%_
                                               _%hd120875%_)))
                                          (_%else120844120858%_))))))
                               (_%from-context120755%_
                                (lambda ()
                                  (let _%lp120761%_ ((_%rest120763%_
                                                      (##unchecked-structure-ref
                                                       _%self120601%_
                                                       '4
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest120764120772%_
                                            _%rest120763%_)
                                           (_%else120766120780%_
                                            (lambda () '#f))
                                           (_%K120768120826%_
                                            (lambda (_%rest120783%_
                                                     _%hd120784%_)
                                              (let* ((_%hd120785120795%_
                                                      _%hd120784%_)
                                                     (_%else120787120803%_
                                                      (lambda ()
                                                        (_%lp120761%_
                                                         _%rest120783%_)))
                                                     (_%K120789120811%_
                                                      (lambda (_%loc120806%_)
                                                        (let ((_%$e120808%_
                                                               (__AST-source
                                                                _%loc120806%_)))
                                                          (if _%$e120808%_
                                                              _%$e120808%_
                                                              (_%lp120761%_
                                                               _%rest120783%_))))))
                                                (if (pair? _%hd120785120795%_)
                                                    (let ((_%hd120790120814%_
                                                           (##car _%hd120785120795%_))
                                                          (_%tl120791120816%_
                                                           (##cdr _%hd120785120795%_)))
                                                      (if (##eq? _%hd120790120814%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '@)
                  (if (pair? _%tl120791120816%_)
                      (let ((_%hd120792120819%_ (##car _%tl120791120816%_))
                            (_%tl120793120821%_ (##cdr _%tl120791120816%_)))
                        (let ((_%loc120824%_ _%hd120792120819%_))
                          (if (null? _%tl120793120821%_)
                              (_%K120789120811%_ _%loc120824%_)
                              (_%else120787120803%_))))
                      (_%else120787120803%_))
                  (_%else120787120803%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else120787120803%_))))))
                                      (if (pair? _%rest120764120772%_)
                                          (let ((_%hd120769120829%_
                                                 (##car _%rest120764120772%_))
                                                (_%tl120770120831%_
                                                 (##cdr _%rest120764120772%_)))
                                            (let* ((_%hd120834%_
                                                    _%hd120769120829%_)
                                                   (_%rest120836%_
                                                    _%tl120770120831%_))
                                              (_%K120768120826%_
                                               _%rest120836%_
                                               _%hd120834%_)))
                                          (_%else120766120780%_)))))))
                        (let ((_%$e120757%_ (_%from-irritants120754%_)))
                          (if _%$e120757%_
                              _%$e120757%_
                              (_%from-context120755%_)))))))
            (call-with-parameters__1
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e120615%_ (_%location120612%_)))
                 (if _%$e120615%_
                     ((lambda (_%loc120618%_)
                        (##display-locat _%loc120618%_ '#t _%port120598%_))
                      _%$e120615%_)
                     (display '"?")))
               (newline)
               (displayln
                '"--- Syntax Error: "
                (##unchecked-structure-ref _%self120601%_ '2 '#f '#f))
               (let ((_%$e120621%_
                      (##unchecked-structure-ref _%self120601%_ '4 '#f '#f)))
                 (if _%$e120621%_
                     ((lambda (_%where120624%_)
                        (displayln '"--- Context: ")
                        (let _%lp120626%_ ((_%rest120628%_ _%where120624%_))
                          (let* ((_%rest120629120637%_ _%rest120628%_)
                                 (_%else120631120645%_ (lambda () '#!void))
                                 (_%K120633120695%_
                                  (lambda (_%rest120648%_ _%hd120649%_)
                                    (let* ((_%hd120650120660%_ _%hd120649%_)
                                           (_%else120652120668%_
                                            (lambda ()
                                              (displayln '" at " _%hd120649%_)
                                              (_%lp120626%_ _%rest120648%_)))
                                           (_%K120654120680%_
                                            (lambda (_%ctx120671%_)
                                              (let ((_%$e120673%_
                                                     (__AST-source
                                                      _%ctx120671%_)))
                                                (if _%$e120673%_
                                                    ((lambda (_%loc120676%_)
                                                       (display '" at ")
                                                       (##display-locat
                                                        _%loc120676%_
                                                        '#t
                                                        _%port120598%_)
                                                       (newline)
                                                       (_%lp120626%_
                                                        _%rest120648%_))
                                                     _%$e120673%_)
                                                    (if (##structure-instance-of?
                                                         _%ctx120671%_
                                                         'gerbil#AST::t)
                                                        (let ()
                                                          (display '" at ")
                                                          (__pp-syntax
                                                           _%ctx120671%_)
                                                          (_%lp120626%_
                                                           _%rest120648%_))
                                                        (_%lp120626%_
                                                         _%rest120648%_)))))))
                                      (if (pair? _%hd120650120660%_)
                                          (let ((_%hd120655120683%_
                                                 (##car _%hd120650120660%_))
                                                (_%tl120656120685%_
                                                 (##cdr _%hd120650120660%_)))
                                            (if (##eq? _%hd120655120683%_ '@)
                                                (if (pair? _%tl120656120685%_)
                                                    (let ((_%hd120657120688%_
                                                           (##car _%tl120656120685%_))
                                                          (_%tl120658120690%_
                                                           (##cdr _%tl120656120685%_)))
                                                      (let ((_%ctx120693%_
                                                             _%hd120657120688%_))
                                                        (if (null? _%tl120658120690%_)
                                                            (_%K120654120680%_
                                                             _%ctx120693%_)
                                                            (_%else120652120668%_))))
                                                    (_%else120652120668%_))
                                                (_%else120652120668%_)))
                                          (_%else120652120668%_))))))
                            (if (pair? _%rest120629120637%_)
                                (let ((_%hd120634120698%_
                                       (##car _%rest120629120637%_))
                                      (_%tl120635120700%_
                                       (##cdr _%rest120629120637%_)))
                                  (let* ((_%hd120703%_ _%hd120634120698%_)
                                         (_%rest120705%_ _%tl120635120700%_))
                                    (_%K120633120695%_
                                     _%rest120705%_
                                     _%hd120703%_)))
                                '#!void))))
                      _%$e120621%_)
                     '#!void))
               (let* ((_%self.irritants120706120714%_
                       (##unchecked-structure-ref _%self120601%_ '3 '#f '#f))
                      (_%else120708120722%_ (lambda () '#!void))
                      (_%K120710120735%_
                       (lambda (_%rest120725%_ _%stx120726%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx120726%_)
                         (for-each
                          (lambda (_%detail120728%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail120728%_))
                            (let ((_%$e120730%_
                                   (__AST-source _%detail120728%_)))
                              (if _%$e120730%_
                                  ((lambda (_%loc120733%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc120733%_
                                      '#t
                                      _%port120598%_))
                                   _%$e120730%_)
                                  '#!void))
                            (newline))
                          _%rest120725%_))))
                 (if (pair? _%self.irritants120706120714%_)
                     (let ((_%hd120711120738%_
                            (##car _%self.irritants120706120714%_))
                           (_%tl120712120740%_
                            (##cdr _%self.irritants120706120714%_)))
                       (let* ((_%stx120743%_ _%hd120711120738%_)
                              (_%rest120745%_ _%tl120712120740%_))
                         (_%K120710120735%_ _%rest120745%_ _%stx120743%_)))
                     '#!void))
               (if (##getenv '"GERBIL_DEBUG" '#f)
                   (let ((_%cont120746120748%_
                          (##unchecked-structure-ref
                           _%self120601%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont120746120748%_
                         (let ((_%cont120751%_ _%cont120746120748%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont120751%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port120598%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message120468%_
               _%irritants120469%_
               _%where120470%_
               _%context120471%_
               _%marks120472%_
               _%phi120473%_)
        (let ((__obj120976
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj120976 _%message120468%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj120976
           _%irritants120469%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj120976 _%where120470%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj120976 _%context120471%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj120976 _%marks120472%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj120976 _%phi120473%_ '6 '#f '#f)
          __obj120976)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where120463%_
               _%message120464%_
               _%stx120465%_
               .
               _%details120466%_)
        (raise (make-syntax-error
                _%message120464%_
                (cons _%stx120465%_ _%details120466%_)
                _%where120463%_
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
      (lambda _%$args120460%_ (apply make-instance AST::t _%$args120460%_)))
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
      (lambda (_%stx120458%_)
        (if (##structure-instance-of? _%stx120458%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx120458%_ '1 '#f '#f)
            _%stx120458%_)))
    (define __AST-source
      (lambda (_%stx120449%_)
        (let _%lp120451%_ ((_%src120453%_ _%stx120449%_))
          (if (##structure-instance-of? _%src120453%_ 'gerbil#AST::t)
              (_%lp120451%_
               (##unchecked-structure-ref _%src120453%_ '2 '#f '#f))
              (if (##locat? _%src120453%_) _%src120453%_ '#f)))))
    (define __AST
      (lambda (_%e120441%_ _%src-stx120442%_)
        (let ((_%src120444%_ (__AST-source _%src-stx120442%_)))
          (if (or (##structure-instance-of? _%e120441%_ 'gerbil#AST::t)
                  (not _%src120444%_))
              _%e120441%_
              (##structure AST::t _%e120441%_ _%src120444%_)))))
    (define __AST-eq?
      (lambda (_%stx120438%_ _%obj120439%_)
        (eq? (__AST-e _%stx120438%_) _%obj120439%_)))
    (define __AST-pair?
      (lambda (_%stx120436%_) (pair? (__AST-e _%stx120436%_))))
    (define __AST-null?
      (lambda (_%stx120434%_) (null? (__AST-e _%stx120434%_))))
    (define __AST-datum?
      (lambda (_%stx120415%_)
        (let* ((_%e120417%_ (__AST-e _%stx120415%_))
               (_%$e120419%_ (number? _%e120417%_)))
          (if _%$e120419%_
              _%$e120419%_
              (let ((_%$e120422%_ (string? _%e120417%_)))
                (if _%$e120422%_
                    _%$e120422%_
                    (let ((_%$e120425%_ (char? _%e120417%_)))
                      (if _%$e120425%_
                          _%$e120425%_
                          (let ((_%$e120428%_ (keyword? _%e120417%_)))
                            (if _%$e120428%_
                                _%$e120428%_
                                (let ((_%$e120431%_ (boolean? _%e120417%_)))
                                  (if _%$e120431%_
                                      _%$e120431%_
                                      (eq? _%e120417%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx120413%_) (symbol? (__AST-e _%stx120413%_))))
    (define __AST-id-list?__%
      (lambda (_%stx120364%_ _%tail?120365%_)
        (let _%lp120367%_ ((_%rest120369%_ _%stx120364%_))
          (let* ((_%$e120371%_ _%rest120369%_)
                 (_%$E120373120386%_
                  (lambda ()
                    (let* ((_%$E120374120381%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e120371%_)))
                           (_%rest120384%_ _%$e120371%_))
                      (_%tail?120365%_ _%rest120384%_)))))
            (if (__AST-pair? _%$e120371%_)
                (let* ((_%$tgt120375120389%_ (__AST-e _%$e120371%_))
                       (_%$hd120376120392%_ (##car _%$tgt120375120389%_))
                       (_%$tl120377120395%_ (##cdr _%$tgt120375120389%_))
                       (_%hd120399%_ _%$hd120376120392%_)
                       (_%rest120401%_ _%$tl120377120395%_))
                  (if (__AST-id? _%hd120399%_)
                      (_%lp120367%_ _%rest120401%_)
                      '#f))
                (_%$E120373120386%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx120406%_)
        (let ((_%tail?120408%_ __AST-null?))
          (__AST-id-list?__% _%stx120406%_ _%tail?120408%_))))
    (define __AST-id-list?
      (lambda _g120978_
        (let ((_g120979_ (##length _g120978_)))
          (cond ((##fx= _g120979_ 1) (apply __AST-id-list?__0 _g120978_))
                ((##fx= _g120979_ 2) (apply __AST-id-list?__% _g120978_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g120978_))))))
    (define __AST-bind-list?
      (lambda (_%stx120356%_)
        (__AST-id-list?__%
         _%stx120356%_
         (lambda (_%e120358%_)
           (let ((_%$e120360%_ (__AST-null? _%e120358%_)))
             (if _%$e120360%_ _%$e120360%_ (__AST-id? _%e120358%_)))))))
    (define __AST-list?__%
      (lambda (_%stx120309%_ _%tail?120310%_)
        (let _%lp120312%_ ((_%rest120314%_ _%stx120309%_))
          (let* ((_%$e120316%_ _%rest120314%_)
                 (_%$E120318120331%_
                  (lambda ()
                    (let* ((_%$E120319120326%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e120316%_)))
                           (_%rest120329%_ _%$e120316%_))
                      (_%tail?120310%_ _%rest120329%_)))))
            (if (__AST-pair? _%$e120316%_)
                (let* ((_%$tgt120320120334%_ (__AST-e _%$e120316%_))
                       (_%$hd120321120337%_ (##car _%$tgt120320120334%_))
                       (_%$tl120322120340%_ (##cdr _%$tgt120320120334%_))
                       (_%rest120344%_ _%$tl120322120340%_))
                  (_%lp120312%_ _%rest120344%_))
                (_%$E120318120331%_))))))
    (define __AST-list?__0
      (lambda (_%stx120349%_)
        (let ((_%tail?120351%_ __AST-null?))
          (__AST-list?__% _%stx120349%_ _%tail?120351%_))))
    (define __AST-list?
      (lambda _g120980_
        (let ((_g120981_ (##length _g120980_)))
          (cond ((##fx= _g120981_ 1) (apply __AST-list?__0 _g120980_))
                ((##fx= _g120981_ 2) (apply __AST-list?__% _g120980_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g120980_))))))
    (define __AST->list
      (lambda (_%stx120274%_)
        (let* ((_%$e120276%_ _%stx120274%_)
               (_%$E120278120291%_
                (lambda ()
                  (let* ((_%$E120279120286%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e120276%_)))
                         (_%rest120289%_ _%$e120276%_))
                    (__AST-e _%rest120289%_)))))
          (if (__AST-pair? _%$e120276%_)
              (let* ((_%$tgt120280120294%_ (__AST-e _%$e120276%_))
                     (_%$hd120281120297%_ (##car _%$tgt120280120294%_))
                     (_%$tl120282120300%_ (##cdr _%$tgt120280120294%_))
                     (_%hd120304%_ _%$hd120281120297%_)
                     (_%rest120306%_ _%$tl120282120300%_))
                (cons _%hd120304%_ (__AST->list _%rest120306%_)))
              (_%$E120278120291%_)))))
    (define __AST->datum
      (lambda (_%stx120267%_)
        (if (##structure-instance-of? _%stx120267%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx120267%_))
            (if (pair? _%stx120267%_)
                (cons (__AST->datum (##car _%stx120267%_))
                      (__AST->datum (##cdr _%stx120267%_)))
                (if (vector? _%stx120267%_)
                    (vector-map __AST->datum _%stx120267%_)
                    (if (box? _%stx120267%_)
                        (box (__AST->datum (unbox _%stx120267%_)))
                        _%stx120267%_))))))
    (define get-readenv
      (lambda (_%port120265%_)
        (##make-readenv
         _%port120265%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in120253%_)
        (let ((_%e120255%_ (##read-datum-or-eof (get-readenv _%in120253%_))))
          (if (eof-object? (__AST-e _%e120255%_))
              (__AST-e _%e120255%_)
              _%e120255%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in120261%_ (current-input-port)))
          (read-syntax__% _%in120261%_))))
    (define read-syntax
      (lambda _g120982_
        (let ((_g120983_ (##length _g120982_)))
          (cond ((##fx= _g120983_ 0) (apply read-syntax__0 _g120982_))
                ((##fx= _g120983_ 1) (apply read-syntax__% _g120982_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g120982_))))))
    (define read-syntax-from-file
      (lambda (_%path120248%_)
        (let ((_%r120250%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path120248%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r120250%_)
              (cdr (__AST-e (vector-ref _%r120250%_ '1)))
              (error (err-code->string _%r120250%_) _%path120248%_)))))
    (define __wrap-syntax
      (lambda (_%re120245%_ _%e120246%_)
        (if (eof-object? _%e120246%_)
            _%e120246%_
            (##structure AST::t _%e120246%_ (##readenv->locat _%re120245%_)))))
    (define __unwrap-syntax
      (lambda (_%re120242%_ _%e120243%_) (__AST-e _%e120243%_)))
    (define __pp-syntax
      (lambda (_%stx120240%_) (pp (__AST->datum _%stx120240%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt120238%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt120238%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt120238%_ '@list)
          (macro-readtable-brace-handler-set! _%rt120238%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt120238%_
           '#\!
           __read-sharp-bang)
          _%rt120238%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt120234%_ _%kw120235%_)
        (macro-readtable-bracket-handler-set! _%rt120234%_ _%kw120235%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt120231%_ _%kw120232%_)
        (macro-readtable-brace-handler-set! _%rt120231%_ _%kw120232%_)))
    (define __read-sharp-bang
      (lambda (_%re120222%_ _%next120223%_ _%start-pos120224%_)
        (if (eq? _%start-pos120224%_ '0)
            (let* ((_%line120226%_
                    (##read-line
                     (macro-readenv-port _%re120222%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line120228%_
                    (substring
                     _%line120226%_
                     '1
                     (string-length _%line120226%_))))
              (macro-readenv-script-line-set!
               _%re120222%_
               _%script-line120228%_)
              (##script-marker))
            (##read-sharp-bang
             _%re120222%_
             _%next120223%_
             _%start-pos120224%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj120220%_)
        (if (source-location? _%obj120220%_)
            (string? (##locat-container _%obj120220%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj120218%_)
        (if (##locat? _%obj120218%_)
            (##container->path (##locat-container _%obj120218%_))
            '#f)))))

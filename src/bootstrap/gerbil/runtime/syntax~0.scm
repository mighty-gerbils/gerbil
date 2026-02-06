(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1770342548)
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
      (lambda _%$args156347%_
        (apply make-instance SyntaxError::t _%$args156347%_)))
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
      (lambda (_%self156066%_ _%port156067%_)
        (let ((_%self156070%_ _%self156066%_))
          (letrec ((_%location156081%_
                    (lambda ()
                      (letrec ((_%from-irritants156222%_
                                (lambda ()
                                  (let _%lp156307%_ ((_%rest156309%_
                                                      (##unchecked-structure-ref
                                                       _%self156070%_
                                                       '3
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest156310156318%_
                                            _%rest156309%_)
                                           (_%else156312156326%_
                                            (lambda () '#f))
                                           (_%K156314156335%_
                                            (lambda (_%rest156329%_
                                                     _%hd156330%_)
                                              (let ((_%$e156332%_
                                                     (__AST-source
                                                      _%hd156330%_)))
                                                (if _%$e156332%_
                                                    _%$e156332%_
                                                    (_%lp156307%_
                                                     _%rest156329%_))))))
                                      (if (pair? _%rest156310156318%_)
                                          (let ((_%hd156315156338%_
                                                 (##car _%rest156310156318%_))
                                                (_%tl156316156340%_
                                                 (##cdr _%rest156310156318%_)))
                                            (let* ((_%hd156343%_
                                                    _%hd156315156338%_)
                                                   (_%rest156345%_
                                                    _%tl156316156340%_))
                                              (_%K156314156335%_
                                               _%rest156345%_
                                               _%hd156343%_)))
                                          (_%else156312156326%_))))))
                               (_%from-context156223%_
                                (lambda ()
                                  (let _%lp156229%_ ((_%rest156231%_
                                                      (##unchecked-structure-ref
                                                       _%self156070%_
                                                       '4
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest156232156240%_
                                            _%rest156231%_)
                                           (_%else156234156248%_
                                            (lambda () '#f))
                                           (_%K156236156294%_
                                            (lambda (_%rest156251%_
                                                     _%hd156252%_)
                                              (let* ((_%hd156253156263%_
                                                      _%hd156252%_)
                                                     (_%else156255156271%_
                                                      (lambda ()
                                                        (_%lp156229%_
                                                         _%rest156251%_)))
                                                     (_%K156257156279%_
                                                      (lambda (_%loc156274%_)
                                                        (let ((_%$e156276%_
                                                               (__AST-source
                                                                _%loc156274%_)))
                                                          (if _%$e156276%_
                                                              _%$e156276%_
                                                              (_%lp156229%_
                                                               _%rest156251%_))))))
                                                (if (pair? _%hd156253156263%_)
                                                    (let ((_%hd156258156282%_
                                                           (##car _%hd156253156263%_))
                                                          (_%tl156259156284%_
                                                           (##cdr _%hd156253156263%_)))
                                                      (if (##eq? _%hd156258156282%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '@)
                  (if (pair? _%tl156259156284%_)
                      (let ((_%hd156260156287%_ (##car _%tl156259156284%_))
                            (_%tl156261156289%_ (##cdr _%tl156259156284%_)))
                        (let ((_%loc156292%_ _%hd156260156287%_))
                          (if (null? _%tl156261156289%_)
                              (_%K156257156279%_ _%loc156292%_)
                              (_%else156255156271%_))))
                      (_%else156255156271%_))
                  (_%else156255156271%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else156255156271%_))))))
                                      (if (pair? _%rest156232156240%_)
                                          (let ((_%hd156237156297%_
                                                 (##car _%rest156232156240%_))
                                                (_%tl156238156299%_
                                                 (##cdr _%rest156232156240%_)))
                                            (let* ((_%hd156302%_
                                                    _%hd156237156297%_)
                                                   (_%rest156304%_
                                                    _%tl156238156299%_))
                                              (_%K156236156294%_
                                               _%rest156304%_
                                               _%hd156302%_)))
                                          (_%else156234156248%_)))))))
                        (let ((_%$e156225%_ (_%from-irritants156222%_)))
                          (if _%$e156225%_
                              _%$e156225%_
                              (_%from-context156223%_)))))))
            (call-with-parameters__1
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e156084%_ (_%location156081%_)))
                 (if _%$e156084%_
                     ((lambda (_%loc156087%_)
                        (##display-locat _%loc156087%_ '#t _%port156067%_))
                      _%$e156084%_)
                     (display '"?")))
               (newline)
               (displayln
                '"--- Syntax Error: "
                (##unchecked-structure-ref _%self156070%_ '2 '#f '#f))
               (let ((_%$e156090%_
                      (##unchecked-structure-ref _%self156070%_ '4 '#f '#f)))
                 (if _%$e156090%_
                     ((lambda (_%where156093%_)
                        (displayln '"--- Context: ")
                        (let _%lp156095%_ ((_%rest156097%_ _%where156093%_))
                          (let* ((_%rest156098156106%_ _%rest156097%_)
                                 (_%else156100156114%_ (lambda () '#!void))
                                 (_%K156102156164%_
                                  (lambda (_%rest156117%_ _%hd156118%_)
                                    (let* ((_%hd156119156129%_ _%hd156118%_)
                                           (_%else156121156137%_
                                            (lambda ()
                                              (displayln '" at " _%hd156118%_)
                                              (_%lp156095%_ _%rest156117%_)))
                                           (_%K156123156149%_
                                            (lambda (_%ctx156140%_)
                                              (let ((_%$e156142%_
                                                     (__AST-source
                                                      _%ctx156140%_)))
                                                (if _%$e156142%_
                                                    ((lambda (_%loc156145%_)
                                                       (display '" at ")
                                                       (##display-locat
                                                        _%loc156145%_
                                                        '#t
                                                        _%port156067%_)
                                                       (newline)
                                                       (_%lp156095%_
                                                        _%rest156117%_))
                                                     _%$e156142%_)
                                                    (if (##structure-instance-of?
                                                         _%ctx156140%_
                                                         'gerbil#AST::t)
                                                        (let ()
                                                          (display '" at ")
                                                          (__pp-syntax
                                                           _%ctx156140%_)
                                                          (_%lp156095%_
                                                           _%rest156117%_))
                                                        (_%lp156095%_
                                                         _%rest156117%_)))))))
                                      (if (pair? _%hd156119156129%_)
                                          (let ((_%hd156124156152%_
                                                 (##car _%hd156119156129%_))
                                                (_%tl156125156154%_
                                                 (##cdr _%hd156119156129%_)))
                                            (if (##eq? _%hd156124156152%_ '@)
                                                (if (pair? _%tl156125156154%_)
                                                    (let ((_%hd156126156157%_
                                                           (##car _%tl156125156154%_))
                                                          (_%tl156127156159%_
                                                           (##cdr _%tl156125156154%_)))
                                                      (let ((_%ctx156162%_
                                                             _%hd156126156157%_))
                                                        (if (null? _%tl156127156159%_)
                                                            (_%K156123156149%_
                                                             _%ctx156162%_)
                                                            (_%else156121156137%_))))
                                                    (_%else156121156137%_))
                                                (_%else156121156137%_)))
                                          (_%else156121156137%_))))))
                            (if (pair? _%rest156098156106%_)
                                (let ((_%hd156103156167%_
                                       (##car _%rest156098156106%_))
                                      (_%tl156104156169%_
                                       (##cdr _%rest156098156106%_)))
                                  (let* ((_%hd156172%_ _%hd156103156167%_)
                                         (_%rest156174%_ _%tl156104156169%_))
                                    (_%K156102156164%_
                                     _%rest156174%_
                                     _%hd156172%_)))
                                '#!void))))
                      _%$e156090%_)
                     '#!void))
               (let* ((_%self.irritants156175156183%_
                       (##unchecked-structure-ref _%self156070%_ '3 '#f '#f))
                      (_%else156177156191%_ (lambda () '#!void))
                      (_%K156179156204%_
                       (lambda (_%rest156194%_ _%stx156195%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx156195%_)
                         (for-each
                          (lambda (_%detail156197%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail156197%_))
                            (let ((_%$e156199%_
                                   (__AST-source _%detail156197%_)))
                              (if _%$e156199%_
                                  ((lambda (_%loc156202%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc156202%_
                                      '#t
                                      _%port156067%_))
                                   _%$e156199%_)
                                  '#!void))
                            (newline))
                          _%rest156194%_))))
                 (if (pair? _%self.irritants156175156183%_)
                     (let ((_%hd156180156207%_
                            (##car _%self.irritants156175156183%_))
                           (_%tl156181156209%_
                            (##cdr _%self.irritants156175156183%_)))
                       (let* ((_%stx156212%_ _%hd156180156207%_)
                              (_%rest156214%_ _%tl156181156209%_))
                         (_%K156179156204%_ _%rest156214%_ _%stx156212%_)))
                     '#!void))
               (if __DEBUG
                   (let ((_%cont156215156217%_
                          (##unchecked-structure-ref
                           _%self156070%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont156215156217%_
                         (let ((_%cont156219%_ _%cont156215156217%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont156219%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port156067%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message155937%_
               _%irritants155938%_
               _%where155939%_
               _%context155940%_
               _%marks155941%_
               _%phi155942%_)
        (let ((__obj156444
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj156444 _%message155937%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj156444
           _%irritants155938%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj156444 _%where155939%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj156444 _%context155940%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj156444 _%marks155941%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj156444 _%phi155942%_ '6 '#f '#f)
          __obj156444)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where155932%_
               _%message155933%_
               _%stx155934%_
               .
               _%details155935%_)
        (raise (make-syntax-error
                _%message155933%_
                (cons _%stx155934%_ _%details155935%_)
                _%where155932%_
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
      (lambda _%$args155929%_ (apply make-instance AST::t _%$args155929%_)))
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
      (lambda (_%stx155927%_)
        (if (##structure-instance-of? _%stx155927%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx155927%_ '1 '#f '#f)
            _%stx155927%_)))
    (define __AST-source
      (lambda (_%stx155918%_)
        (let _%lp155920%_ ((_%src155922%_ _%stx155918%_))
          (if (##structure-instance-of? _%src155922%_ 'gerbil#AST::t)
              (_%lp155920%_
               (##unchecked-structure-ref _%src155922%_ '2 '#f '#f))
              (if (##locat? _%src155922%_) _%src155922%_ '#f)))))
    (define __AST
      (lambda (_%e155910%_ _%src-stx155911%_)
        (let ((_%src155913%_ (__AST-source _%src-stx155911%_)))
          (if (or (##structure-instance-of? _%e155910%_ 'gerbil#AST::t)
                  (not _%src155913%_))
              _%e155910%_
              (##structure AST::t _%e155910%_ _%src155913%_)))))
    (define __AST-eq?
      (lambda (_%stx155907%_ _%obj155908%_)
        (eq? (__AST-e _%stx155907%_) _%obj155908%_)))
    (define __AST-pair?
      (lambda (_%stx155905%_) (pair? (__AST-e _%stx155905%_))))
    (define __AST-null?
      (lambda (_%stx155903%_) (null? (__AST-e _%stx155903%_))))
    (define __AST-datum?
      (lambda (_%stx155884%_)
        (let* ((_%e155886%_ (__AST-e _%stx155884%_))
               (_%$e155888%_ (number? _%e155886%_)))
          (if _%$e155888%_
              _%$e155888%_
              (let ((_%$e155891%_ (string? _%e155886%_)))
                (if _%$e155891%_
                    _%$e155891%_
                    (let ((_%$e155894%_ (char? _%e155886%_)))
                      (if _%$e155894%_
                          _%$e155894%_
                          (let ((_%$e155897%_ (keyword? _%e155886%_)))
                            (if _%$e155897%_
                                _%$e155897%_
                                (let ((_%$e155900%_ (boolean? _%e155886%_)))
                                  (if _%$e155900%_
                                      _%$e155900%_
                                      (eq? _%e155886%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx155882%_) (symbol? (__AST-e _%stx155882%_))))
    (define __AST-id-list?__%
      (lambda (_%stx155833%_ _%tail?155834%_)
        (let _%lp155836%_ ((_%rest155838%_ _%stx155833%_))
          (let* ((_%$e155840%_ _%rest155838%_)
                 (_%$E155842155855%_
                  (lambda ()
                    (let* ((_%$E155843155850%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e155840%_)))
                           (_%rest155853%_ _%$e155840%_))
                      (_%tail?155834%_ _%rest155853%_)))))
            (if (__AST-pair? _%$e155840%_)
                (let* ((_%$tgt155844155858%_ (__AST-e _%$e155840%_))
                       (_%$hd155845155861%_ (##car _%$tgt155844155858%_))
                       (_%$tl155846155864%_ (##cdr _%$tgt155844155858%_))
                       (_%hd155868%_ _%$hd155845155861%_)
                       (_%rest155870%_ _%$tl155846155864%_))
                  (if (__AST-id? _%hd155868%_)
                      (_%lp155836%_ _%rest155870%_)
                      '#f))
                (_%$E155842155855%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx155875%_)
        (let ((_%tail?155877%_ __AST-null?))
          (__AST-id-list?__% _%stx155875%_ _%tail?155877%_))))
    (define __AST-id-list?
      (lambda _g156446_
        (let ((_g156447_ (##length _g156446_)))
          (cond ((##fx= _g156447_ 1) (apply __AST-id-list?__0 _g156446_))
                ((##fx= _g156447_ 2) (apply __AST-id-list?__% _g156446_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g156446_))))))
    (define __AST-bind-list?
      (lambda (_%stx155825%_)
        (__AST-id-list?__%
         _%stx155825%_
         (lambda (_%e155827%_)
           (let ((_%$e155829%_ (__AST-null? _%e155827%_)))
             (if _%$e155829%_ _%$e155829%_ (__AST-id? _%e155827%_)))))))
    (define __AST-list?__%
      (lambda (_%stx155778%_ _%tail?155779%_)
        (let _%lp155781%_ ((_%rest155783%_ _%stx155778%_))
          (let* ((_%$e155785%_ _%rest155783%_)
                 (_%$E155787155800%_
                  (lambda ()
                    (let* ((_%$E155788155795%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e155785%_)))
                           (_%rest155798%_ _%$e155785%_))
                      (_%tail?155779%_ _%rest155798%_)))))
            (if (__AST-pair? _%$e155785%_)
                (let* ((_%$tgt155789155803%_ (__AST-e _%$e155785%_))
                       (_%$hd155790155806%_ (##car _%$tgt155789155803%_))
                       (_%$tl155791155809%_ (##cdr _%$tgt155789155803%_))
                       (_%rest155813%_ _%$tl155791155809%_))
                  (_%lp155781%_ _%rest155813%_))
                (_%$E155787155800%_))))))
    (define __AST-list?__0
      (lambda (_%stx155818%_)
        (let ((_%tail?155820%_ __AST-null?))
          (__AST-list?__% _%stx155818%_ _%tail?155820%_))))
    (define __AST-list?
      (lambda _g156448_
        (let ((_g156449_ (##length _g156448_)))
          (cond ((##fx= _g156449_ 1) (apply __AST-list?__0 _g156448_))
                ((##fx= _g156449_ 2) (apply __AST-list?__% _g156448_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g156448_))))))
    (define __AST->list
      (lambda (_%stx155743%_)
        (let* ((_%$e155745%_ _%stx155743%_)
               (_%$E155747155760%_
                (lambda ()
                  (let* ((_%$E155748155755%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e155745%_)))
                         (_%rest155758%_ _%$e155745%_))
                    (__AST-e _%rest155758%_)))))
          (if (__AST-pair? _%$e155745%_)
              (let* ((_%$tgt155749155763%_ (__AST-e _%$e155745%_))
                     (_%$hd155750155766%_ (##car _%$tgt155749155763%_))
                     (_%$tl155751155769%_ (##cdr _%$tgt155749155763%_))
                     (_%hd155773%_ _%$hd155750155766%_)
                     (_%rest155775%_ _%$tl155751155769%_))
                (cons _%hd155773%_ (__AST->list _%rest155775%_)))
              (_%$E155747155760%_)))))
    (define __AST->datum
      (lambda (_%stx155736%_)
        (if (##structure-instance-of? _%stx155736%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx155736%_))
            (if (pair? _%stx155736%_)
                (cons (__AST->datum (##car _%stx155736%_))
                      (__AST->datum (##cdr _%stx155736%_)))
                (if (vector? _%stx155736%_)
                    (vector-map __AST->datum _%stx155736%_)
                    (if (box? _%stx155736%_)
                        (box (__AST->datum (unbox _%stx155736%_)))
                        _%stx155736%_))))))
    (define get-readenv
      (lambda (_%port155734%_)
        (##make-readenv
         _%port155734%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in155722%_)
        (let ((_%e155724%_ (##read-datum-or-eof (get-readenv _%in155722%_))))
          (if (eof-object? (__AST-e _%e155724%_))
              (__AST-e _%e155724%_)
              _%e155724%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in155730%_ (current-input-port)))
          (read-syntax__% _%in155730%_))))
    (define read-syntax
      (lambda _g156450_
        (let ((_g156451_ (##length _g156450_)))
          (cond ((##fx= _g156451_ 0) (apply read-syntax__0 _g156450_))
                ((##fx= _g156451_ 1) (apply read-syntax__% _g156450_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g156450_))))))
    (define read-syntax-from-file
      (lambda (_%path155717%_)
        (let ((_%r155719%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path155717%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r155719%_)
              (cdr (__AST-e (vector-ref _%r155719%_ '1)))
              (error (err-code->string _%r155719%_) _%path155717%_)))))
    (define __wrap-syntax
      (lambda (_%re155714%_ _%e155715%_)
        (if (eof-object? _%e155715%_)
            _%e155715%_
            (##structure AST::t _%e155715%_ (##readenv->locat _%re155714%_)))))
    (define __unwrap-syntax
      (lambda (_%re155711%_ _%e155712%_) (__AST-e _%e155712%_)))
    (define __pp-syntax
      (lambda (_%stx155709%_) (pp (__AST->datum _%stx155709%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt155707%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt155707%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt155707%_ '@list)
          (macro-readtable-brace-handler-set! _%rt155707%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt155707%_
           '#\!
           __read-sharp-bang)
          _%rt155707%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt155703%_ _%kw155704%_)
        (macro-readtable-bracket-handler-set! _%rt155703%_ _%kw155704%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt155700%_ _%kw155701%_)
        (macro-readtable-brace-handler-set! _%rt155700%_ _%kw155701%_)))
    (define __read-sharp-bang
      (lambda (_%re155691%_ _%next155692%_ _%start-pos155693%_)
        (if (eq? _%start-pos155693%_ '0)
            (let* ((_%line155695%_
                    (##read-line
                     (macro-readenv-port _%re155691%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line155697%_
                    (substring
                     _%line155695%_
                     '1
                     (string-length _%line155695%_))))
              (macro-readenv-script-line-set!
               _%re155691%_
               _%script-line155697%_)
              (##script-marker))
            (##read-sharp-bang
             _%re155691%_
             _%next155692%_
             _%start-pos155693%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj155689%_)
        (if (source-location? _%obj155689%_)
            (string? (##locat-container _%obj155689%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj155687%_)
        (if (##locat? _%obj155687%_)
            (##container->path (##locat-container _%obj155687%_))
            '#f)))))

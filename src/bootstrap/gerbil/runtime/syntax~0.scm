(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1783939348)
  (begin
    (declare (not safe))
    (define SyntaxError::t
      (__make-class-type
       'SyntaxError::t
       'SyntaxError
       (list Exception::t StackTrace::t)
       '(message irritants where context phi marks)
       (cons (cons 'final: '#t) '())
       '#f))
    (define SyntaxError? (__make-class-predicate SyntaxError::t))
    (define make-SyntaxError
      (lambda _%$args172576%_
        (apply make-instance SyntaxError::t _%$args172576%_)))
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
      (lambda (_%self172295%_ _%port172296%_)
        (let ((_%self172299%_ _%self172295%_))
          (letrec ((_%location172310%_
                    (lambda ()
                      (letrec ((_%from-irritants172451%_
                                (lambda ()
                                  (let _%lp172536%_ ((_%rest172538%_
                                                      (##unchecked-structure-ref
                                                       _%self172299%_
                                                       '3
                                                       '#f
                                                       '#f)))
                                    (let* ((_%$%rest172539172547%_
                                            _%rest172538%_)
                                           (_%$%else172541172555%_
                                            (lambda () '#f))
                                           (_%$%K172543172564%_
                                            (lambda (_%rest172558%_
                                                     _%hd172559%_)
                                              (let ((_%$e172561%_
                                                     (__AST-source
                                                      _%hd172559%_)))
                                                (if _%$e172561%_
                                                    _%$e172561%_
                                                    (_%lp172536%_
                                                     _%rest172558%_))))))
                                      (if (pair? _%$%rest172539172547%_)
                                          (let ((_%$%hd172544172567%_
                                                 (##car _%$%rest172539172547%_))
                                                (_%$%tl172545172569%_
                                                 (##cdr _%$%rest172539172547%_)))
                                            (let* ((_%hd172572%_
                                                    _%$%hd172544172567%_)
                                                   (_%rest172574%_
                                                    _%$%tl172545172569%_))
                                              (_%$%K172543172564%_
                                               _%rest172574%_
                                               _%hd172572%_)))
                                          (_%$%else172541172555%_))))))
                               (_%from-context172452%_
                                (lambda ()
                                  (let _%lp172458%_ ((_%rest172460%_
                                                      (##unchecked-structure-ref
                                                       _%self172299%_
                                                       '4
                                                       '#f
                                                       '#f)))
                                    (let* ((_%$%rest172461172469%_
                                            _%rest172460%_)
                                           (_%$%else172463172477%_
                                            (lambda () '#f))
                                           (_%$%K172465172523%_
                                            (lambda (_%rest172480%_
                                                     _%hd172481%_)
                                              (let* ((_%$%hd172482172492%_
                                                      _%hd172481%_)
                                                     (_%$%else172484172500%_
                                                      (lambda ()
                                                        (_%lp172458%_
                                                         _%rest172480%_)))
                                                     (_%$%K172486172508%_
                                                      (lambda (_%loc172503%_)
                                                        (let ((_%$e172505%_
                                                               (__AST-source
                                                                _%loc172503%_)))
                                                          (if _%$e172505%_
                                                              _%$e172505%_
                                                              (_%lp172458%_
                                                               _%rest172480%_))))))
                                                (if (pair? _%$%hd172482172492%_)
                                                    (let ((_%$%hd172487172511%_
                                                           (##car _%$%hd172482172492%_))
                                                          (_%$%tl172488172513%_
                                                           (##cdr _%$%hd172482172492%_)))
                                                      (if (##eq? _%$%hd172487172511%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '@)
                  (if (pair? _%$%tl172488172513%_)
                      (let ((_%$%hd172489172516%_ (##car _%$%tl172488172513%_))
                            (_%$%tl172490172518%_
                             (##cdr _%$%tl172488172513%_)))
                        (let ((_%loc172521%_ _%$%hd172489172516%_))
                          (if (null? _%$%tl172490172518%_)
                              (_%$%K172486172508%_ _%loc172521%_)
                              (_%$%else172484172500%_))))
                      (_%$%else172484172500%_))
                  (_%$%else172484172500%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else172484172500%_))))))
                                      (if (pair? _%$%rest172461172469%_)
                                          (let ((_%$%hd172466172526%_
                                                 (##car _%$%rest172461172469%_))
                                                (_%$%tl172467172528%_
                                                 (##cdr _%$%rest172461172469%_)))
                                            (let* ((_%hd172531%_
                                                    _%$%hd172466172526%_)
                                                   (_%rest172533%_
                                                    _%$%tl172467172528%_))
                                              (_%$%K172465172523%_
                                               _%rest172533%_
                                               _%hd172531%_)))
                                          (_%$%else172463172477%_)))))))
                        (let ((_%$e172454%_ (_%from-irritants172451%_)))
                          (if _%$e172454%_
                              _%$e172454%_
                              (_%from-context172452%_)))))))
            (call-with-parameters__1
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e172313%_ (_%location172310%_)))
                 (if _%$e172313%_
                     (##display-locat _%$e172313%_ '#t _%port172296%_)
                     (display '"?")))
               (newline)
               (displayln
                '"--- Syntax Error: "
                (##unchecked-structure-ref _%self172299%_ '2 '#f '#f))
               (let ((_%$e172319%_
                      (##unchecked-structure-ref _%self172299%_ '4 '#f '#f)))
                 (if _%$e172319%_
                     (let ()
                       (displayln '"--- Context: ")
                       (let _%lp172324%_ ((_%rest172326%_ _%$e172319%_))
                         (let* ((_%$%rest172327172335%_ _%rest172326%_)
                                (_%$%else172329172343%_ (lambda () '#!void))
                                (_%$%K172331172393%_
                                 (lambda (_%rest172346%_ _%hd172347%_)
                                   (let* ((_%$%hd172348172358%_ _%hd172347%_)
                                          (_%$%else172350172366%_
                                           (lambda ()
                                             (displayln '" at " _%hd172347%_)
                                             (_%lp172324%_ _%rest172346%_)))
                                          (_%$%K172352172378%_
                                           (lambda (_%ctx172369%_)
                                             (let ((_%$e172371%_
                                                    (__AST-source
                                                     _%ctx172369%_)))
                                               (if _%$e172371%_
                                                   (let ()
                                                     (display '" at ")
                                                     (##display-locat
                                                      _%$e172371%_
                                                      '#t
                                                      _%port172296%_)
                                                     (newline)
                                                     (_%lp172324%_
                                                      _%rest172346%_))
                                                   (if (##structure-instance-of?
                                                        _%ctx172369%_
                                                        'gerbil#AST::t)
                                                       (let ()
                                                         (display '" at ")
                                                         (__pp-syntax
                                                          _%ctx172369%_)
                                                         (_%lp172324%_
                                                          _%rest172346%_))
                                                       (_%lp172324%_
                                                        _%rest172346%_)))))))
                                     (if (pair? _%$%hd172348172358%_)
                                         (let ((_%$%hd172353172381%_
                                                (##car _%$%hd172348172358%_))
                                               (_%$%tl172354172383%_
                                                (##cdr _%$%hd172348172358%_)))
                                           (if (##eq? _%$%hd172353172381%_ '@)
                                               (if (pair? _%$%tl172354172383%_)
                                                   (let ((_%$%hd172355172386%_
                                                          (##car _%$%tl172354172383%_))
                                                         (_%$%tl172356172388%_
                                                          (##cdr _%$%tl172354172383%_)))
                                                     (let ((_%ctx172391%_
                                                            _%$%hd172355172386%_))
                                                       (if (null? _%$%tl172356172388%_)
                                                           (_%$%K172352172378%_
                                                            _%ctx172391%_)
                                                           (_%$%else172350172366%_))))
                                                   (_%$%else172350172366%_))
                                               (_%$%else172350172366%_)))
                                         (_%$%else172350172366%_))))))
                           (if (pair? _%$%rest172327172335%_)
                               (let ((_%$%hd172332172396%_
                                      (##car _%$%rest172327172335%_))
                                     (_%$%tl172333172398%_
                                      (##cdr _%$%rest172327172335%_)))
                                 (let* ((_%hd172401%_ _%$%hd172332172396%_)
                                        (_%rest172403%_ _%$%tl172333172398%_))
                                   (_%$%K172331172393%_
                                    _%rest172403%_
                                    _%hd172401%_)))
                               '#!void))))
                     '#!void))
               (let* ((_%$%self.irritants172404172412%_
                       (##unchecked-structure-ref _%self172299%_ '3 '#f '#f))
                      (_%$%else172406172420%_ (lambda () '#!void))
                      (_%$%K172408172433%_
                       (lambda (_%rest172423%_ _%stx172424%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx172424%_)
                         (for-each
                          (lambda (_%detail172426%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail172426%_))
                            (let ((_%$e172428%_
                                   (__AST-source _%detail172426%_)))
                              (if _%$e172428%_
                                  (let ()
                                    (display '" at ")
                                    (##display-locat
                                     _%$e172428%_
                                     '#t
                                     _%port172296%_))
                                  '#!void))
                            (newline))
                          _%rest172423%_))))
                 (if (pair? _%$%self.irritants172404172412%_)
                     (let ((_%$%hd172409172436%_
                            (##car _%$%self.irritants172404172412%_))
                           (_%$%tl172410172438%_
                            (##cdr _%$%self.irritants172404172412%_)))
                       (let* ((_%stx172441%_ _%$%hd172409172436%_)
                              (_%rest172443%_ _%$%tl172410172438%_))
                         (_%$%K172408172433%_ _%rest172443%_ _%stx172441%_)))
                     '#!void))
               (if __DEBUG
                   (let ((_%$%cont172444172446%_
                          (##unchecked-structure-ref
                           _%self172299%_
                           '1
                           '#f
                           '#f)))
                     (if _%$%cont172444172446%_
                         (let ((_%cont172448%_ _%$%cont172444172446%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont172448%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port172296%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (let* ((_%klass172158%_ SyntaxError::t) (_%klass172163%_ _%klass172158%_))
      (__seal-class! _%klass172163%_))
    (define make-syntax-error
      (lambda (_%message172151%_
               _%irritants172152%_
               _%where172153%_
               _%context172154%_
               _%marks172155%_
               _%phi172156%_)
        (let ((__obj172673
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj172673 _%message172151%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj172673
           _%irritants172152%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj172673 _%where172153%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj172673 _%context172154%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj172673 _%marks172155%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj172673 _%phi172156%_ '6 '#f '#f)
          __obj172673)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where172146%_
               _%message172147%_
               _%stx172148%_
               .
               _%details172149%_)
        (raise (make-syntax-error
                _%message172147%_
                (cons _%stx172148%_ _%details172149%_)
                _%where172146%_
                '#f
                '#f
                '#f))))
    (define AST::t
      (__make-class-type
       'gerbil#AST::t
       'syntax
       (list)
       '(e source)
       (cons (cons 'struct: '#t) '((print: e)))
       '#f))
    (define AST? (__make-class-predicate AST::t))
    (define make-AST
      (lambda _%$args172143%_ (apply make-instance AST::t _%$args172143%_)))
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
      (lambda (_%stx172141%_)
        (if (##structure-instance-of? _%stx172141%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx172141%_ '1 '#f '#f)
            _%stx172141%_)))
    (define __AST-source
      (lambda (_%stx172132%_)
        (let _%lp172134%_ ((_%src172136%_ _%stx172132%_))
          (if (##structure-instance-of? _%src172136%_ 'gerbil#AST::t)
              (_%lp172134%_
               (##unchecked-structure-ref _%src172136%_ '2 '#f '#f))
              (if (##locat? _%src172136%_) _%src172136%_ '#f)))))
    (define __AST
      (lambda (_%e172124%_ _%src-stx172125%_)
        (let ((_%src172127%_ (__AST-source _%src-stx172125%_)))
          (if (or (##structure-instance-of? _%e172124%_ 'gerbil#AST::t)
                  (not _%src172127%_))
              _%e172124%_
              (##structure AST::t _%e172124%_ _%src172127%_)))))
    (define __AST-eq?
      (lambda (_%stx172121%_ _%obj172122%_)
        (eq? (__AST-e _%stx172121%_) _%obj172122%_)))
    (define __AST-pair?
      (lambda (_%stx172119%_) (pair? (__AST-e _%stx172119%_))))
    (define __AST-null?
      (lambda (_%stx172117%_) (null? (__AST-e _%stx172117%_))))
    (define __AST-datum?
      (lambda (_%stx172098%_)
        (let* ((_%e172100%_ (__AST-e _%stx172098%_))
               (_%$e172102%_ (number? _%e172100%_)))
          (if _%$e172102%_
              _%$e172102%_
              (let ((_%$e172105%_ (string? _%e172100%_)))
                (if _%$e172105%_
                    _%$e172105%_
                    (let ((_%$e172108%_ (char? _%e172100%_)))
                      (if _%$e172108%_
                          _%$e172108%_
                          (let ((_%$e172111%_ (keyword? _%e172100%_)))
                            (if _%$e172111%_
                                _%$e172111%_
                                (let ((_%$e172114%_ (boolean? _%e172100%_)))
                                  (if _%$e172114%_
                                      _%$e172114%_
                                      (eq? _%e172100%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx172096%_) (symbol? (__AST-e _%stx172096%_))))
    (define __AST-id-list?__%
      (lambda (_%stx172047%_ _%tail?172048%_)
        (let _%lp172050%_ ((_%rest172052%_ _%stx172047%_))
          (let* ((_%$e172054%_ _%rest172052%_)
                 (_%$%$E172056172069%_
                  (lambda ()
                    (let* ((_%$%$E172057172064%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e172054%_)))
                           (_%rest172067%_ _%$e172054%_))
                      (_%tail?172048%_ _%rest172067%_)))))
            (if (__AST-pair? _%$e172054%_)
                (let* ((_%$%$tgt172058172072%_ (__AST-e _%$e172054%_))
                       (_%$%$hd172059172075%_ (##car _%$%$tgt172058172072%_))
                       (_%$%$tl172060172078%_ (##cdr _%$%$tgt172058172072%_))
                       (_%hd172082%_ _%$%$hd172059172075%_)
                       (_%rest172084%_ _%$%$tl172060172078%_))
                  (if (__AST-id? _%hd172082%_)
                      (_%lp172050%_ _%rest172084%_)
                      '#f))
                (_%$%$E172056172069%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx172089%_)
        (let ((_%tail?172091%_ __AST-null?))
          (__AST-id-list?__% _%stx172089%_ _%tail?172091%_))))
    (define __AST-id-list?
      (lambda _g172675_
        (let ((_g172676_ (##length _g172675_)))
          (cond ((##fx= _g172676_ 1) (apply __AST-id-list?__0 _g172675_))
                ((##fx= _g172676_ 2) (apply __AST-id-list?__% _g172675_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g172675_))))))
    (define __AST-bind-list?
      (lambda (_%stx172039%_)
        (__AST-id-list?__%
         _%stx172039%_
         (lambda (_%e172041%_)
           (let ((_%$e172043%_ (__AST-null? _%e172041%_)))
             (if _%$e172043%_ _%$e172043%_ (__AST-id? _%e172041%_)))))))
    (define __AST-list?__%
      (lambda (_%stx171992%_ _%tail?171993%_)
        (let _%lp171995%_ ((_%rest171997%_ _%stx171992%_))
          (let* ((_%$e171999%_ _%rest171997%_)
                 (_%$%$E172001172014%_
                  (lambda ()
                    (let* ((_%$%$E172002172009%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e171999%_)))
                           (_%rest172012%_ _%$e171999%_))
                      (_%tail?171993%_ _%rest172012%_)))))
            (if (__AST-pair? _%$e171999%_)
                (let* ((_%$%$tgt172003172017%_ (__AST-e _%$e171999%_))
                       (_%$%$hd172004172020%_ (##car _%$%$tgt172003172017%_))
                       (_%$%$tl172005172023%_ (##cdr _%$%$tgt172003172017%_))
                       (_%rest172027%_ _%$%$tl172005172023%_))
                  (_%lp171995%_ _%rest172027%_))
                (_%$%$E172001172014%_))))))
    (define __AST-list?__0
      (lambda (_%stx172032%_)
        (let ((_%tail?172034%_ __AST-null?))
          (__AST-list?__% _%stx172032%_ _%tail?172034%_))))
    (define __AST-list?
      (lambda _g172677_
        (let ((_g172678_ (##length _g172677_)))
          (cond ((##fx= _g172678_ 1) (apply __AST-list?__0 _g172677_))
                ((##fx= _g172678_ 2) (apply __AST-list?__% _g172677_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g172677_))))))
    (define __AST->list
      (lambda (_%stx171957%_)
        (let* ((_%$e171959%_ _%stx171957%_)
               (_%$%$E171961171974%_
                (lambda ()
                  (let* ((_%$%$E171962171969%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e171959%_)))
                         (_%rest171972%_ _%$e171959%_))
                    (__AST-e _%rest171972%_)))))
          (if (__AST-pair? _%$e171959%_)
              (let* ((_%$%$tgt171963171977%_ (__AST-e _%$e171959%_))
                     (_%$%$hd171964171980%_ (##car _%$%$tgt171963171977%_))
                     (_%$%$tl171965171983%_ (##cdr _%$%$tgt171963171977%_))
                     (_%hd171987%_ _%$%$hd171964171980%_)
                     (_%rest171989%_ _%$%$tl171965171983%_))
                (cons _%hd171987%_ (__AST->list _%rest171989%_)))
              (_%$%$E171961171974%_)))))
    (define __AST->datum
      (lambda (_%stx171950%_)
        (if (##structure-instance-of? _%stx171950%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx171950%_))
            (if (pair? _%stx171950%_)
                (cons (__AST->datum (##car _%stx171950%_))
                      (__AST->datum (##cdr _%stx171950%_)))
                (if (vector? _%stx171950%_)
                    (vector-map __AST->datum _%stx171950%_)
                    (if (box? _%stx171950%_)
                        (box (__AST->datum (unbox _%stx171950%_)))
                        _%stx171950%_))))))
    (define get-readenv
      (lambda (_%port171948%_)
        (##make-readenv
         _%port171948%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in171936%_)
        (let ((_%e171938%_ (##read-datum-or-eof (get-readenv _%in171936%_))))
          (if (eof-object? (__AST-e _%e171938%_))
              (__AST-e _%e171938%_)
              _%e171938%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in171944%_ (current-input-port)))
          (read-syntax__% _%in171944%_))))
    (define read-syntax
      (lambda _g172679_
        (let ((_g172680_ (##length _g172679_)))
          (cond ((##fx= _g172680_ 0) (apply read-syntax__0 _g172679_))
                ((##fx= _g172680_ 1) (apply read-syntax__% _g172679_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g172679_))))))
    (define read-syntax-from-file
      (lambda (_%path171931%_)
        (let ((_%r171933%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path171931%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r171933%_)
              (cdr (__AST-e (vector-ref _%r171933%_ '1)))
              (error (err-code->string _%r171933%_) _%path171931%_)))))
    (define __wrap-syntax
      (lambda (_%re171928%_ _%e171929%_)
        (if (eof-object? _%e171929%_)
            _%e171929%_
            (##structure AST::t _%e171929%_ (##readenv->locat _%re171928%_)))))
    (define __unwrap-syntax
      (lambda (_%re171925%_ _%e171926%_) (__AST-e _%e171926%_)))
    (define __pp-syntax
      (lambda (_%stx171923%_) (pp (__AST->datum _%stx171923%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt171921%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt171921%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt171921%_ '@list)
          (macro-readtable-brace-handler-set! _%rt171921%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt171921%_
           '#\!
           __read-sharp-bang)
          _%rt171921%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt171917%_ _%kw171918%_)
        (macro-readtable-bracket-handler-set! _%rt171917%_ _%kw171918%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt171914%_ _%kw171915%_)
        (macro-readtable-brace-handler-set! _%rt171914%_ _%kw171915%_)))
    (define __read-sharp-bang
      (lambda (_%re171905%_ _%next171906%_ _%start-pos171907%_)
        (if (eq? _%start-pos171907%_ '0)
            (let* ((_%line171909%_
                    (##read-line
                     (macro-readenv-port _%re171905%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line171911%_
                    (substring
                     _%line171909%_
                     '1
                     (string-length _%line171909%_))))
              (macro-readenv-script-line-set!
               _%re171905%_
               _%script-line171911%_)
              (##script-marker))
            (##read-sharp-bang
             _%re171905%_
             _%next171906%_
             _%start-pos171907%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj171903%_)
        (if (source-location? _%obj171903%_)
            (string? (##locat-container _%obj171903%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj171901%_)
        (if (##locat? _%obj171901%_)
            (##container->path (##locat-container _%obj171901%_))
            '#f)))))

(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1783878476)
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
      (lambda _%$args172248%_
        (apply make-instance SyntaxError::t _%$args172248%_)))
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
      (lambda (_%self171967%_ _%port171968%_)
        (let ((_%self171971%_ _%self171967%_))
          (letrec ((_%location171982%_
                    (lambda ()
                      (letrec ((_%from-irritants172123%_
                                (lambda ()
                                  (let _%lp172208%_ ((_%rest172210%_
                                                      (##unchecked-structure-ref
                                                       _%self171971%_
                                                       '3
                                                       '#f
                                                       '#f)))
                                    (let* ((_%$%rest172211172219%_
                                            _%rest172210%_)
                                           (_%$%else172213172227%_
                                            (lambda () '#f))
                                           (_%$%K172215172236%_
                                            (lambda (_%rest172230%_
                                                     _%hd172231%_)
                                              (let ((_%$e172233%_
                                                     (__AST-source
                                                      _%hd172231%_)))
                                                (if _%$e172233%_
                                                    _%$e172233%_
                                                    (_%lp172208%_
                                                     _%rest172230%_))))))
                                      (if (pair? _%$%rest172211172219%_)
                                          (let ((_%$%hd172216172239%_
                                                 (##car _%$%rest172211172219%_))
                                                (_%$%tl172217172241%_
                                                 (##cdr _%$%rest172211172219%_)))
                                            (let* ((_%hd172244%_
                                                    _%$%hd172216172239%_)
                                                   (_%rest172246%_
                                                    _%$%tl172217172241%_))
                                              (_%$%K172215172236%_
                                               _%rest172246%_
                                               _%hd172244%_)))
                                          (_%$%else172213172227%_))))))
                               (_%from-context172124%_
                                (lambda ()
                                  (let _%lp172130%_ ((_%rest172132%_
                                                      (##unchecked-structure-ref
                                                       _%self171971%_
                                                       '4
                                                       '#f
                                                       '#f)))
                                    (let* ((_%$%rest172133172141%_
                                            _%rest172132%_)
                                           (_%$%else172135172149%_
                                            (lambda () '#f))
                                           (_%$%K172137172195%_
                                            (lambda (_%rest172152%_
                                                     _%hd172153%_)
                                              (let* ((_%$%hd172154172164%_
                                                      _%hd172153%_)
                                                     (_%$%else172156172172%_
                                                      (lambda ()
                                                        (_%lp172130%_
                                                         _%rest172152%_)))
                                                     (_%$%K172158172180%_
                                                      (lambda (_%loc172175%_)
                                                        (let ((_%$e172177%_
                                                               (__AST-source
                                                                _%loc172175%_)))
                                                          (if _%$e172177%_
                                                              _%$e172177%_
                                                              (_%lp172130%_
                                                               _%rest172152%_))))))
                                                (if (pair? _%$%hd172154172164%_)
                                                    (let ((_%$%hd172159172183%_
                                                           (##car _%$%hd172154172164%_))
                                                          (_%$%tl172160172185%_
                                                           (##cdr _%$%hd172154172164%_)))
                                                      (if (##eq? _%$%hd172159172183%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '@)
                  (if (pair? _%$%tl172160172185%_)
                      (let ((_%$%hd172161172188%_ (##car _%$%tl172160172185%_))
                            (_%$%tl172162172190%_
                             (##cdr _%$%tl172160172185%_)))
                        (let ((_%loc172193%_ _%$%hd172161172188%_))
                          (if (null? _%$%tl172162172190%_)
                              (_%$%K172158172180%_ _%loc172193%_)
                              (_%$%else172156172172%_))))
                      (_%$%else172156172172%_))
                  (_%$%else172156172172%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else172156172172%_))))))
                                      (if (pair? _%$%rest172133172141%_)
                                          (let ((_%$%hd172138172198%_
                                                 (##car _%$%rest172133172141%_))
                                                (_%$%tl172139172200%_
                                                 (##cdr _%$%rest172133172141%_)))
                                            (let* ((_%hd172203%_
                                                    _%$%hd172138172198%_)
                                                   (_%rest172205%_
                                                    _%$%tl172139172200%_))
                                              (_%$%K172137172195%_
                                               _%rest172205%_
                                               _%hd172203%_)))
                                          (_%$%else172135172149%_)))))))
                        (let ((_%$e172126%_ (_%from-irritants172123%_)))
                          (if _%$e172126%_
                              _%$e172126%_
                              (_%from-context172124%_)))))))
            (call-with-parameters__1
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e171985%_ (_%location171982%_)))
                 (if _%$e171985%_
                     (##display-locat _%$e171985%_ '#t _%port171968%_)
                     (display '"?")))
               (newline)
               (displayln
                '"--- Syntax Error: "
                (##unchecked-structure-ref _%self171971%_ '2 '#f '#f))
               (let ((_%$e171991%_
                      (##unchecked-structure-ref _%self171971%_ '4 '#f '#f)))
                 (if _%$e171991%_
                     (let ()
                       (displayln '"--- Context: ")
                       (let _%lp171996%_ ((_%rest171998%_ _%$e171991%_))
                         (let* ((_%$%rest171999172007%_ _%rest171998%_)
                                (_%$%else172001172015%_ (lambda () '#!void))
                                (_%$%K172003172065%_
                                 (lambda (_%rest172018%_ _%hd172019%_)
                                   (let* ((_%$%hd172020172030%_ _%hd172019%_)
                                          (_%$%else172022172038%_
                                           (lambda ()
                                             (displayln '" at " _%hd172019%_)
                                             (_%lp171996%_ _%rest172018%_)))
                                          (_%$%K172024172050%_
                                           (lambda (_%ctx172041%_)
                                             (let ((_%$e172043%_
                                                    (__AST-source
                                                     _%ctx172041%_)))
                                               (if _%$e172043%_
                                                   (let ()
                                                     (display '" at ")
                                                     (##display-locat
                                                      _%$e172043%_
                                                      '#t
                                                      _%port171968%_)
                                                     (newline)
                                                     (_%lp171996%_
                                                      _%rest172018%_))
                                                   (if (##structure-instance-of?
                                                        _%ctx172041%_
                                                        'gerbil#AST::t)
                                                       (let ()
                                                         (display '" at ")
                                                         (__pp-syntax
                                                          _%ctx172041%_)
                                                         (_%lp171996%_
                                                          _%rest172018%_))
                                                       (_%lp171996%_
                                                        _%rest172018%_)))))))
                                     (if (pair? _%$%hd172020172030%_)
                                         (let ((_%$%hd172025172053%_
                                                (##car _%$%hd172020172030%_))
                                               (_%$%tl172026172055%_
                                                (##cdr _%$%hd172020172030%_)))
                                           (if (##eq? _%$%hd172025172053%_ '@)
                                               (if (pair? _%$%tl172026172055%_)
                                                   (let ((_%$%hd172027172058%_
                                                          (##car _%$%tl172026172055%_))
                                                         (_%$%tl172028172060%_
                                                          (##cdr _%$%tl172026172055%_)))
                                                     (let ((_%ctx172063%_
                                                            _%$%hd172027172058%_))
                                                       (if (null? _%$%tl172028172060%_)
                                                           (_%$%K172024172050%_
                                                            _%ctx172063%_)
                                                           (_%$%else172022172038%_))))
                                                   (_%$%else172022172038%_))
                                               (_%$%else172022172038%_)))
                                         (_%$%else172022172038%_))))))
                           (if (pair? _%$%rest171999172007%_)
                               (let ((_%$%hd172004172068%_
                                      (##car _%$%rest171999172007%_))
                                     (_%$%tl172005172070%_
                                      (##cdr _%$%rest171999172007%_)))
                                 (let* ((_%hd172073%_ _%$%hd172004172068%_)
                                        (_%rest172075%_ _%$%tl172005172070%_))
                                   (_%$%K172003172065%_
                                    _%rest172075%_
                                    _%hd172073%_)))
                               '#!void))))
                     '#!void))
               (let* ((_%$%self.irritants172076172084%_
                       (##unchecked-structure-ref _%self171971%_ '3 '#f '#f))
                      (_%$%else172078172092%_ (lambda () '#!void))
                      (_%$%K172080172105%_
                       (lambda (_%rest172095%_ _%stx172096%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx172096%_)
                         (for-each
                          (lambda (_%detail172098%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail172098%_))
                            (let ((_%$e172100%_
                                   (__AST-source _%detail172098%_)))
                              (if _%$e172100%_
                                  (let ()
                                    (display '" at ")
                                    (##display-locat
                                     _%$e172100%_
                                     '#t
                                     _%port171968%_))
                                  '#!void))
                            (newline))
                          _%rest172095%_))))
                 (if (pair? _%$%self.irritants172076172084%_)
                     (let ((_%$%hd172081172108%_
                            (##car _%$%self.irritants172076172084%_))
                           (_%$%tl172082172110%_
                            (##cdr _%$%self.irritants172076172084%_)))
                       (let* ((_%stx172113%_ _%$%hd172081172108%_)
                              (_%rest172115%_ _%$%tl172082172110%_))
                         (_%$%K172080172105%_ _%rest172115%_ _%stx172113%_)))
                     '#!void))
               (if __DEBUG
                   (let ((_%$%cont172116172118%_
                          (##unchecked-structure-ref
                           _%self171971%_
                           '1
                           '#f
                           '#f)))
                     (if _%$%cont172116172118%_
                         (let ((_%cont172120%_ _%$%cont172116172118%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont172120%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port171968%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (let* ((_%klass171830%_ SyntaxError::t) (_%klass171835%_ _%klass171830%_))
      (__seal-class! _%klass171835%_))
    (define make-syntax-error
      (lambda (_%message171823%_
               _%irritants171824%_
               _%where171825%_
               _%context171826%_
               _%marks171827%_
               _%phi171828%_)
        (let ((__obj172345
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj172345 _%message171823%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj172345
           _%irritants171824%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj172345 _%where171825%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj172345 _%context171826%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj172345 _%marks171827%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj172345 _%phi171828%_ '6 '#f '#f)
          __obj172345)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where171818%_
               _%message171819%_
               _%stx171820%_
               .
               _%details171821%_)
        (raise (make-syntax-error
                _%message171819%_
                (cons _%stx171820%_ _%details171821%_)
                _%where171818%_
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
      (lambda _%$args171815%_ (apply make-instance AST::t _%$args171815%_)))
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
      (lambda (_%stx171813%_)
        (if (##structure-instance-of? _%stx171813%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx171813%_ '1 '#f '#f)
            _%stx171813%_)))
    (define __AST-source
      (lambda (_%stx171804%_)
        (let _%lp171806%_ ((_%src171808%_ _%stx171804%_))
          (if (##structure-instance-of? _%src171808%_ 'gerbil#AST::t)
              (_%lp171806%_
               (##unchecked-structure-ref _%src171808%_ '2 '#f '#f))
              (if (##locat? _%src171808%_) _%src171808%_ '#f)))))
    (define __AST
      (lambda (_%e171796%_ _%src-stx171797%_)
        (let ((_%src171799%_ (__AST-source _%src-stx171797%_)))
          (if (or (##structure-instance-of? _%e171796%_ 'gerbil#AST::t)
                  (not _%src171799%_))
              _%e171796%_
              (##structure AST::t _%e171796%_ _%src171799%_)))))
    (define __AST-eq?
      (lambda (_%stx171793%_ _%obj171794%_)
        (eq? (__AST-e _%stx171793%_) _%obj171794%_)))
    (define __AST-pair?
      (lambda (_%stx171791%_) (pair? (__AST-e _%stx171791%_))))
    (define __AST-null?
      (lambda (_%stx171789%_) (null? (__AST-e _%stx171789%_))))
    (define __AST-datum?
      (lambda (_%stx171770%_)
        (let* ((_%e171772%_ (__AST-e _%stx171770%_))
               (_%$e171774%_ (number? _%e171772%_)))
          (if _%$e171774%_
              _%$e171774%_
              (let ((_%$e171777%_ (string? _%e171772%_)))
                (if _%$e171777%_
                    _%$e171777%_
                    (let ((_%$e171780%_ (char? _%e171772%_)))
                      (if _%$e171780%_
                          _%$e171780%_
                          (let ((_%$e171783%_ (keyword? _%e171772%_)))
                            (if _%$e171783%_
                                _%$e171783%_
                                (let ((_%$e171786%_ (boolean? _%e171772%_)))
                                  (if _%$e171786%_
                                      _%$e171786%_
                                      (eq? _%e171772%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx171768%_) (symbol? (__AST-e _%stx171768%_))))
    (define __AST-id-list?__%
      (lambda (_%stx171719%_ _%tail?171720%_)
        (let _%lp171722%_ ((_%rest171724%_ _%stx171719%_))
          (let* ((_%$e171726%_ _%rest171724%_)
                 (_%$%$E171728171741%_
                  (lambda ()
                    (let* ((_%$%$E171729171736%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e171726%_)))
                           (_%rest171739%_ _%$e171726%_))
                      (_%tail?171720%_ _%rest171739%_)))))
            (if (__AST-pair? _%$e171726%_)
                (let* ((_%$%$tgt171730171744%_ (__AST-e _%$e171726%_))
                       (_%$%$hd171731171747%_ (##car _%$%$tgt171730171744%_))
                       (_%$%$tl171732171750%_ (##cdr _%$%$tgt171730171744%_))
                       (_%hd171754%_ _%$%$hd171731171747%_)
                       (_%rest171756%_ _%$%$tl171732171750%_))
                  (if (__AST-id? _%hd171754%_)
                      (_%lp171722%_ _%rest171756%_)
                      '#f))
                (_%$%$E171728171741%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx171761%_)
        (let ((_%tail?171763%_ __AST-null?))
          (__AST-id-list?__% _%stx171761%_ _%tail?171763%_))))
    (define __AST-id-list?
      (lambda _g172347_
        (let ((_g172348_ (##length _g172347_)))
          (cond ((##fx= _g172348_ 1) (apply __AST-id-list?__0 _g172347_))
                ((##fx= _g172348_ 2) (apply __AST-id-list?__% _g172347_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g172347_))))))
    (define __AST-bind-list?
      (lambda (_%stx171711%_)
        (__AST-id-list?__%
         _%stx171711%_
         (lambda (_%e171713%_)
           (let ((_%$e171715%_ (__AST-null? _%e171713%_)))
             (if _%$e171715%_ _%$e171715%_ (__AST-id? _%e171713%_)))))))
    (define __AST-list?__%
      (lambda (_%stx171664%_ _%tail?171665%_)
        (let _%lp171667%_ ((_%rest171669%_ _%stx171664%_))
          (let* ((_%$e171671%_ _%rest171669%_)
                 (_%$%$E171673171686%_
                  (lambda ()
                    (let* ((_%$%$E171674171681%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e171671%_)))
                           (_%rest171684%_ _%$e171671%_))
                      (_%tail?171665%_ _%rest171684%_)))))
            (if (__AST-pair? _%$e171671%_)
                (let* ((_%$%$tgt171675171689%_ (__AST-e _%$e171671%_))
                       (_%$%$hd171676171692%_ (##car _%$%$tgt171675171689%_))
                       (_%$%$tl171677171695%_ (##cdr _%$%$tgt171675171689%_))
                       (_%rest171699%_ _%$%$tl171677171695%_))
                  (_%lp171667%_ _%rest171699%_))
                (_%$%$E171673171686%_))))))
    (define __AST-list?__0
      (lambda (_%stx171704%_)
        (let ((_%tail?171706%_ __AST-null?))
          (__AST-list?__% _%stx171704%_ _%tail?171706%_))))
    (define __AST-list?
      (lambda _g172349_
        (let ((_g172350_ (##length _g172349_)))
          (cond ((##fx= _g172350_ 1) (apply __AST-list?__0 _g172349_))
                ((##fx= _g172350_ 2) (apply __AST-list?__% _g172349_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g172349_))))))
    (define __AST->list
      (lambda (_%stx171629%_)
        (let* ((_%$e171631%_ _%stx171629%_)
               (_%$%$E171633171646%_
                (lambda ()
                  (let* ((_%$%$E171634171641%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e171631%_)))
                         (_%rest171644%_ _%$e171631%_))
                    (__AST-e _%rest171644%_)))))
          (if (__AST-pair? _%$e171631%_)
              (let* ((_%$%$tgt171635171649%_ (__AST-e _%$e171631%_))
                     (_%$%$hd171636171652%_ (##car _%$%$tgt171635171649%_))
                     (_%$%$tl171637171655%_ (##cdr _%$%$tgt171635171649%_))
                     (_%hd171659%_ _%$%$hd171636171652%_)
                     (_%rest171661%_ _%$%$tl171637171655%_))
                (cons _%hd171659%_ (__AST->list _%rest171661%_)))
              (_%$%$E171633171646%_)))))
    (define __AST->datum
      (lambda (_%stx171622%_)
        (if (##structure-instance-of? _%stx171622%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx171622%_))
            (if (pair? _%stx171622%_)
                (cons (__AST->datum (##car _%stx171622%_))
                      (__AST->datum (##cdr _%stx171622%_)))
                (if (vector? _%stx171622%_)
                    (vector-map __AST->datum _%stx171622%_)
                    (if (box? _%stx171622%_)
                        (box (__AST->datum (unbox _%stx171622%_)))
                        _%stx171622%_))))))
    (define get-readenv
      (lambda (_%port171620%_)
        (##make-readenv
         _%port171620%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in171608%_)
        (let ((_%e171610%_ (##read-datum-or-eof (get-readenv _%in171608%_))))
          (if (eof-object? (__AST-e _%e171610%_))
              (__AST-e _%e171610%_)
              _%e171610%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in171616%_ (current-input-port)))
          (read-syntax__% _%in171616%_))))
    (define read-syntax
      (lambda _g172351_
        (let ((_g172352_ (##length _g172351_)))
          (cond ((##fx= _g172352_ 0) (apply read-syntax__0 _g172351_))
                ((##fx= _g172352_ 1) (apply read-syntax__% _g172351_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g172351_))))))
    (define read-syntax-from-file
      (lambda (_%path171603%_)
        (let ((_%r171605%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path171603%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r171605%_)
              (cdr (__AST-e (vector-ref _%r171605%_ '1)))
              (error (err-code->string _%r171605%_) _%path171603%_)))))
    (define __wrap-syntax
      (lambda (_%re171600%_ _%e171601%_)
        (if (eof-object? _%e171601%_)
            _%e171601%_
            (##structure AST::t _%e171601%_ (##readenv->locat _%re171600%_)))))
    (define __unwrap-syntax
      (lambda (_%re171597%_ _%e171598%_) (__AST-e _%e171598%_)))
    (define __pp-syntax
      (lambda (_%stx171595%_) (pp (__AST->datum _%stx171595%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt171593%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt171593%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt171593%_ '@list)
          (macro-readtable-brace-handler-set! _%rt171593%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt171593%_
           '#\!
           __read-sharp-bang)
          _%rt171593%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt171589%_ _%kw171590%_)
        (macro-readtable-bracket-handler-set! _%rt171589%_ _%kw171590%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt171586%_ _%kw171587%_)
        (macro-readtable-brace-handler-set! _%rt171586%_ _%kw171587%_)))
    (define __read-sharp-bang
      (lambda (_%re171577%_ _%next171578%_ _%start-pos171579%_)
        (if (eq? _%start-pos171579%_ '0)
            (let* ((_%line171581%_
                    (##read-line
                     (macro-readenv-port _%re171577%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line171583%_
                    (substring
                     _%line171581%_
                     '1
                     (string-length _%line171581%_))))
              (macro-readenv-script-line-set!
               _%re171577%_
               _%script-line171583%_)
              (##script-marker))
            (##read-sharp-bang
             _%re171577%_
             _%next171578%_
             _%start-pos171579%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj171575%_)
        (if (source-location? _%obj171575%_)
            (string? (##locat-container _%obj171575%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj171573%_)
        (if (##locat? _%obj171573%_)
            (##container->path (##locat-container _%obj171573%_))
            '#f)))))

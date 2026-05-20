(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1779274770)
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
      (lambda _%$args167422%_
        (apply make-instance SyntaxError::t _%$args167422%_)))
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
      (lambda (_%self167141%_ _%port167142%_)
        (let ((_%self167145%_ _%self167141%_))
          (letrec ((_%location167156%_
                    (lambda ()
                      (letrec ((_%from-irritants167297%_
                                (lambda ()
                                  (let _%lp167382%_ ((_%rest167384%_
                                                      (##unchecked-structure-ref
                                                       _%self167145%_
                                                       '3
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest167385167393%_
                                            _%rest167384%_)
                                           (_%else167387167401%_
                                            (lambda () '#f))
                                           (_%K167389167410%_
                                            (lambda (_%rest167404%_
                                                     _%hd167405%_)
                                              (let ((_%$e167407%_
                                                     (__AST-source
                                                      _%hd167405%_)))
                                                (if _%$e167407%_
                                                    _%$e167407%_
                                                    (_%lp167382%_
                                                     _%rest167404%_))))))
                                      (if (pair? _%rest167385167393%_)
                                          (let ((_%hd167390167413%_
                                                 (##car _%rest167385167393%_))
                                                (_%tl167391167415%_
                                                 (##cdr _%rest167385167393%_)))
                                            (let* ((_%hd167418%_
                                                    _%hd167390167413%_)
                                                   (_%rest167420%_
                                                    _%tl167391167415%_))
                                              (_%K167389167410%_
                                               _%rest167420%_
                                               _%hd167418%_)))
                                          (_%else167387167401%_))))))
                               (_%from-context167298%_
                                (lambda ()
                                  (let _%lp167304%_ ((_%rest167306%_
                                                      (##unchecked-structure-ref
                                                       _%self167145%_
                                                       '4
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest167307167315%_
                                            _%rest167306%_)
                                           (_%else167309167323%_
                                            (lambda () '#f))
                                           (_%K167311167369%_
                                            (lambda (_%rest167326%_
                                                     _%hd167327%_)
                                              (let* ((_%hd167328167338%_
                                                      _%hd167327%_)
                                                     (_%else167330167346%_
                                                      (lambda ()
                                                        (_%lp167304%_
                                                         _%rest167326%_)))
                                                     (_%K167332167354%_
                                                      (lambda (_%loc167349%_)
                                                        (let ((_%$e167351%_
                                                               (__AST-source
                                                                _%loc167349%_)))
                                                          (if _%$e167351%_
                                                              _%$e167351%_
                                                              (_%lp167304%_
                                                               _%rest167326%_))))))
                                                (if (pair? _%hd167328167338%_)
                                                    (let ((_%hd167333167357%_
                                                           (##car _%hd167328167338%_))
                                                          (_%tl167334167359%_
                                                           (##cdr _%hd167328167338%_)))
                                                      (if (##eq? _%hd167333167357%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '@)
                  (if (pair? _%tl167334167359%_)
                      (let ((_%hd167335167362%_ (##car _%tl167334167359%_))
                            (_%tl167336167364%_ (##cdr _%tl167334167359%_)))
                        (let ((_%loc167367%_ _%hd167335167362%_))
                          (if (null? _%tl167336167364%_)
                              (_%K167332167354%_ _%loc167367%_)
                              (_%else167330167346%_))))
                      (_%else167330167346%_))
                  (_%else167330167346%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else167330167346%_))))))
                                      (if (pair? _%rest167307167315%_)
                                          (let ((_%hd167312167372%_
                                                 (##car _%rest167307167315%_))
                                                (_%tl167313167374%_
                                                 (##cdr _%rest167307167315%_)))
                                            (let* ((_%hd167377%_
                                                    _%hd167312167372%_)
                                                   (_%rest167379%_
                                                    _%tl167313167374%_))
                                              (_%K167311167369%_
                                               _%rest167379%_
                                               _%hd167377%_)))
                                          (_%else167309167323%_)))))))
                        (let ((_%$e167300%_ (_%from-irritants167297%_)))
                          (if _%$e167300%_
                              _%$e167300%_
                              (_%from-context167298%_)))))))
            (call-with-parameters__1
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e167159%_ (_%location167156%_)))
                 (if _%$e167159%_
                     ((lambda (_%loc167162%_)
                        (##display-locat _%loc167162%_ '#t _%port167142%_))
                      _%$e167159%_)
                     (display '"?")))
               (newline)
               (displayln
                '"--- Syntax Error: "
                (##unchecked-structure-ref _%self167145%_ '2 '#f '#f))
               (let ((_%$e167165%_
                      (##unchecked-structure-ref _%self167145%_ '4 '#f '#f)))
                 (if _%$e167165%_
                     ((lambda (_%where167168%_)
                        (displayln '"--- Context: ")
                        (let _%lp167170%_ ((_%rest167172%_ _%where167168%_))
                          (let* ((_%rest167173167181%_ _%rest167172%_)
                                 (_%else167175167189%_ (lambda () '#!void))
                                 (_%K167177167239%_
                                  (lambda (_%rest167192%_ _%hd167193%_)
                                    (let* ((_%hd167194167204%_ _%hd167193%_)
                                           (_%else167196167212%_
                                            (lambda ()
                                              (displayln '" at " _%hd167193%_)
                                              (_%lp167170%_ _%rest167192%_)))
                                           (_%K167198167224%_
                                            (lambda (_%ctx167215%_)
                                              (let ((_%$e167217%_
                                                     (__AST-source
                                                      _%ctx167215%_)))
                                                (if _%$e167217%_
                                                    ((lambda (_%loc167220%_)
                                                       (display '" at ")
                                                       (##display-locat
                                                        _%loc167220%_
                                                        '#t
                                                        _%port167142%_)
                                                       (newline)
                                                       (_%lp167170%_
                                                        _%rest167192%_))
                                                     _%$e167217%_)
                                                    (if (##structure-instance-of?
                                                         _%ctx167215%_
                                                         'gerbil#AST::t)
                                                        (let ()
                                                          (display '" at ")
                                                          (__pp-syntax
                                                           _%ctx167215%_)
                                                          (_%lp167170%_
                                                           _%rest167192%_))
                                                        (_%lp167170%_
                                                         _%rest167192%_)))))))
                                      (if (pair? _%hd167194167204%_)
                                          (let ((_%hd167199167227%_
                                                 (##car _%hd167194167204%_))
                                                (_%tl167200167229%_
                                                 (##cdr _%hd167194167204%_)))
                                            (if (##eq? _%hd167199167227%_ '@)
                                                (if (pair? _%tl167200167229%_)
                                                    (let ((_%hd167201167232%_
                                                           (##car _%tl167200167229%_))
                                                          (_%tl167202167234%_
                                                           (##cdr _%tl167200167229%_)))
                                                      (let ((_%ctx167237%_
                                                             _%hd167201167232%_))
                                                        (if (null? _%tl167202167234%_)
                                                            (_%K167198167224%_
                                                             _%ctx167237%_)
                                                            (_%else167196167212%_))))
                                                    (_%else167196167212%_))
                                                (_%else167196167212%_)))
                                          (_%else167196167212%_))))))
                            (if (pair? _%rest167173167181%_)
                                (let ((_%hd167178167242%_
                                       (##car _%rest167173167181%_))
                                      (_%tl167179167244%_
                                       (##cdr _%rest167173167181%_)))
                                  (let* ((_%hd167247%_ _%hd167178167242%_)
                                         (_%rest167249%_ _%tl167179167244%_))
                                    (_%K167177167239%_
                                     _%rest167249%_
                                     _%hd167247%_)))
                                '#!void))))
                      _%$e167165%_)
                     '#!void))
               (let* ((_%self.irritants167250167258%_
                       (##unchecked-structure-ref _%self167145%_ '3 '#f '#f))
                      (_%else167252167266%_ (lambda () '#!void))
                      (_%K167254167279%_
                       (lambda (_%rest167269%_ _%stx167270%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx167270%_)
                         (for-each
                          (lambda (_%detail167272%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail167272%_))
                            (let ((_%$e167274%_
                                   (__AST-source _%detail167272%_)))
                              (if _%$e167274%_
                                  ((lambda (_%loc167277%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc167277%_
                                      '#t
                                      _%port167142%_))
                                   _%$e167274%_)
                                  '#!void))
                            (newline))
                          _%rest167269%_))))
                 (if (pair? _%self.irritants167250167258%_)
                     (let ((_%hd167255167282%_
                            (##car _%self.irritants167250167258%_))
                           (_%tl167256167284%_
                            (##cdr _%self.irritants167250167258%_)))
                       (let* ((_%stx167287%_ _%hd167255167282%_)
                              (_%rest167289%_ _%tl167256167284%_))
                         (_%K167254167279%_ _%rest167289%_ _%stx167287%_)))
                     '#!void))
               (if __DEBUG
                   (let ((_%cont167290167292%_
                          (##unchecked-structure-ref
                           _%self167145%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont167290167292%_
                         (let ((_%cont167294%_ _%cont167290167292%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont167294%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port167142%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (let* ((_%klass167004%_ SyntaxError::t) (_%klass167009%_ _%klass167004%_))
      (__seal-class! _%klass167009%_))
    (define make-syntax-error
      (lambda (_%message166997%_
               _%irritants166998%_
               _%where166999%_
               _%context167000%_
               _%marks167001%_
               _%phi167002%_)
        (let ((__obj167519
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj167519 _%message166997%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj167519
           _%irritants166998%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj167519 _%where166999%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj167519 _%context167000%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj167519 _%marks167001%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj167519 _%phi167002%_ '6 '#f '#f)
          __obj167519)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where166992%_
               _%message166993%_
               _%stx166994%_
               .
               _%details166995%_)
        (raise (make-syntax-error
                _%message166993%_
                (cons _%stx166994%_ _%details166995%_)
                _%where166992%_
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
      (lambda _%$args166989%_ (apply make-instance AST::t _%$args166989%_)))
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
      (lambda (_%stx166987%_)
        (if (##structure-instance-of? _%stx166987%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx166987%_ '1 '#f '#f)
            _%stx166987%_)))
    (define __AST-source
      (lambda (_%stx166978%_)
        (let _%lp166980%_ ((_%src166982%_ _%stx166978%_))
          (if (##structure-instance-of? _%src166982%_ 'gerbil#AST::t)
              (_%lp166980%_
               (##unchecked-structure-ref _%src166982%_ '2 '#f '#f))
              (if (##locat? _%src166982%_) _%src166982%_ '#f)))))
    (define __AST
      (lambda (_%e166970%_ _%src-stx166971%_)
        (let ((_%src166973%_ (__AST-source _%src-stx166971%_)))
          (if (or (##structure-instance-of? _%e166970%_ 'gerbil#AST::t)
                  (not _%src166973%_))
              _%e166970%_
              (##structure AST::t _%e166970%_ _%src166973%_)))))
    (define __AST-eq?
      (lambda (_%stx166967%_ _%obj166968%_)
        (eq? (__AST-e _%stx166967%_) _%obj166968%_)))
    (define __AST-pair?
      (lambda (_%stx166965%_) (pair? (__AST-e _%stx166965%_))))
    (define __AST-null?
      (lambda (_%stx166963%_) (null? (__AST-e _%stx166963%_))))
    (define __AST-datum?
      (lambda (_%stx166944%_)
        (let* ((_%e166946%_ (__AST-e _%stx166944%_))
               (_%$e166948%_ (number? _%e166946%_)))
          (if _%$e166948%_
              _%$e166948%_
              (let ((_%$e166951%_ (string? _%e166946%_)))
                (if _%$e166951%_
                    _%$e166951%_
                    (let ((_%$e166954%_ (char? _%e166946%_)))
                      (if _%$e166954%_
                          _%$e166954%_
                          (let ((_%$e166957%_ (keyword? _%e166946%_)))
                            (if _%$e166957%_
                                _%$e166957%_
                                (let ((_%$e166960%_ (boolean? _%e166946%_)))
                                  (if _%$e166960%_
                                      _%$e166960%_
                                      (eq? _%e166946%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx166942%_) (symbol? (__AST-e _%stx166942%_))))
    (define __AST-id-list?__%
      (lambda (_%stx166893%_ _%tail?166894%_)
        (let _%lp166896%_ ((_%rest166898%_ _%stx166893%_))
          (let* ((_%$e166900%_ _%rest166898%_)
                 (_%$E166902166915%_
                  (lambda ()
                    (let* ((_%$E166903166910%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e166900%_)))
                           (_%rest166913%_ _%$e166900%_))
                      (_%tail?166894%_ _%rest166913%_)))))
            (if (__AST-pair? _%$e166900%_)
                (let* ((_%$tgt166904166918%_ (__AST-e _%$e166900%_))
                       (_%$hd166905166921%_ (##car _%$tgt166904166918%_))
                       (_%$tl166906166924%_ (##cdr _%$tgt166904166918%_))
                       (_%hd166928%_ _%$hd166905166921%_)
                       (_%rest166930%_ _%$tl166906166924%_))
                  (if (__AST-id? _%hd166928%_)
                      (_%lp166896%_ _%rest166930%_)
                      '#f))
                (_%$E166902166915%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx166935%_)
        (let ((_%tail?166937%_ __AST-null?))
          (__AST-id-list?__% _%stx166935%_ _%tail?166937%_))))
    (define __AST-id-list?
      (lambda _g167521_
        (let ((_g167522_ (##length _g167521_)))
          (cond ((##fx= _g167522_ 1) (apply __AST-id-list?__0 _g167521_))
                ((##fx= _g167522_ 2) (apply __AST-id-list?__% _g167521_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g167521_))))))
    (define __AST-bind-list?
      (lambda (_%stx166885%_)
        (__AST-id-list?__%
         _%stx166885%_
         (lambda (_%e166887%_)
           (let ((_%$e166889%_ (__AST-null? _%e166887%_)))
             (if _%$e166889%_ _%$e166889%_ (__AST-id? _%e166887%_)))))))
    (define __AST-list?__%
      (lambda (_%stx166838%_ _%tail?166839%_)
        (let _%lp166841%_ ((_%rest166843%_ _%stx166838%_))
          (let* ((_%$e166845%_ _%rest166843%_)
                 (_%$E166847166860%_
                  (lambda ()
                    (let* ((_%$E166848166855%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e166845%_)))
                           (_%rest166858%_ _%$e166845%_))
                      (_%tail?166839%_ _%rest166858%_)))))
            (if (__AST-pair? _%$e166845%_)
                (let* ((_%$tgt166849166863%_ (__AST-e _%$e166845%_))
                       (_%$hd166850166866%_ (##car _%$tgt166849166863%_))
                       (_%$tl166851166869%_ (##cdr _%$tgt166849166863%_))
                       (_%rest166873%_ _%$tl166851166869%_))
                  (_%lp166841%_ _%rest166873%_))
                (_%$E166847166860%_))))))
    (define __AST-list?__0
      (lambda (_%stx166878%_)
        (let ((_%tail?166880%_ __AST-null?))
          (__AST-list?__% _%stx166878%_ _%tail?166880%_))))
    (define __AST-list?
      (lambda _g167523_
        (let ((_g167524_ (##length _g167523_)))
          (cond ((##fx= _g167524_ 1) (apply __AST-list?__0 _g167523_))
                ((##fx= _g167524_ 2) (apply __AST-list?__% _g167523_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g167523_))))))
    (define __AST->list
      (lambda (_%stx166803%_)
        (let* ((_%$e166805%_ _%stx166803%_)
               (_%$E166807166820%_
                (lambda ()
                  (let* ((_%$E166808166815%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e166805%_)))
                         (_%rest166818%_ _%$e166805%_))
                    (__AST-e _%rest166818%_)))))
          (if (__AST-pair? _%$e166805%_)
              (let* ((_%$tgt166809166823%_ (__AST-e _%$e166805%_))
                     (_%$hd166810166826%_ (##car _%$tgt166809166823%_))
                     (_%$tl166811166829%_ (##cdr _%$tgt166809166823%_))
                     (_%hd166833%_ _%$hd166810166826%_)
                     (_%rest166835%_ _%$tl166811166829%_))
                (cons _%hd166833%_ (__AST->list _%rest166835%_)))
              (_%$E166807166820%_)))))
    (define __AST->datum
      (lambda (_%stx166796%_)
        (if (##structure-instance-of? _%stx166796%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx166796%_))
            (if (pair? _%stx166796%_)
                (cons (__AST->datum (##car _%stx166796%_))
                      (__AST->datum (##cdr _%stx166796%_)))
                (if (vector? _%stx166796%_)
                    (vector-map __AST->datum _%stx166796%_)
                    (if (box? _%stx166796%_)
                        (box (__AST->datum (unbox _%stx166796%_)))
                        _%stx166796%_))))))
    (define get-readenv
      (lambda (_%port166794%_)
        (##make-readenv
         _%port166794%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in166782%_)
        (let ((_%e166784%_ (##read-datum-or-eof (get-readenv _%in166782%_))))
          (if (eof-object? (__AST-e _%e166784%_))
              (__AST-e _%e166784%_)
              _%e166784%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in166790%_ (current-input-port)))
          (read-syntax__% _%in166790%_))))
    (define read-syntax
      (lambda _g167525_
        (let ((_g167526_ (##length _g167525_)))
          (cond ((##fx= _g167526_ 0) (apply read-syntax__0 _g167525_))
                ((##fx= _g167526_ 1) (apply read-syntax__% _g167525_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g167525_))))))
    (define read-syntax-from-file
      (lambda (_%path166777%_)
        (let ((_%r166779%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path166777%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r166779%_)
              (cdr (__AST-e (vector-ref _%r166779%_ '1)))
              (error (err-code->string _%r166779%_) _%path166777%_)))))
    (define __wrap-syntax
      (lambda (_%re166774%_ _%e166775%_)
        (if (eof-object? _%e166775%_)
            _%e166775%_
            (##structure AST::t _%e166775%_ (##readenv->locat _%re166774%_)))))
    (define __unwrap-syntax
      (lambda (_%re166771%_ _%e166772%_) (__AST-e _%e166772%_)))
    (define __pp-syntax
      (lambda (_%stx166769%_) (pp (__AST->datum _%stx166769%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt166767%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt166767%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt166767%_ '@list)
          (macro-readtable-brace-handler-set! _%rt166767%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt166767%_
           '#\!
           __read-sharp-bang)
          _%rt166767%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt166763%_ _%kw166764%_)
        (macro-readtable-bracket-handler-set! _%rt166763%_ _%kw166764%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt166760%_ _%kw166761%_)
        (macro-readtable-brace-handler-set! _%rt166760%_ _%kw166761%_)))
    (define __read-sharp-bang
      (lambda (_%re166751%_ _%next166752%_ _%start-pos166753%_)
        (if (eq? _%start-pos166753%_ '0)
            (let* ((_%line166755%_
                    (##read-line
                     (macro-readenv-port _%re166751%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line166757%_
                    (substring
                     _%line166755%_
                     '1
                     (string-length _%line166755%_))))
              (macro-readenv-script-line-set!
               _%re166751%_
               _%script-line166757%_)
              (##script-marker))
            (##read-sharp-bang
             _%re166751%_
             _%next166752%_
             _%start-pos166753%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj166749%_)
        (if (source-location? _%obj166749%_)
            (string? (##locat-container _%obj166749%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj166747%_)
        (if (##locat? _%obj166747%_)
            (##container->path (##locat-container _%obj166747%_))
            '#f)))))

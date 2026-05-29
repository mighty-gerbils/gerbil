(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1779967242)
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
      (lambda _%$args168200%_
        (apply make-instance SyntaxError::t _%$args168200%_)))
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
      (lambda (_%self167919%_ _%port167920%_)
        (let ((_%self167923%_ _%self167919%_))
          (letrec ((_%location167934%_
                    (lambda ()
                      (letrec ((_%from-irritants168075%_
                                (lambda ()
                                  (let _%lp168160%_ ((_%rest168162%_
                                                      (##unchecked-structure-ref
                                                       _%self167923%_
                                                       '3
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest168163168171%_
                                            _%rest168162%_)
                                           (_%else168165168179%_
                                            (lambda () '#f))
                                           (_%K168167168188%_
                                            (lambda (_%rest168182%_
                                                     _%hd168183%_)
                                              (let ((_%$e168185%_
                                                     (__AST-source
                                                      _%hd168183%_)))
                                                (if _%$e168185%_
                                                    _%$e168185%_
                                                    (_%lp168160%_
                                                     _%rest168182%_))))))
                                      (if (pair? _%rest168163168171%_)
                                          (let ((_%hd168168168191%_
                                                 (##car _%rest168163168171%_))
                                                (_%tl168169168193%_
                                                 (##cdr _%rest168163168171%_)))
                                            (let* ((_%hd168196%_
                                                    _%hd168168168191%_)
                                                   (_%rest168198%_
                                                    _%tl168169168193%_))
                                              (_%K168167168188%_
                                               _%rest168198%_
                                               _%hd168196%_)))
                                          (_%else168165168179%_))))))
                               (_%from-context168076%_
                                (lambda ()
                                  (let _%lp168082%_ ((_%rest168084%_
                                                      (##unchecked-structure-ref
                                                       _%self167923%_
                                                       '4
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest168085168093%_
                                            _%rest168084%_)
                                           (_%else168087168101%_
                                            (lambda () '#f))
                                           (_%K168089168147%_
                                            (lambda (_%rest168104%_
                                                     _%hd168105%_)
                                              (let* ((_%hd168106168116%_
                                                      _%hd168105%_)
                                                     (_%else168108168124%_
                                                      (lambda ()
                                                        (_%lp168082%_
                                                         _%rest168104%_)))
                                                     (_%K168110168132%_
                                                      (lambda (_%loc168127%_)
                                                        (let ((_%$e168129%_
                                                               (__AST-source
                                                                _%loc168127%_)))
                                                          (if _%$e168129%_
                                                              _%$e168129%_
                                                              (_%lp168082%_
                                                               _%rest168104%_))))))
                                                (if (pair? _%hd168106168116%_)
                                                    (let ((_%hd168111168135%_
                                                           (##car _%hd168106168116%_))
                                                          (_%tl168112168137%_
                                                           (##cdr _%hd168106168116%_)))
                                                      (if (##eq? _%hd168111168135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '@)
                  (if (pair? _%tl168112168137%_)
                      (let ((_%hd168113168140%_ (##car _%tl168112168137%_))
                            (_%tl168114168142%_ (##cdr _%tl168112168137%_)))
                        (let ((_%loc168145%_ _%hd168113168140%_))
                          (if (null? _%tl168114168142%_)
                              (_%K168110168132%_ _%loc168145%_)
                              (_%else168108168124%_))))
                      (_%else168108168124%_))
                  (_%else168108168124%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else168108168124%_))))))
                                      (if (pair? _%rest168085168093%_)
                                          (let ((_%hd168090168150%_
                                                 (##car _%rest168085168093%_))
                                                (_%tl168091168152%_
                                                 (##cdr _%rest168085168093%_)))
                                            (let* ((_%hd168155%_
                                                    _%hd168090168150%_)
                                                   (_%rest168157%_
                                                    _%tl168091168152%_))
                                              (_%K168089168147%_
                                               _%rest168157%_
                                               _%hd168155%_)))
                                          (_%else168087168101%_)))))))
                        (let ((_%$e168078%_ (_%from-irritants168075%_)))
                          (if _%$e168078%_
                              _%$e168078%_
                              (_%from-context168076%_)))))))
            (call-with-parameters__1
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e167937%_ (_%location167934%_)))
                 (if _%$e167937%_
                     (##display-locat _%$e167937%_ '#t _%port167920%_)
                     (display '"?")))
               (newline)
               (displayln
                '"--- Syntax Error: "
                (##unchecked-structure-ref _%self167923%_ '2 '#f '#f))
               (let ((_%$e167943%_
                      (##unchecked-structure-ref _%self167923%_ '4 '#f '#f)))
                 (if _%$e167943%_
                     (let ()
                       (displayln '"--- Context: ")
                       (let _%lp167948%_ ((_%rest167950%_ _%$e167943%_))
                         (let* ((_%rest167951167959%_ _%rest167950%_)
                                (_%else167953167967%_ (lambda () '#!void))
                                (_%K167955168017%_
                                 (lambda (_%rest167970%_ _%hd167971%_)
                                   (let* ((_%hd167972167982%_ _%hd167971%_)
                                          (_%else167974167990%_
                                           (lambda ()
                                             (displayln '" at " _%hd167971%_)
                                             (_%lp167948%_ _%rest167970%_)))
                                          (_%K167976168002%_
                                           (lambda (_%ctx167993%_)
                                             (let ((_%$e167995%_
                                                    (__AST-source
                                                     _%ctx167993%_)))
                                               (if _%$e167995%_
                                                   (let ()
                                                     (display '" at ")
                                                     (##display-locat
                                                      _%$e167995%_
                                                      '#t
                                                      _%port167920%_)
                                                     (newline)
                                                     (_%lp167948%_
                                                      _%rest167970%_))
                                                   (if (##structure-instance-of?
                                                        _%ctx167993%_
                                                        'gerbil#AST::t)
                                                       (let ()
                                                         (display '" at ")
                                                         (__pp-syntax
                                                          _%ctx167993%_)
                                                         (_%lp167948%_
                                                          _%rest167970%_))
                                                       (_%lp167948%_
                                                        _%rest167970%_)))))))
                                     (if (pair? _%hd167972167982%_)
                                         (let ((_%hd167977168005%_
                                                (##car _%hd167972167982%_))
                                               (_%tl167978168007%_
                                                (##cdr _%hd167972167982%_)))
                                           (if (##eq? _%hd167977168005%_ '@)
                                               (if (pair? _%tl167978168007%_)
                                                   (let ((_%hd167979168010%_
                                                          (##car _%tl167978168007%_))
                                                         (_%tl167980168012%_
                                                          (##cdr _%tl167978168007%_)))
                                                     (let ((_%ctx168015%_
                                                            _%hd167979168010%_))
                                                       (if (null? _%tl167980168012%_)
                                                           (_%K167976168002%_
                                                            _%ctx168015%_)
                                                           (_%else167974167990%_))))
                                                   (_%else167974167990%_))
                                               (_%else167974167990%_)))
                                         (_%else167974167990%_))))))
                           (if (pair? _%rest167951167959%_)
                               (let ((_%hd167956168020%_
                                      (##car _%rest167951167959%_))
                                     (_%tl167957168022%_
                                      (##cdr _%rest167951167959%_)))
                                 (let* ((_%hd168025%_ _%hd167956168020%_)
                                        (_%rest168027%_ _%tl167957168022%_))
                                   (_%K167955168017%_
                                    _%rest168027%_
                                    _%hd168025%_)))
                               '#!void))))
                     '#!void))
               (let* ((_%self.irritants168028168036%_
                       (##unchecked-structure-ref _%self167923%_ '3 '#f '#f))
                      (_%else168030168044%_ (lambda () '#!void))
                      (_%K168032168057%_
                       (lambda (_%rest168047%_ _%stx168048%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx168048%_)
                         (for-each
                          (lambda (_%detail168050%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail168050%_))
                            (let ((_%$e168052%_
                                   (__AST-source _%detail168050%_)))
                              (if _%$e168052%_
                                  (let ()
                                    (display '" at ")
                                    (##display-locat
                                     _%$e168052%_
                                     '#t
                                     _%port167920%_))
                                  '#!void))
                            (newline))
                          _%rest168047%_))))
                 (if (pair? _%self.irritants168028168036%_)
                     (let ((_%hd168033168060%_
                            (##car _%self.irritants168028168036%_))
                           (_%tl168034168062%_
                            (##cdr _%self.irritants168028168036%_)))
                       (let* ((_%stx168065%_ _%hd168033168060%_)
                              (_%rest168067%_ _%tl168034168062%_))
                         (_%K168032168057%_ _%rest168067%_ _%stx168065%_)))
                     '#!void))
               (if __DEBUG
                   (let ((_%cont168068168070%_
                          (##unchecked-structure-ref
                           _%self167923%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont168068168070%_
                         (let ((_%cont168072%_ _%cont168068168070%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont168072%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port167920%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (let* ((_%klass167782%_ SyntaxError::t) (_%klass167787%_ _%klass167782%_))
      (__seal-class! _%klass167787%_))
    (define make-syntax-error
      (lambda (_%message167775%_
               _%irritants167776%_
               _%where167777%_
               _%context167778%_
               _%marks167779%_
               _%phi167780%_)
        (let ((__obj168297
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj168297 _%message167775%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj168297
           _%irritants167776%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj168297 _%where167777%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj168297 _%context167778%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj168297 _%marks167779%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj168297 _%phi167780%_ '6 '#f '#f)
          __obj168297)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where167770%_
               _%message167771%_
               _%stx167772%_
               .
               _%details167773%_)
        (raise (make-syntax-error
                _%message167771%_
                (cons _%stx167772%_ _%details167773%_)
                _%where167770%_
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
      (lambda _%$args167767%_ (apply make-instance AST::t _%$args167767%_)))
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
      (lambda (_%stx167765%_)
        (if (##structure-instance-of? _%stx167765%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx167765%_ '1 '#f '#f)
            _%stx167765%_)))
    (define __AST-source
      (lambda (_%stx167756%_)
        (let _%lp167758%_ ((_%src167760%_ _%stx167756%_))
          (if (##structure-instance-of? _%src167760%_ 'gerbil#AST::t)
              (_%lp167758%_
               (##unchecked-structure-ref _%src167760%_ '2 '#f '#f))
              (if (##locat? _%src167760%_) _%src167760%_ '#f)))))
    (define __AST
      (lambda (_%e167748%_ _%src-stx167749%_)
        (let ((_%src167751%_ (__AST-source _%src-stx167749%_)))
          (if (or (##structure-instance-of? _%e167748%_ 'gerbil#AST::t)
                  (not _%src167751%_))
              _%e167748%_
              (##structure AST::t _%e167748%_ _%src167751%_)))))
    (define __AST-eq?
      (lambda (_%stx167745%_ _%obj167746%_)
        (eq? (__AST-e _%stx167745%_) _%obj167746%_)))
    (define __AST-pair?
      (lambda (_%stx167743%_) (pair? (__AST-e _%stx167743%_))))
    (define __AST-null?
      (lambda (_%stx167741%_) (null? (__AST-e _%stx167741%_))))
    (define __AST-datum?
      (lambda (_%stx167722%_)
        (let* ((_%e167724%_ (__AST-e _%stx167722%_))
               (_%$e167726%_ (number? _%e167724%_)))
          (if _%$e167726%_
              _%$e167726%_
              (let ((_%$e167729%_ (string? _%e167724%_)))
                (if _%$e167729%_
                    _%$e167729%_
                    (let ((_%$e167732%_ (char? _%e167724%_)))
                      (if _%$e167732%_
                          _%$e167732%_
                          (let ((_%$e167735%_ (keyword? _%e167724%_)))
                            (if _%$e167735%_
                                _%$e167735%_
                                (let ((_%$e167738%_ (boolean? _%e167724%_)))
                                  (if _%$e167738%_
                                      _%$e167738%_
                                      (eq? _%e167724%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx167720%_) (symbol? (__AST-e _%stx167720%_))))
    (define __AST-id-list?__%
      (lambda (_%stx167671%_ _%tail?167672%_)
        (let _%lp167674%_ ((_%rest167676%_ _%stx167671%_))
          (let* ((_%$e167678%_ _%rest167676%_)
                 (_%$E167680167693%_
                  (lambda ()
                    (let* ((_%$E167681167688%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e167678%_)))
                           (_%rest167691%_ _%$e167678%_))
                      (_%tail?167672%_ _%rest167691%_)))))
            (if (__AST-pair? _%$e167678%_)
                (let* ((_%$tgt167682167696%_ (__AST-e _%$e167678%_))
                       (_%$hd167683167699%_ (##car _%$tgt167682167696%_))
                       (_%$tl167684167702%_ (##cdr _%$tgt167682167696%_))
                       (_%hd167706%_ _%$hd167683167699%_)
                       (_%rest167708%_ _%$tl167684167702%_))
                  (if (__AST-id? _%hd167706%_)
                      (_%lp167674%_ _%rest167708%_)
                      '#f))
                (_%$E167680167693%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx167713%_)
        (let ((_%tail?167715%_ __AST-null?))
          (__AST-id-list?__% _%stx167713%_ _%tail?167715%_))))
    (define __AST-id-list?
      (lambda _g168299_
        (let ((_g168300_ (##length _g168299_)))
          (cond ((##fx= _g168300_ 1) (apply __AST-id-list?__0 _g168299_))
                ((##fx= _g168300_ 2) (apply __AST-id-list?__% _g168299_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g168299_))))))
    (define __AST-bind-list?
      (lambda (_%stx167663%_)
        (__AST-id-list?__%
         _%stx167663%_
         (lambda (_%e167665%_)
           (let ((_%$e167667%_ (__AST-null? _%e167665%_)))
             (if _%$e167667%_ _%$e167667%_ (__AST-id? _%e167665%_)))))))
    (define __AST-list?__%
      (lambda (_%stx167616%_ _%tail?167617%_)
        (let _%lp167619%_ ((_%rest167621%_ _%stx167616%_))
          (let* ((_%$e167623%_ _%rest167621%_)
                 (_%$E167625167638%_
                  (lambda ()
                    (let* ((_%$E167626167633%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e167623%_)))
                           (_%rest167636%_ _%$e167623%_))
                      (_%tail?167617%_ _%rest167636%_)))))
            (if (__AST-pair? _%$e167623%_)
                (let* ((_%$tgt167627167641%_ (__AST-e _%$e167623%_))
                       (_%$hd167628167644%_ (##car _%$tgt167627167641%_))
                       (_%$tl167629167647%_ (##cdr _%$tgt167627167641%_))
                       (_%rest167651%_ _%$tl167629167647%_))
                  (_%lp167619%_ _%rest167651%_))
                (_%$E167625167638%_))))))
    (define __AST-list?__0
      (lambda (_%stx167656%_)
        (let ((_%tail?167658%_ __AST-null?))
          (__AST-list?__% _%stx167656%_ _%tail?167658%_))))
    (define __AST-list?
      (lambda _g168301_
        (let ((_g168302_ (##length _g168301_)))
          (cond ((##fx= _g168302_ 1) (apply __AST-list?__0 _g168301_))
                ((##fx= _g168302_ 2) (apply __AST-list?__% _g168301_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g168301_))))))
    (define __AST->list
      (lambda (_%stx167581%_)
        (let* ((_%$e167583%_ _%stx167581%_)
               (_%$E167585167598%_
                (lambda ()
                  (let* ((_%$E167586167593%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e167583%_)))
                         (_%rest167596%_ _%$e167583%_))
                    (__AST-e _%rest167596%_)))))
          (if (__AST-pair? _%$e167583%_)
              (let* ((_%$tgt167587167601%_ (__AST-e _%$e167583%_))
                     (_%$hd167588167604%_ (##car _%$tgt167587167601%_))
                     (_%$tl167589167607%_ (##cdr _%$tgt167587167601%_))
                     (_%hd167611%_ _%$hd167588167604%_)
                     (_%rest167613%_ _%$tl167589167607%_))
                (cons _%hd167611%_ (__AST->list _%rest167613%_)))
              (_%$E167585167598%_)))))
    (define __AST->datum
      (lambda (_%stx167574%_)
        (if (##structure-instance-of? _%stx167574%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx167574%_))
            (if (pair? _%stx167574%_)
                (cons (__AST->datum (##car _%stx167574%_))
                      (__AST->datum (##cdr _%stx167574%_)))
                (if (vector? _%stx167574%_)
                    (vector-map __AST->datum _%stx167574%_)
                    (if (box? _%stx167574%_)
                        (box (__AST->datum (unbox _%stx167574%_)))
                        _%stx167574%_))))))
    (define get-readenv
      (lambda (_%port167572%_)
        (##make-readenv
         _%port167572%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in167560%_)
        (let ((_%e167562%_ (##read-datum-or-eof (get-readenv _%in167560%_))))
          (if (eof-object? (__AST-e _%e167562%_))
              (__AST-e _%e167562%_)
              _%e167562%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in167568%_ (current-input-port)))
          (read-syntax__% _%in167568%_))))
    (define read-syntax
      (lambda _g168303_
        (let ((_g168304_ (##length _g168303_)))
          (cond ((##fx= _g168304_ 0) (apply read-syntax__0 _g168303_))
                ((##fx= _g168304_ 1) (apply read-syntax__% _g168303_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g168303_))))))
    (define read-syntax-from-file
      (lambda (_%path167555%_)
        (let ((_%r167557%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path167555%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r167557%_)
              (cdr (__AST-e (vector-ref _%r167557%_ '1)))
              (error (err-code->string _%r167557%_) _%path167555%_)))))
    (define __wrap-syntax
      (lambda (_%re167552%_ _%e167553%_)
        (if (eof-object? _%e167553%_)
            _%e167553%_
            (##structure AST::t _%e167553%_ (##readenv->locat _%re167552%_)))))
    (define __unwrap-syntax
      (lambda (_%re167549%_ _%e167550%_) (__AST-e _%e167550%_)))
    (define __pp-syntax
      (lambda (_%stx167547%_) (pp (__AST->datum _%stx167547%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt167545%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt167545%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt167545%_ '@list)
          (macro-readtable-brace-handler-set! _%rt167545%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt167545%_
           '#\!
           __read-sharp-bang)
          _%rt167545%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt167541%_ _%kw167542%_)
        (macro-readtable-bracket-handler-set! _%rt167541%_ _%kw167542%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt167538%_ _%kw167539%_)
        (macro-readtable-brace-handler-set! _%rt167538%_ _%kw167539%_)))
    (define __read-sharp-bang
      (lambda (_%re167529%_ _%next167530%_ _%start-pos167531%_)
        (if (eq? _%start-pos167531%_ '0)
            (let* ((_%line167533%_
                    (##read-line
                     (macro-readenv-port _%re167529%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line167535%_
                    (substring
                     _%line167533%_
                     '1
                     (string-length _%line167533%_))))
              (macro-readenv-script-line-set!
               _%re167529%_
               _%script-line167535%_)
              (##script-marker))
            (##read-sharp-bang
             _%re167529%_
             _%next167530%_
             _%start-pos167531%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj167527%_)
        (if (source-location? _%obj167527%_)
            (string? (##locat-container _%obj167527%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj167525%_)
        (if (##locat? _%obj167525%_)
            (##container->path (##locat-container _%obj167525%_))
            '#f)))))

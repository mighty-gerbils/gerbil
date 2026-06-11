(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1781138352)
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
      (lambda _%$args168296%_
        (apply make-instance SyntaxError::t _%$args168296%_)))
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
      (lambda (_%self168015%_ _%port168016%_)
        (let ((_%self168019%_ _%self168015%_))
          (letrec ((_%location168030%_
                    (lambda ()
                      (letrec ((_%from-irritants168171%_
                                (lambda ()
                                  (let _%lp168256%_ ((_%rest168258%_
                                                      (##unchecked-structure-ref
                                                       _%self168019%_
                                                       '3
                                                       '#f
                                                       '#f)))
                                    (let* ((_%$%rest168259168267%_
                                            _%rest168258%_)
                                           (_%$%else168261168275%_
                                            (lambda () '#f))
                                           (_%$%K168263168284%_
                                            (lambda (_%rest168278%_
                                                     _%hd168279%_)
                                              (let ((_%$e168281%_
                                                     (__AST-source
                                                      _%hd168279%_)))
                                                (if _%$e168281%_
                                                    _%$e168281%_
                                                    (_%lp168256%_
                                                     _%rest168278%_))))))
                                      (if (pair? _%$%rest168259168267%_)
                                          (let ((_%$%hd168264168287%_
                                                 (##car _%$%rest168259168267%_))
                                                (_%$%tl168265168289%_
                                                 (##cdr _%$%rest168259168267%_)))
                                            (let* ((_%hd168292%_
                                                    _%$%hd168264168287%_)
                                                   (_%rest168294%_
                                                    _%$%tl168265168289%_))
                                              (_%$%K168263168284%_
                                               _%rest168294%_
                                               _%hd168292%_)))
                                          (_%$%else168261168275%_))))))
                               (_%from-context168172%_
                                (lambda ()
                                  (let _%lp168178%_ ((_%rest168180%_
                                                      (##unchecked-structure-ref
                                                       _%self168019%_
                                                       '4
                                                       '#f
                                                       '#f)))
                                    (let* ((_%$%rest168181168189%_
                                            _%rest168180%_)
                                           (_%$%else168183168197%_
                                            (lambda () '#f))
                                           (_%$%K168185168243%_
                                            (lambda (_%rest168200%_
                                                     _%hd168201%_)
                                              (let* ((_%$%hd168202168212%_
                                                      _%hd168201%_)
                                                     (_%$%else168204168220%_
                                                      (lambda ()
                                                        (_%lp168178%_
                                                         _%rest168200%_)))
                                                     (_%$%K168206168228%_
                                                      (lambda (_%loc168223%_)
                                                        (let ((_%$e168225%_
                                                               (__AST-source
                                                                _%loc168223%_)))
                                                          (if _%$e168225%_
                                                              _%$e168225%_
                                                              (_%lp168178%_
                                                               _%rest168200%_))))))
                                                (if (pair? _%$%hd168202168212%_)
                                                    (let ((_%$%hd168207168231%_
                                                           (##car _%$%hd168202168212%_))
                                                          (_%$%tl168208168233%_
                                                           (##cdr _%$%hd168202168212%_)))
                                                      (if (##eq? _%$%hd168207168231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '@)
                  (if (pair? _%$%tl168208168233%_)
                      (let ((_%$%hd168209168236%_ (##car _%$%tl168208168233%_))
                            (_%$%tl168210168238%_
                             (##cdr _%$%tl168208168233%_)))
                        (let ((_%loc168241%_ _%$%hd168209168236%_))
                          (if (null? _%$%tl168210168238%_)
                              (_%$%K168206168228%_ _%loc168241%_)
                              (_%$%else168204168220%_))))
                      (_%$%else168204168220%_))
                  (_%$%else168204168220%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else168204168220%_))))))
                                      (if (pair? _%$%rest168181168189%_)
                                          (let ((_%$%hd168186168246%_
                                                 (##car _%$%rest168181168189%_))
                                                (_%$%tl168187168248%_
                                                 (##cdr _%$%rest168181168189%_)))
                                            (let* ((_%hd168251%_
                                                    _%$%hd168186168246%_)
                                                   (_%rest168253%_
                                                    _%$%tl168187168248%_))
                                              (_%$%K168185168243%_
                                               _%rest168253%_
                                               _%hd168251%_)))
                                          (_%$%else168183168197%_)))))))
                        (let ((_%$e168174%_ (_%from-irritants168171%_)))
                          (if _%$e168174%_
                              _%$e168174%_
                              (_%from-context168172%_)))))))
            (call-with-parameters__1
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e168033%_ (_%location168030%_)))
                 (if _%$e168033%_
                     (##display-locat _%$e168033%_ '#t _%port168016%_)
                     (display '"?")))
               (newline)
               (displayln
                '"--- Syntax Error: "
                (##unchecked-structure-ref _%self168019%_ '2 '#f '#f))
               (let ((_%$e168039%_
                      (##unchecked-structure-ref _%self168019%_ '4 '#f '#f)))
                 (if _%$e168039%_
                     (let ()
                       (displayln '"--- Context: ")
                       (let _%lp168044%_ ((_%rest168046%_ _%$e168039%_))
                         (let* ((_%$%rest168047168055%_ _%rest168046%_)
                                (_%$%else168049168063%_ (lambda () '#!void))
                                (_%$%K168051168113%_
                                 (lambda (_%rest168066%_ _%hd168067%_)
                                   (let* ((_%$%hd168068168078%_ _%hd168067%_)
                                          (_%$%else168070168086%_
                                           (lambda ()
                                             (displayln '" at " _%hd168067%_)
                                             (_%lp168044%_ _%rest168066%_)))
                                          (_%$%K168072168098%_
                                           (lambda (_%ctx168089%_)
                                             (let ((_%$e168091%_
                                                    (__AST-source
                                                     _%ctx168089%_)))
                                               (if _%$e168091%_
                                                   (let ()
                                                     (display '" at ")
                                                     (##display-locat
                                                      _%$e168091%_
                                                      '#t
                                                      _%port168016%_)
                                                     (newline)
                                                     (_%lp168044%_
                                                      _%rest168066%_))
                                                   (if (##structure-instance-of?
                                                        _%ctx168089%_
                                                        'gerbil#AST::t)
                                                       (let ()
                                                         (display '" at ")
                                                         (__pp-syntax
                                                          _%ctx168089%_)
                                                         (_%lp168044%_
                                                          _%rest168066%_))
                                                       (_%lp168044%_
                                                        _%rest168066%_)))))))
                                     (if (pair? _%$%hd168068168078%_)
                                         (let ((_%$%hd168073168101%_
                                                (##car _%$%hd168068168078%_))
                                               (_%$%tl168074168103%_
                                                (##cdr _%$%hd168068168078%_)))
                                           (if (##eq? _%$%hd168073168101%_ '@)
                                               (if (pair? _%$%tl168074168103%_)
                                                   (let ((_%$%hd168075168106%_
                                                          (##car _%$%tl168074168103%_))
                                                         (_%$%tl168076168108%_
                                                          (##cdr _%$%tl168074168103%_)))
                                                     (let ((_%ctx168111%_
                                                            _%$%hd168075168106%_))
                                                       (if (null? _%$%tl168076168108%_)
                                                           (_%$%K168072168098%_
                                                            _%ctx168111%_)
                                                           (_%$%else168070168086%_))))
                                                   (_%$%else168070168086%_))
                                               (_%$%else168070168086%_)))
                                         (_%$%else168070168086%_))))))
                           (if (pair? _%$%rest168047168055%_)
                               (let ((_%$%hd168052168116%_
                                      (##car _%$%rest168047168055%_))
                                     (_%$%tl168053168118%_
                                      (##cdr _%$%rest168047168055%_)))
                                 (let* ((_%hd168121%_ _%$%hd168052168116%_)
                                        (_%rest168123%_ _%$%tl168053168118%_))
                                   (_%$%K168051168113%_
                                    _%rest168123%_
                                    _%hd168121%_)))
                               '#!void))))
                     '#!void))
               (let* ((_%$%self.irritants168124168132%_
                       (##unchecked-structure-ref _%self168019%_ '3 '#f '#f))
                      (_%$%else168126168140%_ (lambda () '#!void))
                      (_%$%K168128168153%_
                       (lambda (_%rest168143%_ _%stx168144%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx168144%_)
                         (for-each
                          (lambda (_%detail168146%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail168146%_))
                            (let ((_%$e168148%_
                                   (__AST-source _%detail168146%_)))
                              (if _%$e168148%_
                                  (let ()
                                    (display '" at ")
                                    (##display-locat
                                     _%$e168148%_
                                     '#t
                                     _%port168016%_))
                                  '#!void))
                            (newline))
                          _%rest168143%_))))
                 (if (pair? _%$%self.irritants168124168132%_)
                     (let ((_%$%hd168129168156%_
                            (##car _%$%self.irritants168124168132%_))
                           (_%$%tl168130168158%_
                            (##cdr _%$%self.irritants168124168132%_)))
                       (let* ((_%stx168161%_ _%$%hd168129168156%_)
                              (_%rest168163%_ _%$%tl168130168158%_))
                         (_%$%K168128168153%_ _%rest168163%_ _%stx168161%_)))
                     '#!void))
               (if __DEBUG
                   (let ((_%$%cont168164168166%_
                          (##unchecked-structure-ref
                           _%self168019%_
                           '1
                           '#f
                           '#f)))
                     (if _%$%cont168164168166%_
                         (let ((_%cont168168%_ _%$%cont168164168166%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont168168%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port168016%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (let* ((_%klass167878%_ SyntaxError::t) (_%klass167883%_ _%klass167878%_))
      (__seal-class! _%klass167883%_))
    (define make-syntax-error
      (lambda (_%message167871%_
               _%irritants167872%_
               _%where167873%_
               _%context167874%_
               _%marks167875%_
               _%phi167876%_)
        (let ((__obj168393
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj168393 _%message167871%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj168393
           _%irritants167872%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj168393 _%where167873%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj168393 _%context167874%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj168393 _%marks167875%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj168393 _%phi167876%_ '6 '#f '#f)
          __obj168393)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where167866%_
               _%message167867%_
               _%stx167868%_
               .
               _%details167869%_)
        (raise (make-syntax-error
                _%message167867%_
                (cons _%stx167868%_ _%details167869%_)
                _%where167866%_
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
      (lambda _%$args167863%_ (apply make-instance AST::t _%$args167863%_)))
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
      (lambda (_%stx167861%_)
        (if (##structure-instance-of? _%stx167861%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx167861%_ '1 '#f '#f)
            _%stx167861%_)))
    (define __AST-source
      (lambda (_%stx167852%_)
        (let _%lp167854%_ ((_%src167856%_ _%stx167852%_))
          (if (##structure-instance-of? _%src167856%_ 'gerbil#AST::t)
              (_%lp167854%_
               (##unchecked-structure-ref _%src167856%_ '2 '#f '#f))
              (if (##locat? _%src167856%_) _%src167856%_ '#f)))))
    (define __AST
      (lambda (_%e167844%_ _%src-stx167845%_)
        (let ((_%src167847%_ (__AST-source _%src-stx167845%_)))
          (if (or (##structure-instance-of? _%e167844%_ 'gerbil#AST::t)
                  (not _%src167847%_))
              _%e167844%_
              (##structure AST::t _%e167844%_ _%src167847%_)))))
    (define __AST-eq?
      (lambda (_%stx167841%_ _%obj167842%_)
        (eq? (__AST-e _%stx167841%_) _%obj167842%_)))
    (define __AST-pair?
      (lambda (_%stx167839%_) (pair? (__AST-e _%stx167839%_))))
    (define __AST-null?
      (lambda (_%stx167837%_) (null? (__AST-e _%stx167837%_))))
    (define __AST-datum?
      (lambda (_%stx167818%_)
        (let* ((_%e167820%_ (__AST-e _%stx167818%_))
               (_%$e167822%_ (number? _%e167820%_)))
          (if _%$e167822%_
              _%$e167822%_
              (let ((_%$e167825%_ (string? _%e167820%_)))
                (if _%$e167825%_
                    _%$e167825%_
                    (let ((_%$e167828%_ (char? _%e167820%_)))
                      (if _%$e167828%_
                          _%$e167828%_
                          (let ((_%$e167831%_ (keyword? _%e167820%_)))
                            (if _%$e167831%_
                                _%$e167831%_
                                (let ((_%$e167834%_ (boolean? _%e167820%_)))
                                  (if _%$e167834%_
                                      _%$e167834%_
                                      (eq? _%e167820%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx167816%_) (symbol? (__AST-e _%stx167816%_))))
    (define __AST-id-list?__%
      (lambda (_%stx167767%_ _%tail?167768%_)
        (let _%lp167770%_ ((_%rest167772%_ _%stx167767%_))
          (let* ((_%$e167774%_ _%rest167772%_)
                 (_%$%$E167776167789%_
                  (lambda ()
                    (let* ((_%$%$E167777167784%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e167774%_)))
                           (_%rest167787%_ _%$e167774%_))
                      (_%tail?167768%_ _%rest167787%_)))))
            (if (__AST-pair? _%$e167774%_)
                (let* ((_%$%$tgt167778167792%_ (__AST-e _%$e167774%_))
                       (_%$%$hd167779167795%_ (##car _%$%$tgt167778167792%_))
                       (_%$%$tl167780167798%_ (##cdr _%$%$tgt167778167792%_))
                       (_%hd167802%_ _%$%$hd167779167795%_)
                       (_%rest167804%_ _%$%$tl167780167798%_))
                  (if (__AST-id? _%hd167802%_)
                      (_%lp167770%_ _%rest167804%_)
                      '#f))
                (_%$%$E167776167789%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx167809%_)
        (let ((_%tail?167811%_ __AST-null?))
          (__AST-id-list?__% _%stx167809%_ _%tail?167811%_))))
    (define __AST-id-list?
      (lambda _g168395_
        (let ((_g168396_ (##length _g168395_)))
          (cond ((##fx= _g168396_ 1) (apply __AST-id-list?__0 _g168395_))
                ((##fx= _g168396_ 2) (apply __AST-id-list?__% _g168395_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g168395_))))))
    (define __AST-bind-list?
      (lambda (_%stx167759%_)
        (__AST-id-list?__%
         _%stx167759%_
         (lambda (_%e167761%_)
           (let ((_%$e167763%_ (__AST-null? _%e167761%_)))
             (if _%$e167763%_ _%$e167763%_ (__AST-id? _%e167761%_)))))))
    (define __AST-list?__%
      (lambda (_%stx167712%_ _%tail?167713%_)
        (let _%lp167715%_ ((_%rest167717%_ _%stx167712%_))
          (let* ((_%$e167719%_ _%rest167717%_)
                 (_%$%$E167721167734%_
                  (lambda ()
                    (let* ((_%$%$E167722167729%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e167719%_)))
                           (_%rest167732%_ _%$e167719%_))
                      (_%tail?167713%_ _%rest167732%_)))))
            (if (__AST-pair? _%$e167719%_)
                (let* ((_%$%$tgt167723167737%_ (__AST-e _%$e167719%_))
                       (_%$%$hd167724167740%_ (##car _%$%$tgt167723167737%_))
                       (_%$%$tl167725167743%_ (##cdr _%$%$tgt167723167737%_))
                       (_%rest167747%_ _%$%$tl167725167743%_))
                  (_%lp167715%_ _%rest167747%_))
                (_%$%$E167721167734%_))))))
    (define __AST-list?__0
      (lambda (_%stx167752%_)
        (let ((_%tail?167754%_ __AST-null?))
          (__AST-list?__% _%stx167752%_ _%tail?167754%_))))
    (define __AST-list?
      (lambda _g168397_
        (let ((_g168398_ (##length _g168397_)))
          (cond ((##fx= _g168398_ 1) (apply __AST-list?__0 _g168397_))
                ((##fx= _g168398_ 2) (apply __AST-list?__% _g168397_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g168397_))))))
    (define __AST->list
      (lambda (_%stx167677%_)
        (let* ((_%$e167679%_ _%stx167677%_)
               (_%$%$E167681167694%_
                (lambda ()
                  (let* ((_%$%$E167682167689%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e167679%_)))
                         (_%rest167692%_ _%$e167679%_))
                    (__AST-e _%rest167692%_)))))
          (if (__AST-pair? _%$e167679%_)
              (let* ((_%$%$tgt167683167697%_ (__AST-e _%$e167679%_))
                     (_%$%$hd167684167700%_ (##car _%$%$tgt167683167697%_))
                     (_%$%$tl167685167703%_ (##cdr _%$%$tgt167683167697%_))
                     (_%hd167707%_ _%$%$hd167684167700%_)
                     (_%rest167709%_ _%$%$tl167685167703%_))
                (cons _%hd167707%_ (__AST->list _%rest167709%_)))
              (_%$%$E167681167694%_)))))
    (define __AST->datum
      (lambda (_%stx167670%_)
        (if (##structure-instance-of? _%stx167670%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx167670%_))
            (if (pair? _%stx167670%_)
                (cons (__AST->datum (##car _%stx167670%_))
                      (__AST->datum (##cdr _%stx167670%_)))
                (if (vector? _%stx167670%_)
                    (vector-map __AST->datum _%stx167670%_)
                    (if (box? _%stx167670%_)
                        (box (__AST->datum (unbox _%stx167670%_)))
                        _%stx167670%_))))))
    (define get-readenv
      (lambda (_%port167668%_)
        (##make-readenv
         _%port167668%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in167656%_)
        (let ((_%e167658%_ (##read-datum-or-eof (get-readenv _%in167656%_))))
          (if (eof-object? (__AST-e _%e167658%_))
              (__AST-e _%e167658%_)
              _%e167658%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in167664%_ (current-input-port)))
          (read-syntax__% _%in167664%_))))
    (define read-syntax
      (lambda _g168399_
        (let ((_g168400_ (##length _g168399_)))
          (cond ((##fx= _g168400_ 0) (apply read-syntax__0 _g168399_))
                ((##fx= _g168400_ 1) (apply read-syntax__% _g168399_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g168399_))))))
    (define read-syntax-from-file
      (lambda (_%path167651%_)
        (let ((_%r167653%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path167651%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r167653%_)
              (cdr (__AST-e (vector-ref _%r167653%_ '1)))
              (error (err-code->string _%r167653%_) _%path167651%_)))))
    (define __wrap-syntax
      (lambda (_%re167648%_ _%e167649%_)
        (if (eof-object? _%e167649%_)
            _%e167649%_
            (##structure AST::t _%e167649%_ (##readenv->locat _%re167648%_)))))
    (define __unwrap-syntax
      (lambda (_%re167645%_ _%e167646%_) (__AST-e _%e167646%_)))
    (define __pp-syntax
      (lambda (_%stx167643%_) (pp (__AST->datum _%stx167643%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt167641%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt167641%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt167641%_ '@list)
          (macro-readtable-brace-handler-set! _%rt167641%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt167641%_
           '#\!
           __read-sharp-bang)
          _%rt167641%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt167637%_ _%kw167638%_)
        (macro-readtable-bracket-handler-set! _%rt167637%_ _%kw167638%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt167634%_ _%kw167635%_)
        (macro-readtable-brace-handler-set! _%rt167634%_ _%kw167635%_)))
    (define __read-sharp-bang
      (lambda (_%re167625%_ _%next167626%_ _%start-pos167627%_)
        (if (eq? _%start-pos167627%_ '0)
            (let* ((_%line167629%_
                    (##read-line
                     (macro-readenv-port _%re167625%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line167631%_
                    (substring
                     _%line167629%_
                     '1
                     (string-length _%line167629%_))))
              (macro-readenv-script-line-set!
               _%re167625%_
               _%script-line167631%_)
              (##script-marker))
            (##read-sharp-bang
             _%re167625%_
             _%next167626%_
             _%start-pos167627%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj167623%_)
        (if (source-location? _%obj167623%_)
            (string? (##locat-container _%obj167623%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj167621%_)
        (if (##locat? _%obj167621%_)
            (##container->path (##locat-container _%obj167621%_))
            '#f)))))

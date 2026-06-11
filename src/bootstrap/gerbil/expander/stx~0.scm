(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1781138353)
  (begin
    (declare (not safe))
    (define gx#identifier-wrap::t
      (__make-class-type
       'gx#identifier-wrap::t
       'syntax
       (list gx#AST::t)
       '(marks)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print:))))
       '#f))
    (define gx#identifier-wrap? (__make-class-predicate gx#identifier-wrap::t))
    (define gx#make-identifier-wrap
      (lambda _%$args175490%_
        (apply make-instance gx#identifier-wrap::t _%$args175490%_)))
    (define gx#identifier-wrap-marks
      (__make-class-slot-accessor gx#identifier-wrap::t 'marks))
    (define gx#identifier-wrap-e
      (__make-class-slot-accessor gx#identifier-wrap::t 'e))
    (define gx#identifier-wrap-source
      (__make-class-slot-accessor gx#identifier-wrap::t 'source))
    (define gx#identifier-wrap-marks-set!
      (__make-class-slot-mutator gx#identifier-wrap::t 'marks))
    (define gx#identifier-wrap-e-set!
      (__make-class-slot-mutator gx#identifier-wrap::t 'e))
    (define gx#identifier-wrap-source-set!
      (__make-class-slot-mutator gx#identifier-wrap::t 'source))
    (define gx#&identifier-wrap-marks
      (__make-class-slot-unchecked-accessor gx#identifier-wrap::t 'marks))
    (define gx#&identifier-wrap-e
      (__make-class-slot-unchecked-accessor gx#identifier-wrap::t 'e))
    (define gx#&identifier-wrap-source
      (__make-class-slot-unchecked-accessor gx#identifier-wrap::t 'source))
    (define gx#&identifier-wrap-marks-set!
      (__make-class-slot-unchecked-mutator gx#identifier-wrap::t 'marks))
    (define gx#&identifier-wrap-e-set!
      (__make-class-slot-unchecked-mutator gx#identifier-wrap::t 'e))
    (define gx#&identifier-wrap-source-set!
      (__make-class-slot-unchecked-mutator gx#identifier-wrap::t 'source))
    (define gx#syntax-wrap::t
      (__make-class-type
       'gx#syntax-wrap::t
       'syntax
       (list gx#AST::t)
       '(mark)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print:))))
       '#f))
    (define gx#syntax-wrap? (__make-class-predicate gx#syntax-wrap::t))
    (define gx#make-syntax-wrap
      (lambda _%$args175487%_
        (apply make-instance gx#syntax-wrap::t _%$args175487%_)))
    (define gx#syntax-wrap-mark
      (__make-class-slot-accessor gx#syntax-wrap::t 'mark))
    (define gx#syntax-wrap-e (__make-class-slot-accessor gx#syntax-wrap::t 'e))
    (define gx#syntax-wrap-source
      (__make-class-slot-accessor gx#syntax-wrap::t 'source))
    (define gx#syntax-wrap-mark-set!
      (__make-class-slot-mutator gx#syntax-wrap::t 'mark))
    (define gx#syntax-wrap-e-set!
      (__make-class-slot-mutator gx#syntax-wrap::t 'e))
    (define gx#syntax-wrap-source-set!
      (__make-class-slot-mutator gx#syntax-wrap::t 'source))
    (define gx#&syntax-wrap-mark
      (__make-class-slot-unchecked-accessor gx#syntax-wrap::t 'mark))
    (define gx#&syntax-wrap-e
      (__make-class-slot-unchecked-accessor gx#syntax-wrap::t 'e))
    (define gx#&syntax-wrap-source
      (__make-class-slot-unchecked-accessor gx#syntax-wrap::t 'source))
    (define gx#&syntax-wrap-mark-set!
      (__make-class-slot-unchecked-mutator gx#syntax-wrap::t 'mark))
    (define gx#&syntax-wrap-e-set!
      (__make-class-slot-unchecked-mutator gx#syntax-wrap::t 'e))
    (define gx#&syntax-wrap-source-set!
      (__make-class-slot-unchecked-mutator gx#syntax-wrap::t 'source))
    (define gx#syntax-quote::t
      (__make-class-type
       'gx#syntax-quote::t
       'syntax
       (list gx#AST::t)
       '(context marks)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print:))))
       '#f))
    (define gx#syntax-quote? (__make-class-predicate gx#syntax-quote::t))
    (define gx#make-syntax-quote
      (lambda _%$args175484%_
        (apply make-instance gx#syntax-quote::t _%$args175484%_)))
    (define gx#syntax-quote-context
      (__make-class-slot-accessor gx#syntax-quote::t 'context))
    (define gx#syntax-quote-marks
      (__make-class-slot-accessor gx#syntax-quote::t 'marks))
    (define gx#syntax-quote-e
      (__make-class-slot-accessor gx#syntax-quote::t 'e))
    (define gx#syntax-quote-source
      (__make-class-slot-accessor gx#syntax-quote::t 'source))
    (define gx#syntax-quote-context-set!
      (__make-class-slot-mutator gx#syntax-quote::t 'context))
    (define gx#syntax-quote-marks-set!
      (__make-class-slot-mutator gx#syntax-quote::t 'marks))
    (define gx#syntax-quote-e-set!
      (__make-class-slot-mutator gx#syntax-quote::t 'e))
    (define gx#syntax-quote-source-set!
      (__make-class-slot-mutator gx#syntax-quote::t 'source))
    (define gx#&syntax-quote-context
      (__make-class-slot-unchecked-accessor gx#syntax-quote::t 'context))
    (define gx#&syntax-quote-marks
      (__make-class-slot-unchecked-accessor gx#syntax-quote::t 'marks))
    (define gx#&syntax-quote-e
      (__make-class-slot-unchecked-accessor gx#syntax-quote::t 'e))
    (define gx#&syntax-quote-source
      (__make-class-slot-unchecked-accessor gx#syntax-quote::t 'source))
    (define gx#&syntax-quote-context-set!
      (__make-class-slot-unchecked-mutator gx#syntax-quote::t 'context))
    (define gx#&syntax-quote-marks-set!
      (__make-class-slot-unchecked-mutator gx#syntax-quote::t 'marks))
    (define gx#&syntax-quote-e-set!
      (__make-class-slot-unchecked-mutator gx#syntax-quote::t 'e))
    (define gx#&syntax-quote-source-set!
      (__make-class-slot-unchecked-mutator gx#syntax-quote::t 'source))
    (define gx#identifier?
      (lambda (_%stx175482%_) (symbol? (gx#stx-e _%stx175482%_))))
    (define gx#identifier-quote?
      (lambda (_%stx175480%_)
        (if (##structure-direct-instance-of? _%stx175480%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx175480%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx175475%_)
        (if (##structure-direct-instance-of? _%stx175475%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx175475%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx175475%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx175470%_)
        (if (##structure-direct-instance-of? _%stx175470%_ 'gx#syntax-quote::t)
            _%stx175470%_
            (if (##structure-direct-instance-of?
                 _%stx175470%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx175470%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx175444%_)
        (if (##structure-direct-instance-of? _%stx175444%_ 'gx#syntax-wrap::t)
            (let _%lp175447%_ ((_%e175449%_
                                (##unchecked-structure-ref
                                 _%stx175444%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks175450%_
                                (cons (##unchecked-structure-ref
                                       _%stx175444%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e175449%_)
                  (let ((_%$e175453%_
                         (##type-id (##structure-type _%e175449%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e175453%_)
                        (_%lp175447%_
                         (##unchecked-structure-ref _%e175449%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e175449%_ '3 '#f '#f)
                          _%marks175450%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e175453%_)
                                (eq? 'gx#identifier-wrap::t _%$e175453%_))
                            (##unchecked-structure-ref _%e175449%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e175453%_)
                                (_%lp175447%_
                                 (##unchecked-structure-ref
                                  _%e175449%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks175450%_)
                                _%e175449%_))))
                  (if (null? _%marks175450%_)
                      _%e175449%_
                      (if (pair? _%e175449%_)
                          (cons (gx#stx-wrap
                                 (##car _%e175449%_)
                                 _%marks175450%_)
                                (gx#stx-wrap
                                 (##cdr _%e175449%_)
                                 _%marks175450%_))
                          (if (vector? _%e175449%_)
                              (vector-map
                               (lambda (_%$%g175461175463%_)
                                 (gx#stx-wrap
                                  _%$%g175461175463%_
                                  _%marks175450%_))
                               _%e175449%_)
                              (if (box? _%e175449%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e175449%_)
                                        _%marks175450%_))
                                  _%e175449%_))))))
            (if (##structure-instance-of? _%stx175444%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx175444%_ '1 '#f '#f)
                _%stx175444%_))))
    (define gx#syntax->datum
      (lambda (_%stx175437%_)
        (if (##structure-instance-of? _%stx175437%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx175437%_ '1 '#f '#f))
            (if (pair? _%stx175437%_)
                (cons (gx#syntax->datum (##car _%stx175437%_))
                      (gx#syntax->datum (##cdr _%stx175437%_)))
                (if (vector? _%stx175437%_)
                    (vector-map gx#syntax->datum _%stx175437%_)
                    (if (box? _%stx175437%_)
                        (box (gx#syntax->datum (unbox _%stx175437%_)))
                        _%stx175437%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx175371%_ _%datum175372%_ _%src175373%_ _%quote?175374%_)
        (letrec ((_%wrap-datum175376%_
                  (lambda (_%e175409%_ _%marks175410%_)
                    (_%wrap-inner175378%_
                     _%e175409%_
                     (lambda (_%$%g175411175413%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%$%g175411175413%_
                        _%src175373%_
                        _%marks175410%_)))))
                 (_%wrap-quote175377%_
                  (lambda (_%e175401%_ _%ctx175402%_ _%marks175403%_)
                    (_%wrap-inner175378%_
                     _%e175401%_
                     (lambda (_%$%g175404175406%_)
                       (##structure
                        gx#syntax-quote::t
                        _%$%g175404175406%_
                        _%src175373%_
                        _%ctx175402%_
                        _%marks175403%_)))))
                 (_%wrap-inner175378%_
                  (lambda (_%e175389%_ _%wrap-e175390%_)
                    (let _%recur175392%_ ((_%e175394%_ _%e175389%_))
                      (if (symbol? _%e175394%_)
                          (_%wrap-e175390%_ _%e175394%_)
                          (if (pair? _%e175394%_)
                              (cons (_%recur175392%_ (##car _%e175394%_))
                                    (_%recur175392%_ (##cdr _%e175394%_)))
                              (if (vector? _%e175394%_)
                                  (vector-map _%recur175392%_ _%e175394%_)
                                  (if (box? _%e175394%_)
                                      (box (_%recur175392%_
                                            (unbox _%e175394%_)))
                                      _%e175394%_)))))))
                 (_%wrap-outer175379%_
                  (lambda (_%e175387%_)
                    (if (##structure-instance-of? _%e175387%_ 'gerbil#AST::t)
                        _%e175387%_
                        (##structure gx#AST::t _%e175387%_ _%src175373%_)))))
          (if (##structure-instance-of? _%datum175372%_ 'gerbil#AST::t)
              _%datum175372%_
              (if (not _%stx175371%_)
                  (##structure gx#AST::t _%datum175372%_ _%src175373%_)
                  (if (gx#identifier? _%stx175371%_)
                      (let ((_%stx175384%_ (gx#stx-unwrap__0 _%stx175371%_)))
                        (_%wrap-outer175379%_
                         (if (##structure-direct-instance-of?
                              _%stx175384%_
                              'gx#syntax-quote::t)
                             (if _%quote?175374%_
                                 (_%wrap-quote175377%_
                                  _%datum175372%_
                                  (##unchecked-structure-ref
                                   _%stx175384%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx175384%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum175376%_
                                  _%datum175372%_
                                  (##unchecked-structure-ref
                                   _%stx175384%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum175376%_
                              _%datum175372%_
                              (##unchecked-structure-ref
                               _%stx175384%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx175371%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx175419%_ _%datum175420%_)
        (let* ((_%src175422%_ '#f) (_%quote?175424%_ '#t))
          (gx#datum->syntax__%
           _%stx175419%_
           _%datum175420%_
           _%src175422%_
           _%quote?175424%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx175426%_ _%datum175427%_ _%src175428%_)
        (let ((_%quote?175430%_ '#t))
          (gx#datum->syntax__%
           _%stx175426%_
           _%datum175427%_
           _%src175428%_
           _%quote?175430%_))))
    (define gx#datum->syntax
      (lambda _g175570_
        (let ((_g175571_ (##length _g175570_)))
          (cond ((##fx= _g175571_ 2) (apply gx#datum->syntax__0 _g175570_))
                ((##fx= _g175571_ 3) (apply gx#datum->syntax__1 _g175570_))
                ((##fx= _g175571_ 4) (apply gx#datum->syntax__% _g175570_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g175570_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx175337%_ _%marks175338%_)
        (let _%lp175340%_ ((_%e175342%_ _%stx175337%_)
                           (_%marks175343%_ _%marks175338%_)
                           (_%src175344%_ (gx#stx-source _%stx175337%_)))
          (if (##structure-direct-instance-of? _%e175342%_ 'gx#syntax-wrap::t)
              (_%lp175340%_
               (##unchecked-structure-ref _%e175342%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e175342%_ '3 '#f '#f)
                _%marks175343%_)
               (##unchecked-structure-ref _%e175342%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e175342%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks175343%_)
                      _%e175342%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e175342%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e175342%_ '2 '#f '#f)
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e175342%_ '3 '#f '#f)
                        _%marks175343%_)))
                  (if (##structure-direct-instance-of?
                       _%e175342%_
                       'gx#syntax-quote::t)
                      _%e175342%_
                      (if (##structure-instance-of? _%e175342%_ 'gerbil#AST::t)
                          (_%lp175340%_
                           (##unchecked-structure-ref _%e175342%_ '1 '#f '#f)
                           _%marks175343%_
                           (##unchecked-structure-ref _%e175342%_ '2 '#f '#f))
                          (if (symbol? _%e175342%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e175342%_
                               _%src175344%_
                               (reverse _%marks175343%_))
                              (if (null? _%marks175343%_)
                                  _%e175342%_
                                  (if (pair? _%e175342%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e175342%_)
                                             _%marks175343%_)
                                            (gx#stx-wrap
                                             (##cdr _%e175342%_)
                                             _%marks175343%_))
                                      (if (vector? _%e175342%_)
                                          (vector-map
                                           (lambda (_%$%g175353175355%_)
                                             (gx#stx-wrap
                                              _%$%g175353175355%_
                                              _%marks175343%_))
                                           _%e175342%_)
                                          (if (box? _%e175342%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e175342%_)
                                                    _%marks175343%_))
                                              _%e175342%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx175363%_)
        (let ((_%marks175365%_ '()))
          (gx#stx-unwrap__% _%stx175363%_ _%marks175365%_))))
    (define gx#stx-unwrap
      (lambda _g175572_
        (let ((_g175573_ (##length _g175572_)))
          (cond ((##fx= _g175573_ 1) (apply gx#stx-unwrap__0 _g175572_))
                ((##fx= _g175573_ 2) (apply gx#stx-unwrap__% _g175572_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g175572_))))))
    (define gx#stx-wrap
      (lambda (_%stx175330%_ _%marks175331%_)
        (foldl__0
         (lambda (_%mark175333%_ _%stx175334%_)
           (gx#stx-apply-mark _%stx175334%_ _%mark175333%_))
         _%stx175330%_
         _%marks175331%_)))
    (define gx#stx-rewrap
      (lambda (_%stx175324%_ _%marks175325%_)
        (foldr__0
         (lambda (_%mark175327%_ _%stx175328%_)
           (gx#stx-apply-mark _%stx175328%_ _%mark175327%_))
         _%stx175324%_
         _%marks175325%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx175318%_ _%mark175319%_)
        (if (##structure-direct-instance-of? _%stx175318%_ 'gx#syntax-quote::t)
            _%stx175318%_
            (if (and (##structure-direct-instance-of?
                      _%stx175318%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark175319%_
                          (##unchecked-structure-ref
                           _%stx175318%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx175318%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx175318%_
                 (gx#stx-source _%stx175318%_)
                 _%mark175319%_)))))
    (define gx#apply-mark
      (lambda (_%mark175282%_ _%marks175283%_)
        (let* ((_%$%marks175284175292%_ _%marks175283%_)
               (_%$%else175286175300%_
                (lambda () (cons _%mark175282%_ _%marks175283%_)))
               (_%$%K175288175306%_
                (lambda (_%rest175303%_ _%hd175304%_)
                  (if (eq? _%mark175282%_ _%hd175304%_)
                      _%rest175303%_
                      (cons _%mark175282%_ _%marks175283%_)))))
          (if (pair? _%$%marks175284175292%_)
              (let ((_%$%hd175289175309%_ (##car _%$%marks175284175292%_))
                    (_%$%tl175290175311%_ (##cdr _%$%marks175284175292%_)))
                (let* ((_%hd175314%_ _%$%hd175289175309%_)
                       (_%rest175316%_ _%$%tl175290175311%_))
                  (_%$%K175288175306%_ _%rest175316%_ _%hd175314%_)))
              (_%$%else175286175300%_)))))
    (define gx#stx-e
      (lambda (_%stx175277%_)
        (if (##structure-direct-instance-of? _%stx175277%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx175277%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx175277%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx175277%_ '1 '#f '#f)
                _%stx175277%_))))
    (define gx#stx-source
      (lambda (_%stx175275%_)
        (if (##structure-instance-of? _%stx175275%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx175275%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx175269%_ _%src175270%_)
        (if (or (##structure-instance-of? _%stx175269%_ 'gerbil#AST::t)
                (not _%src175270%_))
            _%stx175269%_
            (##structure gx#AST::t _%stx175269%_ _%src175270%_))))
    (define gx#stx-datum?
      (lambda (_%stx175267%_) (gx#self-quoting? (gx#stx-e _%stx175267%_))))
    (define gx#self-quoting?
      (lambda (_%x175250%_)
        (let ((_%$e175252%_ (immediate? _%x175250%_)))
          (if _%$e175252%_
              _%$e175252%_
              (let ((_%$e175255%_ (number? _%x175250%_)))
                (if _%$e175255%_
                    _%$e175255%_
                    (let ((_%$e175258%_ (keyword? _%x175250%_)))
                      (if _%$e175258%_
                          _%$e175258%_
                          (let ((_%$e175261%_ (string? _%x175250%_)))
                            (if _%$e175261%_
                                _%$e175261%_
                                (let ((_%$e175264%_ (vector? _%x175250%_)))
                                  (if _%$e175264%_
                                      _%$e175264%_
                                      (u8vector? _%x175250%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e175248%_) (boolean? (gx#stx-e _%e175248%_))))
    (define gx#stx-keyword?
      (lambda (_%e175246%_) (keyword? (gx#stx-e _%e175246%_))))
    (define gx#stx-char? (lambda (_%e175244%_) (char? (gx#stx-e _%e175244%_))))
    (define gx#stx-number?
      (lambda (_%e175242%_) (number? (gx#stx-e _%e175242%_))))
    (define gx#stx-fixnum?
      (lambda (_%e175240%_) (fixnum? (gx#stx-e _%e175240%_))))
    (define gx#stx-string?
      (lambda (_%e175238%_) (string? (gx#stx-e _%e175238%_))))
    (define gx#stx-null? (lambda (_%e175236%_) (null? (gx#stx-e _%e175236%_))))
    (define gx#stx-pair? (lambda (_%e175234%_) (pair? (gx#stx-e _%e175234%_))))
    (define gx#stx-list?
      (lambda (_%e175196%_)
        (let* ((_%$%g175197175206%_ (gx#stx-e _%e175196%_))
               (_%$%E175200175210%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%g175197175206%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%$%K175202175226%_
                 (lambda (_%rest175224%_) (gx#stx-list? _%rest175224%_)))
                (_%$%K175201175216%_
                 (lambda (_%tail175214%_) (null? _%tail175214%_))))
            (if (pair? _%$%g175197175206%_)
                (let* ((_%$%tl175204175229%_ (##cdr _%$%g175197175206%_))
                       (_%rest175232%_ _%$%tl175204175229%_))
                  (gx#stx-list? _%rest175232%_))
                (let ((_%tail175219%_ _%$%g175197175206%_))
                  (null? _%tail175219%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e175189%_)
        (let* ((_%e175191%_ (gx#stx-e _%e175189%_))
               (_%$e175193%_ (pair? _%e175191%_)))
          (if _%$e175193%_ _%$e175193%_ (null? _%e175191%_)))))
    (define gx#stx-vector?
      (lambda (_%e175187%_) (vector? (gx#stx-e _%e175187%_))))
    (define gx#stx-box? (lambda (_%e175185%_) (box? (gx#stx-e _%e175185%_))))
    (define gx#stx-eq?
      (lambda (_%x175182%_ _%y175183%_)
        (eq? (gx#stx-e _%x175182%_) (gx#stx-e _%y175183%_))))
    (define gx#stx-eqv?
      (lambda (_%x175179%_ _%y175180%_)
        (eqv? (gx#stx-e _%x175179%_) (gx#stx-e _%y175180%_))))
    (define gx#stx-equal?
      (lambda (_%x175176%_ _%y175177%_)
        (equal? (gx#stx-e _%x175176%_) (gx#stx-e _%y175177%_))))
    (define gx#stx-false? (lambda (_%x175174%_) (not (gx#stx-e _%x175174%_))))
    (define gx#stx-identifier
      (lambda (_%template175171%_ . _%args175172%_)
        (gx#datum->syntax__1
         _%template175171%_
         (apply make-symbol (gx#syntax->datum _%args175172%_))
         (gx#stx-source _%template175171%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx175169%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx175169%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx175164%_)
        (if (##structure-direct-instance-of?
             _%stx175164%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx175164%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx175164%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx175164%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx175164%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx175160%_)
        (let ((_%stx175162%_ (gx#stx-unwrap__0 _%stx175160%_)))
          (if (gx#identifier-quote? _%stx175162%_)
              (##unchecked-structure-ref _%stx175162%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx175115%_)
        (let* ((_%$%g175116175126%_ (gx#stx-e _%stx175115%_))
               (_%$%else175119175134%_ (lambda () '#f)))
          (let ((_%$%K175122175148%_
                 (lambda (_%rest175145%_ _%hd175146%_)
                   (if (gx#identifier? _%hd175146%_)
                       (gx#identifier-list? _%rest175145%_)
                       '#f)))
                (_%$%K175121175139%_ (lambda () '#t)))
            (let ((_%$%try-match175118175142%_
                   (lambda ()
                     (if (null? _%$%g175116175126%_)
                         (_%$%K175121175139%_)
                         (_%$%else175119175134%_)))))
              (if (pair? _%$%g175116175126%_)
                  (let ((_%$%tl175124175153%_ (##cdr _%$%g175116175126%_))
                        (_%$%hd175123175151%_ (##car _%$%g175116175126%_)))
                    (let ((_%hd175156%_ _%$%hd175123175151%_)
                          (_%rest175158%_ _%$%tl175124175153%_))
                      (_%$%K175122175148%_ _%rest175158%_ _%hd175156%_)))
                  (_%$%try-match175118175142%_)))))))
    (define gx#genident__%
      (lambda (_%e175095%_ _%src175096%_)
        (gx#datum->syntax__1
         (if (gx#identifier? _%src175096%_) _%src175096%_ '#f)
         (make-symbol__1
          '"$%"
          (##gensym
           (let ((_%e175098%_ (gx#stx-e _%e175095%_)))
             (if (symbol? _%e175098%_) _%e175098%_ 'g))))
         _%src175096%_)))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e175104%_ 'g) (_%src175106%_ '#f))
          (gx#genident__% _%e175104%_ _%src175106%_))))
    (define gx#genident__1
      (lambda (_%e175108%_)
        (let ((_%src175110%_ '#f))
          (gx#genident__% _%e175108%_ _%src175110%_))))
    (define gx#genident
      (lambda _g175574_
        (let ((_g175575_ (##length _g175574_)))
          (cond ((##fx= _g175575_ 0) (apply gx#genident__0 _g175574_))
                ((##fx= _g175575_ 1) (apply gx#genident__1 _g175574_))
                ((##fx= _g175575_ 2) (apply gx#genident__% _g175574_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g175574_))))))
    (define gx#gentemps
      (lambda (_%stx-lst175090%_)
        (gx#stx-map1
         (lambda (_%x175092%_) (gx#genident__% _%x175092%_ _%x175092%_))
         _%stx-lst175090%_)))
    (define gx#syntax->list
      (lambda (_%stx175088%_) (gx#stx-map1 values _%stx175088%_)))
    (define gx#stx-car
      (lambda (_%stx175085%_)
        (declare (safe))
        (car (gx#syntax-e _%stx175085%_))))
    (define gx#stx-cdr
      (lambda (_%stx175082%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx175082%_))))
    (define gx#stx-length
      (lambda (_%stx175047%_)
        (let _%lp175049%_ ((_%rest175051%_ _%stx175047%_) (_%n175052%_ '0))
          (let* ((_%$%g175053175061%_ (gx#stx-e _%rest175051%_))
                 (_%$%else175055175069%_ (lambda () _%n175052%_))
                 (_%$%K175057175074%_
                  (lambda (_%rest175072%_)
                    (_%lp175049%_ _%rest175072%_ (##fx+ _%n175052%_ '1)))))
            (if (pair? _%$%g175053175061%_)
                (let* ((_%$%tl175059175077%_ (##cdr _%$%g175053175061%_))
                       (_%rest175080%_ _%$%tl175059175077%_))
                  (_%$%K175057175074%_ _%rest175080%_))
                (_%$%else175055175069%_))))))
    (define gx#stx-for-each
      (lambda _g175576_
        (let ((_g175577_ (##length _g175576_)))
          (cond ((##fx= _g175577_ 2) (apply gx#stx-for-each1 _g175576_))
                ((##fx= _g175577_ 3) (apply gx#stx-for-each2 _g175576_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g175576_))))))
    (define gx#stx-for-each1
      (lambda (_%f174990%_ _%stx174991%_)
        (if (procedure? _%f174990%_)
            '#!void
            (error '"expected procedure" _%f174990%_))
        (let _%lp174993%_ ((_%rest174995%_ _%stx174991%_))
          (let* ((_%$%g174996175006%_ (gx#syntax-e _%rest174995%_))
                 (_%$%else174999175014%_
                  (lambda () (_%f174990%_ _%rest174995%_))))
            (let ((_%$%K175002175028%_
                   (lambda (_%rest175025%_ _%hd175026%_)
                     (_%f174990%_ _%hd175026%_)
                     (_%lp174993%_ _%rest175025%_)))
                  (_%$%K175001175019%_ (lambda () '#!void)))
              (let ((_%$%try-match174998175022%_
                     (lambda ()
                       (if (null? _%$%g174996175006%_)
                           (_%$%K175001175019%_)
                           (_%$%else174999175014%_)))))
                (if (pair? _%$%g174996175006%_)
                    (let ((_%$%tl175004175033%_ (##cdr _%$%g174996175006%_))
                          (_%$%hd175003175031%_ (##car _%$%g174996175006%_)))
                      (let ((_%hd175036%_ _%$%hd175003175031%_)
                            (_%rest175038%_ _%$%tl175004175033%_))
                        (_%$%K175002175028%_ _%rest175038%_ _%hd175036%_)))
                    (_%$%try-match174998175022%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f174895%_ _%xstx174896%_ _%ystx174897%_)
        (if (procedure? _%f174895%_)
            '#!void
            (error '"expected procedure" _%f174895%_))
        (let _%lp174899%_ ((_%xrest174901%_ _%xstx174896%_)
                           (_%yrest174902%_ _%ystx174897%_))
          (let* ((_%$%g174903174913%_ (gx#syntax-e _%xrest174901%_))
                 (_%$%else174906174921%_ (lambda () '#!void)))
            (let ((_%$%K174909174978%_
                   (lambda (_%xrest174947%_ _%xhd174948%_)
                     (let* ((_%$%g174949174956%_ (gx#syntax-e _%yrest174902%_))
                            (_%$%E174951174960%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%g174949174956%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%$%K174952174966%_
                             (lambda (_%yrest174963%_ _%yhd174964%_)
                               (_%f174895%_ _%xhd174948%_ _%yhd174964%_)
                               (_%lp174899%_
                                _%xrest174947%_
                                _%yrest174963%_))))
                       (if (pair? _%$%g174949174956%_)
                           (let ((_%$%hd174953174969%_
                                  (##car _%$%g174949174956%_))
                                 (_%$%tl174954174971%_
                                  (##cdr _%$%g174949174956%_)))
                             (let* ((_%yhd174974%_ _%$%hd174953174969%_)
                                    (_%yrest174976%_ _%$%tl174954174971%_))
                               (_%$%K174952174966%_
                                _%yrest174976%_
                                _%yhd174974%_)))
                           (_%$%E174951174960%_)))))
                  (_%$%K174908174941%_
                   (lambda ()
                     (let* ((_%$%yrest174925174930%_ _%yrest174902%_)
                            (_%$%E174927174934%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%yrest174925174930%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%$%K174928174938%_
                             (lambda ()
                               (_%f174895%_ _%xrest174901%_ _%yrest174902%_))))
                       (if (gx#stx-null? _%$%yrest174925174930%_)
                           (_%$%E174927174934%_)
                           (_%$%K174928174938%_))))))
              (let ((_%$%try-match174905174944%_
                     (lambda ()
                       (if (null? _%$%g174903174913%_)
                           (_%$%else174906174921%_)
                           (_%$%K174908174941%_)))))
                (if (pair? _%$%g174903174913%_)
                    (let ((_%$%tl174911174983%_ (##cdr _%$%g174903174913%_))
                          (_%$%hd174910174981%_ (##car _%$%g174903174913%_)))
                      (let ((_%xhd174986%_ _%$%hd174910174981%_)
                            (_%xrest174988%_ _%$%tl174911174983%_))
                        (_%$%K174909174978%_ _%xrest174988%_ _%xhd174986%_)))
                    (_%$%try-match174905174944%_))))))))
    (define gx#stx-map
      (lambda _g175578_
        (let ((_g175579_ (##length _g175578_)))
          (cond ((##fx= _g175579_ 2) (apply gx#stx-map1 _g175578_))
                ((##fx= _g175579_ 3) (apply gx#stx-map2 _g175578_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g175578_))))))
    (define gx#stx-map1
      (lambda (_%f174838%_ _%stx174839%_)
        (if (procedure? _%f174838%_)
            '#!void
            (error '"expected procedure" _%f174838%_))
        (let _%recur174841%_ ((_%rest174843%_ _%stx174839%_))
          (let* ((_%$%g174844174854%_ (gx#syntax-e _%rest174843%_))
                 (_%$%else174847174862%_
                  (lambda () (_%f174838%_ _%rest174843%_))))
            (let ((_%$%K174850174876%_
                   (lambda (_%rest174873%_ _%hd174874%_)
                     (cons (_%f174838%_ _%hd174874%_)
                           (_%recur174841%_ _%rest174873%_))))
                  (_%$%K174849174867%_ (lambda () '())))
              (let ((_%$%try-match174846174870%_
                     (lambda ()
                       (if (null? _%$%g174844174854%_)
                           (_%$%K174849174867%_)
                           (_%$%else174847174862%_)))))
                (if (pair? _%$%g174844174854%_)
                    (let ((_%$%tl174852174881%_ (##cdr _%$%g174844174854%_))
                          (_%$%hd174851174879%_ (##car _%$%g174844174854%_)))
                      (let ((_%hd174884%_ _%$%hd174851174879%_)
                            (_%rest174886%_ _%$%tl174852174881%_))
                        (_%$%K174850174876%_ _%rest174886%_ _%hd174884%_)))
                    (_%$%try-match174846174870%_))))))))
    (define gx#stx-map2
      (lambda (_%f174743%_ _%xstx174744%_ _%ystx174745%_)
        (if (procedure? _%f174743%_)
            '#!void
            (error '"expected procedure" _%f174743%_))
        (let _%recur174747%_ ((_%xrest174749%_ _%xstx174744%_)
                              (_%yrest174750%_ _%ystx174745%_))
          (let* ((_%$%g174751174761%_ (gx#syntax-e _%xrest174749%_))
                 (_%$%else174754174769%_ (lambda () '())))
            (let ((_%$%K174757174826%_
                   (lambda (_%xrest174795%_ _%xhd174796%_)
                     (let* ((_%$%g174797174804%_ (gx#syntax-e _%yrest174750%_))
                            (_%$%E174799174808%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%g174797174804%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%$%K174800174814%_
                             (lambda (_%yrest174811%_ _%yhd174812%_)
                               (cons (_%f174743%_ _%xhd174796%_ _%yhd174812%_)
                                     (_%recur174747%_
                                      _%xrest174795%_
                                      _%yrest174811%_)))))
                       (if (pair? _%$%g174797174804%_)
                           (let ((_%$%hd174801174817%_
                                  (##car _%$%g174797174804%_))
                                 (_%$%tl174802174819%_
                                  (##cdr _%$%g174797174804%_)))
                             (let* ((_%yhd174822%_ _%$%hd174801174817%_)
                                    (_%yrest174824%_ _%$%tl174802174819%_))
                               (_%$%K174800174814%_
                                _%yrest174824%_
                                _%yhd174822%_)))
                           (_%$%E174799174808%_)))))
                  (_%$%K174756174789%_
                   (lambda ()
                     (let* ((_%$%yrest174773174778%_ _%yrest174750%_)
                            (_%$%E174775174782%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%yrest174773174778%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%$%K174776174786%_
                             (lambda ()
                               (_%f174743%_ _%xrest174749%_ _%yrest174750%_))))
                       (if (gx#stx-null? _%$%yrest174773174778%_)
                           (_%$%E174775174782%_)
                           (_%$%K174776174786%_))))))
              (let ((_%$%try-match174753174792%_
                     (lambda ()
                       (if (null? _%$%g174751174761%_)
                           (_%$%else174754174769%_)
                           (_%$%K174756174789%_)))))
                (if (pair? _%$%g174751174761%_)
                    (let ((_%$%tl174759174831%_ (##cdr _%$%g174751174761%_))
                          (_%$%hd174758174829%_ (##car _%$%g174751174761%_)))
                      (let ((_%xhd174834%_ _%$%hd174758174829%_)
                            (_%xrest174836%_ _%$%tl174759174831%_))
                        (_%$%K174757174826%_ _%xrest174836%_ _%xhd174834%_)))
                    (_%$%try-match174753174792%_))))))))
    (define gx#stx-andmap
      (lambda (_%f174693%_ _%stx174694%_)
        (if (procedure? _%f174693%_)
            '#!void
            (error '"expected procedure" _%f174693%_))
        (let _%lp174696%_ ((_%rest174698%_ _%stx174694%_))
          (let* ((_%$%g174699174709%_ (gx#syntax-e _%rest174698%_))
                 (_%$%else174702174717%_
                  (lambda () (_%f174693%_ _%rest174698%_))))
            (let ((_%$%K174705174731%_
                   (lambda (_%rest174728%_ _%hd174729%_)
                     (if (_%f174693%_ _%hd174729%_)
                         (_%lp174696%_ _%rest174728%_)
                         '#f)))
                  (_%$%K174704174722%_ (lambda () '#t)))
              (let ((_%$%try-match174701174725%_
                     (lambda ()
                       (if (null? _%$%g174699174709%_)
                           (_%$%K174704174722%_)
                           (_%$%else174702174717%_)))))
                (if (pair? _%$%g174699174709%_)
                    (let ((_%$%tl174707174736%_ (##cdr _%$%g174699174709%_))
                          (_%$%hd174706174734%_ (##car _%$%g174699174709%_)))
                      (let ((_%hd174739%_ _%$%hd174706174734%_)
                            (_%rest174741%_ _%$%tl174707174736%_))
                        (_%$%K174705174731%_ _%rest174741%_ _%hd174739%_)))
                    (_%$%try-match174701174725%_))))))))
    (define gx#stx-ormap
      (lambda (_%f174640%_ _%stx174641%_)
        (if (procedure? _%f174640%_)
            '#!void
            (error '"expected procedure" _%f174640%_))
        (let _%lp174643%_ ((_%rest174645%_ _%stx174641%_))
          (let* ((_%$%g174646174656%_ (gx#syntax-e _%rest174645%_))
                 (_%$%else174649174664%_
                  (lambda () (_%f174640%_ _%rest174645%_))))
            (let ((_%$%K174652174681%_
                   (lambda (_%rest174675%_ _%hd174676%_)
                     (let ((_%$e174678%_ (_%f174640%_ _%hd174676%_)))
                       (if _%$e174678%_
                           _%$e174678%_
                           (_%lp174643%_ _%rest174675%_)))))
                  (_%$%K174651174669%_ (lambda () '#f)))
              (let ((_%$%try-match174648174672%_
                     (lambda ()
                       (if (null? _%$%g174646174656%_)
                           (_%$%K174651174669%_)
                           (_%$%else174649174664%_)))))
                (if (pair? _%$%g174646174656%_)
                    (let ((_%$%tl174654174686%_ (##cdr _%$%g174646174656%_))
                          (_%$%hd174653174684%_ (##car _%$%g174646174656%_)))
                      (let ((_%hd174689%_ _%$%hd174653174684%_)
                            (_%rest174691%_ _%$%tl174654174686%_))
                        (_%$%K174652174681%_ _%rest174691%_ _%hd174689%_)))
                    (_%$%try-match174648174672%_))))))))
    (define gx#stx-foldl
      (lambda (_%f174588%_ _%iv174589%_ _%stx174590%_)
        (if (procedure? _%f174588%_)
            '#!void
            (error '"expected procedure" _%f174588%_))
        (let _%lp174592%_ ((_%r174594%_ _%iv174589%_)
                           (_%rest174595%_ _%stx174590%_))
          (let* ((_%$%g174596174606%_ (gx#syntax-e _%rest174595%_))
                 (_%$%else174599174614%_
                  (lambda () (_%f174588%_ _%rest174595%_ _%r174594%_))))
            (let ((_%$%K174602174628%_
                   (lambda (_%rest174625%_ _%hd174626%_)
                     (_%lp174592%_
                      (_%f174588%_ _%hd174626%_ _%r174594%_)
                      _%rest174625%_)))
                  (_%$%K174601174619%_ (lambda () _%r174594%_)))
              (let ((_%$%try-match174598174622%_
                     (lambda ()
                       (if (null? _%$%g174596174606%_)
                           (_%$%K174601174619%_)
                           (_%$%else174599174614%_)))))
                (if (pair? _%$%g174596174606%_)
                    (let ((_%$%tl174604174633%_ (##cdr _%$%g174596174606%_))
                          (_%$%hd174603174631%_ (##car _%$%g174596174606%_)))
                      (let ((_%hd174636%_ _%$%hd174603174631%_)
                            (_%rest174638%_ _%$%tl174604174633%_))
                        (_%$%K174602174628%_ _%rest174638%_ _%hd174636%_)))
                    (_%$%try-match174598174622%_))))))))
    (define gx#stx-foldr
      (lambda (_%f174537%_ _%iv174538%_ _%stx174539%_)
        (if (procedure? _%f174537%_)
            '#!void
            (error '"expected procedure" _%f174537%_))
        (let _%recur174541%_ ((_%rest174543%_ _%stx174539%_))
          (let* ((_%$%g174544174554%_ (gx#syntax-e _%rest174543%_))
                 (_%$%else174547174562%_
                  (lambda () (_%f174537%_ _%rest174543%_ _%iv174538%_))))
            (let ((_%$%K174550174576%_
                   (lambda (_%rest174573%_ _%hd174574%_)
                     (_%f174537%_
                      _%hd174574%_
                      (_%recur174541%_ _%rest174573%_))))
                  (_%$%K174549174567%_ (lambda () _%iv174538%_)))
              (let ((_%$%try-match174546174570%_
                     (lambda ()
                       (if (null? _%$%g174544174554%_)
                           (_%$%K174549174567%_)
                           (_%$%else174547174562%_)))))
                (if (pair? _%$%g174544174554%_)
                    (let ((_%$%tl174552174581%_ (##cdr _%$%g174544174554%_))
                          (_%$%hd174551174579%_ (##car _%$%g174544174554%_)))
                      (let ((_%hd174584%_ _%$%hd174551174579%_)
                            (_%rest174586%_ _%$%tl174552174581%_))
                        (_%$%K174550174576%_ _%rest174586%_ _%hd174584%_)))
                    (_%$%try-match174546174570%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx174535%_) (gx#stx-foldl cons '() _%stx174535%_)))
    (define gx#stx-last
      (lambda (_%stx174496%_)
        (let _%lp174498%_ ((_%rest174500%_ _%stx174496%_))
          (let* ((_%$%g174501174509%_ (gx#syntax-e _%rest174500%_))
                 (_%$%else174503174517%_ (lambda () _%rest174500%_))
                 (_%$%K174505174523%_
                  (lambda (_%rest174520%_ _%hd174521%_)
                    (if (gx#stx-null? _%rest174520%_)
                        _%hd174521%_
                        (_%lp174498%_ _%rest174520%_)))))
            (if (pair? _%$%g174501174509%_)
                (let ((_%$%hd174506174526%_ (##car _%$%g174501174509%_))
                      (_%$%tl174507174528%_ (##cdr _%$%g174501174509%_)))
                  (let* ((_%hd174531%_ _%$%hd174506174526%_)
                         (_%rest174533%_ _%$%tl174507174528%_))
                    (_%$%K174505174523%_ _%rest174533%_ _%hd174531%_)))
                (_%$%else174503174517%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx174467%_)
        (let _%lp174469%_ ((_%hd174471%_ _%stx174467%_))
          (let* ((_%$%g174472174479%_ (gx#syntax-e _%hd174471%_))
                 (_%$%E174474174483%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%g174472174479%_
                           '([_ . rest]))
                    '#!void))
                 (_%$%K174475174488%_
                  (lambda (_%rest174486%_)
                    (if (gx#stx-pair? _%rest174486%_)
                        (_%lp174469%_ _%rest174486%_)
                        _%hd174471%_))))
            (if (pair? _%$%g174472174479%_)
                (let* ((_%$%tl174477174491%_ (##cdr _%$%g174472174479%_))
                       (_%rest174494%_ _%$%tl174477174491%_))
                  (_%$%K174475174488%_ _%rest174494%_))
                (_%$%E174474174483%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx174436%_ _%k174437%_)
        (let _%lp174439%_ ((_%rest174441%_ _%stx174436%_)
                           (_%k174442%_ _%k174437%_))
          (if (fxpositive? _%k174442%_)
              (let* ((_%$%g174443174450%_ (gx#syntax-e _%rest174441%_))
                     (_%$%E174445174454%_
                      (lambda ()
                        (error '"No clause matching"
                               _%$%g174443174450%_
                               '([_ . rest]))
                        '#!void))
                     (_%$%K174446174459%_
                      (lambda (_%rest174457%_)
                        (_%lp174439%_ _%rest174457%_ (##fx- _%k174442%_ '1)))))
                (if (pair? _%$%g174443174450%_)
                    (let* ((_%$%tl174448174462%_ (##cdr _%$%g174443174450%_))
                           (_%rest174465%_ _%$%tl174448174462%_))
                      (_%$%K174446174459%_ _%rest174465%_))
                    (_%$%E174445174454%_)))
              _%rest174441%_))))
    (define gx#stx-list-ref
      (lambda (_%stx174433%_ _%k174434%_)
        (gx#stx-car (gx#stx-list-tail _%stx174433%_ _%k174434%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx174345%_ _%key?174346%_)
        (if (procedure? _%key?174346%_)
            '#!void
            (error '"expected procedure" _%key?174346%_))
        (let _%lp174348%_ ((_%rest174350%_ _%stx174345%_))
          (let* ((_%$%g174351174361%_ (gx#stx-e _%rest174350%_))
                 (_%$%else174354174369%_ (lambda () '#f)))
            (let ((_%$%K174357174411%_
                   (lambda (_%rest174380%_ _%hd174381%_)
                     (if (_%key?174346%_ _%hd174381%_)
                         (let* ((_%$%g174382174390%_ (gx#stx-e _%rest174380%_))
                                (_%$%else174384174398%_ (lambda () '#f))
                                (_%$%K174386174403%_
                                 (lambda (_%rest174401%_)
                                   (_%lp174348%_ _%rest174401%_))))
                           (if (pair? _%$%g174382174390%_)
                               (let* ((_%$%tl174388174406%_
                                       (##cdr _%$%g174382174390%_))
                                      (_%rest174409%_ _%$%tl174388174406%_))
                                 (_%lp174348%_ _%rest174409%_))
                               (_%$%else174384174398%_)))
                         '#f)))
                  (_%$%K174356174374%_ (lambda () '#t)))
              (let ((_%$%try-match174353174377%_
                     (lambda ()
                       (if (null? _%$%g174351174361%_)
                           (_%$%K174356174374%_)
                           (_%$%else174354174369%_)))))
                (if (pair? _%$%g174351174361%_)
                    (let ((_%$%tl174359174416%_ (##cdr _%$%g174351174361%_))
                          (_%$%hd174358174414%_ (##car _%$%g174351174361%_)))
                      (let ((_%hd174419%_ _%$%hd174358174414%_)
                            (_%rest174421%_ _%$%tl174359174416%_))
                        (_%$%K174357174411%_ _%rest174421%_ _%hd174419%_)))
                    (_%$%try-match174353174377%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx174426%_)
        (let ((_%key?174428%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx174426%_ _%key?174428%_))))
    (define gx#stx-plist?
      (lambda _g175580_
        (let ((_g175581_ (##length _g175580_)))
          (cond ((##fx= _g175581_ 1) (apply gx#stx-plist?__0 _g175580_))
                ((##fx= _g175581_ 2) (apply gx#stx-plist?__% _g175580_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g175580_))))))
    (define gx#stx-getq__%
      (lambda (_%key174263%_ _%stx174264%_ _%key=?174265%_)
        (if (procedure? _%key=?174265%_)
            '#!void
            (error '"expected procedure" _%key=?174265%_))
        (let _%lp174267%_ ((_%rest174269%_ _%stx174264%_))
          (let* ((_%$%g174270174278%_ (gx#syntax-e _%rest174269%_))
                 (_%$%else174272174286%_ (lambda () '#f))
                 (_%$%K174274174320%_
                  (lambda (_%rest174289%_ _%hd174290%_)
                    (let* ((_%$%g174291174298%_ (gx#syntax-e _%rest174289%_))
                           (_%$%E174293174302%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%g174291174298%_
                                     '([val . rest]))
                              '#!void))
                           (_%$%K174294174308%_
                            (lambda (_%rest174305%_ _%val174306%_)
                              (if (_%key=?174265%_ _%hd174290%_ _%key174263%_)
                                  _%val174306%_
                                  (_%lp174267%_ _%rest174305%_)))))
                      (if (pair? _%$%g174291174298%_)
                          (let ((_%$%hd174295174311%_
                                 (##car _%$%g174291174298%_))
                                (_%$%tl174296174313%_
                                 (##cdr _%$%g174291174298%_)))
                            (let* ((_%val174316%_ _%$%hd174295174311%_)
                                   (_%rest174318%_ _%$%tl174296174313%_))
                              (_%$%K174294174308%_
                               _%rest174318%_
                               _%val174316%_)))
                          (_%$%E174293174302%_))))))
            (if (pair? _%$%g174270174278%_)
                (let ((_%$%hd174275174323%_ (##car _%$%g174270174278%_))
                      (_%$%tl174276174325%_ (##cdr _%$%g174270174278%_)))
                  (let* ((_%hd174328%_ _%$%hd174275174323%_)
                         (_%rest174330%_ _%$%tl174276174325%_))
                    (_%$%K174274174320%_ _%rest174330%_ _%hd174328%_)))
                (_%$%else174272174286%_))))))
    (define gx#stx-getq__0
      (lambda (_%key174335%_ _%stx174336%_)
        (let ((_%key=?174338%_ gx#stx-eq?))
          (gx#stx-getq__% _%key174335%_ _%stx174336%_ _%key=?174338%_))))
    (define gx#stx-getq
      (lambda _g175582_
        (let ((_g175583_ (##length _g175582_)))
          (cond ((##fx= _g175583_ 2) (apply gx#stx-getq__0 _g175582_))
                ((##fx= _g175583_ 3) (apply gx#stx-getq__% _g175582_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g175582_))))))))

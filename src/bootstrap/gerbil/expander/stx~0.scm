(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1779967242)
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
      (lambda _%$args175394%_
        (apply make-instance gx#identifier-wrap::t _%$args175394%_)))
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
      (lambda _%$args175391%_
        (apply make-instance gx#syntax-wrap::t _%$args175391%_)))
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
      (lambda _%$args175388%_
        (apply make-instance gx#syntax-quote::t _%$args175388%_)))
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
      (lambda (_%stx175386%_) (symbol? (gx#stx-e _%stx175386%_))))
    (define gx#identifier-quote?
      (lambda (_%stx175384%_)
        (if (##structure-direct-instance-of? _%stx175384%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx175384%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx175379%_)
        (if (##structure-direct-instance-of? _%stx175379%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx175379%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx175379%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx175374%_)
        (if (##structure-direct-instance-of? _%stx175374%_ 'gx#syntax-quote::t)
            _%stx175374%_
            (if (##structure-direct-instance-of?
                 _%stx175374%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx175374%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx175348%_)
        (if (##structure-direct-instance-of? _%stx175348%_ 'gx#syntax-wrap::t)
            (let _%lp175351%_ ((_%e175353%_
                                (##unchecked-structure-ref
                                 _%stx175348%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks175354%_
                                (cons (##unchecked-structure-ref
                                       _%stx175348%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e175353%_)
                  (let ((_%$e175357%_
                         (##type-id (##structure-type _%e175353%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e175357%_)
                        (_%lp175351%_
                         (##unchecked-structure-ref _%e175353%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e175353%_ '3 '#f '#f)
                          _%marks175354%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e175357%_)
                                (eq? 'gx#identifier-wrap::t _%$e175357%_))
                            (##unchecked-structure-ref _%e175353%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e175357%_)
                                (_%lp175351%_
                                 (##unchecked-structure-ref
                                  _%e175353%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks175354%_)
                                _%e175353%_))))
                  (if (null? _%marks175354%_)
                      _%e175353%_
                      (if (pair? _%e175353%_)
                          (cons (gx#stx-wrap
                                 (##car _%e175353%_)
                                 _%marks175354%_)
                                (gx#stx-wrap
                                 (##cdr _%e175353%_)
                                 _%marks175354%_))
                          (if (vector? _%e175353%_)
                              (vector-map
                               (lambda (_%g175365175367%_)
                                 (gx#stx-wrap
                                  _%g175365175367%_
                                  _%marks175354%_))
                               _%e175353%_)
                              (if (box? _%e175353%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e175353%_)
                                        _%marks175354%_))
                                  _%e175353%_))))))
            (if (##structure-instance-of? _%stx175348%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx175348%_ '1 '#f '#f)
                _%stx175348%_))))
    (define gx#syntax->datum
      (lambda (_%stx175341%_)
        (if (##structure-instance-of? _%stx175341%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx175341%_ '1 '#f '#f))
            (if (pair? _%stx175341%_)
                (cons (gx#syntax->datum (##car _%stx175341%_))
                      (gx#syntax->datum (##cdr _%stx175341%_)))
                (if (vector? _%stx175341%_)
                    (vector-map gx#syntax->datum _%stx175341%_)
                    (if (box? _%stx175341%_)
                        (box (gx#syntax->datum (unbox _%stx175341%_)))
                        _%stx175341%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx175275%_ _%datum175276%_ _%src175277%_ _%quote?175278%_)
        (letrec ((_%wrap-datum175280%_
                  (lambda (_%e175313%_ _%marks175314%_)
                    (_%wrap-inner175282%_
                     _%e175313%_
                     (lambda (_%g175315175317%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g175315175317%_
                        _%src175277%_
                        _%marks175314%_)))))
                 (_%wrap-quote175281%_
                  (lambda (_%e175305%_ _%ctx175306%_ _%marks175307%_)
                    (_%wrap-inner175282%_
                     _%e175305%_
                     (lambda (_%g175308175310%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g175308175310%_
                        _%src175277%_
                        _%ctx175306%_
                        _%marks175307%_)))))
                 (_%wrap-inner175282%_
                  (lambda (_%e175293%_ _%wrap-e175294%_)
                    (let _%recur175296%_ ((_%e175298%_ _%e175293%_))
                      (if (symbol? _%e175298%_)
                          (_%wrap-e175294%_ _%e175298%_)
                          (if (pair? _%e175298%_)
                              (cons (_%recur175296%_ (##car _%e175298%_))
                                    (_%recur175296%_ (##cdr _%e175298%_)))
                              (if (vector? _%e175298%_)
                                  (vector-map _%recur175296%_ _%e175298%_)
                                  (if (box? _%e175298%_)
                                      (box (_%recur175296%_
                                            (unbox _%e175298%_)))
                                      _%e175298%_)))))))
                 (_%wrap-outer175283%_
                  (lambda (_%e175291%_)
                    (if (##structure-instance-of? _%e175291%_ 'gerbil#AST::t)
                        _%e175291%_
                        (##structure gx#AST::t _%e175291%_ _%src175277%_)))))
          (if (##structure-instance-of? _%datum175276%_ 'gerbil#AST::t)
              _%datum175276%_
              (if (not _%stx175275%_)
                  (##structure gx#AST::t _%datum175276%_ _%src175277%_)
                  (if (gx#identifier? _%stx175275%_)
                      (let ((_%stx175288%_ (gx#stx-unwrap__0 _%stx175275%_)))
                        (_%wrap-outer175283%_
                         (if (##structure-direct-instance-of?
                              _%stx175288%_
                              'gx#syntax-quote::t)
                             (if _%quote?175278%_
                                 (_%wrap-quote175281%_
                                  _%datum175276%_
                                  (##unchecked-structure-ref
                                   _%stx175288%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx175288%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum175280%_
                                  _%datum175276%_
                                  (##unchecked-structure-ref
                                   _%stx175288%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum175280%_
                              _%datum175276%_
                              (##unchecked-structure-ref
                               _%stx175288%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx175275%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx175323%_ _%datum175324%_)
        (let* ((_%src175326%_ '#f) (_%quote?175328%_ '#t))
          (gx#datum->syntax__%
           _%stx175323%_
           _%datum175324%_
           _%src175326%_
           _%quote?175328%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx175330%_ _%datum175331%_ _%src175332%_)
        (let ((_%quote?175334%_ '#t))
          (gx#datum->syntax__%
           _%stx175330%_
           _%datum175331%_
           _%src175332%_
           _%quote?175334%_))))
    (define gx#datum->syntax
      (lambda _g175474_
        (let ((_g175475_ (##length _g175474_)))
          (cond ((##fx= _g175475_ 2) (apply gx#datum->syntax__0 _g175474_))
                ((##fx= _g175475_ 3) (apply gx#datum->syntax__1 _g175474_))
                ((##fx= _g175475_ 4) (apply gx#datum->syntax__% _g175474_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g175474_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx175241%_ _%marks175242%_)
        (let _%lp175244%_ ((_%e175246%_ _%stx175241%_)
                           (_%marks175247%_ _%marks175242%_)
                           (_%src175248%_ (gx#stx-source _%stx175241%_)))
          (if (##structure-direct-instance-of? _%e175246%_ 'gx#syntax-wrap::t)
              (_%lp175244%_
               (##unchecked-structure-ref _%e175246%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e175246%_ '3 '#f '#f)
                _%marks175247%_)
               (##unchecked-structure-ref _%e175246%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e175246%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks175247%_)
                      _%e175246%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e175246%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e175246%_ '2 '#f '#f)
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e175246%_ '3 '#f '#f)
                        _%marks175247%_)))
                  (if (##structure-direct-instance-of?
                       _%e175246%_
                       'gx#syntax-quote::t)
                      _%e175246%_
                      (if (##structure-instance-of? _%e175246%_ 'gerbil#AST::t)
                          (_%lp175244%_
                           (##unchecked-structure-ref _%e175246%_ '1 '#f '#f)
                           _%marks175247%_
                           (##unchecked-structure-ref _%e175246%_ '2 '#f '#f))
                          (if (symbol? _%e175246%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e175246%_
                               _%src175248%_
                               (reverse _%marks175247%_))
                              (if (null? _%marks175247%_)
                                  _%e175246%_
                                  (if (pair? _%e175246%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e175246%_)
                                             _%marks175247%_)
                                            (gx#stx-wrap
                                             (##cdr _%e175246%_)
                                             _%marks175247%_))
                                      (if (vector? _%e175246%_)
                                          (vector-map
                                           (lambda (_%g175257175259%_)
                                             (gx#stx-wrap
                                              _%g175257175259%_
                                              _%marks175247%_))
                                           _%e175246%_)
                                          (if (box? _%e175246%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e175246%_)
                                                    _%marks175247%_))
                                              _%e175246%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx175267%_)
        (let ((_%marks175269%_ '()))
          (gx#stx-unwrap__% _%stx175267%_ _%marks175269%_))))
    (define gx#stx-unwrap
      (lambda _g175476_
        (let ((_g175477_ (##length _g175476_)))
          (cond ((##fx= _g175477_ 1) (apply gx#stx-unwrap__0 _g175476_))
                ((##fx= _g175477_ 2) (apply gx#stx-unwrap__% _g175476_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g175476_))))))
    (define gx#stx-wrap
      (lambda (_%stx175234%_ _%marks175235%_)
        (foldl__0
         (lambda (_%mark175237%_ _%stx175238%_)
           (gx#stx-apply-mark _%stx175238%_ _%mark175237%_))
         _%stx175234%_
         _%marks175235%_)))
    (define gx#stx-rewrap
      (lambda (_%stx175228%_ _%marks175229%_)
        (foldr__0
         (lambda (_%mark175231%_ _%stx175232%_)
           (gx#stx-apply-mark _%stx175232%_ _%mark175231%_))
         _%stx175228%_
         _%marks175229%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx175222%_ _%mark175223%_)
        (if (##structure-direct-instance-of? _%stx175222%_ 'gx#syntax-quote::t)
            _%stx175222%_
            (if (and (##structure-direct-instance-of?
                      _%stx175222%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark175223%_
                          (##unchecked-structure-ref
                           _%stx175222%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx175222%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx175222%_
                 (gx#stx-source _%stx175222%_)
                 _%mark175223%_)))))
    (define gx#apply-mark
      (lambda (_%mark175186%_ _%marks175187%_)
        (let* ((_%marks175188175196%_ _%marks175187%_)
               (_%else175190175204%_
                (lambda () (cons _%mark175186%_ _%marks175187%_)))
               (_%K175192175210%_
                (lambda (_%rest175207%_ _%hd175208%_)
                  (if (eq? _%mark175186%_ _%hd175208%_)
                      _%rest175207%_
                      (cons _%mark175186%_ _%marks175187%_)))))
          (if (pair? _%marks175188175196%_)
              (let ((_%hd175193175213%_ (##car _%marks175188175196%_))
                    (_%tl175194175215%_ (##cdr _%marks175188175196%_)))
                (let* ((_%hd175218%_ _%hd175193175213%_)
                       (_%rest175220%_ _%tl175194175215%_))
                  (_%K175192175210%_ _%rest175220%_ _%hd175218%_)))
              (_%else175190175204%_)))))
    (define gx#stx-e
      (lambda (_%stx175181%_)
        (if (##structure-direct-instance-of? _%stx175181%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx175181%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx175181%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx175181%_ '1 '#f '#f)
                _%stx175181%_))))
    (define gx#stx-source
      (lambda (_%stx175179%_)
        (if (##structure-instance-of? _%stx175179%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx175179%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx175173%_ _%src175174%_)
        (if (or (##structure-instance-of? _%stx175173%_ 'gerbil#AST::t)
                (not _%src175174%_))
            _%stx175173%_
            (##structure gx#AST::t _%stx175173%_ _%src175174%_))))
    (define gx#stx-datum?
      (lambda (_%stx175171%_) (gx#self-quoting? (gx#stx-e _%stx175171%_))))
    (define gx#self-quoting?
      (lambda (_%x175154%_)
        (let ((_%$e175156%_ (immediate? _%x175154%_)))
          (if _%$e175156%_
              _%$e175156%_
              (let ((_%$e175159%_ (number? _%x175154%_)))
                (if _%$e175159%_
                    _%$e175159%_
                    (let ((_%$e175162%_ (keyword? _%x175154%_)))
                      (if _%$e175162%_
                          _%$e175162%_
                          (let ((_%$e175165%_ (string? _%x175154%_)))
                            (if _%$e175165%_
                                _%$e175165%_
                                (let ((_%$e175168%_ (vector? _%x175154%_)))
                                  (if _%$e175168%_
                                      _%$e175168%_
                                      (u8vector? _%x175154%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e175152%_) (boolean? (gx#stx-e _%e175152%_))))
    (define gx#stx-keyword?
      (lambda (_%e175150%_) (keyword? (gx#stx-e _%e175150%_))))
    (define gx#stx-char? (lambda (_%e175148%_) (char? (gx#stx-e _%e175148%_))))
    (define gx#stx-number?
      (lambda (_%e175146%_) (number? (gx#stx-e _%e175146%_))))
    (define gx#stx-fixnum?
      (lambda (_%e175144%_) (fixnum? (gx#stx-e _%e175144%_))))
    (define gx#stx-string?
      (lambda (_%e175142%_) (string? (gx#stx-e _%e175142%_))))
    (define gx#stx-null? (lambda (_%e175140%_) (null? (gx#stx-e _%e175140%_))))
    (define gx#stx-pair? (lambda (_%e175138%_) (pair? (gx#stx-e _%e175138%_))))
    (define gx#stx-list?
      (lambda (_%e175100%_)
        (let* ((_%g175101175110%_ (gx#stx-e _%e175100%_))
               (_%E175104175114%_
                (lambda ()
                  (error '"No clause matching"
                         _%g175101175110%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K175106175130%_
                 (lambda (_%rest175128%_) (gx#stx-list? _%rest175128%_)))
                (_%K175105175120%_
                 (lambda (_%tail175118%_) (null? _%tail175118%_))))
            (if (pair? _%g175101175110%_)
                (let* ((_%tl175108175133%_ (##cdr _%g175101175110%_))
                       (_%rest175136%_ _%tl175108175133%_))
                  (gx#stx-list? _%rest175136%_))
                (let ((_%tail175123%_ _%g175101175110%_))
                  (null? _%tail175123%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e175093%_)
        (let* ((_%e175095%_ (gx#stx-e _%e175093%_))
               (_%$e175097%_ (pair? _%e175095%_)))
          (if _%$e175097%_ _%$e175097%_ (null? _%e175095%_)))))
    (define gx#stx-vector?
      (lambda (_%e175091%_) (vector? (gx#stx-e _%e175091%_))))
    (define gx#stx-box? (lambda (_%e175089%_) (box? (gx#stx-e _%e175089%_))))
    (define gx#stx-eq?
      (lambda (_%x175086%_ _%y175087%_)
        (eq? (gx#stx-e _%x175086%_) (gx#stx-e _%y175087%_))))
    (define gx#stx-eqv?
      (lambda (_%x175083%_ _%y175084%_)
        (eqv? (gx#stx-e _%x175083%_) (gx#stx-e _%y175084%_))))
    (define gx#stx-equal?
      (lambda (_%x175080%_ _%y175081%_)
        (equal? (gx#stx-e _%x175080%_) (gx#stx-e _%y175081%_))))
    (define gx#stx-false? (lambda (_%x175078%_) (not (gx#stx-e _%x175078%_))))
    (define gx#stx-identifier
      (lambda (_%template175075%_ . _%args175076%_)
        (gx#datum->syntax__1
         _%template175075%_
         (apply make-symbol (gx#syntax->datum _%args175076%_))
         (gx#stx-source _%template175075%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx175073%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx175073%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx175068%_)
        (if (##structure-direct-instance-of?
             _%stx175068%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx175068%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx175068%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx175068%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx175068%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx175064%_)
        (let ((_%stx175066%_ (gx#stx-unwrap__0 _%stx175064%_)))
          (if (gx#identifier-quote? _%stx175066%_)
              (##unchecked-structure-ref _%stx175066%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx175019%_)
        (let* ((_%g175020175030%_ (gx#stx-e _%stx175019%_))
               (_%else175023175038%_ (lambda () '#f)))
          (let ((_%K175026175052%_
                 (lambda (_%rest175049%_ _%hd175050%_)
                   (if (gx#identifier? _%hd175050%_)
                       (gx#identifier-list? _%rest175049%_)
                       '#f)))
                (_%K175025175043%_ (lambda () '#t)))
            (let ((_%try-match175022175046%_
                   (lambda ()
                     (if (null? _%g175020175030%_)
                         (_%K175025175043%_)
                         (_%else175023175038%_)))))
              (if (pair? _%g175020175030%_)
                  (let ((_%tl175028175057%_ (##cdr _%g175020175030%_))
                        (_%hd175027175055%_ (##car _%g175020175030%_)))
                    (let ((_%hd175060%_ _%hd175027175055%_)
                          (_%rest175062%_ _%tl175028175057%_))
                      (_%K175026175052%_ _%rest175062%_ _%hd175060%_)))
                  (_%try-match175022175046%_)))))))
    (define gx#genident__%
      (lambda (_%e174999%_ _%src175000%_)
        (gx#datum->syntax__1
         (if (gx#identifier? _%src175000%_) _%src175000%_ '#f)
         (##string->symbol
          (##symbol->string
           (##gensym
            (let ((_%e175002%_ (gx#stx-e _%e174999%_)))
              (if (symbol? _%e175002%_) _%e175002%_ 'g)))))
         _%src175000%_)))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e175008%_ 'g) (_%src175010%_ '#f))
          (gx#genident__% _%e175008%_ _%src175010%_))))
    (define gx#genident__1
      (lambda (_%e175012%_)
        (let ((_%src175014%_ '#f))
          (gx#genident__% _%e175012%_ _%src175014%_))))
    (define gx#genident
      (lambda _g175478_
        (let ((_g175479_ (##length _g175478_)))
          (cond ((##fx= _g175479_ 0) (apply gx#genident__0 _g175478_))
                ((##fx= _g175479_ 1) (apply gx#genident__1 _g175478_))
                ((##fx= _g175479_ 2) (apply gx#genident__% _g175478_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g175478_))))))
    (define gx#gentemps
      (lambda (_%stx-lst174994%_)
        (gx#stx-map1
         (lambda (_%x174996%_) (gx#genident__% _%x174996%_ _%x174996%_))
         _%stx-lst174994%_)))
    (define gx#syntax->list
      (lambda (_%stx174992%_) (gx#stx-map1 values _%stx174992%_)))
    (define gx#stx-car
      (lambda (_%stx174989%_)
        (declare (safe))
        (car (gx#syntax-e _%stx174989%_))))
    (define gx#stx-cdr
      (lambda (_%stx174986%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx174986%_))))
    (define gx#stx-length
      (lambda (_%stx174951%_)
        (let _%lp174953%_ ((_%rest174955%_ _%stx174951%_) (_%n174956%_ '0))
          (let* ((_%g174957174965%_ (gx#stx-e _%rest174955%_))
                 (_%else174959174973%_ (lambda () _%n174956%_))
                 (_%K174961174978%_
                  (lambda (_%rest174976%_)
                    (_%lp174953%_ _%rest174976%_ (##fx+ _%n174956%_ '1)))))
            (if (pair? _%g174957174965%_)
                (let* ((_%tl174963174981%_ (##cdr _%g174957174965%_))
                       (_%rest174984%_ _%tl174963174981%_))
                  (_%K174961174978%_ _%rest174984%_))
                (_%else174959174973%_))))))
    (define gx#stx-for-each
      (lambda _g175480_
        (let ((_g175481_ (##length _g175480_)))
          (cond ((##fx= _g175481_ 2) (apply gx#stx-for-each1 _g175480_))
                ((##fx= _g175481_ 3) (apply gx#stx-for-each2 _g175480_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g175480_))))))
    (define gx#stx-for-each1
      (lambda (_%f174894%_ _%stx174895%_)
        (if (procedure? _%f174894%_)
            '#!void
            (error '"expected procedure" _%f174894%_))
        (let _%lp174897%_ ((_%rest174899%_ _%stx174895%_))
          (let* ((_%g174900174910%_ (gx#syntax-e _%rest174899%_))
                 (_%else174903174918%_
                  (lambda () (_%f174894%_ _%rest174899%_))))
            (let ((_%K174906174932%_
                   (lambda (_%rest174929%_ _%hd174930%_)
                     (_%f174894%_ _%hd174930%_)
                     (_%lp174897%_ _%rest174929%_)))
                  (_%K174905174923%_ (lambda () '#!void)))
              (let ((_%try-match174902174926%_
                     (lambda ()
                       (if (null? _%g174900174910%_)
                           (_%K174905174923%_)
                           (_%else174903174918%_)))))
                (if (pair? _%g174900174910%_)
                    (let ((_%tl174908174937%_ (##cdr _%g174900174910%_))
                          (_%hd174907174935%_ (##car _%g174900174910%_)))
                      (let ((_%hd174940%_ _%hd174907174935%_)
                            (_%rest174942%_ _%tl174908174937%_))
                        (_%K174906174932%_ _%rest174942%_ _%hd174940%_)))
                    (_%try-match174902174926%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f174799%_ _%xstx174800%_ _%ystx174801%_)
        (if (procedure? _%f174799%_)
            '#!void
            (error '"expected procedure" _%f174799%_))
        (let _%lp174803%_ ((_%xrest174805%_ _%xstx174800%_)
                           (_%yrest174806%_ _%ystx174801%_))
          (let* ((_%g174807174817%_ (gx#syntax-e _%xrest174805%_))
                 (_%else174810174825%_ (lambda () '#!void)))
            (let ((_%K174813174882%_
                   (lambda (_%xrest174851%_ _%xhd174852%_)
                     (let* ((_%g174853174860%_ (gx#syntax-e _%yrest174806%_))
                            (_%E174855174864%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g174853174860%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K174856174870%_
                             (lambda (_%yrest174867%_ _%yhd174868%_)
                               (_%f174799%_ _%xhd174852%_ _%yhd174868%_)
                               (_%lp174803%_
                                _%xrest174851%_
                                _%yrest174867%_))))
                       (if (pair? _%g174853174860%_)
                           (let ((_%hd174857174873%_ (##car _%g174853174860%_))
                                 (_%tl174858174875%_
                                  (##cdr _%g174853174860%_)))
                             (let* ((_%yhd174878%_ _%hd174857174873%_)
                                    (_%yrest174880%_ _%tl174858174875%_))
                               (_%K174856174870%_
                                _%yrest174880%_
                                _%yhd174878%_)))
                           (_%E174855174864%_)))))
                  (_%K174812174845%_
                   (lambda ()
                     (let* ((_%yrest174829174834%_ _%yrest174806%_)
                            (_%E174831174838%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest174829174834%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K174832174842%_
                             (lambda ()
                               (_%f174799%_ _%xrest174805%_ _%yrest174806%_))))
                       (if (gx#stx-null? _%yrest174829174834%_)
                           (_%E174831174838%_)
                           (_%K174832174842%_))))))
              (let ((_%try-match174809174848%_
                     (lambda ()
                       (if (null? _%g174807174817%_)
                           (_%else174810174825%_)
                           (_%K174812174845%_)))))
                (if (pair? _%g174807174817%_)
                    (let ((_%tl174815174887%_ (##cdr _%g174807174817%_))
                          (_%hd174814174885%_ (##car _%g174807174817%_)))
                      (let ((_%xhd174890%_ _%hd174814174885%_)
                            (_%xrest174892%_ _%tl174815174887%_))
                        (_%K174813174882%_ _%xrest174892%_ _%xhd174890%_)))
                    (_%try-match174809174848%_))))))))
    (define gx#stx-map
      (lambda _g175482_
        (let ((_g175483_ (##length _g175482_)))
          (cond ((##fx= _g175483_ 2) (apply gx#stx-map1 _g175482_))
                ((##fx= _g175483_ 3) (apply gx#stx-map2 _g175482_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g175482_))))))
    (define gx#stx-map1
      (lambda (_%f174742%_ _%stx174743%_)
        (if (procedure? _%f174742%_)
            '#!void
            (error '"expected procedure" _%f174742%_))
        (let _%recur174745%_ ((_%rest174747%_ _%stx174743%_))
          (let* ((_%g174748174758%_ (gx#syntax-e _%rest174747%_))
                 (_%else174751174766%_
                  (lambda () (_%f174742%_ _%rest174747%_))))
            (let ((_%K174754174780%_
                   (lambda (_%rest174777%_ _%hd174778%_)
                     (cons (_%f174742%_ _%hd174778%_)
                           (_%recur174745%_ _%rest174777%_))))
                  (_%K174753174771%_ (lambda () '())))
              (let ((_%try-match174750174774%_
                     (lambda ()
                       (if (null? _%g174748174758%_)
                           (_%K174753174771%_)
                           (_%else174751174766%_)))))
                (if (pair? _%g174748174758%_)
                    (let ((_%tl174756174785%_ (##cdr _%g174748174758%_))
                          (_%hd174755174783%_ (##car _%g174748174758%_)))
                      (let ((_%hd174788%_ _%hd174755174783%_)
                            (_%rest174790%_ _%tl174756174785%_))
                        (_%K174754174780%_ _%rest174790%_ _%hd174788%_)))
                    (_%try-match174750174774%_))))))))
    (define gx#stx-map2
      (lambda (_%f174647%_ _%xstx174648%_ _%ystx174649%_)
        (if (procedure? _%f174647%_)
            '#!void
            (error '"expected procedure" _%f174647%_))
        (let _%recur174651%_ ((_%xrest174653%_ _%xstx174648%_)
                              (_%yrest174654%_ _%ystx174649%_))
          (let* ((_%g174655174665%_ (gx#syntax-e _%xrest174653%_))
                 (_%else174658174673%_ (lambda () '())))
            (let ((_%K174661174730%_
                   (lambda (_%xrest174699%_ _%xhd174700%_)
                     (let* ((_%g174701174708%_ (gx#syntax-e _%yrest174654%_))
                            (_%E174703174712%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g174701174708%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K174704174718%_
                             (lambda (_%yrest174715%_ _%yhd174716%_)
                               (cons (_%f174647%_ _%xhd174700%_ _%yhd174716%_)
                                     (_%recur174651%_
                                      _%xrest174699%_
                                      _%yrest174715%_)))))
                       (if (pair? _%g174701174708%_)
                           (let ((_%hd174705174721%_ (##car _%g174701174708%_))
                                 (_%tl174706174723%_
                                  (##cdr _%g174701174708%_)))
                             (let* ((_%yhd174726%_ _%hd174705174721%_)
                                    (_%yrest174728%_ _%tl174706174723%_))
                               (_%K174704174718%_
                                _%yrest174728%_
                                _%yhd174726%_)))
                           (_%E174703174712%_)))))
                  (_%K174660174693%_
                   (lambda ()
                     (let* ((_%yrest174677174682%_ _%yrest174654%_)
                            (_%E174679174686%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest174677174682%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K174680174690%_
                             (lambda ()
                               (_%f174647%_ _%xrest174653%_ _%yrest174654%_))))
                       (if (gx#stx-null? _%yrest174677174682%_)
                           (_%E174679174686%_)
                           (_%K174680174690%_))))))
              (let ((_%try-match174657174696%_
                     (lambda ()
                       (if (null? _%g174655174665%_)
                           (_%else174658174673%_)
                           (_%K174660174693%_)))))
                (if (pair? _%g174655174665%_)
                    (let ((_%tl174663174735%_ (##cdr _%g174655174665%_))
                          (_%hd174662174733%_ (##car _%g174655174665%_)))
                      (let ((_%xhd174738%_ _%hd174662174733%_)
                            (_%xrest174740%_ _%tl174663174735%_))
                        (_%K174661174730%_ _%xrest174740%_ _%xhd174738%_)))
                    (_%try-match174657174696%_))))))))
    (define gx#stx-andmap
      (lambda (_%f174597%_ _%stx174598%_)
        (if (procedure? _%f174597%_)
            '#!void
            (error '"expected procedure" _%f174597%_))
        (let _%lp174600%_ ((_%rest174602%_ _%stx174598%_))
          (let* ((_%g174603174613%_ (gx#syntax-e _%rest174602%_))
                 (_%else174606174621%_
                  (lambda () (_%f174597%_ _%rest174602%_))))
            (let ((_%K174609174635%_
                   (lambda (_%rest174632%_ _%hd174633%_)
                     (if (_%f174597%_ _%hd174633%_)
                         (_%lp174600%_ _%rest174632%_)
                         '#f)))
                  (_%K174608174626%_ (lambda () '#t)))
              (let ((_%try-match174605174629%_
                     (lambda ()
                       (if (null? _%g174603174613%_)
                           (_%K174608174626%_)
                           (_%else174606174621%_)))))
                (if (pair? _%g174603174613%_)
                    (let ((_%tl174611174640%_ (##cdr _%g174603174613%_))
                          (_%hd174610174638%_ (##car _%g174603174613%_)))
                      (let ((_%hd174643%_ _%hd174610174638%_)
                            (_%rest174645%_ _%tl174611174640%_))
                        (_%K174609174635%_ _%rest174645%_ _%hd174643%_)))
                    (_%try-match174605174629%_))))))))
    (define gx#stx-ormap
      (lambda (_%f174544%_ _%stx174545%_)
        (if (procedure? _%f174544%_)
            '#!void
            (error '"expected procedure" _%f174544%_))
        (let _%lp174547%_ ((_%rest174549%_ _%stx174545%_))
          (let* ((_%g174550174560%_ (gx#syntax-e _%rest174549%_))
                 (_%else174553174568%_
                  (lambda () (_%f174544%_ _%rest174549%_))))
            (let ((_%K174556174585%_
                   (lambda (_%rest174579%_ _%hd174580%_)
                     (let ((_%$e174582%_ (_%f174544%_ _%hd174580%_)))
                       (if _%$e174582%_
                           _%$e174582%_
                           (_%lp174547%_ _%rest174579%_)))))
                  (_%K174555174573%_ (lambda () '#f)))
              (let ((_%try-match174552174576%_
                     (lambda ()
                       (if (null? _%g174550174560%_)
                           (_%K174555174573%_)
                           (_%else174553174568%_)))))
                (if (pair? _%g174550174560%_)
                    (let ((_%tl174558174590%_ (##cdr _%g174550174560%_))
                          (_%hd174557174588%_ (##car _%g174550174560%_)))
                      (let ((_%hd174593%_ _%hd174557174588%_)
                            (_%rest174595%_ _%tl174558174590%_))
                        (_%K174556174585%_ _%rest174595%_ _%hd174593%_)))
                    (_%try-match174552174576%_))))))))
    (define gx#stx-foldl
      (lambda (_%f174492%_ _%iv174493%_ _%stx174494%_)
        (if (procedure? _%f174492%_)
            '#!void
            (error '"expected procedure" _%f174492%_))
        (let _%lp174496%_ ((_%r174498%_ _%iv174493%_)
                           (_%rest174499%_ _%stx174494%_))
          (let* ((_%g174500174510%_ (gx#syntax-e _%rest174499%_))
                 (_%else174503174518%_
                  (lambda () (_%f174492%_ _%rest174499%_ _%r174498%_))))
            (let ((_%K174506174532%_
                   (lambda (_%rest174529%_ _%hd174530%_)
                     (_%lp174496%_
                      (_%f174492%_ _%hd174530%_ _%r174498%_)
                      _%rest174529%_)))
                  (_%K174505174523%_ (lambda () _%r174498%_)))
              (let ((_%try-match174502174526%_
                     (lambda ()
                       (if (null? _%g174500174510%_)
                           (_%K174505174523%_)
                           (_%else174503174518%_)))))
                (if (pair? _%g174500174510%_)
                    (let ((_%tl174508174537%_ (##cdr _%g174500174510%_))
                          (_%hd174507174535%_ (##car _%g174500174510%_)))
                      (let ((_%hd174540%_ _%hd174507174535%_)
                            (_%rest174542%_ _%tl174508174537%_))
                        (_%K174506174532%_ _%rest174542%_ _%hd174540%_)))
                    (_%try-match174502174526%_))))))))
    (define gx#stx-foldr
      (lambda (_%f174441%_ _%iv174442%_ _%stx174443%_)
        (if (procedure? _%f174441%_)
            '#!void
            (error '"expected procedure" _%f174441%_))
        (let _%recur174445%_ ((_%rest174447%_ _%stx174443%_))
          (let* ((_%g174448174458%_ (gx#syntax-e _%rest174447%_))
                 (_%else174451174466%_
                  (lambda () (_%f174441%_ _%rest174447%_ _%iv174442%_))))
            (let ((_%K174454174480%_
                   (lambda (_%rest174477%_ _%hd174478%_)
                     (_%f174441%_
                      _%hd174478%_
                      (_%recur174445%_ _%rest174477%_))))
                  (_%K174453174471%_ (lambda () _%iv174442%_)))
              (let ((_%try-match174450174474%_
                     (lambda ()
                       (if (null? _%g174448174458%_)
                           (_%K174453174471%_)
                           (_%else174451174466%_)))))
                (if (pair? _%g174448174458%_)
                    (let ((_%tl174456174485%_ (##cdr _%g174448174458%_))
                          (_%hd174455174483%_ (##car _%g174448174458%_)))
                      (let ((_%hd174488%_ _%hd174455174483%_)
                            (_%rest174490%_ _%tl174456174485%_))
                        (_%K174454174480%_ _%rest174490%_ _%hd174488%_)))
                    (_%try-match174450174474%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx174439%_) (gx#stx-foldl cons '() _%stx174439%_)))
    (define gx#stx-last
      (lambda (_%stx174400%_)
        (let _%lp174402%_ ((_%rest174404%_ _%stx174400%_))
          (let* ((_%g174405174413%_ (gx#syntax-e _%rest174404%_))
                 (_%else174407174421%_ (lambda () _%rest174404%_))
                 (_%K174409174427%_
                  (lambda (_%rest174424%_ _%hd174425%_)
                    (if (gx#stx-null? _%rest174424%_)
                        _%hd174425%_
                        (_%lp174402%_ _%rest174424%_)))))
            (if (pair? _%g174405174413%_)
                (let ((_%hd174410174430%_ (##car _%g174405174413%_))
                      (_%tl174411174432%_ (##cdr _%g174405174413%_)))
                  (let* ((_%hd174435%_ _%hd174410174430%_)
                         (_%rest174437%_ _%tl174411174432%_))
                    (_%K174409174427%_ _%rest174437%_ _%hd174435%_)))
                (_%else174407174421%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx174371%_)
        (let _%lp174373%_ ((_%hd174375%_ _%stx174371%_))
          (let* ((_%g174376174383%_ (gx#syntax-e _%hd174375%_))
                 (_%E174378174387%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g174376174383%_
                           '([_ . rest]))
                    '#!void))
                 (_%K174379174392%_
                  (lambda (_%rest174390%_)
                    (if (gx#stx-pair? _%rest174390%_)
                        (_%lp174373%_ _%rest174390%_)
                        _%hd174375%_))))
            (if (pair? _%g174376174383%_)
                (let* ((_%tl174381174395%_ (##cdr _%g174376174383%_))
                       (_%rest174398%_ _%tl174381174395%_))
                  (_%K174379174392%_ _%rest174398%_))
                (_%E174378174387%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx174340%_ _%k174341%_)
        (let _%lp174343%_ ((_%rest174345%_ _%stx174340%_)
                           (_%k174346%_ _%k174341%_))
          (if (fxpositive? _%k174346%_)
              (let* ((_%g174347174354%_ (gx#syntax-e _%rest174345%_))
                     (_%E174349174358%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g174347174354%_
                               '([_ . rest]))
                        '#!void))
                     (_%K174350174363%_
                      (lambda (_%rest174361%_)
                        (_%lp174343%_ _%rest174361%_ (##fx- _%k174346%_ '1)))))
                (if (pair? _%g174347174354%_)
                    (let* ((_%tl174352174366%_ (##cdr _%g174347174354%_))
                           (_%rest174369%_ _%tl174352174366%_))
                      (_%K174350174363%_ _%rest174369%_))
                    (_%E174349174358%_)))
              _%rest174345%_))))
    (define gx#stx-list-ref
      (lambda (_%stx174337%_ _%k174338%_)
        (gx#stx-car (gx#stx-list-tail _%stx174337%_ _%k174338%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx174249%_ _%key?174250%_)
        (if (procedure? _%key?174250%_)
            '#!void
            (error '"expected procedure" _%key?174250%_))
        (let _%lp174252%_ ((_%rest174254%_ _%stx174249%_))
          (let* ((_%g174255174265%_ (gx#stx-e _%rest174254%_))
                 (_%else174258174273%_ (lambda () '#f)))
            (let ((_%K174261174315%_
                   (lambda (_%rest174284%_ _%hd174285%_)
                     (if (_%key?174250%_ _%hd174285%_)
                         (let* ((_%g174286174294%_ (gx#stx-e _%rest174284%_))
                                (_%else174288174302%_ (lambda () '#f))
                                (_%K174290174307%_
                                 (lambda (_%rest174305%_)
                                   (_%lp174252%_ _%rest174305%_))))
                           (if (pair? _%g174286174294%_)
                               (let* ((_%tl174292174310%_
                                       (##cdr _%g174286174294%_))
                                      (_%rest174313%_ _%tl174292174310%_))
                                 (_%lp174252%_ _%rest174313%_))
                               (_%else174288174302%_)))
                         '#f)))
                  (_%K174260174278%_ (lambda () '#t)))
              (let ((_%try-match174257174281%_
                     (lambda ()
                       (if (null? _%g174255174265%_)
                           (_%K174260174278%_)
                           (_%else174258174273%_)))))
                (if (pair? _%g174255174265%_)
                    (let ((_%tl174263174320%_ (##cdr _%g174255174265%_))
                          (_%hd174262174318%_ (##car _%g174255174265%_)))
                      (let ((_%hd174323%_ _%hd174262174318%_)
                            (_%rest174325%_ _%tl174263174320%_))
                        (_%K174261174315%_ _%rest174325%_ _%hd174323%_)))
                    (_%try-match174257174281%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx174330%_)
        (let ((_%key?174332%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx174330%_ _%key?174332%_))))
    (define gx#stx-plist?
      (lambda _g175484_
        (let ((_g175485_ (##length _g175484_)))
          (cond ((##fx= _g175485_ 1) (apply gx#stx-plist?__0 _g175484_))
                ((##fx= _g175485_ 2) (apply gx#stx-plist?__% _g175484_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g175484_))))))
    (define gx#stx-getq__%
      (lambda (_%key174167%_ _%stx174168%_ _%key=?174169%_)
        (if (procedure? _%key=?174169%_)
            '#!void
            (error '"expected procedure" _%key=?174169%_))
        (let _%lp174171%_ ((_%rest174173%_ _%stx174168%_))
          (let* ((_%g174174174182%_ (gx#syntax-e _%rest174173%_))
                 (_%else174176174190%_ (lambda () '#f))
                 (_%K174178174224%_
                  (lambda (_%rest174193%_ _%hd174194%_)
                    (let* ((_%g174195174202%_ (gx#syntax-e _%rest174193%_))
                           (_%E174197174206%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g174195174202%_
                                     '([val . rest]))
                              '#!void))
                           (_%K174198174212%_
                            (lambda (_%rest174209%_ _%val174210%_)
                              (if (_%key=?174169%_ _%hd174194%_ _%key174167%_)
                                  _%val174210%_
                                  (_%lp174171%_ _%rest174209%_)))))
                      (if (pair? _%g174195174202%_)
                          (let ((_%hd174199174215%_ (##car _%g174195174202%_))
                                (_%tl174200174217%_ (##cdr _%g174195174202%_)))
                            (let* ((_%val174220%_ _%hd174199174215%_)
                                   (_%rest174222%_ _%tl174200174217%_))
                              (_%K174198174212%_
                               _%rest174222%_
                               _%val174220%_)))
                          (_%E174197174206%_))))))
            (if (pair? _%g174174174182%_)
                (let ((_%hd174179174227%_ (##car _%g174174174182%_))
                      (_%tl174180174229%_ (##cdr _%g174174174182%_)))
                  (let* ((_%hd174232%_ _%hd174179174227%_)
                         (_%rest174234%_ _%tl174180174229%_))
                    (_%K174178174224%_ _%rest174234%_ _%hd174232%_)))
                (_%else174176174190%_))))))
    (define gx#stx-getq__0
      (lambda (_%key174239%_ _%stx174240%_)
        (let ((_%key=?174242%_ gx#stx-eq?))
          (gx#stx-getq__% _%key174239%_ _%stx174240%_ _%key=?174242%_))))
    (define gx#stx-getq
      (lambda _g175486_
        (let ((_g175487_ (##length _g175486_)))
          (cond ((##fx= _g175487_ 2) (apply gx#stx-getq__0 _g175486_))
                ((##fx= _g175487_ 3) (apply gx#stx-getq__% _g175486_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g175486_))))))))

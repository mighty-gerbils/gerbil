(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1769384628)
  (begin
    (declare (not safe))
    (define gx#identifier-wrap::t
      (__make-class-type
       'gx#identifier-wrap::t
       'syntax
       (list gx#AST::t)
       '(marks)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#identifier-wrap? (__make-class-predicate gx#identifier-wrap::t))
    (define gx#make-identifier-wrap
      (lambda _%$args130482%_
        (apply make-instance gx#identifier-wrap::t _%$args130482%_)))
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#syntax-wrap? (__make-class-predicate gx#syntax-wrap::t))
    (define gx#make-syntax-wrap
      (lambda _%$args130479%_
        (apply make-instance gx#syntax-wrap::t _%$args130479%_)))
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#syntax-quote? (__make-class-predicate gx#syntax-quote::t))
    (define gx#make-syntax-quote
      (lambda _%$args130476%_
        (apply make-instance gx#syntax-quote::t _%$args130476%_)))
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
      (lambda (_%stx130474%_) (symbol? (gx#stx-e _%stx130474%_))))
    (define gx#identifier-quote?
      (lambda (_%stx130472%_)
        (if (##structure-direct-instance-of? _%stx130472%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx130472%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx130467%_)
        (if (##structure-direct-instance-of? _%stx130467%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx130467%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx130467%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx130462%_)
        (if (##structure-direct-instance-of? _%stx130462%_ 'gx#syntax-quote::t)
            _%stx130462%_
            (if (##structure-direct-instance-of?
                 _%stx130462%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx130462%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx130436%_)
        (if (##structure-direct-instance-of? _%stx130436%_ 'gx#syntax-wrap::t)
            (let _%lp130439%_ ((_%e130441%_
                                (##unchecked-structure-ref
                                 _%stx130436%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks130442%_
                                (cons (##unchecked-structure-ref
                                       _%stx130436%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e130441%_)
                  (let ((_%$e130445%_
                         (##type-id (##structure-type _%e130441%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e130445%_)
                        (_%lp130439%_
                         (##unchecked-structure-ref _%e130441%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e130441%_ '3 '#f '#f)
                          _%marks130442%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e130445%_)
                                (eq? 'gx#identifier-wrap::t _%$e130445%_))
                            (##unchecked-structure-ref _%e130441%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e130445%_)
                                (_%lp130439%_
                                 (##unchecked-structure-ref
                                  _%e130441%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks130442%_)
                                _%e130441%_))))
                  (if (null? _%marks130442%_)
                      _%e130441%_
                      (if (pair? _%e130441%_)
                          (cons (gx#stx-wrap
                                 (##car _%e130441%_)
                                 _%marks130442%_)
                                (gx#stx-wrap
                                 (##cdr _%e130441%_)
                                 _%marks130442%_))
                          (if (vector? _%e130441%_)
                              (vector-map
                               (lambda (_%g130453130455%_)
                                 (gx#stx-wrap
                                  _%g130453130455%_
                                  _%marks130442%_))
                               _%e130441%_)
                              (if (box? _%e130441%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e130441%_)
                                        _%marks130442%_))
                                  _%e130441%_))))))
            (if (##structure-instance-of? _%stx130436%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx130436%_ '1 '#f '#f)
                _%stx130436%_))))
    (define gx#syntax->datum
      (lambda (_%stx130429%_)
        (if (##structure-instance-of? _%stx130429%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx130429%_ '1 '#f '#f))
            (if (pair? _%stx130429%_)
                (cons (gx#syntax->datum (##car _%stx130429%_))
                      (gx#syntax->datum (##cdr _%stx130429%_)))
                (if (vector? _%stx130429%_)
                    (vector-map gx#syntax->datum _%stx130429%_)
                    (if (box? _%stx130429%_)
                        (box (gx#syntax->datum (unbox _%stx130429%_)))
                        _%stx130429%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx130363%_ _%datum130364%_ _%src130365%_ _%quote?130366%_)
        (letrec ((_%wrap-datum130368%_
                  (lambda (_%e130401%_ _%marks130402%_)
                    (_%wrap-inner130370%_
                     _%e130401%_
                     (lambda (_%g130403130405%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g130403130405%_
                        _%src130365%_
                        _%marks130402%_)))))
                 (_%wrap-quote130369%_
                  (lambda (_%e130393%_ _%ctx130394%_ _%marks130395%_)
                    (_%wrap-inner130370%_
                     _%e130393%_
                     (lambda (_%g130396130398%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g130396130398%_
                        _%src130365%_
                        _%ctx130394%_
                        _%marks130395%_)))))
                 (_%wrap-inner130370%_
                  (lambda (_%e130381%_ _%wrap-e130382%_)
                    (let _%recur130384%_ ((_%e130386%_ _%e130381%_))
                      (if (symbol? _%e130386%_)
                          (_%wrap-e130382%_ _%e130386%_)
                          (if (pair? _%e130386%_)
                              (cons (_%recur130384%_ (##car _%e130386%_))
                                    (_%recur130384%_ (##cdr _%e130386%_)))
                              (if (vector? _%e130386%_)
                                  (vector-map _%recur130384%_ _%e130386%_)
                                  (if (box? _%e130386%_)
                                      (box (_%recur130384%_
                                            (unbox _%e130386%_)))
                                      _%e130386%_)))))))
                 (_%wrap-outer130371%_
                  (lambda (_%e130379%_)
                    (if (##structure-instance-of? _%e130379%_ 'gerbil#AST::t)
                        _%e130379%_
                        (##structure gx#AST::t _%e130379%_ _%src130365%_)))))
          (if (##structure-instance-of? _%datum130364%_ 'gerbil#AST::t)
              _%datum130364%_
              (if (not _%stx130363%_)
                  (##structure gx#AST::t _%datum130364%_ _%src130365%_)
                  (if (gx#identifier? _%stx130363%_)
                      (let ((_%stx130376%_ (gx#stx-unwrap__0 _%stx130363%_)))
                        (_%wrap-outer130371%_
                         (if (##structure-direct-instance-of?
                              _%stx130376%_
                              'gx#syntax-quote::t)
                             (if _%quote?130366%_
                                 (_%wrap-quote130369%_
                                  _%datum130364%_
                                  (##unchecked-structure-ref
                                   _%stx130376%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx130376%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum130368%_
                                  _%datum130364%_
                                  (##unchecked-structure-ref
                                   _%stx130376%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum130368%_
                              _%datum130364%_
                              (##unchecked-structure-ref
                               _%stx130376%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx130363%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx130411%_ _%datum130412%_)
        (let* ((_%src130414%_ '#f) (_%quote?130416%_ '#t))
          (gx#datum->syntax__%
           _%stx130411%_
           _%datum130412%_
           _%src130414%_
           _%quote?130416%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx130418%_ _%datum130419%_ _%src130420%_)
        (let ((_%quote?130422%_ '#t))
          (gx#datum->syntax__%
           _%stx130418%_
           _%datum130419%_
           _%src130420%_
           _%quote?130422%_))))
    (define gx#datum->syntax
      (lambda _g130562_
        (let ((_g130563_ (##length _g130562_)))
          (cond ((##fx= _g130563_ 2) (apply gx#datum->syntax__0 _g130562_))
                ((##fx= _g130563_ 3) (apply gx#datum->syntax__1 _g130562_))
                ((##fx= _g130563_ 4) (apply gx#datum->syntax__% _g130562_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g130562_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx130329%_ _%marks130330%_)
        (let _%lp130332%_ ((_%e130334%_ _%stx130329%_)
                           (_%marks130335%_ _%marks130330%_)
                           (_%src130336%_ (gx#stx-source _%stx130329%_)))
          (if (##structure-direct-instance-of? _%e130334%_ 'gx#syntax-wrap::t)
              (_%lp130332%_
               (##unchecked-structure-ref _%e130334%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e130334%_ '3 '#f '#f)
                _%marks130335%_)
               (##unchecked-structure-ref _%e130334%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e130334%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks130335%_)
                      _%e130334%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e130334%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e130334%_ '2 '#f '#f)
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e130334%_ '3 '#f '#f)
                        _%marks130335%_)))
                  (if (##structure-direct-instance-of?
                       _%e130334%_
                       'gx#syntax-quote::t)
                      _%e130334%_
                      (if (##structure-instance-of? _%e130334%_ 'gerbil#AST::t)
                          (_%lp130332%_
                           (##unchecked-structure-ref _%e130334%_ '1 '#f '#f)
                           _%marks130335%_
                           (##unchecked-structure-ref _%e130334%_ '2 '#f '#f))
                          (if (symbol? _%e130334%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e130334%_
                               _%src130336%_
                               (reverse _%marks130335%_))
                              (if (null? _%marks130335%_)
                                  _%e130334%_
                                  (if (pair? _%e130334%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e130334%_)
                                             _%marks130335%_)
                                            (gx#stx-wrap
                                             (##cdr _%e130334%_)
                                             _%marks130335%_))
                                      (if (vector? _%e130334%_)
                                          (vector-map
                                           (lambda (_%g130345130347%_)
                                             (gx#stx-wrap
                                              _%g130345130347%_
                                              _%marks130335%_))
                                           _%e130334%_)
                                          (if (box? _%e130334%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e130334%_)
                                                    _%marks130335%_))
                                              _%e130334%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx130355%_)
        (let ((_%marks130357%_ '()))
          (gx#stx-unwrap__% _%stx130355%_ _%marks130357%_))))
    (define gx#stx-unwrap
      (lambda _g130564_
        (let ((_g130565_ (##length _g130564_)))
          (cond ((##fx= _g130565_ 1) (apply gx#stx-unwrap__0 _g130564_))
                ((##fx= _g130565_ 2) (apply gx#stx-unwrap__% _g130564_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g130564_))))))
    (define gx#stx-wrap
      (lambda (_%stx130322%_ _%marks130323%_)
        (__foldl1
         (lambda (_%mark130325%_ _%stx130326%_)
           (gx#stx-apply-mark _%stx130326%_ _%mark130325%_))
         _%stx130322%_
         _%marks130323%_)))
    (define gx#stx-rewrap
      (lambda (_%stx130316%_ _%marks130317%_)
        (__foldr1
         (lambda (_%mark130319%_ _%stx130320%_)
           (gx#stx-apply-mark _%stx130320%_ _%mark130319%_))
         _%stx130316%_
         _%marks130317%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx130310%_ _%mark130311%_)
        (if (##structure-direct-instance-of? _%stx130310%_ 'gx#syntax-quote::t)
            _%stx130310%_
            (if (and (##structure-direct-instance-of?
                      _%stx130310%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark130311%_
                          (##unchecked-structure-ref
                           _%stx130310%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx130310%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx130310%_
                 (gx#stx-source _%stx130310%_)
                 _%mark130311%_)))))
    (define gx#apply-mark
      (lambda (_%mark130274%_ _%marks130275%_)
        (let* ((_%marks130276130284%_ _%marks130275%_)
               (_%else130278130292%_
                (lambda () (cons _%mark130274%_ _%marks130275%_)))
               (_%K130280130298%_
                (lambda (_%rest130295%_ _%hd130296%_)
                  (if (eq? _%mark130274%_ _%hd130296%_)
                      _%rest130295%_
                      (cons _%mark130274%_ _%marks130275%_)))))
          (if (pair? _%marks130276130284%_)
              (let ((_%hd130281130301%_ (##car _%marks130276130284%_))
                    (_%tl130282130303%_ (##cdr _%marks130276130284%_)))
                (let* ((_%hd130306%_ _%hd130281130301%_)
                       (_%rest130308%_ _%tl130282130303%_))
                  (_%K130280130298%_ _%rest130308%_ _%hd130306%_)))
              (_%else130278130292%_)))))
    (define gx#stx-e
      (lambda (_%stx130269%_)
        (if (##structure-direct-instance-of? _%stx130269%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx130269%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx130269%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx130269%_ '1 '#f '#f)
                _%stx130269%_))))
    (define gx#stx-source
      (lambda (_%stx130267%_)
        (if (##structure-instance-of? _%stx130267%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx130267%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx130261%_ _%src130262%_)
        (if (or (##structure-instance-of? _%stx130261%_ 'gerbil#AST::t)
                (not _%src130262%_))
            _%stx130261%_
            (##structure gx#AST::t _%stx130261%_ _%src130262%_))))
    (define gx#stx-datum?
      (lambda (_%stx130259%_) (gx#self-quoting? (gx#stx-e _%stx130259%_))))
    (define gx#self-quoting?
      (lambda (_%x130242%_)
        (let ((_%$e130244%_ (immediate? _%x130242%_)))
          (if _%$e130244%_
              _%$e130244%_
              (let ((_%$e130247%_ (number? _%x130242%_)))
                (if _%$e130247%_
                    _%$e130247%_
                    (let ((_%$e130250%_ (keyword? _%x130242%_)))
                      (if _%$e130250%_
                          _%$e130250%_
                          (let ((_%$e130253%_ (string? _%x130242%_)))
                            (if _%$e130253%_
                                _%$e130253%_
                                (let ((_%$e130256%_ (vector? _%x130242%_)))
                                  (if _%$e130256%_
                                      _%$e130256%_
                                      (u8vector? _%x130242%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e130240%_) (boolean? (gx#stx-e _%e130240%_))))
    (define gx#stx-keyword?
      (lambda (_%e130238%_) (keyword? (gx#stx-e _%e130238%_))))
    (define gx#stx-char? (lambda (_%e130236%_) (char? (gx#stx-e _%e130236%_))))
    (define gx#stx-number?
      (lambda (_%e130234%_) (number? (gx#stx-e _%e130234%_))))
    (define gx#stx-fixnum?
      (lambda (_%e130232%_) (fixnum? (gx#stx-e _%e130232%_))))
    (define gx#stx-string?
      (lambda (_%e130230%_) (string? (gx#stx-e _%e130230%_))))
    (define gx#stx-null? (lambda (_%e130228%_) (null? (gx#stx-e _%e130228%_))))
    (define gx#stx-pair? (lambda (_%e130226%_) (pair? (gx#stx-e _%e130226%_))))
    (define gx#stx-list?
      (lambda (_%e130188%_)
        (let* ((_%g130189130198%_ (gx#stx-e _%e130188%_))
               (_%E130192130202%_
                (lambda ()
                  (error '"No clause matching"
                         _%g130189130198%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K130194130218%_
                 (lambda (_%rest130216%_) (gx#stx-list? _%rest130216%_)))
                (_%K130193130208%_
                 (lambda (_%tail130206%_) (null? _%tail130206%_))))
            (if (pair? _%g130189130198%_)
                (let* ((_%tl130196130221%_ (##cdr _%g130189130198%_))
                       (_%rest130224%_ _%tl130196130221%_))
                  (gx#stx-list? _%rest130224%_))
                (let ((_%tail130211%_ _%g130189130198%_))
                  (null? _%tail130211%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e130181%_)
        (let* ((_%e130183%_ (gx#stx-e _%e130181%_))
               (_%$e130185%_ (pair? _%e130183%_)))
          (if _%$e130185%_ _%$e130185%_ (null? _%e130183%_)))))
    (define gx#stx-vector?
      (lambda (_%e130179%_) (vector? (gx#stx-e _%e130179%_))))
    (define gx#stx-box? (lambda (_%e130177%_) (box? (gx#stx-e _%e130177%_))))
    (define gx#stx-eq?
      (lambda (_%x130174%_ _%y130175%_)
        (eq? (gx#stx-e _%x130174%_) (gx#stx-e _%y130175%_))))
    (define gx#stx-eqv?
      (lambda (_%x130171%_ _%y130172%_)
        (eqv? (gx#stx-e _%x130171%_) (gx#stx-e _%y130172%_))))
    (define gx#stx-equal?
      (lambda (_%x130168%_ _%y130169%_)
        (equal? (gx#stx-e _%x130168%_) (gx#stx-e _%y130169%_))))
    (define gx#stx-false? (lambda (_%x130166%_) (not (gx#stx-e _%x130166%_))))
    (define gx#stx-identifier
      (lambda (_%template130163%_ . _%args130164%_)
        (gx#datum->syntax__1
         _%template130163%_
         (apply make-symbol (gx#syntax->datum _%args130164%_))
         (gx#stx-source _%template130163%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx130161%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx130161%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx130156%_)
        (if (##structure-direct-instance-of?
             _%stx130156%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx130156%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx130156%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx130156%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx130156%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx130152%_)
        (let ((_%stx130154%_ (gx#stx-unwrap__0 _%stx130152%_)))
          (if (gx#identifier-quote? _%stx130154%_)
              (##unchecked-structure-ref _%stx130154%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx130107%_)
        (let* ((_%g130108130118%_ (gx#stx-e _%stx130107%_))
               (_%else130111130126%_ (lambda () '#f)))
          (let ((_%K130114130140%_
                 (lambda (_%rest130137%_ _%hd130138%_)
                   (if (gx#identifier? _%hd130138%_)
                       (gx#identifier-list? _%rest130137%_)
                       '#f)))
                (_%K130113130131%_ (lambda () '#t)))
            (let ((_%try-match130110130134%_
                   (lambda ()
                     (if (null? _%g130108130118%_)
                         (_%K130113130131%_)
                         (_%else130111130126%_)))))
              (if (pair? _%g130108130118%_)
                  (let ((_%tl130116130145%_ (##cdr _%g130108130118%_))
                        (_%hd130115130143%_ (##car _%g130108130118%_)))
                    (let ((_%hd130148%_ _%hd130115130143%_)
                          (_%rest130150%_ _%tl130116130145%_))
                      (_%K130114130140%_ _%rest130150%_ _%hd130148%_)))
                  (_%try-match130110130134%_)))))))
    (define gx#genident__%
      (lambda (_%e130087%_ _%src130088%_)
        (gx#datum->syntax__1
         (if (gx#identifier? _%src130088%_) _%src130088%_ '#f)
         (##string->symbol
          (##symbol->string
           (##gensym
            (let ((_%e130090%_ (gx#stx-e _%e130087%_)))
              (if (symbol? _%e130090%_) _%e130090%_ 'g)))))
         _%src130088%_)))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e130096%_ 'g) (_%src130098%_ '#f))
          (gx#genident__% _%e130096%_ _%src130098%_))))
    (define gx#genident__1
      (lambda (_%e130100%_)
        (let ((_%src130102%_ '#f))
          (gx#genident__% _%e130100%_ _%src130102%_))))
    (define gx#genident
      (lambda _g130566_
        (let ((_g130567_ (##length _g130566_)))
          (cond ((##fx= _g130567_ 0) (apply gx#genident__0 _g130566_))
                ((##fx= _g130567_ 1) (apply gx#genident__1 _g130566_))
                ((##fx= _g130567_ 2) (apply gx#genident__% _g130566_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g130566_))))))
    (define gx#gentemps
      (lambda (_%stx-lst130082%_)
        (gx#stx-map1
         (lambda (_%x130084%_) (gx#genident__% _%x130084%_ _%x130084%_))
         _%stx-lst130082%_)))
    (define gx#syntax->list
      (lambda (_%stx130080%_) (gx#stx-map1 values _%stx130080%_)))
    (define gx#stx-car
      (lambda (_%stx130077%_)
        (declare (safe))
        (car (gx#syntax-e _%stx130077%_))))
    (define gx#stx-cdr
      (lambda (_%stx130074%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx130074%_))))
    (define gx#stx-length
      (lambda (_%stx130039%_)
        (let _%lp130041%_ ((_%rest130043%_ _%stx130039%_) (_%n130044%_ '0))
          (let* ((_%g130045130053%_ (gx#stx-e _%rest130043%_))
                 (_%else130047130061%_ (lambda () _%n130044%_))
                 (_%K130049130066%_
                  (lambda (_%rest130064%_)
                    (_%lp130041%_ _%rest130064%_ (##fx+ _%n130044%_ '1)))))
            (if (pair? _%g130045130053%_)
                (let* ((_%tl130051130069%_ (##cdr _%g130045130053%_))
                       (_%rest130072%_ _%tl130051130069%_))
                  (_%K130049130066%_ _%rest130072%_))
                (_%else130047130061%_))))))
    (define gx#stx-for-each
      (lambda _g130568_
        (let ((_g130569_ (##length _g130568_)))
          (cond ((##fx= _g130569_ 2) (apply gx#stx-for-each1 _g130568_))
                ((##fx= _g130569_ 3) (apply gx#stx-for-each2 _g130568_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g130568_))))))
    (define gx#stx-for-each1
      (lambda (_%f129982%_ _%stx129983%_)
        (if (procedure? _%f129982%_)
            '#!void
            (error '"expected procedure" _%f129982%_))
        (let _%lp129985%_ ((_%rest129987%_ _%stx129983%_))
          (let* ((_%g129988129998%_ (gx#syntax-e _%rest129987%_))
                 (_%else129991130006%_
                  (lambda () (_%f129982%_ _%rest129987%_))))
            (let ((_%K129994130020%_
                   (lambda (_%rest130017%_ _%hd130018%_)
                     (_%f129982%_ _%hd130018%_)
                     (_%lp129985%_ _%rest130017%_)))
                  (_%K129993130011%_ (lambda () '#!void)))
              (let ((_%try-match129990130014%_
                     (lambda ()
                       (if (null? _%g129988129998%_)
                           (_%K129993130011%_)
                           (_%else129991130006%_)))))
                (if (pair? _%g129988129998%_)
                    (let ((_%tl129996130025%_ (##cdr _%g129988129998%_))
                          (_%hd129995130023%_ (##car _%g129988129998%_)))
                      (let ((_%hd130028%_ _%hd129995130023%_)
                            (_%rest130030%_ _%tl129996130025%_))
                        (_%K129994130020%_ _%rest130030%_ _%hd130028%_)))
                    (_%try-match129990130014%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f129887%_ _%xstx129888%_ _%ystx129889%_)
        (if (procedure? _%f129887%_)
            '#!void
            (error '"expected procedure" _%f129887%_))
        (let _%lp129891%_ ((_%xrest129893%_ _%xstx129888%_)
                           (_%yrest129894%_ _%ystx129889%_))
          (let* ((_%g129895129905%_ (gx#syntax-e _%xrest129893%_))
                 (_%else129898129913%_ (lambda () '#!void)))
            (let ((_%K129901129970%_
                   (lambda (_%xrest129939%_ _%xhd129940%_)
                     (let* ((_%g129941129948%_ (gx#syntax-e _%yrest129894%_))
                            (_%E129943129952%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g129941129948%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K129944129958%_
                             (lambda (_%yrest129955%_ _%yhd129956%_)
                               (_%f129887%_ _%xhd129940%_ _%yhd129956%_)
                               (_%lp129891%_
                                _%xrest129939%_
                                _%yrest129955%_))))
                       (if (pair? _%g129941129948%_)
                           (let ((_%hd129945129961%_ (##car _%g129941129948%_))
                                 (_%tl129946129963%_
                                  (##cdr _%g129941129948%_)))
                             (let* ((_%yhd129966%_ _%hd129945129961%_)
                                    (_%yrest129968%_ _%tl129946129963%_))
                               (_%K129944129958%_
                                _%yrest129968%_
                                _%yhd129966%_)))
                           (_%E129943129952%_)))))
                  (_%K129900129933%_
                   (lambda ()
                     (let* ((_%yrest129917129922%_ _%yrest129894%_)
                            (_%E129919129926%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest129917129922%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K129920129930%_
                             (lambda ()
                               (_%f129887%_ _%xrest129893%_ _%yrest129894%_))))
                       (if (gx#stx-null? _%yrest129917129922%_)
                           (_%E129919129926%_)
                           (_%K129920129930%_))))))
              (let ((_%try-match129897129936%_
                     (lambda ()
                       (if (null? _%g129895129905%_)
                           (_%else129898129913%_)
                           (_%K129900129933%_)))))
                (if (pair? _%g129895129905%_)
                    (let ((_%tl129903129975%_ (##cdr _%g129895129905%_))
                          (_%hd129902129973%_ (##car _%g129895129905%_)))
                      (let ((_%xhd129978%_ _%hd129902129973%_)
                            (_%xrest129980%_ _%tl129903129975%_))
                        (_%K129901129970%_ _%xrest129980%_ _%xhd129978%_)))
                    (_%try-match129897129936%_))))))))
    (define gx#stx-map
      (lambda _g130570_
        (let ((_g130571_ (##length _g130570_)))
          (cond ((##fx= _g130571_ 2) (apply gx#stx-map1 _g130570_))
                ((##fx= _g130571_ 3) (apply gx#stx-map2 _g130570_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g130570_))))))
    (define gx#stx-map1
      (lambda (_%f129830%_ _%stx129831%_)
        (if (procedure? _%f129830%_)
            '#!void
            (error '"expected procedure" _%f129830%_))
        (let _%recur129833%_ ((_%rest129835%_ _%stx129831%_))
          (let* ((_%g129836129846%_ (gx#syntax-e _%rest129835%_))
                 (_%else129839129854%_
                  (lambda () (_%f129830%_ _%rest129835%_))))
            (let ((_%K129842129868%_
                   (lambda (_%rest129865%_ _%hd129866%_)
                     (cons (_%f129830%_ _%hd129866%_)
                           (_%recur129833%_ _%rest129865%_))))
                  (_%K129841129859%_ (lambda () '())))
              (let ((_%try-match129838129862%_
                     (lambda ()
                       (if (null? _%g129836129846%_)
                           (_%K129841129859%_)
                           (_%else129839129854%_)))))
                (if (pair? _%g129836129846%_)
                    (let ((_%tl129844129873%_ (##cdr _%g129836129846%_))
                          (_%hd129843129871%_ (##car _%g129836129846%_)))
                      (let ((_%hd129876%_ _%hd129843129871%_)
                            (_%rest129878%_ _%tl129844129873%_))
                        (_%K129842129868%_ _%rest129878%_ _%hd129876%_)))
                    (_%try-match129838129862%_))))))))
    (define gx#stx-map2
      (lambda (_%f129735%_ _%xstx129736%_ _%ystx129737%_)
        (if (procedure? _%f129735%_)
            '#!void
            (error '"expected procedure" _%f129735%_))
        (let _%recur129739%_ ((_%xrest129741%_ _%xstx129736%_)
                              (_%yrest129742%_ _%ystx129737%_))
          (let* ((_%g129743129753%_ (gx#syntax-e _%xrest129741%_))
                 (_%else129746129761%_ (lambda () '())))
            (let ((_%K129749129818%_
                   (lambda (_%xrest129787%_ _%xhd129788%_)
                     (let* ((_%g129789129796%_ (gx#syntax-e _%yrest129742%_))
                            (_%E129791129800%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g129789129796%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K129792129806%_
                             (lambda (_%yrest129803%_ _%yhd129804%_)
                               (cons (_%f129735%_ _%xhd129788%_ _%yhd129804%_)
                                     (_%recur129739%_
                                      _%xrest129787%_
                                      _%yrest129803%_)))))
                       (if (pair? _%g129789129796%_)
                           (let ((_%hd129793129809%_ (##car _%g129789129796%_))
                                 (_%tl129794129811%_
                                  (##cdr _%g129789129796%_)))
                             (let* ((_%yhd129814%_ _%hd129793129809%_)
                                    (_%yrest129816%_ _%tl129794129811%_))
                               (_%K129792129806%_
                                _%yrest129816%_
                                _%yhd129814%_)))
                           (_%E129791129800%_)))))
                  (_%K129748129781%_
                   (lambda ()
                     (let* ((_%yrest129765129770%_ _%yrest129742%_)
                            (_%E129767129774%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest129765129770%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K129768129778%_
                             (lambda ()
                               (_%f129735%_ _%xrest129741%_ _%yrest129742%_))))
                       (if (gx#stx-null? _%yrest129765129770%_)
                           (_%E129767129774%_)
                           (_%K129768129778%_))))))
              (let ((_%try-match129745129784%_
                     (lambda ()
                       (if (null? _%g129743129753%_)
                           (_%else129746129761%_)
                           (_%K129748129781%_)))))
                (if (pair? _%g129743129753%_)
                    (let ((_%tl129751129823%_ (##cdr _%g129743129753%_))
                          (_%hd129750129821%_ (##car _%g129743129753%_)))
                      (let ((_%xhd129826%_ _%hd129750129821%_)
                            (_%xrest129828%_ _%tl129751129823%_))
                        (_%K129749129818%_ _%xrest129828%_ _%xhd129826%_)))
                    (_%try-match129745129784%_))))))))
    (define gx#stx-andmap
      (lambda (_%f129685%_ _%stx129686%_)
        (if (procedure? _%f129685%_)
            '#!void
            (error '"expected procedure" _%f129685%_))
        (let _%lp129688%_ ((_%rest129690%_ _%stx129686%_))
          (let* ((_%g129691129701%_ (gx#syntax-e _%rest129690%_))
                 (_%else129694129709%_
                  (lambda () (_%f129685%_ _%rest129690%_))))
            (let ((_%K129697129723%_
                   (lambda (_%rest129720%_ _%hd129721%_)
                     (if (_%f129685%_ _%hd129721%_)
                         (_%lp129688%_ _%rest129720%_)
                         '#f)))
                  (_%K129696129714%_ (lambda () '#t)))
              (let ((_%try-match129693129717%_
                     (lambda ()
                       (if (null? _%g129691129701%_)
                           (_%K129696129714%_)
                           (_%else129694129709%_)))))
                (if (pair? _%g129691129701%_)
                    (let ((_%tl129699129728%_ (##cdr _%g129691129701%_))
                          (_%hd129698129726%_ (##car _%g129691129701%_)))
                      (let ((_%hd129731%_ _%hd129698129726%_)
                            (_%rest129733%_ _%tl129699129728%_))
                        (_%K129697129723%_ _%rest129733%_ _%hd129731%_)))
                    (_%try-match129693129717%_))))))))
    (define gx#stx-ormap
      (lambda (_%f129632%_ _%stx129633%_)
        (if (procedure? _%f129632%_)
            '#!void
            (error '"expected procedure" _%f129632%_))
        (let _%lp129635%_ ((_%rest129637%_ _%stx129633%_))
          (let* ((_%g129638129648%_ (gx#syntax-e _%rest129637%_))
                 (_%else129641129656%_
                  (lambda () (_%f129632%_ _%rest129637%_))))
            (let ((_%K129644129673%_
                   (lambda (_%rest129667%_ _%hd129668%_)
                     (let ((_%$e129670%_ (_%f129632%_ _%hd129668%_)))
                       (if _%$e129670%_
                           _%$e129670%_
                           (_%lp129635%_ _%rest129667%_)))))
                  (_%K129643129661%_ (lambda () '#f)))
              (let ((_%try-match129640129664%_
                     (lambda ()
                       (if (null? _%g129638129648%_)
                           (_%K129643129661%_)
                           (_%else129641129656%_)))))
                (if (pair? _%g129638129648%_)
                    (let ((_%tl129646129678%_ (##cdr _%g129638129648%_))
                          (_%hd129645129676%_ (##car _%g129638129648%_)))
                      (let ((_%hd129681%_ _%hd129645129676%_)
                            (_%rest129683%_ _%tl129646129678%_))
                        (_%K129644129673%_ _%rest129683%_ _%hd129681%_)))
                    (_%try-match129640129664%_))))))))
    (define gx#stx-foldl
      (lambda (_%f129580%_ _%iv129581%_ _%stx129582%_)
        (if (procedure? _%f129580%_)
            '#!void
            (error '"expected procedure" _%f129580%_))
        (let _%lp129584%_ ((_%r129586%_ _%iv129581%_)
                           (_%rest129587%_ _%stx129582%_))
          (let* ((_%g129588129598%_ (gx#syntax-e _%rest129587%_))
                 (_%else129591129606%_
                  (lambda () (_%f129580%_ _%rest129587%_ _%r129586%_))))
            (let ((_%K129594129620%_
                   (lambda (_%rest129617%_ _%hd129618%_)
                     (_%lp129584%_
                      (_%f129580%_ _%hd129618%_ _%r129586%_)
                      _%rest129617%_)))
                  (_%K129593129611%_ (lambda () _%r129586%_)))
              (let ((_%try-match129590129614%_
                     (lambda ()
                       (if (null? _%g129588129598%_)
                           (_%K129593129611%_)
                           (_%else129591129606%_)))))
                (if (pair? _%g129588129598%_)
                    (let ((_%tl129596129625%_ (##cdr _%g129588129598%_))
                          (_%hd129595129623%_ (##car _%g129588129598%_)))
                      (let ((_%hd129628%_ _%hd129595129623%_)
                            (_%rest129630%_ _%tl129596129625%_))
                        (_%K129594129620%_ _%rest129630%_ _%hd129628%_)))
                    (_%try-match129590129614%_))))))))
    (define gx#stx-foldr
      (lambda (_%f129529%_ _%iv129530%_ _%stx129531%_)
        (if (procedure? _%f129529%_)
            '#!void
            (error '"expected procedure" _%f129529%_))
        (let _%recur129533%_ ((_%rest129535%_ _%stx129531%_))
          (let* ((_%g129536129546%_ (gx#syntax-e _%rest129535%_))
                 (_%else129539129554%_
                  (lambda () (_%f129529%_ _%rest129535%_ _%iv129530%_))))
            (let ((_%K129542129568%_
                   (lambda (_%rest129565%_ _%hd129566%_)
                     (_%f129529%_
                      _%hd129566%_
                      (_%recur129533%_ _%rest129565%_))))
                  (_%K129541129559%_ (lambda () _%iv129530%_)))
              (let ((_%try-match129538129562%_
                     (lambda ()
                       (if (null? _%g129536129546%_)
                           (_%K129541129559%_)
                           (_%else129539129554%_)))))
                (if (pair? _%g129536129546%_)
                    (let ((_%tl129544129573%_ (##cdr _%g129536129546%_))
                          (_%hd129543129571%_ (##car _%g129536129546%_)))
                      (let ((_%hd129576%_ _%hd129543129571%_)
                            (_%rest129578%_ _%tl129544129573%_))
                        (_%K129542129568%_ _%rest129578%_ _%hd129576%_)))
                    (_%try-match129538129562%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx129527%_) (gx#stx-foldl cons '() _%stx129527%_)))
    (define gx#stx-last
      (lambda (_%stx129488%_)
        (let _%lp129490%_ ((_%rest129492%_ _%stx129488%_))
          (let* ((_%g129493129501%_ (gx#syntax-e _%rest129492%_))
                 (_%else129495129509%_ (lambda () _%rest129492%_))
                 (_%K129497129515%_
                  (lambda (_%rest129512%_ _%hd129513%_)
                    (if (gx#stx-null? _%rest129512%_)
                        _%hd129513%_
                        (_%lp129490%_ _%rest129512%_)))))
            (if (pair? _%g129493129501%_)
                (let ((_%hd129498129518%_ (##car _%g129493129501%_))
                      (_%tl129499129520%_ (##cdr _%g129493129501%_)))
                  (let* ((_%hd129523%_ _%hd129498129518%_)
                         (_%rest129525%_ _%tl129499129520%_))
                    (_%K129497129515%_ _%rest129525%_ _%hd129523%_)))
                (_%else129495129509%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx129459%_)
        (let _%lp129461%_ ((_%hd129463%_ _%stx129459%_))
          (let* ((_%g129464129471%_ (gx#syntax-e _%hd129463%_))
                 (_%E129466129475%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g129464129471%_
                           '([_ . rest]))
                    '#!void))
                 (_%K129467129480%_
                  (lambda (_%rest129478%_)
                    (if (gx#stx-pair? _%rest129478%_)
                        (_%lp129461%_ _%rest129478%_)
                        _%hd129463%_))))
            (if (pair? _%g129464129471%_)
                (let* ((_%tl129469129483%_ (##cdr _%g129464129471%_))
                       (_%rest129486%_ _%tl129469129483%_))
                  (_%K129467129480%_ _%rest129486%_))
                (_%E129466129475%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx129428%_ _%k129429%_)
        (let _%lp129431%_ ((_%rest129433%_ _%stx129428%_)
                           (_%k129434%_ _%k129429%_))
          (if (fxpositive? _%k129434%_)
              (let* ((_%g129435129442%_ (gx#syntax-e _%rest129433%_))
                     (_%E129437129446%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g129435129442%_
                               '([_ . rest]))
                        '#!void))
                     (_%K129438129451%_
                      (lambda (_%rest129449%_)
                        (_%lp129431%_ _%rest129449%_ (##fx- _%k129434%_ '1)))))
                (if (pair? _%g129435129442%_)
                    (let* ((_%tl129440129454%_ (##cdr _%g129435129442%_))
                           (_%rest129457%_ _%tl129440129454%_))
                      (_%K129438129451%_ _%rest129457%_))
                    (_%E129437129446%_)))
              _%rest129433%_))))
    (define gx#stx-list-ref
      (lambda (_%stx129425%_ _%k129426%_)
        (gx#stx-car (gx#stx-list-tail _%stx129425%_ _%k129426%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx129337%_ _%key?129338%_)
        (if (procedure? _%key?129338%_)
            '#!void
            (error '"expected procedure" _%key?129338%_))
        (let _%lp129340%_ ((_%rest129342%_ _%stx129337%_))
          (let* ((_%g129343129353%_ (gx#stx-e _%rest129342%_))
                 (_%else129346129361%_ (lambda () '#f)))
            (let ((_%K129349129403%_
                   (lambda (_%rest129372%_ _%hd129373%_)
                     (if (_%key?129338%_ _%hd129373%_)
                         (let* ((_%g129374129382%_ (gx#stx-e _%rest129372%_))
                                (_%else129376129390%_ (lambda () '#f))
                                (_%K129378129395%_
                                 (lambda (_%rest129393%_)
                                   (_%lp129340%_ _%rest129393%_))))
                           (if (pair? _%g129374129382%_)
                               (let* ((_%tl129380129398%_
                                       (##cdr _%g129374129382%_))
                                      (_%rest129401%_ _%tl129380129398%_))
                                 (_%lp129340%_ _%rest129401%_))
                               (_%else129376129390%_)))
                         '#f)))
                  (_%K129348129366%_ (lambda () '#t)))
              (let ((_%try-match129345129369%_
                     (lambda ()
                       (if (null? _%g129343129353%_)
                           (_%K129348129366%_)
                           (_%else129346129361%_)))))
                (if (pair? _%g129343129353%_)
                    (let ((_%tl129351129408%_ (##cdr _%g129343129353%_))
                          (_%hd129350129406%_ (##car _%g129343129353%_)))
                      (let ((_%hd129411%_ _%hd129350129406%_)
                            (_%rest129413%_ _%tl129351129408%_))
                        (_%K129349129403%_ _%rest129413%_ _%hd129411%_)))
                    (_%try-match129345129369%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx129418%_)
        (let ((_%key?129420%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx129418%_ _%key?129420%_))))
    (define gx#stx-plist?
      (lambda _g130572_
        (let ((_g130573_ (##length _g130572_)))
          (cond ((##fx= _g130573_ 1) (apply gx#stx-plist?__0 _g130572_))
                ((##fx= _g130573_ 2) (apply gx#stx-plist?__% _g130572_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g130572_))))))
    (define gx#stx-getq__%
      (lambda (_%key129255%_ _%stx129256%_ _%key=?129257%_)
        (if (procedure? _%key=?129257%_)
            '#!void
            (error '"expected procedure" _%key=?129257%_))
        (let _%lp129259%_ ((_%rest129261%_ _%stx129256%_))
          (let* ((_%g129262129270%_ (gx#syntax-e _%rest129261%_))
                 (_%else129264129278%_ (lambda () '#f))
                 (_%K129266129312%_
                  (lambda (_%rest129281%_ _%hd129282%_)
                    (let* ((_%g129283129290%_ (gx#syntax-e _%rest129281%_))
                           (_%E129285129294%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g129283129290%_
                                     '([val . rest]))
                              '#!void))
                           (_%K129286129300%_
                            (lambda (_%rest129297%_ _%val129298%_)
                              (if (_%key=?129257%_ _%hd129282%_ _%key129255%_)
                                  _%val129298%_
                                  (_%lp129259%_ _%rest129297%_)))))
                      (if (pair? _%g129283129290%_)
                          (let ((_%hd129287129303%_ (##car _%g129283129290%_))
                                (_%tl129288129305%_ (##cdr _%g129283129290%_)))
                            (let* ((_%val129308%_ _%hd129287129303%_)
                                   (_%rest129310%_ _%tl129288129305%_))
                              (_%K129286129300%_
                               _%rest129310%_
                               _%val129308%_)))
                          (_%E129285129294%_))))))
            (if (pair? _%g129262129270%_)
                (let ((_%hd129267129315%_ (##car _%g129262129270%_))
                      (_%tl129268129317%_ (##cdr _%g129262129270%_)))
                  (let* ((_%hd129320%_ _%hd129267129315%_)
                         (_%rest129322%_ _%tl129268129317%_))
                    (_%K129266129312%_ _%rest129322%_ _%hd129320%_)))
                (_%else129264129278%_))))))
    (define gx#stx-getq__0
      (lambda (_%key129327%_ _%stx129328%_)
        (let ((_%key=?129330%_ gx#stx-eq?))
          (gx#stx-getq__% _%key129327%_ _%stx129328%_ _%key=?129330%_))))
    (define gx#stx-getq
      (lambda _g130574_
        (let ((_g130575_ (##length _g130574_)))
          (cond ((##fx= _g130575_ 2) (apply gx#stx-getq__0 _g130574_))
                ((##fx= _g130575_ 3) (apply gx#stx-getq__% _g130574_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g130574_))))))))

(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1783878476)
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
      (lambda _%$args179524%_
        (apply make-instance gx#identifier-wrap::t _%$args179524%_)))
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
      (lambda _%$args179521%_
        (apply make-instance gx#syntax-wrap::t _%$args179521%_)))
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
      (lambda _%$args179518%_
        (apply make-instance gx#syntax-quote::t _%$args179518%_)))
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
      (lambda (_%stx179516%_) (symbol? (gx#stx-e _%stx179516%_))))
    (define gx#identifier-quote?
      (lambda (_%stx179514%_)
        (if (##structure-direct-instance-of? _%stx179514%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx179514%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx179509%_)
        (if (##structure-direct-instance-of? _%stx179509%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx179509%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx179509%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx179504%_)
        (if (##structure-direct-instance-of? _%stx179504%_ 'gx#syntax-quote::t)
            _%stx179504%_
            (if (##structure-direct-instance-of?
                 _%stx179504%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx179504%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx179478%_)
        (if (##structure-direct-instance-of? _%stx179478%_ 'gx#syntax-wrap::t)
            (let _%lp179481%_ ((_%e179483%_
                                (##unchecked-structure-ref
                                 _%stx179478%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks179484%_
                                (cons (##unchecked-structure-ref
                                       _%stx179478%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e179483%_)
                  (let ((_%$e179487%_
                         (##type-id (##structure-type _%e179483%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e179487%_)
                        (_%lp179481%_
                         (##unchecked-structure-ref _%e179483%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e179483%_ '3 '#f '#f)
                          _%marks179484%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e179487%_)
                                (eq? 'gx#identifier-wrap::t _%$e179487%_))
                            (##unchecked-structure-ref _%e179483%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e179487%_)
                                (_%lp179481%_
                                 (##unchecked-structure-ref
                                  _%e179483%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks179484%_)
                                _%e179483%_))))
                  (if (null? _%marks179484%_)
                      _%e179483%_
                      (if (pair? _%e179483%_)
                          (cons (gx#stx-wrap
                                 (##car _%e179483%_)
                                 _%marks179484%_)
                                (gx#stx-wrap
                                 (##cdr _%e179483%_)
                                 _%marks179484%_))
                          (if (vector? _%e179483%_)
                              (vector-map
                               (lambda (_%$%g179495179497%_)
                                 (gx#stx-wrap
                                  _%$%g179495179497%_
                                  _%marks179484%_))
                               _%e179483%_)
                              (if (box? _%e179483%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e179483%_)
                                        _%marks179484%_))
                                  _%e179483%_))))))
            (if (##structure-instance-of? _%stx179478%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx179478%_ '1 '#f '#f)
                _%stx179478%_))))
    (define gx#syntax->datum
      (lambda (_%stx179471%_)
        (if (##structure-instance-of? _%stx179471%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx179471%_ '1 '#f '#f))
            (if (pair? _%stx179471%_)
                (cons (gx#syntax->datum (##car _%stx179471%_))
                      (gx#syntax->datum (##cdr _%stx179471%_)))
                (if (vector? _%stx179471%_)
                    (vector-map gx#syntax->datum _%stx179471%_)
                    (if (box? _%stx179471%_)
                        (box (gx#syntax->datum (unbox _%stx179471%_)))
                        _%stx179471%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx179405%_ _%datum179406%_ _%src179407%_ _%quote?179408%_)
        (letrec ((_%wrap-datum179410%_
                  (lambda (_%e179443%_ _%marks179444%_)
                    (_%wrap-inner179412%_
                     _%e179443%_
                     (lambda (_%$%g179445179447%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%$%g179445179447%_
                        _%src179407%_
                        _%marks179444%_)))))
                 (_%wrap-quote179411%_
                  (lambda (_%e179435%_ _%ctx179436%_ _%marks179437%_)
                    (_%wrap-inner179412%_
                     _%e179435%_
                     (lambda (_%$%g179438179440%_)
                       (##structure
                        gx#syntax-quote::t
                        _%$%g179438179440%_
                        _%src179407%_
                        _%ctx179436%_
                        _%marks179437%_)))))
                 (_%wrap-inner179412%_
                  (lambda (_%e179423%_ _%wrap-e179424%_)
                    (let _%recur179426%_ ((_%e179428%_ _%e179423%_))
                      (if (symbol? _%e179428%_)
                          (_%wrap-e179424%_ _%e179428%_)
                          (if (pair? _%e179428%_)
                              (cons (_%recur179426%_ (##car _%e179428%_))
                                    (_%recur179426%_ (##cdr _%e179428%_)))
                              (if (vector? _%e179428%_)
                                  (vector-map _%recur179426%_ _%e179428%_)
                                  (if (box? _%e179428%_)
                                      (box (_%recur179426%_
                                            (unbox _%e179428%_)))
                                      _%e179428%_)))))))
                 (_%wrap-outer179413%_
                  (lambda (_%e179421%_)
                    (if (##structure-instance-of? _%e179421%_ 'gerbil#AST::t)
                        _%e179421%_
                        (##structure gx#AST::t _%e179421%_ _%src179407%_)))))
          (if (##structure-instance-of? _%datum179406%_ 'gerbil#AST::t)
              _%datum179406%_
              (if (not _%stx179405%_)
                  (##structure gx#AST::t _%datum179406%_ _%src179407%_)
                  (if (gx#identifier? _%stx179405%_)
                      (let ((_%stx179418%_ (gx#stx-unwrap__0 _%stx179405%_)))
                        (_%wrap-outer179413%_
                         (if (##structure-direct-instance-of?
                              _%stx179418%_
                              'gx#syntax-quote::t)
                             (if _%quote?179408%_
                                 (_%wrap-quote179411%_
                                  _%datum179406%_
                                  (##unchecked-structure-ref
                                   _%stx179418%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx179418%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum179410%_
                                  _%datum179406%_
                                  (##unchecked-structure-ref
                                   _%stx179418%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum179410%_
                              _%datum179406%_
                              (##unchecked-structure-ref
                               _%stx179418%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx179405%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx179453%_ _%datum179454%_)
        (let* ((_%src179456%_ '#f) (_%quote?179458%_ '#t))
          (gx#datum->syntax__%
           _%stx179453%_
           _%datum179454%_
           _%src179456%_
           _%quote?179458%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx179460%_ _%datum179461%_ _%src179462%_)
        (let ((_%quote?179464%_ '#t))
          (gx#datum->syntax__%
           _%stx179460%_
           _%datum179461%_
           _%src179462%_
           _%quote?179464%_))))
    (define gx#datum->syntax
      (lambda _g179604_
        (let ((_g179605_ (##length _g179604_)))
          (cond ((##fx= _g179605_ 2) (apply gx#datum->syntax__0 _g179604_))
                ((##fx= _g179605_ 3) (apply gx#datum->syntax__1 _g179604_))
                ((##fx= _g179605_ 4) (apply gx#datum->syntax__% _g179604_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g179604_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx179371%_ _%marks179372%_)
        (let _%lp179374%_ ((_%e179376%_ _%stx179371%_)
                           (_%marks179377%_ _%marks179372%_)
                           (_%src179378%_ (gx#stx-source _%stx179371%_)))
          (if (##structure-direct-instance-of? _%e179376%_ 'gx#syntax-wrap::t)
              (_%lp179374%_
               (##unchecked-structure-ref _%e179376%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e179376%_ '3 '#f '#f)
                _%marks179377%_)
               (##unchecked-structure-ref _%e179376%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e179376%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks179377%_)
                      _%e179376%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e179376%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e179376%_ '2 '#f '#f)
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e179376%_ '3 '#f '#f)
                        _%marks179377%_)))
                  (if (##structure-direct-instance-of?
                       _%e179376%_
                       'gx#syntax-quote::t)
                      _%e179376%_
                      (if (##structure-instance-of? _%e179376%_ 'gerbil#AST::t)
                          (_%lp179374%_
                           (##unchecked-structure-ref _%e179376%_ '1 '#f '#f)
                           _%marks179377%_
                           (##unchecked-structure-ref _%e179376%_ '2 '#f '#f))
                          (if (symbol? _%e179376%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e179376%_
                               _%src179378%_
                               (reverse _%marks179377%_))
                              (if (null? _%marks179377%_)
                                  _%e179376%_
                                  (if (pair? _%e179376%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e179376%_)
                                             _%marks179377%_)
                                            (gx#stx-wrap
                                             (##cdr _%e179376%_)
                                             _%marks179377%_))
                                      (if (vector? _%e179376%_)
                                          (vector-map
                                           (lambda (_%$%g179387179389%_)
                                             (gx#stx-wrap
                                              _%$%g179387179389%_
                                              _%marks179377%_))
                                           _%e179376%_)
                                          (if (box? _%e179376%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e179376%_)
                                                    _%marks179377%_))
                                              _%e179376%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx179397%_)
        (let ((_%marks179399%_ '()))
          (gx#stx-unwrap__% _%stx179397%_ _%marks179399%_))))
    (define gx#stx-unwrap
      (lambda _g179606_
        (let ((_g179607_ (##length _g179606_)))
          (cond ((##fx= _g179607_ 1) (apply gx#stx-unwrap__0 _g179606_))
                ((##fx= _g179607_ 2) (apply gx#stx-unwrap__% _g179606_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g179606_))))))
    (define gx#stx-wrap
      (lambda (_%stx179364%_ _%marks179365%_)
        (foldl__0
         (lambda (_%mark179367%_ _%stx179368%_)
           (gx#stx-apply-mark _%stx179368%_ _%mark179367%_))
         _%stx179364%_
         _%marks179365%_)))
    (define gx#stx-rewrap
      (lambda (_%stx179358%_ _%marks179359%_)
        (foldr__0
         (lambda (_%mark179361%_ _%stx179362%_)
           (gx#stx-apply-mark _%stx179362%_ _%mark179361%_))
         _%stx179358%_
         _%marks179359%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx179352%_ _%mark179353%_)
        (if (##structure-direct-instance-of? _%stx179352%_ 'gx#syntax-quote::t)
            _%stx179352%_
            (if (and (##structure-direct-instance-of?
                      _%stx179352%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark179353%_
                          (##unchecked-structure-ref
                           _%stx179352%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx179352%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx179352%_
                 (gx#stx-source _%stx179352%_)
                 _%mark179353%_)))))
    (define gx#apply-mark
      (lambda (_%mark179316%_ _%marks179317%_)
        (let* ((_%$%marks179318179326%_ _%marks179317%_)
               (_%$%else179320179334%_
                (lambda () (cons _%mark179316%_ _%marks179317%_)))
               (_%$%K179322179340%_
                (lambda (_%rest179337%_ _%hd179338%_)
                  (if (eq? _%mark179316%_ _%hd179338%_)
                      _%rest179337%_
                      (cons _%mark179316%_ _%marks179317%_)))))
          (if (pair? _%$%marks179318179326%_)
              (let ((_%$%hd179323179343%_ (##car _%$%marks179318179326%_))
                    (_%$%tl179324179345%_ (##cdr _%$%marks179318179326%_)))
                (let* ((_%hd179348%_ _%$%hd179323179343%_)
                       (_%rest179350%_ _%$%tl179324179345%_))
                  (_%$%K179322179340%_ _%rest179350%_ _%hd179348%_)))
              (_%$%else179320179334%_)))))
    (define gx#stx-e
      (lambda (_%stx179311%_)
        (if (##structure-direct-instance-of? _%stx179311%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx179311%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx179311%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx179311%_ '1 '#f '#f)
                _%stx179311%_))))
    (define gx#stx-source
      (lambda (_%stx179309%_)
        (if (##structure-instance-of? _%stx179309%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx179309%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx179303%_ _%src179304%_)
        (if (or (##structure-instance-of? _%stx179303%_ 'gerbil#AST::t)
                (not _%src179304%_))
            _%stx179303%_
            (##structure gx#AST::t _%stx179303%_ _%src179304%_))))
    (define gx#stx-datum?
      (lambda (_%stx179301%_) (gx#self-quoting? (gx#stx-e _%stx179301%_))))
    (define gx#self-quoting?
      (lambda (_%x179284%_)
        (let ((_%$e179286%_ (immediate? _%x179284%_)))
          (if _%$e179286%_
              _%$e179286%_
              (let ((_%$e179289%_ (number? _%x179284%_)))
                (if _%$e179289%_
                    _%$e179289%_
                    (let ((_%$e179292%_ (keyword? _%x179284%_)))
                      (if _%$e179292%_
                          _%$e179292%_
                          (let ((_%$e179295%_ (string? _%x179284%_)))
                            (if _%$e179295%_
                                _%$e179295%_
                                (let ((_%$e179298%_ (vector? _%x179284%_)))
                                  (if _%$e179298%_
                                      _%$e179298%_
                                      (u8vector? _%x179284%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e179282%_) (boolean? (gx#stx-e _%e179282%_))))
    (define gx#stx-keyword?
      (lambda (_%e179280%_) (keyword? (gx#stx-e _%e179280%_))))
    (define gx#stx-char? (lambda (_%e179278%_) (char? (gx#stx-e _%e179278%_))))
    (define gx#stx-number?
      (lambda (_%e179276%_) (number? (gx#stx-e _%e179276%_))))
    (define gx#stx-fixnum?
      (lambda (_%e179274%_) (fixnum? (gx#stx-e _%e179274%_))))
    (define gx#stx-string?
      (lambda (_%e179272%_) (string? (gx#stx-e _%e179272%_))))
    (define gx#stx-null? (lambda (_%e179270%_) (null? (gx#stx-e _%e179270%_))))
    (define gx#stx-pair? (lambda (_%e179268%_) (pair? (gx#stx-e _%e179268%_))))
    (define gx#stx-list?
      (lambda (_%e179230%_)
        (let* ((_%$%g179231179240%_ (gx#stx-e _%e179230%_))
               (_%$%E179234179244%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%g179231179240%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%$%K179236179260%_
                 (lambda (_%rest179258%_) (gx#stx-list? _%rest179258%_)))
                (_%$%K179235179250%_
                 (lambda (_%tail179248%_) (null? _%tail179248%_))))
            (if (pair? _%$%g179231179240%_)
                (let* ((_%$%tl179238179263%_ (##cdr _%$%g179231179240%_))
                       (_%rest179266%_ _%$%tl179238179263%_))
                  (gx#stx-list? _%rest179266%_))
                (let ((_%tail179253%_ _%$%g179231179240%_))
                  (null? _%tail179253%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e179223%_)
        (let* ((_%e179225%_ (gx#stx-e _%e179223%_))
               (_%$e179227%_ (pair? _%e179225%_)))
          (if _%$e179227%_ _%$e179227%_ (null? _%e179225%_)))))
    (define gx#stx-vector?
      (lambda (_%e179221%_) (vector? (gx#stx-e _%e179221%_))))
    (define gx#stx-box? (lambda (_%e179219%_) (box? (gx#stx-e _%e179219%_))))
    (define gx#stx-eq?
      (lambda (_%x179216%_ _%y179217%_)
        (eq? (gx#stx-e _%x179216%_) (gx#stx-e _%y179217%_))))
    (define gx#stx-eqv?
      (lambda (_%x179213%_ _%y179214%_)
        (eqv? (gx#stx-e _%x179213%_) (gx#stx-e _%y179214%_))))
    (define gx#stx-equal?
      (lambda (_%x179210%_ _%y179211%_)
        (equal? (gx#stx-e _%x179210%_) (gx#stx-e _%y179211%_))))
    (define gx#stx-false? (lambda (_%x179208%_) (not (gx#stx-e _%x179208%_))))
    (define gx#stx-identifier
      (lambda (_%template179205%_ . _%args179206%_)
        (gx#datum->syntax__1
         _%template179205%_
         (apply make-symbol (gx#syntax->datum _%args179206%_))
         (gx#stx-source _%template179205%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx179203%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx179203%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx179198%_)
        (if (##structure-direct-instance-of?
             _%stx179198%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx179198%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx179198%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx179198%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx179198%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx179194%_)
        (let ((_%stx179196%_ (gx#stx-unwrap__0 _%stx179194%_)))
          (if (gx#identifier-quote? _%stx179196%_)
              (##unchecked-structure-ref _%stx179196%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx179149%_)
        (let* ((_%$%g179150179160%_ (gx#stx-e _%stx179149%_))
               (_%$%else179153179168%_ (lambda () '#f)))
          (let ((_%$%K179156179182%_
                 (lambda (_%rest179179%_ _%hd179180%_)
                   (if (gx#identifier? _%hd179180%_)
                       (gx#identifier-list? _%rest179179%_)
                       '#f)))
                (_%$%K179155179173%_ (lambda () '#t)))
            (let ((_%$%try-match179152179176%_
                   (lambda ()
                     (if (null? _%$%g179150179160%_)
                         (_%$%K179155179173%_)
                         (_%$%else179153179168%_)))))
              (if (pair? _%$%g179150179160%_)
                  (let ((_%$%tl179158179187%_ (##cdr _%$%g179150179160%_))
                        (_%$%hd179157179185%_ (##car _%$%g179150179160%_)))
                    (let ((_%hd179190%_ _%$%hd179157179185%_)
                          (_%rest179192%_ _%$%tl179158179187%_))
                      (_%$%K179156179182%_ _%rest179192%_ _%hd179190%_)))
                  (_%$%try-match179152179176%_)))))))
    (define gx#genident__%
      (lambda (_%e179129%_ _%src179130%_)
        (gx#datum->syntax__1
         (if (gx#identifier? _%src179130%_) _%src179130%_ '#f)
         (make-symbol__1
          '"$%"
          (##gensym
           (let ((_%e179132%_ (gx#stx-e _%e179129%_)))
             (if (symbol? _%e179132%_) _%e179132%_ 'g))))
         _%src179130%_)))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e179138%_ 'g) (_%src179140%_ '#f))
          (gx#genident__% _%e179138%_ _%src179140%_))))
    (define gx#genident__1
      (lambda (_%e179142%_)
        (let ((_%src179144%_ '#f))
          (gx#genident__% _%e179142%_ _%src179144%_))))
    (define gx#genident
      (lambda _g179608_
        (let ((_g179609_ (##length _g179608_)))
          (cond ((##fx= _g179609_ 0) (apply gx#genident__0 _g179608_))
                ((##fx= _g179609_ 1) (apply gx#genident__1 _g179608_))
                ((##fx= _g179609_ 2) (apply gx#genident__% _g179608_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g179608_))))))
    (define gx#gentemps
      (lambda (_%stx-lst179124%_)
        (gx#stx-map1
         (lambda (_%x179126%_) (gx#genident__% _%x179126%_ _%x179126%_))
         _%stx-lst179124%_)))
    (define gx#syntax->list
      (lambda (_%stx179122%_) (gx#stx-map1 values _%stx179122%_)))
    (define gx#stx-car
      (lambda (_%stx179119%_)
        (declare (safe))
        (car (gx#syntax-e _%stx179119%_))))
    (define gx#stx-cdr
      (lambda (_%stx179116%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx179116%_))))
    (define gx#stx-length
      (lambda (_%stx179081%_)
        (let _%lp179083%_ ((_%rest179085%_ _%stx179081%_) (_%n179086%_ '0))
          (let* ((_%$%g179087179095%_ (gx#stx-e _%rest179085%_))
                 (_%$%else179089179103%_ (lambda () _%n179086%_))
                 (_%$%K179091179108%_
                  (lambda (_%rest179106%_)
                    (_%lp179083%_ _%rest179106%_ (##fx+ _%n179086%_ '1)))))
            (if (pair? _%$%g179087179095%_)
                (let* ((_%$%tl179093179111%_ (##cdr _%$%g179087179095%_))
                       (_%rest179114%_ _%$%tl179093179111%_))
                  (_%$%K179091179108%_ _%rest179114%_))
                (_%$%else179089179103%_))))))
    (define gx#stx-for-each
      (lambda _g179610_
        (let ((_g179611_ (##length _g179610_)))
          (cond ((##fx= _g179611_ 2) (apply gx#stx-for-each1 _g179610_))
                ((##fx= _g179611_ 3) (apply gx#stx-for-each2 _g179610_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g179610_))))))
    (define gx#stx-for-each1
      (lambda (_%f179024%_ _%stx179025%_)
        (if (procedure? _%f179024%_)
            '#!void
            (error '"expected procedure" _%f179024%_))
        (let _%lp179027%_ ((_%rest179029%_ _%stx179025%_))
          (let* ((_%$%g179030179040%_ (gx#syntax-e _%rest179029%_))
                 (_%$%else179033179048%_
                  (lambda () (_%f179024%_ _%rest179029%_))))
            (let ((_%$%K179036179062%_
                   (lambda (_%rest179059%_ _%hd179060%_)
                     (_%f179024%_ _%hd179060%_)
                     (_%lp179027%_ _%rest179059%_)))
                  (_%$%K179035179053%_ (lambda () '#!void)))
              (let ((_%$%try-match179032179056%_
                     (lambda ()
                       (if (null? _%$%g179030179040%_)
                           (_%$%K179035179053%_)
                           (_%$%else179033179048%_)))))
                (if (pair? _%$%g179030179040%_)
                    (let ((_%$%tl179038179067%_ (##cdr _%$%g179030179040%_))
                          (_%$%hd179037179065%_ (##car _%$%g179030179040%_)))
                      (let ((_%hd179070%_ _%$%hd179037179065%_)
                            (_%rest179072%_ _%$%tl179038179067%_))
                        (_%$%K179036179062%_ _%rest179072%_ _%hd179070%_)))
                    (_%$%try-match179032179056%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f178929%_ _%xstx178930%_ _%ystx178931%_)
        (if (procedure? _%f178929%_)
            '#!void
            (error '"expected procedure" _%f178929%_))
        (let _%lp178933%_ ((_%xrest178935%_ _%xstx178930%_)
                           (_%yrest178936%_ _%ystx178931%_))
          (let* ((_%$%g178937178947%_ (gx#syntax-e _%xrest178935%_))
                 (_%$%else178940178955%_ (lambda () '#!void)))
            (let ((_%$%K178943179012%_
                   (lambda (_%xrest178981%_ _%xhd178982%_)
                     (let* ((_%$%g178983178990%_ (gx#syntax-e _%yrest178936%_))
                            (_%$%E178985178994%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%g178983178990%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%$%K178986179000%_
                             (lambda (_%yrest178997%_ _%yhd178998%_)
                               (_%f178929%_ _%xhd178982%_ _%yhd178998%_)
                               (_%lp178933%_
                                _%xrest178981%_
                                _%yrest178997%_))))
                       (if (pair? _%$%g178983178990%_)
                           (let ((_%$%hd178987179003%_
                                  (##car _%$%g178983178990%_))
                                 (_%$%tl178988179005%_
                                  (##cdr _%$%g178983178990%_)))
                             (let* ((_%yhd179008%_ _%$%hd178987179003%_)
                                    (_%yrest179010%_ _%$%tl178988179005%_))
                               (_%$%K178986179000%_
                                _%yrest179010%_
                                _%yhd179008%_)))
                           (_%$%E178985178994%_)))))
                  (_%$%K178942178975%_
                   (lambda ()
                     (let* ((_%$%yrest178959178964%_ _%yrest178936%_)
                            (_%$%E178961178968%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%yrest178959178964%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%$%K178962178972%_
                             (lambda ()
                               (_%f178929%_ _%xrest178935%_ _%yrest178936%_))))
                       (if (gx#stx-null? _%$%yrest178959178964%_)
                           (_%$%E178961178968%_)
                           (_%$%K178962178972%_))))))
              (let ((_%$%try-match178939178978%_
                     (lambda ()
                       (if (null? _%$%g178937178947%_)
                           (_%$%else178940178955%_)
                           (_%$%K178942178975%_)))))
                (if (pair? _%$%g178937178947%_)
                    (let ((_%$%tl178945179017%_ (##cdr _%$%g178937178947%_))
                          (_%$%hd178944179015%_ (##car _%$%g178937178947%_)))
                      (let ((_%xhd179020%_ _%$%hd178944179015%_)
                            (_%xrest179022%_ _%$%tl178945179017%_))
                        (_%$%K178943179012%_ _%xrest179022%_ _%xhd179020%_)))
                    (_%$%try-match178939178978%_))))))))
    (define gx#stx-map
      (lambda _g179612_
        (let ((_g179613_ (##length _g179612_)))
          (cond ((##fx= _g179613_ 2) (apply gx#stx-map1 _g179612_))
                ((##fx= _g179613_ 3) (apply gx#stx-map2 _g179612_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g179612_))))))
    (define gx#stx-map1
      (lambda (_%f178872%_ _%stx178873%_)
        (if (procedure? _%f178872%_)
            '#!void
            (error '"expected procedure" _%f178872%_))
        (let _%recur178875%_ ((_%rest178877%_ _%stx178873%_))
          (let* ((_%$%g178878178888%_ (gx#syntax-e _%rest178877%_))
                 (_%$%else178881178896%_
                  (lambda () (_%f178872%_ _%rest178877%_))))
            (let ((_%$%K178884178910%_
                   (lambda (_%rest178907%_ _%hd178908%_)
                     (cons (_%f178872%_ _%hd178908%_)
                           (_%recur178875%_ _%rest178907%_))))
                  (_%$%K178883178901%_ (lambda () '())))
              (let ((_%$%try-match178880178904%_
                     (lambda ()
                       (if (null? _%$%g178878178888%_)
                           (_%$%K178883178901%_)
                           (_%$%else178881178896%_)))))
                (if (pair? _%$%g178878178888%_)
                    (let ((_%$%tl178886178915%_ (##cdr _%$%g178878178888%_))
                          (_%$%hd178885178913%_ (##car _%$%g178878178888%_)))
                      (let ((_%hd178918%_ _%$%hd178885178913%_)
                            (_%rest178920%_ _%$%tl178886178915%_))
                        (_%$%K178884178910%_ _%rest178920%_ _%hd178918%_)))
                    (_%$%try-match178880178904%_))))))))
    (define gx#stx-map2
      (lambda (_%f178777%_ _%xstx178778%_ _%ystx178779%_)
        (if (procedure? _%f178777%_)
            '#!void
            (error '"expected procedure" _%f178777%_))
        (let _%recur178781%_ ((_%xrest178783%_ _%xstx178778%_)
                              (_%yrest178784%_ _%ystx178779%_))
          (let* ((_%$%g178785178795%_ (gx#syntax-e _%xrest178783%_))
                 (_%$%else178788178803%_ (lambda () '())))
            (let ((_%$%K178791178860%_
                   (lambda (_%xrest178829%_ _%xhd178830%_)
                     (let* ((_%$%g178831178838%_ (gx#syntax-e _%yrest178784%_))
                            (_%$%E178833178842%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%g178831178838%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%$%K178834178848%_
                             (lambda (_%yrest178845%_ _%yhd178846%_)
                               (cons (_%f178777%_ _%xhd178830%_ _%yhd178846%_)
                                     (_%recur178781%_
                                      _%xrest178829%_
                                      _%yrest178845%_)))))
                       (if (pair? _%$%g178831178838%_)
                           (let ((_%$%hd178835178851%_
                                  (##car _%$%g178831178838%_))
                                 (_%$%tl178836178853%_
                                  (##cdr _%$%g178831178838%_)))
                             (let* ((_%yhd178856%_ _%$%hd178835178851%_)
                                    (_%yrest178858%_ _%$%tl178836178853%_))
                               (_%$%K178834178848%_
                                _%yrest178858%_
                                _%yhd178856%_)))
                           (_%$%E178833178842%_)))))
                  (_%$%K178790178823%_
                   (lambda ()
                     (let* ((_%$%yrest178807178812%_ _%yrest178784%_)
                            (_%$%E178809178816%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%yrest178807178812%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%$%K178810178820%_
                             (lambda ()
                               (_%f178777%_ _%xrest178783%_ _%yrest178784%_))))
                       (if (gx#stx-null? _%$%yrest178807178812%_)
                           (_%$%E178809178816%_)
                           (_%$%K178810178820%_))))))
              (let ((_%$%try-match178787178826%_
                     (lambda ()
                       (if (null? _%$%g178785178795%_)
                           (_%$%else178788178803%_)
                           (_%$%K178790178823%_)))))
                (if (pair? _%$%g178785178795%_)
                    (let ((_%$%tl178793178865%_ (##cdr _%$%g178785178795%_))
                          (_%$%hd178792178863%_ (##car _%$%g178785178795%_)))
                      (let ((_%xhd178868%_ _%$%hd178792178863%_)
                            (_%xrest178870%_ _%$%tl178793178865%_))
                        (_%$%K178791178860%_ _%xrest178870%_ _%xhd178868%_)))
                    (_%$%try-match178787178826%_))))))))
    (define gx#stx-andmap
      (lambda (_%f178727%_ _%stx178728%_)
        (if (procedure? _%f178727%_)
            '#!void
            (error '"expected procedure" _%f178727%_))
        (let _%lp178730%_ ((_%rest178732%_ _%stx178728%_))
          (let* ((_%$%g178733178743%_ (gx#syntax-e _%rest178732%_))
                 (_%$%else178736178751%_
                  (lambda () (_%f178727%_ _%rest178732%_))))
            (let ((_%$%K178739178765%_
                   (lambda (_%rest178762%_ _%hd178763%_)
                     (if (_%f178727%_ _%hd178763%_)
                         (_%lp178730%_ _%rest178762%_)
                         '#f)))
                  (_%$%K178738178756%_ (lambda () '#t)))
              (let ((_%$%try-match178735178759%_
                     (lambda ()
                       (if (null? _%$%g178733178743%_)
                           (_%$%K178738178756%_)
                           (_%$%else178736178751%_)))))
                (if (pair? _%$%g178733178743%_)
                    (let ((_%$%tl178741178770%_ (##cdr _%$%g178733178743%_))
                          (_%$%hd178740178768%_ (##car _%$%g178733178743%_)))
                      (let ((_%hd178773%_ _%$%hd178740178768%_)
                            (_%rest178775%_ _%$%tl178741178770%_))
                        (_%$%K178739178765%_ _%rest178775%_ _%hd178773%_)))
                    (_%$%try-match178735178759%_))))))))
    (define gx#stx-ormap
      (lambda (_%f178674%_ _%stx178675%_)
        (if (procedure? _%f178674%_)
            '#!void
            (error '"expected procedure" _%f178674%_))
        (let _%lp178677%_ ((_%rest178679%_ _%stx178675%_))
          (let* ((_%$%g178680178690%_ (gx#syntax-e _%rest178679%_))
                 (_%$%else178683178698%_
                  (lambda () (_%f178674%_ _%rest178679%_))))
            (let ((_%$%K178686178715%_
                   (lambda (_%rest178709%_ _%hd178710%_)
                     (let ((_%$e178712%_ (_%f178674%_ _%hd178710%_)))
                       (if _%$e178712%_
                           _%$e178712%_
                           (_%lp178677%_ _%rest178709%_)))))
                  (_%$%K178685178703%_ (lambda () '#f)))
              (let ((_%$%try-match178682178706%_
                     (lambda ()
                       (if (null? _%$%g178680178690%_)
                           (_%$%K178685178703%_)
                           (_%$%else178683178698%_)))))
                (if (pair? _%$%g178680178690%_)
                    (let ((_%$%tl178688178720%_ (##cdr _%$%g178680178690%_))
                          (_%$%hd178687178718%_ (##car _%$%g178680178690%_)))
                      (let ((_%hd178723%_ _%$%hd178687178718%_)
                            (_%rest178725%_ _%$%tl178688178720%_))
                        (_%$%K178686178715%_ _%rest178725%_ _%hd178723%_)))
                    (_%$%try-match178682178706%_))))))))
    (define gx#stx-foldl
      (lambda (_%f178622%_ _%iv178623%_ _%stx178624%_)
        (if (procedure? _%f178622%_)
            '#!void
            (error '"expected procedure" _%f178622%_))
        (let _%lp178626%_ ((_%r178628%_ _%iv178623%_)
                           (_%rest178629%_ _%stx178624%_))
          (let* ((_%$%g178630178640%_ (gx#syntax-e _%rest178629%_))
                 (_%$%else178633178648%_
                  (lambda () (_%f178622%_ _%rest178629%_ _%r178628%_))))
            (let ((_%$%K178636178662%_
                   (lambda (_%rest178659%_ _%hd178660%_)
                     (_%lp178626%_
                      (_%f178622%_ _%hd178660%_ _%r178628%_)
                      _%rest178659%_)))
                  (_%$%K178635178653%_ (lambda () _%r178628%_)))
              (let ((_%$%try-match178632178656%_
                     (lambda ()
                       (if (null? _%$%g178630178640%_)
                           (_%$%K178635178653%_)
                           (_%$%else178633178648%_)))))
                (if (pair? _%$%g178630178640%_)
                    (let ((_%$%tl178638178667%_ (##cdr _%$%g178630178640%_))
                          (_%$%hd178637178665%_ (##car _%$%g178630178640%_)))
                      (let ((_%hd178670%_ _%$%hd178637178665%_)
                            (_%rest178672%_ _%$%tl178638178667%_))
                        (_%$%K178636178662%_ _%rest178672%_ _%hd178670%_)))
                    (_%$%try-match178632178656%_))))))))
    (define gx#stx-foldr
      (lambda (_%f178571%_ _%iv178572%_ _%stx178573%_)
        (if (procedure? _%f178571%_)
            '#!void
            (error '"expected procedure" _%f178571%_))
        (let _%recur178575%_ ((_%rest178577%_ _%stx178573%_))
          (let* ((_%$%g178578178588%_ (gx#syntax-e _%rest178577%_))
                 (_%$%else178581178596%_
                  (lambda () (_%f178571%_ _%rest178577%_ _%iv178572%_))))
            (let ((_%$%K178584178610%_
                   (lambda (_%rest178607%_ _%hd178608%_)
                     (_%f178571%_
                      _%hd178608%_
                      (_%recur178575%_ _%rest178607%_))))
                  (_%$%K178583178601%_ (lambda () _%iv178572%_)))
              (let ((_%$%try-match178580178604%_
                     (lambda ()
                       (if (null? _%$%g178578178588%_)
                           (_%$%K178583178601%_)
                           (_%$%else178581178596%_)))))
                (if (pair? _%$%g178578178588%_)
                    (let ((_%$%tl178586178615%_ (##cdr _%$%g178578178588%_))
                          (_%$%hd178585178613%_ (##car _%$%g178578178588%_)))
                      (let ((_%hd178618%_ _%$%hd178585178613%_)
                            (_%rest178620%_ _%$%tl178586178615%_))
                        (_%$%K178584178610%_ _%rest178620%_ _%hd178618%_)))
                    (_%$%try-match178580178604%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx178569%_) (gx#stx-foldl cons '() _%stx178569%_)))
    (define gx#stx-last
      (lambda (_%stx178530%_)
        (let _%lp178532%_ ((_%rest178534%_ _%stx178530%_))
          (let* ((_%$%g178535178543%_ (gx#syntax-e _%rest178534%_))
                 (_%$%else178537178551%_ (lambda () _%rest178534%_))
                 (_%$%K178539178557%_
                  (lambda (_%rest178554%_ _%hd178555%_)
                    (if (gx#stx-null? _%rest178554%_)
                        _%hd178555%_
                        (_%lp178532%_ _%rest178554%_)))))
            (if (pair? _%$%g178535178543%_)
                (let ((_%$%hd178540178560%_ (##car _%$%g178535178543%_))
                      (_%$%tl178541178562%_ (##cdr _%$%g178535178543%_)))
                  (let* ((_%hd178565%_ _%$%hd178540178560%_)
                         (_%rest178567%_ _%$%tl178541178562%_))
                    (_%$%K178539178557%_ _%rest178567%_ _%hd178565%_)))
                (_%$%else178537178551%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx178501%_)
        (let _%lp178503%_ ((_%hd178505%_ _%stx178501%_))
          (let* ((_%$%g178506178513%_ (gx#syntax-e _%hd178505%_))
                 (_%$%E178508178517%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%g178506178513%_
                           '([_ . rest]))
                    '#!void))
                 (_%$%K178509178522%_
                  (lambda (_%rest178520%_)
                    (if (gx#stx-pair? _%rest178520%_)
                        (_%lp178503%_ _%rest178520%_)
                        _%hd178505%_))))
            (if (pair? _%$%g178506178513%_)
                (let* ((_%$%tl178511178525%_ (##cdr _%$%g178506178513%_))
                       (_%rest178528%_ _%$%tl178511178525%_))
                  (_%$%K178509178522%_ _%rest178528%_))
                (_%$%E178508178517%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx178470%_ _%k178471%_)
        (let _%lp178473%_ ((_%rest178475%_ _%stx178470%_)
                           (_%k178476%_ _%k178471%_))
          (if (fxpositive? _%k178476%_)
              (let* ((_%$%g178477178484%_ (gx#syntax-e _%rest178475%_))
                     (_%$%E178479178488%_
                      (lambda ()
                        (error '"No clause matching"
                               _%$%g178477178484%_
                               '([_ . rest]))
                        '#!void))
                     (_%$%K178480178493%_
                      (lambda (_%rest178491%_)
                        (_%lp178473%_ _%rest178491%_ (##fx- _%k178476%_ '1)))))
                (if (pair? _%$%g178477178484%_)
                    (let* ((_%$%tl178482178496%_ (##cdr _%$%g178477178484%_))
                           (_%rest178499%_ _%$%tl178482178496%_))
                      (_%$%K178480178493%_ _%rest178499%_))
                    (_%$%E178479178488%_)))
              _%rest178475%_))))
    (define gx#stx-list-ref
      (lambda (_%stx178467%_ _%k178468%_)
        (gx#stx-car (gx#stx-list-tail _%stx178467%_ _%k178468%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx178379%_ _%key?178380%_)
        (if (procedure? _%key?178380%_)
            '#!void
            (error '"expected procedure" _%key?178380%_))
        (let _%lp178382%_ ((_%rest178384%_ _%stx178379%_))
          (let* ((_%$%g178385178395%_ (gx#stx-e _%rest178384%_))
                 (_%$%else178388178403%_ (lambda () '#f)))
            (let ((_%$%K178391178445%_
                   (lambda (_%rest178414%_ _%hd178415%_)
                     (if (_%key?178380%_ _%hd178415%_)
                         (let* ((_%$%g178416178424%_ (gx#stx-e _%rest178414%_))
                                (_%$%else178418178432%_ (lambda () '#f))
                                (_%$%K178420178437%_
                                 (lambda (_%rest178435%_)
                                   (_%lp178382%_ _%rest178435%_))))
                           (if (pair? _%$%g178416178424%_)
                               (let* ((_%$%tl178422178440%_
                                       (##cdr _%$%g178416178424%_))
                                      (_%rest178443%_ _%$%tl178422178440%_))
                                 (_%lp178382%_ _%rest178443%_))
                               (_%$%else178418178432%_)))
                         '#f)))
                  (_%$%K178390178408%_ (lambda () '#t)))
              (let ((_%$%try-match178387178411%_
                     (lambda ()
                       (if (null? _%$%g178385178395%_)
                           (_%$%K178390178408%_)
                           (_%$%else178388178403%_)))))
                (if (pair? _%$%g178385178395%_)
                    (let ((_%$%tl178393178450%_ (##cdr _%$%g178385178395%_))
                          (_%$%hd178392178448%_ (##car _%$%g178385178395%_)))
                      (let ((_%hd178453%_ _%$%hd178392178448%_)
                            (_%rest178455%_ _%$%tl178393178450%_))
                        (_%$%K178391178445%_ _%rest178455%_ _%hd178453%_)))
                    (_%$%try-match178387178411%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx178460%_)
        (let ((_%key?178462%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx178460%_ _%key?178462%_))))
    (define gx#stx-plist?
      (lambda _g179614_
        (let ((_g179615_ (##length _g179614_)))
          (cond ((##fx= _g179615_ 1) (apply gx#stx-plist?__0 _g179614_))
                ((##fx= _g179615_ 2) (apply gx#stx-plist?__% _g179614_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g179614_))))))
    (define gx#stx-getq__%
      (lambda (_%key178297%_ _%stx178298%_ _%key=?178299%_)
        (if (procedure? _%key=?178299%_)
            '#!void
            (error '"expected procedure" _%key=?178299%_))
        (let _%lp178301%_ ((_%rest178303%_ _%stx178298%_))
          (let* ((_%$%g178304178312%_ (gx#syntax-e _%rest178303%_))
                 (_%$%else178306178320%_ (lambda () '#f))
                 (_%$%K178308178354%_
                  (lambda (_%rest178323%_ _%hd178324%_)
                    (let* ((_%$%g178325178332%_ (gx#syntax-e _%rest178323%_))
                           (_%$%E178327178336%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%g178325178332%_
                                     '([val . rest]))
                              '#!void))
                           (_%$%K178328178342%_
                            (lambda (_%rest178339%_ _%val178340%_)
                              (if (_%key=?178299%_ _%hd178324%_ _%key178297%_)
                                  _%val178340%_
                                  (_%lp178301%_ _%rest178339%_)))))
                      (if (pair? _%$%g178325178332%_)
                          (let ((_%$%hd178329178345%_
                                 (##car _%$%g178325178332%_))
                                (_%$%tl178330178347%_
                                 (##cdr _%$%g178325178332%_)))
                            (let* ((_%val178350%_ _%$%hd178329178345%_)
                                   (_%rest178352%_ _%$%tl178330178347%_))
                              (_%$%K178328178342%_
                               _%rest178352%_
                               _%val178350%_)))
                          (_%$%E178327178336%_))))))
            (if (pair? _%$%g178304178312%_)
                (let ((_%$%hd178309178357%_ (##car _%$%g178304178312%_))
                      (_%$%tl178310178359%_ (##cdr _%$%g178304178312%_)))
                  (let* ((_%hd178362%_ _%$%hd178309178357%_)
                         (_%rest178364%_ _%$%tl178310178359%_))
                    (_%$%K178308178354%_ _%rest178364%_ _%hd178362%_)))
                (_%$%else178306178320%_))))))
    (define gx#stx-getq__0
      (lambda (_%key178369%_ _%stx178370%_)
        (let ((_%key=?178372%_ gx#stx-eq?))
          (gx#stx-getq__% _%key178369%_ _%stx178370%_ _%key=?178372%_))))
    (define gx#stx-getq
      (lambda _g179616_
        (let ((_g179617_ (##length _g179616_)))
          (cond ((##fx= _g179617_ 2) (apply gx#stx-getq__0 _g179616_))
                ((##fx= _g179617_ 3) (apply gx#stx-getq__% _g179616_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g179616_))))))
    (define gx#stx-plist-assq__%
      (lambda (_%key178215%_ _%stx178216%_ _%key=?178217%_)
        (if (procedure? _%key=?178217%_)
            '#!void
            (error '"expected procedure" _%key=?178217%_))
        (let _%lp178219%_ ((_%rest178221%_ _%stx178216%_))
          (let* ((_%$%g178222178230%_ (gx#syntax-e _%rest178221%_))
                 (_%$%else178224178238%_ (lambda () '#f))
                 (_%$%K178226178272%_
                  (lambda (_%rest178241%_ _%hd178242%_)
                    (let* ((_%$%g178243178250%_ (gx#syntax-e _%rest178241%_))
                           (_%$%E178245178254%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%g178243178250%_
                                     '([val . rest]))
                              '#!void))
                           (_%$%K178246178260%_
                            (lambda (_%rest178257%_ _%val178258%_)
                              (if (_%key=?178217%_ _%hd178242%_ _%key178215%_)
                                  (cons _%hd178242%_ _%val178258%_)
                                  (_%lp178219%_ _%rest178257%_)))))
                      (if (pair? _%$%g178243178250%_)
                          (let ((_%$%hd178247178263%_
                                 (##car _%$%g178243178250%_))
                                (_%$%tl178248178265%_
                                 (##cdr _%$%g178243178250%_)))
                            (let* ((_%val178268%_ _%$%hd178247178263%_)
                                   (_%rest178270%_ _%$%tl178248178265%_))
                              (_%$%K178246178260%_
                               _%rest178270%_
                               _%val178268%_)))
                          (_%$%E178245178254%_))))))
            (if (pair? _%$%g178222178230%_)
                (let ((_%$%hd178227178275%_ (##car _%$%g178222178230%_))
                      (_%$%tl178228178277%_ (##cdr _%$%g178222178230%_)))
                  (let* ((_%hd178280%_ _%$%hd178227178275%_)
                         (_%rest178282%_ _%$%tl178228178277%_))
                    (_%$%K178226178272%_ _%rest178282%_ _%hd178280%_)))
                (_%$%else178224178238%_))))))
    (define gx#stx-plist-assq__0
      (lambda (_%key178287%_ _%stx178288%_)
        (let ((_%key=?178290%_ gx#stx-eq?))
          (gx#stx-plist-assq__% _%key178287%_ _%stx178288%_ _%key=?178290%_))))
    (define gx#stx-plist-assq
      (lambda _g179618_
        (let ((_g179619_ (##length _g179618_)))
          (cond ((##fx= _g179619_ 2) (apply gx#stx-plist-assq__0 _g179618_))
                ((##fx= _g179619_ 3) (apply gx#stx-plist-assq__% _g179618_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist-assq
                  _g179618_))))))))

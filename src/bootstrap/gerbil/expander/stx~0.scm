(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1734215269)
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
      (lambda _%$args118413%_
        (apply make-instance gx#identifier-wrap::t _%$args118413%_)))
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
      (lambda _%$args118410%_
        (apply make-instance gx#syntax-wrap::t _%$args118410%_)))
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
      (lambda _%$args118407%_
        (apply make-instance gx#syntax-quote::t _%$args118407%_)))
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
      (lambda (_%stx118405%_) (symbol? (gx#stx-e _%stx118405%_))))
    (define gx#identifier-quote?
      (lambda (_%stx118403%_)
        (if (##structure-direct-instance-of? _%stx118403%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx118403%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx118398%_)
        (if (##structure-direct-instance-of? _%stx118398%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx118398%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx118398%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx118393%_)
        (if (##structure-direct-instance-of? _%stx118393%_ 'gx#syntax-quote::t)
            _%stx118393%_
            (if (##structure-direct-instance-of?
                 _%stx118393%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx118393%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx118367%_)
        (if (##structure-direct-instance-of? _%stx118367%_ 'gx#syntax-wrap::t)
            (let _%lp118370%_ ((_%e118372%_
                                (##unchecked-structure-ref
                                 _%stx118367%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks118373%_
                                (cons (##unchecked-structure-ref
                                       _%stx118367%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e118372%_)
                  (let ((_%$e118376%_
                         (##type-id (##structure-type _%e118372%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e118376%_)
                        (_%lp118370%_
                         (##unchecked-structure-ref _%e118372%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e118372%_ '3 '#f '#f)
                          _%marks118373%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e118376%_)
                                (eq? 'gx#identifier-wrap::t _%$e118376%_))
                            (##unchecked-structure-ref _%e118372%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e118376%_)
                                (_%lp118370%_
                                 (##unchecked-structure-ref
                                  _%e118372%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks118373%_)
                                _%e118372%_))))
                  (if (null? _%marks118373%_)
                      _%e118372%_
                      (if (pair? _%e118372%_)
                          (cons (gx#stx-wrap
                                 (##car _%e118372%_)
                                 _%marks118373%_)
                                (gx#stx-wrap
                                 (##cdr _%e118372%_)
                                 _%marks118373%_))
                          (if (vector? _%e118372%_)
                              (vector-map
                               (lambda (_%g118384118386%_)
                                 (gx#stx-wrap
                                  _%g118384118386%_
                                  _%marks118373%_))
                               _%e118372%_)
                              (if (box? _%e118372%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e118372%_)
                                        _%marks118373%_))
                                  _%e118372%_))))))
            (if (##structure-instance-of? _%stx118367%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx118367%_ '1 '#f '#f)
                _%stx118367%_))))
    (define gx#syntax->datum
      (lambda (_%stx118360%_)
        (if (##structure-instance-of? _%stx118360%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx118360%_ '1 '#f '#f))
            (if (pair? _%stx118360%_)
                (cons (gx#syntax->datum (##car _%stx118360%_))
                      (gx#syntax->datum (##cdr _%stx118360%_)))
                (if (vector? _%stx118360%_)
                    (vector-map gx#syntax->datum _%stx118360%_)
                    (if (box? _%stx118360%_)
                        (box (gx#syntax->datum (unbox _%stx118360%_)))
                        _%stx118360%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx118294%_ _%datum118295%_ _%src118296%_ _%quote?118297%_)
        (letrec ((_%wrap-datum118299%_
                  (lambda (_%e118332%_ _%marks118333%_)
                    (_%wrap-inner118301%_
                     _%e118332%_
                     (lambda (_%g118334118336%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g118334118336%_
                        _%src118296%_
                        _%marks118333%_)))))
                 (_%wrap-quote118300%_
                  (lambda (_%e118324%_ _%ctx118325%_ _%marks118326%_)
                    (_%wrap-inner118301%_
                     _%e118324%_
                     (lambda (_%g118327118329%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g118327118329%_
                        _%src118296%_
                        _%ctx118325%_
                        _%marks118326%_)))))
                 (_%wrap-inner118301%_
                  (lambda (_%e118312%_ _%wrap-e118313%_)
                    (let _%recur118315%_ ((_%e118317%_ _%e118312%_))
                      (if (symbol? _%e118317%_)
                          (_%wrap-e118313%_ _%e118317%_)
                          (if (pair? _%e118317%_)
                              (cons (_%recur118315%_ (##car _%e118317%_))
                                    (_%recur118315%_ (##cdr _%e118317%_)))
                              (if (vector? _%e118317%_)
                                  (vector-map _%recur118315%_ _%e118317%_)
                                  (if (box? _%e118317%_)
                                      (box (_%recur118315%_
                                            (unbox _%e118317%_)))
                                      _%e118317%_)))))))
                 (_%wrap-outer118302%_
                  (lambda (_%e118310%_)
                    (if (##structure-instance-of? _%e118310%_ 'gerbil#AST::t)
                        _%e118310%_
                        (##structure gx#AST::t _%e118310%_ _%src118296%_)))))
          (if (##structure-instance-of? _%datum118295%_ 'gerbil#AST::t)
              _%datum118295%_
              (if (not _%stx118294%_)
                  (##structure gx#AST::t _%datum118295%_ _%src118296%_)
                  (if (gx#identifier? _%stx118294%_)
                      (let ((_%stx118307%_ (gx#stx-unwrap__0 _%stx118294%_)))
                        (_%wrap-outer118302%_
                         (if (##structure-direct-instance-of?
                              _%stx118307%_
                              'gx#syntax-quote::t)
                             (if _%quote?118297%_
                                 (_%wrap-quote118300%_
                                  _%datum118295%_
                                  (##unchecked-structure-ref
                                   _%stx118307%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx118307%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum118299%_
                                  _%datum118295%_
                                  (##unchecked-structure-ref
                                   _%stx118307%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum118299%_
                              _%datum118295%_
                              (##unchecked-structure-ref
                               _%stx118307%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx118294%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx118342%_ _%datum118343%_)
        (let* ((_%src118345%_ '#f) (_%quote?118347%_ '#t))
          (gx#datum->syntax__%
           _%stx118342%_
           _%datum118343%_
           _%src118345%_
           _%quote?118347%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx118349%_ _%datum118350%_ _%src118351%_)
        (let ((_%quote?118353%_ '#t))
          (gx#datum->syntax__%
           _%stx118349%_
           _%datum118350%_
           _%src118351%_
           _%quote?118353%_))))
    (define gx#datum->syntax
      (lambda _g118494_
        (let ((_g118493_ (##length _g118494_)))
          (cond ((##fx= _g118493_ 2) (apply gx#datum->syntax__0 _g118494_))
                ((##fx= _g118493_ 3) (apply gx#datum->syntax__1 _g118494_))
                ((##fx= _g118493_ 4) (apply gx#datum->syntax__% _g118494_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g118494_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx118260%_ _%marks118261%_)
        (let _%lp118263%_ ((_%e118265%_ _%stx118260%_)
                           (_%marks118266%_ _%marks118261%_)
                           (_%src118267%_ (gx#stx-source _%stx118260%_)))
          (if (##structure-direct-instance-of? _%e118265%_ 'gx#syntax-wrap::t)
              (_%lp118263%_
               (##unchecked-structure-ref _%e118265%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e118265%_ '3 '#f '#f)
                _%marks118266%_)
               (##unchecked-structure-ref _%e118265%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e118265%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks118266%_)
                      _%e118265%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e118265%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e118265%_ '2 '#f '#f)
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e118265%_ '3 '#f '#f)
                        _%marks118266%_)))
                  (if (##structure-direct-instance-of?
                       _%e118265%_
                       'gx#syntax-quote::t)
                      _%e118265%_
                      (if (##structure-instance-of? _%e118265%_ 'gerbil#AST::t)
                          (_%lp118263%_
                           (##unchecked-structure-ref _%e118265%_ '1 '#f '#f)
                           _%marks118266%_
                           (##unchecked-structure-ref _%e118265%_ '2 '#f '#f))
                          (if (symbol? _%e118265%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e118265%_
                               _%src118267%_
                               (reverse _%marks118266%_))
                              (if (null? _%marks118266%_)
                                  _%e118265%_
                                  (if (pair? _%e118265%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e118265%_)
                                             _%marks118266%_)
                                            (gx#stx-wrap
                                             (##cdr _%e118265%_)
                                             _%marks118266%_))
                                      (if (vector? _%e118265%_)
                                          (vector-map
                                           (lambda (_%g118276118278%_)
                                             (gx#stx-wrap
                                              _%g118276118278%_
                                              _%marks118266%_))
                                           _%e118265%_)
                                          (if (box? _%e118265%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e118265%_)
                                                    _%marks118266%_))
                                              _%e118265%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx118286%_)
        (let ((_%marks118288%_ '()))
          (gx#stx-unwrap__% _%stx118286%_ _%marks118288%_))))
    (define gx#stx-unwrap
      (lambda _g118496_
        (let ((_g118495_ (##length _g118496_)))
          (cond ((##fx= _g118495_ 1) (apply gx#stx-unwrap__0 _g118496_))
                ((##fx= _g118495_ 2) (apply gx#stx-unwrap__% _g118496_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g118496_))))))
    (define gx#stx-wrap
      (lambda (_%stx118253%_ _%marks118254%_)
        (__foldl1
         (lambda (_%mark118256%_ _%stx118257%_)
           (gx#stx-apply-mark _%stx118257%_ _%mark118256%_))
         _%stx118253%_
         _%marks118254%_)))
    (define gx#stx-rewrap
      (lambda (_%stx118247%_ _%marks118248%_)
        (__foldr1
         (lambda (_%mark118250%_ _%stx118251%_)
           (gx#stx-apply-mark _%stx118251%_ _%mark118250%_))
         _%stx118247%_
         _%marks118248%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx118241%_ _%mark118242%_)
        (if (##structure-direct-instance-of? _%stx118241%_ 'gx#syntax-quote::t)
            _%stx118241%_
            (if (and (##structure-direct-instance-of?
                      _%stx118241%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark118242%_
                          (##unchecked-structure-ref
                           _%stx118241%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx118241%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx118241%_
                 (gx#stx-source _%stx118241%_)
                 _%mark118242%_)))))
    (define gx#apply-mark
      (lambda (_%mark118205%_ _%marks118206%_)
        (let* ((_%marks118207118215%_ _%marks118206%_)
               (_%else118209118223%_
                (lambda () (cons _%mark118205%_ _%marks118206%_)))
               (_%K118211118229%_
                (lambda (_%rest118226%_ _%hd118227%_)
                  (if (eq? _%mark118205%_ _%hd118227%_)
                      _%rest118226%_
                      (cons _%mark118205%_ _%marks118206%_)))))
          (if (pair? _%marks118207118215%_)
              (let ((_%hd118212118232%_ (##car _%marks118207118215%_))
                    (_%tl118213118234%_ (##cdr _%marks118207118215%_)))
                (let* ((_%hd118237%_ _%hd118212118232%_)
                       (_%rest118239%_ _%tl118213118234%_))
                  (_%K118211118229%_ _%rest118239%_ _%hd118237%_)))
              (_%else118209118223%_)))))
    (define gx#stx-e
      (lambda (_%stx118200%_)
        (if (##structure-direct-instance-of? _%stx118200%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx118200%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx118200%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx118200%_ '1 '#f '#f)
                _%stx118200%_))))
    (define gx#stx-source
      (lambda (_%stx118198%_)
        (if (##structure-instance-of? _%stx118198%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx118198%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx118192%_ _%src118193%_)
        (if (or (##structure-instance-of? _%stx118192%_ 'gerbil#AST::t)
                (not _%src118193%_))
            _%stx118192%_
            (##structure gx#AST::t _%stx118192%_ _%src118193%_))))
    (define gx#stx-datum?
      (lambda (_%stx118190%_) (gx#self-quoting? (gx#stx-e _%stx118190%_))))
    (define gx#self-quoting?
      (lambda (_%x118173%_)
        (let ((_%$e118175%_ (immediate? _%x118173%_)))
          (if _%$e118175%_
              _%$e118175%_
              (let ((_%$e118178%_ (number? _%x118173%_)))
                (if _%$e118178%_
                    _%$e118178%_
                    (let ((_%$e118181%_ (keyword? _%x118173%_)))
                      (if _%$e118181%_
                          _%$e118181%_
                          (let ((_%$e118184%_ (string? _%x118173%_)))
                            (if _%$e118184%_
                                _%$e118184%_
                                (let ((_%$e118187%_ (vector? _%x118173%_)))
                                  (if _%$e118187%_
                                      _%$e118187%_
                                      (u8vector? _%x118173%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e118171%_) (boolean? (gx#stx-e _%e118171%_))))
    (define gx#stx-keyword?
      (lambda (_%e118169%_) (keyword? (gx#stx-e _%e118169%_))))
    (define gx#stx-char? (lambda (_%e118167%_) (char? (gx#stx-e _%e118167%_))))
    (define gx#stx-number?
      (lambda (_%e118165%_) (number? (gx#stx-e _%e118165%_))))
    (define gx#stx-fixnum?
      (lambda (_%e118163%_) (fixnum? (gx#stx-e _%e118163%_))))
    (define gx#stx-string?
      (lambda (_%e118161%_) (string? (gx#stx-e _%e118161%_))))
    (define gx#stx-null? (lambda (_%e118159%_) (null? (gx#stx-e _%e118159%_))))
    (define gx#stx-pair? (lambda (_%e118157%_) (pair? (gx#stx-e _%e118157%_))))
    (define gx#stx-list?
      (lambda (_%e118119%_)
        (let* ((_%g118120118129%_ (gx#stx-e _%e118119%_))
               (_%E118123118133%_
                (lambda ()
                  (error '"No clause matching"
                         _%g118120118129%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K118125118149%_
                 (lambda (_%rest118147%_) (gx#stx-list? _%rest118147%_)))
                (_%K118124118139%_
                 (lambda (_%tail118137%_) (null? _%tail118137%_))))
            (if (pair? _%g118120118129%_)
                (let* ((_%tl118127118152%_ (##cdr _%g118120118129%_))
                       (_%rest118155%_ _%tl118127118152%_))
                  (gx#stx-list? _%rest118155%_))
                (let ((_%tail118142%_ _%g118120118129%_))
                  (null? _%tail118142%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e118112%_)
        (let* ((_%e118114%_ (gx#stx-e _%e118112%_))
               (_%$e118116%_ (pair? _%e118114%_)))
          (if _%$e118116%_ _%$e118116%_ (null? _%e118114%_)))))
    (define gx#stx-vector?
      (lambda (_%e118110%_) (vector? (gx#stx-e _%e118110%_))))
    (define gx#stx-box? (lambda (_%e118108%_) (box? (gx#stx-e _%e118108%_))))
    (define gx#stx-eq?
      (lambda (_%x118105%_ _%y118106%_)
        (eq? (gx#stx-e _%x118105%_) (gx#stx-e _%y118106%_))))
    (define gx#stx-eqv?
      (lambda (_%x118102%_ _%y118103%_)
        (eqv? (gx#stx-e _%x118102%_) (gx#stx-e _%y118103%_))))
    (define gx#stx-equal?
      (lambda (_%x118099%_ _%y118100%_)
        (equal? (gx#stx-e _%x118099%_) (gx#stx-e _%y118100%_))))
    (define gx#stx-false? (lambda (_%x118097%_) (not (gx#stx-e _%x118097%_))))
    (define gx#stx-identifier
      (lambda (_%template118094%_ . _%args118095%_)
        (gx#datum->syntax__1
         _%template118094%_
         (apply make-symbol (gx#syntax->datum _%args118095%_))
         (gx#stx-source _%template118094%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx118092%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx118092%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx118087%_)
        (if (##structure-direct-instance-of?
             _%stx118087%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx118087%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx118087%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx118087%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx118087%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx118083%_)
        (let ((_%stx118085%_ (gx#stx-unwrap__0 _%stx118083%_)))
          (if (gx#identifier-quote? _%stx118085%_)
              (##unchecked-structure-ref _%stx118085%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx118038%_)
        (let* ((_%g118039118049%_ (gx#stx-e _%stx118038%_))
               (_%else118042118057%_ (lambda () '#f)))
          (let ((_%K118045118071%_
                 (lambda (_%rest118068%_ _%hd118069%_)
                   (if (gx#identifier? _%hd118069%_)
                       (gx#identifier-list? _%rest118068%_)
                       '#f)))
                (_%K118044118062%_ (lambda () '#t)))
            (let ((_%try-match118041118065%_
                   (lambda ()
                     (if (null? _%g118039118049%_)
                         (_%K118044118062%_)
                         (_%else118042118057%_)))))
              (if (pair? _%g118039118049%_)
                  (let ((_%tl118047118076%_ (##cdr _%g118039118049%_))
                        (_%hd118046118074%_ (##car _%g118039118049%_)))
                    (let ((_%hd118079%_ _%hd118046118074%_)
                          (_%rest118081%_ _%tl118047118076%_))
                      (_%K118045118071%_ _%rest118081%_ _%hd118079%_)))
                  (_%try-match118041118065%_)))))))
    (define gx#genident__%
      (lambda (_%e118015%_ _%src118016%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e118018%_ (gx#stx-e _%e118015%_)))
                   (if (interned-symbol? _%e118018%_) _%e118018%_ 'g)))
         (let ((_%$e118020%_ (gx#stx-source _%e118015%_)))
           (if _%$e118020%_ _%$e118020%_ _%src118016%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e118027%_ 'g) (_%src118029%_ '#f))
          (gx#genident__% _%e118027%_ _%src118029%_))))
    (define gx#genident__1
      (lambda (_%e118031%_)
        (let ((_%src118033%_ '#f))
          (gx#genident__% _%e118031%_ _%src118033%_))))
    (define gx#genident
      (lambda _g118498_
        (let ((_g118497_ (##length _g118498_)))
          (cond ((##fx= _g118497_ 0) (apply gx#genident__0 _g118498_))
                ((##fx= _g118497_ 1) (apply gx#genident__1 _g118498_))
                ((##fx= _g118497_ 2) (apply gx#genident__% _g118498_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g118498_))))))
    (define gx#gentemps
      (lambda (_%stx-lst118012%_) (gx#stx-map1 gx#genident _%stx-lst118012%_)))
    (define gx#syntax->list
      (lambda (_%stx118010%_) (gx#stx-map1 values _%stx118010%_)))
    (define gx#stx-car
      (lambda (_%stx118007%_)
        (declare (safe))
        (car (gx#syntax-e _%stx118007%_))))
    (define gx#stx-cdr
      (lambda (_%stx118004%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx118004%_))))
    (define gx#stx-length
      (lambda (_%stx117969%_)
        (let _%lp117971%_ ((_%rest117973%_ _%stx117969%_) (_%n117974%_ '0))
          (let* ((_%g117975117983%_ (gx#stx-e _%rest117973%_))
                 (_%else117977117991%_ (lambda () _%n117974%_))
                 (_%K117979117996%_
                  (lambda (_%rest117994%_)
                    (_%lp117971%_ _%rest117994%_ (##fx+ _%n117974%_ '1)))))
            (if (pair? _%g117975117983%_)
                (let* ((_%tl117981117999%_ (##cdr _%g117975117983%_))
                       (_%rest118002%_ _%tl117981117999%_))
                  (_%K117979117996%_ _%rest118002%_))
                (_%else117977117991%_))))))
    (define gx#stx-for-each
      (lambda _g118500_
        (let ((_g118499_ (##length _g118500_)))
          (cond ((##fx= _g118499_ 2) (apply gx#stx-for-each1 _g118500_))
                ((##fx= _g118499_ 3) (apply gx#stx-for-each2 _g118500_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g118500_))))))
    (define gx#stx-for-each1
      (lambda (_%f117912%_ _%stx117913%_)
        (if (procedure? _%f117912%_)
            '#!void
            (error '"expected procedure" _%f117912%_))
        (let _%lp117915%_ ((_%rest117917%_ _%stx117913%_))
          (let* ((_%g117918117928%_ (gx#syntax-e _%rest117917%_))
                 (_%else117921117936%_
                  (lambda () (_%f117912%_ _%rest117917%_))))
            (let ((_%K117924117950%_
                   (lambda (_%rest117947%_ _%hd117948%_)
                     (_%f117912%_ _%hd117948%_)
                     (_%lp117915%_ _%rest117947%_)))
                  (_%K117923117941%_ (lambda () '#!void)))
              (let ((_%try-match117920117944%_
                     (lambda ()
                       (if (null? _%g117918117928%_)
                           (_%K117923117941%_)
                           (_%else117921117936%_)))))
                (if (pair? _%g117918117928%_)
                    (let ((_%tl117926117955%_ (##cdr _%g117918117928%_))
                          (_%hd117925117953%_ (##car _%g117918117928%_)))
                      (let ((_%hd117958%_ _%hd117925117953%_)
                            (_%rest117960%_ _%tl117926117955%_))
                        (_%K117924117950%_ _%rest117960%_ _%hd117958%_)))
                    (_%try-match117920117944%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f117817%_ _%xstx117818%_ _%ystx117819%_)
        (if (procedure? _%f117817%_)
            '#!void
            (error '"expected procedure" _%f117817%_))
        (let _%lp117821%_ ((_%xrest117823%_ _%xstx117818%_)
                           (_%yrest117824%_ _%ystx117819%_))
          (let* ((_%g117825117835%_ (gx#syntax-e _%xrest117823%_))
                 (_%else117828117843%_ (lambda () '#!void)))
            (let ((_%K117831117900%_
                   (lambda (_%xrest117869%_ _%xhd117870%_)
                     (let* ((_%g117871117878%_ (gx#syntax-e _%yrest117824%_))
                            (_%E117873117882%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g117871117878%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K117874117888%_
                             (lambda (_%yrest117885%_ _%yhd117886%_)
                               (_%f117817%_ _%xhd117870%_ _%yhd117886%_)
                               (_%lp117821%_
                                _%xrest117869%_
                                _%yrest117885%_))))
                       (if (pair? _%g117871117878%_)
                           (let ((_%hd117875117891%_ (##car _%g117871117878%_))
                                 (_%tl117876117893%_
                                  (##cdr _%g117871117878%_)))
                             (let* ((_%yhd117896%_ _%hd117875117891%_)
                                    (_%yrest117898%_ _%tl117876117893%_))
                               (_%K117874117888%_
                                _%yrest117898%_
                                _%yhd117896%_)))
                           (_%E117873117882%_)))))
                  (_%K117830117863%_
                   (lambda ()
                     (let* ((_%yrest117847117852%_ _%yrest117824%_)
                            (_%E117849117856%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest117847117852%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K117850117860%_
                             (lambda ()
                               (_%f117817%_ _%xrest117823%_ _%yrest117824%_))))
                       (if (gx#stx-null? _%yrest117847117852%_)
                           (_%E117849117856%_)
                           (_%K117850117860%_))))))
              (let ((_%try-match117827117866%_
                     (lambda ()
                       (if (null? _%g117825117835%_)
                           (_%else117828117843%_)
                           (_%K117830117863%_)))))
                (if (pair? _%g117825117835%_)
                    (let ((_%tl117833117905%_ (##cdr _%g117825117835%_))
                          (_%hd117832117903%_ (##car _%g117825117835%_)))
                      (let ((_%xhd117908%_ _%hd117832117903%_)
                            (_%xrest117910%_ _%tl117833117905%_))
                        (_%K117831117900%_ _%xrest117910%_ _%xhd117908%_)))
                    (_%try-match117827117866%_))))))))
    (define gx#stx-map
      (lambda _g118502_
        (let ((_g118501_ (##length _g118502_)))
          (cond ((##fx= _g118501_ 2) (apply gx#stx-map1 _g118502_))
                ((##fx= _g118501_ 3) (apply gx#stx-map2 _g118502_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g118502_))))))
    (define gx#stx-map1
      (lambda (_%f117760%_ _%stx117761%_)
        (if (procedure? _%f117760%_)
            '#!void
            (error '"expected procedure" _%f117760%_))
        (let _%recur117763%_ ((_%rest117765%_ _%stx117761%_))
          (let* ((_%g117766117776%_ (gx#syntax-e _%rest117765%_))
                 (_%else117769117784%_
                  (lambda () (_%f117760%_ _%rest117765%_))))
            (let ((_%K117772117798%_
                   (lambda (_%rest117795%_ _%hd117796%_)
                     (cons (_%f117760%_ _%hd117796%_)
                           (_%recur117763%_ _%rest117795%_))))
                  (_%K117771117789%_ (lambda () '())))
              (let ((_%try-match117768117792%_
                     (lambda ()
                       (if (null? _%g117766117776%_)
                           (_%K117771117789%_)
                           (_%else117769117784%_)))))
                (if (pair? _%g117766117776%_)
                    (let ((_%tl117774117803%_ (##cdr _%g117766117776%_))
                          (_%hd117773117801%_ (##car _%g117766117776%_)))
                      (let ((_%hd117806%_ _%hd117773117801%_)
                            (_%rest117808%_ _%tl117774117803%_))
                        (_%K117772117798%_ _%rest117808%_ _%hd117806%_)))
                    (_%try-match117768117792%_))))))))
    (define gx#stx-map2
      (lambda (_%f117665%_ _%xstx117666%_ _%ystx117667%_)
        (if (procedure? _%f117665%_)
            '#!void
            (error '"expected procedure" _%f117665%_))
        (let _%recur117669%_ ((_%xrest117671%_ _%xstx117666%_)
                              (_%yrest117672%_ _%ystx117667%_))
          (let* ((_%g117673117683%_ (gx#syntax-e _%xrest117671%_))
                 (_%else117676117691%_ (lambda () '())))
            (let ((_%K117679117748%_
                   (lambda (_%xrest117717%_ _%xhd117718%_)
                     (let* ((_%g117719117726%_ (gx#syntax-e _%yrest117672%_))
                            (_%E117721117730%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g117719117726%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K117722117736%_
                             (lambda (_%yrest117733%_ _%yhd117734%_)
                               (cons (_%f117665%_ _%xhd117718%_ _%yhd117734%_)
                                     (_%recur117669%_
                                      _%xrest117717%_
                                      _%yrest117733%_)))))
                       (if (pair? _%g117719117726%_)
                           (let ((_%hd117723117739%_ (##car _%g117719117726%_))
                                 (_%tl117724117741%_
                                  (##cdr _%g117719117726%_)))
                             (let* ((_%yhd117744%_ _%hd117723117739%_)
                                    (_%yrest117746%_ _%tl117724117741%_))
                               (_%K117722117736%_
                                _%yrest117746%_
                                _%yhd117744%_)))
                           (_%E117721117730%_)))))
                  (_%K117678117711%_
                   (lambda ()
                     (let* ((_%yrest117695117700%_ _%yrest117672%_)
                            (_%E117697117704%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest117695117700%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K117698117708%_
                             (lambda ()
                               (_%f117665%_ _%xrest117671%_ _%yrest117672%_))))
                       (if (gx#stx-null? _%yrest117695117700%_)
                           (_%E117697117704%_)
                           (_%K117698117708%_))))))
              (let ((_%try-match117675117714%_
                     (lambda ()
                       (if (null? _%g117673117683%_)
                           (_%else117676117691%_)
                           (_%K117678117711%_)))))
                (if (pair? _%g117673117683%_)
                    (let ((_%tl117681117753%_ (##cdr _%g117673117683%_))
                          (_%hd117680117751%_ (##car _%g117673117683%_)))
                      (let ((_%xhd117756%_ _%hd117680117751%_)
                            (_%xrest117758%_ _%tl117681117753%_))
                        (_%K117679117748%_ _%xrest117758%_ _%xhd117756%_)))
                    (_%try-match117675117714%_))))))))
    (define gx#stx-andmap
      (lambda (_%f117615%_ _%stx117616%_)
        (if (procedure? _%f117615%_)
            '#!void
            (error '"expected procedure" _%f117615%_))
        (let _%lp117618%_ ((_%rest117620%_ _%stx117616%_))
          (let* ((_%g117621117631%_ (gx#syntax-e _%rest117620%_))
                 (_%else117624117639%_
                  (lambda () (_%f117615%_ _%rest117620%_))))
            (let ((_%K117627117653%_
                   (lambda (_%rest117650%_ _%hd117651%_)
                     (if (_%f117615%_ _%hd117651%_)
                         (_%lp117618%_ _%rest117650%_)
                         '#f)))
                  (_%K117626117644%_ (lambda () '#t)))
              (let ((_%try-match117623117647%_
                     (lambda ()
                       (if (null? _%g117621117631%_)
                           (_%K117626117644%_)
                           (_%else117624117639%_)))))
                (if (pair? _%g117621117631%_)
                    (let ((_%tl117629117658%_ (##cdr _%g117621117631%_))
                          (_%hd117628117656%_ (##car _%g117621117631%_)))
                      (let ((_%hd117661%_ _%hd117628117656%_)
                            (_%rest117663%_ _%tl117629117658%_))
                        (_%K117627117653%_ _%rest117663%_ _%hd117661%_)))
                    (_%try-match117623117647%_))))))))
    (define gx#stx-ormap
      (lambda (_%f117562%_ _%stx117563%_)
        (if (procedure? _%f117562%_)
            '#!void
            (error '"expected procedure" _%f117562%_))
        (let _%lp117565%_ ((_%rest117567%_ _%stx117563%_))
          (let* ((_%g117568117578%_ (gx#syntax-e _%rest117567%_))
                 (_%else117571117586%_
                  (lambda () (_%f117562%_ _%rest117567%_))))
            (let ((_%K117574117603%_
                   (lambda (_%rest117597%_ _%hd117598%_)
                     (let ((_%$e117600%_ (_%f117562%_ _%hd117598%_)))
                       (if _%$e117600%_
                           _%$e117600%_
                           (_%lp117565%_ _%rest117597%_)))))
                  (_%K117573117591%_ (lambda () '#f)))
              (let ((_%try-match117570117594%_
                     (lambda ()
                       (if (null? _%g117568117578%_)
                           (_%K117573117591%_)
                           (_%else117571117586%_)))))
                (if (pair? _%g117568117578%_)
                    (let ((_%tl117576117608%_ (##cdr _%g117568117578%_))
                          (_%hd117575117606%_ (##car _%g117568117578%_)))
                      (let ((_%hd117611%_ _%hd117575117606%_)
                            (_%rest117613%_ _%tl117576117608%_))
                        (_%K117574117603%_ _%rest117613%_ _%hd117611%_)))
                    (_%try-match117570117594%_))))))))
    (define gx#stx-foldl
      (lambda (_%f117510%_ _%iv117511%_ _%stx117512%_)
        (if (procedure? _%f117510%_)
            '#!void
            (error '"expected procedure" _%f117510%_))
        (let _%lp117514%_ ((_%r117516%_ _%iv117511%_)
                           (_%rest117517%_ _%stx117512%_))
          (let* ((_%g117518117528%_ (gx#syntax-e _%rest117517%_))
                 (_%else117521117536%_
                  (lambda () (_%f117510%_ _%rest117517%_ _%r117516%_))))
            (let ((_%K117524117550%_
                   (lambda (_%rest117547%_ _%hd117548%_)
                     (_%lp117514%_
                      (_%f117510%_ _%hd117548%_ _%r117516%_)
                      _%rest117547%_)))
                  (_%K117523117541%_ (lambda () _%r117516%_)))
              (let ((_%try-match117520117544%_
                     (lambda ()
                       (if (null? _%g117518117528%_)
                           (_%K117523117541%_)
                           (_%else117521117536%_)))))
                (if (pair? _%g117518117528%_)
                    (let ((_%tl117526117555%_ (##cdr _%g117518117528%_))
                          (_%hd117525117553%_ (##car _%g117518117528%_)))
                      (let ((_%hd117558%_ _%hd117525117553%_)
                            (_%rest117560%_ _%tl117526117555%_))
                        (_%K117524117550%_ _%rest117560%_ _%hd117558%_)))
                    (_%try-match117520117544%_))))))))
    (define gx#stx-foldr
      (lambda (_%f117459%_ _%iv117460%_ _%stx117461%_)
        (if (procedure? _%f117459%_)
            '#!void
            (error '"expected procedure" _%f117459%_))
        (let _%recur117463%_ ((_%rest117465%_ _%stx117461%_))
          (let* ((_%g117466117476%_ (gx#syntax-e _%rest117465%_))
                 (_%else117469117484%_
                  (lambda () (_%f117459%_ _%rest117465%_ _%iv117460%_))))
            (let ((_%K117472117498%_
                   (lambda (_%rest117495%_ _%hd117496%_)
                     (_%f117459%_
                      _%hd117496%_
                      (_%recur117463%_ _%rest117495%_))))
                  (_%K117471117489%_ (lambda () _%iv117460%_)))
              (let ((_%try-match117468117492%_
                     (lambda ()
                       (if (null? _%g117466117476%_)
                           (_%K117471117489%_)
                           (_%else117469117484%_)))))
                (if (pair? _%g117466117476%_)
                    (let ((_%tl117474117503%_ (##cdr _%g117466117476%_))
                          (_%hd117473117501%_ (##car _%g117466117476%_)))
                      (let ((_%hd117506%_ _%hd117473117501%_)
                            (_%rest117508%_ _%tl117474117503%_))
                        (_%K117472117498%_ _%rest117508%_ _%hd117506%_)))
                    (_%try-match117468117492%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx117457%_) (gx#stx-foldl cons '() _%stx117457%_)))
    (define gx#stx-last
      (lambda (_%stx117418%_)
        (let _%lp117420%_ ((_%rest117422%_ _%stx117418%_))
          (let* ((_%g117423117431%_ (gx#syntax-e _%rest117422%_))
                 (_%else117425117439%_ (lambda () _%rest117422%_))
                 (_%K117427117445%_
                  (lambda (_%rest117442%_ _%hd117443%_)
                    (if (gx#stx-null? _%rest117442%_)
                        _%hd117443%_
                        (_%lp117420%_ _%rest117442%_)))))
            (if (pair? _%g117423117431%_)
                (let ((_%hd117428117448%_ (##car _%g117423117431%_))
                      (_%tl117429117450%_ (##cdr _%g117423117431%_)))
                  (let* ((_%hd117453%_ _%hd117428117448%_)
                         (_%rest117455%_ _%tl117429117450%_))
                    (_%K117427117445%_ _%rest117455%_ _%hd117453%_)))
                (_%else117425117439%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx117389%_)
        (let _%lp117391%_ ((_%hd117393%_ _%stx117389%_))
          (let* ((_%g117394117401%_ (gx#syntax-e _%hd117393%_))
                 (_%E117396117405%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g117394117401%_
                           '([_ . rest]))
                    '#!void))
                 (_%K117397117410%_
                  (lambda (_%rest117408%_)
                    (if (gx#stx-pair? _%rest117408%_)
                        (_%lp117391%_ _%rest117408%_)
                        _%hd117393%_))))
            (if (pair? _%g117394117401%_)
                (let* ((_%tl117399117413%_ (##cdr _%g117394117401%_))
                       (_%rest117416%_ _%tl117399117413%_))
                  (_%K117397117410%_ _%rest117416%_))
                (_%E117396117405%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx117358%_ _%k117359%_)
        (let _%lp117361%_ ((_%rest117363%_ _%stx117358%_)
                           (_%k117364%_ _%k117359%_))
          (if (fxpositive? _%k117364%_)
              (let* ((_%g117365117372%_ (gx#syntax-e _%rest117363%_))
                     (_%E117367117376%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g117365117372%_
                               '([_ . rest]))
                        '#!void))
                     (_%K117368117381%_
                      (lambda (_%rest117379%_)
                        (_%lp117361%_ _%rest117379%_ (##fx- _%k117364%_ '1)))))
                (if (pair? _%g117365117372%_)
                    (let* ((_%tl117370117384%_ (##cdr _%g117365117372%_))
                           (_%rest117387%_ _%tl117370117384%_))
                      (_%K117368117381%_ _%rest117387%_))
                    (_%E117367117376%_)))
              _%rest117363%_))))
    (define gx#stx-list-ref
      (lambda (_%stx117355%_ _%k117356%_)
        (gx#stx-car (gx#stx-list-tail _%stx117355%_ _%k117356%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx117267%_ _%key?117268%_)
        (if (procedure? _%key?117268%_)
            '#!void
            (error '"expected procedure" _%key?117268%_))
        (let _%lp117270%_ ((_%rest117272%_ _%stx117267%_))
          (let* ((_%g117273117283%_ (gx#stx-e _%rest117272%_))
                 (_%else117276117291%_ (lambda () '#f)))
            (let ((_%K117279117333%_
                   (lambda (_%rest117302%_ _%hd117303%_)
                     (if (_%key?117268%_ _%hd117303%_)
                         (let* ((_%g117304117312%_ (gx#stx-e _%rest117302%_))
                                (_%else117306117320%_ (lambda () '#f))
                                (_%K117308117325%_
                                 (lambda (_%rest117323%_)
                                   (_%lp117270%_ _%rest117323%_))))
                           (if (pair? _%g117304117312%_)
                               (let* ((_%tl117310117328%_
                                       (##cdr _%g117304117312%_))
                                      (_%rest117331%_ _%tl117310117328%_))
                                 (_%lp117270%_ _%rest117331%_))
                               (_%else117306117320%_)))
                         '#f)))
                  (_%K117278117296%_ (lambda () '#t)))
              (let ((_%try-match117275117299%_
                     (lambda ()
                       (if (null? _%g117273117283%_)
                           (_%K117278117296%_)
                           (_%else117276117291%_)))))
                (if (pair? _%g117273117283%_)
                    (let ((_%tl117281117338%_ (##cdr _%g117273117283%_))
                          (_%hd117280117336%_ (##car _%g117273117283%_)))
                      (let ((_%hd117341%_ _%hd117280117336%_)
                            (_%rest117343%_ _%tl117281117338%_))
                        (_%K117279117333%_ _%rest117343%_ _%hd117341%_)))
                    (_%try-match117275117299%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx117348%_)
        (let ((_%key?117350%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx117348%_ _%key?117350%_))))
    (define gx#stx-plist?
      (lambda _g118504_
        (let ((_g118503_ (##length _g118504_)))
          (cond ((##fx= _g118503_ 1) (apply gx#stx-plist?__0 _g118504_))
                ((##fx= _g118503_ 2) (apply gx#stx-plist?__% _g118504_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g118504_))))))
    (define gx#stx-getq__%
      (lambda (_%key117185%_ _%stx117186%_ _%key=?117187%_)
        (if (procedure? _%key=?117187%_)
            '#!void
            (error '"expected procedure" _%key=?117187%_))
        (let _%lp117189%_ ((_%rest117191%_ _%stx117186%_))
          (let* ((_%g117192117200%_ (gx#syntax-e _%rest117191%_))
                 (_%else117194117208%_ (lambda () '#f))
                 (_%K117196117242%_
                  (lambda (_%rest117211%_ _%hd117212%_)
                    (let* ((_%g117213117220%_ (gx#syntax-e _%rest117211%_))
                           (_%E117215117224%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g117213117220%_
                                     '([val . rest]))
                              '#!void))
                           (_%K117216117230%_
                            (lambda (_%rest117227%_ _%val117228%_)
                              (if (_%key=?117187%_ _%hd117212%_ _%key117185%_)
                                  _%val117228%_
                                  (_%lp117189%_ _%rest117227%_)))))
                      (if (pair? _%g117213117220%_)
                          (let ((_%hd117217117233%_ (##car _%g117213117220%_))
                                (_%tl117218117235%_ (##cdr _%g117213117220%_)))
                            (let* ((_%val117238%_ _%hd117217117233%_)
                                   (_%rest117240%_ _%tl117218117235%_))
                              (_%K117216117230%_
                               _%rest117240%_
                               _%val117238%_)))
                          (_%E117215117224%_))))))
            (if (pair? _%g117192117200%_)
                (let ((_%hd117197117245%_ (##car _%g117192117200%_))
                      (_%tl117198117247%_ (##cdr _%g117192117200%_)))
                  (let* ((_%hd117250%_ _%hd117197117245%_)
                         (_%rest117252%_ _%tl117198117247%_))
                    (_%K117196117242%_ _%rest117252%_ _%hd117250%_)))
                (_%else117194117208%_))))))
    (define gx#stx-getq__0
      (lambda (_%key117257%_ _%stx117258%_)
        (let ((_%key=?117260%_ gx#stx-eq?))
          (gx#stx-getq__% _%key117257%_ _%stx117258%_ _%key=?117260%_))))
    (define gx#stx-getq
      (lambda _g118506_
        (let ((_g118505_ (##length _g118506_)))
          (cond ((##fx= _g118505_ 2) (apply gx#stx-getq__0 _g118506_))
                ((##fx= _g118505_ 3) (apply gx#stx-getq__% _g118506_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g118506_))))))))

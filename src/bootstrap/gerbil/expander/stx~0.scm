(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1756224515)
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
      (lambda _%$args126302%_
        (apply make-instance gx#identifier-wrap::t _%$args126302%_)))
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
      (lambda _%$args126299%_
        (apply make-instance gx#syntax-wrap::t _%$args126299%_)))
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
      (lambda _%$args126296%_
        (apply make-instance gx#syntax-quote::t _%$args126296%_)))
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
      (lambda (_%stx126294%_) (symbol? (gx#stx-e _%stx126294%_))))
    (define gx#identifier-quote?
      (lambda (_%stx126292%_)
        (if (##structure-direct-instance-of? _%stx126292%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx126292%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx126287%_)
        (if (##structure-direct-instance-of? _%stx126287%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx126287%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx126287%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx126282%_)
        (if (##structure-direct-instance-of? _%stx126282%_ 'gx#syntax-quote::t)
            _%stx126282%_
            (if (##structure-direct-instance-of?
                 _%stx126282%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx126282%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx126256%_)
        (if (##structure-direct-instance-of? _%stx126256%_ 'gx#syntax-wrap::t)
            (let _%lp126259%_ ((_%e126261%_
                                (##unchecked-structure-ref
                                 _%stx126256%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks126262%_
                                (cons (##unchecked-structure-ref
                                       _%stx126256%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e126261%_)
                  (let ((_%$e126265%_
                         (##type-id (##structure-type _%e126261%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e126265%_)
                        (_%lp126259%_
                         (##unchecked-structure-ref _%e126261%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e126261%_ '3 '#f '#f)
                          _%marks126262%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e126265%_)
                                (eq? 'gx#identifier-wrap::t _%$e126265%_))
                            (##unchecked-structure-ref _%e126261%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e126265%_)
                                (_%lp126259%_
                                 (##unchecked-structure-ref
                                  _%e126261%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks126262%_)
                                _%e126261%_))))
                  (if (null? _%marks126262%_)
                      _%e126261%_
                      (if (pair? _%e126261%_)
                          (cons (gx#stx-wrap
                                 (##car _%e126261%_)
                                 _%marks126262%_)
                                (gx#stx-wrap
                                 (##cdr _%e126261%_)
                                 _%marks126262%_))
                          (if (vector? _%e126261%_)
                              (vector-map
                               (lambda (_%g126273126275%_)
                                 (gx#stx-wrap
                                  _%g126273126275%_
                                  _%marks126262%_))
                               _%e126261%_)
                              (if (box? _%e126261%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e126261%_)
                                        _%marks126262%_))
                                  _%e126261%_))))))
            (if (##structure-instance-of? _%stx126256%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx126256%_ '1 '#f '#f)
                _%stx126256%_))))
    (define gx#syntax->datum
      (lambda (_%stx126249%_)
        (if (##structure-instance-of? _%stx126249%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx126249%_ '1 '#f '#f))
            (if (pair? _%stx126249%_)
                (cons (gx#syntax->datum (##car _%stx126249%_))
                      (gx#syntax->datum (##cdr _%stx126249%_)))
                (if (vector? _%stx126249%_)
                    (vector-map gx#syntax->datum _%stx126249%_)
                    (if (box? _%stx126249%_)
                        (box (gx#syntax->datum (unbox _%stx126249%_)))
                        _%stx126249%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx126183%_ _%datum126184%_ _%src126185%_ _%quote?126186%_)
        (letrec ((_%wrap-datum126188%_
                  (lambda (_%e126221%_ _%marks126222%_)
                    (_%wrap-inner126190%_
                     _%e126221%_
                     (lambda (_%g126223126225%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g126223126225%_
                        _%src126185%_
                        _%marks126222%_)))))
                 (_%wrap-quote126189%_
                  (lambda (_%e126213%_ _%ctx126214%_ _%marks126215%_)
                    (_%wrap-inner126190%_
                     _%e126213%_
                     (lambda (_%g126216126218%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g126216126218%_
                        _%src126185%_
                        _%ctx126214%_
                        _%marks126215%_)))))
                 (_%wrap-inner126190%_
                  (lambda (_%e126201%_ _%wrap-e126202%_)
                    (let _%recur126204%_ ((_%e126206%_ _%e126201%_))
                      (if (symbol? _%e126206%_)
                          (_%wrap-e126202%_ _%e126206%_)
                          (if (pair? _%e126206%_)
                              (cons (_%recur126204%_ (##car _%e126206%_))
                                    (_%recur126204%_ (##cdr _%e126206%_)))
                              (if (vector? _%e126206%_)
                                  (vector-map _%recur126204%_ _%e126206%_)
                                  (if (box? _%e126206%_)
                                      (box (_%recur126204%_
                                            (unbox _%e126206%_)))
                                      _%e126206%_)))))))
                 (_%wrap-outer126191%_
                  (lambda (_%e126199%_)
                    (if (##structure-instance-of? _%e126199%_ 'gerbil#AST::t)
                        _%e126199%_
                        (##structure gx#AST::t _%e126199%_ _%src126185%_)))))
          (if (##structure-instance-of? _%datum126184%_ 'gerbil#AST::t)
              _%datum126184%_
              (if (not _%stx126183%_)
                  (##structure gx#AST::t _%datum126184%_ _%src126185%_)
                  (if (gx#identifier? _%stx126183%_)
                      (let ((_%stx126196%_ (gx#stx-unwrap__0 _%stx126183%_)))
                        (_%wrap-outer126191%_
                         (if (##structure-direct-instance-of?
                              _%stx126196%_
                              'gx#syntax-quote::t)
                             (if _%quote?126186%_
                                 (_%wrap-quote126189%_
                                  _%datum126184%_
                                  (##unchecked-structure-ref
                                   _%stx126196%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx126196%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum126188%_
                                  _%datum126184%_
                                  (##unchecked-structure-ref
                                   _%stx126196%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum126188%_
                              _%datum126184%_
                              (##unchecked-structure-ref
                               _%stx126196%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx126183%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx126231%_ _%datum126232%_)
        (let* ((_%src126234%_ '#f) (_%quote?126236%_ '#t))
          (gx#datum->syntax__%
           _%stx126231%_
           _%datum126232%_
           _%src126234%_
           _%quote?126236%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx126238%_ _%datum126239%_ _%src126240%_)
        (let ((_%quote?126242%_ '#t))
          (gx#datum->syntax__%
           _%stx126238%_
           _%datum126239%_
           _%src126240%_
           _%quote?126242%_))))
    (define gx#datum->syntax
      (lambda _g126382_
        (let ((_g126383_ (##length _g126382_)))
          (cond ((##fx= _g126383_ 2) (apply gx#datum->syntax__0 _g126382_))
                ((##fx= _g126383_ 3) (apply gx#datum->syntax__1 _g126382_))
                ((##fx= _g126383_ 4) (apply gx#datum->syntax__% _g126382_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g126382_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx126149%_ _%marks126150%_)
        (let _%lp126152%_ ((_%e126154%_ _%stx126149%_)
                           (_%marks126155%_ _%marks126150%_)
                           (_%src126156%_ (gx#stx-source _%stx126149%_)))
          (if (##structure-direct-instance-of? _%e126154%_ 'gx#syntax-wrap::t)
              (_%lp126152%_
               (##unchecked-structure-ref _%e126154%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e126154%_ '3 '#f '#f)
                _%marks126155%_)
               (##unchecked-structure-ref _%e126154%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e126154%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks126155%_)
                      _%e126154%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e126154%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e126154%_ '2 '#f '#f)
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e126154%_ '3 '#f '#f)
                        _%marks126155%_)))
                  (if (##structure-direct-instance-of?
                       _%e126154%_
                       'gx#syntax-quote::t)
                      _%e126154%_
                      (if (##structure-instance-of? _%e126154%_ 'gerbil#AST::t)
                          (_%lp126152%_
                           (##unchecked-structure-ref _%e126154%_ '1 '#f '#f)
                           _%marks126155%_
                           (##unchecked-structure-ref _%e126154%_ '2 '#f '#f))
                          (if (symbol? _%e126154%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e126154%_
                               _%src126156%_
                               (reverse _%marks126155%_))
                              (if (null? _%marks126155%_)
                                  _%e126154%_
                                  (if (pair? _%e126154%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e126154%_)
                                             _%marks126155%_)
                                            (gx#stx-wrap
                                             (##cdr _%e126154%_)
                                             _%marks126155%_))
                                      (if (vector? _%e126154%_)
                                          (vector-map
                                           (lambda (_%g126165126167%_)
                                             (gx#stx-wrap
                                              _%g126165126167%_
                                              _%marks126155%_))
                                           _%e126154%_)
                                          (if (box? _%e126154%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e126154%_)
                                                    _%marks126155%_))
                                              _%e126154%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx126175%_)
        (let ((_%marks126177%_ '()))
          (gx#stx-unwrap__% _%stx126175%_ _%marks126177%_))))
    (define gx#stx-unwrap
      (lambda _g126384_
        (let ((_g126385_ (##length _g126384_)))
          (cond ((##fx= _g126385_ 1) (apply gx#stx-unwrap__0 _g126384_))
                ((##fx= _g126385_ 2) (apply gx#stx-unwrap__% _g126384_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g126384_))))))
    (define gx#stx-wrap
      (lambda (_%stx126142%_ _%marks126143%_)
        (__foldl1
         (lambda (_%mark126145%_ _%stx126146%_)
           (gx#stx-apply-mark _%stx126146%_ _%mark126145%_))
         _%stx126142%_
         _%marks126143%_)))
    (define gx#stx-rewrap
      (lambda (_%stx126136%_ _%marks126137%_)
        (__foldr1
         (lambda (_%mark126139%_ _%stx126140%_)
           (gx#stx-apply-mark _%stx126140%_ _%mark126139%_))
         _%stx126136%_
         _%marks126137%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx126130%_ _%mark126131%_)
        (if (##structure-direct-instance-of? _%stx126130%_ 'gx#syntax-quote::t)
            _%stx126130%_
            (if (and (##structure-direct-instance-of?
                      _%stx126130%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark126131%_
                          (##unchecked-structure-ref
                           _%stx126130%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx126130%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx126130%_
                 (gx#stx-source _%stx126130%_)
                 _%mark126131%_)))))
    (define gx#apply-mark
      (lambda (_%mark126094%_ _%marks126095%_)
        (let* ((_%marks126096126104%_ _%marks126095%_)
               (_%else126098126112%_
                (lambda () (cons _%mark126094%_ _%marks126095%_)))
               (_%K126100126118%_
                (lambda (_%rest126115%_ _%hd126116%_)
                  (if (eq? _%mark126094%_ _%hd126116%_)
                      _%rest126115%_
                      (cons _%mark126094%_ _%marks126095%_)))))
          (if (pair? _%marks126096126104%_)
              (let ((_%hd126101126121%_ (##car _%marks126096126104%_))
                    (_%tl126102126123%_ (##cdr _%marks126096126104%_)))
                (let* ((_%hd126126%_ _%hd126101126121%_)
                       (_%rest126128%_ _%tl126102126123%_))
                  (_%K126100126118%_ _%rest126128%_ _%hd126126%_)))
              (_%else126098126112%_)))))
    (define gx#stx-e
      (lambda (_%stx126089%_)
        (if (##structure-direct-instance-of? _%stx126089%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx126089%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx126089%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx126089%_ '1 '#f '#f)
                _%stx126089%_))))
    (define gx#stx-source
      (lambda (_%stx126087%_)
        (if (##structure-instance-of? _%stx126087%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx126087%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx126081%_ _%src126082%_)
        (if (or (##structure-instance-of? _%stx126081%_ 'gerbil#AST::t)
                (not _%src126082%_))
            _%stx126081%_
            (##structure gx#AST::t _%stx126081%_ _%src126082%_))))
    (define gx#stx-datum?
      (lambda (_%stx126079%_) (gx#self-quoting? (gx#stx-e _%stx126079%_))))
    (define gx#self-quoting?
      (lambda (_%x126062%_)
        (let ((_%$e126064%_ (immediate? _%x126062%_)))
          (if _%$e126064%_
              _%$e126064%_
              (let ((_%$e126067%_ (number? _%x126062%_)))
                (if _%$e126067%_
                    _%$e126067%_
                    (let ((_%$e126070%_ (keyword? _%x126062%_)))
                      (if _%$e126070%_
                          _%$e126070%_
                          (let ((_%$e126073%_ (string? _%x126062%_)))
                            (if _%$e126073%_
                                _%$e126073%_
                                (let ((_%$e126076%_ (vector? _%x126062%_)))
                                  (if _%$e126076%_
                                      _%$e126076%_
                                      (u8vector? _%x126062%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e126060%_) (boolean? (gx#stx-e _%e126060%_))))
    (define gx#stx-keyword?
      (lambda (_%e126058%_) (keyword? (gx#stx-e _%e126058%_))))
    (define gx#stx-char? (lambda (_%e126056%_) (char? (gx#stx-e _%e126056%_))))
    (define gx#stx-number?
      (lambda (_%e126054%_) (number? (gx#stx-e _%e126054%_))))
    (define gx#stx-fixnum?
      (lambda (_%e126052%_) (fixnum? (gx#stx-e _%e126052%_))))
    (define gx#stx-string?
      (lambda (_%e126050%_) (string? (gx#stx-e _%e126050%_))))
    (define gx#stx-null? (lambda (_%e126048%_) (null? (gx#stx-e _%e126048%_))))
    (define gx#stx-pair? (lambda (_%e126046%_) (pair? (gx#stx-e _%e126046%_))))
    (define gx#stx-list?
      (lambda (_%e126008%_)
        (let* ((_%g126009126018%_ (gx#stx-e _%e126008%_))
               (_%E126012126022%_
                (lambda ()
                  (error '"No clause matching"
                         _%g126009126018%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K126014126038%_
                 (lambda (_%rest126036%_) (gx#stx-list? _%rest126036%_)))
                (_%K126013126028%_
                 (lambda (_%tail126026%_) (null? _%tail126026%_))))
            (if (pair? _%g126009126018%_)
                (let* ((_%tl126016126041%_ (##cdr _%g126009126018%_))
                       (_%rest126044%_ _%tl126016126041%_))
                  (gx#stx-list? _%rest126044%_))
                (let ((_%tail126031%_ _%g126009126018%_))
                  (null? _%tail126031%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e126001%_)
        (let* ((_%e126003%_ (gx#stx-e _%e126001%_))
               (_%$e126005%_ (pair? _%e126003%_)))
          (if _%$e126005%_ _%$e126005%_ (null? _%e126003%_)))))
    (define gx#stx-vector?
      (lambda (_%e125999%_) (vector? (gx#stx-e _%e125999%_))))
    (define gx#stx-box? (lambda (_%e125997%_) (box? (gx#stx-e _%e125997%_))))
    (define gx#stx-eq?
      (lambda (_%x125994%_ _%y125995%_)
        (eq? (gx#stx-e _%x125994%_) (gx#stx-e _%y125995%_))))
    (define gx#stx-eqv?
      (lambda (_%x125991%_ _%y125992%_)
        (eqv? (gx#stx-e _%x125991%_) (gx#stx-e _%y125992%_))))
    (define gx#stx-equal?
      (lambda (_%x125988%_ _%y125989%_)
        (equal? (gx#stx-e _%x125988%_) (gx#stx-e _%y125989%_))))
    (define gx#stx-false? (lambda (_%x125986%_) (not (gx#stx-e _%x125986%_))))
    (define gx#stx-identifier
      (lambda (_%template125983%_ . _%args125984%_)
        (gx#datum->syntax__1
         _%template125983%_
         (apply make-symbol (gx#syntax->datum _%args125984%_))
         (gx#stx-source _%template125983%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx125981%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx125981%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx125976%_)
        (if (##structure-direct-instance-of?
             _%stx125976%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx125976%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx125976%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx125976%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx125976%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx125972%_)
        (let ((_%stx125974%_ (gx#stx-unwrap__0 _%stx125972%_)))
          (if (gx#identifier-quote? _%stx125974%_)
              (##unchecked-structure-ref _%stx125974%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx125927%_)
        (let* ((_%g125928125938%_ (gx#stx-e _%stx125927%_))
               (_%else125931125946%_ (lambda () '#f)))
          (let ((_%K125934125960%_
                 (lambda (_%rest125957%_ _%hd125958%_)
                   (if (gx#identifier? _%hd125958%_)
                       (gx#identifier-list? _%rest125957%_)
                       '#f)))
                (_%K125933125951%_ (lambda () '#t)))
            (let ((_%try-match125930125954%_
                   (lambda ()
                     (if (null? _%g125928125938%_)
                         (_%K125933125951%_)
                         (_%else125931125946%_)))))
              (if (pair? _%g125928125938%_)
                  (let ((_%tl125936125965%_ (##cdr _%g125928125938%_))
                        (_%hd125935125963%_ (##car _%g125928125938%_)))
                    (let ((_%hd125968%_ _%hd125935125963%_)
                          (_%rest125970%_ _%tl125936125965%_))
                      (_%K125934125960%_ _%rest125970%_ _%hd125968%_)))
                  (_%try-match125930125954%_)))))))
    (define gx#genident__%
      (lambda (_%e125904%_ _%src125905%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e125907%_ (gx#stx-e _%e125904%_)))
                   (if (interned-symbol? _%e125907%_) _%e125907%_ 'g)))
         (let ((_%$e125909%_ (gx#stx-source _%e125904%_)))
           (if _%$e125909%_ _%$e125909%_ _%src125905%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e125916%_ 'g) (_%src125918%_ '#f))
          (gx#genident__% _%e125916%_ _%src125918%_))))
    (define gx#genident__1
      (lambda (_%e125920%_)
        (let ((_%src125922%_ '#f))
          (gx#genident__% _%e125920%_ _%src125922%_))))
    (define gx#genident
      (lambda _g126386_
        (let ((_g126387_ (##length _g126386_)))
          (cond ((##fx= _g126387_ 0) (apply gx#genident__0 _g126386_))
                ((##fx= _g126387_ 1) (apply gx#genident__1 _g126386_))
                ((##fx= _g126387_ 2) (apply gx#genident__% _g126386_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g126386_))))))
    (define gx#gentemps
      (lambda (_%stx-lst125901%_) (gx#stx-map1 gx#genident _%stx-lst125901%_)))
    (define gx#syntax->list
      (lambda (_%stx125899%_) (gx#stx-map1 values _%stx125899%_)))
    (define gx#stx-car
      (lambda (_%stx125896%_)
        (declare (safe))
        (car (gx#syntax-e _%stx125896%_))))
    (define gx#stx-cdr
      (lambda (_%stx125893%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx125893%_))))
    (define gx#stx-length
      (lambda (_%stx125858%_)
        (let _%lp125860%_ ((_%rest125862%_ _%stx125858%_) (_%n125863%_ '0))
          (let* ((_%g125864125872%_ (gx#stx-e _%rest125862%_))
                 (_%else125866125880%_ (lambda () _%n125863%_))
                 (_%K125868125885%_
                  (lambda (_%rest125883%_)
                    (_%lp125860%_ _%rest125883%_ (##fx+ _%n125863%_ '1)))))
            (if (pair? _%g125864125872%_)
                (let* ((_%tl125870125888%_ (##cdr _%g125864125872%_))
                       (_%rest125891%_ _%tl125870125888%_))
                  (_%K125868125885%_ _%rest125891%_))
                (_%else125866125880%_))))))
    (define gx#stx-for-each
      (lambda _g126388_
        (let ((_g126389_ (##length _g126388_)))
          (cond ((##fx= _g126389_ 2) (apply gx#stx-for-each1 _g126388_))
                ((##fx= _g126389_ 3) (apply gx#stx-for-each2 _g126388_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g126388_))))))
    (define gx#stx-for-each1
      (lambda (_%f125801%_ _%stx125802%_)
        (if (procedure? _%f125801%_)
            '#!void
            (error '"expected procedure" _%f125801%_))
        (let _%lp125804%_ ((_%rest125806%_ _%stx125802%_))
          (let* ((_%g125807125817%_ (gx#syntax-e _%rest125806%_))
                 (_%else125810125825%_
                  (lambda () (_%f125801%_ _%rest125806%_))))
            (let ((_%K125813125839%_
                   (lambda (_%rest125836%_ _%hd125837%_)
                     (_%f125801%_ _%hd125837%_)
                     (_%lp125804%_ _%rest125836%_)))
                  (_%K125812125830%_ (lambda () '#!void)))
              (let ((_%try-match125809125833%_
                     (lambda ()
                       (if (null? _%g125807125817%_)
                           (_%K125812125830%_)
                           (_%else125810125825%_)))))
                (if (pair? _%g125807125817%_)
                    (let ((_%tl125815125844%_ (##cdr _%g125807125817%_))
                          (_%hd125814125842%_ (##car _%g125807125817%_)))
                      (let ((_%hd125847%_ _%hd125814125842%_)
                            (_%rest125849%_ _%tl125815125844%_))
                        (_%K125813125839%_ _%rest125849%_ _%hd125847%_)))
                    (_%try-match125809125833%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f125706%_ _%xstx125707%_ _%ystx125708%_)
        (if (procedure? _%f125706%_)
            '#!void
            (error '"expected procedure" _%f125706%_))
        (let _%lp125710%_ ((_%xrest125712%_ _%xstx125707%_)
                           (_%yrest125713%_ _%ystx125708%_))
          (let* ((_%g125714125724%_ (gx#syntax-e _%xrest125712%_))
                 (_%else125717125732%_ (lambda () '#!void)))
            (let ((_%K125720125789%_
                   (lambda (_%xrest125758%_ _%xhd125759%_)
                     (let* ((_%g125760125767%_ (gx#syntax-e _%yrest125713%_))
                            (_%E125762125771%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g125760125767%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K125763125777%_
                             (lambda (_%yrest125774%_ _%yhd125775%_)
                               (_%f125706%_ _%xhd125759%_ _%yhd125775%_)
                               (_%lp125710%_
                                _%xrest125758%_
                                _%yrest125774%_))))
                       (if (pair? _%g125760125767%_)
                           (let ((_%hd125764125780%_ (##car _%g125760125767%_))
                                 (_%tl125765125782%_
                                  (##cdr _%g125760125767%_)))
                             (let* ((_%yhd125785%_ _%hd125764125780%_)
                                    (_%yrest125787%_ _%tl125765125782%_))
                               (_%K125763125777%_
                                _%yrest125787%_
                                _%yhd125785%_)))
                           (_%E125762125771%_)))))
                  (_%K125719125752%_
                   (lambda ()
                     (let* ((_%yrest125736125741%_ _%yrest125713%_)
                            (_%E125738125745%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest125736125741%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K125739125749%_
                             (lambda ()
                               (_%f125706%_ _%xrest125712%_ _%yrest125713%_))))
                       (if (gx#stx-null? _%yrest125736125741%_)
                           (_%E125738125745%_)
                           (_%K125739125749%_))))))
              (let ((_%try-match125716125755%_
                     (lambda ()
                       (if (null? _%g125714125724%_)
                           (_%else125717125732%_)
                           (_%K125719125752%_)))))
                (if (pair? _%g125714125724%_)
                    (let ((_%tl125722125794%_ (##cdr _%g125714125724%_))
                          (_%hd125721125792%_ (##car _%g125714125724%_)))
                      (let ((_%xhd125797%_ _%hd125721125792%_)
                            (_%xrest125799%_ _%tl125722125794%_))
                        (_%K125720125789%_ _%xrest125799%_ _%xhd125797%_)))
                    (_%try-match125716125755%_))))))))
    (define gx#stx-map
      (lambda _g126390_
        (let ((_g126391_ (##length _g126390_)))
          (cond ((##fx= _g126391_ 2) (apply gx#stx-map1 _g126390_))
                ((##fx= _g126391_ 3) (apply gx#stx-map2 _g126390_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g126390_))))))
    (define gx#stx-map1
      (lambda (_%f125649%_ _%stx125650%_)
        (if (procedure? _%f125649%_)
            '#!void
            (error '"expected procedure" _%f125649%_))
        (let _%recur125652%_ ((_%rest125654%_ _%stx125650%_))
          (let* ((_%g125655125665%_ (gx#syntax-e _%rest125654%_))
                 (_%else125658125673%_
                  (lambda () (_%f125649%_ _%rest125654%_))))
            (let ((_%K125661125687%_
                   (lambda (_%rest125684%_ _%hd125685%_)
                     (cons (_%f125649%_ _%hd125685%_)
                           (_%recur125652%_ _%rest125684%_))))
                  (_%K125660125678%_ (lambda () '())))
              (let ((_%try-match125657125681%_
                     (lambda ()
                       (if (null? _%g125655125665%_)
                           (_%K125660125678%_)
                           (_%else125658125673%_)))))
                (if (pair? _%g125655125665%_)
                    (let ((_%tl125663125692%_ (##cdr _%g125655125665%_))
                          (_%hd125662125690%_ (##car _%g125655125665%_)))
                      (let ((_%hd125695%_ _%hd125662125690%_)
                            (_%rest125697%_ _%tl125663125692%_))
                        (_%K125661125687%_ _%rest125697%_ _%hd125695%_)))
                    (_%try-match125657125681%_))))))))
    (define gx#stx-map2
      (lambda (_%f125554%_ _%xstx125555%_ _%ystx125556%_)
        (if (procedure? _%f125554%_)
            '#!void
            (error '"expected procedure" _%f125554%_))
        (let _%recur125558%_ ((_%xrest125560%_ _%xstx125555%_)
                              (_%yrest125561%_ _%ystx125556%_))
          (let* ((_%g125562125572%_ (gx#syntax-e _%xrest125560%_))
                 (_%else125565125580%_ (lambda () '())))
            (let ((_%K125568125637%_
                   (lambda (_%xrest125606%_ _%xhd125607%_)
                     (let* ((_%g125608125615%_ (gx#syntax-e _%yrest125561%_))
                            (_%E125610125619%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g125608125615%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K125611125625%_
                             (lambda (_%yrest125622%_ _%yhd125623%_)
                               (cons (_%f125554%_ _%xhd125607%_ _%yhd125623%_)
                                     (_%recur125558%_
                                      _%xrest125606%_
                                      _%yrest125622%_)))))
                       (if (pair? _%g125608125615%_)
                           (let ((_%hd125612125628%_ (##car _%g125608125615%_))
                                 (_%tl125613125630%_
                                  (##cdr _%g125608125615%_)))
                             (let* ((_%yhd125633%_ _%hd125612125628%_)
                                    (_%yrest125635%_ _%tl125613125630%_))
                               (_%K125611125625%_
                                _%yrest125635%_
                                _%yhd125633%_)))
                           (_%E125610125619%_)))))
                  (_%K125567125600%_
                   (lambda ()
                     (let* ((_%yrest125584125589%_ _%yrest125561%_)
                            (_%E125586125593%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest125584125589%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K125587125597%_
                             (lambda ()
                               (_%f125554%_ _%xrest125560%_ _%yrest125561%_))))
                       (if (gx#stx-null? _%yrest125584125589%_)
                           (_%E125586125593%_)
                           (_%K125587125597%_))))))
              (let ((_%try-match125564125603%_
                     (lambda ()
                       (if (null? _%g125562125572%_)
                           (_%else125565125580%_)
                           (_%K125567125600%_)))))
                (if (pair? _%g125562125572%_)
                    (let ((_%tl125570125642%_ (##cdr _%g125562125572%_))
                          (_%hd125569125640%_ (##car _%g125562125572%_)))
                      (let ((_%xhd125645%_ _%hd125569125640%_)
                            (_%xrest125647%_ _%tl125570125642%_))
                        (_%K125568125637%_ _%xrest125647%_ _%xhd125645%_)))
                    (_%try-match125564125603%_))))))))
    (define gx#stx-andmap
      (lambda (_%f125504%_ _%stx125505%_)
        (if (procedure? _%f125504%_)
            '#!void
            (error '"expected procedure" _%f125504%_))
        (let _%lp125507%_ ((_%rest125509%_ _%stx125505%_))
          (let* ((_%g125510125520%_ (gx#syntax-e _%rest125509%_))
                 (_%else125513125528%_
                  (lambda () (_%f125504%_ _%rest125509%_))))
            (let ((_%K125516125542%_
                   (lambda (_%rest125539%_ _%hd125540%_)
                     (if (_%f125504%_ _%hd125540%_)
                         (_%lp125507%_ _%rest125539%_)
                         '#f)))
                  (_%K125515125533%_ (lambda () '#t)))
              (let ((_%try-match125512125536%_
                     (lambda ()
                       (if (null? _%g125510125520%_)
                           (_%K125515125533%_)
                           (_%else125513125528%_)))))
                (if (pair? _%g125510125520%_)
                    (let ((_%tl125518125547%_ (##cdr _%g125510125520%_))
                          (_%hd125517125545%_ (##car _%g125510125520%_)))
                      (let ((_%hd125550%_ _%hd125517125545%_)
                            (_%rest125552%_ _%tl125518125547%_))
                        (_%K125516125542%_ _%rest125552%_ _%hd125550%_)))
                    (_%try-match125512125536%_))))))))
    (define gx#stx-ormap
      (lambda (_%f125451%_ _%stx125452%_)
        (if (procedure? _%f125451%_)
            '#!void
            (error '"expected procedure" _%f125451%_))
        (let _%lp125454%_ ((_%rest125456%_ _%stx125452%_))
          (let* ((_%g125457125467%_ (gx#syntax-e _%rest125456%_))
                 (_%else125460125475%_
                  (lambda () (_%f125451%_ _%rest125456%_))))
            (let ((_%K125463125492%_
                   (lambda (_%rest125486%_ _%hd125487%_)
                     (let ((_%$e125489%_ (_%f125451%_ _%hd125487%_)))
                       (if _%$e125489%_
                           _%$e125489%_
                           (_%lp125454%_ _%rest125486%_)))))
                  (_%K125462125480%_ (lambda () '#f)))
              (let ((_%try-match125459125483%_
                     (lambda ()
                       (if (null? _%g125457125467%_)
                           (_%K125462125480%_)
                           (_%else125460125475%_)))))
                (if (pair? _%g125457125467%_)
                    (let ((_%tl125465125497%_ (##cdr _%g125457125467%_))
                          (_%hd125464125495%_ (##car _%g125457125467%_)))
                      (let ((_%hd125500%_ _%hd125464125495%_)
                            (_%rest125502%_ _%tl125465125497%_))
                        (_%K125463125492%_ _%rest125502%_ _%hd125500%_)))
                    (_%try-match125459125483%_))))))))
    (define gx#stx-foldl
      (lambda (_%f125399%_ _%iv125400%_ _%stx125401%_)
        (if (procedure? _%f125399%_)
            '#!void
            (error '"expected procedure" _%f125399%_))
        (let _%lp125403%_ ((_%r125405%_ _%iv125400%_)
                           (_%rest125406%_ _%stx125401%_))
          (let* ((_%g125407125417%_ (gx#syntax-e _%rest125406%_))
                 (_%else125410125425%_
                  (lambda () (_%f125399%_ _%rest125406%_ _%r125405%_))))
            (let ((_%K125413125439%_
                   (lambda (_%rest125436%_ _%hd125437%_)
                     (_%lp125403%_
                      (_%f125399%_ _%hd125437%_ _%r125405%_)
                      _%rest125436%_)))
                  (_%K125412125430%_ (lambda () _%r125405%_)))
              (let ((_%try-match125409125433%_
                     (lambda ()
                       (if (null? _%g125407125417%_)
                           (_%K125412125430%_)
                           (_%else125410125425%_)))))
                (if (pair? _%g125407125417%_)
                    (let ((_%tl125415125444%_ (##cdr _%g125407125417%_))
                          (_%hd125414125442%_ (##car _%g125407125417%_)))
                      (let ((_%hd125447%_ _%hd125414125442%_)
                            (_%rest125449%_ _%tl125415125444%_))
                        (_%K125413125439%_ _%rest125449%_ _%hd125447%_)))
                    (_%try-match125409125433%_))))))))
    (define gx#stx-foldr
      (lambda (_%f125348%_ _%iv125349%_ _%stx125350%_)
        (if (procedure? _%f125348%_)
            '#!void
            (error '"expected procedure" _%f125348%_))
        (let _%recur125352%_ ((_%rest125354%_ _%stx125350%_))
          (let* ((_%g125355125365%_ (gx#syntax-e _%rest125354%_))
                 (_%else125358125373%_
                  (lambda () (_%f125348%_ _%rest125354%_ _%iv125349%_))))
            (let ((_%K125361125387%_
                   (lambda (_%rest125384%_ _%hd125385%_)
                     (_%f125348%_
                      _%hd125385%_
                      (_%recur125352%_ _%rest125384%_))))
                  (_%K125360125378%_ (lambda () _%iv125349%_)))
              (let ((_%try-match125357125381%_
                     (lambda ()
                       (if (null? _%g125355125365%_)
                           (_%K125360125378%_)
                           (_%else125358125373%_)))))
                (if (pair? _%g125355125365%_)
                    (let ((_%tl125363125392%_ (##cdr _%g125355125365%_))
                          (_%hd125362125390%_ (##car _%g125355125365%_)))
                      (let ((_%hd125395%_ _%hd125362125390%_)
                            (_%rest125397%_ _%tl125363125392%_))
                        (_%K125361125387%_ _%rest125397%_ _%hd125395%_)))
                    (_%try-match125357125381%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx125346%_) (gx#stx-foldl cons '() _%stx125346%_)))
    (define gx#stx-last
      (lambda (_%stx125307%_)
        (let _%lp125309%_ ((_%rest125311%_ _%stx125307%_))
          (let* ((_%g125312125320%_ (gx#syntax-e _%rest125311%_))
                 (_%else125314125328%_ (lambda () _%rest125311%_))
                 (_%K125316125334%_
                  (lambda (_%rest125331%_ _%hd125332%_)
                    (if (gx#stx-null? _%rest125331%_)
                        _%hd125332%_
                        (_%lp125309%_ _%rest125331%_)))))
            (if (pair? _%g125312125320%_)
                (let ((_%hd125317125337%_ (##car _%g125312125320%_))
                      (_%tl125318125339%_ (##cdr _%g125312125320%_)))
                  (let* ((_%hd125342%_ _%hd125317125337%_)
                         (_%rest125344%_ _%tl125318125339%_))
                    (_%K125316125334%_ _%rest125344%_ _%hd125342%_)))
                (_%else125314125328%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx125278%_)
        (let _%lp125280%_ ((_%hd125282%_ _%stx125278%_))
          (let* ((_%g125283125290%_ (gx#syntax-e _%hd125282%_))
                 (_%E125285125294%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g125283125290%_
                           '([_ . rest]))
                    '#!void))
                 (_%K125286125299%_
                  (lambda (_%rest125297%_)
                    (if (gx#stx-pair? _%rest125297%_)
                        (_%lp125280%_ _%rest125297%_)
                        _%hd125282%_))))
            (if (pair? _%g125283125290%_)
                (let* ((_%tl125288125302%_ (##cdr _%g125283125290%_))
                       (_%rest125305%_ _%tl125288125302%_))
                  (_%K125286125299%_ _%rest125305%_))
                (_%E125285125294%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx125247%_ _%k125248%_)
        (let _%lp125250%_ ((_%rest125252%_ _%stx125247%_)
                           (_%k125253%_ _%k125248%_))
          (if (fxpositive? _%k125253%_)
              (let* ((_%g125254125261%_ (gx#syntax-e _%rest125252%_))
                     (_%E125256125265%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g125254125261%_
                               '([_ . rest]))
                        '#!void))
                     (_%K125257125270%_
                      (lambda (_%rest125268%_)
                        (_%lp125250%_ _%rest125268%_ (##fx- _%k125253%_ '1)))))
                (if (pair? _%g125254125261%_)
                    (let* ((_%tl125259125273%_ (##cdr _%g125254125261%_))
                           (_%rest125276%_ _%tl125259125273%_))
                      (_%K125257125270%_ _%rest125276%_))
                    (_%E125256125265%_)))
              _%rest125252%_))))
    (define gx#stx-list-ref
      (lambda (_%stx125244%_ _%k125245%_)
        (gx#stx-car (gx#stx-list-tail _%stx125244%_ _%k125245%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx125156%_ _%key?125157%_)
        (if (procedure? _%key?125157%_)
            '#!void
            (error '"expected procedure" _%key?125157%_))
        (let _%lp125159%_ ((_%rest125161%_ _%stx125156%_))
          (let* ((_%g125162125172%_ (gx#stx-e _%rest125161%_))
                 (_%else125165125180%_ (lambda () '#f)))
            (let ((_%K125168125222%_
                   (lambda (_%rest125191%_ _%hd125192%_)
                     (if (_%key?125157%_ _%hd125192%_)
                         (let* ((_%g125193125201%_ (gx#stx-e _%rest125191%_))
                                (_%else125195125209%_ (lambda () '#f))
                                (_%K125197125214%_
                                 (lambda (_%rest125212%_)
                                   (_%lp125159%_ _%rest125212%_))))
                           (if (pair? _%g125193125201%_)
                               (let* ((_%tl125199125217%_
                                       (##cdr _%g125193125201%_))
                                      (_%rest125220%_ _%tl125199125217%_))
                                 (_%lp125159%_ _%rest125220%_))
                               (_%else125195125209%_)))
                         '#f)))
                  (_%K125167125185%_ (lambda () '#t)))
              (let ((_%try-match125164125188%_
                     (lambda ()
                       (if (null? _%g125162125172%_)
                           (_%K125167125185%_)
                           (_%else125165125180%_)))))
                (if (pair? _%g125162125172%_)
                    (let ((_%tl125170125227%_ (##cdr _%g125162125172%_))
                          (_%hd125169125225%_ (##car _%g125162125172%_)))
                      (let ((_%hd125230%_ _%hd125169125225%_)
                            (_%rest125232%_ _%tl125170125227%_))
                        (_%K125168125222%_ _%rest125232%_ _%hd125230%_)))
                    (_%try-match125164125188%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx125237%_)
        (let ((_%key?125239%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx125237%_ _%key?125239%_))))
    (define gx#stx-plist?
      (lambda _g126392_
        (let ((_g126393_ (##length _g126392_)))
          (cond ((##fx= _g126393_ 1) (apply gx#stx-plist?__0 _g126392_))
                ((##fx= _g126393_ 2) (apply gx#stx-plist?__% _g126392_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g126392_))))))
    (define gx#stx-getq__%
      (lambda (_%key125074%_ _%stx125075%_ _%key=?125076%_)
        (if (procedure? _%key=?125076%_)
            '#!void
            (error '"expected procedure" _%key=?125076%_))
        (let _%lp125078%_ ((_%rest125080%_ _%stx125075%_))
          (let* ((_%g125081125089%_ (gx#syntax-e _%rest125080%_))
                 (_%else125083125097%_ (lambda () '#f))
                 (_%K125085125131%_
                  (lambda (_%rest125100%_ _%hd125101%_)
                    (let* ((_%g125102125109%_ (gx#syntax-e _%rest125100%_))
                           (_%E125104125113%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g125102125109%_
                                     '([val . rest]))
                              '#!void))
                           (_%K125105125119%_
                            (lambda (_%rest125116%_ _%val125117%_)
                              (if (_%key=?125076%_ _%hd125101%_ _%key125074%_)
                                  _%val125117%_
                                  (_%lp125078%_ _%rest125116%_)))))
                      (if (pair? _%g125102125109%_)
                          (let ((_%hd125106125122%_ (##car _%g125102125109%_))
                                (_%tl125107125124%_ (##cdr _%g125102125109%_)))
                            (let* ((_%val125127%_ _%hd125106125122%_)
                                   (_%rest125129%_ _%tl125107125124%_))
                              (_%K125105125119%_
                               _%rest125129%_
                               _%val125127%_)))
                          (_%E125104125113%_))))))
            (if (pair? _%g125081125089%_)
                (let ((_%hd125086125134%_ (##car _%g125081125089%_))
                      (_%tl125087125136%_ (##cdr _%g125081125089%_)))
                  (let* ((_%hd125139%_ _%hd125086125134%_)
                         (_%rest125141%_ _%tl125087125136%_))
                    (_%K125085125131%_ _%rest125141%_ _%hd125139%_)))
                (_%else125083125097%_))))))
    (define gx#stx-getq__0
      (lambda (_%key125146%_ _%stx125147%_)
        (let ((_%key=?125149%_ gx#stx-eq?))
          (gx#stx-getq__% _%key125146%_ _%stx125147%_ _%key=?125149%_))))
    (define gx#stx-getq
      (lambda _g126394_
        (let ((_g126395_ (##length _g126394_)))
          (cond ((##fx= _g126395_ 2) (apply gx#stx-getq__0 _g126394_))
                ((##fx= _g126395_ 3) (apply gx#stx-getq__% _g126394_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g126394_))))))))

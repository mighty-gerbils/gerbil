(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1756156300)
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
      (lambda _%$args126299%_
        (apply make-instance gx#identifier-wrap::t _%$args126299%_)))
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
      (lambda _%$args126296%_
        (apply make-instance gx#syntax-wrap::t _%$args126296%_)))
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
      (lambda _%$args126293%_
        (apply make-instance gx#syntax-quote::t _%$args126293%_)))
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
      (lambda (_%stx126291%_) (symbol? (gx#stx-e _%stx126291%_))))
    (define gx#identifier-quote?
      (lambda (_%stx126289%_)
        (if (##structure-direct-instance-of? _%stx126289%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx126289%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx126284%_)
        (if (##structure-direct-instance-of? _%stx126284%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx126284%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx126284%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx126279%_)
        (if (##structure-direct-instance-of? _%stx126279%_ 'gx#syntax-quote::t)
            _%stx126279%_
            (if (##structure-direct-instance-of?
                 _%stx126279%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx126279%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx126253%_)
        (if (##structure-direct-instance-of? _%stx126253%_ 'gx#syntax-wrap::t)
            (let _%lp126256%_ ((_%e126258%_
                                (##unchecked-structure-ref
                                 _%stx126253%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks126259%_
                                (cons (##unchecked-structure-ref
                                       _%stx126253%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e126258%_)
                  (let ((_%$e126262%_
                         (##type-id (##structure-type _%e126258%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e126262%_)
                        (_%lp126256%_
                         (##unchecked-structure-ref _%e126258%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e126258%_ '3 '#f '#f)
                          _%marks126259%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e126262%_)
                                (eq? 'gx#identifier-wrap::t _%$e126262%_))
                            (##unchecked-structure-ref _%e126258%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e126262%_)
                                (_%lp126256%_
                                 (##unchecked-structure-ref
                                  _%e126258%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks126259%_)
                                _%e126258%_))))
                  (if (null? _%marks126259%_)
                      _%e126258%_
                      (if (pair? _%e126258%_)
                          (cons (gx#stx-wrap
                                 (##car _%e126258%_)
                                 _%marks126259%_)
                                (gx#stx-wrap
                                 (##cdr _%e126258%_)
                                 _%marks126259%_))
                          (if (vector? _%e126258%_)
                              (vector-map
                               (lambda (_%g126270126272%_)
                                 (gx#stx-wrap
                                  _%g126270126272%_
                                  _%marks126259%_))
                               _%e126258%_)
                              (if (box? _%e126258%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e126258%_)
                                        _%marks126259%_))
                                  _%e126258%_))))))
            (if (##structure-instance-of? _%stx126253%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx126253%_ '1 '#f '#f)
                _%stx126253%_))))
    (define gx#syntax->datum
      (lambda (_%stx126246%_)
        (if (##structure-instance-of? _%stx126246%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx126246%_ '1 '#f '#f))
            (if (pair? _%stx126246%_)
                (cons (gx#syntax->datum (##car _%stx126246%_))
                      (gx#syntax->datum (##cdr _%stx126246%_)))
                (if (vector? _%stx126246%_)
                    (vector-map gx#syntax->datum _%stx126246%_)
                    (if (box? _%stx126246%_)
                        (box (gx#syntax->datum (unbox _%stx126246%_)))
                        _%stx126246%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx126180%_ _%datum126181%_ _%src126182%_ _%quote?126183%_)
        (letrec ((_%wrap-datum126185%_
                  (lambda (_%e126218%_ _%marks126219%_)
                    (_%wrap-inner126187%_
                     _%e126218%_
                     (lambda (_%g126220126222%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g126220126222%_
                        _%src126182%_
                        _%marks126219%_)))))
                 (_%wrap-quote126186%_
                  (lambda (_%e126210%_ _%ctx126211%_ _%marks126212%_)
                    (_%wrap-inner126187%_
                     _%e126210%_
                     (lambda (_%g126213126215%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g126213126215%_
                        _%src126182%_
                        _%ctx126211%_
                        _%marks126212%_)))))
                 (_%wrap-inner126187%_
                  (lambda (_%e126198%_ _%wrap-e126199%_)
                    (let _%recur126201%_ ((_%e126203%_ _%e126198%_))
                      (if (symbol? _%e126203%_)
                          (_%wrap-e126199%_ _%e126203%_)
                          (if (pair? _%e126203%_)
                              (cons (_%recur126201%_ (##car _%e126203%_))
                                    (_%recur126201%_ (##cdr _%e126203%_)))
                              (if (vector? _%e126203%_)
                                  (vector-map _%recur126201%_ _%e126203%_)
                                  (if (box? _%e126203%_)
                                      (box (_%recur126201%_
                                            (unbox _%e126203%_)))
                                      _%e126203%_)))))))
                 (_%wrap-outer126188%_
                  (lambda (_%e126196%_)
                    (if (##structure-instance-of? _%e126196%_ 'gerbil#AST::t)
                        _%e126196%_
                        (##structure gx#AST::t _%e126196%_ _%src126182%_)))))
          (if (##structure-instance-of? _%datum126181%_ 'gerbil#AST::t)
              _%datum126181%_
              (if (not _%stx126180%_)
                  (##structure gx#AST::t _%datum126181%_ _%src126182%_)
                  (if (gx#identifier? _%stx126180%_)
                      (let ((_%stx126193%_ (gx#stx-unwrap__0 _%stx126180%_)))
                        (_%wrap-outer126188%_
                         (if (##structure-direct-instance-of?
                              _%stx126193%_
                              'gx#syntax-quote::t)
                             (if _%quote?126183%_
                                 (_%wrap-quote126186%_
                                  _%datum126181%_
                                  (##unchecked-structure-ref
                                   _%stx126193%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx126193%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum126185%_
                                  _%datum126181%_
                                  (##unchecked-structure-ref
                                   _%stx126193%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum126185%_
                              _%datum126181%_
                              (##unchecked-structure-ref
                               _%stx126193%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx126180%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx126228%_ _%datum126229%_)
        (let* ((_%src126231%_ '#f) (_%quote?126233%_ '#t))
          (gx#datum->syntax__%
           _%stx126228%_
           _%datum126229%_
           _%src126231%_
           _%quote?126233%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx126235%_ _%datum126236%_ _%src126237%_)
        (let ((_%quote?126239%_ '#t))
          (gx#datum->syntax__%
           _%stx126235%_
           _%datum126236%_
           _%src126237%_
           _%quote?126239%_))))
    (define gx#datum->syntax
      (lambda _g126379_
        (let ((_g126380_ (##length _g126379_)))
          (cond ((##fx= _g126380_ 2) (apply gx#datum->syntax__0 _g126379_))
                ((##fx= _g126380_ 3) (apply gx#datum->syntax__1 _g126379_))
                ((##fx= _g126380_ 4) (apply gx#datum->syntax__% _g126379_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g126379_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx126146%_ _%marks126147%_)
        (let _%lp126149%_ ((_%e126151%_ _%stx126146%_)
                           (_%marks126152%_ _%marks126147%_)
                           (_%src126153%_ (gx#stx-source _%stx126146%_)))
          (if (##structure-direct-instance-of? _%e126151%_ 'gx#syntax-wrap::t)
              (_%lp126149%_
               (##unchecked-structure-ref _%e126151%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e126151%_ '3 '#f '#f)
                _%marks126152%_)
               (##unchecked-structure-ref _%e126151%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e126151%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks126152%_)
                      _%e126151%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e126151%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e126151%_ '2 '#f '#f)
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e126151%_ '3 '#f '#f)
                        _%marks126152%_)))
                  (if (##structure-direct-instance-of?
                       _%e126151%_
                       'gx#syntax-quote::t)
                      _%e126151%_
                      (if (##structure-instance-of? _%e126151%_ 'gerbil#AST::t)
                          (_%lp126149%_
                           (##unchecked-structure-ref _%e126151%_ '1 '#f '#f)
                           _%marks126152%_
                           (##unchecked-structure-ref _%e126151%_ '2 '#f '#f))
                          (if (symbol? _%e126151%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e126151%_
                               _%src126153%_
                               (reverse _%marks126152%_))
                              (if (null? _%marks126152%_)
                                  _%e126151%_
                                  (if (pair? _%e126151%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e126151%_)
                                             _%marks126152%_)
                                            (gx#stx-wrap
                                             (##cdr _%e126151%_)
                                             _%marks126152%_))
                                      (if (vector? _%e126151%_)
                                          (vector-map
                                           (lambda (_%g126162126164%_)
                                             (gx#stx-wrap
                                              _%g126162126164%_
                                              _%marks126152%_))
                                           _%e126151%_)
                                          (if (box? _%e126151%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e126151%_)
                                                    _%marks126152%_))
                                              _%e126151%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx126172%_)
        (let ((_%marks126174%_ '()))
          (gx#stx-unwrap__% _%stx126172%_ _%marks126174%_))))
    (define gx#stx-unwrap
      (lambda _g126381_
        (let ((_g126382_ (##length _g126381_)))
          (cond ((##fx= _g126382_ 1) (apply gx#stx-unwrap__0 _g126381_))
                ((##fx= _g126382_ 2) (apply gx#stx-unwrap__% _g126381_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g126381_))))))
    (define gx#stx-wrap
      (lambda (_%stx126139%_ _%marks126140%_)
        (__foldl1
         (lambda (_%mark126142%_ _%stx126143%_)
           (gx#stx-apply-mark _%stx126143%_ _%mark126142%_))
         _%stx126139%_
         _%marks126140%_)))
    (define gx#stx-rewrap
      (lambda (_%stx126133%_ _%marks126134%_)
        (__foldr1
         (lambda (_%mark126136%_ _%stx126137%_)
           (gx#stx-apply-mark _%stx126137%_ _%mark126136%_))
         _%stx126133%_
         _%marks126134%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx126127%_ _%mark126128%_)
        (if (##structure-direct-instance-of? _%stx126127%_ 'gx#syntax-quote::t)
            _%stx126127%_
            (if (and (##structure-direct-instance-of?
                      _%stx126127%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark126128%_
                          (##unchecked-structure-ref
                           _%stx126127%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx126127%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx126127%_
                 (gx#stx-source _%stx126127%_)
                 _%mark126128%_)))))
    (define gx#apply-mark
      (lambda (_%mark126091%_ _%marks126092%_)
        (let* ((_%marks126093126101%_ _%marks126092%_)
               (_%else126095126109%_
                (lambda () (cons _%mark126091%_ _%marks126092%_)))
               (_%K126097126115%_
                (lambda (_%rest126112%_ _%hd126113%_)
                  (if (eq? _%mark126091%_ _%hd126113%_)
                      _%rest126112%_
                      (cons _%mark126091%_ _%marks126092%_)))))
          (if (pair? _%marks126093126101%_)
              (let ((_%hd126098126118%_ (##car _%marks126093126101%_))
                    (_%tl126099126120%_ (##cdr _%marks126093126101%_)))
                (let* ((_%hd126123%_ _%hd126098126118%_)
                       (_%rest126125%_ _%tl126099126120%_))
                  (_%K126097126115%_ _%rest126125%_ _%hd126123%_)))
              (_%else126095126109%_)))))
    (define gx#stx-e
      (lambda (_%stx126086%_)
        (if (##structure-direct-instance-of? _%stx126086%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx126086%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx126086%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx126086%_ '1 '#f '#f)
                _%stx126086%_))))
    (define gx#stx-source
      (lambda (_%stx126084%_)
        (if (##structure-instance-of? _%stx126084%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx126084%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx126078%_ _%src126079%_)
        (if (or (##structure-instance-of? _%stx126078%_ 'gerbil#AST::t)
                (not _%src126079%_))
            _%stx126078%_
            (##structure gx#AST::t _%stx126078%_ _%src126079%_))))
    (define gx#stx-datum?
      (lambda (_%stx126076%_) (gx#self-quoting? (gx#stx-e _%stx126076%_))))
    (define gx#self-quoting?
      (lambda (_%x126059%_)
        (let ((_%$e126061%_ (immediate? _%x126059%_)))
          (if _%$e126061%_
              _%$e126061%_
              (let ((_%$e126064%_ (number? _%x126059%_)))
                (if _%$e126064%_
                    _%$e126064%_
                    (let ((_%$e126067%_ (keyword? _%x126059%_)))
                      (if _%$e126067%_
                          _%$e126067%_
                          (let ((_%$e126070%_ (string? _%x126059%_)))
                            (if _%$e126070%_
                                _%$e126070%_
                                (let ((_%$e126073%_ (vector? _%x126059%_)))
                                  (if _%$e126073%_
                                      _%$e126073%_
                                      (u8vector? _%x126059%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e126057%_) (boolean? (gx#stx-e _%e126057%_))))
    (define gx#stx-keyword?
      (lambda (_%e126055%_) (keyword? (gx#stx-e _%e126055%_))))
    (define gx#stx-char? (lambda (_%e126053%_) (char? (gx#stx-e _%e126053%_))))
    (define gx#stx-number?
      (lambda (_%e126051%_) (number? (gx#stx-e _%e126051%_))))
    (define gx#stx-fixnum?
      (lambda (_%e126049%_) (fixnum? (gx#stx-e _%e126049%_))))
    (define gx#stx-string?
      (lambda (_%e126047%_) (string? (gx#stx-e _%e126047%_))))
    (define gx#stx-null? (lambda (_%e126045%_) (null? (gx#stx-e _%e126045%_))))
    (define gx#stx-pair? (lambda (_%e126043%_) (pair? (gx#stx-e _%e126043%_))))
    (define gx#stx-list?
      (lambda (_%e126005%_)
        (let* ((_%g126006126015%_ (gx#stx-e _%e126005%_))
               (_%E126009126019%_
                (lambda ()
                  (error '"No clause matching"
                         _%g126006126015%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K126011126035%_
                 (lambda (_%rest126033%_) (gx#stx-list? _%rest126033%_)))
                (_%K126010126025%_
                 (lambda (_%tail126023%_) (null? _%tail126023%_))))
            (if (pair? _%g126006126015%_)
                (let* ((_%tl126013126038%_ (##cdr _%g126006126015%_))
                       (_%rest126041%_ _%tl126013126038%_))
                  (gx#stx-list? _%rest126041%_))
                (let ((_%tail126028%_ _%g126006126015%_))
                  (null? _%tail126028%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e125998%_)
        (let* ((_%e126000%_ (gx#stx-e _%e125998%_))
               (_%$e126002%_ (pair? _%e126000%_)))
          (if _%$e126002%_ _%$e126002%_ (null? _%e126000%_)))))
    (define gx#stx-vector?
      (lambda (_%e125996%_) (vector? (gx#stx-e _%e125996%_))))
    (define gx#stx-box? (lambda (_%e125994%_) (box? (gx#stx-e _%e125994%_))))
    (define gx#stx-eq?
      (lambda (_%x125991%_ _%y125992%_)
        (eq? (gx#stx-e _%x125991%_) (gx#stx-e _%y125992%_))))
    (define gx#stx-eqv?
      (lambda (_%x125988%_ _%y125989%_)
        (eqv? (gx#stx-e _%x125988%_) (gx#stx-e _%y125989%_))))
    (define gx#stx-equal?
      (lambda (_%x125985%_ _%y125986%_)
        (equal? (gx#stx-e _%x125985%_) (gx#stx-e _%y125986%_))))
    (define gx#stx-false? (lambda (_%x125983%_) (not (gx#stx-e _%x125983%_))))
    (define gx#stx-identifier
      (lambda (_%template125980%_ . _%args125981%_)
        (gx#datum->syntax__1
         _%template125980%_
         (apply make-symbol (gx#syntax->datum _%args125981%_))
         (gx#stx-source _%template125980%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx125978%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx125978%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx125973%_)
        (if (##structure-direct-instance-of?
             _%stx125973%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx125973%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx125973%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx125973%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx125973%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx125969%_)
        (let ((_%stx125971%_ (gx#stx-unwrap__0 _%stx125969%_)))
          (if (gx#identifier-quote? _%stx125971%_)
              (##unchecked-structure-ref _%stx125971%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx125924%_)
        (let* ((_%g125925125935%_ (gx#stx-e _%stx125924%_))
               (_%else125928125943%_ (lambda () '#f)))
          (let ((_%K125931125957%_
                 (lambda (_%rest125954%_ _%hd125955%_)
                   (if (gx#identifier? _%hd125955%_)
                       (gx#identifier-list? _%rest125954%_)
                       '#f)))
                (_%K125930125948%_ (lambda () '#t)))
            (let ((_%try-match125927125951%_
                   (lambda ()
                     (if (null? _%g125925125935%_)
                         (_%K125930125948%_)
                         (_%else125928125943%_)))))
              (if (pair? _%g125925125935%_)
                  (let ((_%tl125933125962%_ (##cdr _%g125925125935%_))
                        (_%hd125932125960%_ (##car _%g125925125935%_)))
                    (let ((_%hd125965%_ _%hd125932125960%_)
                          (_%rest125967%_ _%tl125933125962%_))
                      (_%K125931125957%_ _%rest125967%_ _%hd125965%_)))
                  (_%try-match125927125951%_)))))))
    (define gx#genident__%
      (lambda (_%e125901%_ _%src125902%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e125904%_ (gx#stx-e _%e125901%_)))
                   (if (interned-symbol? _%e125904%_) _%e125904%_ 'g)))
         (let ((_%$e125906%_ (gx#stx-source _%e125901%_)))
           (if _%$e125906%_ _%$e125906%_ _%src125902%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e125913%_ 'g) (_%src125915%_ '#f))
          (gx#genident__% _%e125913%_ _%src125915%_))))
    (define gx#genident__1
      (lambda (_%e125917%_)
        (let ((_%src125919%_ '#f))
          (gx#genident__% _%e125917%_ _%src125919%_))))
    (define gx#genident
      (lambda _g126383_
        (let ((_g126384_ (##length _g126383_)))
          (cond ((##fx= _g126384_ 0) (apply gx#genident__0 _g126383_))
                ((##fx= _g126384_ 1) (apply gx#genident__1 _g126383_))
                ((##fx= _g126384_ 2) (apply gx#genident__% _g126383_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g126383_))))))
    (define gx#gentemps
      (lambda (_%stx-lst125898%_) (gx#stx-map1 gx#genident _%stx-lst125898%_)))
    (define gx#syntax->list
      (lambda (_%stx125896%_) (gx#stx-map1 values _%stx125896%_)))
    (define gx#stx-car
      (lambda (_%stx125893%_)
        (declare (safe))
        (car (gx#syntax-e _%stx125893%_))))
    (define gx#stx-cdr
      (lambda (_%stx125890%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx125890%_))))
    (define gx#stx-length
      (lambda (_%stx125855%_)
        (let _%lp125857%_ ((_%rest125859%_ _%stx125855%_) (_%n125860%_ '0))
          (let* ((_%g125861125869%_ (gx#stx-e _%rest125859%_))
                 (_%else125863125877%_ (lambda () _%n125860%_))
                 (_%K125865125882%_
                  (lambda (_%rest125880%_)
                    (_%lp125857%_ _%rest125880%_ (##fx+ _%n125860%_ '1)))))
            (if (pair? _%g125861125869%_)
                (let* ((_%tl125867125885%_ (##cdr _%g125861125869%_))
                       (_%rest125888%_ _%tl125867125885%_))
                  (_%K125865125882%_ _%rest125888%_))
                (_%else125863125877%_))))))
    (define gx#stx-for-each
      (lambda _g126385_
        (let ((_g126386_ (##length _g126385_)))
          (cond ((##fx= _g126386_ 2) (apply gx#stx-for-each1 _g126385_))
                ((##fx= _g126386_ 3) (apply gx#stx-for-each2 _g126385_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g126385_))))))
    (define gx#stx-for-each1
      (lambda (_%f125798%_ _%stx125799%_)
        (if (procedure? _%f125798%_)
            '#!void
            (error '"expected procedure" _%f125798%_))
        (let _%lp125801%_ ((_%rest125803%_ _%stx125799%_))
          (let* ((_%g125804125814%_ (gx#syntax-e _%rest125803%_))
                 (_%else125807125822%_
                  (lambda () (_%f125798%_ _%rest125803%_))))
            (let ((_%K125810125836%_
                   (lambda (_%rest125833%_ _%hd125834%_)
                     (_%f125798%_ _%hd125834%_)
                     (_%lp125801%_ _%rest125833%_)))
                  (_%K125809125827%_ (lambda () '#!void)))
              (let ((_%try-match125806125830%_
                     (lambda ()
                       (if (null? _%g125804125814%_)
                           (_%K125809125827%_)
                           (_%else125807125822%_)))))
                (if (pair? _%g125804125814%_)
                    (let ((_%tl125812125841%_ (##cdr _%g125804125814%_))
                          (_%hd125811125839%_ (##car _%g125804125814%_)))
                      (let ((_%hd125844%_ _%hd125811125839%_)
                            (_%rest125846%_ _%tl125812125841%_))
                        (_%K125810125836%_ _%rest125846%_ _%hd125844%_)))
                    (_%try-match125806125830%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f125703%_ _%xstx125704%_ _%ystx125705%_)
        (if (procedure? _%f125703%_)
            '#!void
            (error '"expected procedure" _%f125703%_))
        (let _%lp125707%_ ((_%xrest125709%_ _%xstx125704%_)
                           (_%yrest125710%_ _%ystx125705%_))
          (let* ((_%g125711125721%_ (gx#syntax-e _%xrest125709%_))
                 (_%else125714125729%_ (lambda () '#!void)))
            (let ((_%K125717125786%_
                   (lambda (_%xrest125755%_ _%xhd125756%_)
                     (let* ((_%g125757125764%_ (gx#syntax-e _%yrest125710%_))
                            (_%E125759125768%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g125757125764%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K125760125774%_
                             (lambda (_%yrest125771%_ _%yhd125772%_)
                               (_%f125703%_ _%xhd125756%_ _%yhd125772%_)
                               (_%lp125707%_
                                _%xrest125755%_
                                _%yrest125771%_))))
                       (if (pair? _%g125757125764%_)
                           (let ((_%hd125761125777%_ (##car _%g125757125764%_))
                                 (_%tl125762125779%_
                                  (##cdr _%g125757125764%_)))
                             (let* ((_%yhd125782%_ _%hd125761125777%_)
                                    (_%yrest125784%_ _%tl125762125779%_))
                               (_%K125760125774%_
                                _%yrest125784%_
                                _%yhd125782%_)))
                           (_%E125759125768%_)))))
                  (_%K125716125749%_
                   (lambda ()
                     (let* ((_%yrest125733125738%_ _%yrest125710%_)
                            (_%E125735125742%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest125733125738%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K125736125746%_
                             (lambda ()
                               (_%f125703%_ _%xrest125709%_ _%yrest125710%_))))
                       (if (gx#stx-null? _%yrest125733125738%_)
                           (_%E125735125742%_)
                           (_%K125736125746%_))))))
              (let ((_%try-match125713125752%_
                     (lambda ()
                       (if (null? _%g125711125721%_)
                           (_%else125714125729%_)
                           (_%K125716125749%_)))))
                (if (pair? _%g125711125721%_)
                    (let ((_%tl125719125791%_ (##cdr _%g125711125721%_))
                          (_%hd125718125789%_ (##car _%g125711125721%_)))
                      (let ((_%xhd125794%_ _%hd125718125789%_)
                            (_%xrest125796%_ _%tl125719125791%_))
                        (_%K125717125786%_ _%xrest125796%_ _%xhd125794%_)))
                    (_%try-match125713125752%_))))))))
    (define gx#stx-map
      (lambda _g126387_
        (let ((_g126388_ (##length _g126387_)))
          (cond ((##fx= _g126388_ 2) (apply gx#stx-map1 _g126387_))
                ((##fx= _g126388_ 3) (apply gx#stx-map2 _g126387_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g126387_))))))
    (define gx#stx-map1
      (lambda (_%f125646%_ _%stx125647%_)
        (if (procedure? _%f125646%_)
            '#!void
            (error '"expected procedure" _%f125646%_))
        (let _%recur125649%_ ((_%rest125651%_ _%stx125647%_))
          (let* ((_%g125652125662%_ (gx#syntax-e _%rest125651%_))
                 (_%else125655125670%_
                  (lambda () (_%f125646%_ _%rest125651%_))))
            (let ((_%K125658125684%_
                   (lambda (_%rest125681%_ _%hd125682%_)
                     (cons (_%f125646%_ _%hd125682%_)
                           (_%recur125649%_ _%rest125681%_))))
                  (_%K125657125675%_ (lambda () '())))
              (let ((_%try-match125654125678%_
                     (lambda ()
                       (if (null? _%g125652125662%_)
                           (_%K125657125675%_)
                           (_%else125655125670%_)))))
                (if (pair? _%g125652125662%_)
                    (let ((_%tl125660125689%_ (##cdr _%g125652125662%_))
                          (_%hd125659125687%_ (##car _%g125652125662%_)))
                      (let ((_%hd125692%_ _%hd125659125687%_)
                            (_%rest125694%_ _%tl125660125689%_))
                        (_%K125658125684%_ _%rest125694%_ _%hd125692%_)))
                    (_%try-match125654125678%_))))))))
    (define gx#stx-map2
      (lambda (_%f125551%_ _%xstx125552%_ _%ystx125553%_)
        (if (procedure? _%f125551%_)
            '#!void
            (error '"expected procedure" _%f125551%_))
        (let _%recur125555%_ ((_%xrest125557%_ _%xstx125552%_)
                              (_%yrest125558%_ _%ystx125553%_))
          (let* ((_%g125559125569%_ (gx#syntax-e _%xrest125557%_))
                 (_%else125562125577%_ (lambda () '())))
            (let ((_%K125565125634%_
                   (lambda (_%xrest125603%_ _%xhd125604%_)
                     (let* ((_%g125605125612%_ (gx#syntax-e _%yrest125558%_))
                            (_%E125607125616%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g125605125612%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K125608125622%_
                             (lambda (_%yrest125619%_ _%yhd125620%_)
                               (cons (_%f125551%_ _%xhd125604%_ _%yhd125620%_)
                                     (_%recur125555%_
                                      _%xrest125603%_
                                      _%yrest125619%_)))))
                       (if (pair? _%g125605125612%_)
                           (let ((_%hd125609125625%_ (##car _%g125605125612%_))
                                 (_%tl125610125627%_
                                  (##cdr _%g125605125612%_)))
                             (let* ((_%yhd125630%_ _%hd125609125625%_)
                                    (_%yrest125632%_ _%tl125610125627%_))
                               (_%K125608125622%_
                                _%yrest125632%_
                                _%yhd125630%_)))
                           (_%E125607125616%_)))))
                  (_%K125564125597%_
                   (lambda ()
                     (let* ((_%yrest125581125586%_ _%yrest125558%_)
                            (_%E125583125590%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest125581125586%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K125584125594%_
                             (lambda ()
                               (_%f125551%_ _%xrest125557%_ _%yrest125558%_))))
                       (if (gx#stx-null? _%yrest125581125586%_)
                           (_%E125583125590%_)
                           (_%K125584125594%_))))))
              (let ((_%try-match125561125600%_
                     (lambda ()
                       (if (null? _%g125559125569%_)
                           (_%else125562125577%_)
                           (_%K125564125597%_)))))
                (if (pair? _%g125559125569%_)
                    (let ((_%tl125567125639%_ (##cdr _%g125559125569%_))
                          (_%hd125566125637%_ (##car _%g125559125569%_)))
                      (let ((_%xhd125642%_ _%hd125566125637%_)
                            (_%xrest125644%_ _%tl125567125639%_))
                        (_%K125565125634%_ _%xrest125644%_ _%xhd125642%_)))
                    (_%try-match125561125600%_))))))))
    (define gx#stx-andmap
      (lambda (_%f125501%_ _%stx125502%_)
        (if (procedure? _%f125501%_)
            '#!void
            (error '"expected procedure" _%f125501%_))
        (let _%lp125504%_ ((_%rest125506%_ _%stx125502%_))
          (let* ((_%g125507125517%_ (gx#syntax-e _%rest125506%_))
                 (_%else125510125525%_
                  (lambda () (_%f125501%_ _%rest125506%_))))
            (let ((_%K125513125539%_
                   (lambda (_%rest125536%_ _%hd125537%_)
                     (if (_%f125501%_ _%hd125537%_)
                         (_%lp125504%_ _%rest125536%_)
                         '#f)))
                  (_%K125512125530%_ (lambda () '#t)))
              (let ((_%try-match125509125533%_
                     (lambda ()
                       (if (null? _%g125507125517%_)
                           (_%K125512125530%_)
                           (_%else125510125525%_)))))
                (if (pair? _%g125507125517%_)
                    (let ((_%tl125515125544%_ (##cdr _%g125507125517%_))
                          (_%hd125514125542%_ (##car _%g125507125517%_)))
                      (let ((_%hd125547%_ _%hd125514125542%_)
                            (_%rest125549%_ _%tl125515125544%_))
                        (_%K125513125539%_ _%rest125549%_ _%hd125547%_)))
                    (_%try-match125509125533%_))))))))
    (define gx#stx-ormap
      (lambda (_%f125448%_ _%stx125449%_)
        (if (procedure? _%f125448%_)
            '#!void
            (error '"expected procedure" _%f125448%_))
        (let _%lp125451%_ ((_%rest125453%_ _%stx125449%_))
          (let* ((_%g125454125464%_ (gx#syntax-e _%rest125453%_))
                 (_%else125457125472%_
                  (lambda () (_%f125448%_ _%rest125453%_))))
            (let ((_%K125460125489%_
                   (lambda (_%rest125483%_ _%hd125484%_)
                     (let ((_%$e125486%_ (_%f125448%_ _%hd125484%_)))
                       (if _%$e125486%_
                           _%$e125486%_
                           (_%lp125451%_ _%rest125483%_)))))
                  (_%K125459125477%_ (lambda () '#f)))
              (let ((_%try-match125456125480%_
                     (lambda ()
                       (if (null? _%g125454125464%_)
                           (_%K125459125477%_)
                           (_%else125457125472%_)))))
                (if (pair? _%g125454125464%_)
                    (let ((_%tl125462125494%_ (##cdr _%g125454125464%_))
                          (_%hd125461125492%_ (##car _%g125454125464%_)))
                      (let ((_%hd125497%_ _%hd125461125492%_)
                            (_%rest125499%_ _%tl125462125494%_))
                        (_%K125460125489%_ _%rest125499%_ _%hd125497%_)))
                    (_%try-match125456125480%_))))))))
    (define gx#stx-foldl
      (lambda (_%f125396%_ _%iv125397%_ _%stx125398%_)
        (if (procedure? _%f125396%_)
            '#!void
            (error '"expected procedure" _%f125396%_))
        (let _%lp125400%_ ((_%r125402%_ _%iv125397%_)
                           (_%rest125403%_ _%stx125398%_))
          (let* ((_%g125404125414%_ (gx#syntax-e _%rest125403%_))
                 (_%else125407125422%_
                  (lambda () (_%f125396%_ _%rest125403%_ _%r125402%_))))
            (let ((_%K125410125436%_
                   (lambda (_%rest125433%_ _%hd125434%_)
                     (_%lp125400%_
                      (_%f125396%_ _%hd125434%_ _%r125402%_)
                      _%rest125433%_)))
                  (_%K125409125427%_ (lambda () _%r125402%_)))
              (let ((_%try-match125406125430%_
                     (lambda ()
                       (if (null? _%g125404125414%_)
                           (_%K125409125427%_)
                           (_%else125407125422%_)))))
                (if (pair? _%g125404125414%_)
                    (let ((_%tl125412125441%_ (##cdr _%g125404125414%_))
                          (_%hd125411125439%_ (##car _%g125404125414%_)))
                      (let ((_%hd125444%_ _%hd125411125439%_)
                            (_%rest125446%_ _%tl125412125441%_))
                        (_%K125410125436%_ _%rest125446%_ _%hd125444%_)))
                    (_%try-match125406125430%_))))))))
    (define gx#stx-foldr
      (lambda (_%f125345%_ _%iv125346%_ _%stx125347%_)
        (if (procedure? _%f125345%_)
            '#!void
            (error '"expected procedure" _%f125345%_))
        (let _%recur125349%_ ((_%rest125351%_ _%stx125347%_))
          (let* ((_%g125352125362%_ (gx#syntax-e _%rest125351%_))
                 (_%else125355125370%_
                  (lambda () (_%f125345%_ _%rest125351%_ _%iv125346%_))))
            (let ((_%K125358125384%_
                   (lambda (_%rest125381%_ _%hd125382%_)
                     (_%f125345%_
                      _%hd125382%_
                      (_%recur125349%_ _%rest125381%_))))
                  (_%K125357125375%_ (lambda () _%iv125346%_)))
              (let ((_%try-match125354125378%_
                     (lambda ()
                       (if (null? _%g125352125362%_)
                           (_%K125357125375%_)
                           (_%else125355125370%_)))))
                (if (pair? _%g125352125362%_)
                    (let ((_%tl125360125389%_ (##cdr _%g125352125362%_))
                          (_%hd125359125387%_ (##car _%g125352125362%_)))
                      (let ((_%hd125392%_ _%hd125359125387%_)
                            (_%rest125394%_ _%tl125360125389%_))
                        (_%K125358125384%_ _%rest125394%_ _%hd125392%_)))
                    (_%try-match125354125378%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx125343%_) (gx#stx-foldl cons '() _%stx125343%_)))
    (define gx#stx-last
      (lambda (_%stx125304%_)
        (let _%lp125306%_ ((_%rest125308%_ _%stx125304%_))
          (let* ((_%g125309125317%_ (gx#syntax-e _%rest125308%_))
                 (_%else125311125325%_ (lambda () _%rest125308%_))
                 (_%K125313125331%_
                  (lambda (_%rest125328%_ _%hd125329%_)
                    (if (gx#stx-null? _%rest125328%_)
                        _%hd125329%_
                        (_%lp125306%_ _%rest125328%_)))))
            (if (pair? _%g125309125317%_)
                (let ((_%hd125314125334%_ (##car _%g125309125317%_))
                      (_%tl125315125336%_ (##cdr _%g125309125317%_)))
                  (let* ((_%hd125339%_ _%hd125314125334%_)
                         (_%rest125341%_ _%tl125315125336%_))
                    (_%K125313125331%_ _%rest125341%_ _%hd125339%_)))
                (_%else125311125325%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx125275%_)
        (let _%lp125277%_ ((_%hd125279%_ _%stx125275%_))
          (let* ((_%g125280125287%_ (gx#syntax-e _%hd125279%_))
                 (_%E125282125291%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g125280125287%_
                           '([_ . rest]))
                    '#!void))
                 (_%K125283125296%_
                  (lambda (_%rest125294%_)
                    (if (gx#stx-pair? _%rest125294%_)
                        (_%lp125277%_ _%rest125294%_)
                        _%hd125279%_))))
            (if (pair? _%g125280125287%_)
                (let* ((_%tl125285125299%_ (##cdr _%g125280125287%_))
                       (_%rest125302%_ _%tl125285125299%_))
                  (_%K125283125296%_ _%rest125302%_))
                (_%E125282125291%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx125244%_ _%k125245%_)
        (let _%lp125247%_ ((_%rest125249%_ _%stx125244%_)
                           (_%k125250%_ _%k125245%_))
          (if (fxpositive? _%k125250%_)
              (let* ((_%g125251125258%_ (gx#syntax-e _%rest125249%_))
                     (_%E125253125262%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g125251125258%_
                               '([_ . rest]))
                        '#!void))
                     (_%K125254125267%_
                      (lambda (_%rest125265%_)
                        (_%lp125247%_ _%rest125265%_ (##fx- _%k125250%_ '1)))))
                (if (pair? _%g125251125258%_)
                    (let* ((_%tl125256125270%_ (##cdr _%g125251125258%_))
                           (_%rest125273%_ _%tl125256125270%_))
                      (_%K125254125267%_ _%rest125273%_))
                    (_%E125253125262%_)))
              _%rest125249%_))))
    (define gx#stx-list-ref
      (lambda (_%stx125241%_ _%k125242%_)
        (gx#stx-car (gx#stx-list-tail _%stx125241%_ _%k125242%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx125153%_ _%key?125154%_)
        (if (procedure? _%key?125154%_)
            '#!void
            (error '"expected procedure" _%key?125154%_))
        (let _%lp125156%_ ((_%rest125158%_ _%stx125153%_))
          (let* ((_%g125159125169%_ (gx#stx-e _%rest125158%_))
                 (_%else125162125177%_ (lambda () '#f)))
            (let ((_%K125165125219%_
                   (lambda (_%rest125188%_ _%hd125189%_)
                     (if (_%key?125154%_ _%hd125189%_)
                         (let* ((_%g125190125198%_ (gx#stx-e _%rest125188%_))
                                (_%else125192125206%_ (lambda () '#f))
                                (_%K125194125211%_
                                 (lambda (_%rest125209%_)
                                   (_%lp125156%_ _%rest125209%_))))
                           (if (pair? _%g125190125198%_)
                               (let* ((_%tl125196125214%_
                                       (##cdr _%g125190125198%_))
                                      (_%rest125217%_ _%tl125196125214%_))
                                 (_%lp125156%_ _%rest125217%_))
                               (_%else125192125206%_)))
                         '#f)))
                  (_%K125164125182%_ (lambda () '#t)))
              (let ((_%try-match125161125185%_
                     (lambda ()
                       (if (null? _%g125159125169%_)
                           (_%K125164125182%_)
                           (_%else125162125177%_)))))
                (if (pair? _%g125159125169%_)
                    (let ((_%tl125167125224%_ (##cdr _%g125159125169%_))
                          (_%hd125166125222%_ (##car _%g125159125169%_)))
                      (let ((_%hd125227%_ _%hd125166125222%_)
                            (_%rest125229%_ _%tl125167125224%_))
                        (_%K125165125219%_ _%rest125229%_ _%hd125227%_)))
                    (_%try-match125161125185%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx125234%_)
        (let ((_%key?125236%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx125234%_ _%key?125236%_))))
    (define gx#stx-plist?
      (lambda _g126389_
        (let ((_g126390_ (##length _g126389_)))
          (cond ((##fx= _g126390_ 1) (apply gx#stx-plist?__0 _g126389_))
                ((##fx= _g126390_ 2) (apply gx#stx-plist?__% _g126389_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g126389_))))))
    (define gx#stx-getq__%
      (lambda (_%key125071%_ _%stx125072%_ _%key=?125073%_)
        (if (procedure? _%key=?125073%_)
            '#!void
            (error '"expected procedure" _%key=?125073%_))
        (let _%lp125075%_ ((_%rest125077%_ _%stx125072%_))
          (let* ((_%g125078125086%_ (gx#syntax-e _%rest125077%_))
                 (_%else125080125094%_ (lambda () '#f))
                 (_%K125082125128%_
                  (lambda (_%rest125097%_ _%hd125098%_)
                    (let* ((_%g125099125106%_ (gx#syntax-e _%rest125097%_))
                           (_%E125101125110%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g125099125106%_
                                     '([val . rest]))
                              '#!void))
                           (_%K125102125116%_
                            (lambda (_%rest125113%_ _%val125114%_)
                              (if (_%key=?125073%_ _%hd125098%_ _%key125071%_)
                                  _%val125114%_
                                  (_%lp125075%_ _%rest125113%_)))))
                      (if (pair? _%g125099125106%_)
                          (let ((_%hd125103125119%_ (##car _%g125099125106%_))
                                (_%tl125104125121%_ (##cdr _%g125099125106%_)))
                            (let* ((_%val125124%_ _%hd125103125119%_)
                                   (_%rest125126%_ _%tl125104125121%_))
                              (_%K125102125116%_
                               _%rest125126%_
                               _%val125124%_)))
                          (_%E125101125110%_))))))
            (if (pair? _%g125078125086%_)
                (let ((_%hd125083125131%_ (##car _%g125078125086%_))
                      (_%tl125084125133%_ (##cdr _%g125078125086%_)))
                  (let* ((_%hd125136%_ _%hd125083125131%_)
                         (_%rest125138%_ _%tl125084125133%_))
                    (_%K125082125128%_ _%rest125138%_ _%hd125136%_)))
                (_%else125080125094%_))))))
    (define gx#stx-getq__0
      (lambda (_%key125143%_ _%stx125144%_)
        (let ((_%key=?125146%_ gx#stx-eq?))
          (gx#stx-getq__% _%key125143%_ _%stx125144%_ _%key=?125146%_))))
    (define gx#stx-getq
      (lambda _g126391_
        (let ((_g126392_ (##length _g126391_)))
          (cond ((##fx= _g126392_ 2) (apply gx#stx-getq__0 _g126391_))
                ((##fx= _g126392_ 3) (apply gx#stx-getq__% _g126391_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g126391_))))))))

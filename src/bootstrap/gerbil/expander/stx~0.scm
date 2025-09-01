(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1756715352)
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
      (lambda _%$args126719%_
        (apply make-instance gx#identifier-wrap::t _%$args126719%_)))
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
      (lambda _%$args126716%_
        (apply make-instance gx#syntax-wrap::t _%$args126716%_)))
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
      (lambda _%$args126713%_
        (apply make-instance gx#syntax-quote::t _%$args126713%_)))
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
      (lambda (_%stx126711%_) (symbol? (gx#stx-e _%stx126711%_))))
    (define gx#identifier-quote?
      (lambda (_%stx126709%_)
        (if (##structure-direct-instance-of? _%stx126709%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx126709%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx126704%_)
        (if (##structure-direct-instance-of? _%stx126704%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx126704%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx126704%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx126699%_)
        (if (##structure-direct-instance-of? _%stx126699%_ 'gx#syntax-quote::t)
            _%stx126699%_
            (if (##structure-direct-instance-of?
                 _%stx126699%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx126699%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx126673%_)
        (if (##structure-direct-instance-of? _%stx126673%_ 'gx#syntax-wrap::t)
            (let _%lp126676%_ ((_%e126678%_
                                (##unchecked-structure-ref
                                 _%stx126673%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks126679%_
                                (cons (##unchecked-structure-ref
                                       _%stx126673%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e126678%_)
                  (let ((_%$e126682%_
                         (##type-id (##structure-type _%e126678%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e126682%_)
                        (_%lp126676%_
                         (##unchecked-structure-ref _%e126678%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e126678%_ '3 '#f '#f)
                          _%marks126679%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e126682%_)
                                (eq? 'gx#identifier-wrap::t _%$e126682%_))
                            (##unchecked-structure-ref _%e126678%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e126682%_)
                                (_%lp126676%_
                                 (##unchecked-structure-ref
                                  _%e126678%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks126679%_)
                                _%e126678%_))))
                  (if (null? _%marks126679%_)
                      _%e126678%_
                      (if (pair? _%e126678%_)
                          (cons (gx#stx-wrap
                                 (##car _%e126678%_)
                                 _%marks126679%_)
                                (gx#stx-wrap
                                 (##cdr _%e126678%_)
                                 _%marks126679%_))
                          (if (vector? _%e126678%_)
                              (vector-map
                               (lambda (_%g126690126692%_)
                                 (gx#stx-wrap
                                  _%g126690126692%_
                                  _%marks126679%_))
                               _%e126678%_)
                              (if (box? _%e126678%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e126678%_)
                                        _%marks126679%_))
                                  _%e126678%_))))))
            (if (##structure-instance-of? _%stx126673%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx126673%_ '1 '#f '#f)
                _%stx126673%_))))
    (define gx#syntax->datum
      (lambda (_%stx126666%_)
        (if (##structure-instance-of? _%stx126666%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx126666%_ '1 '#f '#f))
            (if (pair? _%stx126666%_)
                (cons (gx#syntax->datum (##car _%stx126666%_))
                      (gx#syntax->datum (##cdr _%stx126666%_)))
                (if (vector? _%stx126666%_)
                    (vector-map gx#syntax->datum _%stx126666%_)
                    (if (box? _%stx126666%_)
                        (box (gx#syntax->datum (unbox _%stx126666%_)))
                        _%stx126666%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx126600%_ _%datum126601%_ _%src126602%_ _%quote?126603%_)
        (letrec ((_%wrap-datum126605%_
                  (lambda (_%e126638%_ _%marks126639%_)
                    (_%wrap-inner126607%_
                     _%e126638%_
                     (lambda (_%g126640126642%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g126640126642%_
                        _%src126602%_
                        _%marks126639%_)))))
                 (_%wrap-quote126606%_
                  (lambda (_%e126630%_ _%ctx126631%_ _%marks126632%_)
                    (_%wrap-inner126607%_
                     _%e126630%_
                     (lambda (_%g126633126635%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g126633126635%_
                        _%src126602%_
                        _%ctx126631%_
                        _%marks126632%_)))))
                 (_%wrap-inner126607%_
                  (lambda (_%e126618%_ _%wrap-e126619%_)
                    (let _%recur126621%_ ((_%e126623%_ _%e126618%_))
                      (if (symbol? _%e126623%_)
                          (_%wrap-e126619%_ _%e126623%_)
                          (if (pair? _%e126623%_)
                              (cons (_%recur126621%_ (##car _%e126623%_))
                                    (_%recur126621%_ (##cdr _%e126623%_)))
                              (if (vector? _%e126623%_)
                                  (vector-map _%recur126621%_ _%e126623%_)
                                  (if (box? _%e126623%_)
                                      (box (_%recur126621%_
                                            (unbox _%e126623%_)))
                                      _%e126623%_)))))))
                 (_%wrap-outer126608%_
                  (lambda (_%e126616%_)
                    (if (##structure-instance-of? _%e126616%_ 'gerbil#AST::t)
                        _%e126616%_
                        (##structure gx#AST::t _%e126616%_ _%src126602%_)))))
          (if (##structure-instance-of? _%datum126601%_ 'gerbil#AST::t)
              _%datum126601%_
              (if (not _%stx126600%_)
                  (##structure gx#AST::t _%datum126601%_ _%src126602%_)
                  (if (gx#identifier? _%stx126600%_)
                      (let ((_%stx126613%_ (gx#stx-unwrap__0 _%stx126600%_)))
                        (_%wrap-outer126608%_
                         (if (##structure-direct-instance-of?
                              _%stx126613%_
                              'gx#syntax-quote::t)
                             (if _%quote?126603%_
                                 (_%wrap-quote126606%_
                                  _%datum126601%_
                                  (##unchecked-structure-ref
                                   _%stx126613%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx126613%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum126605%_
                                  _%datum126601%_
                                  (##unchecked-structure-ref
                                   _%stx126613%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum126605%_
                              _%datum126601%_
                              (##unchecked-structure-ref
                               _%stx126613%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx126600%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx126648%_ _%datum126649%_)
        (let* ((_%src126651%_ '#f) (_%quote?126653%_ '#t))
          (gx#datum->syntax__%
           _%stx126648%_
           _%datum126649%_
           _%src126651%_
           _%quote?126653%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx126655%_ _%datum126656%_ _%src126657%_)
        (let ((_%quote?126659%_ '#t))
          (gx#datum->syntax__%
           _%stx126655%_
           _%datum126656%_
           _%src126657%_
           _%quote?126659%_))))
    (define gx#datum->syntax
      (lambda _g126799_
        (let ((_g126800_ (##length _g126799_)))
          (cond ((##fx= _g126800_ 2) (apply gx#datum->syntax__0 _g126799_))
                ((##fx= _g126800_ 3) (apply gx#datum->syntax__1 _g126799_))
                ((##fx= _g126800_ 4) (apply gx#datum->syntax__% _g126799_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g126799_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx126566%_ _%marks126567%_)
        (let _%lp126569%_ ((_%e126571%_ _%stx126566%_)
                           (_%marks126572%_ _%marks126567%_)
                           (_%src126573%_ (gx#stx-source _%stx126566%_)))
          (if (##structure-direct-instance-of? _%e126571%_ 'gx#syntax-wrap::t)
              (_%lp126569%_
               (##unchecked-structure-ref _%e126571%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e126571%_ '3 '#f '#f)
                _%marks126572%_)
               (##unchecked-structure-ref _%e126571%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e126571%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks126572%_)
                      _%e126571%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e126571%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e126571%_ '2 '#f '#f)
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e126571%_ '3 '#f '#f)
                        _%marks126572%_)))
                  (if (##structure-direct-instance-of?
                       _%e126571%_
                       'gx#syntax-quote::t)
                      _%e126571%_
                      (if (##structure-instance-of? _%e126571%_ 'gerbil#AST::t)
                          (_%lp126569%_
                           (##unchecked-structure-ref _%e126571%_ '1 '#f '#f)
                           _%marks126572%_
                           (##unchecked-structure-ref _%e126571%_ '2 '#f '#f))
                          (if (symbol? _%e126571%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e126571%_
                               _%src126573%_
                               (reverse _%marks126572%_))
                              (if (null? _%marks126572%_)
                                  _%e126571%_
                                  (if (pair? _%e126571%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e126571%_)
                                             _%marks126572%_)
                                            (gx#stx-wrap
                                             (##cdr _%e126571%_)
                                             _%marks126572%_))
                                      (if (vector? _%e126571%_)
                                          (vector-map
                                           (lambda (_%g126582126584%_)
                                             (gx#stx-wrap
                                              _%g126582126584%_
                                              _%marks126572%_))
                                           _%e126571%_)
                                          (if (box? _%e126571%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e126571%_)
                                                    _%marks126572%_))
                                              _%e126571%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx126592%_)
        (let ((_%marks126594%_ '()))
          (gx#stx-unwrap__% _%stx126592%_ _%marks126594%_))))
    (define gx#stx-unwrap
      (lambda _g126801_
        (let ((_g126802_ (##length _g126801_)))
          (cond ((##fx= _g126802_ 1) (apply gx#stx-unwrap__0 _g126801_))
                ((##fx= _g126802_ 2) (apply gx#stx-unwrap__% _g126801_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g126801_))))))
    (define gx#stx-wrap
      (lambda (_%stx126559%_ _%marks126560%_)
        (__foldl1
         (lambda (_%mark126562%_ _%stx126563%_)
           (gx#stx-apply-mark _%stx126563%_ _%mark126562%_))
         _%stx126559%_
         _%marks126560%_)))
    (define gx#stx-rewrap
      (lambda (_%stx126553%_ _%marks126554%_)
        (__foldr1
         (lambda (_%mark126556%_ _%stx126557%_)
           (gx#stx-apply-mark _%stx126557%_ _%mark126556%_))
         _%stx126553%_
         _%marks126554%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx126547%_ _%mark126548%_)
        (if (##structure-direct-instance-of? _%stx126547%_ 'gx#syntax-quote::t)
            _%stx126547%_
            (if (and (##structure-direct-instance-of?
                      _%stx126547%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark126548%_
                          (##unchecked-structure-ref
                           _%stx126547%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx126547%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx126547%_
                 (gx#stx-source _%stx126547%_)
                 _%mark126548%_)))))
    (define gx#apply-mark
      (lambda (_%mark126511%_ _%marks126512%_)
        (let* ((_%marks126513126521%_ _%marks126512%_)
               (_%else126515126529%_
                (lambda () (cons _%mark126511%_ _%marks126512%_)))
               (_%K126517126535%_
                (lambda (_%rest126532%_ _%hd126533%_)
                  (if (eq? _%mark126511%_ _%hd126533%_)
                      _%rest126532%_
                      (cons _%mark126511%_ _%marks126512%_)))))
          (if (pair? _%marks126513126521%_)
              (let ((_%hd126518126538%_ (##car _%marks126513126521%_))
                    (_%tl126519126540%_ (##cdr _%marks126513126521%_)))
                (let* ((_%hd126543%_ _%hd126518126538%_)
                       (_%rest126545%_ _%tl126519126540%_))
                  (_%K126517126535%_ _%rest126545%_ _%hd126543%_)))
              (_%else126515126529%_)))))
    (define gx#stx-e
      (lambda (_%stx126506%_)
        (if (##structure-direct-instance-of? _%stx126506%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx126506%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx126506%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx126506%_ '1 '#f '#f)
                _%stx126506%_))))
    (define gx#stx-source
      (lambda (_%stx126504%_)
        (if (##structure-instance-of? _%stx126504%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx126504%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx126498%_ _%src126499%_)
        (if (or (##structure-instance-of? _%stx126498%_ 'gerbil#AST::t)
                (not _%src126499%_))
            _%stx126498%_
            (##structure gx#AST::t _%stx126498%_ _%src126499%_))))
    (define gx#stx-datum?
      (lambda (_%stx126496%_) (gx#self-quoting? (gx#stx-e _%stx126496%_))))
    (define gx#self-quoting?
      (lambda (_%x126479%_)
        (let ((_%$e126481%_ (immediate? _%x126479%_)))
          (if _%$e126481%_
              _%$e126481%_
              (let ((_%$e126484%_ (number? _%x126479%_)))
                (if _%$e126484%_
                    _%$e126484%_
                    (let ((_%$e126487%_ (keyword? _%x126479%_)))
                      (if _%$e126487%_
                          _%$e126487%_
                          (let ((_%$e126490%_ (string? _%x126479%_)))
                            (if _%$e126490%_
                                _%$e126490%_
                                (let ((_%$e126493%_ (vector? _%x126479%_)))
                                  (if _%$e126493%_
                                      _%$e126493%_
                                      (u8vector? _%x126479%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e126477%_) (boolean? (gx#stx-e _%e126477%_))))
    (define gx#stx-keyword?
      (lambda (_%e126475%_) (keyword? (gx#stx-e _%e126475%_))))
    (define gx#stx-char? (lambda (_%e126473%_) (char? (gx#stx-e _%e126473%_))))
    (define gx#stx-number?
      (lambda (_%e126471%_) (number? (gx#stx-e _%e126471%_))))
    (define gx#stx-fixnum?
      (lambda (_%e126469%_) (fixnum? (gx#stx-e _%e126469%_))))
    (define gx#stx-string?
      (lambda (_%e126467%_) (string? (gx#stx-e _%e126467%_))))
    (define gx#stx-null? (lambda (_%e126465%_) (null? (gx#stx-e _%e126465%_))))
    (define gx#stx-pair? (lambda (_%e126463%_) (pair? (gx#stx-e _%e126463%_))))
    (define gx#stx-list?
      (lambda (_%e126425%_)
        (let* ((_%g126426126435%_ (gx#stx-e _%e126425%_))
               (_%E126429126439%_
                (lambda ()
                  (error '"No clause matching"
                         _%g126426126435%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K126431126455%_
                 (lambda (_%rest126453%_) (gx#stx-list? _%rest126453%_)))
                (_%K126430126445%_
                 (lambda (_%tail126443%_) (null? _%tail126443%_))))
            (if (pair? _%g126426126435%_)
                (let* ((_%tl126433126458%_ (##cdr _%g126426126435%_))
                       (_%rest126461%_ _%tl126433126458%_))
                  (gx#stx-list? _%rest126461%_))
                (let ((_%tail126448%_ _%g126426126435%_))
                  (null? _%tail126448%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e126418%_)
        (let* ((_%e126420%_ (gx#stx-e _%e126418%_))
               (_%$e126422%_ (pair? _%e126420%_)))
          (if _%$e126422%_ _%$e126422%_ (null? _%e126420%_)))))
    (define gx#stx-vector?
      (lambda (_%e126416%_) (vector? (gx#stx-e _%e126416%_))))
    (define gx#stx-box? (lambda (_%e126414%_) (box? (gx#stx-e _%e126414%_))))
    (define gx#stx-eq?
      (lambda (_%x126411%_ _%y126412%_)
        (eq? (gx#stx-e _%x126411%_) (gx#stx-e _%y126412%_))))
    (define gx#stx-eqv?
      (lambda (_%x126408%_ _%y126409%_)
        (eqv? (gx#stx-e _%x126408%_) (gx#stx-e _%y126409%_))))
    (define gx#stx-equal?
      (lambda (_%x126405%_ _%y126406%_)
        (equal? (gx#stx-e _%x126405%_) (gx#stx-e _%y126406%_))))
    (define gx#stx-false? (lambda (_%x126403%_) (not (gx#stx-e _%x126403%_))))
    (define gx#stx-identifier
      (lambda (_%template126400%_ . _%args126401%_)
        (gx#datum->syntax__1
         _%template126400%_
         (apply make-symbol (gx#syntax->datum _%args126401%_))
         (gx#stx-source _%template126400%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx126398%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx126398%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx126393%_)
        (if (##structure-direct-instance-of?
             _%stx126393%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx126393%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx126393%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx126393%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx126393%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx126389%_)
        (let ((_%stx126391%_ (gx#stx-unwrap__0 _%stx126389%_)))
          (if (gx#identifier-quote? _%stx126391%_)
              (##unchecked-structure-ref _%stx126391%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx126344%_)
        (let* ((_%g126345126355%_ (gx#stx-e _%stx126344%_))
               (_%else126348126363%_ (lambda () '#f)))
          (let ((_%K126351126377%_
                 (lambda (_%rest126374%_ _%hd126375%_)
                   (if (gx#identifier? _%hd126375%_)
                       (gx#identifier-list? _%rest126374%_)
                       '#f)))
                (_%K126350126368%_ (lambda () '#t)))
            (let ((_%try-match126347126371%_
                   (lambda ()
                     (if (null? _%g126345126355%_)
                         (_%K126350126368%_)
                         (_%else126348126363%_)))))
              (if (pair? _%g126345126355%_)
                  (let ((_%tl126353126382%_ (##cdr _%g126345126355%_))
                        (_%hd126352126380%_ (##car _%g126345126355%_)))
                    (let ((_%hd126385%_ _%hd126352126380%_)
                          (_%rest126387%_ _%tl126353126382%_))
                      (_%K126351126377%_ _%rest126387%_ _%hd126385%_)))
                  (_%try-match126347126371%_)))))))
    (define gx#genident__%
      (lambda (_%e126321%_ _%src126322%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e126324%_ (gx#stx-e _%e126321%_)))
                   (if (interned-symbol? _%e126324%_) _%e126324%_ 'g)))
         (let ((_%$e126326%_ (gx#stx-source _%e126321%_)))
           (if _%$e126326%_ _%$e126326%_ _%src126322%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e126333%_ 'g) (_%src126335%_ '#f))
          (gx#genident__% _%e126333%_ _%src126335%_))))
    (define gx#genident__1
      (lambda (_%e126337%_)
        (let ((_%src126339%_ '#f))
          (gx#genident__% _%e126337%_ _%src126339%_))))
    (define gx#genident
      (lambda _g126803_
        (let ((_g126804_ (##length _g126803_)))
          (cond ((##fx= _g126804_ 0) (apply gx#genident__0 _g126803_))
                ((##fx= _g126804_ 1) (apply gx#genident__1 _g126803_))
                ((##fx= _g126804_ 2) (apply gx#genident__% _g126803_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g126803_))))))
    (define gx#gentemps
      (lambda (_%stx-lst126318%_) (gx#stx-map1 gx#genident _%stx-lst126318%_)))
    (define gx#syntax->list
      (lambda (_%stx126316%_) (gx#stx-map1 values _%stx126316%_)))
    (define gx#stx-car
      (lambda (_%stx126313%_)
        (declare (safe))
        (car (gx#syntax-e _%stx126313%_))))
    (define gx#stx-cdr
      (lambda (_%stx126310%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx126310%_))))
    (define gx#stx-length
      (lambda (_%stx126275%_)
        (let _%lp126277%_ ((_%rest126279%_ _%stx126275%_) (_%n126280%_ '0))
          (let* ((_%g126281126289%_ (gx#stx-e _%rest126279%_))
                 (_%else126283126297%_ (lambda () _%n126280%_))
                 (_%K126285126302%_
                  (lambda (_%rest126300%_)
                    (_%lp126277%_ _%rest126300%_ (##fx+ _%n126280%_ '1)))))
            (if (pair? _%g126281126289%_)
                (let* ((_%tl126287126305%_ (##cdr _%g126281126289%_))
                       (_%rest126308%_ _%tl126287126305%_))
                  (_%K126285126302%_ _%rest126308%_))
                (_%else126283126297%_))))))
    (define gx#stx-for-each
      (lambda _g126805_
        (let ((_g126806_ (##length _g126805_)))
          (cond ((##fx= _g126806_ 2) (apply gx#stx-for-each1 _g126805_))
                ((##fx= _g126806_ 3) (apply gx#stx-for-each2 _g126805_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g126805_))))))
    (define gx#stx-for-each1
      (lambda (_%f126218%_ _%stx126219%_)
        (if (procedure? _%f126218%_)
            '#!void
            (error '"expected procedure" _%f126218%_))
        (let _%lp126221%_ ((_%rest126223%_ _%stx126219%_))
          (let* ((_%g126224126234%_ (gx#syntax-e _%rest126223%_))
                 (_%else126227126242%_
                  (lambda () (_%f126218%_ _%rest126223%_))))
            (let ((_%K126230126256%_
                   (lambda (_%rest126253%_ _%hd126254%_)
                     (_%f126218%_ _%hd126254%_)
                     (_%lp126221%_ _%rest126253%_)))
                  (_%K126229126247%_ (lambda () '#!void)))
              (let ((_%try-match126226126250%_
                     (lambda ()
                       (if (null? _%g126224126234%_)
                           (_%K126229126247%_)
                           (_%else126227126242%_)))))
                (if (pair? _%g126224126234%_)
                    (let ((_%tl126232126261%_ (##cdr _%g126224126234%_))
                          (_%hd126231126259%_ (##car _%g126224126234%_)))
                      (let ((_%hd126264%_ _%hd126231126259%_)
                            (_%rest126266%_ _%tl126232126261%_))
                        (_%K126230126256%_ _%rest126266%_ _%hd126264%_)))
                    (_%try-match126226126250%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f126123%_ _%xstx126124%_ _%ystx126125%_)
        (if (procedure? _%f126123%_)
            '#!void
            (error '"expected procedure" _%f126123%_))
        (let _%lp126127%_ ((_%xrest126129%_ _%xstx126124%_)
                           (_%yrest126130%_ _%ystx126125%_))
          (let* ((_%g126131126141%_ (gx#syntax-e _%xrest126129%_))
                 (_%else126134126149%_ (lambda () '#!void)))
            (let ((_%K126137126206%_
                   (lambda (_%xrest126175%_ _%xhd126176%_)
                     (let* ((_%g126177126184%_ (gx#syntax-e _%yrest126130%_))
                            (_%E126179126188%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g126177126184%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K126180126194%_
                             (lambda (_%yrest126191%_ _%yhd126192%_)
                               (_%f126123%_ _%xhd126176%_ _%yhd126192%_)
                               (_%lp126127%_
                                _%xrest126175%_
                                _%yrest126191%_))))
                       (if (pair? _%g126177126184%_)
                           (let ((_%hd126181126197%_ (##car _%g126177126184%_))
                                 (_%tl126182126199%_
                                  (##cdr _%g126177126184%_)))
                             (let* ((_%yhd126202%_ _%hd126181126197%_)
                                    (_%yrest126204%_ _%tl126182126199%_))
                               (_%K126180126194%_
                                _%yrest126204%_
                                _%yhd126202%_)))
                           (_%E126179126188%_)))))
                  (_%K126136126169%_
                   (lambda ()
                     (let* ((_%yrest126153126158%_ _%yrest126130%_)
                            (_%E126155126162%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest126153126158%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K126156126166%_
                             (lambda ()
                               (_%f126123%_ _%xrest126129%_ _%yrest126130%_))))
                       (if (gx#stx-null? _%yrest126153126158%_)
                           (_%E126155126162%_)
                           (_%K126156126166%_))))))
              (let ((_%try-match126133126172%_
                     (lambda ()
                       (if (null? _%g126131126141%_)
                           (_%else126134126149%_)
                           (_%K126136126169%_)))))
                (if (pair? _%g126131126141%_)
                    (let ((_%tl126139126211%_ (##cdr _%g126131126141%_))
                          (_%hd126138126209%_ (##car _%g126131126141%_)))
                      (let ((_%xhd126214%_ _%hd126138126209%_)
                            (_%xrest126216%_ _%tl126139126211%_))
                        (_%K126137126206%_ _%xrest126216%_ _%xhd126214%_)))
                    (_%try-match126133126172%_))))))))
    (define gx#stx-map
      (lambda _g126807_
        (let ((_g126808_ (##length _g126807_)))
          (cond ((##fx= _g126808_ 2) (apply gx#stx-map1 _g126807_))
                ((##fx= _g126808_ 3) (apply gx#stx-map2 _g126807_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g126807_))))))
    (define gx#stx-map1
      (lambda (_%f126066%_ _%stx126067%_)
        (if (procedure? _%f126066%_)
            '#!void
            (error '"expected procedure" _%f126066%_))
        (let _%recur126069%_ ((_%rest126071%_ _%stx126067%_))
          (let* ((_%g126072126082%_ (gx#syntax-e _%rest126071%_))
                 (_%else126075126090%_
                  (lambda () (_%f126066%_ _%rest126071%_))))
            (let ((_%K126078126104%_
                   (lambda (_%rest126101%_ _%hd126102%_)
                     (cons (_%f126066%_ _%hd126102%_)
                           (_%recur126069%_ _%rest126101%_))))
                  (_%K126077126095%_ (lambda () '())))
              (let ((_%try-match126074126098%_
                     (lambda ()
                       (if (null? _%g126072126082%_)
                           (_%K126077126095%_)
                           (_%else126075126090%_)))))
                (if (pair? _%g126072126082%_)
                    (let ((_%tl126080126109%_ (##cdr _%g126072126082%_))
                          (_%hd126079126107%_ (##car _%g126072126082%_)))
                      (let ((_%hd126112%_ _%hd126079126107%_)
                            (_%rest126114%_ _%tl126080126109%_))
                        (_%K126078126104%_ _%rest126114%_ _%hd126112%_)))
                    (_%try-match126074126098%_))))))))
    (define gx#stx-map2
      (lambda (_%f125971%_ _%xstx125972%_ _%ystx125973%_)
        (if (procedure? _%f125971%_)
            '#!void
            (error '"expected procedure" _%f125971%_))
        (let _%recur125975%_ ((_%xrest125977%_ _%xstx125972%_)
                              (_%yrest125978%_ _%ystx125973%_))
          (let* ((_%g125979125989%_ (gx#syntax-e _%xrest125977%_))
                 (_%else125982125997%_ (lambda () '())))
            (let ((_%K125985126054%_
                   (lambda (_%xrest126023%_ _%xhd126024%_)
                     (let* ((_%g126025126032%_ (gx#syntax-e _%yrest125978%_))
                            (_%E126027126036%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g126025126032%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K126028126042%_
                             (lambda (_%yrest126039%_ _%yhd126040%_)
                               (cons (_%f125971%_ _%xhd126024%_ _%yhd126040%_)
                                     (_%recur125975%_
                                      _%xrest126023%_
                                      _%yrest126039%_)))))
                       (if (pair? _%g126025126032%_)
                           (let ((_%hd126029126045%_ (##car _%g126025126032%_))
                                 (_%tl126030126047%_
                                  (##cdr _%g126025126032%_)))
                             (let* ((_%yhd126050%_ _%hd126029126045%_)
                                    (_%yrest126052%_ _%tl126030126047%_))
                               (_%K126028126042%_
                                _%yrest126052%_
                                _%yhd126050%_)))
                           (_%E126027126036%_)))))
                  (_%K125984126017%_
                   (lambda ()
                     (let* ((_%yrest126001126006%_ _%yrest125978%_)
                            (_%E126003126010%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest126001126006%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K126004126014%_
                             (lambda ()
                               (_%f125971%_ _%xrest125977%_ _%yrest125978%_))))
                       (if (gx#stx-null? _%yrest126001126006%_)
                           (_%E126003126010%_)
                           (_%K126004126014%_))))))
              (let ((_%try-match125981126020%_
                     (lambda ()
                       (if (null? _%g125979125989%_)
                           (_%else125982125997%_)
                           (_%K125984126017%_)))))
                (if (pair? _%g125979125989%_)
                    (let ((_%tl125987126059%_ (##cdr _%g125979125989%_))
                          (_%hd125986126057%_ (##car _%g125979125989%_)))
                      (let ((_%xhd126062%_ _%hd125986126057%_)
                            (_%xrest126064%_ _%tl125987126059%_))
                        (_%K125985126054%_ _%xrest126064%_ _%xhd126062%_)))
                    (_%try-match125981126020%_))))))))
    (define gx#stx-andmap
      (lambda (_%f125921%_ _%stx125922%_)
        (if (procedure? _%f125921%_)
            '#!void
            (error '"expected procedure" _%f125921%_))
        (let _%lp125924%_ ((_%rest125926%_ _%stx125922%_))
          (let* ((_%g125927125937%_ (gx#syntax-e _%rest125926%_))
                 (_%else125930125945%_
                  (lambda () (_%f125921%_ _%rest125926%_))))
            (let ((_%K125933125959%_
                   (lambda (_%rest125956%_ _%hd125957%_)
                     (if (_%f125921%_ _%hd125957%_)
                         (_%lp125924%_ _%rest125956%_)
                         '#f)))
                  (_%K125932125950%_ (lambda () '#t)))
              (let ((_%try-match125929125953%_
                     (lambda ()
                       (if (null? _%g125927125937%_)
                           (_%K125932125950%_)
                           (_%else125930125945%_)))))
                (if (pair? _%g125927125937%_)
                    (let ((_%tl125935125964%_ (##cdr _%g125927125937%_))
                          (_%hd125934125962%_ (##car _%g125927125937%_)))
                      (let ((_%hd125967%_ _%hd125934125962%_)
                            (_%rest125969%_ _%tl125935125964%_))
                        (_%K125933125959%_ _%rest125969%_ _%hd125967%_)))
                    (_%try-match125929125953%_))))))))
    (define gx#stx-ormap
      (lambda (_%f125868%_ _%stx125869%_)
        (if (procedure? _%f125868%_)
            '#!void
            (error '"expected procedure" _%f125868%_))
        (let _%lp125871%_ ((_%rest125873%_ _%stx125869%_))
          (let* ((_%g125874125884%_ (gx#syntax-e _%rest125873%_))
                 (_%else125877125892%_
                  (lambda () (_%f125868%_ _%rest125873%_))))
            (let ((_%K125880125909%_
                   (lambda (_%rest125903%_ _%hd125904%_)
                     (let ((_%$e125906%_ (_%f125868%_ _%hd125904%_)))
                       (if _%$e125906%_
                           _%$e125906%_
                           (_%lp125871%_ _%rest125903%_)))))
                  (_%K125879125897%_ (lambda () '#f)))
              (let ((_%try-match125876125900%_
                     (lambda ()
                       (if (null? _%g125874125884%_)
                           (_%K125879125897%_)
                           (_%else125877125892%_)))))
                (if (pair? _%g125874125884%_)
                    (let ((_%tl125882125914%_ (##cdr _%g125874125884%_))
                          (_%hd125881125912%_ (##car _%g125874125884%_)))
                      (let ((_%hd125917%_ _%hd125881125912%_)
                            (_%rest125919%_ _%tl125882125914%_))
                        (_%K125880125909%_ _%rest125919%_ _%hd125917%_)))
                    (_%try-match125876125900%_))))))))
    (define gx#stx-foldl
      (lambda (_%f125816%_ _%iv125817%_ _%stx125818%_)
        (if (procedure? _%f125816%_)
            '#!void
            (error '"expected procedure" _%f125816%_))
        (let _%lp125820%_ ((_%r125822%_ _%iv125817%_)
                           (_%rest125823%_ _%stx125818%_))
          (let* ((_%g125824125834%_ (gx#syntax-e _%rest125823%_))
                 (_%else125827125842%_
                  (lambda () (_%f125816%_ _%rest125823%_ _%r125822%_))))
            (let ((_%K125830125856%_
                   (lambda (_%rest125853%_ _%hd125854%_)
                     (_%lp125820%_
                      (_%f125816%_ _%hd125854%_ _%r125822%_)
                      _%rest125853%_)))
                  (_%K125829125847%_ (lambda () _%r125822%_)))
              (let ((_%try-match125826125850%_
                     (lambda ()
                       (if (null? _%g125824125834%_)
                           (_%K125829125847%_)
                           (_%else125827125842%_)))))
                (if (pair? _%g125824125834%_)
                    (let ((_%tl125832125861%_ (##cdr _%g125824125834%_))
                          (_%hd125831125859%_ (##car _%g125824125834%_)))
                      (let ((_%hd125864%_ _%hd125831125859%_)
                            (_%rest125866%_ _%tl125832125861%_))
                        (_%K125830125856%_ _%rest125866%_ _%hd125864%_)))
                    (_%try-match125826125850%_))))))))
    (define gx#stx-foldr
      (lambda (_%f125765%_ _%iv125766%_ _%stx125767%_)
        (if (procedure? _%f125765%_)
            '#!void
            (error '"expected procedure" _%f125765%_))
        (let _%recur125769%_ ((_%rest125771%_ _%stx125767%_))
          (let* ((_%g125772125782%_ (gx#syntax-e _%rest125771%_))
                 (_%else125775125790%_
                  (lambda () (_%f125765%_ _%rest125771%_ _%iv125766%_))))
            (let ((_%K125778125804%_
                   (lambda (_%rest125801%_ _%hd125802%_)
                     (_%f125765%_
                      _%hd125802%_
                      (_%recur125769%_ _%rest125801%_))))
                  (_%K125777125795%_ (lambda () _%iv125766%_)))
              (let ((_%try-match125774125798%_
                     (lambda ()
                       (if (null? _%g125772125782%_)
                           (_%K125777125795%_)
                           (_%else125775125790%_)))))
                (if (pair? _%g125772125782%_)
                    (let ((_%tl125780125809%_ (##cdr _%g125772125782%_))
                          (_%hd125779125807%_ (##car _%g125772125782%_)))
                      (let ((_%hd125812%_ _%hd125779125807%_)
                            (_%rest125814%_ _%tl125780125809%_))
                        (_%K125778125804%_ _%rest125814%_ _%hd125812%_)))
                    (_%try-match125774125798%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx125763%_) (gx#stx-foldl cons '() _%stx125763%_)))
    (define gx#stx-last
      (lambda (_%stx125724%_)
        (let _%lp125726%_ ((_%rest125728%_ _%stx125724%_))
          (let* ((_%g125729125737%_ (gx#syntax-e _%rest125728%_))
                 (_%else125731125745%_ (lambda () _%rest125728%_))
                 (_%K125733125751%_
                  (lambda (_%rest125748%_ _%hd125749%_)
                    (if (gx#stx-null? _%rest125748%_)
                        _%hd125749%_
                        (_%lp125726%_ _%rest125748%_)))))
            (if (pair? _%g125729125737%_)
                (let ((_%hd125734125754%_ (##car _%g125729125737%_))
                      (_%tl125735125756%_ (##cdr _%g125729125737%_)))
                  (let* ((_%hd125759%_ _%hd125734125754%_)
                         (_%rest125761%_ _%tl125735125756%_))
                    (_%K125733125751%_ _%rest125761%_ _%hd125759%_)))
                (_%else125731125745%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx125695%_)
        (let _%lp125697%_ ((_%hd125699%_ _%stx125695%_))
          (let* ((_%g125700125707%_ (gx#syntax-e _%hd125699%_))
                 (_%E125702125711%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g125700125707%_
                           '([_ . rest]))
                    '#!void))
                 (_%K125703125716%_
                  (lambda (_%rest125714%_)
                    (if (gx#stx-pair? _%rest125714%_)
                        (_%lp125697%_ _%rest125714%_)
                        _%hd125699%_))))
            (if (pair? _%g125700125707%_)
                (let* ((_%tl125705125719%_ (##cdr _%g125700125707%_))
                       (_%rest125722%_ _%tl125705125719%_))
                  (_%K125703125716%_ _%rest125722%_))
                (_%E125702125711%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx125664%_ _%k125665%_)
        (let _%lp125667%_ ((_%rest125669%_ _%stx125664%_)
                           (_%k125670%_ _%k125665%_))
          (if (fxpositive? _%k125670%_)
              (let* ((_%g125671125678%_ (gx#syntax-e _%rest125669%_))
                     (_%E125673125682%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g125671125678%_
                               '([_ . rest]))
                        '#!void))
                     (_%K125674125687%_
                      (lambda (_%rest125685%_)
                        (_%lp125667%_ _%rest125685%_ (##fx- _%k125670%_ '1)))))
                (if (pair? _%g125671125678%_)
                    (let* ((_%tl125676125690%_ (##cdr _%g125671125678%_))
                           (_%rest125693%_ _%tl125676125690%_))
                      (_%K125674125687%_ _%rest125693%_))
                    (_%E125673125682%_)))
              _%rest125669%_))))
    (define gx#stx-list-ref
      (lambda (_%stx125661%_ _%k125662%_)
        (gx#stx-car (gx#stx-list-tail _%stx125661%_ _%k125662%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx125573%_ _%key?125574%_)
        (if (procedure? _%key?125574%_)
            '#!void
            (error '"expected procedure" _%key?125574%_))
        (let _%lp125576%_ ((_%rest125578%_ _%stx125573%_))
          (let* ((_%g125579125589%_ (gx#stx-e _%rest125578%_))
                 (_%else125582125597%_ (lambda () '#f)))
            (let ((_%K125585125639%_
                   (lambda (_%rest125608%_ _%hd125609%_)
                     (if (_%key?125574%_ _%hd125609%_)
                         (let* ((_%g125610125618%_ (gx#stx-e _%rest125608%_))
                                (_%else125612125626%_ (lambda () '#f))
                                (_%K125614125631%_
                                 (lambda (_%rest125629%_)
                                   (_%lp125576%_ _%rest125629%_))))
                           (if (pair? _%g125610125618%_)
                               (let* ((_%tl125616125634%_
                                       (##cdr _%g125610125618%_))
                                      (_%rest125637%_ _%tl125616125634%_))
                                 (_%lp125576%_ _%rest125637%_))
                               (_%else125612125626%_)))
                         '#f)))
                  (_%K125584125602%_ (lambda () '#t)))
              (let ((_%try-match125581125605%_
                     (lambda ()
                       (if (null? _%g125579125589%_)
                           (_%K125584125602%_)
                           (_%else125582125597%_)))))
                (if (pair? _%g125579125589%_)
                    (let ((_%tl125587125644%_ (##cdr _%g125579125589%_))
                          (_%hd125586125642%_ (##car _%g125579125589%_)))
                      (let ((_%hd125647%_ _%hd125586125642%_)
                            (_%rest125649%_ _%tl125587125644%_))
                        (_%K125585125639%_ _%rest125649%_ _%hd125647%_)))
                    (_%try-match125581125605%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx125654%_)
        (let ((_%key?125656%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx125654%_ _%key?125656%_))))
    (define gx#stx-plist?
      (lambda _g126809_
        (let ((_g126810_ (##length _g126809_)))
          (cond ((##fx= _g126810_ 1) (apply gx#stx-plist?__0 _g126809_))
                ((##fx= _g126810_ 2) (apply gx#stx-plist?__% _g126809_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g126809_))))))
    (define gx#stx-getq__%
      (lambda (_%key125491%_ _%stx125492%_ _%key=?125493%_)
        (if (procedure? _%key=?125493%_)
            '#!void
            (error '"expected procedure" _%key=?125493%_))
        (let _%lp125495%_ ((_%rest125497%_ _%stx125492%_))
          (let* ((_%g125498125506%_ (gx#syntax-e _%rest125497%_))
                 (_%else125500125514%_ (lambda () '#f))
                 (_%K125502125548%_
                  (lambda (_%rest125517%_ _%hd125518%_)
                    (let* ((_%g125519125526%_ (gx#syntax-e _%rest125517%_))
                           (_%E125521125530%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g125519125526%_
                                     '([val . rest]))
                              '#!void))
                           (_%K125522125536%_
                            (lambda (_%rest125533%_ _%val125534%_)
                              (if (_%key=?125493%_ _%hd125518%_ _%key125491%_)
                                  _%val125534%_
                                  (_%lp125495%_ _%rest125533%_)))))
                      (if (pair? _%g125519125526%_)
                          (let ((_%hd125523125539%_ (##car _%g125519125526%_))
                                (_%tl125524125541%_ (##cdr _%g125519125526%_)))
                            (let* ((_%val125544%_ _%hd125523125539%_)
                                   (_%rest125546%_ _%tl125524125541%_))
                              (_%K125522125536%_
                               _%rest125546%_
                               _%val125544%_)))
                          (_%E125521125530%_))))))
            (if (pair? _%g125498125506%_)
                (let ((_%hd125503125551%_ (##car _%g125498125506%_))
                      (_%tl125504125553%_ (##cdr _%g125498125506%_)))
                  (let* ((_%hd125556%_ _%hd125503125551%_)
                         (_%rest125558%_ _%tl125504125553%_))
                    (_%K125502125548%_ _%rest125558%_ _%hd125556%_)))
                (_%else125500125514%_))))))
    (define gx#stx-getq__0
      (lambda (_%key125563%_ _%stx125564%_)
        (let ((_%key=?125566%_ gx#stx-eq?))
          (gx#stx-getq__% _%key125563%_ _%stx125564%_ _%key=?125566%_))))
    (define gx#stx-getq
      (lambda _g126811_
        (let ((_g126812_ (##length _g126811_)))
          (cond ((##fx= _g126812_ 2) (apply gx#stx-getq__0 _g126811_))
                ((##fx= _g126812_ 3) (apply gx#stx-getq__% _g126811_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g126811_))))))))

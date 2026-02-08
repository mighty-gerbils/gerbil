(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1770513296)
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
      (lambda _%$args170294%_
        (apply make-instance gx#identifier-wrap::t _%$args170294%_)))
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
      (lambda _%$args170291%_
        (apply make-instance gx#syntax-wrap::t _%$args170291%_)))
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
      (lambda _%$args170288%_
        (apply make-instance gx#syntax-quote::t _%$args170288%_)))
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
      (lambda (_%stx170286%_) (symbol? (gx#stx-e _%stx170286%_))))
    (define gx#identifier-quote?
      (lambda (_%stx170284%_)
        (if (##structure-direct-instance-of? _%stx170284%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx170284%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx170279%_)
        (if (##structure-direct-instance-of? _%stx170279%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx170279%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx170279%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx170274%_)
        (if (##structure-direct-instance-of? _%stx170274%_ 'gx#syntax-quote::t)
            _%stx170274%_
            (if (##structure-direct-instance-of?
                 _%stx170274%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx170274%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx170248%_)
        (if (##structure-direct-instance-of? _%stx170248%_ 'gx#syntax-wrap::t)
            (let _%lp170251%_ ((_%e170253%_
                                (##unchecked-structure-ref
                                 _%stx170248%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks170254%_
                                (cons (##unchecked-structure-ref
                                       _%stx170248%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e170253%_)
                  (let ((_%$e170257%_
                         (##type-id (##structure-type _%e170253%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e170257%_)
                        (_%lp170251%_
                         (##unchecked-structure-ref _%e170253%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e170253%_ '3 '#f '#f)
                          _%marks170254%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e170257%_)
                                (eq? 'gx#identifier-wrap::t _%$e170257%_))
                            (##unchecked-structure-ref _%e170253%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e170257%_)
                                (_%lp170251%_
                                 (##unchecked-structure-ref
                                  _%e170253%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks170254%_)
                                _%e170253%_))))
                  (if (null? _%marks170254%_)
                      _%e170253%_
                      (if (pair? _%e170253%_)
                          (cons (gx#stx-wrap
                                 (##car _%e170253%_)
                                 _%marks170254%_)
                                (gx#stx-wrap
                                 (##cdr _%e170253%_)
                                 _%marks170254%_))
                          (if (vector? _%e170253%_)
                              (vector-map
                               (lambda (_%g170265170267%_)
                                 (gx#stx-wrap
                                  _%g170265170267%_
                                  _%marks170254%_))
                               _%e170253%_)
                              (if (box? _%e170253%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e170253%_)
                                        _%marks170254%_))
                                  _%e170253%_))))))
            (if (##structure-instance-of? _%stx170248%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx170248%_ '1 '#f '#f)
                _%stx170248%_))))
    (define gx#syntax->datum
      (lambda (_%stx170241%_)
        (if (##structure-instance-of? _%stx170241%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx170241%_ '1 '#f '#f))
            (if (pair? _%stx170241%_)
                (cons (gx#syntax->datum (##car _%stx170241%_))
                      (gx#syntax->datum (##cdr _%stx170241%_)))
                (if (vector? _%stx170241%_)
                    (vector-map gx#syntax->datum _%stx170241%_)
                    (if (box? _%stx170241%_)
                        (box (gx#syntax->datum (unbox _%stx170241%_)))
                        _%stx170241%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx170175%_ _%datum170176%_ _%src170177%_ _%quote?170178%_)
        (letrec ((_%wrap-datum170180%_
                  (lambda (_%e170213%_ _%marks170214%_)
                    (_%wrap-inner170182%_
                     _%e170213%_
                     (lambda (_%g170215170217%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g170215170217%_
                        _%src170177%_
                        _%marks170214%_)))))
                 (_%wrap-quote170181%_
                  (lambda (_%e170205%_ _%ctx170206%_ _%marks170207%_)
                    (_%wrap-inner170182%_
                     _%e170205%_
                     (lambda (_%g170208170210%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g170208170210%_
                        _%src170177%_
                        _%ctx170206%_
                        _%marks170207%_)))))
                 (_%wrap-inner170182%_
                  (lambda (_%e170193%_ _%wrap-e170194%_)
                    (let _%recur170196%_ ((_%e170198%_ _%e170193%_))
                      (if (symbol? _%e170198%_)
                          (_%wrap-e170194%_ _%e170198%_)
                          (if (pair? _%e170198%_)
                              (cons (_%recur170196%_ (##car _%e170198%_))
                                    (_%recur170196%_ (##cdr _%e170198%_)))
                              (if (vector? _%e170198%_)
                                  (vector-map _%recur170196%_ _%e170198%_)
                                  (if (box? _%e170198%_)
                                      (box (_%recur170196%_
                                            (unbox _%e170198%_)))
                                      _%e170198%_)))))))
                 (_%wrap-outer170183%_
                  (lambda (_%e170191%_)
                    (if (##structure-instance-of? _%e170191%_ 'gerbil#AST::t)
                        _%e170191%_
                        (##structure gx#AST::t _%e170191%_ _%src170177%_)))))
          (if (##structure-instance-of? _%datum170176%_ 'gerbil#AST::t)
              _%datum170176%_
              (if (not _%stx170175%_)
                  (##structure gx#AST::t _%datum170176%_ _%src170177%_)
                  (if (gx#identifier? _%stx170175%_)
                      (let ((_%stx170188%_ (gx#stx-unwrap__0 _%stx170175%_)))
                        (_%wrap-outer170183%_
                         (if (##structure-direct-instance-of?
                              _%stx170188%_
                              'gx#syntax-quote::t)
                             (if _%quote?170178%_
                                 (_%wrap-quote170181%_
                                  _%datum170176%_
                                  (##unchecked-structure-ref
                                   _%stx170188%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx170188%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum170180%_
                                  _%datum170176%_
                                  (##unchecked-structure-ref
                                   _%stx170188%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum170180%_
                              _%datum170176%_
                              (##unchecked-structure-ref
                               _%stx170188%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx170175%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx170223%_ _%datum170224%_)
        (let* ((_%src170226%_ '#f) (_%quote?170228%_ '#t))
          (gx#datum->syntax__%
           _%stx170223%_
           _%datum170224%_
           _%src170226%_
           _%quote?170228%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx170230%_ _%datum170231%_ _%src170232%_)
        (let ((_%quote?170234%_ '#t))
          (gx#datum->syntax__%
           _%stx170230%_
           _%datum170231%_
           _%src170232%_
           _%quote?170234%_))))
    (define gx#datum->syntax
      (lambda _g170374_
        (let ((_g170375_ (##length _g170374_)))
          (cond ((##fx= _g170375_ 2) (apply gx#datum->syntax__0 _g170374_))
                ((##fx= _g170375_ 3) (apply gx#datum->syntax__1 _g170374_))
                ((##fx= _g170375_ 4) (apply gx#datum->syntax__% _g170374_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g170374_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx170141%_ _%marks170142%_)
        (let _%lp170144%_ ((_%e170146%_ _%stx170141%_)
                           (_%marks170147%_ _%marks170142%_)
                           (_%src170148%_ (gx#stx-source _%stx170141%_)))
          (if (##structure-direct-instance-of? _%e170146%_ 'gx#syntax-wrap::t)
              (_%lp170144%_
               (##unchecked-structure-ref _%e170146%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e170146%_ '3 '#f '#f)
                _%marks170147%_)
               (##unchecked-structure-ref _%e170146%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e170146%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks170147%_)
                      _%e170146%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e170146%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e170146%_ '2 '#f '#f)
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e170146%_ '3 '#f '#f)
                        _%marks170147%_)))
                  (if (##structure-direct-instance-of?
                       _%e170146%_
                       'gx#syntax-quote::t)
                      _%e170146%_
                      (if (##structure-instance-of? _%e170146%_ 'gerbil#AST::t)
                          (_%lp170144%_
                           (##unchecked-structure-ref _%e170146%_ '1 '#f '#f)
                           _%marks170147%_
                           (##unchecked-structure-ref _%e170146%_ '2 '#f '#f))
                          (if (symbol? _%e170146%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e170146%_
                               _%src170148%_
                               (reverse _%marks170147%_))
                              (if (null? _%marks170147%_)
                                  _%e170146%_
                                  (if (pair? _%e170146%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e170146%_)
                                             _%marks170147%_)
                                            (gx#stx-wrap
                                             (##cdr _%e170146%_)
                                             _%marks170147%_))
                                      (if (vector? _%e170146%_)
                                          (vector-map
                                           (lambda (_%g170157170159%_)
                                             (gx#stx-wrap
                                              _%g170157170159%_
                                              _%marks170147%_))
                                           _%e170146%_)
                                          (if (box? _%e170146%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e170146%_)
                                                    _%marks170147%_))
                                              _%e170146%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx170167%_)
        (let ((_%marks170169%_ '()))
          (gx#stx-unwrap__% _%stx170167%_ _%marks170169%_))))
    (define gx#stx-unwrap
      (lambda _g170376_
        (let ((_g170377_ (##length _g170376_)))
          (cond ((##fx= _g170377_ 1) (apply gx#stx-unwrap__0 _g170376_))
                ((##fx= _g170377_ 2) (apply gx#stx-unwrap__% _g170376_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g170376_))))))
    (define gx#stx-wrap
      (lambda (_%stx170134%_ _%marks170135%_)
        (foldl__0
         (lambda (_%mark170137%_ _%stx170138%_)
           (gx#stx-apply-mark _%stx170138%_ _%mark170137%_))
         _%stx170134%_
         _%marks170135%_)))
    (define gx#stx-rewrap
      (lambda (_%stx170128%_ _%marks170129%_)
        (foldr__0
         (lambda (_%mark170131%_ _%stx170132%_)
           (gx#stx-apply-mark _%stx170132%_ _%mark170131%_))
         _%stx170128%_
         _%marks170129%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx170122%_ _%mark170123%_)
        (if (##structure-direct-instance-of? _%stx170122%_ 'gx#syntax-quote::t)
            _%stx170122%_
            (if (and (##structure-direct-instance-of?
                      _%stx170122%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark170123%_
                          (##unchecked-structure-ref
                           _%stx170122%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx170122%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx170122%_
                 (gx#stx-source _%stx170122%_)
                 _%mark170123%_)))))
    (define gx#apply-mark
      (lambda (_%mark170086%_ _%marks170087%_)
        (let* ((_%marks170088170096%_ _%marks170087%_)
               (_%else170090170104%_
                (lambda () (cons _%mark170086%_ _%marks170087%_)))
               (_%K170092170110%_
                (lambda (_%rest170107%_ _%hd170108%_)
                  (if (eq? _%mark170086%_ _%hd170108%_)
                      _%rest170107%_
                      (cons _%mark170086%_ _%marks170087%_)))))
          (if (pair? _%marks170088170096%_)
              (let ((_%hd170093170113%_ (##car _%marks170088170096%_))
                    (_%tl170094170115%_ (##cdr _%marks170088170096%_)))
                (let* ((_%hd170118%_ _%hd170093170113%_)
                       (_%rest170120%_ _%tl170094170115%_))
                  (_%K170092170110%_ _%rest170120%_ _%hd170118%_)))
              (_%else170090170104%_)))))
    (define gx#stx-e
      (lambda (_%stx170081%_)
        (if (##structure-direct-instance-of? _%stx170081%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx170081%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx170081%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx170081%_ '1 '#f '#f)
                _%stx170081%_))))
    (define gx#stx-source
      (lambda (_%stx170079%_)
        (if (##structure-instance-of? _%stx170079%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx170079%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx170073%_ _%src170074%_)
        (if (or (##structure-instance-of? _%stx170073%_ 'gerbil#AST::t)
                (not _%src170074%_))
            _%stx170073%_
            (##structure gx#AST::t _%stx170073%_ _%src170074%_))))
    (define gx#stx-datum?
      (lambda (_%stx170071%_) (gx#self-quoting? (gx#stx-e _%stx170071%_))))
    (define gx#self-quoting?
      (lambda (_%x170054%_)
        (let ((_%$e170056%_ (immediate? _%x170054%_)))
          (if _%$e170056%_
              _%$e170056%_
              (let ((_%$e170059%_ (number? _%x170054%_)))
                (if _%$e170059%_
                    _%$e170059%_
                    (let ((_%$e170062%_ (keyword? _%x170054%_)))
                      (if _%$e170062%_
                          _%$e170062%_
                          (let ((_%$e170065%_ (string? _%x170054%_)))
                            (if _%$e170065%_
                                _%$e170065%_
                                (let ((_%$e170068%_ (vector? _%x170054%_)))
                                  (if _%$e170068%_
                                      _%$e170068%_
                                      (u8vector? _%x170054%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e170052%_) (boolean? (gx#stx-e _%e170052%_))))
    (define gx#stx-keyword?
      (lambda (_%e170050%_) (keyword? (gx#stx-e _%e170050%_))))
    (define gx#stx-char? (lambda (_%e170048%_) (char? (gx#stx-e _%e170048%_))))
    (define gx#stx-number?
      (lambda (_%e170046%_) (number? (gx#stx-e _%e170046%_))))
    (define gx#stx-fixnum?
      (lambda (_%e170044%_) (fixnum? (gx#stx-e _%e170044%_))))
    (define gx#stx-string?
      (lambda (_%e170042%_) (string? (gx#stx-e _%e170042%_))))
    (define gx#stx-null? (lambda (_%e170040%_) (null? (gx#stx-e _%e170040%_))))
    (define gx#stx-pair? (lambda (_%e170038%_) (pair? (gx#stx-e _%e170038%_))))
    (define gx#stx-list?
      (lambda (_%e170000%_)
        (let* ((_%g170001170010%_ (gx#stx-e _%e170000%_))
               (_%E170004170014%_
                (lambda ()
                  (error '"No clause matching"
                         _%g170001170010%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K170006170030%_
                 (lambda (_%rest170028%_) (gx#stx-list? _%rest170028%_)))
                (_%K170005170020%_
                 (lambda (_%tail170018%_) (null? _%tail170018%_))))
            (if (pair? _%g170001170010%_)
                (let* ((_%tl170008170033%_ (##cdr _%g170001170010%_))
                       (_%rest170036%_ _%tl170008170033%_))
                  (gx#stx-list? _%rest170036%_))
                (let ((_%tail170023%_ _%g170001170010%_))
                  (null? _%tail170023%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e169993%_)
        (let* ((_%e169995%_ (gx#stx-e _%e169993%_))
               (_%$e169997%_ (pair? _%e169995%_)))
          (if _%$e169997%_ _%$e169997%_ (null? _%e169995%_)))))
    (define gx#stx-vector?
      (lambda (_%e169991%_) (vector? (gx#stx-e _%e169991%_))))
    (define gx#stx-box? (lambda (_%e169989%_) (box? (gx#stx-e _%e169989%_))))
    (define gx#stx-eq?
      (lambda (_%x169986%_ _%y169987%_)
        (eq? (gx#stx-e _%x169986%_) (gx#stx-e _%y169987%_))))
    (define gx#stx-eqv?
      (lambda (_%x169983%_ _%y169984%_)
        (eqv? (gx#stx-e _%x169983%_) (gx#stx-e _%y169984%_))))
    (define gx#stx-equal?
      (lambda (_%x169980%_ _%y169981%_)
        (equal? (gx#stx-e _%x169980%_) (gx#stx-e _%y169981%_))))
    (define gx#stx-false? (lambda (_%x169978%_) (not (gx#stx-e _%x169978%_))))
    (define gx#stx-identifier
      (lambda (_%template169975%_ . _%args169976%_)
        (gx#datum->syntax__1
         _%template169975%_
         (apply make-symbol (gx#syntax->datum _%args169976%_))
         (gx#stx-source _%template169975%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx169973%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx169973%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx169968%_)
        (if (##structure-direct-instance-of?
             _%stx169968%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx169968%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx169968%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx169968%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx169968%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx169964%_)
        (let ((_%stx169966%_ (gx#stx-unwrap__0 _%stx169964%_)))
          (if (gx#identifier-quote? _%stx169966%_)
              (##unchecked-structure-ref _%stx169966%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx169919%_)
        (let* ((_%g169920169930%_ (gx#stx-e _%stx169919%_))
               (_%else169923169938%_ (lambda () '#f)))
          (let ((_%K169926169952%_
                 (lambda (_%rest169949%_ _%hd169950%_)
                   (if (gx#identifier? _%hd169950%_)
                       (gx#identifier-list? _%rest169949%_)
                       '#f)))
                (_%K169925169943%_ (lambda () '#t)))
            (let ((_%try-match169922169946%_
                   (lambda ()
                     (if (null? _%g169920169930%_)
                         (_%K169925169943%_)
                         (_%else169923169938%_)))))
              (if (pair? _%g169920169930%_)
                  (let ((_%tl169928169957%_ (##cdr _%g169920169930%_))
                        (_%hd169927169955%_ (##car _%g169920169930%_)))
                    (let ((_%hd169960%_ _%hd169927169955%_)
                          (_%rest169962%_ _%tl169928169957%_))
                      (_%K169926169952%_ _%rest169962%_ _%hd169960%_)))
                  (_%try-match169922169946%_)))))))
    (define gx#genident__%
      (lambda (_%e169899%_ _%src169900%_)
        (gx#datum->syntax__1
         (if (gx#identifier? _%src169900%_) _%src169900%_ '#f)
         (##string->symbol
          (##symbol->string
           (##gensym
            (let ((_%e169902%_ (gx#stx-e _%e169899%_)))
              (if (symbol? _%e169902%_) _%e169902%_ 'g)))))
         _%src169900%_)))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e169908%_ 'g) (_%src169910%_ '#f))
          (gx#genident__% _%e169908%_ _%src169910%_))))
    (define gx#genident__1
      (lambda (_%e169912%_)
        (let ((_%src169914%_ '#f))
          (gx#genident__% _%e169912%_ _%src169914%_))))
    (define gx#genident
      (lambda _g170378_
        (let ((_g170379_ (##length _g170378_)))
          (cond ((##fx= _g170379_ 0) (apply gx#genident__0 _g170378_))
                ((##fx= _g170379_ 1) (apply gx#genident__1 _g170378_))
                ((##fx= _g170379_ 2) (apply gx#genident__% _g170378_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g170378_))))))
    (define gx#gentemps
      (lambda (_%stx-lst169894%_)
        (gx#stx-map1
         (lambda (_%x169896%_) (gx#genident__% _%x169896%_ _%x169896%_))
         _%stx-lst169894%_)))
    (define gx#syntax->list
      (lambda (_%stx169892%_) (gx#stx-map1 values _%stx169892%_)))
    (define gx#stx-car
      (lambda (_%stx169889%_)
        (declare (safe))
        (car (gx#syntax-e _%stx169889%_))))
    (define gx#stx-cdr
      (lambda (_%stx169886%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx169886%_))))
    (define gx#stx-length
      (lambda (_%stx169851%_)
        (let _%lp169853%_ ((_%rest169855%_ _%stx169851%_) (_%n169856%_ '0))
          (let* ((_%g169857169865%_ (gx#stx-e _%rest169855%_))
                 (_%else169859169873%_ (lambda () _%n169856%_))
                 (_%K169861169878%_
                  (lambda (_%rest169876%_)
                    (_%lp169853%_ _%rest169876%_ (##fx+ _%n169856%_ '1)))))
            (if (pair? _%g169857169865%_)
                (let* ((_%tl169863169881%_ (##cdr _%g169857169865%_))
                       (_%rest169884%_ _%tl169863169881%_))
                  (_%K169861169878%_ _%rest169884%_))
                (_%else169859169873%_))))))
    (define gx#stx-for-each
      (lambda _g170380_
        (let ((_g170381_ (##length _g170380_)))
          (cond ((##fx= _g170381_ 2) (apply gx#stx-for-each1 _g170380_))
                ((##fx= _g170381_ 3) (apply gx#stx-for-each2 _g170380_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g170380_))))))
    (define gx#stx-for-each1
      (lambda (_%f169794%_ _%stx169795%_)
        (if (procedure? _%f169794%_)
            '#!void
            (error '"expected procedure" _%f169794%_))
        (let _%lp169797%_ ((_%rest169799%_ _%stx169795%_))
          (let* ((_%g169800169810%_ (gx#syntax-e _%rest169799%_))
                 (_%else169803169818%_
                  (lambda () (_%f169794%_ _%rest169799%_))))
            (let ((_%K169806169832%_
                   (lambda (_%rest169829%_ _%hd169830%_)
                     (_%f169794%_ _%hd169830%_)
                     (_%lp169797%_ _%rest169829%_)))
                  (_%K169805169823%_ (lambda () '#!void)))
              (let ((_%try-match169802169826%_
                     (lambda ()
                       (if (null? _%g169800169810%_)
                           (_%K169805169823%_)
                           (_%else169803169818%_)))))
                (if (pair? _%g169800169810%_)
                    (let ((_%tl169808169837%_ (##cdr _%g169800169810%_))
                          (_%hd169807169835%_ (##car _%g169800169810%_)))
                      (let ((_%hd169840%_ _%hd169807169835%_)
                            (_%rest169842%_ _%tl169808169837%_))
                        (_%K169806169832%_ _%rest169842%_ _%hd169840%_)))
                    (_%try-match169802169826%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f169699%_ _%xstx169700%_ _%ystx169701%_)
        (if (procedure? _%f169699%_)
            '#!void
            (error '"expected procedure" _%f169699%_))
        (let _%lp169703%_ ((_%xrest169705%_ _%xstx169700%_)
                           (_%yrest169706%_ _%ystx169701%_))
          (let* ((_%g169707169717%_ (gx#syntax-e _%xrest169705%_))
                 (_%else169710169725%_ (lambda () '#!void)))
            (let ((_%K169713169782%_
                   (lambda (_%xrest169751%_ _%xhd169752%_)
                     (let* ((_%g169753169760%_ (gx#syntax-e _%yrest169706%_))
                            (_%E169755169764%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g169753169760%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K169756169770%_
                             (lambda (_%yrest169767%_ _%yhd169768%_)
                               (_%f169699%_ _%xhd169752%_ _%yhd169768%_)
                               (_%lp169703%_
                                _%xrest169751%_
                                _%yrest169767%_))))
                       (if (pair? _%g169753169760%_)
                           (let ((_%hd169757169773%_ (##car _%g169753169760%_))
                                 (_%tl169758169775%_
                                  (##cdr _%g169753169760%_)))
                             (let* ((_%yhd169778%_ _%hd169757169773%_)
                                    (_%yrest169780%_ _%tl169758169775%_))
                               (_%K169756169770%_
                                _%yrest169780%_
                                _%yhd169778%_)))
                           (_%E169755169764%_)))))
                  (_%K169712169745%_
                   (lambda ()
                     (let* ((_%yrest169729169734%_ _%yrest169706%_)
                            (_%E169731169738%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest169729169734%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K169732169742%_
                             (lambda ()
                               (_%f169699%_ _%xrest169705%_ _%yrest169706%_))))
                       (if (gx#stx-null? _%yrest169729169734%_)
                           (_%E169731169738%_)
                           (_%K169732169742%_))))))
              (let ((_%try-match169709169748%_
                     (lambda ()
                       (if (null? _%g169707169717%_)
                           (_%else169710169725%_)
                           (_%K169712169745%_)))))
                (if (pair? _%g169707169717%_)
                    (let ((_%tl169715169787%_ (##cdr _%g169707169717%_))
                          (_%hd169714169785%_ (##car _%g169707169717%_)))
                      (let ((_%xhd169790%_ _%hd169714169785%_)
                            (_%xrest169792%_ _%tl169715169787%_))
                        (_%K169713169782%_ _%xrest169792%_ _%xhd169790%_)))
                    (_%try-match169709169748%_))))))))
    (define gx#stx-map
      (lambda _g170382_
        (let ((_g170383_ (##length _g170382_)))
          (cond ((##fx= _g170383_ 2) (apply gx#stx-map1 _g170382_))
                ((##fx= _g170383_ 3) (apply gx#stx-map2 _g170382_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g170382_))))))
    (define gx#stx-map1
      (lambda (_%f169642%_ _%stx169643%_)
        (if (procedure? _%f169642%_)
            '#!void
            (error '"expected procedure" _%f169642%_))
        (let _%recur169645%_ ((_%rest169647%_ _%stx169643%_))
          (let* ((_%g169648169658%_ (gx#syntax-e _%rest169647%_))
                 (_%else169651169666%_
                  (lambda () (_%f169642%_ _%rest169647%_))))
            (let ((_%K169654169680%_
                   (lambda (_%rest169677%_ _%hd169678%_)
                     (cons (_%f169642%_ _%hd169678%_)
                           (_%recur169645%_ _%rest169677%_))))
                  (_%K169653169671%_ (lambda () '())))
              (let ((_%try-match169650169674%_
                     (lambda ()
                       (if (null? _%g169648169658%_)
                           (_%K169653169671%_)
                           (_%else169651169666%_)))))
                (if (pair? _%g169648169658%_)
                    (let ((_%tl169656169685%_ (##cdr _%g169648169658%_))
                          (_%hd169655169683%_ (##car _%g169648169658%_)))
                      (let ((_%hd169688%_ _%hd169655169683%_)
                            (_%rest169690%_ _%tl169656169685%_))
                        (_%K169654169680%_ _%rest169690%_ _%hd169688%_)))
                    (_%try-match169650169674%_))))))))
    (define gx#stx-map2
      (lambda (_%f169547%_ _%xstx169548%_ _%ystx169549%_)
        (if (procedure? _%f169547%_)
            '#!void
            (error '"expected procedure" _%f169547%_))
        (let _%recur169551%_ ((_%xrest169553%_ _%xstx169548%_)
                              (_%yrest169554%_ _%ystx169549%_))
          (let* ((_%g169555169565%_ (gx#syntax-e _%xrest169553%_))
                 (_%else169558169573%_ (lambda () '())))
            (let ((_%K169561169630%_
                   (lambda (_%xrest169599%_ _%xhd169600%_)
                     (let* ((_%g169601169608%_ (gx#syntax-e _%yrest169554%_))
                            (_%E169603169612%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g169601169608%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K169604169618%_
                             (lambda (_%yrest169615%_ _%yhd169616%_)
                               (cons (_%f169547%_ _%xhd169600%_ _%yhd169616%_)
                                     (_%recur169551%_
                                      _%xrest169599%_
                                      _%yrest169615%_)))))
                       (if (pair? _%g169601169608%_)
                           (let ((_%hd169605169621%_ (##car _%g169601169608%_))
                                 (_%tl169606169623%_
                                  (##cdr _%g169601169608%_)))
                             (let* ((_%yhd169626%_ _%hd169605169621%_)
                                    (_%yrest169628%_ _%tl169606169623%_))
                               (_%K169604169618%_
                                _%yrest169628%_
                                _%yhd169626%_)))
                           (_%E169603169612%_)))))
                  (_%K169560169593%_
                   (lambda ()
                     (let* ((_%yrest169577169582%_ _%yrest169554%_)
                            (_%E169579169586%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest169577169582%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K169580169590%_
                             (lambda ()
                               (_%f169547%_ _%xrest169553%_ _%yrest169554%_))))
                       (if (gx#stx-null? _%yrest169577169582%_)
                           (_%E169579169586%_)
                           (_%K169580169590%_))))))
              (let ((_%try-match169557169596%_
                     (lambda ()
                       (if (null? _%g169555169565%_)
                           (_%else169558169573%_)
                           (_%K169560169593%_)))))
                (if (pair? _%g169555169565%_)
                    (let ((_%tl169563169635%_ (##cdr _%g169555169565%_))
                          (_%hd169562169633%_ (##car _%g169555169565%_)))
                      (let ((_%xhd169638%_ _%hd169562169633%_)
                            (_%xrest169640%_ _%tl169563169635%_))
                        (_%K169561169630%_ _%xrest169640%_ _%xhd169638%_)))
                    (_%try-match169557169596%_))))))))
    (define gx#stx-andmap
      (lambda (_%f169497%_ _%stx169498%_)
        (if (procedure? _%f169497%_)
            '#!void
            (error '"expected procedure" _%f169497%_))
        (let _%lp169500%_ ((_%rest169502%_ _%stx169498%_))
          (let* ((_%g169503169513%_ (gx#syntax-e _%rest169502%_))
                 (_%else169506169521%_
                  (lambda () (_%f169497%_ _%rest169502%_))))
            (let ((_%K169509169535%_
                   (lambda (_%rest169532%_ _%hd169533%_)
                     (if (_%f169497%_ _%hd169533%_)
                         (_%lp169500%_ _%rest169532%_)
                         '#f)))
                  (_%K169508169526%_ (lambda () '#t)))
              (let ((_%try-match169505169529%_
                     (lambda ()
                       (if (null? _%g169503169513%_)
                           (_%K169508169526%_)
                           (_%else169506169521%_)))))
                (if (pair? _%g169503169513%_)
                    (let ((_%tl169511169540%_ (##cdr _%g169503169513%_))
                          (_%hd169510169538%_ (##car _%g169503169513%_)))
                      (let ((_%hd169543%_ _%hd169510169538%_)
                            (_%rest169545%_ _%tl169511169540%_))
                        (_%K169509169535%_ _%rest169545%_ _%hd169543%_)))
                    (_%try-match169505169529%_))))))))
    (define gx#stx-ormap
      (lambda (_%f169444%_ _%stx169445%_)
        (if (procedure? _%f169444%_)
            '#!void
            (error '"expected procedure" _%f169444%_))
        (let _%lp169447%_ ((_%rest169449%_ _%stx169445%_))
          (let* ((_%g169450169460%_ (gx#syntax-e _%rest169449%_))
                 (_%else169453169468%_
                  (lambda () (_%f169444%_ _%rest169449%_))))
            (let ((_%K169456169485%_
                   (lambda (_%rest169479%_ _%hd169480%_)
                     (let ((_%$e169482%_ (_%f169444%_ _%hd169480%_)))
                       (if _%$e169482%_
                           _%$e169482%_
                           (_%lp169447%_ _%rest169479%_)))))
                  (_%K169455169473%_ (lambda () '#f)))
              (let ((_%try-match169452169476%_
                     (lambda ()
                       (if (null? _%g169450169460%_)
                           (_%K169455169473%_)
                           (_%else169453169468%_)))))
                (if (pair? _%g169450169460%_)
                    (let ((_%tl169458169490%_ (##cdr _%g169450169460%_))
                          (_%hd169457169488%_ (##car _%g169450169460%_)))
                      (let ((_%hd169493%_ _%hd169457169488%_)
                            (_%rest169495%_ _%tl169458169490%_))
                        (_%K169456169485%_ _%rest169495%_ _%hd169493%_)))
                    (_%try-match169452169476%_))))))))
    (define gx#stx-foldl
      (lambda (_%f169392%_ _%iv169393%_ _%stx169394%_)
        (if (procedure? _%f169392%_)
            '#!void
            (error '"expected procedure" _%f169392%_))
        (let _%lp169396%_ ((_%r169398%_ _%iv169393%_)
                           (_%rest169399%_ _%stx169394%_))
          (let* ((_%g169400169410%_ (gx#syntax-e _%rest169399%_))
                 (_%else169403169418%_
                  (lambda () (_%f169392%_ _%rest169399%_ _%r169398%_))))
            (let ((_%K169406169432%_
                   (lambda (_%rest169429%_ _%hd169430%_)
                     (_%lp169396%_
                      (_%f169392%_ _%hd169430%_ _%r169398%_)
                      _%rest169429%_)))
                  (_%K169405169423%_ (lambda () _%r169398%_)))
              (let ((_%try-match169402169426%_
                     (lambda ()
                       (if (null? _%g169400169410%_)
                           (_%K169405169423%_)
                           (_%else169403169418%_)))))
                (if (pair? _%g169400169410%_)
                    (let ((_%tl169408169437%_ (##cdr _%g169400169410%_))
                          (_%hd169407169435%_ (##car _%g169400169410%_)))
                      (let ((_%hd169440%_ _%hd169407169435%_)
                            (_%rest169442%_ _%tl169408169437%_))
                        (_%K169406169432%_ _%rest169442%_ _%hd169440%_)))
                    (_%try-match169402169426%_))))))))
    (define gx#stx-foldr
      (lambda (_%f169341%_ _%iv169342%_ _%stx169343%_)
        (if (procedure? _%f169341%_)
            '#!void
            (error '"expected procedure" _%f169341%_))
        (let _%recur169345%_ ((_%rest169347%_ _%stx169343%_))
          (let* ((_%g169348169358%_ (gx#syntax-e _%rest169347%_))
                 (_%else169351169366%_
                  (lambda () (_%f169341%_ _%rest169347%_ _%iv169342%_))))
            (let ((_%K169354169380%_
                   (lambda (_%rest169377%_ _%hd169378%_)
                     (_%f169341%_
                      _%hd169378%_
                      (_%recur169345%_ _%rest169377%_))))
                  (_%K169353169371%_ (lambda () _%iv169342%_)))
              (let ((_%try-match169350169374%_
                     (lambda ()
                       (if (null? _%g169348169358%_)
                           (_%K169353169371%_)
                           (_%else169351169366%_)))))
                (if (pair? _%g169348169358%_)
                    (let ((_%tl169356169385%_ (##cdr _%g169348169358%_))
                          (_%hd169355169383%_ (##car _%g169348169358%_)))
                      (let ((_%hd169388%_ _%hd169355169383%_)
                            (_%rest169390%_ _%tl169356169385%_))
                        (_%K169354169380%_ _%rest169390%_ _%hd169388%_)))
                    (_%try-match169350169374%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx169339%_) (gx#stx-foldl cons '() _%stx169339%_)))
    (define gx#stx-last
      (lambda (_%stx169300%_)
        (let _%lp169302%_ ((_%rest169304%_ _%stx169300%_))
          (let* ((_%g169305169313%_ (gx#syntax-e _%rest169304%_))
                 (_%else169307169321%_ (lambda () _%rest169304%_))
                 (_%K169309169327%_
                  (lambda (_%rest169324%_ _%hd169325%_)
                    (if (gx#stx-null? _%rest169324%_)
                        _%hd169325%_
                        (_%lp169302%_ _%rest169324%_)))))
            (if (pair? _%g169305169313%_)
                (let ((_%hd169310169330%_ (##car _%g169305169313%_))
                      (_%tl169311169332%_ (##cdr _%g169305169313%_)))
                  (let* ((_%hd169335%_ _%hd169310169330%_)
                         (_%rest169337%_ _%tl169311169332%_))
                    (_%K169309169327%_ _%rest169337%_ _%hd169335%_)))
                (_%else169307169321%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx169271%_)
        (let _%lp169273%_ ((_%hd169275%_ _%stx169271%_))
          (let* ((_%g169276169283%_ (gx#syntax-e _%hd169275%_))
                 (_%E169278169287%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g169276169283%_
                           '([_ . rest]))
                    '#!void))
                 (_%K169279169292%_
                  (lambda (_%rest169290%_)
                    (if (gx#stx-pair? _%rest169290%_)
                        (_%lp169273%_ _%rest169290%_)
                        _%hd169275%_))))
            (if (pair? _%g169276169283%_)
                (let* ((_%tl169281169295%_ (##cdr _%g169276169283%_))
                       (_%rest169298%_ _%tl169281169295%_))
                  (_%K169279169292%_ _%rest169298%_))
                (_%E169278169287%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx169240%_ _%k169241%_)
        (let _%lp169243%_ ((_%rest169245%_ _%stx169240%_)
                           (_%k169246%_ _%k169241%_))
          (if (fxpositive? _%k169246%_)
              (let* ((_%g169247169254%_ (gx#syntax-e _%rest169245%_))
                     (_%E169249169258%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g169247169254%_
                               '([_ . rest]))
                        '#!void))
                     (_%K169250169263%_
                      (lambda (_%rest169261%_)
                        (_%lp169243%_ _%rest169261%_ (##fx- _%k169246%_ '1)))))
                (if (pair? _%g169247169254%_)
                    (let* ((_%tl169252169266%_ (##cdr _%g169247169254%_))
                           (_%rest169269%_ _%tl169252169266%_))
                      (_%K169250169263%_ _%rest169269%_))
                    (_%E169249169258%_)))
              _%rest169245%_))))
    (define gx#stx-list-ref
      (lambda (_%stx169237%_ _%k169238%_)
        (gx#stx-car (gx#stx-list-tail _%stx169237%_ _%k169238%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx169149%_ _%key?169150%_)
        (if (procedure? _%key?169150%_)
            '#!void
            (error '"expected procedure" _%key?169150%_))
        (let _%lp169152%_ ((_%rest169154%_ _%stx169149%_))
          (let* ((_%g169155169165%_ (gx#stx-e _%rest169154%_))
                 (_%else169158169173%_ (lambda () '#f)))
            (let ((_%K169161169215%_
                   (lambda (_%rest169184%_ _%hd169185%_)
                     (if (_%key?169150%_ _%hd169185%_)
                         (let* ((_%g169186169194%_ (gx#stx-e _%rest169184%_))
                                (_%else169188169202%_ (lambda () '#f))
                                (_%K169190169207%_
                                 (lambda (_%rest169205%_)
                                   (_%lp169152%_ _%rest169205%_))))
                           (if (pair? _%g169186169194%_)
                               (let* ((_%tl169192169210%_
                                       (##cdr _%g169186169194%_))
                                      (_%rest169213%_ _%tl169192169210%_))
                                 (_%lp169152%_ _%rest169213%_))
                               (_%else169188169202%_)))
                         '#f)))
                  (_%K169160169178%_ (lambda () '#t)))
              (let ((_%try-match169157169181%_
                     (lambda ()
                       (if (null? _%g169155169165%_)
                           (_%K169160169178%_)
                           (_%else169158169173%_)))))
                (if (pair? _%g169155169165%_)
                    (let ((_%tl169163169220%_ (##cdr _%g169155169165%_))
                          (_%hd169162169218%_ (##car _%g169155169165%_)))
                      (let ((_%hd169223%_ _%hd169162169218%_)
                            (_%rest169225%_ _%tl169163169220%_))
                        (_%K169161169215%_ _%rest169225%_ _%hd169223%_)))
                    (_%try-match169157169181%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx169230%_)
        (let ((_%key?169232%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx169230%_ _%key?169232%_))))
    (define gx#stx-plist?
      (lambda _g170384_
        (let ((_g170385_ (##length _g170384_)))
          (cond ((##fx= _g170385_ 1) (apply gx#stx-plist?__0 _g170384_))
                ((##fx= _g170385_ 2) (apply gx#stx-plist?__% _g170384_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g170384_))))))
    (define gx#stx-getq__%
      (lambda (_%key169067%_ _%stx169068%_ _%key=?169069%_)
        (if (procedure? _%key=?169069%_)
            '#!void
            (error '"expected procedure" _%key=?169069%_))
        (let _%lp169071%_ ((_%rest169073%_ _%stx169068%_))
          (let* ((_%g169074169082%_ (gx#syntax-e _%rest169073%_))
                 (_%else169076169090%_ (lambda () '#f))
                 (_%K169078169124%_
                  (lambda (_%rest169093%_ _%hd169094%_)
                    (let* ((_%g169095169102%_ (gx#syntax-e _%rest169093%_))
                           (_%E169097169106%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g169095169102%_
                                     '([val . rest]))
                              '#!void))
                           (_%K169098169112%_
                            (lambda (_%rest169109%_ _%val169110%_)
                              (if (_%key=?169069%_ _%hd169094%_ _%key169067%_)
                                  _%val169110%_
                                  (_%lp169071%_ _%rest169109%_)))))
                      (if (pair? _%g169095169102%_)
                          (let ((_%hd169099169115%_ (##car _%g169095169102%_))
                                (_%tl169100169117%_ (##cdr _%g169095169102%_)))
                            (let* ((_%val169120%_ _%hd169099169115%_)
                                   (_%rest169122%_ _%tl169100169117%_))
                              (_%K169098169112%_
                               _%rest169122%_
                               _%val169120%_)))
                          (_%E169097169106%_))))))
            (if (pair? _%g169074169082%_)
                (let ((_%hd169079169127%_ (##car _%g169074169082%_))
                      (_%tl169080169129%_ (##cdr _%g169074169082%_)))
                  (let* ((_%hd169132%_ _%hd169079169127%_)
                         (_%rest169134%_ _%tl169080169129%_))
                    (_%K169078169124%_ _%rest169134%_ _%hd169132%_)))
                (_%else169076169090%_))))))
    (define gx#stx-getq__0
      (lambda (_%key169139%_ _%stx169140%_)
        (let ((_%key=?169142%_ gx#stx-eq?))
          (gx#stx-getq__% _%key169139%_ _%stx169140%_ _%key=?169142%_))))
    (define gx#stx-getq
      (lambda _g170386_
        (let ((_g170387_ (##length _g170386_)))
          (cond ((##fx= _g170387_ 2) (apply gx#stx-getq__0 _g170386_))
                ((##fx= _g170387_ 3) (apply gx#stx-getq__% _g170386_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g170386_))))))))

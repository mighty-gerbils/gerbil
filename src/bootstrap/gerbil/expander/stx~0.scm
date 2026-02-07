(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1770505717)
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
      (lambda _%$args170210%_
        (apply make-instance gx#identifier-wrap::t _%$args170210%_)))
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
      (lambda _%$args170207%_
        (apply make-instance gx#syntax-wrap::t _%$args170207%_)))
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
      (lambda _%$args170204%_
        (apply make-instance gx#syntax-quote::t _%$args170204%_)))
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
      (lambda (_%stx170202%_) (symbol? (gx#stx-e _%stx170202%_))))
    (define gx#identifier-quote?
      (lambda (_%stx170200%_)
        (if (##structure-direct-instance-of? _%stx170200%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx170200%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx170195%_)
        (if (##structure-direct-instance-of? _%stx170195%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx170195%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx170195%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx170190%_)
        (if (##structure-direct-instance-of? _%stx170190%_ 'gx#syntax-quote::t)
            _%stx170190%_
            (if (##structure-direct-instance-of?
                 _%stx170190%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx170190%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx170164%_)
        (if (##structure-direct-instance-of? _%stx170164%_ 'gx#syntax-wrap::t)
            (let _%lp170167%_ ((_%e170169%_
                                (##unchecked-structure-ref
                                 _%stx170164%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks170170%_
                                (cons (##unchecked-structure-ref
                                       _%stx170164%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e170169%_)
                  (let ((_%$e170173%_
                         (##type-id (##structure-type _%e170169%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e170173%_)
                        (_%lp170167%_
                         (##unchecked-structure-ref _%e170169%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e170169%_ '3 '#f '#f)
                          _%marks170170%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e170173%_)
                                (eq? 'gx#identifier-wrap::t _%$e170173%_))
                            (##unchecked-structure-ref _%e170169%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e170173%_)
                                (_%lp170167%_
                                 (##unchecked-structure-ref
                                  _%e170169%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks170170%_)
                                _%e170169%_))))
                  (if (null? _%marks170170%_)
                      _%e170169%_
                      (if (pair? _%e170169%_)
                          (cons (gx#stx-wrap
                                 (##car _%e170169%_)
                                 _%marks170170%_)
                                (gx#stx-wrap
                                 (##cdr _%e170169%_)
                                 _%marks170170%_))
                          (if (vector? _%e170169%_)
                              (vector-map
                               (lambda (_%g170181170183%_)
                                 (gx#stx-wrap
                                  _%g170181170183%_
                                  _%marks170170%_))
                               _%e170169%_)
                              (if (box? _%e170169%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e170169%_)
                                        _%marks170170%_))
                                  _%e170169%_))))))
            (if (##structure-instance-of? _%stx170164%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx170164%_ '1 '#f '#f)
                _%stx170164%_))))
    (define gx#syntax->datum
      (lambda (_%stx170157%_)
        (if (##structure-instance-of? _%stx170157%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx170157%_ '1 '#f '#f))
            (if (pair? _%stx170157%_)
                (cons (gx#syntax->datum (##car _%stx170157%_))
                      (gx#syntax->datum (##cdr _%stx170157%_)))
                (if (vector? _%stx170157%_)
                    (vector-map gx#syntax->datum _%stx170157%_)
                    (if (box? _%stx170157%_)
                        (box (gx#syntax->datum (unbox _%stx170157%_)))
                        _%stx170157%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx170091%_ _%datum170092%_ _%src170093%_ _%quote?170094%_)
        (letrec ((_%wrap-datum170096%_
                  (lambda (_%e170129%_ _%marks170130%_)
                    (_%wrap-inner170098%_
                     _%e170129%_
                     (lambda (_%g170131170133%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g170131170133%_
                        _%src170093%_
                        _%marks170130%_)))))
                 (_%wrap-quote170097%_
                  (lambda (_%e170121%_ _%ctx170122%_ _%marks170123%_)
                    (_%wrap-inner170098%_
                     _%e170121%_
                     (lambda (_%g170124170126%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g170124170126%_
                        _%src170093%_
                        _%ctx170122%_
                        _%marks170123%_)))))
                 (_%wrap-inner170098%_
                  (lambda (_%e170109%_ _%wrap-e170110%_)
                    (let _%recur170112%_ ((_%e170114%_ _%e170109%_))
                      (if (symbol? _%e170114%_)
                          (_%wrap-e170110%_ _%e170114%_)
                          (if (pair? _%e170114%_)
                              (cons (_%recur170112%_ (##car _%e170114%_))
                                    (_%recur170112%_ (##cdr _%e170114%_)))
                              (if (vector? _%e170114%_)
                                  (vector-map _%recur170112%_ _%e170114%_)
                                  (if (box? _%e170114%_)
                                      (box (_%recur170112%_
                                            (unbox _%e170114%_)))
                                      _%e170114%_)))))))
                 (_%wrap-outer170099%_
                  (lambda (_%e170107%_)
                    (if (##structure-instance-of? _%e170107%_ 'gerbil#AST::t)
                        _%e170107%_
                        (##structure gx#AST::t _%e170107%_ _%src170093%_)))))
          (if (##structure-instance-of? _%datum170092%_ 'gerbil#AST::t)
              _%datum170092%_
              (if (not _%stx170091%_)
                  (##structure gx#AST::t _%datum170092%_ _%src170093%_)
                  (if (gx#identifier? _%stx170091%_)
                      (let ((_%stx170104%_ (gx#stx-unwrap__0 _%stx170091%_)))
                        (_%wrap-outer170099%_
                         (if (##structure-direct-instance-of?
                              _%stx170104%_
                              'gx#syntax-quote::t)
                             (if _%quote?170094%_
                                 (_%wrap-quote170097%_
                                  _%datum170092%_
                                  (##unchecked-structure-ref
                                   _%stx170104%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx170104%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum170096%_
                                  _%datum170092%_
                                  (##unchecked-structure-ref
                                   _%stx170104%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum170096%_
                              _%datum170092%_
                              (##unchecked-structure-ref
                               _%stx170104%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx170091%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx170139%_ _%datum170140%_)
        (let* ((_%src170142%_ '#f) (_%quote?170144%_ '#t))
          (gx#datum->syntax__%
           _%stx170139%_
           _%datum170140%_
           _%src170142%_
           _%quote?170144%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx170146%_ _%datum170147%_ _%src170148%_)
        (let ((_%quote?170150%_ '#t))
          (gx#datum->syntax__%
           _%stx170146%_
           _%datum170147%_
           _%src170148%_
           _%quote?170150%_))))
    (define gx#datum->syntax
      (lambda _g170290_
        (let ((_g170291_ (##length _g170290_)))
          (cond ((##fx= _g170291_ 2) (apply gx#datum->syntax__0 _g170290_))
                ((##fx= _g170291_ 3) (apply gx#datum->syntax__1 _g170290_))
                ((##fx= _g170291_ 4) (apply gx#datum->syntax__% _g170290_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g170290_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx170057%_ _%marks170058%_)
        (let _%lp170060%_ ((_%e170062%_ _%stx170057%_)
                           (_%marks170063%_ _%marks170058%_)
                           (_%src170064%_ (gx#stx-source _%stx170057%_)))
          (if (##structure-direct-instance-of? _%e170062%_ 'gx#syntax-wrap::t)
              (_%lp170060%_
               (##unchecked-structure-ref _%e170062%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e170062%_ '3 '#f '#f)
                _%marks170063%_)
               (##unchecked-structure-ref _%e170062%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e170062%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks170063%_)
                      _%e170062%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e170062%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e170062%_ '2 '#f '#f)
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e170062%_ '3 '#f '#f)
                        _%marks170063%_)))
                  (if (##structure-direct-instance-of?
                       _%e170062%_
                       'gx#syntax-quote::t)
                      _%e170062%_
                      (if (##structure-instance-of? _%e170062%_ 'gerbil#AST::t)
                          (_%lp170060%_
                           (##unchecked-structure-ref _%e170062%_ '1 '#f '#f)
                           _%marks170063%_
                           (##unchecked-structure-ref _%e170062%_ '2 '#f '#f))
                          (if (symbol? _%e170062%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e170062%_
                               _%src170064%_
                               (reverse _%marks170063%_))
                              (if (null? _%marks170063%_)
                                  _%e170062%_
                                  (if (pair? _%e170062%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e170062%_)
                                             _%marks170063%_)
                                            (gx#stx-wrap
                                             (##cdr _%e170062%_)
                                             _%marks170063%_))
                                      (if (vector? _%e170062%_)
                                          (vector-map
                                           (lambda (_%g170073170075%_)
                                             (gx#stx-wrap
                                              _%g170073170075%_
                                              _%marks170063%_))
                                           _%e170062%_)
                                          (if (box? _%e170062%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e170062%_)
                                                    _%marks170063%_))
                                              _%e170062%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx170083%_)
        (let ((_%marks170085%_ '()))
          (gx#stx-unwrap__% _%stx170083%_ _%marks170085%_))))
    (define gx#stx-unwrap
      (lambda _g170292_
        (let ((_g170293_ (##length _g170292_)))
          (cond ((##fx= _g170293_ 1) (apply gx#stx-unwrap__0 _g170292_))
                ((##fx= _g170293_ 2) (apply gx#stx-unwrap__% _g170292_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g170292_))))))
    (define gx#stx-wrap
      (lambda (_%stx170050%_ _%marks170051%_)
        (foldl__0
         (lambda (_%mark170053%_ _%stx170054%_)
           (gx#stx-apply-mark _%stx170054%_ _%mark170053%_))
         _%stx170050%_
         _%marks170051%_)))
    (define gx#stx-rewrap
      (lambda (_%stx170044%_ _%marks170045%_)
        (foldr__0
         (lambda (_%mark170047%_ _%stx170048%_)
           (gx#stx-apply-mark _%stx170048%_ _%mark170047%_))
         _%stx170044%_
         _%marks170045%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx170038%_ _%mark170039%_)
        (if (##structure-direct-instance-of? _%stx170038%_ 'gx#syntax-quote::t)
            _%stx170038%_
            (if (and (##structure-direct-instance-of?
                      _%stx170038%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark170039%_
                          (##unchecked-structure-ref
                           _%stx170038%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx170038%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx170038%_
                 (gx#stx-source _%stx170038%_)
                 _%mark170039%_)))))
    (define gx#apply-mark
      (lambda (_%mark170002%_ _%marks170003%_)
        (let* ((_%marks170004170012%_ _%marks170003%_)
               (_%else170006170020%_
                (lambda () (cons _%mark170002%_ _%marks170003%_)))
               (_%K170008170026%_
                (lambda (_%rest170023%_ _%hd170024%_)
                  (if (eq? _%mark170002%_ _%hd170024%_)
                      _%rest170023%_
                      (cons _%mark170002%_ _%marks170003%_)))))
          (if (pair? _%marks170004170012%_)
              (let ((_%hd170009170029%_ (##car _%marks170004170012%_))
                    (_%tl170010170031%_ (##cdr _%marks170004170012%_)))
                (let* ((_%hd170034%_ _%hd170009170029%_)
                       (_%rest170036%_ _%tl170010170031%_))
                  (_%K170008170026%_ _%rest170036%_ _%hd170034%_)))
              (_%else170006170020%_)))))
    (define gx#stx-e
      (lambda (_%stx169997%_)
        (if (##structure-direct-instance-of? _%stx169997%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx169997%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx169997%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx169997%_ '1 '#f '#f)
                _%stx169997%_))))
    (define gx#stx-source
      (lambda (_%stx169995%_)
        (if (##structure-instance-of? _%stx169995%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx169995%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx169989%_ _%src169990%_)
        (if (or (##structure-instance-of? _%stx169989%_ 'gerbil#AST::t)
                (not _%src169990%_))
            _%stx169989%_
            (##structure gx#AST::t _%stx169989%_ _%src169990%_))))
    (define gx#stx-datum?
      (lambda (_%stx169987%_) (gx#self-quoting? (gx#stx-e _%stx169987%_))))
    (define gx#self-quoting?
      (lambda (_%x169970%_)
        (let ((_%$e169972%_ (immediate? _%x169970%_)))
          (if _%$e169972%_
              _%$e169972%_
              (let ((_%$e169975%_ (number? _%x169970%_)))
                (if _%$e169975%_
                    _%$e169975%_
                    (let ((_%$e169978%_ (keyword? _%x169970%_)))
                      (if _%$e169978%_
                          _%$e169978%_
                          (let ((_%$e169981%_ (string? _%x169970%_)))
                            (if _%$e169981%_
                                _%$e169981%_
                                (let ((_%$e169984%_ (vector? _%x169970%_)))
                                  (if _%$e169984%_
                                      _%$e169984%_
                                      (u8vector? _%x169970%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e169968%_) (boolean? (gx#stx-e _%e169968%_))))
    (define gx#stx-keyword?
      (lambda (_%e169966%_) (keyword? (gx#stx-e _%e169966%_))))
    (define gx#stx-char? (lambda (_%e169964%_) (char? (gx#stx-e _%e169964%_))))
    (define gx#stx-number?
      (lambda (_%e169962%_) (number? (gx#stx-e _%e169962%_))))
    (define gx#stx-fixnum?
      (lambda (_%e169960%_) (fixnum? (gx#stx-e _%e169960%_))))
    (define gx#stx-string?
      (lambda (_%e169958%_) (string? (gx#stx-e _%e169958%_))))
    (define gx#stx-null? (lambda (_%e169956%_) (null? (gx#stx-e _%e169956%_))))
    (define gx#stx-pair? (lambda (_%e169954%_) (pair? (gx#stx-e _%e169954%_))))
    (define gx#stx-list?
      (lambda (_%e169916%_)
        (let* ((_%g169917169926%_ (gx#stx-e _%e169916%_))
               (_%E169920169930%_
                (lambda ()
                  (error '"No clause matching"
                         _%g169917169926%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K169922169946%_
                 (lambda (_%rest169944%_) (gx#stx-list? _%rest169944%_)))
                (_%K169921169936%_
                 (lambda (_%tail169934%_) (null? _%tail169934%_))))
            (if (pair? _%g169917169926%_)
                (let* ((_%tl169924169949%_ (##cdr _%g169917169926%_))
                       (_%rest169952%_ _%tl169924169949%_))
                  (gx#stx-list? _%rest169952%_))
                (let ((_%tail169939%_ _%g169917169926%_))
                  (null? _%tail169939%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e169909%_)
        (let* ((_%e169911%_ (gx#stx-e _%e169909%_))
               (_%$e169913%_ (pair? _%e169911%_)))
          (if _%$e169913%_ _%$e169913%_ (null? _%e169911%_)))))
    (define gx#stx-vector?
      (lambda (_%e169907%_) (vector? (gx#stx-e _%e169907%_))))
    (define gx#stx-box? (lambda (_%e169905%_) (box? (gx#stx-e _%e169905%_))))
    (define gx#stx-eq?
      (lambda (_%x169902%_ _%y169903%_)
        (eq? (gx#stx-e _%x169902%_) (gx#stx-e _%y169903%_))))
    (define gx#stx-eqv?
      (lambda (_%x169899%_ _%y169900%_)
        (eqv? (gx#stx-e _%x169899%_) (gx#stx-e _%y169900%_))))
    (define gx#stx-equal?
      (lambda (_%x169896%_ _%y169897%_)
        (equal? (gx#stx-e _%x169896%_) (gx#stx-e _%y169897%_))))
    (define gx#stx-false? (lambda (_%x169894%_) (not (gx#stx-e _%x169894%_))))
    (define gx#stx-identifier
      (lambda (_%template169891%_ . _%args169892%_)
        (gx#datum->syntax__1
         _%template169891%_
         (apply make-symbol (gx#syntax->datum _%args169892%_))
         (gx#stx-source _%template169891%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx169889%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx169889%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx169884%_)
        (if (##structure-direct-instance-of?
             _%stx169884%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx169884%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx169884%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx169884%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx169884%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx169880%_)
        (let ((_%stx169882%_ (gx#stx-unwrap__0 _%stx169880%_)))
          (if (gx#identifier-quote? _%stx169882%_)
              (##unchecked-structure-ref _%stx169882%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx169835%_)
        (let* ((_%g169836169846%_ (gx#stx-e _%stx169835%_))
               (_%else169839169854%_ (lambda () '#f)))
          (let ((_%K169842169868%_
                 (lambda (_%rest169865%_ _%hd169866%_)
                   (if (gx#identifier? _%hd169866%_)
                       (gx#identifier-list? _%rest169865%_)
                       '#f)))
                (_%K169841169859%_ (lambda () '#t)))
            (let ((_%try-match169838169862%_
                   (lambda ()
                     (if (null? _%g169836169846%_)
                         (_%K169841169859%_)
                         (_%else169839169854%_)))))
              (if (pair? _%g169836169846%_)
                  (let ((_%tl169844169873%_ (##cdr _%g169836169846%_))
                        (_%hd169843169871%_ (##car _%g169836169846%_)))
                    (let ((_%hd169876%_ _%hd169843169871%_)
                          (_%rest169878%_ _%tl169844169873%_))
                      (_%K169842169868%_ _%rest169878%_ _%hd169876%_)))
                  (_%try-match169838169862%_)))))))
    (define gx#genident__%
      (lambda (_%e169815%_ _%src169816%_)
        (gx#datum->syntax__1
         (if (gx#identifier? _%src169816%_) _%src169816%_ '#f)
         (##string->symbol
          (##symbol->string
           (##gensym
            (let ((_%e169818%_ (gx#stx-e _%e169815%_)))
              (if (symbol? _%e169818%_) _%e169818%_ 'g)))))
         _%src169816%_)))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e169824%_ 'g) (_%src169826%_ '#f))
          (gx#genident__% _%e169824%_ _%src169826%_))))
    (define gx#genident__1
      (lambda (_%e169828%_)
        (let ((_%src169830%_ '#f))
          (gx#genident__% _%e169828%_ _%src169830%_))))
    (define gx#genident
      (lambda _g170294_
        (let ((_g170295_ (##length _g170294_)))
          (cond ((##fx= _g170295_ 0) (apply gx#genident__0 _g170294_))
                ((##fx= _g170295_ 1) (apply gx#genident__1 _g170294_))
                ((##fx= _g170295_ 2) (apply gx#genident__% _g170294_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g170294_))))))
    (define gx#gentemps
      (lambda (_%stx-lst169810%_)
        (gx#stx-map1
         (lambda (_%x169812%_) (gx#genident__% _%x169812%_ _%x169812%_))
         _%stx-lst169810%_)))
    (define gx#syntax->list
      (lambda (_%stx169808%_) (gx#stx-map1 values _%stx169808%_)))
    (define gx#stx-car
      (lambda (_%stx169805%_)
        (declare (safe))
        (car (gx#syntax-e _%stx169805%_))))
    (define gx#stx-cdr
      (lambda (_%stx169802%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx169802%_))))
    (define gx#stx-length
      (lambda (_%stx169767%_)
        (let _%lp169769%_ ((_%rest169771%_ _%stx169767%_) (_%n169772%_ '0))
          (let* ((_%g169773169781%_ (gx#stx-e _%rest169771%_))
                 (_%else169775169789%_ (lambda () _%n169772%_))
                 (_%K169777169794%_
                  (lambda (_%rest169792%_)
                    (_%lp169769%_ _%rest169792%_ (##fx+ _%n169772%_ '1)))))
            (if (pair? _%g169773169781%_)
                (let* ((_%tl169779169797%_ (##cdr _%g169773169781%_))
                       (_%rest169800%_ _%tl169779169797%_))
                  (_%K169777169794%_ _%rest169800%_))
                (_%else169775169789%_))))))
    (define gx#stx-for-each
      (lambda _g170296_
        (let ((_g170297_ (##length _g170296_)))
          (cond ((##fx= _g170297_ 2) (apply gx#stx-for-each1 _g170296_))
                ((##fx= _g170297_ 3) (apply gx#stx-for-each2 _g170296_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g170296_))))))
    (define gx#stx-for-each1
      (lambda (_%f169710%_ _%stx169711%_)
        (if (procedure? _%f169710%_)
            '#!void
            (error '"expected procedure" _%f169710%_))
        (let _%lp169713%_ ((_%rest169715%_ _%stx169711%_))
          (let* ((_%g169716169726%_ (gx#syntax-e _%rest169715%_))
                 (_%else169719169734%_
                  (lambda () (_%f169710%_ _%rest169715%_))))
            (let ((_%K169722169748%_
                   (lambda (_%rest169745%_ _%hd169746%_)
                     (_%f169710%_ _%hd169746%_)
                     (_%lp169713%_ _%rest169745%_)))
                  (_%K169721169739%_ (lambda () '#!void)))
              (let ((_%try-match169718169742%_
                     (lambda ()
                       (if (null? _%g169716169726%_)
                           (_%K169721169739%_)
                           (_%else169719169734%_)))))
                (if (pair? _%g169716169726%_)
                    (let ((_%tl169724169753%_ (##cdr _%g169716169726%_))
                          (_%hd169723169751%_ (##car _%g169716169726%_)))
                      (let ((_%hd169756%_ _%hd169723169751%_)
                            (_%rest169758%_ _%tl169724169753%_))
                        (_%K169722169748%_ _%rest169758%_ _%hd169756%_)))
                    (_%try-match169718169742%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f169615%_ _%xstx169616%_ _%ystx169617%_)
        (if (procedure? _%f169615%_)
            '#!void
            (error '"expected procedure" _%f169615%_))
        (let _%lp169619%_ ((_%xrest169621%_ _%xstx169616%_)
                           (_%yrest169622%_ _%ystx169617%_))
          (let* ((_%g169623169633%_ (gx#syntax-e _%xrest169621%_))
                 (_%else169626169641%_ (lambda () '#!void)))
            (let ((_%K169629169698%_
                   (lambda (_%xrest169667%_ _%xhd169668%_)
                     (let* ((_%g169669169676%_ (gx#syntax-e _%yrest169622%_))
                            (_%E169671169680%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g169669169676%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K169672169686%_
                             (lambda (_%yrest169683%_ _%yhd169684%_)
                               (_%f169615%_ _%xhd169668%_ _%yhd169684%_)
                               (_%lp169619%_
                                _%xrest169667%_
                                _%yrest169683%_))))
                       (if (pair? _%g169669169676%_)
                           (let ((_%hd169673169689%_ (##car _%g169669169676%_))
                                 (_%tl169674169691%_
                                  (##cdr _%g169669169676%_)))
                             (let* ((_%yhd169694%_ _%hd169673169689%_)
                                    (_%yrest169696%_ _%tl169674169691%_))
                               (_%K169672169686%_
                                _%yrest169696%_
                                _%yhd169694%_)))
                           (_%E169671169680%_)))))
                  (_%K169628169661%_
                   (lambda ()
                     (let* ((_%yrest169645169650%_ _%yrest169622%_)
                            (_%E169647169654%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest169645169650%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K169648169658%_
                             (lambda ()
                               (_%f169615%_ _%xrest169621%_ _%yrest169622%_))))
                       (if (gx#stx-null? _%yrest169645169650%_)
                           (_%E169647169654%_)
                           (_%K169648169658%_))))))
              (let ((_%try-match169625169664%_
                     (lambda ()
                       (if (null? _%g169623169633%_)
                           (_%else169626169641%_)
                           (_%K169628169661%_)))))
                (if (pair? _%g169623169633%_)
                    (let ((_%tl169631169703%_ (##cdr _%g169623169633%_))
                          (_%hd169630169701%_ (##car _%g169623169633%_)))
                      (let ((_%xhd169706%_ _%hd169630169701%_)
                            (_%xrest169708%_ _%tl169631169703%_))
                        (_%K169629169698%_ _%xrest169708%_ _%xhd169706%_)))
                    (_%try-match169625169664%_))))))))
    (define gx#stx-map
      (lambda _g170298_
        (let ((_g170299_ (##length _g170298_)))
          (cond ((##fx= _g170299_ 2) (apply gx#stx-map1 _g170298_))
                ((##fx= _g170299_ 3) (apply gx#stx-map2 _g170298_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g170298_))))))
    (define gx#stx-map1
      (lambda (_%f169558%_ _%stx169559%_)
        (if (procedure? _%f169558%_)
            '#!void
            (error '"expected procedure" _%f169558%_))
        (let _%recur169561%_ ((_%rest169563%_ _%stx169559%_))
          (let* ((_%g169564169574%_ (gx#syntax-e _%rest169563%_))
                 (_%else169567169582%_
                  (lambda () (_%f169558%_ _%rest169563%_))))
            (let ((_%K169570169596%_
                   (lambda (_%rest169593%_ _%hd169594%_)
                     (cons (_%f169558%_ _%hd169594%_)
                           (_%recur169561%_ _%rest169593%_))))
                  (_%K169569169587%_ (lambda () '())))
              (let ((_%try-match169566169590%_
                     (lambda ()
                       (if (null? _%g169564169574%_)
                           (_%K169569169587%_)
                           (_%else169567169582%_)))))
                (if (pair? _%g169564169574%_)
                    (let ((_%tl169572169601%_ (##cdr _%g169564169574%_))
                          (_%hd169571169599%_ (##car _%g169564169574%_)))
                      (let ((_%hd169604%_ _%hd169571169599%_)
                            (_%rest169606%_ _%tl169572169601%_))
                        (_%K169570169596%_ _%rest169606%_ _%hd169604%_)))
                    (_%try-match169566169590%_))))))))
    (define gx#stx-map2
      (lambda (_%f169463%_ _%xstx169464%_ _%ystx169465%_)
        (if (procedure? _%f169463%_)
            '#!void
            (error '"expected procedure" _%f169463%_))
        (let _%recur169467%_ ((_%xrest169469%_ _%xstx169464%_)
                              (_%yrest169470%_ _%ystx169465%_))
          (let* ((_%g169471169481%_ (gx#syntax-e _%xrest169469%_))
                 (_%else169474169489%_ (lambda () '())))
            (let ((_%K169477169546%_
                   (lambda (_%xrest169515%_ _%xhd169516%_)
                     (let* ((_%g169517169524%_ (gx#syntax-e _%yrest169470%_))
                            (_%E169519169528%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g169517169524%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K169520169534%_
                             (lambda (_%yrest169531%_ _%yhd169532%_)
                               (cons (_%f169463%_ _%xhd169516%_ _%yhd169532%_)
                                     (_%recur169467%_
                                      _%xrest169515%_
                                      _%yrest169531%_)))))
                       (if (pair? _%g169517169524%_)
                           (let ((_%hd169521169537%_ (##car _%g169517169524%_))
                                 (_%tl169522169539%_
                                  (##cdr _%g169517169524%_)))
                             (let* ((_%yhd169542%_ _%hd169521169537%_)
                                    (_%yrest169544%_ _%tl169522169539%_))
                               (_%K169520169534%_
                                _%yrest169544%_
                                _%yhd169542%_)))
                           (_%E169519169528%_)))))
                  (_%K169476169509%_
                   (lambda ()
                     (let* ((_%yrest169493169498%_ _%yrest169470%_)
                            (_%E169495169502%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest169493169498%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K169496169506%_
                             (lambda ()
                               (_%f169463%_ _%xrest169469%_ _%yrest169470%_))))
                       (if (gx#stx-null? _%yrest169493169498%_)
                           (_%E169495169502%_)
                           (_%K169496169506%_))))))
              (let ((_%try-match169473169512%_
                     (lambda ()
                       (if (null? _%g169471169481%_)
                           (_%else169474169489%_)
                           (_%K169476169509%_)))))
                (if (pair? _%g169471169481%_)
                    (let ((_%tl169479169551%_ (##cdr _%g169471169481%_))
                          (_%hd169478169549%_ (##car _%g169471169481%_)))
                      (let ((_%xhd169554%_ _%hd169478169549%_)
                            (_%xrest169556%_ _%tl169479169551%_))
                        (_%K169477169546%_ _%xrest169556%_ _%xhd169554%_)))
                    (_%try-match169473169512%_))))))))
    (define gx#stx-andmap
      (lambda (_%f169413%_ _%stx169414%_)
        (if (procedure? _%f169413%_)
            '#!void
            (error '"expected procedure" _%f169413%_))
        (let _%lp169416%_ ((_%rest169418%_ _%stx169414%_))
          (let* ((_%g169419169429%_ (gx#syntax-e _%rest169418%_))
                 (_%else169422169437%_
                  (lambda () (_%f169413%_ _%rest169418%_))))
            (let ((_%K169425169451%_
                   (lambda (_%rest169448%_ _%hd169449%_)
                     (if (_%f169413%_ _%hd169449%_)
                         (_%lp169416%_ _%rest169448%_)
                         '#f)))
                  (_%K169424169442%_ (lambda () '#t)))
              (let ((_%try-match169421169445%_
                     (lambda ()
                       (if (null? _%g169419169429%_)
                           (_%K169424169442%_)
                           (_%else169422169437%_)))))
                (if (pair? _%g169419169429%_)
                    (let ((_%tl169427169456%_ (##cdr _%g169419169429%_))
                          (_%hd169426169454%_ (##car _%g169419169429%_)))
                      (let ((_%hd169459%_ _%hd169426169454%_)
                            (_%rest169461%_ _%tl169427169456%_))
                        (_%K169425169451%_ _%rest169461%_ _%hd169459%_)))
                    (_%try-match169421169445%_))))))))
    (define gx#stx-ormap
      (lambda (_%f169360%_ _%stx169361%_)
        (if (procedure? _%f169360%_)
            '#!void
            (error '"expected procedure" _%f169360%_))
        (let _%lp169363%_ ((_%rest169365%_ _%stx169361%_))
          (let* ((_%g169366169376%_ (gx#syntax-e _%rest169365%_))
                 (_%else169369169384%_
                  (lambda () (_%f169360%_ _%rest169365%_))))
            (let ((_%K169372169401%_
                   (lambda (_%rest169395%_ _%hd169396%_)
                     (let ((_%$e169398%_ (_%f169360%_ _%hd169396%_)))
                       (if _%$e169398%_
                           _%$e169398%_
                           (_%lp169363%_ _%rest169395%_)))))
                  (_%K169371169389%_ (lambda () '#f)))
              (let ((_%try-match169368169392%_
                     (lambda ()
                       (if (null? _%g169366169376%_)
                           (_%K169371169389%_)
                           (_%else169369169384%_)))))
                (if (pair? _%g169366169376%_)
                    (let ((_%tl169374169406%_ (##cdr _%g169366169376%_))
                          (_%hd169373169404%_ (##car _%g169366169376%_)))
                      (let ((_%hd169409%_ _%hd169373169404%_)
                            (_%rest169411%_ _%tl169374169406%_))
                        (_%K169372169401%_ _%rest169411%_ _%hd169409%_)))
                    (_%try-match169368169392%_))))))))
    (define gx#stx-foldl
      (lambda (_%f169308%_ _%iv169309%_ _%stx169310%_)
        (if (procedure? _%f169308%_)
            '#!void
            (error '"expected procedure" _%f169308%_))
        (let _%lp169312%_ ((_%r169314%_ _%iv169309%_)
                           (_%rest169315%_ _%stx169310%_))
          (let* ((_%g169316169326%_ (gx#syntax-e _%rest169315%_))
                 (_%else169319169334%_
                  (lambda () (_%f169308%_ _%rest169315%_ _%r169314%_))))
            (let ((_%K169322169348%_
                   (lambda (_%rest169345%_ _%hd169346%_)
                     (_%lp169312%_
                      (_%f169308%_ _%hd169346%_ _%r169314%_)
                      _%rest169345%_)))
                  (_%K169321169339%_ (lambda () _%r169314%_)))
              (let ((_%try-match169318169342%_
                     (lambda ()
                       (if (null? _%g169316169326%_)
                           (_%K169321169339%_)
                           (_%else169319169334%_)))))
                (if (pair? _%g169316169326%_)
                    (let ((_%tl169324169353%_ (##cdr _%g169316169326%_))
                          (_%hd169323169351%_ (##car _%g169316169326%_)))
                      (let ((_%hd169356%_ _%hd169323169351%_)
                            (_%rest169358%_ _%tl169324169353%_))
                        (_%K169322169348%_ _%rest169358%_ _%hd169356%_)))
                    (_%try-match169318169342%_))))))))
    (define gx#stx-foldr
      (lambda (_%f169257%_ _%iv169258%_ _%stx169259%_)
        (if (procedure? _%f169257%_)
            '#!void
            (error '"expected procedure" _%f169257%_))
        (let _%recur169261%_ ((_%rest169263%_ _%stx169259%_))
          (let* ((_%g169264169274%_ (gx#syntax-e _%rest169263%_))
                 (_%else169267169282%_
                  (lambda () (_%f169257%_ _%rest169263%_ _%iv169258%_))))
            (let ((_%K169270169296%_
                   (lambda (_%rest169293%_ _%hd169294%_)
                     (_%f169257%_
                      _%hd169294%_
                      (_%recur169261%_ _%rest169293%_))))
                  (_%K169269169287%_ (lambda () _%iv169258%_)))
              (let ((_%try-match169266169290%_
                     (lambda ()
                       (if (null? _%g169264169274%_)
                           (_%K169269169287%_)
                           (_%else169267169282%_)))))
                (if (pair? _%g169264169274%_)
                    (let ((_%tl169272169301%_ (##cdr _%g169264169274%_))
                          (_%hd169271169299%_ (##car _%g169264169274%_)))
                      (let ((_%hd169304%_ _%hd169271169299%_)
                            (_%rest169306%_ _%tl169272169301%_))
                        (_%K169270169296%_ _%rest169306%_ _%hd169304%_)))
                    (_%try-match169266169290%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx169255%_) (gx#stx-foldl cons '() _%stx169255%_)))
    (define gx#stx-last
      (lambda (_%stx169216%_)
        (let _%lp169218%_ ((_%rest169220%_ _%stx169216%_))
          (let* ((_%g169221169229%_ (gx#syntax-e _%rest169220%_))
                 (_%else169223169237%_ (lambda () _%rest169220%_))
                 (_%K169225169243%_
                  (lambda (_%rest169240%_ _%hd169241%_)
                    (if (gx#stx-null? _%rest169240%_)
                        _%hd169241%_
                        (_%lp169218%_ _%rest169240%_)))))
            (if (pair? _%g169221169229%_)
                (let ((_%hd169226169246%_ (##car _%g169221169229%_))
                      (_%tl169227169248%_ (##cdr _%g169221169229%_)))
                  (let* ((_%hd169251%_ _%hd169226169246%_)
                         (_%rest169253%_ _%tl169227169248%_))
                    (_%K169225169243%_ _%rest169253%_ _%hd169251%_)))
                (_%else169223169237%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx169187%_)
        (let _%lp169189%_ ((_%hd169191%_ _%stx169187%_))
          (let* ((_%g169192169199%_ (gx#syntax-e _%hd169191%_))
                 (_%E169194169203%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g169192169199%_
                           '([_ . rest]))
                    '#!void))
                 (_%K169195169208%_
                  (lambda (_%rest169206%_)
                    (if (gx#stx-pair? _%rest169206%_)
                        (_%lp169189%_ _%rest169206%_)
                        _%hd169191%_))))
            (if (pair? _%g169192169199%_)
                (let* ((_%tl169197169211%_ (##cdr _%g169192169199%_))
                       (_%rest169214%_ _%tl169197169211%_))
                  (_%K169195169208%_ _%rest169214%_))
                (_%E169194169203%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx169156%_ _%k169157%_)
        (let _%lp169159%_ ((_%rest169161%_ _%stx169156%_)
                           (_%k169162%_ _%k169157%_))
          (if (fxpositive? _%k169162%_)
              (let* ((_%g169163169170%_ (gx#syntax-e _%rest169161%_))
                     (_%E169165169174%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g169163169170%_
                               '([_ . rest]))
                        '#!void))
                     (_%K169166169179%_
                      (lambda (_%rest169177%_)
                        (_%lp169159%_ _%rest169177%_ (##fx- _%k169162%_ '1)))))
                (if (pair? _%g169163169170%_)
                    (let* ((_%tl169168169182%_ (##cdr _%g169163169170%_))
                           (_%rest169185%_ _%tl169168169182%_))
                      (_%K169166169179%_ _%rest169185%_))
                    (_%E169165169174%_)))
              _%rest169161%_))))
    (define gx#stx-list-ref
      (lambda (_%stx169153%_ _%k169154%_)
        (gx#stx-car (gx#stx-list-tail _%stx169153%_ _%k169154%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx169065%_ _%key?169066%_)
        (if (procedure? _%key?169066%_)
            '#!void
            (error '"expected procedure" _%key?169066%_))
        (let _%lp169068%_ ((_%rest169070%_ _%stx169065%_))
          (let* ((_%g169071169081%_ (gx#stx-e _%rest169070%_))
                 (_%else169074169089%_ (lambda () '#f)))
            (let ((_%K169077169131%_
                   (lambda (_%rest169100%_ _%hd169101%_)
                     (if (_%key?169066%_ _%hd169101%_)
                         (let* ((_%g169102169110%_ (gx#stx-e _%rest169100%_))
                                (_%else169104169118%_ (lambda () '#f))
                                (_%K169106169123%_
                                 (lambda (_%rest169121%_)
                                   (_%lp169068%_ _%rest169121%_))))
                           (if (pair? _%g169102169110%_)
                               (let* ((_%tl169108169126%_
                                       (##cdr _%g169102169110%_))
                                      (_%rest169129%_ _%tl169108169126%_))
                                 (_%lp169068%_ _%rest169129%_))
                               (_%else169104169118%_)))
                         '#f)))
                  (_%K169076169094%_ (lambda () '#t)))
              (let ((_%try-match169073169097%_
                     (lambda ()
                       (if (null? _%g169071169081%_)
                           (_%K169076169094%_)
                           (_%else169074169089%_)))))
                (if (pair? _%g169071169081%_)
                    (let ((_%tl169079169136%_ (##cdr _%g169071169081%_))
                          (_%hd169078169134%_ (##car _%g169071169081%_)))
                      (let ((_%hd169139%_ _%hd169078169134%_)
                            (_%rest169141%_ _%tl169079169136%_))
                        (_%K169077169131%_ _%rest169141%_ _%hd169139%_)))
                    (_%try-match169073169097%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx169146%_)
        (let ((_%key?169148%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx169146%_ _%key?169148%_))))
    (define gx#stx-plist?
      (lambda _g170300_
        (let ((_g170301_ (##length _g170300_)))
          (cond ((##fx= _g170301_ 1) (apply gx#stx-plist?__0 _g170300_))
                ((##fx= _g170301_ 2) (apply gx#stx-plist?__% _g170300_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g170300_))))))
    (define gx#stx-getq__%
      (lambda (_%key168983%_ _%stx168984%_ _%key=?168985%_)
        (if (procedure? _%key=?168985%_)
            '#!void
            (error '"expected procedure" _%key=?168985%_))
        (let _%lp168987%_ ((_%rest168989%_ _%stx168984%_))
          (let* ((_%g168990168998%_ (gx#syntax-e _%rest168989%_))
                 (_%else168992169006%_ (lambda () '#f))
                 (_%K168994169040%_
                  (lambda (_%rest169009%_ _%hd169010%_)
                    (let* ((_%g169011169018%_ (gx#syntax-e _%rest169009%_))
                           (_%E169013169022%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g169011169018%_
                                     '([val . rest]))
                              '#!void))
                           (_%K169014169028%_
                            (lambda (_%rest169025%_ _%val169026%_)
                              (if (_%key=?168985%_ _%hd169010%_ _%key168983%_)
                                  _%val169026%_
                                  (_%lp168987%_ _%rest169025%_)))))
                      (if (pair? _%g169011169018%_)
                          (let ((_%hd169015169031%_ (##car _%g169011169018%_))
                                (_%tl169016169033%_ (##cdr _%g169011169018%_)))
                            (let* ((_%val169036%_ _%hd169015169031%_)
                                   (_%rest169038%_ _%tl169016169033%_))
                              (_%K169014169028%_
                               _%rest169038%_
                               _%val169036%_)))
                          (_%E169013169022%_))))))
            (if (pair? _%g168990168998%_)
                (let ((_%hd168995169043%_ (##car _%g168990168998%_))
                      (_%tl168996169045%_ (##cdr _%g168990168998%_)))
                  (let* ((_%hd169048%_ _%hd168995169043%_)
                         (_%rest169050%_ _%tl168996169045%_))
                    (_%K168994169040%_ _%rest169050%_ _%hd169048%_)))
                (_%else168992169006%_))))))
    (define gx#stx-getq__0
      (lambda (_%key169055%_ _%stx169056%_)
        (let ((_%key=?169058%_ gx#stx-eq?))
          (gx#stx-getq__% _%key169055%_ _%stx169056%_ _%key=?169058%_))))
    (define gx#stx-getq
      (lambda _g170302_
        (let ((_g170303_ (##length _g170302_)))
          (cond ((##fx= _g170303_ 2) (apply gx#stx-getq__0 _g170302_))
                ((##fx= _g170303_ 3) (apply gx#stx-getq__% _g170302_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g170302_))))))))

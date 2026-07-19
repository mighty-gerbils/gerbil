(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1784279015)
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
      (lambda _%$args182316%_
        (apply make-instance gx#identifier-wrap::t _%$args182316%_)))
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
      (lambda _%$args182313%_
        (apply make-instance gx#syntax-wrap::t _%$args182313%_)))
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
      (lambda _%$args182310%_
        (apply make-instance gx#syntax-quote::t _%$args182310%_)))
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
      (lambda (_%stx182308%_) (symbol? (gx#stx-e _%stx182308%_))))
    (define gx#identifier-quote?
      (lambda (_%stx182306%_)
        (if (##structure-direct-instance-of? _%stx182306%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx182306%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx182301%_)
        (if (##structure-direct-instance-of? _%stx182301%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx182301%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx182301%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx182296%_)
        (if (##structure-direct-instance-of? _%stx182296%_ 'gx#syntax-quote::t)
            _%stx182296%_
            (if (##structure-direct-instance-of?
                 _%stx182296%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx182296%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx182270%_)
        (if (##structure-direct-instance-of? _%stx182270%_ 'gx#syntax-wrap::t)
            (let _%lp182273%_ ((_%e182275%_
                                (##unchecked-structure-ref
                                 _%stx182270%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks182276%_
                                (cons (##unchecked-structure-ref
                                       _%stx182270%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e182275%_)
                  (let ((_%$e182279%_
                         (##type-id (##structure-type _%e182275%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e182279%_)
                        (_%lp182273%_
                         (##unchecked-structure-ref _%e182275%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e182275%_ '3 '#f '#f)
                          _%marks182276%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e182279%_)
                                (eq? 'gx#identifier-wrap::t _%$e182279%_))
                            (##unchecked-structure-ref _%e182275%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e182279%_)
                                (_%lp182273%_
                                 (##unchecked-structure-ref
                                  _%e182275%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks182276%_)
                                _%e182275%_))))
                  (if (null? _%marks182276%_)
                      _%e182275%_
                      (if (pair? _%e182275%_)
                          (cons (gx#stx-wrap
                                 (##car _%e182275%_)
                                 _%marks182276%_)
                                (gx#stx-wrap
                                 (##cdr _%e182275%_)
                                 _%marks182276%_))
                          (if (vector? _%e182275%_)
                              (vector-map
                               (lambda (_%$%g182287182289%_)
                                 (gx#stx-wrap
                                  _%$%g182287182289%_
                                  _%marks182276%_))
                               _%e182275%_)
                              (if (box? _%e182275%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e182275%_)
                                        _%marks182276%_))
                                  _%e182275%_))))))
            (if (##structure-instance-of? _%stx182270%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx182270%_ '1 '#f '#f)
                _%stx182270%_))))
    (define gx#syntax->datum
      (lambda (_%stx182263%_)
        (if (##structure-instance-of? _%stx182263%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx182263%_ '1 '#f '#f))
            (if (pair? _%stx182263%_)
                (cons (gx#syntax->datum (##car _%stx182263%_))
                      (gx#syntax->datum (##cdr _%stx182263%_)))
                (if (vector? _%stx182263%_)
                    (vector-map gx#syntax->datum _%stx182263%_)
                    (if (box? _%stx182263%_)
                        (box (gx#syntax->datum (unbox _%stx182263%_)))
                        _%stx182263%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx182197%_ _%datum182198%_ _%src182199%_ _%quote?182200%_)
        (letrec ((_%wrap-datum182202%_
                  (lambda (_%e182235%_ _%marks182236%_)
                    (_%wrap-inner182204%_
                     _%e182235%_
                     (lambda (_%$%g182237182239%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%$%g182237182239%_
                        _%src182199%_
                        _%marks182236%_)))))
                 (_%wrap-quote182203%_
                  (lambda (_%e182227%_ _%ctx182228%_ _%marks182229%_)
                    (_%wrap-inner182204%_
                     _%e182227%_
                     (lambda (_%$%g182230182232%_)
                       (##structure
                        gx#syntax-quote::t
                        _%$%g182230182232%_
                        _%src182199%_
                        _%ctx182228%_
                        _%marks182229%_)))))
                 (_%wrap-inner182204%_
                  (lambda (_%e182215%_ _%wrap-e182216%_)
                    (let _%recur182218%_ ((_%e182220%_ _%e182215%_))
                      (if (symbol? _%e182220%_)
                          (_%wrap-e182216%_ _%e182220%_)
                          (if (pair? _%e182220%_)
                              (cons (_%recur182218%_ (##car _%e182220%_))
                                    (_%recur182218%_ (##cdr _%e182220%_)))
                              (if (vector? _%e182220%_)
                                  (vector-map _%recur182218%_ _%e182220%_)
                                  (if (box? _%e182220%_)
                                      (box (_%recur182218%_
                                            (unbox _%e182220%_)))
                                      _%e182220%_)))))))
                 (_%wrap-outer182205%_
                  (lambda (_%e182213%_)
                    (if (##structure-instance-of? _%e182213%_ 'gerbil#AST::t)
                        _%e182213%_
                        (##structure gx#AST::t _%e182213%_ _%src182199%_)))))
          (if (##structure-instance-of? _%datum182198%_ 'gerbil#AST::t)
              _%datum182198%_
              (if (not _%stx182197%_)
                  (##structure gx#AST::t _%datum182198%_ _%src182199%_)
                  (if (gx#identifier? _%stx182197%_)
                      (let ((_%stx182210%_ (gx#stx-unwrap__0 _%stx182197%_)))
                        (_%wrap-outer182205%_
                         (if (##structure-direct-instance-of?
                              _%stx182210%_
                              'gx#syntax-quote::t)
                             (if _%quote?182200%_
                                 (_%wrap-quote182203%_
                                  _%datum182198%_
                                  (##unchecked-structure-ref
                                   _%stx182210%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx182210%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum182202%_
                                  _%datum182198%_
                                  (##unchecked-structure-ref
                                   _%stx182210%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum182202%_
                              _%datum182198%_
                              (##unchecked-structure-ref
                               _%stx182210%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx182197%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx182245%_ _%datum182246%_)
        (let* ((_%src182248%_ '#f) (_%quote?182250%_ '#t))
          (gx#datum->syntax__%
           _%stx182245%_
           _%datum182246%_
           _%src182248%_
           _%quote?182250%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx182252%_ _%datum182253%_ _%src182254%_)
        (let ((_%quote?182256%_ '#t))
          (gx#datum->syntax__%
           _%stx182252%_
           _%datum182253%_
           _%src182254%_
           _%quote?182256%_))))
    (define gx#datum->syntax
      (lambda _g182396_
        (let ((_g182397_ (##length _g182396_)))
          (cond ((##fx= _g182397_ 2) (apply gx#datum->syntax__0 _g182396_))
                ((##fx= _g182397_ 3) (apply gx#datum->syntax__1 _g182396_))
                ((##fx= _g182397_ 4) (apply gx#datum->syntax__% _g182396_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g182396_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx182163%_ _%marks182164%_)
        (let _%lp182166%_ ((_%e182168%_ _%stx182163%_)
                           (_%marks182169%_ _%marks182164%_)
                           (_%src182170%_ (gx#stx-source _%stx182163%_)))
          (if (##structure-direct-instance-of? _%e182168%_ 'gx#syntax-wrap::t)
              (_%lp182166%_
               (##unchecked-structure-ref _%e182168%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e182168%_ '3 '#f '#f)
                _%marks182169%_)
               (##unchecked-structure-ref _%e182168%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e182168%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks182169%_)
                      _%e182168%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e182168%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e182168%_ '2 '#f '#f)
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e182168%_ '3 '#f '#f)
                        _%marks182169%_)))
                  (if (##structure-direct-instance-of?
                       _%e182168%_
                       'gx#syntax-quote::t)
                      _%e182168%_
                      (if (##structure-instance-of? _%e182168%_ 'gerbil#AST::t)
                          (_%lp182166%_
                           (##unchecked-structure-ref _%e182168%_ '1 '#f '#f)
                           _%marks182169%_
                           (##unchecked-structure-ref _%e182168%_ '2 '#f '#f))
                          (if (symbol? _%e182168%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e182168%_
                               _%src182170%_
                               (reverse _%marks182169%_))
                              (if (null? _%marks182169%_)
                                  _%e182168%_
                                  (if (pair? _%e182168%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e182168%_)
                                             _%marks182169%_)
                                            (gx#stx-wrap
                                             (##cdr _%e182168%_)
                                             _%marks182169%_))
                                      (if (vector? _%e182168%_)
                                          (vector-map
                                           (lambda (_%$%g182179182181%_)
                                             (gx#stx-wrap
                                              _%$%g182179182181%_
                                              _%marks182169%_))
                                           _%e182168%_)
                                          (if (box? _%e182168%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e182168%_)
                                                    _%marks182169%_))
                                              _%e182168%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx182189%_)
        (let ((_%marks182191%_ '()))
          (gx#stx-unwrap__% _%stx182189%_ _%marks182191%_))))
    (define gx#stx-unwrap
      (lambda _g182398_
        (let ((_g182399_ (##length _g182398_)))
          (cond ((##fx= _g182399_ 1) (apply gx#stx-unwrap__0 _g182398_))
                ((##fx= _g182399_ 2) (apply gx#stx-unwrap__% _g182398_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g182398_))))))
    (define gx#stx-wrap
      (lambda (_%stx182156%_ _%marks182157%_)
        (foldl__0
         (lambda (_%mark182159%_ _%stx182160%_)
           (gx#stx-apply-mark _%stx182160%_ _%mark182159%_))
         _%stx182156%_
         _%marks182157%_)))
    (define gx#stx-rewrap
      (lambda (_%stx182150%_ _%marks182151%_)
        (foldr__0
         (lambda (_%mark182153%_ _%stx182154%_)
           (gx#stx-apply-mark _%stx182154%_ _%mark182153%_))
         _%stx182150%_
         _%marks182151%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx182144%_ _%mark182145%_)
        (if (##structure-direct-instance-of? _%stx182144%_ 'gx#syntax-quote::t)
            _%stx182144%_
            (if (and (##structure-direct-instance-of?
                      _%stx182144%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark182145%_
                          (##unchecked-structure-ref
                           _%stx182144%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx182144%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx182144%_
                 (gx#stx-source _%stx182144%_)
                 _%mark182145%_)))))
    (define gx#apply-mark
      (lambda (_%mark182108%_ _%marks182109%_)
        (let* ((_%$%marks182110182118%_ _%marks182109%_)
               (_%$%else182112182126%_
                (lambda () (cons _%mark182108%_ _%marks182109%_)))
               (_%$%K182114182132%_
                (lambda (_%rest182129%_ _%hd182130%_)
                  (if (eq? _%mark182108%_ _%hd182130%_)
                      _%rest182129%_
                      (cons _%mark182108%_ _%marks182109%_)))))
          (if (pair? _%$%marks182110182118%_)
              (let ((_%$%hd182115182135%_ (##car _%$%marks182110182118%_))
                    (_%$%tl182116182137%_ (##cdr _%$%marks182110182118%_)))
                (let* ((_%hd182140%_ _%$%hd182115182135%_)
                       (_%rest182142%_ _%$%tl182116182137%_))
                  (_%$%K182114182132%_ _%rest182142%_ _%hd182140%_)))
              (_%$%else182112182126%_)))))
    (define gx#stx-e
      (lambda (_%stx182103%_)
        (if (##structure-direct-instance-of? _%stx182103%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx182103%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx182103%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx182103%_ '1 '#f '#f)
                _%stx182103%_))))
    (define gx#stx-source
      (lambda (_%stx182101%_)
        (if (##structure-instance-of? _%stx182101%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx182101%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx182095%_ _%src182096%_)
        (if (or (##structure-instance-of? _%stx182095%_ 'gerbil#AST::t)
                (not _%src182096%_))
            _%stx182095%_
            (##structure gx#AST::t _%stx182095%_ _%src182096%_))))
    (define gx#stx-datum?
      (lambda (_%stx182093%_) (gx#self-quoting? (gx#stx-e _%stx182093%_))))
    (define gx#self-quoting?
      (lambda (_%x182076%_)
        (let ((_%$e182078%_ (immediate? _%x182076%_)))
          (if _%$e182078%_
              _%$e182078%_
              (let ((_%$e182081%_ (number? _%x182076%_)))
                (if _%$e182081%_
                    _%$e182081%_
                    (let ((_%$e182084%_ (keyword? _%x182076%_)))
                      (if _%$e182084%_
                          _%$e182084%_
                          (let ((_%$e182087%_ (string? _%x182076%_)))
                            (if _%$e182087%_
                                _%$e182087%_
                                (let ((_%$e182090%_ (vector? _%x182076%_)))
                                  (if _%$e182090%_
                                      _%$e182090%_
                                      (u8vector? _%x182076%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e182074%_) (boolean? (gx#stx-e _%e182074%_))))
    (define gx#stx-keyword?
      (lambda (_%e182072%_) (keyword? (gx#stx-e _%e182072%_))))
    (define gx#stx-char? (lambda (_%e182070%_) (char? (gx#stx-e _%e182070%_))))
    (define gx#stx-number?
      (lambda (_%e182068%_) (number? (gx#stx-e _%e182068%_))))
    (define gx#stx-fixnum?
      (lambda (_%e182066%_) (fixnum? (gx#stx-e _%e182066%_))))
    (define gx#stx-string?
      (lambda (_%e182064%_) (string? (gx#stx-e _%e182064%_))))
    (define gx#stx-null? (lambda (_%e182062%_) (null? (gx#stx-e _%e182062%_))))
    (define gx#stx-pair? (lambda (_%e182060%_) (pair? (gx#stx-e _%e182060%_))))
    (define gx#stx-list?
      (lambda (_%e182022%_)
        (let* ((_%$%g182023182032%_ (gx#stx-e _%e182022%_))
               (_%$%E182026182036%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%g182023182032%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%$%K182028182052%_
                 (lambda (_%rest182050%_) (gx#stx-list? _%rest182050%_)))
                (_%$%K182027182042%_
                 (lambda (_%tail182040%_) (null? _%tail182040%_))))
            (if (pair? _%$%g182023182032%_)
                (let* ((_%$%tl182030182055%_ (##cdr _%$%g182023182032%_))
                       (_%rest182058%_ _%$%tl182030182055%_))
                  (gx#stx-list? _%rest182058%_))
                (let ((_%tail182045%_ _%$%g182023182032%_))
                  (null? _%tail182045%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e182015%_)
        (let* ((_%e182017%_ (gx#stx-e _%e182015%_))
               (_%$e182019%_ (pair? _%e182017%_)))
          (if _%$e182019%_ _%$e182019%_ (null? _%e182017%_)))))
    (define gx#stx-vector?
      (lambda (_%e182013%_) (vector? (gx#stx-e _%e182013%_))))
    (define gx#stx-box? (lambda (_%e182011%_) (box? (gx#stx-e _%e182011%_))))
    (define gx#stx-eq?
      (lambda (_%x182008%_ _%y182009%_)
        (eq? (gx#stx-e _%x182008%_) (gx#stx-e _%y182009%_))))
    (define gx#stx-eqv?
      (lambda (_%x182005%_ _%y182006%_)
        (eqv? (gx#stx-e _%x182005%_) (gx#stx-e _%y182006%_))))
    (define gx#stx-equal?
      (lambda (_%x182002%_ _%y182003%_)
        (equal? (gx#stx-e _%x182002%_) (gx#stx-e _%y182003%_))))
    (define gx#stx-false? (lambda (_%x182000%_) (not (gx#stx-e _%x182000%_))))
    (define gx#stx-identifier
      (lambda (_%template181997%_ . _%args181998%_)
        (gx#datum->syntax__1
         _%template181997%_
         (apply make-symbol (gx#syntax->datum _%args181998%_))
         (gx#stx-source _%template181997%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx181995%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx181995%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx181990%_)
        (if (##structure-direct-instance-of?
             _%stx181990%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx181990%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx181990%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx181990%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx181990%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx181986%_)
        (let ((_%stx181988%_ (gx#stx-unwrap__0 _%stx181986%_)))
          (if (gx#identifier-quote? _%stx181988%_)
              (##unchecked-structure-ref _%stx181988%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx181941%_)
        (let* ((_%$%g181942181952%_ (gx#stx-e _%stx181941%_))
               (_%$%else181945181960%_ (lambda () '#f)))
          (let ((_%$%K181948181974%_
                 (lambda (_%rest181971%_ _%hd181972%_)
                   (if (gx#identifier? _%hd181972%_)
                       (gx#identifier-list? _%rest181971%_)
                       '#f)))
                (_%$%K181947181965%_ (lambda () '#t)))
            (let ((_%$%try-match181944181968%_
                   (lambda ()
                     (if (null? _%$%g181942181952%_)
                         (_%$%K181947181965%_)
                         (_%$%else181945181960%_)))))
              (if (pair? _%$%g181942181952%_)
                  (let ((_%$%tl181950181979%_ (##cdr _%$%g181942181952%_))
                        (_%$%hd181949181977%_ (##car _%$%g181942181952%_)))
                    (let ((_%hd181982%_ _%$%hd181949181977%_)
                          (_%rest181984%_ _%$%tl181950181979%_))
                      (_%$%K181948181974%_ _%rest181984%_ _%hd181982%_)))
                  (_%$%try-match181944181968%_)))))))
    (define gx#genident__%
      (lambda (_%e181921%_ _%src181922%_)
        (gx#datum->syntax__1
         (if (gx#identifier? _%src181922%_) _%src181922%_ '#f)
         (make-symbol__1
          '"$%"
          (##gensym
           (let ((_%e181924%_ (gx#stx-e _%e181921%_)))
             (if (symbol? _%e181924%_) _%e181924%_ 'g))))
         _%src181922%_)))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e181930%_ 'g) (_%src181932%_ '#f))
          (gx#genident__% _%e181930%_ _%src181932%_))))
    (define gx#genident__1
      (lambda (_%e181934%_)
        (let ((_%src181936%_ '#f))
          (gx#genident__% _%e181934%_ _%src181936%_))))
    (define gx#genident
      (lambda _g182400_
        (let ((_g182401_ (##length _g182400_)))
          (cond ((##fx= _g182401_ 0) (apply gx#genident__0 _g182400_))
                ((##fx= _g182401_ 1) (apply gx#genident__1 _g182400_))
                ((##fx= _g182401_ 2) (apply gx#genident__% _g182400_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g182400_))))))
    (define gx#gentemps
      (lambda (_%stx-lst181916%_)
        (gx#stx-map1
         (lambda (_%x181918%_) (gx#genident__% _%x181918%_ _%x181918%_))
         _%stx-lst181916%_)))
    (define gx#syntax->list
      (lambda (_%stx181914%_) (gx#stx-map1 values _%stx181914%_)))
    (define gx#stx-car
      (lambda (_%stx181911%_)
        (declare (safe))
        (car (gx#syntax-e _%stx181911%_))))
    (define gx#stx-cdr
      (lambda (_%stx181908%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx181908%_))))
    (define gx#stx-length
      (lambda (_%stx181873%_)
        (let _%lp181875%_ ((_%rest181877%_ _%stx181873%_) (_%n181878%_ '0))
          (let* ((_%$%g181879181887%_ (gx#stx-e _%rest181877%_))
                 (_%$%else181881181895%_ (lambda () _%n181878%_))
                 (_%$%K181883181900%_
                  (lambda (_%rest181898%_)
                    (_%lp181875%_ _%rest181898%_ (##fx+ _%n181878%_ '1)))))
            (if (pair? _%$%g181879181887%_)
                (let* ((_%$%tl181885181903%_ (##cdr _%$%g181879181887%_))
                       (_%rest181906%_ _%$%tl181885181903%_))
                  (_%$%K181883181900%_ _%rest181906%_))
                (_%$%else181881181895%_))))))
    (define gx#stx-for-each
      (lambda _g182402_
        (let ((_g182403_ (##length _g182402_)))
          (cond ((##fx= _g182403_ 2) (apply gx#stx-for-each1 _g182402_))
                ((##fx= _g182403_ 3) (apply gx#stx-for-each2 _g182402_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g182402_))))))
    (define gx#stx-for-each1
      (lambda (_%f181816%_ _%stx181817%_)
        (if (procedure? _%f181816%_)
            '#!void
            (error '"expected procedure" _%f181816%_))
        (let _%lp181819%_ ((_%rest181821%_ _%stx181817%_))
          (let* ((_%$%g181822181832%_ (gx#syntax-e _%rest181821%_))
                 (_%$%else181825181840%_
                  (lambda () (_%f181816%_ _%rest181821%_))))
            (let ((_%$%K181828181854%_
                   (lambda (_%rest181851%_ _%hd181852%_)
                     (_%f181816%_ _%hd181852%_)
                     (_%lp181819%_ _%rest181851%_)))
                  (_%$%K181827181845%_ (lambda () '#!void)))
              (let ((_%$%try-match181824181848%_
                     (lambda ()
                       (if (null? _%$%g181822181832%_)
                           (_%$%K181827181845%_)
                           (_%$%else181825181840%_)))))
                (if (pair? _%$%g181822181832%_)
                    (let ((_%$%tl181830181859%_ (##cdr _%$%g181822181832%_))
                          (_%$%hd181829181857%_ (##car _%$%g181822181832%_)))
                      (let ((_%hd181862%_ _%$%hd181829181857%_)
                            (_%rest181864%_ _%$%tl181830181859%_))
                        (_%$%K181828181854%_ _%rest181864%_ _%hd181862%_)))
                    (_%$%try-match181824181848%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f181721%_ _%xstx181722%_ _%ystx181723%_)
        (if (procedure? _%f181721%_)
            '#!void
            (error '"expected procedure" _%f181721%_))
        (let _%lp181725%_ ((_%xrest181727%_ _%xstx181722%_)
                           (_%yrest181728%_ _%ystx181723%_))
          (let* ((_%$%g181729181739%_ (gx#syntax-e _%xrest181727%_))
                 (_%$%else181732181747%_ (lambda () '#!void)))
            (let ((_%$%K181735181804%_
                   (lambda (_%xrest181773%_ _%xhd181774%_)
                     (let* ((_%$%g181775181782%_ (gx#syntax-e _%yrest181728%_))
                            (_%$%E181777181786%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%g181775181782%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%$%K181778181792%_
                             (lambda (_%yrest181789%_ _%yhd181790%_)
                               (_%f181721%_ _%xhd181774%_ _%yhd181790%_)
                               (_%lp181725%_
                                _%xrest181773%_
                                _%yrest181789%_))))
                       (if (pair? _%$%g181775181782%_)
                           (let ((_%$%hd181779181795%_
                                  (##car _%$%g181775181782%_))
                                 (_%$%tl181780181797%_
                                  (##cdr _%$%g181775181782%_)))
                             (let* ((_%yhd181800%_ _%$%hd181779181795%_)
                                    (_%yrest181802%_ _%$%tl181780181797%_))
                               (_%$%K181778181792%_
                                _%yrest181802%_
                                _%yhd181800%_)))
                           (_%$%E181777181786%_)))))
                  (_%$%K181734181767%_
                   (lambda ()
                     (let* ((_%$%yrest181751181756%_ _%yrest181728%_)
                            (_%$%E181753181760%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%yrest181751181756%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%$%K181754181764%_
                             (lambda ()
                               (_%f181721%_ _%xrest181727%_ _%yrest181728%_))))
                       (if (gx#stx-null? _%$%yrest181751181756%_)
                           (_%$%E181753181760%_)
                           (_%$%K181754181764%_))))))
              (let ((_%$%try-match181731181770%_
                     (lambda ()
                       (if (null? _%$%g181729181739%_)
                           (_%$%else181732181747%_)
                           (_%$%K181734181767%_)))))
                (if (pair? _%$%g181729181739%_)
                    (let ((_%$%tl181737181809%_ (##cdr _%$%g181729181739%_))
                          (_%$%hd181736181807%_ (##car _%$%g181729181739%_)))
                      (let ((_%xhd181812%_ _%$%hd181736181807%_)
                            (_%xrest181814%_ _%$%tl181737181809%_))
                        (_%$%K181735181804%_ _%xrest181814%_ _%xhd181812%_)))
                    (_%$%try-match181731181770%_))))))))
    (define gx#stx-map
      (lambda _g182404_
        (let ((_g182405_ (##length _g182404_)))
          (cond ((##fx= _g182405_ 2) (apply gx#stx-map1 _g182404_))
                ((##fx= _g182405_ 3) (apply gx#stx-map2 _g182404_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g182404_))))))
    (define gx#stx-map1
      (lambda (_%f181664%_ _%stx181665%_)
        (if (procedure? _%f181664%_)
            '#!void
            (error '"expected procedure" _%f181664%_))
        (let _%recur181667%_ ((_%rest181669%_ _%stx181665%_))
          (let* ((_%$%g181670181680%_ (gx#syntax-e _%rest181669%_))
                 (_%$%else181673181688%_
                  (lambda () (_%f181664%_ _%rest181669%_))))
            (let ((_%$%K181676181702%_
                   (lambda (_%rest181699%_ _%hd181700%_)
                     (cons (_%f181664%_ _%hd181700%_)
                           (_%recur181667%_ _%rest181699%_))))
                  (_%$%K181675181693%_ (lambda () '())))
              (let ((_%$%try-match181672181696%_
                     (lambda ()
                       (if (null? _%$%g181670181680%_)
                           (_%$%K181675181693%_)
                           (_%$%else181673181688%_)))))
                (if (pair? _%$%g181670181680%_)
                    (let ((_%$%tl181678181707%_ (##cdr _%$%g181670181680%_))
                          (_%$%hd181677181705%_ (##car _%$%g181670181680%_)))
                      (let ((_%hd181710%_ _%$%hd181677181705%_)
                            (_%rest181712%_ _%$%tl181678181707%_))
                        (_%$%K181676181702%_ _%rest181712%_ _%hd181710%_)))
                    (_%$%try-match181672181696%_))))))))
    (define gx#stx-map2
      (lambda (_%f181569%_ _%xstx181570%_ _%ystx181571%_)
        (if (procedure? _%f181569%_)
            '#!void
            (error '"expected procedure" _%f181569%_))
        (let _%recur181573%_ ((_%xrest181575%_ _%xstx181570%_)
                              (_%yrest181576%_ _%ystx181571%_))
          (let* ((_%$%g181577181587%_ (gx#syntax-e _%xrest181575%_))
                 (_%$%else181580181595%_ (lambda () '())))
            (let ((_%$%K181583181652%_
                   (lambda (_%xrest181621%_ _%xhd181622%_)
                     (let* ((_%$%g181623181630%_ (gx#syntax-e _%yrest181576%_))
                            (_%$%E181625181634%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%g181623181630%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%$%K181626181640%_
                             (lambda (_%yrest181637%_ _%yhd181638%_)
                               (cons (_%f181569%_ _%xhd181622%_ _%yhd181638%_)
                                     (_%recur181573%_
                                      _%xrest181621%_
                                      _%yrest181637%_)))))
                       (if (pair? _%$%g181623181630%_)
                           (let ((_%$%hd181627181643%_
                                  (##car _%$%g181623181630%_))
                                 (_%$%tl181628181645%_
                                  (##cdr _%$%g181623181630%_)))
                             (let* ((_%yhd181648%_ _%$%hd181627181643%_)
                                    (_%yrest181650%_ _%$%tl181628181645%_))
                               (_%$%K181626181640%_
                                _%yrest181650%_
                                _%yhd181648%_)))
                           (_%$%E181625181634%_)))))
                  (_%$%K181582181615%_
                   (lambda ()
                     (let* ((_%$%yrest181599181604%_ _%yrest181576%_)
                            (_%$%E181601181608%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%yrest181599181604%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%$%K181602181612%_
                             (lambda ()
                               (_%f181569%_ _%xrest181575%_ _%yrest181576%_))))
                       (if (gx#stx-null? _%$%yrest181599181604%_)
                           (_%$%E181601181608%_)
                           (_%$%K181602181612%_))))))
              (let ((_%$%try-match181579181618%_
                     (lambda ()
                       (if (null? _%$%g181577181587%_)
                           (_%$%else181580181595%_)
                           (_%$%K181582181615%_)))))
                (if (pair? _%$%g181577181587%_)
                    (let ((_%$%tl181585181657%_ (##cdr _%$%g181577181587%_))
                          (_%$%hd181584181655%_ (##car _%$%g181577181587%_)))
                      (let ((_%xhd181660%_ _%$%hd181584181655%_)
                            (_%xrest181662%_ _%$%tl181585181657%_))
                        (_%$%K181583181652%_ _%xrest181662%_ _%xhd181660%_)))
                    (_%$%try-match181579181618%_))))))))
    (define gx#stx-andmap
      (lambda (_%f181519%_ _%stx181520%_)
        (if (procedure? _%f181519%_)
            '#!void
            (error '"expected procedure" _%f181519%_))
        (let _%lp181522%_ ((_%rest181524%_ _%stx181520%_))
          (let* ((_%$%g181525181535%_ (gx#syntax-e _%rest181524%_))
                 (_%$%else181528181543%_
                  (lambda () (_%f181519%_ _%rest181524%_))))
            (let ((_%$%K181531181557%_
                   (lambda (_%rest181554%_ _%hd181555%_)
                     (if (_%f181519%_ _%hd181555%_)
                         (_%lp181522%_ _%rest181554%_)
                         '#f)))
                  (_%$%K181530181548%_ (lambda () '#t)))
              (let ((_%$%try-match181527181551%_
                     (lambda ()
                       (if (null? _%$%g181525181535%_)
                           (_%$%K181530181548%_)
                           (_%$%else181528181543%_)))))
                (if (pair? _%$%g181525181535%_)
                    (let ((_%$%tl181533181562%_ (##cdr _%$%g181525181535%_))
                          (_%$%hd181532181560%_ (##car _%$%g181525181535%_)))
                      (let ((_%hd181565%_ _%$%hd181532181560%_)
                            (_%rest181567%_ _%$%tl181533181562%_))
                        (_%$%K181531181557%_ _%rest181567%_ _%hd181565%_)))
                    (_%$%try-match181527181551%_))))))))
    (define gx#stx-ormap
      (lambda (_%f181466%_ _%stx181467%_)
        (if (procedure? _%f181466%_)
            '#!void
            (error '"expected procedure" _%f181466%_))
        (let _%lp181469%_ ((_%rest181471%_ _%stx181467%_))
          (let* ((_%$%g181472181482%_ (gx#syntax-e _%rest181471%_))
                 (_%$%else181475181490%_
                  (lambda () (_%f181466%_ _%rest181471%_))))
            (let ((_%$%K181478181507%_
                   (lambda (_%rest181501%_ _%hd181502%_)
                     (let ((_%$e181504%_ (_%f181466%_ _%hd181502%_)))
                       (if _%$e181504%_
                           _%$e181504%_
                           (_%lp181469%_ _%rest181501%_)))))
                  (_%$%K181477181495%_ (lambda () '#f)))
              (let ((_%$%try-match181474181498%_
                     (lambda ()
                       (if (null? _%$%g181472181482%_)
                           (_%$%K181477181495%_)
                           (_%$%else181475181490%_)))))
                (if (pair? _%$%g181472181482%_)
                    (let ((_%$%tl181480181512%_ (##cdr _%$%g181472181482%_))
                          (_%$%hd181479181510%_ (##car _%$%g181472181482%_)))
                      (let ((_%hd181515%_ _%$%hd181479181510%_)
                            (_%rest181517%_ _%$%tl181480181512%_))
                        (_%$%K181478181507%_ _%rest181517%_ _%hd181515%_)))
                    (_%$%try-match181474181498%_))))))))
    (define gx#stx-foldl
      (lambda (_%f181414%_ _%iv181415%_ _%stx181416%_)
        (if (procedure? _%f181414%_)
            '#!void
            (error '"expected procedure" _%f181414%_))
        (let _%lp181418%_ ((_%r181420%_ _%iv181415%_)
                           (_%rest181421%_ _%stx181416%_))
          (let* ((_%$%g181422181432%_ (gx#syntax-e _%rest181421%_))
                 (_%$%else181425181440%_
                  (lambda () (_%f181414%_ _%rest181421%_ _%r181420%_))))
            (let ((_%$%K181428181454%_
                   (lambda (_%rest181451%_ _%hd181452%_)
                     (_%lp181418%_
                      (_%f181414%_ _%hd181452%_ _%r181420%_)
                      _%rest181451%_)))
                  (_%$%K181427181445%_ (lambda () _%r181420%_)))
              (let ((_%$%try-match181424181448%_
                     (lambda ()
                       (if (null? _%$%g181422181432%_)
                           (_%$%K181427181445%_)
                           (_%$%else181425181440%_)))))
                (if (pair? _%$%g181422181432%_)
                    (let ((_%$%tl181430181459%_ (##cdr _%$%g181422181432%_))
                          (_%$%hd181429181457%_ (##car _%$%g181422181432%_)))
                      (let ((_%hd181462%_ _%$%hd181429181457%_)
                            (_%rest181464%_ _%$%tl181430181459%_))
                        (_%$%K181428181454%_ _%rest181464%_ _%hd181462%_)))
                    (_%$%try-match181424181448%_))))))))
    (define gx#stx-foldr
      (lambda (_%f181363%_ _%iv181364%_ _%stx181365%_)
        (if (procedure? _%f181363%_)
            '#!void
            (error '"expected procedure" _%f181363%_))
        (let _%recur181367%_ ((_%rest181369%_ _%stx181365%_))
          (let* ((_%$%g181370181380%_ (gx#syntax-e _%rest181369%_))
                 (_%$%else181373181388%_
                  (lambda () (_%f181363%_ _%rest181369%_ _%iv181364%_))))
            (let ((_%$%K181376181402%_
                   (lambda (_%rest181399%_ _%hd181400%_)
                     (_%f181363%_
                      _%hd181400%_
                      (_%recur181367%_ _%rest181399%_))))
                  (_%$%K181375181393%_ (lambda () _%iv181364%_)))
              (let ((_%$%try-match181372181396%_
                     (lambda ()
                       (if (null? _%$%g181370181380%_)
                           (_%$%K181375181393%_)
                           (_%$%else181373181388%_)))))
                (if (pair? _%$%g181370181380%_)
                    (let ((_%$%tl181378181407%_ (##cdr _%$%g181370181380%_))
                          (_%$%hd181377181405%_ (##car _%$%g181370181380%_)))
                      (let ((_%hd181410%_ _%$%hd181377181405%_)
                            (_%rest181412%_ _%$%tl181378181407%_))
                        (_%$%K181376181402%_ _%rest181412%_ _%hd181410%_)))
                    (_%$%try-match181372181396%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx181361%_) (gx#stx-foldl cons '() _%stx181361%_)))
    (define gx#stx-last
      (lambda (_%stx181322%_)
        (let _%lp181324%_ ((_%rest181326%_ _%stx181322%_))
          (let* ((_%$%g181327181335%_ (gx#syntax-e _%rest181326%_))
                 (_%$%else181329181343%_ (lambda () _%rest181326%_))
                 (_%$%K181331181349%_
                  (lambda (_%rest181346%_ _%hd181347%_)
                    (if (gx#stx-null? _%rest181346%_)
                        _%hd181347%_
                        (_%lp181324%_ _%rest181346%_)))))
            (if (pair? _%$%g181327181335%_)
                (let ((_%$%hd181332181352%_ (##car _%$%g181327181335%_))
                      (_%$%tl181333181354%_ (##cdr _%$%g181327181335%_)))
                  (let* ((_%hd181357%_ _%$%hd181332181352%_)
                         (_%rest181359%_ _%$%tl181333181354%_))
                    (_%$%K181331181349%_ _%rest181359%_ _%hd181357%_)))
                (_%$%else181329181343%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx181293%_)
        (let _%lp181295%_ ((_%hd181297%_ _%stx181293%_))
          (let* ((_%$%g181298181305%_ (gx#syntax-e _%hd181297%_))
                 (_%$%E181300181309%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%g181298181305%_
                           '([_ . rest]))
                    '#!void))
                 (_%$%K181301181314%_
                  (lambda (_%rest181312%_)
                    (if (gx#stx-pair? _%rest181312%_)
                        (_%lp181295%_ _%rest181312%_)
                        _%hd181297%_))))
            (if (pair? _%$%g181298181305%_)
                (let* ((_%$%tl181303181317%_ (##cdr _%$%g181298181305%_))
                       (_%rest181320%_ _%$%tl181303181317%_))
                  (_%$%K181301181314%_ _%rest181320%_))
                (_%$%E181300181309%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx181262%_ _%k181263%_)
        (let _%lp181265%_ ((_%rest181267%_ _%stx181262%_)
                           (_%k181268%_ _%k181263%_))
          (if (fxpositive? _%k181268%_)
              (let* ((_%$%g181269181276%_ (gx#syntax-e _%rest181267%_))
                     (_%$%E181271181280%_
                      (lambda ()
                        (error '"No clause matching"
                               _%$%g181269181276%_
                               '([_ . rest]))
                        '#!void))
                     (_%$%K181272181285%_
                      (lambda (_%rest181283%_)
                        (_%lp181265%_ _%rest181283%_ (##fx- _%k181268%_ '1)))))
                (if (pair? _%$%g181269181276%_)
                    (let* ((_%$%tl181274181288%_ (##cdr _%$%g181269181276%_))
                           (_%rest181291%_ _%$%tl181274181288%_))
                      (_%$%K181272181285%_ _%rest181291%_))
                    (_%$%E181271181280%_)))
              _%rest181267%_))))
    (define gx#stx-list-ref
      (lambda (_%stx181259%_ _%k181260%_)
        (gx#stx-car (gx#stx-list-tail _%stx181259%_ _%k181260%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx181171%_ _%key?181172%_)
        (if (procedure? _%key?181172%_)
            '#!void
            (error '"expected procedure" _%key?181172%_))
        (let _%lp181174%_ ((_%rest181176%_ _%stx181171%_))
          (let* ((_%$%g181177181187%_ (gx#stx-e _%rest181176%_))
                 (_%$%else181180181195%_ (lambda () '#f)))
            (let ((_%$%K181183181237%_
                   (lambda (_%rest181206%_ _%hd181207%_)
                     (if (_%key?181172%_ _%hd181207%_)
                         (let* ((_%$%g181208181216%_ (gx#stx-e _%rest181206%_))
                                (_%$%else181210181224%_ (lambda () '#f))
                                (_%$%K181212181229%_
                                 (lambda (_%rest181227%_)
                                   (_%lp181174%_ _%rest181227%_))))
                           (if (pair? _%$%g181208181216%_)
                               (let* ((_%$%tl181214181232%_
                                       (##cdr _%$%g181208181216%_))
                                      (_%rest181235%_ _%$%tl181214181232%_))
                                 (_%lp181174%_ _%rest181235%_))
                               (_%$%else181210181224%_)))
                         '#f)))
                  (_%$%K181182181200%_ (lambda () '#t)))
              (let ((_%$%try-match181179181203%_
                     (lambda ()
                       (if (null? _%$%g181177181187%_)
                           (_%$%K181182181200%_)
                           (_%$%else181180181195%_)))))
                (if (pair? _%$%g181177181187%_)
                    (let ((_%$%tl181185181242%_ (##cdr _%$%g181177181187%_))
                          (_%$%hd181184181240%_ (##car _%$%g181177181187%_)))
                      (let ((_%hd181245%_ _%$%hd181184181240%_)
                            (_%rest181247%_ _%$%tl181185181242%_))
                        (_%$%K181183181237%_ _%rest181247%_ _%hd181245%_)))
                    (_%$%try-match181179181203%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx181252%_)
        (let ((_%key?181254%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx181252%_ _%key?181254%_))))
    (define gx#stx-plist?
      (lambda _g182406_
        (let ((_g182407_ (##length _g182406_)))
          (cond ((##fx= _g182407_ 1) (apply gx#stx-plist?__0 _g182406_))
                ((##fx= _g182407_ 2) (apply gx#stx-plist?__% _g182406_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g182406_))))))
    (define gx#stx-getq__%
      (lambda (_%key181089%_ _%stx181090%_ _%key=?181091%_)
        (if (procedure? _%key=?181091%_)
            '#!void
            (error '"expected procedure" _%key=?181091%_))
        (let _%lp181093%_ ((_%rest181095%_ _%stx181090%_))
          (let* ((_%$%g181096181104%_ (gx#syntax-e _%rest181095%_))
                 (_%$%else181098181112%_ (lambda () '#f))
                 (_%$%K181100181146%_
                  (lambda (_%rest181115%_ _%hd181116%_)
                    (let* ((_%$%g181117181124%_ (gx#syntax-e _%rest181115%_))
                           (_%$%E181119181128%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%g181117181124%_
                                     '([val . rest]))
                              '#!void))
                           (_%$%K181120181134%_
                            (lambda (_%rest181131%_ _%val181132%_)
                              (if (_%key=?181091%_ _%hd181116%_ _%key181089%_)
                                  _%val181132%_
                                  (_%lp181093%_ _%rest181131%_)))))
                      (if (pair? _%$%g181117181124%_)
                          (let ((_%$%hd181121181137%_
                                 (##car _%$%g181117181124%_))
                                (_%$%tl181122181139%_
                                 (##cdr _%$%g181117181124%_)))
                            (let* ((_%val181142%_ _%$%hd181121181137%_)
                                   (_%rest181144%_ _%$%tl181122181139%_))
                              (_%$%K181120181134%_
                               _%rest181144%_
                               _%val181142%_)))
                          (_%$%E181119181128%_))))))
            (if (pair? _%$%g181096181104%_)
                (let ((_%$%hd181101181149%_ (##car _%$%g181096181104%_))
                      (_%$%tl181102181151%_ (##cdr _%$%g181096181104%_)))
                  (let* ((_%hd181154%_ _%$%hd181101181149%_)
                         (_%rest181156%_ _%$%tl181102181151%_))
                    (_%$%K181100181146%_ _%rest181156%_ _%hd181154%_)))
                (_%$%else181098181112%_))))))
    (define gx#stx-getq__0
      (lambda (_%key181161%_ _%stx181162%_)
        (let ((_%key=?181164%_ gx#stx-eq?))
          (gx#stx-getq__% _%key181161%_ _%stx181162%_ _%key=?181164%_))))
    (define gx#stx-getq
      (lambda _g182408_
        (let ((_g182409_ (##length _g182408_)))
          (cond ((##fx= _g182409_ 2) (apply gx#stx-getq__0 _g182408_))
                ((##fx= _g182409_ 3) (apply gx#stx-getq__% _g182408_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g182408_))))))
    (define gx#stx-plist-assq__%
      (lambda (_%key181007%_ _%stx181008%_ _%key=?181009%_)
        (if (procedure? _%key=?181009%_)
            '#!void
            (error '"expected procedure" _%key=?181009%_))
        (let _%lp181011%_ ((_%rest181013%_ _%stx181008%_))
          (let* ((_%$%g181014181022%_ (gx#syntax-e _%rest181013%_))
                 (_%$%else181016181030%_ (lambda () '#f))
                 (_%$%K181018181064%_
                  (lambda (_%rest181033%_ _%hd181034%_)
                    (let* ((_%$%g181035181042%_ (gx#syntax-e _%rest181033%_))
                           (_%$%E181037181046%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%g181035181042%_
                                     '([val . rest]))
                              '#!void))
                           (_%$%K181038181052%_
                            (lambda (_%rest181049%_ _%val181050%_)
                              (if (_%key=?181009%_ _%hd181034%_ _%key181007%_)
                                  (cons _%hd181034%_ _%val181050%_)
                                  (_%lp181011%_ _%rest181049%_)))))
                      (if (pair? _%$%g181035181042%_)
                          (let ((_%$%hd181039181055%_
                                 (##car _%$%g181035181042%_))
                                (_%$%tl181040181057%_
                                 (##cdr _%$%g181035181042%_)))
                            (let* ((_%val181060%_ _%$%hd181039181055%_)
                                   (_%rest181062%_ _%$%tl181040181057%_))
                              (_%$%K181038181052%_
                               _%rest181062%_
                               _%val181060%_)))
                          (_%$%E181037181046%_))))))
            (if (pair? _%$%g181014181022%_)
                (let ((_%$%hd181019181067%_ (##car _%$%g181014181022%_))
                      (_%$%tl181020181069%_ (##cdr _%$%g181014181022%_)))
                  (let* ((_%hd181072%_ _%$%hd181019181067%_)
                         (_%rest181074%_ _%$%tl181020181069%_))
                    (_%$%K181018181064%_ _%rest181074%_ _%hd181072%_)))
                (_%$%else181016181030%_))))))
    (define gx#stx-plist-assq__0
      (lambda (_%key181079%_ _%stx181080%_)
        (let ((_%key=?181082%_ gx#stx-eq?))
          (gx#stx-plist-assq__% _%key181079%_ _%stx181080%_ _%key=?181082%_))))
    (define gx#stx-plist-assq
      (lambda _g182410_
        (let ((_g182411_ (##length _g182410_)))
          (cond ((##fx= _g182411_ 2) (apply gx#stx-plist-assq__0 _g182410_))
                ((##fx= _g182411_ 3) (apply gx#stx-plist-assq__% _g182410_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist-assq
                  _g182410_))))))))

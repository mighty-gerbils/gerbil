(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1712784665)
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
      (lambda _%$args115480%_
        (apply make-instance gx#identifier-wrap::t _%$args115480%_)))
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
      (lambda _%$args115477%_
        (apply make-instance gx#syntax-wrap::t _%$args115477%_)))
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
      (lambda _%$args115474%_
        (apply make-instance gx#syntax-quote::t _%$args115474%_)))
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
      (lambda (_%stx115472%_) (symbol? (gx#stx-e _%stx115472%_))))
    (define gx#identifier-quote?
      (lambda (_%stx115470%_)
        (if (##structure-direct-instance-of? _%stx115470%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx115470%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx115465%_)
        (if (##structure-direct-instance-of? _%stx115465%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx115465%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx115465%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx115460%_)
        (if (##structure-direct-instance-of? _%stx115460%_ 'gx#syntax-quote::t)
            _%stx115460%_
            (if (##structure-direct-instance-of?
                 _%stx115460%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx115460%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx115434%_)
        (if (##structure-direct-instance-of? _%stx115434%_ 'gx#syntax-wrap::t)
            (let _%lp115437%_ ((_%e115439%_
                                (##unchecked-structure-ref
                                 _%stx115434%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks115440%_
                                (cons (##unchecked-structure-ref
                                       _%stx115434%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e115439%_)
                  (let ((_%$e115443%_
                         (##type-id (##structure-type _%e115439%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e115443%_)
                        (_%lp115437%_
                         (##unchecked-structure-ref _%e115439%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e115439%_ '3 '#f '#f)
                          _%marks115440%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e115443%_)
                                (eq? 'gx#identifier-wrap::t _%$e115443%_))
                            (##unchecked-structure-ref _%e115439%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e115443%_)
                                (_%lp115437%_
                                 (##unchecked-structure-ref
                                  _%e115439%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks115440%_)
                                _%e115439%_))))
                  (if (null? _%marks115440%_)
                      _%e115439%_
                      (if (pair? _%e115439%_)
                          (cons (gx#stx-wrap (car _%e115439%_) _%marks115440%_)
                                (gx#stx-wrap
                                 (cdr _%e115439%_)
                                 _%marks115440%_))
                          (if (vector? _%e115439%_)
                              (vector-map
                               (lambda (_%g115451115453%_)
                                 (gx#stx-wrap
                                  _%g115451115453%_
                                  _%marks115440%_))
                               _%e115439%_)
                              (if (box? _%e115439%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e115439%_)
                                        _%marks115440%_))
                                  _%e115439%_))))))
            (if (##structure-instance-of? _%stx115434%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx115434%_ '1 '#f '#f)
                _%stx115434%_))))
    (define gx#syntax->datum
      (lambda (_%stx115427%_)
        (if (##structure-instance-of? _%stx115427%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx115427%_ '1 '#f '#f))
            (if (pair? _%stx115427%_)
                (cons (gx#syntax->datum (car _%stx115427%_))
                      (gx#syntax->datum (cdr _%stx115427%_)))
                (if (vector? _%stx115427%_)
                    (vector-map gx#syntax->datum _%stx115427%_)
                    (if (box? _%stx115427%_)
                        (box (gx#syntax->datum (unbox _%stx115427%_)))
                        _%stx115427%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx115361%_ _%datum115362%_ _%src115363%_ _%quote?115364%_)
        (letrec ((_%wrap-datum115366%_
                  (lambda (_%e115399%_ _%marks115400%_)
                    (_%wrap-inner115368%_
                     _%e115399%_
                     (lambda (_%g115401115403%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g115401115403%_
                        _%src115363%_
                        _%marks115400%_)))))
                 (_%wrap-quote115367%_
                  (lambda (_%e115391%_ _%ctx115392%_ _%marks115393%_)
                    (_%wrap-inner115368%_
                     _%e115391%_
                     (lambda (_%g115394115396%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g115394115396%_
                        _%src115363%_
                        _%ctx115392%_
                        _%marks115393%_)))))
                 (_%wrap-inner115368%_
                  (lambda (_%e115379%_ _%wrap-e115380%_)
                    (let _%recur115382%_ ((_%e115384%_ _%e115379%_))
                      (if (symbol? _%e115384%_)
                          (_%wrap-e115380%_ _%e115384%_)
                          (if (pair? _%e115384%_)
                              (cons (_%recur115382%_ (car _%e115384%_))
                                    (_%recur115382%_ (cdr _%e115384%_)))
                              (if (vector? _%e115384%_)
                                  (vector-map _%recur115382%_ _%e115384%_)
                                  (if (box? _%e115384%_)
                                      (box (_%recur115382%_
                                            (unbox _%e115384%_)))
                                      _%e115384%_)))))))
                 (_%wrap-outer115369%_
                  (lambda (_%e115377%_)
                    (if (##structure-instance-of? _%e115377%_ 'gerbil#AST::t)
                        _%e115377%_
                        (##structure gx#AST::t _%e115377%_ _%src115363%_)))))
          (if (##structure-instance-of? _%datum115362%_ 'gerbil#AST::t)
              _%datum115362%_
              (if (not _%stx115361%_)
                  (##structure gx#AST::t _%datum115362%_ _%src115363%_)
                  (if (gx#identifier? _%stx115361%_)
                      (let ((_%stx115374%_ (gx#stx-unwrap__0 _%stx115361%_)))
                        (_%wrap-outer115369%_
                         (if (##structure-direct-instance-of?
                              _%stx115374%_
                              'gx#syntax-quote::t)
                             (if _%quote?115364%_
                                 (_%wrap-quote115367%_
                                  _%datum115362%_
                                  (##unchecked-structure-ref
                                   _%stx115374%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx115374%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum115366%_
                                  _%datum115362%_
                                  (##unchecked-structure-ref
                                   _%stx115374%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum115366%_
                              _%datum115362%_
                              (##unchecked-structure-ref
                               _%stx115374%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx115361%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx115409%_ _%datum115410%_)
        (let* ((_%src115412%_ '#f) (_%quote?115414%_ '#t))
          (gx#datum->syntax__%
           _%stx115409%_
           _%datum115410%_
           _%src115412%_
           _%quote?115414%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx115416%_ _%datum115417%_ _%src115418%_)
        (let ((_%quote?115420%_ '#t))
          (gx#datum->syntax__%
           _%stx115416%_
           _%datum115417%_
           _%src115418%_
           _%quote?115420%_))))
    (define gx#datum->syntax
      (lambda _g115561_
        (let ((_g115560_ (##length _g115561_)))
          (cond ((##fx= _g115560_ 2) (apply gx#datum->syntax__0 _g115561_))
                ((##fx= _g115560_ 3) (apply gx#datum->syntax__1 _g115561_))
                ((##fx= _g115560_ 4) (apply gx#datum->syntax__% _g115561_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g115561_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx115327%_ _%marks115328%_)
        (let _%lp115330%_ ((_%e115332%_ _%stx115327%_)
                           (_%marks115333%_ _%marks115328%_)
                           (_%src115334%_ (gx#stx-source _%stx115327%_)))
          (if (##structure-direct-instance-of? _%e115332%_ 'gx#syntax-wrap::t)
              (_%lp115330%_
               (##unchecked-structure-ref _%e115332%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e115332%_ '3 '#f '#f)
                _%marks115333%_)
               (##unchecked-structure-ref _%e115332%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e115332%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks115333%_)
                      _%e115332%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e115332%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e115332%_ '2 '#f '#f)
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e115332%_ '3 '#f '#f)
                        _%marks115333%_)))
                  (if (##structure-direct-instance-of?
                       _%e115332%_
                       'gx#syntax-quote::t)
                      _%e115332%_
                      (if (##structure-instance-of? _%e115332%_ 'gerbil#AST::t)
                          (_%lp115330%_
                           (##unchecked-structure-ref _%e115332%_ '1 '#f '#f)
                           _%marks115333%_
                           (##unchecked-structure-ref _%e115332%_ '2 '#f '#f))
                          (if (symbol? _%e115332%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e115332%_
                               _%src115334%_
                               (reverse _%marks115333%_))
                              (if (null? _%marks115333%_)
                                  _%e115332%_
                                  (if (pair? _%e115332%_)
                                      (cons (gx#stx-wrap
                                             (car _%e115332%_)
                                             _%marks115333%_)
                                            (gx#stx-wrap
                                             (cdr _%e115332%_)
                                             _%marks115333%_))
                                      (if (vector? _%e115332%_)
                                          (vector-map
                                           (lambda (_%g115343115345%_)
                                             (gx#stx-wrap
                                              _%g115343115345%_
                                              _%marks115333%_))
                                           _%e115332%_)
                                          (if (box? _%e115332%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e115332%_)
                                                    _%marks115333%_))
                                              _%e115332%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx115353%_)
        (let ((_%marks115355%_ '()))
          (gx#stx-unwrap__% _%stx115353%_ _%marks115355%_))))
    (define gx#stx-unwrap
      (lambda _g115563_
        (let ((_g115562_ (##length _g115563_)))
          (cond ((##fx= _g115562_ 1) (apply gx#stx-unwrap__0 _g115563_))
                ((##fx= _g115562_ 2) (apply gx#stx-unwrap__% _g115563_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g115563_))))))
    (define gx#stx-wrap
      (lambda (_%stx115320%_ _%marks115321%_)
        (__foldl1
         (lambda (_%mark115323%_ _%stx115324%_)
           (gx#stx-apply-mark _%stx115324%_ _%mark115323%_))
         _%stx115320%_
         _%marks115321%_)))
    (define gx#stx-rewrap
      (lambda (_%stx115314%_ _%marks115315%_)
        (__foldr1
         (lambda (_%mark115317%_ _%stx115318%_)
           (gx#stx-apply-mark _%stx115318%_ _%mark115317%_))
         _%stx115314%_
         _%marks115315%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx115308%_ _%mark115309%_)
        (if (##structure-direct-instance-of? _%stx115308%_ 'gx#syntax-quote::t)
            _%stx115308%_
            (if (and (##structure-direct-instance-of?
                      _%stx115308%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark115309%_
                          (##unchecked-structure-ref
                           _%stx115308%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx115308%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx115308%_
                 (gx#stx-source _%stx115308%_)
                 _%mark115309%_)))))
    (define gx#apply-mark
      (lambda (_%mark115272%_ _%marks115273%_)
        (let* ((_%marks115274115282%_ _%marks115273%_)
               (_%else115276115290%_
                (lambda () (cons _%mark115272%_ _%marks115273%_)))
               (_%K115278115296%_
                (lambda (_%rest115293%_ _%hd115294%_)
                  (if (eq? _%mark115272%_ _%hd115294%_)
                      _%rest115293%_
                      (cons _%mark115272%_ _%marks115273%_)))))
          (if (##pair? _%marks115274115282%_)
              (let ((_%hd115279115299%_ (##car _%marks115274115282%_))
                    (_%tl115280115301%_ (##cdr _%marks115274115282%_)))
                (let* ((_%hd115304%_ _%hd115279115299%_)
                       (_%rest115306%_ _%tl115280115301%_))
                  (_%K115278115296%_ _%rest115306%_ _%hd115304%_)))
              (_%else115276115290%_)))))
    (define gx#stx-e
      (lambda (_%stx115267%_)
        (if (##structure-direct-instance-of? _%stx115267%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx115267%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx115267%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx115267%_ '1 '#f '#f)
                _%stx115267%_))))
    (define gx#stx-source
      (lambda (_%stx115265%_)
        (if (##structure-instance-of? _%stx115265%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx115265%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx115259%_ _%src115260%_)
        (if (or (##structure-instance-of? _%stx115259%_ 'gerbil#AST::t)
                (not _%src115260%_))
            _%stx115259%_
            (##structure gx#AST::t _%stx115259%_ _%src115260%_))))
    (define gx#stx-datum?
      (lambda (_%stx115257%_) (gx#self-quoting? (gx#stx-e _%stx115257%_))))
    (define gx#self-quoting?
      (lambda (_%x115240%_)
        (let ((_%$e115242%_ (immediate? _%x115240%_)))
          (if _%$e115242%_
              _%$e115242%_
              (let ((_%$e115245%_ (number? _%x115240%_)))
                (if _%$e115245%_
                    _%$e115245%_
                    (let ((_%$e115248%_ (keyword? _%x115240%_)))
                      (if _%$e115248%_
                          _%$e115248%_
                          (let ((_%$e115251%_ (string? _%x115240%_)))
                            (if _%$e115251%_
                                _%$e115251%_
                                (let ((_%$e115254%_ (vector? _%x115240%_)))
                                  (if _%$e115254%_
                                      _%$e115254%_
                                      (u8vector? _%x115240%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e115238%_) (boolean? (gx#stx-e _%e115238%_))))
    (define gx#stx-keyword?
      (lambda (_%e115236%_) (keyword? (gx#stx-e _%e115236%_))))
    (define gx#stx-char? (lambda (_%e115234%_) (char? (gx#stx-e _%e115234%_))))
    (define gx#stx-number?
      (lambda (_%e115232%_) (number? (gx#stx-e _%e115232%_))))
    (define gx#stx-fixnum?
      (lambda (_%e115230%_) (fixnum? (gx#stx-e _%e115230%_))))
    (define gx#stx-string?
      (lambda (_%e115228%_) (string? (gx#stx-e _%e115228%_))))
    (define gx#stx-null? (lambda (_%e115226%_) (null? (gx#stx-e _%e115226%_))))
    (define gx#stx-pair? (lambda (_%e115224%_) (pair? (gx#stx-e _%e115224%_))))
    (define gx#stx-list?
      (lambda (_%e115186%_)
        (let* ((_%g115187115196%_ (gx#stx-e _%e115186%_))
               (_%E115190115200%_
                (lambda ()
                  (error '"No clause matching"
                         _%g115187115196%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K115192115216%_
                 (lambda (_%rest115214%_) (gx#stx-list? _%rest115214%_)))
                (_%K115191115206%_
                 (lambda (_%tail115204%_) (null? _%tail115204%_))))
            (if (##pair? _%g115187115196%_)
                (let* ((_%tl115194115219%_ (##cdr _%g115187115196%_))
                       (_%rest115222%_ _%tl115194115219%_))
                  (gx#stx-list? _%rest115222%_))
                (let ((_%tail115209%_ _%g115187115196%_))
                  (null? _%tail115209%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e115179%_)
        (let* ((_%e115181%_ (gx#stx-e _%e115179%_))
               (_%$e115183%_ (pair? _%e115181%_)))
          (if _%$e115183%_ _%$e115183%_ (null? _%e115181%_)))))
    (define gx#stx-vector?
      (lambda (_%e115177%_) (vector? (gx#stx-e _%e115177%_))))
    (define gx#stx-box? (lambda (_%e115175%_) (box? (gx#stx-e _%e115175%_))))
    (define gx#stx-eq?
      (lambda (_%x115172%_ _%y115173%_)
        (eq? (gx#stx-e _%x115172%_) (gx#stx-e _%y115173%_))))
    (define gx#stx-eqv?
      (lambda (_%x115169%_ _%y115170%_)
        (eqv? (gx#stx-e _%x115169%_) (gx#stx-e _%y115170%_))))
    (define gx#stx-equal?
      (lambda (_%x115166%_ _%y115167%_)
        (equal? (gx#stx-e _%x115166%_) (gx#stx-e _%y115167%_))))
    (define gx#stx-false? (lambda (_%x115164%_) (not (gx#stx-e _%x115164%_))))
    (define gx#stx-identifier
      (lambda (_%template115161%_ . _%args115162%_)
        (gx#datum->syntax__1
         _%template115161%_
         (apply make-symbol (gx#syntax->datum _%args115162%_))
         (gx#stx-source _%template115161%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx115159%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx115159%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx115154%_)
        (if (##structure-direct-instance-of?
             _%stx115154%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx115154%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx115154%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx115154%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx115154%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx115150%_)
        (let ((_%stx115152%_ (gx#stx-unwrap__0 _%stx115150%_)))
          (if (gx#identifier-quote? _%stx115152%_)
              (##unchecked-structure-ref _%stx115152%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx115105%_)
        (let* ((_%g115106115116%_ (gx#stx-e _%stx115105%_))
               (_%else115109115124%_ (lambda () '#f)))
          (let ((_%K115112115138%_
                 (lambda (_%rest115135%_ _%hd115136%_)
                   (if (gx#identifier? _%hd115136%_)
                       (gx#identifier-list? _%rest115135%_)
                       '#f)))
                (_%K115111115129%_ (lambda () '#t)))
            (let ((_%try-match115108115132%_
                   (lambda ()
                     (if (##null? _%g115106115116%_)
                         (_%K115111115129%_)
                         (_%else115109115124%_)))))
              (if (##pair? _%g115106115116%_)
                  (let ((_%tl115114115143%_ (##cdr _%g115106115116%_))
                        (_%hd115113115141%_ (##car _%g115106115116%_)))
                    (let ((_%hd115146%_ _%hd115113115141%_)
                          (_%rest115148%_ _%tl115114115143%_))
                      (_%K115112115138%_ _%rest115148%_ _%hd115146%_)))
                  (_%try-match115108115132%_)))))))
    (define gx#genident__%
      (lambda (_%e115082%_ _%src115083%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e115085%_ (gx#stx-e _%e115082%_)))
                   (if (interned-symbol? _%e115085%_) _%e115085%_ 'g)))
         (let ((_%$e115087%_ (gx#stx-source _%e115082%_)))
           (if _%$e115087%_ _%$e115087%_ _%src115083%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e115094%_ 'g) (_%src115096%_ '#f))
          (gx#genident__% _%e115094%_ _%src115096%_))))
    (define gx#genident__1
      (lambda (_%e115098%_)
        (let ((_%src115100%_ '#f))
          (gx#genident__% _%e115098%_ _%src115100%_))))
    (define gx#genident
      (lambda _g115565_
        (let ((_g115564_ (##length _g115565_)))
          (cond ((##fx= _g115564_ 0) (apply gx#genident__0 _g115565_))
                ((##fx= _g115564_ 1) (apply gx#genident__1 _g115565_))
                ((##fx= _g115564_ 2) (apply gx#genident__% _g115565_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g115565_))))))
    (define gx#gentemps
      (lambda (_%stx-lst115079%_) (gx#stx-map1 gx#genident _%stx-lst115079%_)))
    (define gx#syntax->list
      (lambda (_%stx115077%_) (gx#stx-map1 values _%stx115077%_)))
    (define gx#stx-car
      (lambda (_%stx115074%_)
        (declare (safe))
        (car (gx#syntax-e _%stx115074%_))))
    (define gx#stx-cdr
      (lambda (_%stx115071%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx115071%_))))
    (define gx#stx-length
      (lambda (_%stx115036%_)
        (let _%lp115038%_ ((_%rest115040%_ _%stx115036%_) (_%n115041%_ '0))
          (let* ((_%g115042115050%_ (gx#stx-e _%rest115040%_))
                 (_%else115044115058%_ (lambda () _%n115041%_))
                 (_%K115046115063%_
                  (lambda (_%rest115061%_)
                    (_%lp115038%_ _%rest115061%_ (##fx+ _%n115041%_ '1)))))
            (if (##pair? _%g115042115050%_)
                (let* ((_%tl115048115066%_ (##cdr _%g115042115050%_))
                       (_%rest115069%_ _%tl115048115066%_))
                  (_%K115046115063%_ _%rest115069%_))
                (_%else115044115058%_))))))
    (define gx#stx-for-each
      (lambda _g115567_
        (let ((_g115566_ (##length _g115567_)))
          (cond ((##fx= _g115566_ 2) (apply gx#stx-for-each1 _g115567_))
                ((##fx= _g115566_ 3) (apply gx#stx-for-each2 _g115567_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g115567_))))))
    (define gx#stx-for-each1
      (lambda (_%f114979%_ _%stx114980%_)
        (if (procedure? _%f114979%_)
            '#!void
            (error '"expected procedure" _%f114979%_))
        (let _%lp114982%_ ((_%rest114984%_ _%stx114980%_))
          (let* ((_%g114985114995%_ (gx#syntax-e _%rest114984%_))
                 (_%else114988115003%_
                  (lambda () (_%f114979%_ _%rest114984%_))))
            (let ((_%K114991115017%_
                   (lambda (_%rest115014%_ _%hd115015%_)
                     (_%f114979%_ _%hd115015%_)
                     (_%lp114982%_ _%rest115014%_)))
                  (_%K114990115008%_ (lambda () '#!void)))
              (let ((_%try-match114987115011%_
                     (lambda ()
                       (if (##null? _%g114985114995%_)
                           (_%K114990115008%_)
                           (_%else114988115003%_)))))
                (if (##pair? _%g114985114995%_)
                    (let ((_%tl114993115022%_ (##cdr _%g114985114995%_))
                          (_%hd114992115020%_ (##car _%g114985114995%_)))
                      (let ((_%hd115025%_ _%hd114992115020%_)
                            (_%rest115027%_ _%tl114993115022%_))
                        (_%K114991115017%_ _%rest115027%_ _%hd115025%_)))
                    (_%try-match114987115011%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f114884%_ _%xstx114885%_ _%ystx114886%_)
        (if (procedure? _%f114884%_)
            '#!void
            (error '"expected procedure" _%f114884%_))
        (let _%lp114888%_ ((_%xrest114890%_ _%xstx114885%_)
                           (_%yrest114891%_ _%ystx114886%_))
          (let* ((_%g114892114902%_ (gx#syntax-e _%xrest114890%_))
                 (_%else114895114910%_ (lambda () '#!void)))
            (let ((_%K114898114967%_
                   (lambda (_%xrest114936%_ _%xhd114937%_)
                     (let* ((_%g114938114945%_ (gx#syntax-e _%yrest114891%_))
                            (_%E114940114949%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g114938114945%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K114941114955%_
                             (lambda (_%yrest114952%_ _%yhd114953%_)
                               (_%f114884%_ _%xhd114937%_ _%yhd114953%_)
                               (_%lp114888%_
                                _%xrest114936%_
                                _%yrest114952%_))))
                       (if (##pair? _%g114938114945%_)
                           (let ((_%hd114942114958%_ (##car _%g114938114945%_))
                                 (_%tl114943114960%_
                                  (##cdr _%g114938114945%_)))
                             (let* ((_%yhd114963%_ _%hd114942114958%_)
                                    (_%yrest114965%_ _%tl114943114960%_))
                               (_%K114941114955%_
                                _%yrest114965%_
                                _%yhd114963%_)))
                           (_%E114940114949%_)))))
                  (_%K114897114930%_
                   (lambda ()
                     (let* ((_%yrest114914114919%_ _%yrest114891%_)
                            (_%E114916114923%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest114914114919%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K114917114927%_
                             (lambda ()
                               (_%f114884%_ _%xrest114890%_ _%yrest114891%_))))
                       (if (not (gx#stx-null? _%yrest114914114919%_))
                           (_%K114917114927%_)
                           (_%E114916114923%_))))))
              (let ((_%try-match114894114933%_
                     (lambda ()
                       (if (not (null? _%g114892114902%_))
                           (_%K114897114930%_)
                           (_%else114895114910%_)))))
                (if (##pair? _%g114892114902%_)
                    (let ((_%tl114900114972%_ (##cdr _%g114892114902%_))
                          (_%hd114899114970%_ (##car _%g114892114902%_)))
                      (let ((_%xhd114975%_ _%hd114899114970%_)
                            (_%xrest114977%_ _%tl114900114972%_))
                        (_%K114898114967%_ _%xrest114977%_ _%xhd114975%_)))
                    (_%try-match114894114933%_))))))))
    (define gx#stx-map
      (lambda _g115569_
        (let ((_g115568_ (##length _g115569_)))
          (cond ((##fx= _g115568_ 2) (apply gx#stx-map1 _g115569_))
                ((##fx= _g115568_ 3) (apply gx#stx-map2 _g115569_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g115569_))))))
    (define gx#stx-map1
      (lambda (_%f114827%_ _%stx114828%_)
        (if (procedure? _%f114827%_)
            '#!void
            (error '"expected procedure" _%f114827%_))
        (let _%recur114830%_ ((_%rest114832%_ _%stx114828%_))
          (let* ((_%g114833114843%_ (gx#syntax-e _%rest114832%_))
                 (_%else114836114851%_
                  (lambda () (_%f114827%_ _%rest114832%_))))
            (let ((_%K114839114865%_
                   (lambda (_%rest114862%_ _%hd114863%_)
                     (cons (_%f114827%_ _%hd114863%_)
                           (_%recur114830%_ _%rest114862%_))))
                  (_%K114838114856%_ (lambda () '())))
              (let ((_%try-match114835114859%_
                     (lambda ()
                       (if (##null? _%g114833114843%_)
                           (_%K114838114856%_)
                           (_%else114836114851%_)))))
                (if (##pair? _%g114833114843%_)
                    (let ((_%tl114841114870%_ (##cdr _%g114833114843%_))
                          (_%hd114840114868%_ (##car _%g114833114843%_)))
                      (let ((_%hd114873%_ _%hd114840114868%_)
                            (_%rest114875%_ _%tl114841114870%_))
                        (_%K114839114865%_ _%rest114875%_ _%hd114873%_)))
                    (_%try-match114835114859%_))))))))
    (define gx#stx-map2
      (lambda (_%f114732%_ _%xstx114733%_ _%ystx114734%_)
        (if (procedure? _%f114732%_)
            '#!void
            (error '"expected procedure" _%f114732%_))
        (let _%recur114736%_ ((_%xrest114738%_ _%xstx114733%_)
                              (_%yrest114739%_ _%ystx114734%_))
          (let* ((_%g114740114750%_ (gx#syntax-e _%xrest114738%_))
                 (_%else114743114758%_ (lambda () '())))
            (let ((_%K114746114815%_
                   (lambda (_%xrest114784%_ _%xhd114785%_)
                     (let* ((_%g114786114793%_ (gx#syntax-e _%yrest114739%_))
                            (_%E114788114797%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g114786114793%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K114789114803%_
                             (lambda (_%yrest114800%_ _%yhd114801%_)
                               (cons (_%f114732%_ _%xhd114785%_ _%yhd114801%_)
                                     (_%recur114736%_
                                      _%xrest114784%_
                                      _%yrest114800%_)))))
                       (if (##pair? _%g114786114793%_)
                           (let ((_%hd114790114806%_ (##car _%g114786114793%_))
                                 (_%tl114791114808%_
                                  (##cdr _%g114786114793%_)))
                             (let* ((_%yhd114811%_ _%hd114790114806%_)
                                    (_%yrest114813%_ _%tl114791114808%_))
                               (_%K114789114803%_
                                _%yrest114813%_
                                _%yhd114811%_)))
                           (_%E114788114797%_)))))
                  (_%K114745114778%_
                   (lambda ()
                     (let* ((_%yrest114762114767%_ _%yrest114739%_)
                            (_%E114764114771%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest114762114767%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K114765114775%_
                             (lambda ()
                               (_%f114732%_ _%xrest114738%_ _%yrest114739%_))))
                       (if (not (gx#stx-null? _%yrest114762114767%_))
                           (_%K114765114775%_)
                           (_%E114764114771%_))))))
              (let ((_%try-match114742114781%_
                     (lambda ()
                       (if (not (null? _%g114740114750%_))
                           (_%K114745114778%_)
                           (_%else114743114758%_)))))
                (if (##pair? _%g114740114750%_)
                    (let ((_%tl114748114820%_ (##cdr _%g114740114750%_))
                          (_%hd114747114818%_ (##car _%g114740114750%_)))
                      (let ((_%xhd114823%_ _%hd114747114818%_)
                            (_%xrest114825%_ _%tl114748114820%_))
                        (_%K114746114815%_ _%xrest114825%_ _%xhd114823%_)))
                    (_%try-match114742114781%_))))))))
    (define gx#stx-andmap
      (lambda (_%f114682%_ _%stx114683%_)
        (if (procedure? _%f114682%_)
            '#!void
            (error '"expected procedure" _%f114682%_))
        (let _%lp114685%_ ((_%rest114687%_ _%stx114683%_))
          (let* ((_%g114688114698%_ (gx#syntax-e _%rest114687%_))
                 (_%else114691114706%_
                  (lambda () (_%f114682%_ _%rest114687%_))))
            (let ((_%K114694114720%_
                   (lambda (_%rest114717%_ _%hd114718%_)
                     (if (_%f114682%_ _%hd114718%_)
                         (_%lp114685%_ _%rest114717%_)
                         '#f)))
                  (_%K114693114711%_ (lambda () '#t)))
              (let ((_%try-match114690114714%_
                     (lambda ()
                       (if (##null? _%g114688114698%_)
                           (_%K114693114711%_)
                           (_%else114691114706%_)))))
                (if (##pair? _%g114688114698%_)
                    (let ((_%tl114696114725%_ (##cdr _%g114688114698%_))
                          (_%hd114695114723%_ (##car _%g114688114698%_)))
                      (let ((_%hd114728%_ _%hd114695114723%_)
                            (_%rest114730%_ _%tl114696114725%_))
                        (_%K114694114720%_ _%rest114730%_ _%hd114728%_)))
                    (_%try-match114690114714%_))))))))
    (define gx#stx-ormap
      (lambda (_%f114629%_ _%stx114630%_)
        (if (procedure? _%f114629%_)
            '#!void
            (error '"expected procedure" _%f114629%_))
        (let _%lp114632%_ ((_%rest114634%_ _%stx114630%_))
          (let* ((_%g114635114645%_ (gx#syntax-e _%rest114634%_))
                 (_%else114638114653%_
                  (lambda () (_%f114629%_ _%rest114634%_))))
            (let ((_%K114641114670%_
                   (lambda (_%rest114664%_ _%hd114665%_)
                     (let ((_%$e114667%_ (_%f114629%_ _%hd114665%_)))
                       (if _%$e114667%_
                           _%$e114667%_
                           (_%lp114632%_ _%rest114664%_)))))
                  (_%K114640114658%_ (lambda () '#f)))
              (let ((_%try-match114637114661%_
                     (lambda ()
                       (if (##null? _%g114635114645%_)
                           (_%K114640114658%_)
                           (_%else114638114653%_)))))
                (if (##pair? _%g114635114645%_)
                    (let ((_%tl114643114675%_ (##cdr _%g114635114645%_))
                          (_%hd114642114673%_ (##car _%g114635114645%_)))
                      (let ((_%hd114678%_ _%hd114642114673%_)
                            (_%rest114680%_ _%tl114643114675%_))
                        (_%K114641114670%_ _%rest114680%_ _%hd114678%_)))
                    (_%try-match114637114661%_))))))))
    (define gx#stx-foldl
      (lambda (_%f114577%_ _%iv114578%_ _%stx114579%_)
        (if (procedure? _%f114577%_)
            '#!void
            (error '"expected procedure" _%f114577%_))
        (let _%lp114581%_ ((_%r114583%_ _%iv114578%_)
                           (_%rest114584%_ _%stx114579%_))
          (let* ((_%g114585114595%_ (gx#syntax-e _%rest114584%_))
                 (_%else114588114603%_
                  (lambda () (_%f114577%_ _%rest114584%_ _%r114583%_))))
            (let ((_%K114591114617%_
                   (lambda (_%rest114614%_ _%hd114615%_)
                     (_%lp114581%_
                      (_%f114577%_ _%hd114615%_ _%r114583%_)
                      _%rest114614%_)))
                  (_%K114590114608%_ (lambda () _%r114583%_)))
              (let ((_%try-match114587114611%_
                     (lambda ()
                       (if (##null? _%g114585114595%_)
                           (_%K114590114608%_)
                           (_%else114588114603%_)))))
                (if (##pair? _%g114585114595%_)
                    (let ((_%tl114593114622%_ (##cdr _%g114585114595%_))
                          (_%hd114592114620%_ (##car _%g114585114595%_)))
                      (let ((_%hd114625%_ _%hd114592114620%_)
                            (_%rest114627%_ _%tl114593114622%_))
                        (_%K114591114617%_ _%rest114627%_ _%hd114625%_)))
                    (_%try-match114587114611%_))))))))
    (define gx#stx-foldr
      (lambda (_%f114526%_ _%iv114527%_ _%stx114528%_)
        (if (procedure? _%f114526%_)
            '#!void
            (error '"expected procedure" _%f114526%_))
        (let _%recur114530%_ ((_%rest114532%_ _%stx114528%_))
          (let* ((_%g114533114543%_ (gx#syntax-e _%rest114532%_))
                 (_%else114536114551%_
                  (lambda () (_%f114526%_ _%rest114532%_ _%iv114527%_))))
            (let ((_%K114539114565%_
                   (lambda (_%rest114562%_ _%hd114563%_)
                     (_%f114526%_
                      _%hd114563%_
                      (_%recur114530%_ _%rest114562%_))))
                  (_%K114538114556%_ (lambda () _%iv114527%_)))
              (let ((_%try-match114535114559%_
                     (lambda ()
                       (if (##null? _%g114533114543%_)
                           (_%K114538114556%_)
                           (_%else114536114551%_)))))
                (if (##pair? _%g114533114543%_)
                    (let ((_%tl114541114570%_ (##cdr _%g114533114543%_))
                          (_%hd114540114568%_ (##car _%g114533114543%_)))
                      (let ((_%hd114573%_ _%hd114540114568%_)
                            (_%rest114575%_ _%tl114541114570%_))
                        (_%K114539114565%_ _%rest114575%_ _%hd114573%_)))
                    (_%try-match114535114559%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx114524%_) (gx#stx-foldl cons '() _%stx114524%_)))
    (define gx#stx-last
      (lambda (_%stx114485%_)
        (let _%lp114487%_ ((_%rest114489%_ _%stx114485%_))
          (let* ((_%g114490114498%_ (gx#syntax-e _%rest114489%_))
                 (_%else114492114506%_ (lambda () _%rest114489%_))
                 (_%K114494114512%_
                  (lambda (_%rest114509%_ _%hd114510%_)
                    (if (gx#stx-null? _%rest114509%_)
                        _%hd114510%_
                        (_%lp114487%_ _%rest114509%_)))))
            (if (##pair? _%g114490114498%_)
                (let ((_%hd114495114515%_ (##car _%g114490114498%_))
                      (_%tl114496114517%_ (##cdr _%g114490114498%_)))
                  (let* ((_%hd114520%_ _%hd114495114515%_)
                         (_%rest114522%_ _%tl114496114517%_))
                    (_%K114494114512%_ _%rest114522%_ _%hd114520%_)))
                (_%else114492114506%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx114456%_)
        (let _%lp114458%_ ((_%hd114460%_ _%stx114456%_))
          (let* ((_%g114461114468%_ (gx#syntax-e _%hd114460%_))
                 (_%E114463114472%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g114461114468%_
                           '([_ . rest]))
                    '#!void))
                 (_%K114464114477%_
                  (lambda (_%rest114475%_)
                    (if (gx#stx-pair? _%rest114475%_)
                        (_%lp114458%_ _%rest114475%_)
                        _%hd114460%_))))
            (if (##pair? _%g114461114468%_)
                (let* ((_%tl114466114480%_ (##cdr _%g114461114468%_))
                       (_%rest114483%_ _%tl114466114480%_))
                  (_%K114464114477%_ _%rest114483%_))
                (_%E114463114472%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx114425%_ _%k114426%_)
        (let _%lp114428%_ ((_%rest114430%_ _%stx114425%_)
                           (_%k114431%_ _%k114426%_))
          (if (fxpositive? _%k114431%_)
              (let* ((_%g114432114439%_ (gx#syntax-e _%rest114430%_))
                     (_%E114434114443%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g114432114439%_
                               '([_ . rest]))
                        '#!void))
                     (_%K114435114448%_
                      (lambda (_%rest114446%_)
                        (_%lp114428%_ _%rest114446%_ (##fx- _%k114431%_ '1)))))
                (if (##pair? _%g114432114439%_)
                    (let* ((_%tl114437114451%_ (##cdr _%g114432114439%_))
                           (_%rest114454%_ _%tl114437114451%_))
                      (_%K114435114448%_ _%rest114454%_))
                    (_%E114434114443%_)))
              _%rest114430%_))))
    (define gx#stx-list-ref
      (lambda (_%stx114422%_ _%k114423%_)
        (gx#stx-car (gx#stx-list-tail _%stx114422%_ _%k114423%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx114334%_ _%key?114335%_)
        (if (procedure? _%key?114335%_)
            '#!void
            (error '"expected procedure" _%key?114335%_))
        (let _%lp114337%_ ((_%rest114339%_ _%stx114334%_))
          (let* ((_%g114340114350%_ (gx#stx-e _%rest114339%_))
                 (_%else114343114358%_ (lambda () '#f)))
            (let ((_%K114346114400%_
                   (lambda (_%rest114369%_ _%hd114370%_)
                     (if (_%key?114335%_ _%hd114370%_)
                         (let* ((_%g114371114379%_ (gx#stx-e _%rest114369%_))
                                (_%else114373114387%_ (lambda () '#f))
                                (_%K114375114392%_
                                 (lambda (_%rest114390%_)
                                   (_%lp114337%_ _%rest114390%_))))
                           (if (##pair? _%g114371114379%_)
                               (let* ((_%tl114377114395%_
                                       (##cdr _%g114371114379%_))
                                      (_%rest114398%_ _%tl114377114395%_))
                                 (_%lp114337%_ _%rest114398%_))
                               (_%else114373114387%_)))
                         '#f)))
                  (_%K114345114363%_ (lambda () '#t)))
              (let ((_%try-match114342114366%_
                     (lambda ()
                       (if (##null? _%g114340114350%_)
                           (_%K114345114363%_)
                           (_%else114343114358%_)))))
                (if (##pair? _%g114340114350%_)
                    (let ((_%tl114348114405%_ (##cdr _%g114340114350%_))
                          (_%hd114347114403%_ (##car _%g114340114350%_)))
                      (let ((_%hd114408%_ _%hd114347114403%_)
                            (_%rest114410%_ _%tl114348114405%_))
                        (_%K114346114400%_ _%rest114410%_ _%hd114408%_)))
                    (_%try-match114342114366%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx114415%_)
        (let ((_%key?114417%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx114415%_ _%key?114417%_))))
    (define gx#stx-plist?
      (lambda _g115571_
        (let ((_g115570_ (##length _g115571_)))
          (cond ((##fx= _g115570_ 1) (apply gx#stx-plist?__0 _g115571_))
                ((##fx= _g115570_ 2) (apply gx#stx-plist?__% _g115571_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g115571_))))))
    (define gx#stx-getq__%
      (lambda (_%key114252%_ _%stx114253%_ _%key=?114254%_)
        (if (procedure? _%key=?114254%_)
            '#!void
            (error '"expected procedure" _%key=?114254%_))
        (let _%lp114256%_ ((_%rest114258%_ _%stx114253%_))
          (let* ((_%g114259114267%_ (gx#syntax-e _%rest114258%_))
                 (_%else114261114275%_ (lambda () '#f))
                 (_%K114263114309%_
                  (lambda (_%rest114278%_ _%hd114279%_)
                    (let* ((_%g114280114287%_ (gx#syntax-e _%rest114278%_))
                           (_%E114282114291%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g114280114287%_
                                     '([val . rest]))
                              '#!void))
                           (_%K114283114297%_
                            (lambda (_%rest114294%_ _%val114295%_)
                              (if (_%key=?114254%_ _%hd114279%_ _%key114252%_)
                                  _%val114295%_
                                  (_%lp114256%_ _%rest114294%_)))))
                      (if (##pair? _%g114280114287%_)
                          (let ((_%hd114284114300%_ (##car _%g114280114287%_))
                                (_%tl114285114302%_ (##cdr _%g114280114287%_)))
                            (let* ((_%val114305%_ _%hd114284114300%_)
                                   (_%rest114307%_ _%tl114285114302%_))
                              (_%K114283114297%_
                               _%rest114307%_
                               _%val114305%_)))
                          (_%E114282114291%_))))))
            (if (##pair? _%g114259114267%_)
                (let ((_%hd114264114312%_ (##car _%g114259114267%_))
                      (_%tl114265114314%_ (##cdr _%g114259114267%_)))
                  (let* ((_%hd114317%_ _%hd114264114312%_)
                         (_%rest114319%_ _%tl114265114314%_))
                    (_%K114263114309%_ _%rest114319%_ _%hd114317%_)))
                (_%else114261114275%_))))))
    (define gx#stx-getq__0
      (lambda (_%key114324%_ _%stx114325%_)
        (let ((_%key=?114327%_ gx#stx-eq?))
          (gx#stx-getq__% _%key114324%_ _%stx114325%_ _%key=?114327%_))))
    (define gx#stx-getq
      (lambda _g115573_
        (let ((_g115572_ (##length _g115573_)))
          (cond ((##fx= _g115572_ 2) (apply gx#stx-getq__0 _g115573_))
                ((##fx= _g115572_ 3) (apply gx#stx-getq__% _g115573_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g115573_))))))))

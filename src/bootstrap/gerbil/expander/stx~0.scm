(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1771036674)
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
      (lambda _%$args356080%_
        (apply make-instance gx#identifier-wrap::t _%$args356080%_)))
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
      (lambda _%$args356077%_
        (apply make-instance gx#syntax-wrap::t _%$args356077%_)))
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
      (lambda _%$args356074%_
        (apply make-instance gx#syntax-quote::t _%$args356074%_)))
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
      (lambda (_%stx356072%_) (symbol? (gx#stx-e _%stx356072%_))))
    (define gx#identifier-quote?
      (lambda (_%stx356070%_)
        (if (##structure-direct-instance-of? _%stx356070%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx356070%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx356065%_)
        (if (##structure-direct-instance-of? _%stx356065%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx356065%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx356065%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx356060%_)
        (if (##structure-direct-instance-of? _%stx356060%_ 'gx#syntax-quote::t)
            _%stx356060%_
            (if (##structure-direct-instance-of?
                 _%stx356060%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx356060%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx356034%_)
        (if (##structure-direct-instance-of? _%stx356034%_ 'gx#syntax-wrap::t)
            (let _%lp356037%_ ((_%e356039%_
                                (##unchecked-structure-ref
                                 _%stx356034%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks356040%_
                                (cons (##unchecked-structure-ref
                                       _%stx356034%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e356039%_)
                  (let ((_%$e356043%_
                         (##type-id (##structure-type _%e356039%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e356043%_)
                        (_%lp356037%_
                         (##unchecked-structure-ref _%e356039%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e356039%_ '3 '#f '#f)
                          _%marks356040%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e356043%_)
                                (eq? 'gx#identifier-wrap::t _%$e356043%_))
                            (##unchecked-structure-ref _%e356039%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e356043%_)
                                (_%lp356037%_
                                 (##unchecked-structure-ref
                                  _%e356039%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks356040%_)
                                _%e356039%_))))
                  (if (null? _%marks356040%_)
                      _%e356039%_
                      (if (pair? _%e356039%_)
                          (cons (gx#stx-wrap
                                 (##car _%e356039%_)
                                 _%marks356040%_)
                                (gx#stx-wrap
                                 (##cdr _%e356039%_)
                                 _%marks356040%_))
                          (if (vector? _%e356039%_)
                              (vector-map
                               (lambda (_%g356051356053%_)
                                 (gx#stx-wrap
                                  _%g356051356053%_
                                  _%marks356040%_))
                               _%e356039%_)
                              (if (box? _%e356039%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e356039%_)
                                        _%marks356040%_))
                                  _%e356039%_))))))
            (if (##structure-instance-of? _%stx356034%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx356034%_ '1 '#f '#f)
                _%stx356034%_))))
    (define gx#syntax->datum
      (lambda (_%stx356027%_)
        (if (##structure-instance-of? _%stx356027%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx356027%_ '1 '#f '#f))
            (if (pair? _%stx356027%_)
                (cons (gx#syntax->datum (##car _%stx356027%_))
                      (gx#syntax->datum (##cdr _%stx356027%_)))
                (if (vector? _%stx356027%_)
                    (vector-map gx#syntax->datum _%stx356027%_)
                    (if (box? _%stx356027%_)
                        (box (gx#syntax->datum (unbox _%stx356027%_)))
                        _%stx356027%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx355961%_ _%datum355962%_ _%src355963%_ _%quote?355964%_)
        (letrec ((_%wrap-datum355966%_
                  (lambda (_%e355999%_ _%marks356000%_)
                    (_%wrap-inner355968%_
                     _%e355999%_
                     (lambda (_%g356001356003%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g356001356003%_
                        _%src355963%_
                        _%marks356000%_)))))
                 (_%wrap-quote355967%_
                  (lambda (_%e355991%_ _%ctx355992%_ _%marks355993%_)
                    (_%wrap-inner355968%_
                     _%e355991%_
                     (lambda (_%g355994355996%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g355994355996%_
                        _%src355963%_
                        _%ctx355992%_
                        _%marks355993%_)))))
                 (_%wrap-inner355968%_
                  (lambda (_%e355979%_ _%wrap-e355980%_)
                    (let _%recur355982%_ ((_%e355984%_ _%e355979%_))
                      (if (symbol? _%e355984%_)
                          (_%wrap-e355980%_ _%e355984%_)
                          (if (pair? _%e355984%_)
                              (cons (_%recur355982%_ (##car _%e355984%_))
                                    (_%recur355982%_ (##cdr _%e355984%_)))
                              (if (vector? _%e355984%_)
                                  (vector-map _%recur355982%_ _%e355984%_)
                                  (if (box? _%e355984%_)
                                      (box (_%recur355982%_
                                            (unbox _%e355984%_)))
                                      _%e355984%_)))))))
                 (_%wrap-outer355969%_
                  (lambda (_%e355977%_)
                    (if (##structure-instance-of? _%e355977%_ 'gerbil#AST::t)
                        _%e355977%_
                        (##structure gx#AST::t _%e355977%_ _%src355963%_)))))
          (if (##structure-instance-of? _%datum355962%_ 'gerbil#AST::t)
              _%datum355962%_
              (if (not _%stx355961%_)
                  (##structure gx#AST::t _%datum355962%_ _%src355963%_)
                  (if (gx#identifier? _%stx355961%_)
                      (let ((_%stx355974%_ (gx#stx-unwrap__0 _%stx355961%_)))
                        (_%wrap-outer355969%_
                         (if (##structure-direct-instance-of?
                              _%stx355974%_
                              'gx#syntax-quote::t)
                             (if _%quote?355964%_
                                 (_%wrap-quote355967%_
                                  _%datum355962%_
                                  (##unchecked-structure-ref
                                   _%stx355974%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx355974%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum355966%_
                                  _%datum355962%_
                                  (##unchecked-structure-ref
                                   _%stx355974%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum355966%_
                              _%datum355962%_
                              (##unchecked-structure-ref
                               _%stx355974%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx355961%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx356009%_ _%datum356010%_)
        (let* ((_%src356012%_ '#f) (_%quote?356014%_ '#t))
          (gx#datum->syntax__%
           _%stx356009%_
           _%datum356010%_
           _%src356012%_
           _%quote?356014%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx356016%_ _%datum356017%_ _%src356018%_)
        (let ((_%quote?356020%_ '#t))
          (gx#datum->syntax__%
           _%stx356016%_
           _%datum356017%_
           _%src356018%_
           _%quote?356020%_))))
    (define gx#datum->syntax
      (lambda _g356160_
        (let ((_g356161_ (##length _g356160_)))
          (cond ((##fx= _g356161_ 2) (apply gx#datum->syntax__0 _g356160_))
                ((##fx= _g356161_ 3) (apply gx#datum->syntax__1 _g356160_))
                ((##fx= _g356161_ 4) (apply gx#datum->syntax__% _g356160_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g356160_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx355927%_ _%marks355928%_)
        (let _%lp355930%_ ((_%e355932%_ _%stx355927%_)
                           (_%marks355933%_ _%marks355928%_)
                           (_%src355934%_ (gx#stx-source _%stx355927%_)))
          (if (##structure-direct-instance-of? _%e355932%_ 'gx#syntax-wrap::t)
              (_%lp355930%_
               (##unchecked-structure-ref _%e355932%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e355932%_ '3 '#f '#f)
                _%marks355933%_)
               (##unchecked-structure-ref _%e355932%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e355932%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks355933%_)
                      _%e355932%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e355932%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e355932%_ '2 '#f '#f)
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e355932%_ '3 '#f '#f)
                        _%marks355933%_)))
                  (if (##structure-direct-instance-of?
                       _%e355932%_
                       'gx#syntax-quote::t)
                      _%e355932%_
                      (if (##structure-instance-of? _%e355932%_ 'gerbil#AST::t)
                          (_%lp355930%_
                           (##unchecked-structure-ref _%e355932%_ '1 '#f '#f)
                           _%marks355933%_
                           (##unchecked-structure-ref _%e355932%_ '2 '#f '#f))
                          (if (symbol? _%e355932%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e355932%_
                               _%src355934%_
                               (reverse _%marks355933%_))
                              (if (null? _%marks355933%_)
                                  _%e355932%_
                                  (if (pair? _%e355932%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e355932%_)
                                             _%marks355933%_)
                                            (gx#stx-wrap
                                             (##cdr _%e355932%_)
                                             _%marks355933%_))
                                      (if (vector? _%e355932%_)
                                          (vector-map
                                           (lambda (_%g355943355945%_)
                                             (gx#stx-wrap
                                              _%g355943355945%_
                                              _%marks355933%_))
                                           _%e355932%_)
                                          (if (box? _%e355932%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e355932%_)
                                                    _%marks355933%_))
                                              _%e355932%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx355953%_)
        (let ((_%marks355955%_ '()))
          (gx#stx-unwrap__% _%stx355953%_ _%marks355955%_))))
    (define gx#stx-unwrap
      (lambda _g356162_
        (let ((_g356163_ (##length _g356162_)))
          (cond ((##fx= _g356163_ 1) (apply gx#stx-unwrap__0 _g356162_))
                ((##fx= _g356163_ 2) (apply gx#stx-unwrap__% _g356162_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g356162_))))))
    (define gx#stx-wrap
      (lambda (_%stx355920%_ _%marks355921%_)
        (foldl__0
         (lambda (_%mark355923%_ _%stx355924%_)
           (gx#stx-apply-mark _%stx355924%_ _%mark355923%_))
         _%stx355920%_
         _%marks355921%_)))
    (define gx#stx-rewrap
      (lambda (_%stx355914%_ _%marks355915%_)
        (foldr__0
         (lambda (_%mark355917%_ _%stx355918%_)
           (gx#stx-apply-mark _%stx355918%_ _%mark355917%_))
         _%stx355914%_
         _%marks355915%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx355908%_ _%mark355909%_)
        (if (##structure-direct-instance-of? _%stx355908%_ 'gx#syntax-quote::t)
            _%stx355908%_
            (if (and (##structure-direct-instance-of?
                      _%stx355908%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark355909%_
                          (##unchecked-structure-ref
                           _%stx355908%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx355908%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx355908%_
                 (gx#stx-source _%stx355908%_)
                 _%mark355909%_)))))
    (define gx#apply-mark
      (lambda (_%mark355872%_ _%marks355873%_)
        (let* ((_%marks355874355882%_ _%marks355873%_)
               (_%else355876355890%_
                (lambda () (cons _%mark355872%_ _%marks355873%_)))
               (_%K355878355896%_
                (lambda (_%rest355893%_ _%hd355894%_)
                  (if (eq? _%mark355872%_ _%hd355894%_)
                      _%rest355893%_
                      (cons _%mark355872%_ _%marks355873%_)))))
          (if (pair? _%marks355874355882%_)
              (let ((_%hd355879355899%_ (##car _%marks355874355882%_))
                    (_%tl355880355901%_ (##cdr _%marks355874355882%_)))
                (let* ((_%hd355904%_ _%hd355879355899%_)
                       (_%rest355906%_ _%tl355880355901%_))
                  (_%K355878355896%_ _%rest355906%_ _%hd355904%_)))
              (_%else355876355890%_)))))
    (define gx#stx-e
      (lambda (_%stx355867%_)
        (if (##structure-direct-instance-of? _%stx355867%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx355867%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx355867%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx355867%_ '1 '#f '#f)
                _%stx355867%_))))
    (define gx#stx-source
      (lambda (_%stx355865%_)
        (if (##structure-instance-of? _%stx355865%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx355865%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx355859%_ _%src355860%_)
        (if (or (##structure-instance-of? _%stx355859%_ 'gerbil#AST::t)
                (not _%src355860%_))
            _%stx355859%_
            (##structure gx#AST::t _%stx355859%_ _%src355860%_))))
    (define gx#stx-datum?
      (lambda (_%stx355857%_) (gx#self-quoting? (gx#stx-e _%stx355857%_))))
    (define gx#self-quoting?
      (lambda (_%x355840%_)
        (let ((_%$e355842%_ (immediate? _%x355840%_)))
          (if _%$e355842%_
              _%$e355842%_
              (let ((_%$e355845%_ (number? _%x355840%_)))
                (if _%$e355845%_
                    _%$e355845%_
                    (let ((_%$e355848%_ (keyword? _%x355840%_)))
                      (if _%$e355848%_
                          _%$e355848%_
                          (let ((_%$e355851%_ (string? _%x355840%_)))
                            (if _%$e355851%_
                                _%$e355851%_
                                (let ((_%$e355854%_ (vector? _%x355840%_)))
                                  (if _%$e355854%_
                                      _%$e355854%_
                                      (u8vector? _%x355840%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e355838%_) (boolean? (gx#stx-e _%e355838%_))))
    (define gx#stx-keyword?
      (lambda (_%e355836%_) (keyword? (gx#stx-e _%e355836%_))))
    (define gx#stx-char? (lambda (_%e355834%_) (char? (gx#stx-e _%e355834%_))))
    (define gx#stx-number?
      (lambda (_%e355832%_) (number? (gx#stx-e _%e355832%_))))
    (define gx#stx-fixnum?
      (lambda (_%e355830%_) (fixnum? (gx#stx-e _%e355830%_))))
    (define gx#stx-string?
      (lambda (_%e355828%_) (string? (gx#stx-e _%e355828%_))))
    (define gx#stx-null? (lambda (_%e355826%_) (null? (gx#stx-e _%e355826%_))))
    (define gx#stx-pair? (lambda (_%e355824%_) (pair? (gx#stx-e _%e355824%_))))
    (define gx#stx-list?
      (lambda (_%e355786%_)
        (let* ((_%g355787355796%_ (gx#stx-e _%e355786%_))
               (_%E355790355800%_
                (lambda ()
                  (error '"No clause matching"
                         _%g355787355796%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K355792355816%_
                 (lambda (_%rest355814%_) (gx#stx-list? _%rest355814%_)))
                (_%K355791355806%_
                 (lambda (_%tail355804%_) (null? _%tail355804%_))))
            (if (pair? _%g355787355796%_)
                (let* ((_%tl355794355819%_ (##cdr _%g355787355796%_))
                       (_%rest355822%_ _%tl355794355819%_))
                  (gx#stx-list? _%rest355822%_))
                (let ((_%tail355809%_ _%g355787355796%_))
                  (null? _%tail355809%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e355779%_)
        (let* ((_%e355781%_ (gx#stx-e _%e355779%_))
               (_%$e355783%_ (pair? _%e355781%_)))
          (if _%$e355783%_ _%$e355783%_ (null? _%e355781%_)))))
    (define gx#stx-vector?
      (lambda (_%e355777%_) (vector? (gx#stx-e _%e355777%_))))
    (define gx#stx-box? (lambda (_%e355775%_) (box? (gx#stx-e _%e355775%_))))
    (define gx#stx-eq?
      (lambda (_%x355772%_ _%y355773%_)
        (eq? (gx#stx-e _%x355772%_) (gx#stx-e _%y355773%_))))
    (define gx#stx-eqv?
      (lambda (_%x355769%_ _%y355770%_)
        (eqv? (gx#stx-e _%x355769%_) (gx#stx-e _%y355770%_))))
    (define gx#stx-equal?
      (lambda (_%x355766%_ _%y355767%_)
        (equal? (gx#stx-e _%x355766%_) (gx#stx-e _%y355767%_))))
    (define gx#stx-false? (lambda (_%x355764%_) (not (gx#stx-e _%x355764%_))))
    (define gx#stx-identifier
      (lambda (_%template355761%_ . _%args355762%_)
        (gx#datum->syntax__1
         _%template355761%_
         (apply make-symbol (gx#syntax->datum _%args355762%_))
         (gx#stx-source _%template355761%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx355759%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx355759%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx355754%_)
        (if (##structure-direct-instance-of?
             _%stx355754%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx355754%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx355754%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx355754%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx355754%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx355750%_)
        (let ((_%stx355752%_ (gx#stx-unwrap__0 _%stx355750%_)))
          (if (gx#identifier-quote? _%stx355752%_)
              (##unchecked-structure-ref _%stx355752%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx355705%_)
        (let* ((_%g355706355716%_ (gx#stx-e _%stx355705%_))
               (_%else355709355724%_ (lambda () '#f)))
          (let ((_%K355712355738%_
                 (lambda (_%rest355735%_ _%hd355736%_)
                   (if (gx#identifier? _%hd355736%_)
                       (gx#identifier-list? _%rest355735%_)
                       '#f)))
                (_%K355711355729%_ (lambda () '#t)))
            (let ((_%try-match355708355732%_
                   (lambda ()
                     (if (null? _%g355706355716%_)
                         (_%K355711355729%_)
                         (_%else355709355724%_)))))
              (if (pair? _%g355706355716%_)
                  (let ((_%tl355714355743%_ (##cdr _%g355706355716%_))
                        (_%hd355713355741%_ (##car _%g355706355716%_)))
                    (let ((_%hd355746%_ _%hd355713355741%_)
                          (_%rest355748%_ _%tl355714355743%_))
                      (_%K355712355738%_ _%rest355748%_ _%hd355746%_)))
                  (_%try-match355708355732%_)))))))
    (define gx#genident__%
      (lambda (_%e355685%_ _%src355686%_)
        (gx#datum->syntax__1
         (if (gx#identifier? _%src355686%_) _%src355686%_ '#f)
         (##string->symbol
          (##symbol->string
           (##gensym
            (let ((_%e355688%_ (gx#stx-e _%e355685%_)))
              (if (symbol? _%e355688%_) _%e355688%_ 'g)))))
         _%src355686%_)))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e355694%_ 'g) (_%src355696%_ '#f))
          (gx#genident__% _%e355694%_ _%src355696%_))))
    (define gx#genident__1
      (lambda (_%e355698%_)
        (let ((_%src355700%_ '#f))
          (gx#genident__% _%e355698%_ _%src355700%_))))
    (define gx#genident
      (lambda _g356164_
        (let ((_g356165_ (##length _g356164_)))
          (cond ((##fx= _g356165_ 0) (apply gx#genident__0 _g356164_))
                ((##fx= _g356165_ 1) (apply gx#genident__1 _g356164_))
                ((##fx= _g356165_ 2) (apply gx#genident__% _g356164_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g356164_))))))
    (define gx#gentemps
      (lambda (_%stx-lst355680%_)
        (gx#stx-map1
         (lambda (_%x355682%_) (gx#genident__% _%x355682%_ _%x355682%_))
         _%stx-lst355680%_)))
    (define gx#syntax->list
      (lambda (_%stx355678%_) (gx#stx-map1 values _%stx355678%_)))
    (define gx#stx-car
      (lambda (_%stx355675%_)
        (declare (safe))
        (car (gx#syntax-e _%stx355675%_))))
    (define gx#stx-cdr
      (lambda (_%stx355672%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx355672%_))))
    (define gx#stx-length
      (lambda (_%stx355637%_)
        (let _%lp355639%_ ((_%rest355641%_ _%stx355637%_) (_%n355642%_ '0))
          (let* ((_%g355643355651%_ (gx#stx-e _%rest355641%_))
                 (_%else355645355659%_ (lambda () _%n355642%_))
                 (_%K355647355664%_
                  (lambda (_%rest355662%_)
                    (_%lp355639%_ _%rest355662%_ (##fx+ _%n355642%_ '1)))))
            (if (pair? _%g355643355651%_)
                (let* ((_%tl355649355667%_ (##cdr _%g355643355651%_))
                       (_%rest355670%_ _%tl355649355667%_))
                  (_%K355647355664%_ _%rest355670%_))
                (_%else355645355659%_))))))
    (define gx#stx-for-each
      (lambda _g356166_
        (let ((_g356167_ (##length _g356166_)))
          (cond ((##fx= _g356167_ 2) (apply gx#stx-for-each1 _g356166_))
                ((##fx= _g356167_ 3) (apply gx#stx-for-each2 _g356166_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g356166_))))))
    (define gx#stx-for-each1
      (lambda (_%f355580%_ _%stx355581%_)
        (if (procedure? _%f355580%_)
            '#!void
            (error '"expected procedure" _%f355580%_))
        (let _%lp355583%_ ((_%rest355585%_ _%stx355581%_))
          (let* ((_%g355586355596%_ (gx#syntax-e _%rest355585%_))
                 (_%else355589355604%_
                  (lambda () (_%f355580%_ _%rest355585%_))))
            (let ((_%K355592355618%_
                   (lambda (_%rest355615%_ _%hd355616%_)
                     (_%f355580%_ _%hd355616%_)
                     (_%lp355583%_ _%rest355615%_)))
                  (_%K355591355609%_ (lambda () '#!void)))
              (let ((_%try-match355588355612%_
                     (lambda ()
                       (if (null? _%g355586355596%_)
                           (_%K355591355609%_)
                           (_%else355589355604%_)))))
                (if (pair? _%g355586355596%_)
                    (let ((_%tl355594355623%_ (##cdr _%g355586355596%_))
                          (_%hd355593355621%_ (##car _%g355586355596%_)))
                      (let ((_%hd355626%_ _%hd355593355621%_)
                            (_%rest355628%_ _%tl355594355623%_))
                        (_%K355592355618%_ _%rest355628%_ _%hd355626%_)))
                    (_%try-match355588355612%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f355485%_ _%xstx355486%_ _%ystx355487%_)
        (if (procedure? _%f355485%_)
            '#!void
            (error '"expected procedure" _%f355485%_))
        (let _%lp355489%_ ((_%xrest355491%_ _%xstx355486%_)
                           (_%yrest355492%_ _%ystx355487%_))
          (let* ((_%g355493355503%_ (gx#syntax-e _%xrest355491%_))
                 (_%else355496355511%_ (lambda () '#!void)))
            (let ((_%K355499355568%_
                   (lambda (_%xrest355537%_ _%xhd355538%_)
                     (let* ((_%g355539355546%_ (gx#syntax-e _%yrest355492%_))
                            (_%E355541355550%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g355539355546%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K355542355556%_
                             (lambda (_%yrest355553%_ _%yhd355554%_)
                               (_%f355485%_ _%xhd355538%_ _%yhd355554%_)
                               (_%lp355489%_
                                _%xrest355537%_
                                _%yrest355553%_))))
                       (if (pair? _%g355539355546%_)
                           (let ((_%hd355543355559%_ (##car _%g355539355546%_))
                                 (_%tl355544355561%_
                                  (##cdr _%g355539355546%_)))
                             (let* ((_%yhd355564%_ _%hd355543355559%_)
                                    (_%yrest355566%_ _%tl355544355561%_))
                               (_%K355542355556%_
                                _%yrest355566%_
                                _%yhd355564%_)))
                           (_%E355541355550%_)))))
                  (_%K355498355531%_
                   (lambda ()
                     (let* ((_%yrest355515355520%_ _%yrest355492%_)
                            (_%E355517355524%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest355515355520%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K355518355528%_
                             (lambda ()
                               (_%f355485%_ _%xrest355491%_ _%yrest355492%_))))
                       (if (gx#stx-null? _%yrest355515355520%_)
                           (_%E355517355524%_)
                           (_%K355518355528%_))))))
              (let ((_%try-match355495355534%_
                     (lambda ()
                       (if (null? _%g355493355503%_)
                           (_%else355496355511%_)
                           (_%K355498355531%_)))))
                (if (pair? _%g355493355503%_)
                    (let ((_%tl355501355573%_ (##cdr _%g355493355503%_))
                          (_%hd355500355571%_ (##car _%g355493355503%_)))
                      (let ((_%xhd355576%_ _%hd355500355571%_)
                            (_%xrest355578%_ _%tl355501355573%_))
                        (_%K355499355568%_ _%xrest355578%_ _%xhd355576%_)))
                    (_%try-match355495355534%_))))))))
    (define gx#stx-map
      (lambda _g356168_
        (let ((_g356169_ (##length _g356168_)))
          (cond ((##fx= _g356169_ 2) (apply gx#stx-map1 _g356168_))
                ((##fx= _g356169_ 3) (apply gx#stx-map2 _g356168_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g356168_))))))
    (define gx#stx-map1
      (lambda (_%f355428%_ _%stx355429%_)
        (if (procedure? _%f355428%_)
            '#!void
            (error '"expected procedure" _%f355428%_))
        (let _%recur355431%_ ((_%rest355433%_ _%stx355429%_))
          (let* ((_%g355434355444%_ (gx#syntax-e _%rest355433%_))
                 (_%else355437355452%_
                  (lambda () (_%f355428%_ _%rest355433%_))))
            (let ((_%K355440355466%_
                   (lambda (_%rest355463%_ _%hd355464%_)
                     (cons (_%f355428%_ _%hd355464%_)
                           (_%recur355431%_ _%rest355463%_))))
                  (_%K355439355457%_ (lambda () '())))
              (let ((_%try-match355436355460%_
                     (lambda ()
                       (if (null? _%g355434355444%_)
                           (_%K355439355457%_)
                           (_%else355437355452%_)))))
                (if (pair? _%g355434355444%_)
                    (let ((_%tl355442355471%_ (##cdr _%g355434355444%_))
                          (_%hd355441355469%_ (##car _%g355434355444%_)))
                      (let ((_%hd355474%_ _%hd355441355469%_)
                            (_%rest355476%_ _%tl355442355471%_))
                        (_%K355440355466%_ _%rest355476%_ _%hd355474%_)))
                    (_%try-match355436355460%_))))))))
    (define gx#stx-map2
      (lambda (_%f355333%_ _%xstx355334%_ _%ystx355335%_)
        (if (procedure? _%f355333%_)
            '#!void
            (error '"expected procedure" _%f355333%_))
        (let _%recur355337%_ ((_%xrest355339%_ _%xstx355334%_)
                              (_%yrest355340%_ _%ystx355335%_))
          (let* ((_%g355341355351%_ (gx#syntax-e _%xrest355339%_))
                 (_%else355344355359%_ (lambda () '())))
            (let ((_%K355347355416%_
                   (lambda (_%xrest355385%_ _%xhd355386%_)
                     (let* ((_%g355387355394%_ (gx#syntax-e _%yrest355340%_))
                            (_%E355389355398%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g355387355394%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K355390355404%_
                             (lambda (_%yrest355401%_ _%yhd355402%_)
                               (cons (_%f355333%_ _%xhd355386%_ _%yhd355402%_)
                                     (_%recur355337%_
                                      _%xrest355385%_
                                      _%yrest355401%_)))))
                       (if (pair? _%g355387355394%_)
                           (let ((_%hd355391355407%_ (##car _%g355387355394%_))
                                 (_%tl355392355409%_
                                  (##cdr _%g355387355394%_)))
                             (let* ((_%yhd355412%_ _%hd355391355407%_)
                                    (_%yrest355414%_ _%tl355392355409%_))
                               (_%K355390355404%_
                                _%yrest355414%_
                                _%yhd355412%_)))
                           (_%E355389355398%_)))))
                  (_%K355346355379%_
                   (lambda ()
                     (let* ((_%yrest355363355368%_ _%yrest355340%_)
                            (_%E355365355372%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest355363355368%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K355366355376%_
                             (lambda ()
                               (_%f355333%_ _%xrest355339%_ _%yrest355340%_))))
                       (if (gx#stx-null? _%yrest355363355368%_)
                           (_%E355365355372%_)
                           (_%K355366355376%_))))))
              (let ((_%try-match355343355382%_
                     (lambda ()
                       (if (null? _%g355341355351%_)
                           (_%else355344355359%_)
                           (_%K355346355379%_)))))
                (if (pair? _%g355341355351%_)
                    (let ((_%tl355349355421%_ (##cdr _%g355341355351%_))
                          (_%hd355348355419%_ (##car _%g355341355351%_)))
                      (let ((_%xhd355424%_ _%hd355348355419%_)
                            (_%xrest355426%_ _%tl355349355421%_))
                        (_%K355347355416%_ _%xrest355426%_ _%xhd355424%_)))
                    (_%try-match355343355382%_))))))))
    (define gx#stx-andmap
      (lambda (_%f355283%_ _%stx355284%_)
        (if (procedure? _%f355283%_)
            '#!void
            (error '"expected procedure" _%f355283%_))
        (let _%lp355286%_ ((_%rest355288%_ _%stx355284%_))
          (let* ((_%g355289355299%_ (gx#syntax-e _%rest355288%_))
                 (_%else355292355307%_
                  (lambda () (_%f355283%_ _%rest355288%_))))
            (let ((_%K355295355321%_
                   (lambda (_%rest355318%_ _%hd355319%_)
                     (if (_%f355283%_ _%hd355319%_)
                         (_%lp355286%_ _%rest355318%_)
                         '#f)))
                  (_%K355294355312%_ (lambda () '#t)))
              (let ((_%try-match355291355315%_
                     (lambda ()
                       (if (null? _%g355289355299%_)
                           (_%K355294355312%_)
                           (_%else355292355307%_)))))
                (if (pair? _%g355289355299%_)
                    (let ((_%tl355297355326%_ (##cdr _%g355289355299%_))
                          (_%hd355296355324%_ (##car _%g355289355299%_)))
                      (let ((_%hd355329%_ _%hd355296355324%_)
                            (_%rest355331%_ _%tl355297355326%_))
                        (_%K355295355321%_ _%rest355331%_ _%hd355329%_)))
                    (_%try-match355291355315%_))))))))
    (define gx#stx-ormap
      (lambda (_%f355230%_ _%stx355231%_)
        (if (procedure? _%f355230%_)
            '#!void
            (error '"expected procedure" _%f355230%_))
        (let _%lp355233%_ ((_%rest355235%_ _%stx355231%_))
          (let* ((_%g355236355246%_ (gx#syntax-e _%rest355235%_))
                 (_%else355239355254%_
                  (lambda () (_%f355230%_ _%rest355235%_))))
            (let ((_%K355242355271%_
                   (lambda (_%rest355265%_ _%hd355266%_)
                     (let ((_%$e355268%_ (_%f355230%_ _%hd355266%_)))
                       (if _%$e355268%_
                           _%$e355268%_
                           (_%lp355233%_ _%rest355265%_)))))
                  (_%K355241355259%_ (lambda () '#f)))
              (let ((_%try-match355238355262%_
                     (lambda ()
                       (if (null? _%g355236355246%_)
                           (_%K355241355259%_)
                           (_%else355239355254%_)))))
                (if (pair? _%g355236355246%_)
                    (let ((_%tl355244355276%_ (##cdr _%g355236355246%_))
                          (_%hd355243355274%_ (##car _%g355236355246%_)))
                      (let ((_%hd355279%_ _%hd355243355274%_)
                            (_%rest355281%_ _%tl355244355276%_))
                        (_%K355242355271%_ _%rest355281%_ _%hd355279%_)))
                    (_%try-match355238355262%_))))))))
    (define gx#stx-foldl
      (lambda (_%f355178%_ _%iv355179%_ _%stx355180%_)
        (if (procedure? _%f355178%_)
            '#!void
            (error '"expected procedure" _%f355178%_))
        (let _%lp355182%_ ((_%r355184%_ _%iv355179%_)
                           (_%rest355185%_ _%stx355180%_))
          (let* ((_%g355186355196%_ (gx#syntax-e _%rest355185%_))
                 (_%else355189355204%_
                  (lambda () (_%f355178%_ _%rest355185%_ _%r355184%_))))
            (let ((_%K355192355218%_
                   (lambda (_%rest355215%_ _%hd355216%_)
                     (_%lp355182%_
                      (_%f355178%_ _%hd355216%_ _%r355184%_)
                      _%rest355215%_)))
                  (_%K355191355209%_ (lambda () _%r355184%_)))
              (let ((_%try-match355188355212%_
                     (lambda ()
                       (if (null? _%g355186355196%_)
                           (_%K355191355209%_)
                           (_%else355189355204%_)))))
                (if (pair? _%g355186355196%_)
                    (let ((_%tl355194355223%_ (##cdr _%g355186355196%_))
                          (_%hd355193355221%_ (##car _%g355186355196%_)))
                      (let ((_%hd355226%_ _%hd355193355221%_)
                            (_%rest355228%_ _%tl355194355223%_))
                        (_%K355192355218%_ _%rest355228%_ _%hd355226%_)))
                    (_%try-match355188355212%_))))))))
    (define gx#stx-foldr
      (lambda (_%f355127%_ _%iv355128%_ _%stx355129%_)
        (if (procedure? _%f355127%_)
            '#!void
            (error '"expected procedure" _%f355127%_))
        (let _%recur355131%_ ((_%rest355133%_ _%stx355129%_))
          (let* ((_%g355134355144%_ (gx#syntax-e _%rest355133%_))
                 (_%else355137355152%_
                  (lambda () (_%f355127%_ _%rest355133%_ _%iv355128%_))))
            (let ((_%K355140355166%_
                   (lambda (_%rest355163%_ _%hd355164%_)
                     (_%f355127%_
                      _%hd355164%_
                      (_%recur355131%_ _%rest355163%_))))
                  (_%K355139355157%_ (lambda () _%iv355128%_)))
              (let ((_%try-match355136355160%_
                     (lambda ()
                       (if (null? _%g355134355144%_)
                           (_%K355139355157%_)
                           (_%else355137355152%_)))))
                (if (pair? _%g355134355144%_)
                    (let ((_%tl355142355171%_ (##cdr _%g355134355144%_))
                          (_%hd355141355169%_ (##car _%g355134355144%_)))
                      (let ((_%hd355174%_ _%hd355141355169%_)
                            (_%rest355176%_ _%tl355142355171%_))
                        (_%K355140355166%_ _%rest355176%_ _%hd355174%_)))
                    (_%try-match355136355160%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx355125%_) (gx#stx-foldl cons '() _%stx355125%_)))
    (define gx#stx-last
      (lambda (_%stx355086%_)
        (let _%lp355088%_ ((_%rest355090%_ _%stx355086%_))
          (let* ((_%g355091355099%_ (gx#syntax-e _%rest355090%_))
                 (_%else355093355107%_ (lambda () _%rest355090%_))
                 (_%K355095355113%_
                  (lambda (_%rest355110%_ _%hd355111%_)
                    (if (gx#stx-null? _%rest355110%_)
                        _%hd355111%_
                        (_%lp355088%_ _%rest355110%_)))))
            (if (pair? _%g355091355099%_)
                (let ((_%hd355096355116%_ (##car _%g355091355099%_))
                      (_%tl355097355118%_ (##cdr _%g355091355099%_)))
                  (let* ((_%hd355121%_ _%hd355096355116%_)
                         (_%rest355123%_ _%tl355097355118%_))
                    (_%K355095355113%_ _%rest355123%_ _%hd355121%_)))
                (_%else355093355107%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx355057%_)
        (let _%lp355059%_ ((_%hd355061%_ _%stx355057%_))
          (let* ((_%g355062355069%_ (gx#syntax-e _%hd355061%_))
                 (_%E355064355073%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g355062355069%_
                           '([_ . rest]))
                    '#!void))
                 (_%K355065355078%_
                  (lambda (_%rest355076%_)
                    (if (gx#stx-pair? _%rest355076%_)
                        (_%lp355059%_ _%rest355076%_)
                        _%hd355061%_))))
            (if (pair? _%g355062355069%_)
                (let* ((_%tl355067355081%_ (##cdr _%g355062355069%_))
                       (_%rest355084%_ _%tl355067355081%_))
                  (_%K355065355078%_ _%rest355084%_))
                (_%E355064355073%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx355026%_ _%k355027%_)
        (let _%lp355029%_ ((_%rest355031%_ _%stx355026%_)
                           (_%k355032%_ _%k355027%_))
          (if (fxpositive? _%k355032%_)
              (let* ((_%g355033355040%_ (gx#syntax-e _%rest355031%_))
                     (_%E355035355044%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g355033355040%_
                               '([_ . rest]))
                        '#!void))
                     (_%K355036355049%_
                      (lambda (_%rest355047%_)
                        (_%lp355029%_ _%rest355047%_ (##fx- _%k355032%_ '1)))))
                (if (pair? _%g355033355040%_)
                    (let* ((_%tl355038355052%_ (##cdr _%g355033355040%_))
                           (_%rest355055%_ _%tl355038355052%_))
                      (_%K355036355049%_ _%rest355055%_))
                    (_%E355035355044%_)))
              _%rest355031%_))))
    (define gx#stx-list-ref
      (lambda (_%stx355023%_ _%k355024%_)
        (gx#stx-car (gx#stx-list-tail _%stx355023%_ _%k355024%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx354935%_ _%key?354936%_)
        (if (procedure? _%key?354936%_)
            '#!void
            (error '"expected procedure" _%key?354936%_))
        (let _%lp354938%_ ((_%rest354940%_ _%stx354935%_))
          (let* ((_%g354941354951%_ (gx#stx-e _%rest354940%_))
                 (_%else354944354959%_ (lambda () '#f)))
            (let ((_%K354947355001%_
                   (lambda (_%rest354970%_ _%hd354971%_)
                     (if (_%key?354936%_ _%hd354971%_)
                         (let* ((_%g354972354980%_ (gx#stx-e _%rest354970%_))
                                (_%else354974354988%_ (lambda () '#f))
                                (_%K354976354993%_
                                 (lambda (_%rest354991%_)
                                   (_%lp354938%_ _%rest354991%_))))
                           (if (pair? _%g354972354980%_)
                               (let* ((_%tl354978354996%_
                                       (##cdr _%g354972354980%_))
                                      (_%rest354999%_ _%tl354978354996%_))
                                 (_%lp354938%_ _%rest354999%_))
                               (_%else354974354988%_)))
                         '#f)))
                  (_%K354946354964%_ (lambda () '#t)))
              (let ((_%try-match354943354967%_
                     (lambda ()
                       (if (null? _%g354941354951%_)
                           (_%K354946354964%_)
                           (_%else354944354959%_)))))
                (if (pair? _%g354941354951%_)
                    (let ((_%tl354949355006%_ (##cdr _%g354941354951%_))
                          (_%hd354948355004%_ (##car _%g354941354951%_)))
                      (let ((_%hd355009%_ _%hd354948355004%_)
                            (_%rest355011%_ _%tl354949355006%_))
                        (_%K354947355001%_ _%rest355011%_ _%hd355009%_)))
                    (_%try-match354943354967%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx355016%_)
        (let ((_%key?355018%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx355016%_ _%key?355018%_))))
    (define gx#stx-plist?
      (lambda _g356170_
        (let ((_g356171_ (##length _g356170_)))
          (cond ((##fx= _g356171_ 1) (apply gx#stx-plist?__0 _g356170_))
                ((##fx= _g356171_ 2) (apply gx#stx-plist?__% _g356170_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g356170_))))))
    (define gx#stx-getq__%
      (lambda (_%key354853%_ _%stx354854%_ _%key=?354855%_)
        (if (procedure? _%key=?354855%_)
            '#!void
            (error '"expected procedure" _%key=?354855%_))
        (let _%lp354857%_ ((_%rest354859%_ _%stx354854%_))
          (let* ((_%g354860354868%_ (gx#syntax-e _%rest354859%_))
                 (_%else354862354876%_ (lambda () '#f))
                 (_%K354864354910%_
                  (lambda (_%rest354879%_ _%hd354880%_)
                    (let* ((_%g354881354888%_ (gx#syntax-e _%rest354879%_))
                           (_%E354883354892%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g354881354888%_
                                     '([val . rest]))
                              '#!void))
                           (_%K354884354898%_
                            (lambda (_%rest354895%_ _%val354896%_)
                              (if (_%key=?354855%_ _%hd354880%_ _%key354853%_)
                                  _%val354896%_
                                  (_%lp354857%_ _%rest354895%_)))))
                      (if (pair? _%g354881354888%_)
                          (let ((_%hd354885354901%_ (##car _%g354881354888%_))
                                (_%tl354886354903%_ (##cdr _%g354881354888%_)))
                            (let* ((_%val354906%_ _%hd354885354901%_)
                                   (_%rest354908%_ _%tl354886354903%_))
                              (_%K354884354898%_
                               _%rest354908%_
                               _%val354906%_)))
                          (_%E354883354892%_))))))
            (if (pair? _%g354860354868%_)
                (let ((_%hd354865354913%_ (##car _%g354860354868%_))
                      (_%tl354866354915%_ (##cdr _%g354860354868%_)))
                  (let* ((_%hd354918%_ _%hd354865354913%_)
                         (_%rest354920%_ _%tl354866354915%_))
                    (_%K354864354910%_ _%rest354920%_ _%hd354918%_)))
                (_%else354862354876%_))))))
    (define gx#stx-getq__0
      (lambda (_%key354925%_ _%stx354926%_)
        (let ((_%key=?354928%_ gx#stx-eq?))
          (gx#stx-getq__% _%key354925%_ _%stx354926%_ _%key=?354928%_))))
    (define gx#stx-getq
      (lambda _g356172_
        (let ((_g356173_ (##length _g356172_)))
          (cond ((##fx= _g356173_ 2) (apply gx#stx-getq__0 _g356172_))
                ((##fx= _g356173_ 3) (apply gx#stx-getq__% _g356172_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g356172_))))))))

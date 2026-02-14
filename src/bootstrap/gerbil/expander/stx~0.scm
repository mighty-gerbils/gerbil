(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1771101400)
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
      (lambda _%$args173685%_
        (apply make-instance gx#identifier-wrap::t _%$args173685%_)))
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
      (lambda _%$args173682%_
        (apply make-instance gx#syntax-wrap::t _%$args173682%_)))
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
      (lambda _%$args173679%_
        (apply make-instance gx#syntax-quote::t _%$args173679%_)))
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
      (lambda (_%stx173677%_) (symbol? (gx#stx-e _%stx173677%_))))
    (define gx#identifier-quote?
      (lambda (_%stx173675%_)
        (if (##structure-direct-instance-of? _%stx173675%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx173675%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx173670%_)
        (if (##structure-direct-instance-of? _%stx173670%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx173670%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx173670%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx173665%_)
        (if (##structure-direct-instance-of? _%stx173665%_ 'gx#syntax-quote::t)
            _%stx173665%_
            (if (##structure-direct-instance-of?
                 _%stx173665%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx173665%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx173639%_)
        (if (##structure-direct-instance-of? _%stx173639%_ 'gx#syntax-wrap::t)
            (let _%lp173642%_ ((_%e173644%_
                                (##unchecked-structure-ref
                                 _%stx173639%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks173645%_
                                (cons (##unchecked-structure-ref
                                       _%stx173639%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e173644%_)
                  (let ((_%$e173648%_
                         (##type-id (##structure-type _%e173644%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e173648%_)
                        (_%lp173642%_
                         (##unchecked-structure-ref _%e173644%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e173644%_ '3 '#f '#f)
                          _%marks173645%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e173648%_)
                                (eq? 'gx#identifier-wrap::t _%$e173648%_))
                            (##unchecked-structure-ref _%e173644%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e173648%_)
                                (_%lp173642%_
                                 (##unchecked-structure-ref
                                  _%e173644%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks173645%_)
                                _%e173644%_))))
                  (if (null? _%marks173645%_)
                      _%e173644%_
                      (if (pair? _%e173644%_)
                          (cons (gx#stx-wrap
                                 (##car _%e173644%_)
                                 _%marks173645%_)
                                (gx#stx-wrap
                                 (##cdr _%e173644%_)
                                 _%marks173645%_))
                          (if (vector? _%e173644%_)
                              (vector-map
                               (lambda (_%g173656173658%_)
                                 (gx#stx-wrap
                                  _%g173656173658%_
                                  _%marks173645%_))
                               _%e173644%_)
                              (if (box? _%e173644%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e173644%_)
                                        _%marks173645%_))
                                  _%e173644%_))))))
            (if (##structure-instance-of? _%stx173639%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx173639%_ '1 '#f '#f)
                _%stx173639%_))))
    (define gx#syntax->datum
      (lambda (_%stx173632%_)
        (if (##structure-instance-of? _%stx173632%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx173632%_ '1 '#f '#f))
            (if (pair? _%stx173632%_)
                (cons (gx#syntax->datum (##car _%stx173632%_))
                      (gx#syntax->datum (##cdr _%stx173632%_)))
                (if (vector? _%stx173632%_)
                    (vector-map gx#syntax->datum _%stx173632%_)
                    (if (box? _%stx173632%_)
                        (box (gx#syntax->datum (unbox _%stx173632%_)))
                        _%stx173632%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx173566%_ _%datum173567%_ _%src173568%_ _%quote?173569%_)
        (letrec ((_%wrap-datum173571%_
                  (lambda (_%e173604%_ _%marks173605%_)
                    (_%wrap-inner173573%_
                     _%e173604%_
                     (lambda (_%g173606173608%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g173606173608%_
                        _%src173568%_
                        _%marks173605%_)))))
                 (_%wrap-quote173572%_
                  (lambda (_%e173596%_ _%ctx173597%_ _%marks173598%_)
                    (_%wrap-inner173573%_
                     _%e173596%_
                     (lambda (_%g173599173601%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g173599173601%_
                        _%src173568%_
                        _%ctx173597%_
                        _%marks173598%_)))))
                 (_%wrap-inner173573%_
                  (lambda (_%e173584%_ _%wrap-e173585%_)
                    (let _%recur173587%_ ((_%e173589%_ _%e173584%_))
                      (if (symbol? _%e173589%_)
                          (_%wrap-e173585%_ _%e173589%_)
                          (if (pair? _%e173589%_)
                              (cons (_%recur173587%_ (##car _%e173589%_))
                                    (_%recur173587%_ (##cdr _%e173589%_)))
                              (if (vector? _%e173589%_)
                                  (vector-map _%recur173587%_ _%e173589%_)
                                  (if (box? _%e173589%_)
                                      (box (_%recur173587%_
                                            (unbox _%e173589%_)))
                                      _%e173589%_)))))))
                 (_%wrap-outer173574%_
                  (lambda (_%e173582%_)
                    (if (##structure-instance-of? _%e173582%_ 'gerbil#AST::t)
                        _%e173582%_
                        (##structure gx#AST::t _%e173582%_ _%src173568%_)))))
          (if (##structure-instance-of? _%datum173567%_ 'gerbil#AST::t)
              _%datum173567%_
              (if (not _%stx173566%_)
                  (##structure gx#AST::t _%datum173567%_ _%src173568%_)
                  (if (gx#identifier? _%stx173566%_)
                      (let ((_%stx173579%_ (gx#stx-unwrap__0 _%stx173566%_)))
                        (_%wrap-outer173574%_
                         (if (##structure-direct-instance-of?
                              _%stx173579%_
                              'gx#syntax-quote::t)
                             (if _%quote?173569%_
                                 (_%wrap-quote173572%_
                                  _%datum173567%_
                                  (##unchecked-structure-ref
                                   _%stx173579%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx173579%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum173571%_
                                  _%datum173567%_
                                  (##unchecked-structure-ref
                                   _%stx173579%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum173571%_
                              _%datum173567%_
                              (##unchecked-structure-ref
                               _%stx173579%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx173566%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx173614%_ _%datum173615%_)
        (let* ((_%src173617%_ '#f) (_%quote?173619%_ '#t))
          (gx#datum->syntax__%
           _%stx173614%_
           _%datum173615%_
           _%src173617%_
           _%quote?173619%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx173621%_ _%datum173622%_ _%src173623%_)
        (let ((_%quote?173625%_ '#t))
          (gx#datum->syntax__%
           _%stx173621%_
           _%datum173622%_
           _%src173623%_
           _%quote?173625%_))))
    (define gx#datum->syntax
      (lambda _g173765_
        (let ((_g173766_ (##length _g173765_)))
          (cond ((##fx= _g173766_ 2) (apply gx#datum->syntax__0 _g173765_))
                ((##fx= _g173766_ 3) (apply gx#datum->syntax__1 _g173765_))
                ((##fx= _g173766_ 4) (apply gx#datum->syntax__% _g173765_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g173765_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx173532%_ _%marks173533%_)
        (let _%lp173535%_ ((_%e173537%_ _%stx173532%_)
                           (_%marks173538%_ _%marks173533%_)
                           (_%src173539%_ (gx#stx-source _%stx173532%_)))
          (if (##structure-direct-instance-of? _%e173537%_ 'gx#syntax-wrap::t)
              (_%lp173535%_
               (##unchecked-structure-ref _%e173537%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e173537%_ '3 '#f '#f)
                _%marks173538%_)
               (##unchecked-structure-ref _%e173537%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e173537%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks173538%_)
                      _%e173537%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e173537%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e173537%_ '2 '#f '#f)
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e173537%_ '3 '#f '#f)
                        _%marks173538%_)))
                  (if (##structure-direct-instance-of?
                       _%e173537%_
                       'gx#syntax-quote::t)
                      _%e173537%_
                      (if (##structure-instance-of? _%e173537%_ 'gerbil#AST::t)
                          (_%lp173535%_
                           (##unchecked-structure-ref _%e173537%_ '1 '#f '#f)
                           _%marks173538%_
                           (##unchecked-structure-ref _%e173537%_ '2 '#f '#f))
                          (if (symbol? _%e173537%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e173537%_
                               _%src173539%_
                               (reverse _%marks173538%_))
                              (if (null? _%marks173538%_)
                                  _%e173537%_
                                  (if (pair? _%e173537%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e173537%_)
                                             _%marks173538%_)
                                            (gx#stx-wrap
                                             (##cdr _%e173537%_)
                                             _%marks173538%_))
                                      (if (vector? _%e173537%_)
                                          (vector-map
                                           (lambda (_%g173548173550%_)
                                             (gx#stx-wrap
                                              _%g173548173550%_
                                              _%marks173538%_))
                                           _%e173537%_)
                                          (if (box? _%e173537%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e173537%_)
                                                    _%marks173538%_))
                                              _%e173537%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx173558%_)
        (let ((_%marks173560%_ '()))
          (gx#stx-unwrap__% _%stx173558%_ _%marks173560%_))))
    (define gx#stx-unwrap
      (lambda _g173767_
        (let ((_g173768_ (##length _g173767_)))
          (cond ((##fx= _g173768_ 1) (apply gx#stx-unwrap__0 _g173767_))
                ((##fx= _g173768_ 2) (apply gx#stx-unwrap__% _g173767_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g173767_))))))
    (define gx#stx-wrap
      (lambda (_%stx173525%_ _%marks173526%_)
        (foldl__0
         (lambda (_%mark173528%_ _%stx173529%_)
           (gx#stx-apply-mark _%stx173529%_ _%mark173528%_))
         _%stx173525%_
         _%marks173526%_)))
    (define gx#stx-rewrap
      (lambda (_%stx173519%_ _%marks173520%_)
        (foldr__0
         (lambda (_%mark173522%_ _%stx173523%_)
           (gx#stx-apply-mark _%stx173523%_ _%mark173522%_))
         _%stx173519%_
         _%marks173520%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx173513%_ _%mark173514%_)
        (if (##structure-direct-instance-of? _%stx173513%_ 'gx#syntax-quote::t)
            _%stx173513%_
            (if (and (##structure-direct-instance-of?
                      _%stx173513%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark173514%_
                          (##unchecked-structure-ref
                           _%stx173513%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx173513%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx173513%_
                 (gx#stx-source _%stx173513%_)
                 _%mark173514%_)))))
    (define gx#apply-mark
      (lambda (_%mark173477%_ _%marks173478%_)
        (let* ((_%marks173479173487%_ _%marks173478%_)
               (_%else173481173495%_
                (lambda () (cons _%mark173477%_ _%marks173478%_)))
               (_%K173483173501%_
                (lambda (_%rest173498%_ _%hd173499%_)
                  (if (eq? _%mark173477%_ _%hd173499%_)
                      _%rest173498%_
                      (cons _%mark173477%_ _%marks173478%_)))))
          (if (pair? _%marks173479173487%_)
              (let ((_%hd173484173504%_ (##car _%marks173479173487%_))
                    (_%tl173485173506%_ (##cdr _%marks173479173487%_)))
                (let* ((_%hd173509%_ _%hd173484173504%_)
                       (_%rest173511%_ _%tl173485173506%_))
                  (_%K173483173501%_ _%rest173511%_ _%hd173509%_)))
              (_%else173481173495%_)))))
    (define gx#stx-e
      (lambda (_%stx173472%_)
        (if (##structure-direct-instance-of? _%stx173472%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx173472%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx173472%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx173472%_ '1 '#f '#f)
                _%stx173472%_))))
    (define gx#stx-source
      (lambda (_%stx173470%_)
        (if (##structure-instance-of? _%stx173470%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx173470%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx173464%_ _%src173465%_)
        (if (or (##structure-instance-of? _%stx173464%_ 'gerbil#AST::t)
                (not _%src173465%_))
            _%stx173464%_
            (##structure gx#AST::t _%stx173464%_ _%src173465%_))))
    (define gx#stx-datum?
      (lambda (_%stx173462%_) (gx#self-quoting? (gx#stx-e _%stx173462%_))))
    (define gx#self-quoting?
      (lambda (_%x173445%_)
        (let ((_%$e173447%_ (immediate? _%x173445%_)))
          (if _%$e173447%_
              _%$e173447%_
              (let ((_%$e173450%_ (number? _%x173445%_)))
                (if _%$e173450%_
                    _%$e173450%_
                    (let ((_%$e173453%_ (keyword? _%x173445%_)))
                      (if _%$e173453%_
                          _%$e173453%_
                          (let ((_%$e173456%_ (string? _%x173445%_)))
                            (if _%$e173456%_
                                _%$e173456%_
                                (let ((_%$e173459%_ (vector? _%x173445%_)))
                                  (if _%$e173459%_
                                      _%$e173459%_
                                      (u8vector? _%x173445%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e173443%_) (boolean? (gx#stx-e _%e173443%_))))
    (define gx#stx-keyword?
      (lambda (_%e173441%_) (keyword? (gx#stx-e _%e173441%_))))
    (define gx#stx-char? (lambda (_%e173439%_) (char? (gx#stx-e _%e173439%_))))
    (define gx#stx-number?
      (lambda (_%e173437%_) (number? (gx#stx-e _%e173437%_))))
    (define gx#stx-fixnum?
      (lambda (_%e173435%_) (fixnum? (gx#stx-e _%e173435%_))))
    (define gx#stx-string?
      (lambda (_%e173433%_) (string? (gx#stx-e _%e173433%_))))
    (define gx#stx-null? (lambda (_%e173431%_) (null? (gx#stx-e _%e173431%_))))
    (define gx#stx-pair? (lambda (_%e173429%_) (pair? (gx#stx-e _%e173429%_))))
    (define gx#stx-list?
      (lambda (_%e173391%_)
        (let* ((_%g173392173401%_ (gx#stx-e _%e173391%_))
               (_%E173395173405%_
                (lambda ()
                  (error '"No clause matching"
                         _%g173392173401%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K173397173421%_
                 (lambda (_%rest173419%_) (gx#stx-list? _%rest173419%_)))
                (_%K173396173411%_
                 (lambda (_%tail173409%_) (null? _%tail173409%_))))
            (if (pair? _%g173392173401%_)
                (let* ((_%tl173399173424%_ (##cdr _%g173392173401%_))
                       (_%rest173427%_ _%tl173399173424%_))
                  (gx#stx-list? _%rest173427%_))
                (let ((_%tail173414%_ _%g173392173401%_))
                  (null? _%tail173414%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e173384%_)
        (let* ((_%e173386%_ (gx#stx-e _%e173384%_))
               (_%$e173388%_ (pair? _%e173386%_)))
          (if _%$e173388%_ _%$e173388%_ (null? _%e173386%_)))))
    (define gx#stx-vector?
      (lambda (_%e173382%_) (vector? (gx#stx-e _%e173382%_))))
    (define gx#stx-box? (lambda (_%e173380%_) (box? (gx#stx-e _%e173380%_))))
    (define gx#stx-eq?
      (lambda (_%x173377%_ _%y173378%_)
        (eq? (gx#stx-e _%x173377%_) (gx#stx-e _%y173378%_))))
    (define gx#stx-eqv?
      (lambda (_%x173374%_ _%y173375%_)
        (eqv? (gx#stx-e _%x173374%_) (gx#stx-e _%y173375%_))))
    (define gx#stx-equal?
      (lambda (_%x173371%_ _%y173372%_)
        (equal? (gx#stx-e _%x173371%_) (gx#stx-e _%y173372%_))))
    (define gx#stx-false? (lambda (_%x173369%_) (not (gx#stx-e _%x173369%_))))
    (define gx#stx-identifier
      (lambda (_%template173366%_ . _%args173367%_)
        (gx#datum->syntax__1
         _%template173366%_
         (apply make-symbol (gx#syntax->datum _%args173367%_))
         (gx#stx-source _%template173366%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx173364%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx173364%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx173359%_)
        (if (##structure-direct-instance-of?
             _%stx173359%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx173359%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx173359%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx173359%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx173359%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx173355%_)
        (let ((_%stx173357%_ (gx#stx-unwrap__0 _%stx173355%_)))
          (if (gx#identifier-quote? _%stx173357%_)
              (##unchecked-structure-ref _%stx173357%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx173310%_)
        (let* ((_%g173311173321%_ (gx#stx-e _%stx173310%_))
               (_%else173314173329%_ (lambda () '#f)))
          (let ((_%K173317173343%_
                 (lambda (_%rest173340%_ _%hd173341%_)
                   (if (gx#identifier? _%hd173341%_)
                       (gx#identifier-list? _%rest173340%_)
                       '#f)))
                (_%K173316173334%_ (lambda () '#t)))
            (let ((_%try-match173313173337%_
                   (lambda ()
                     (if (null? _%g173311173321%_)
                         (_%K173316173334%_)
                         (_%else173314173329%_)))))
              (if (pair? _%g173311173321%_)
                  (let ((_%tl173319173348%_ (##cdr _%g173311173321%_))
                        (_%hd173318173346%_ (##car _%g173311173321%_)))
                    (let ((_%hd173351%_ _%hd173318173346%_)
                          (_%rest173353%_ _%tl173319173348%_))
                      (_%K173317173343%_ _%rest173353%_ _%hd173351%_)))
                  (_%try-match173313173337%_)))))))
    (define gx#genident__%
      (lambda (_%e173290%_ _%src173291%_)
        (gx#datum->syntax__1
         (if (gx#identifier? _%src173291%_) _%src173291%_ '#f)
         (##string->symbol
          (##symbol->string
           (##gensym
            (let ((_%e173293%_ (gx#stx-e _%e173290%_)))
              (if (symbol? _%e173293%_) _%e173293%_ 'g)))))
         _%src173291%_)))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e173299%_ 'g) (_%src173301%_ '#f))
          (gx#genident__% _%e173299%_ _%src173301%_))))
    (define gx#genident__1
      (lambda (_%e173303%_)
        (let ((_%src173305%_ '#f))
          (gx#genident__% _%e173303%_ _%src173305%_))))
    (define gx#genident
      (lambda _g173769_
        (let ((_g173770_ (##length _g173769_)))
          (cond ((##fx= _g173770_ 0) (apply gx#genident__0 _g173769_))
                ((##fx= _g173770_ 1) (apply gx#genident__1 _g173769_))
                ((##fx= _g173770_ 2) (apply gx#genident__% _g173769_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g173769_))))))
    (define gx#gentemps
      (lambda (_%stx-lst173285%_)
        (gx#stx-map1
         (lambda (_%x173287%_) (gx#genident__% _%x173287%_ _%x173287%_))
         _%stx-lst173285%_)))
    (define gx#syntax->list
      (lambda (_%stx173283%_) (gx#stx-map1 values _%stx173283%_)))
    (define gx#stx-car
      (lambda (_%stx173280%_)
        (declare (safe))
        (car (gx#syntax-e _%stx173280%_))))
    (define gx#stx-cdr
      (lambda (_%stx173277%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx173277%_))))
    (define gx#stx-length
      (lambda (_%stx173242%_)
        (let _%lp173244%_ ((_%rest173246%_ _%stx173242%_) (_%n173247%_ '0))
          (let* ((_%g173248173256%_ (gx#stx-e _%rest173246%_))
                 (_%else173250173264%_ (lambda () _%n173247%_))
                 (_%K173252173269%_
                  (lambda (_%rest173267%_)
                    (_%lp173244%_ _%rest173267%_ (##fx+ _%n173247%_ '1)))))
            (if (pair? _%g173248173256%_)
                (let* ((_%tl173254173272%_ (##cdr _%g173248173256%_))
                       (_%rest173275%_ _%tl173254173272%_))
                  (_%K173252173269%_ _%rest173275%_))
                (_%else173250173264%_))))))
    (define gx#stx-for-each
      (lambda _g173771_
        (let ((_g173772_ (##length _g173771_)))
          (cond ((##fx= _g173772_ 2) (apply gx#stx-for-each1 _g173771_))
                ((##fx= _g173772_ 3) (apply gx#stx-for-each2 _g173771_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g173771_))))))
    (define gx#stx-for-each1
      (lambda (_%f173185%_ _%stx173186%_)
        (if (procedure? _%f173185%_)
            '#!void
            (error '"expected procedure" _%f173185%_))
        (let _%lp173188%_ ((_%rest173190%_ _%stx173186%_))
          (let* ((_%g173191173201%_ (gx#syntax-e _%rest173190%_))
                 (_%else173194173209%_
                  (lambda () (_%f173185%_ _%rest173190%_))))
            (let ((_%K173197173223%_
                   (lambda (_%rest173220%_ _%hd173221%_)
                     (_%f173185%_ _%hd173221%_)
                     (_%lp173188%_ _%rest173220%_)))
                  (_%K173196173214%_ (lambda () '#!void)))
              (let ((_%try-match173193173217%_
                     (lambda ()
                       (if (null? _%g173191173201%_)
                           (_%K173196173214%_)
                           (_%else173194173209%_)))))
                (if (pair? _%g173191173201%_)
                    (let ((_%tl173199173228%_ (##cdr _%g173191173201%_))
                          (_%hd173198173226%_ (##car _%g173191173201%_)))
                      (let ((_%hd173231%_ _%hd173198173226%_)
                            (_%rest173233%_ _%tl173199173228%_))
                        (_%K173197173223%_ _%rest173233%_ _%hd173231%_)))
                    (_%try-match173193173217%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f173090%_ _%xstx173091%_ _%ystx173092%_)
        (if (procedure? _%f173090%_)
            '#!void
            (error '"expected procedure" _%f173090%_))
        (let _%lp173094%_ ((_%xrest173096%_ _%xstx173091%_)
                           (_%yrest173097%_ _%ystx173092%_))
          (let* ((_%g173098173108%_ (gx#syntax-e _%xrest173096%_))
                 (_%else173101173116%_ (lambda () '#!void)))
            (let ((_%K173104173173%_
                   (lambda (_%xrest173142%_ _%xhd173143%_)
                     (let* ((_%g173144173151%_ (gx#syntax-e _%yrest173097%_))
                            (_%E173146173155%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g173144173151%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K173147173161%_
                             (lambda (_%yrest173158%_ _%yhd173159%_)
                               (_%f173090%_ _%xhd173143%_ _%yhd173159%_)
                               (_%lp173094%_
                                _%xrest173142%_
                                _%yrest173158%_))))
                       (if (pair? _%g173144173151%_)
                           (let ((_%hd173148173164%_ (##car _%g173144173151%_))
                                 (_%tl173149173166%_
                                  (##cdr _%g173144173151%_)))
                             (let* ((_%yhd173169%_ _%hd173148173164%_)
                                    (_%yrest173171%_ _%tl173149173166%_))
                               (_%K173147173161%_
                                _%yrest173171%_
                                _%yhd173169%_)))
                           (_%E173146173155%_)))))
                  (_%K173103173136%_
                   (lambda ()
                     (let* ((_%yrest173120173125%_ _%yrest173097%_)
                            (_%E173122173129%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest173120173125%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K173123173133%_
                             (lambda ()
                               (_%f173090%_ _%xrest173096%_ _%yrest173097%_))))
                       (if (gx#stx-null? _%yrest173120173125%_)
                           (_%E173122173129%_)
                           (_%K173123173133%_))))))
              (let ((_%try-match173100173139%_
                     (lambda ()
                       (if (null? _%g173098173108%_)
                           (_%else173101173116%_)
                           (_%K173103173136%_)))))
                (if (pair? _%g173098173108%_)
                    (let ((_%tl173106173178%_ (##cdr _%g173098173108%_))
                          (_%hd173105173176%_ (##car _%g173098173108%_)))
                      (let ((_%xhd173181%_ _%hd173105173176%_)
                            (_%xrest173183%_ _%tl173106173178%_))
                        (_%K173104173173%_ _%xrest173183%_ _%xhd173181%_)))
                    (_%try-match173100173139%_))))))))
    (define gx#stx-map
      (lambda _g173773_
        (let ((_g173774_ (##length _g173773_)))
          (cond ((##fx= _g173774_ 2) (apply gx#stx-map1 _g173773_))
                ((##fx= _g173774_ 3) (apply gx#stx-map2 _g173773_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g173773_))))))
    (define gx#stx-map1
      (lambda (_%f173033%_ _%stx173034%_)
        (if (procedure? _%f173033%_)
            '#!void
            (error '"expected procedure" _%f173033%_))
        (let _%recur173036%_ ((_%rest173038%_ _%stx173034%_))
          (let* ((_%g173039173049%_ (gx#syntax-e _%rest173038%_))
                 (_%else173042173057%_
                  (lambda () (_%f173033%_ _%rest173038%_))))
            (let ((_%K173045173071%_
                   (lambda (_%rest173068%_ _%hd173069%_)
                     (cons (_%f173033%_ _%hd173069%_)
                           (_%recur173036%_ _%rest173068%_))))
                  (_%K173044173062%_ (lambda () '())))
              (let ((_%try-match173041173065%_
                     (lambda ()
                       (if (null? _%g173039173049%_)
                           (_%K173044173062%_)
                           (_%else173042173057%_)))))
                (if (pair? _%g173039173049%_)
                    (let ((_%tl173047173076%_ (##cdr _%g173039173049%_))
                          (_%hd173046173074%_ (##car _%g173039173049%_)))
                      (let ((_%hd173079%_ _%hd173046173074%_)
                            (_%rest173081%_ _%tl173047173076%_))
                        (_%K173045173071%_ _%rest173081%_ _%hd173079%_)))
                    (_%try-match173041173065%_))))))))
    (define gx#stx-map2
      (lambda (_%f172938%_ _%xstx172939%_ _%ystx172940%_)
        (if (procedure? _%f172938%_)
            '#!void
            (error '"expected procedure" _%f172938%_))
        (let _%recur172942%_ ((_%xrest172944%_ _%xstx172939%_)
                              (_%yrest172945%_ _%ystx172940%_))
          (let* ((_%g172946172956%_ (gx#syntax-e _%xrest172944%_))
                 (_%else172949172964%_ (lambda () '())))
            (let ((_%K172952173021%_
                   (lambda (_%xrest172990%_ _%xhd172991%_)
                     (let* ((_%g172992172999%_ (gx#syntax-e _%yrest172945%_))
                            (_%E172994173003%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g172992172999%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K172995173009%_
                             (lambda (_%yrest173006%_ _%yhd173007%_)
                               (cons (_%f172938%_ _%xhd172991%_ _%yhd173007%_)
                                     (_%recur172942%_
                                      _%xrest172990%_
                                      _%yrest173006%_)))))
                       (if (pair? _%g172992172999%_)
                           (let ((_%hd172996173012%_ (##car _%g172992172999%_))
                                 (_%tl172997173014%_
                                  (##cdr _%g172992172999%_)))
                             (let* ((_%yhd173017%_ _%hd172996173012%_)
                                    (_%yrest173019%_ _%tl172997173014%_))
                               (_%K172995173009%_
                                _%yrest173019%_
                                _%yhd173017%_)))
                           (_%E172994173003%_)))))
                  (_%K172951172984%_
                   (lambda ()
                     (let* ((_%yrest172968172973%_ _%yrest172945%_)
                            (_%E172970172977%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest172968172973%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K172971172981%_
                             (lambda ()
                               (_%f172938%_ _%xrest172944%_ _%yrest172945%_))))
                       (if (gx#stx-null? _%yrest172968172973%_)
                           (_%E172970172977%_)
                           (_%K172971172981%_))))))
              (let ((_%try-match172948172987%_
                     (lambda ()
                       (if (null? _%g172946172956%_)
                           (_%else172949172964%_)
                           (_%K172951172984%_)))))
                (if (pair? _%g172946172956%_)
                    (let ((_%tl172954173026%_ (##cdr _%g172946172956%_))
                          (_%hd172953173024%_ (##car _%g172946172956%_)))
                      (let ((_%xhd173029%_ _%hd172953173024%_)
                            (_%xrest173031%_ _%tl172954173026%_))
                        (_%K172952173021%_ _%xrest173031%_ _%xhd173029%_)))
                    (_%try-match172948172987%_))))))))
    (define gx#stx-andmap
      (lambda (_%f172888%_ _%stx172889%_)
        (if (procedure? _%f172888%_)
            '#!void
            (error '"expected procedure" _%f172888%_))
        (let _%lp172891%_ ((_%rest172893%_ _%stx172889%_))
          (let* ((_%g172894172904%_ (gx#syntax-e _%rest172893%_))
                 (_%else172897172912%_
                  (lambda () (_%f172888%_ _%rest172893%_))))
            (let ((_%K172900172926%_
                   (lambda (_%rest172923%_ _%hd172924%_)
                     (if (_%f172888%_ _%hd172924%_)
                         (_%lp172891%_ _%rest172923%_)
                         '#f)))
                  (_%K172899172917%_ (lambda () '#t)))
              (let ((_%try-match172896172920%_
                     (lambda ()
                       (if (null? _%g172894172904%_)
                           (_%K172899172917%_)
                           (_%else172897172912%_)))))
                (if (pair? _%g172894172904%_)
                    (let ((_%tl172902172931%_ (##cdr _%g172894172904%_))
                          (_%hd172901172929%_ (##car _%g172894172904%_)))
                      (let ((_%hd172934%_ _%hd172901172929%_)
                            (_%rest172936%_ _%tl172902172931%_))
                        (_%K172900172926%_ _%rest172936%_ _%hd172934%_)))
                    (_%try-match172896172920%_))))))))
    (define gx#stx-ormap
      (lambda (_%f172835%_ _%stx172836%_)
        (if (procedure? _%f172835%_)
            '#!void
            (error '"expected procedure" _%f172835%_))
        (let _%lp172838%_ ((_%rest172840%_ _%stx172836%_))
          (let* ((_%g172841172851%_ (gx#syntax-e _%rest172840%_))
                 (_%else172844172859%_
                  (lambda () (_%f172835%_ _%rest172840%_))))
            (let ((_%K172847172876%_
                   (lambda (_%rest172870%_ _%hd172871%_)
                     (let ((_%$e172873%_ (_%f172835%_ _%hd172871%_)))
                       (if _%$e172873%_
                           _%$e172873%_
                           (_%lp172838%_ _%rest172870%_)))))
                  (_%K172846172864%_ (lambda () '#f)))
              (let ((_%try-match172843172867%_
                     (lambda ()
                       (if (null? _%g172841172851%_)
                           (_%K172846172864%_)
                           (_%else172844172859%_)))))
                (if (pair? _%g172841172851%_)
                    (let ((_%tl172849172881%_ (##cdr _%g172841172851%_))
                          (_%hd172848172879%_ (##car _%g172841172851%_)))
                      (let ((_%hd172884%_ _%hd172848172879%_)
                            (_%rest172886%_ _%tl172849172881%_))
                        (_%K172847172876%_ _%rest172886%_ _%hd172884%_)))
                    (_%try-match172843172867%_))))))))
    (define gx#stx-foldl
      (lambda (_%f172783%_ _%iv172784%_ _%stx172785%_)
        (if (procedure? _%f172783%_)
            '#!void
            (error '"expected procedure" _%f172783%_))
        (let _%lp172787%_ ((_%r172789%_ _%iv172784%_)
                           (_%rest172790%_ _%stx172785%_))
          (let* ((_%g172791172801%_ (gx#syntax-e _%rest172790%_))
                 (_%else172794172809%_
                  (lambda () (_%f172783%_ _%rest172790%_ _%r172789%_))))
            (let ((_%K172797172823%_
                   (lambda (_%rest172820%_ _%hd172821%_)
                     (_%lp172787%_
                      (_%f172783%_ _%hd172821%_ _%r172789%_)
                      _%rest172820%_)))
                  (_%K172796172814%_ (lambda () _%r172789%_)))
              (let ((_%try-match172793172817%_
                     (lambda ()
                       (if (null? _%g172791172801%_)
                           (_%K172796172814%_)
                           (_%else172794172809%_)))))
                (if (pair? _%g172791172801%_)
                    (let ((_%tl172799172828%_ (##cdr _%g172791172801%_))
                          (_%hd172798172826%_ (##car _%g172791172801%_)))
                      (let ((_%hd172831%_ _%hd172798172826%_)
                            (_%rest172833%_ _%tl172799172828%_))
                        (_%K172797172823%_ _%rest172833%_ _%hd172831%_)))
                    (_%try-match172793172817%_))))))))
    (define gx#stx-foldr
      (lambda (_%f172732%_ _%iv172733%_ _%stx172734%_)
        (if (procedure? _%f172732%_)
            '#!void
            (error '"expected procedure" _%f172732%_))
        (let _%recur172736%_ ((_%rest172738%_ _%stx172734%_))
          (let* ((_%g172739172749%_ (gx#syntax-e _%rest172738%_))
                 (_%else172742172757%_
                  (lambda () (_%f172732%_ _%rest172738%_ _%iv172733%_))))
            (let ((_%K172745172771%_
                   (lambda (_%rest172768%_ _%hd172769%_)
                     (_%f172732%_
                      _%hd172769%_
                      (_%recur172736%_ _%rest172768%_))))
                  (_%K172744172762%_ (lambda () _%iv172733%_)))
              (let ((_%try-match172741172765%_
                     (lambda ()
                       (if (null? _%g172739172749%_)
                           (_%K172744172762%_)
                           (_%else172742172757%_)))))
                (if (pair? _%g172739172749%_)
                    (let ((_%tl172747172776%_ (##cdr _%g172739172749%_))
                          (_%hd172746172774%_ (##car _%g172739172749%_)))
                      (let ((_%hd172779%_ _%hd172746172774%_)
                            (_%rest172781%_ _%tl172747172776%_))
                        (_%K172745172771%_ _%rest172781%_ _%hd172779%_)))
                    (_%try-match172741172765%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx172730%_) (gx#stx-foldl cons '() _%stx172730%_)))
    (define gx#stx-last
      (lambda (_%stx172691%_)
        (let _%lp172693%_ ((_%rest172695%_ _%stx172691%_))
          (let* ((_%g172696172704%_ (gx#syntax-e _%rest172695%_))
                 (_%else172698172712%_ (lambda () _%rest172695%_))
                 (_%K172700172718%_
                  (lambda (_%rest172715%_ _%hd172716%_)
                    (if (gx#stx-null? _%rest172715%_)
                        _%hd172716%_
                        (_%lp172693%_ _%rest172715%_)))))
            (if (pair? _%g172696172704%_)
                (let ((_%hd172701172721%_ (##car _%g172696172704%_))
                      (_%tl172702172723%_ (##cdr _%g172696172704%_)))
                  (let* ((_%hd172726%_ _%hd172701172721%_)
                         (_%rest172728%_ _%tl172702172723%_))
                    (_%K172700172718%_ _%rest172728%_ _%hd172726%_)))
                (_%else172698172712%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx172662%_)
        (let _%lp172664%_ ((_%hd172666%_ _%stx172662%_))
          (let* ((_%g172667172674%_ (gx#syntax-e _%hd172666%_))
                 (_%E172669172678%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g172667172674%_
                           '([_ . rest]))
                    '#!void))
                 (_%K172670172683%_
                  (lambda (_%rest172681%_)
                    (if (gx#stx-pair? _%rest172681%_)
                        (_%lp172664%_ _%rest172681%_)
                        _%hd172666%_))))
            (if (pair? _%g172667172674%_)
                (let* ((_%tl172672172686%_ (##cdr _%g172667172674%_))
                       (_%rest172689%_ _%tl172672172686%_))
                  (_%K172670172683%_ _%rest172689%_))
                (_%E172669172678%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx172631%_ _%k172632%_)
        (let _%lp172634%_ ((_%rest172636%_ _%stx172631%_)
                           (_%k172637%_ _%k172632%_))
          (if (fxpositive? _%k172637%_)
              (let* ((_%g172638172645%_ (gx#syntax-e _%rest172636%_))
                     (_%E172640172649%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g172638172645%_
                               '([_ . rest]))
                        '#!void))
                     (_%K172641172654%_
                      (lambda (_%rest172652%_)
                        (_%lp172634%_ _%rest172652%_ (##fx- _%k172637%_ '1)))))
                (if (pair? _%g172638172645%_)
                    (let* ((_%tl172643172657%_ (##cdr _%g172638172645%_))
                           (_%rest172660%_ _%tl172643172657%_))
                      (_%K172641172654%_ _%rest172660%_))
                    (_%E172640172649%_)))
              _%rest172636%_))))
    (define gx#stx-list-ref
      (lambda (_%stx172628%_ _%k172629%_)
        (gx#stx-car (gx#stx-list-tail _%stx172628%_ _%k172629%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx172540%_ _%key?172541%_)
        (if (procedure? _%key?172541%_)
            '#!void
            (error '"expected procedure" _%key?172541%_))
        (let _%lp172543%_ ((_%rest172545%_ _%stx172540%_))
          (let* ((_%g172546172556%_ (gx#stx-e _%rest172545%_))
                 (_%else172549172564%_ (lambda () '#f)))
            (let ((_%K172552172606%_
                   (lambda (_%rest172575%_ _%hd172576%_)
                     (if (_%key?172541%_ _%hd172576%_)
                         (let* ((_%g172577172585%_ (gx#stx-e _%rest172575%_))
                                (_%else172579172593%_ (lambda () '#f))
                                (_%K172581172598%_
                                 (lambda (_%rest172596%_)
                                   (_%lp172543%_ _%rest172596%_))))
                           (if (pair? _%g172577172585%_)
                               (let* ((_%tl172583172601%_
                                       (##cdr _%g172577172585%_))
                                      (_%rest172604%_ _%tl172583172601%_))
                                 (_%lp172543%_ _%rest172604%_))
                               (_%else172579172593%_)))
                         '#f)))
                  (_%K172551172569%_ (lambda () '#t)))
              (let ((_%try-match172548172572%_
                     (lambda ()
                       (if (null? _%g172546172556%_)
                           (_%K172551172569%_)
                           (_%else172549172564%_)))))
                (if (pair? _%g172546172556%_)
                    (let ((_%tl172554172611%_ (##cdr _%g172546172556%_))
                          (_%hd172553172609%_ (##car _%g172546172556%_)))
                      (let ((_%hd172614%_ _%hd172553172609%_)
                            (_%rest172616%_ _%tl172554172611%_))
                        (_%K172552172606%_ _%rest172616%_ _%hd172614%_)))
                    (_%try-match172548172572%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx172621%_)
        (let ((_%key?172623%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx172621%_ _%key?172623%_))))
    (define gx#stx-plist?
      (lambda _g173775_
        (let ((_g173776_ (##length _g173775_)))
          (cond ((##fx= _g173776_ 1) (apply gx#stx-plist?__0 _g173775_))
                ((##fx= _g173776_ 2) (apply gx#stx-plist?__% _g173775_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g173775_))))))
    (define gx#stx-getq__%
      (lambda (_%key172458%_ _%stx172459%_ _%key=?172460%_)
        (if (procedure? _%key=?172460%_)
            '#!void
            (error '"expected procedure" _%key=?172460%_))
        (let _%lp172462%_ ((_%rest172464%_ _%stx172459%_))
          (let* ((_%g172465172473%_ (gx#syntax-e _%rest172464%_))
                 (_%else172467172481%_ (lambda () '#f))
                 (_%K172469172515%_
                  (lambda (_%rest172484%_ _%hd172485%_)
                    (let* ((_%g172486172493%_ (gx#syntax-e _%rest172484%_))
                           (_%E172488172497%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g172486172493%_
                                     '([val . rest]))
                              '#!void))
                           (_%K172489172503%_
                            (lambda (_%rest172500%_ _%val172501%_)
                              (if (_%key=?172460%_ _%hd172485%_ _%key172458%_)
                                  _%val172501%_
                                  (_%lp172462%_ _%rest172500%_)))))
                      (if (pair? _%g172486172493%_)
                          (let ((_%hd172490172506%_ (##car _%g172486172493%_))
                                (_%tl172491172508%_ (##cdr _%g172486172493%_)))
                            (let* ((_%val172511%_ _%hd172490172506%_)
                                   (_%rest172513%_ _%tl172491172508%_))
                              (_%K172489172503%_
                               _%rest172513%_
                               _%val172511%_)))
                          (_%E172488172497%_))))))
            (if (pair? _%g172465172473%_)
                (let ((_%hd172470172518%_ (##car _%g172465172473%_))
                      (_%tl172471172520%_ (##cdr _%g172465172473%_)))
                  (let* ((_%hd172523%_ _%hd172470172518%_)
                         (_%rest172525%_ _%tl172471172520%_))
                    (_%K172469172515%_ _%rest172525%_ _%hd172523%_)))
                (_%else172467172481%_))))))
    (define gx#stx-getq__0
      (lambda (_%key172530%_ _%stx172531%_)
        (let ((_%key=?172533%_ gx#stx-eq?))
          (gx#stx-getq__% _%key172530%_ _%stx172531%_ _%key=?172533%_))))
    (define gx#stx-getq
      (lambda _g173777_
        (let ((_g173778_ (##length _g173777_)))
          (cond ((##fx= _g173778_ 2) (apply gx#stx-getq__0 _g173777_))
                ((##fx= _g173778_ 3) (apply gx#stx-getq__% _g173777_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g173777_))))))))

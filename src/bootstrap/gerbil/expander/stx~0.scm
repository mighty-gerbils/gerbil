(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1712251111)
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
      (lambda _%$args114995%_
        (apply make-instance gx#identifier-wrap::t _%$args114995%_)))
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
      (lambda _%$args114992%_
        (apply make-instance gx#syntax-wrap::t _%$args114992%_)))
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
      (lambda _%$args114989%_
        (apply make-instance gx#syntax-quote::t _%$args114989%_)))
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
      (lambda (_%stx114987%_) (symbol? (gx#stx-e _%stx114987%_))))
    (define gx#identifier-quote?
      (lambda (_%stx114985%_)
        (if (##structure-direct-instance-of? _%stx114985%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx114985%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx114980%_)
        (if (##structure-direct-instance-of? _%stx114980%_ 'gx#syntax-quote::t)
            (let () '#t)
            (if (##structure-direct-instance-of?
                 _%stx114980%_
                 'gx#syntax-wrap::t)
                (let ()
                  (gx#sealed-syntax?
                   (##unchecked-structure-ref _%stx114980%_ '1 '#f '#f)))
                (let () '#f)))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx114975%_)
        (if (##structure-direct-instance-of? _%stx114975%_ 'gx#syntax-quote::t)
            (let () _%stx114975%_)
            (if (##structure-direct-instance-of?
                 _%stx114975%_
                 'gx#syntax-wrap::t)
                (let ()
                  (gx#sealed-syntax-unwrap
                   (##unchecked-structure-ref _%stx114975%_ '1 '#f '#f)))
                (let () '#f)))))
    (define gx#syntax-e
      (lambda (_%stx114949%_)
        (if (##structure-direct-instance-of? _%stx114949%_ 'gx#syntax-wrap::t)
            (let _%lp114952%_ ((_%e114954%_
                                (##unchecked-structure-ref
                                 _%stx114949%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks114955%_
                                (cons (##unchecked-structure-ref
                                       _%stx114949%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e114954%_)
                  (let ((_%$e114958%_
                         (##type-id (##structure-type _%e114954%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e114958%_)
                        (_%lp114952%_
                         (##unchecked-structure-ref _%e114954%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e114954%_ '3 '#f '#f)
                          _%marks114955%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e114958%_)
                                (eq? 'gx#identifier-wrap::t _%$e114958%_))
                            (##unchecked-structure-ref _%e114954%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e114958%_)
                                (_%lp114952%_
                                 (##unchecked-structure-ref
                                  _%e114954%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks114955%_)
                                _%e114954%_))))
                  (if (null? _%marks114955%_)
                      (let () _%e114954%_)
                      (if (pair? _%e114954%_)
                          (let ()
                            (cons (gx#stx-wrap
                                   (car _%e114954%_)
                                   _%marks114955%_)
                                  (gx#stx-wrap
                                   (cdr _%e114954%_)
                                   _%marks114955%_)))
                          (if (vector? _%e114954%_)
                              (let ()
                                (vector-map
                                 (lambda (_%g114966114968%_)
                                   (gx#stx-wrap
                                    _%g114966114968%_
                                    _%marks114955%_))
                                 _%e114954%_))
                              (if (box? _%e114954%_)
                                  (let ()
                                    (box (gx#stx-wrap
                                          (unbox _%e114954%_)
                                          _%marks114955%_)))
                                  (let () _%e114954%_)))))))
            (if (##structure-instance-of? _%stx114949%_ 'gerbil#AST::t)
                (let () (##unchecked-structure-ref _%stx114949%_ '1 '#f '#f))
                (let () _%stx114949%_)))))
    (define gx#syntax->datum
      (lambda (_%stx114942%_)
        (if (##structure-instance-of? _%stx114942%_ 'gerbil#AST::t)
            (let ()
              (gx#syntax->datum
               (##unchecked-structure-ref _%stx114942%_ '1 '#f '#f)))
            (if (pair? _%stx114942%_)
                (let ()
                  (cons (gx#syntax->datum (car _%stx114942%_))
                        (gx#syntax->datum (cdr _%stx114942%_))))
                (if (vector? _%stx114942%_)
                    (let () (vector-map gx#syntax->datum _%stx114942%_))
                    (if (box? _%stx114942%_)
                        (let () (box (gx#syntax->datum (unbox _%stx114942%_))))
                        (let () _%stx114942%_)))))))
    (define gx#datum->syntax__%
      (lambda (_%stx114876%_ _%datum114877%_ _%src114878%_ _%quote?114879%_)
        (letrec ((_%wrap-datum114881%_
                  (lambda (_%e114914%_ _%marks114915%_)
                    (_%wrap-inner114883%_
                     _%e114914%_
                     (lambda (_%g114916114918%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g114916114918%_
                        _%src114878%_
                        _%marks114915%_)))))
                 (_%wrap-quote114882%_
                  (lambda (_%e114906%_ _%ctx114907%_ _%marks114908%_)
                    (_%wrap-inner114883%_
                     _%e114906%_
                     (lambda (_%g114909114911%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g114909114911%_
                        _%src114878%_
                        _%ctx114907%_
                        _%marks114908%_)))))
                 (_%wrap-inner114883%_
                  (lambda (_%e114894%_ _%wrap-e114895%_)
                    (let _%recur114897%_ ((_%e114899%_ _%e114894%_))
                      (if (symbol? _%e114899%_)
                          (let () (_%wrap-e114895%_ _%e114899%_))
                          (if (pair? _%e114899%_)
                              (let ()
                                (cons (_%recur114897%_ (car _%e114899%_))
                                      (_%recur114897%_ (cdr _%e114899%_))))
                              (if (vector? _%e114899%_)
                                  (let ()
                                    (vector-map _%recur114897%_ _%e114899%_))
                                  (if (box? _%e114899%_)
                                      (let ()
                                        (box (_%recur114897%_
                                              (unbox _%e114899%_))))
                                      (let () _%e114899%_))))))))
                 (_%wrap-outer114884%_
                  (lambda (_%e114892%_)
                    (if (##structure-instance-of? _%e114892%_ 'gerbil#AST::t)
                        _%e114892%_
                        (##structure gx#AST::t _%e114892%_ _%src114878%_)))))
          (if (##structure-instance-of? _%datum114877%_ 'gerbil#AST::t)
              (let () _%datum114877%_)
              (if (not _%stx114876%_)
                  (let ()
                    (##structure gx#AST::t _%datum114877%_ _%src114878%_))
                  (if (gx#identifier? _%stx114876%_)
                      (let ((_%stx114889%_ (gx#stx-unwrap__0 _%stx114876%_)))
                        (_%wrap-outer114884%_
                         (if (##structure-direct-instance-of?
                              _%stx114889%_
                              'gx#syntax-quote::t)
                             (if _%quote?114879%_
                                 (_%wrap-quote114882%_
                                  _%datum114877%_
                                  (##unchecked-structure-ref
                                   _%stx114889%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx114889%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum114881%_
                                  _%datum114877%_
                                  (##unchecked-structure-ref
                                   _%stx114889%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum114881%_
                              _%datum114877%_
                              (##unchecked-structure-ref
                               _%stx114889%_
                               '3
                               '#f
                               '#f)))))
                      (let ()
                        (error '"Bad template syntax; expected identifier"
                               _%stx114876%_))))))))
    (define gx#datum->syntax__0
      (lambda (_%stx114924%_ _%datum114925%_)
        (let* ((_%src114927%_ '#f) (_%quote?114929%_ '#t))
          (gx#datum->syntax__%
           _%stx114924%_
           _%datum114925%_
           _%src114927%_
           _%quote?114929%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx114931%_ _%datum114932%_ _%src114933%_)
        (let ((_%quote?114935%_ '#t))
          (gx#datum->syntax__%
           _%stx114931%_
           _%datum114932%_
           _%src114933%_
           _%quote?114935%_))))
    (define gx#datum->syntax
      (lambda _g115076_
        (let ((_g115075_ (##length _g115076_)))
          (cond ((##fx= _g115075_ 2)
                 (apply (lambda (_%stx114924%_ _%datum114925%_)
                          (gx#datum->syntax__0 _%stx114924%_ _%datum114925%_))
                        _g115076_))
                ((##fx= _g115075_ 3)
                 (apply (lambda (_%stx114931%_ _%datum114932%_ _%src114933%_)
                          (gx#datum->syntax__1
                           _%stx114931%_
                           _%datum114932%_
                           _%src114933%_))
                        _g115076_))
                ((##fx= _g115075_ 4)
                 (apply (lambda (_%stx114937%_
                                 _%datum114938%_
                                 _%src114939%_
                                 _%quote?114940%_)
                          (gx#datum->syntax__%
                           _%stx114937%_
                           _%datum114938%_
                           _%src114939%_
                           _%quote?114940%_))
                        _g115076_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g115076_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx114842%_ _%marks114843%_)
        (let _%lp114845%_ ((_%e114847%_ _%stx114842%_)
                           (_%marks114848%_ _%marks114843%_)
                           (_%src114849%_ (gx#stx-source _%stx114842%_)))
          (if (##structure-direct-instance-of? _%e114847%_ 'gx#syntax-wrap::t)
              (let ()
                (_%lp114845%_
                 (##unchecked-structure-ref _%e114847%_ '1 '#f '#f)
                 (gx#apply-mark
                  (##unchecked-structure-ref _%e114847%_ '3 '#f '#f)
                  _%marks114848%_)
                 (##unchecked-structure-ref _%e114847%_ '2 '#f '#f)))
              (if (##structure-direct-instance-of?
                   _%e114847%_
                   'gx#identifier-wrap::t)
                  (let ()
                    (if (null? _%marks114848%_)
                        _%e114847%_
                        (##structure
                         gx#identifier-wrap::t
                         (##unchecked-structure-ref _%e114847%_ '1 '#f '#f)
                         (##unchecked-structure-ref _%e114847%_ '2 '#f '#f)
                         (__foldl1
                          gx#apply-mark
                          (##unchecked-structure-ref _%e114847%_ '3 '#f '#f)
                          _%marks114848%_))))
                  (if (##structure-direct-instance-of?
                       _%e114847%_
                       'gx#syntax-quote::t)
                      (let () _%e114847%_)
                      (if (##structure-instance-of? _%e114847%_ 'gerbil#AST::t)
                          (let ()
                            (_%lp114845%_
                             (##unchecked-structure-ref _%e114847%_ '1 '#f '#f)
                             _%marks114848%_
                             (##unchecked-structure-ref
                              _%e114847%_
                              '2
                              '#f
                              '#f)))
                          (if (symbol? _%e114847%_)
                              (let ()
                                (##structure
                                 gx#identifier-wrap::t
                                 _%e114847%_
                                 _%src114849%_
                                 (reverse _%marks114848%_)))
                              (if (null? _%marks114848%_)
                                  (let () _%e114847%_)
                                  (if (pair? _%e114847%_)
                                      (let ()
                                        (cons (gx#stx-wrap
                                               (car _%e114847%_)
                                               _%marks114848%_)
                                              (gx#stx-wrap
                                               (cdr _%e114847%_)
                                               _%marks114848%_)))
                                      (if (vector? _%e114847%_)
                                          (let ()
                                            (vector-map
                                             (lambda (_%g114858114860%_)
                                               (gx#stx-wrap
                                                _%g114858114860%_
                                                _%marks114848%_))
                                             _%e114847%_))
                                          (if (box? _%e114847%_)
                                              (let ()
                                                (box (gx#stx-wrap
                                                      (unbox _%e114847%_)
                                                      _%marks114848%_)))
                                              (let () _%e114847%_)))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx114868%_)
        (let ((_%marks114870%_ '()))
          (gx#stx-unwrap__% _%stx114868%_ _%marks114870%_))))
    (define gx#stx-unwrap
      (lambda _g115078_
        (let ((_g115077_ (##length _g115078_)))
          (cond ((##fx= _g115077_ 1)
                 (apply (lambda (_%stx114868%_)
                          (gx#stx-unwrap__0 _%stx114868%_))
                        _g115078_))
                ((##fx= _g115077_ 2)
                 (apply (lambda (_%stx114872%_ _%marks114873%_)
                          (gx#stx-unwrap__% _%stx114872%_ _%marks114873%_))
                        _g115078_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g115078_))))))
    (define gx#stx-wrap
      (lambda (_%stx114835%_ _%marks114836%_)
        (__foldl1
         (lambda (_%mark114838%_ _%stx114839%_)
           (gx#stx-apply-mark _%stx114839%_ _%mark114838%_))
         _%stx114835%_
         _%marks114836%_)))
    (define gx#stx-rewrap
      (lambda (_%stx114829%_ _%marks114830%_)
        (__foldr1
         (lambda (_%mark114832%_ _%stx114833%_)
           (gx#stx-apply-mark _%stx114833%_ _%mark114832%_))
         _%stx114829%_
         _%marks114830%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx114823%_ _%mark114824%_)
        (if (##structure-direct-instance-of? _%stx114823%_ 'gx#syntax-quote::t)
            (let () _%stx114823%_)
            (if (and (##structure-direct-instance-of?
                      _%stx114823%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark114824%_
                          (##unchecked-structure-ref
                           _%stx114823%_
                           '3
                           '#f
                           '#f)))
                (let () (##unchecked-structure-ref _%stx114823%_ '1 '#f '#f))
                (let ()
                  (##structure
                   gx#syntax-wrap::t
                   _%stx114823%_
                   (gx#stx-source _%stx114823%_)
                   _%mark114824%_))))))
    (define gx#apply-mark
      (lambda (_%mark114787%_ _%marks114788%_)
        (let* ((_%marks114789114797%_ _%marks114788%_)
               (_%else114791114805%_
                (lambda () (cons _%mark114787%_ _%marks114788%_)))
               (_%K114793114811%_
                (lambda (_%rest114808%_ _%hd114809%_)
                  (if (eq? _%mark114787%_ _%hd114809%_)
                      _%rest114808%_
                      (cons _%mark114787%_ _%marks114788%_)))))
          (if (##pair? _%marks114789114797%_)
              (let ((_%hd114794114814%_ (##car _%marks114789114797%_))
                    (_%tl114795114816%_ (##cdr _%marks114789114797%_)))
                (let* ((_%hd114819%_ _%hd114794114814%_)
                       (_%rest114821%_ _%tl114795114816%_))
                  (_%K114793114811%_ _%rest114821%_ _%hd114819%_)))
              (_%else114791114805%_)))))
    (define gx#stx-e
      (lambda (_%stx114782%_)
        (if (##structure-direct-instance-of? _%stx114782%_ 'gx#syntax-wrap::t)
            (let ()
              (gx#stx-e (##unchecked-structure-ref _%stx114782%_ '1 '#f '#f)))
            (if (##structure-instance-of? _%stx114782%_ 'gerbil#AST::t)
                (let () (##unchecked-structure-ref _%stx114782%_ '1 '#f '#f))
                (let () _%stx114782%_)))))
    (define gx#stx-source
      (lambda (_%stx114780%_)
        (if (##structure-instance-of? _%stx114780%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx114780%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx114774%_ _%src114775%_)
        (if (or (##structure-instance-of? _%stx114774%_ 'gerbil#AST::t)
                (not _%src114775%_))
            _%stx114774%_
            (##structure gx#AST::t _%stx114774%_ _%src114775%_))))
    (define gx#stx-datum?
      (lambda (_%stx114772%_) (gx#self-quoting? (gx#stx-e _%stx114772%_))))
    (define gx#self-quoting?
      (lambda (_%x114755%_)
        (let ((_%$e114757%_ (immediate? _%x114755%_)))
          (if _%$e114757%_
              _%$e114757%_
              (let ((_%$e114760%_ (number? _%x114755%_)))
                (if _%$e114760%_
                    _%$e114760%_
                    (let ((_%$e114763%_ (keyword? _%x114755%_)))
                      (if _%$e114763%_
                          _%$e114763%_
                          (let ((_%$e114766%_ (string? _%x114755%_)))
                            (if _%$e114766%_
                                _%$e114766%_
                                (let ((_%$e114769%_ (vector? _%x114755%_)))
                                  (if _%$e114769%_
                                      _%$e114769%_
                                      (u8vector? _%x114755%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e114753%_) (boolean? (gx#stx-e _%e114753%_))))
    (define gx#stx-keyword?
      (lambda (_%e114751%_) (keyword? (gx#stx-e _%e114751%_))))
    (define gx#stx-char? (lambda (_%e114749%_) (char? (gx#stx-e _%e114749%_))))
    (define gx#stx-number?
      (lambda (_%e114747%_) (number? (gx#stx-e _%e114747%_))))
    (define gx#stx-fixnum?
      (lambda (_%e114745%_) (fixnum? (gx#stx-e _%e114745%_))))
    (define gx#stx-string?
      (lambda (_%e114743%_) (string? (gx#stx-e _%e114743%_))))
    (define gx#stx-null? (lambda (_%e114741%_) (null? (gx#stx-e _%e114741%_))))
    (define gx#stx-pair? (lambda (_%e114739%_) (pair? (gx#stx-e _%e114739%_))))
    (define gx#stx-list?
      (lambda (_%e114701%_)
        (let* ((_%g114702114711%_ (gx#stx-e _%e114701%_))
               (_%E114705114715%_
                (lambda ()
                  (error '"No clause matching"
                         _%g114702114711%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K114707114731%_
                 (lambda (_%rest114729%_) (gx#stx-list? _%rest114729%_)))
                (_%K114706114721%_
                 (lambda (_%tail114719%_) (null? _%tail114719%_))))
            (if (##pair? _%g114702114711%_)
                (let* ((_%tl114709114734%_ (##cdr _%g114702114711%_))
                       (_%rest114737%_ _%tl114709114734%_))
                  (gx#stx-list? _%rest114737%_))
                (let ((_%tail114724%_ _%g114702114711%_))
                  (null? _%tail114724%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e114694%_)
        (let* ((_%e114696%_ (gx#stx-e _%e114694%_))
               (_%$e114698%_ (pair? _%e114696%_)))
          (if _%$e114698%_ _%$e114698%_ (null? _%e114696%_)))))
    (define gx#stx-vector?
      (lambda (_%e114692%_) (vector? (gx#stx-e _%e114692%_))))
    (define gx#stx-box? (lambda (_%e114690%_) (box? (gx#stx-e _%e114690%_))))
    (define gx#stx-eq?
      (lambda (_%x114687%_ _%y114688%_)
        (eq? (gx#stx-e _%x114687%_) (gx#stx-e _%y114688%_))))
    (define gx#stx-eqv?
      (lambda (_%x114684%_ _%y114685%_)
        (eqv? (gx#stx-e _%x114684%_) (gx#stx-e _%y114685%_))))
    (define gx#stx-equal?
      (lambda (_%x114681%_ _%y114682%_)
        (equal? (gx#stx-e _%x114681%_) (gx#stx-e _%y114682%_))))
    (define gx#stx-false? (lambda (_%x114679%_) (not (gx#stx-e _%x114679%_))))
    (define gx#stx-identifier
      (lambda (_%template114676%_ . _%args114677%_)
        (gx#datum->syntax__1
         _%template114676%_
         (apply make-symbol (gx#syntax->datum _%args114677%_))
         (gx#stx-source _%template114676%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx114674%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx114674%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx114669%_)
        (if (##structure-direct-instance-of?
             _%stx114669%_
             'gx#identifier-wrap::t)
            (let () (##unchecked-structure-ref _%stx114669%_ '3 '#f '#f))
            (if (##structure-direct-instance-of?
                 _%stx114669%_
                 'gx#syntax-quote::t)
                (let () (##unchecked-structure-ref _%stx114669%_ '4 '#f '#f))
                (let ()
                  (error '"Bad wrap; expected unwrapped identifier"
                         _%stx114669%_))))))
    (define gx#stx-identifier-context
      (lambda (_%stx114665%_)
        (let ((_%stx114667%_ (gx#stx-unwrap__0 _%stx114665%_)))
          (if (gx#identifier-quote? _%stx114667%_)
              (##unchecked-structure-ref _%stx114667%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx114620%_)
        (let* ((_%g114621114631%_ (gx#stx-e _%stx114620%_))
               (_%else114624114639%_ (lambda () '#f)))
          (let ((_%K114627114653%_
                 (lambda (_%rest114650%_ _%hd114651%_)
                   (if (gx#identifier? _%hd114651%_)
                       (gx#identifier-list? _%rest114650%_)
                       '#f)))
                (_%K114626114644%_ (lambda () '#t)))
            (let ((_%try-match114623114647%_
                   (lambda ()
                     (if (##null? _%g114621114631%_)
                         (_%K114626114644%_)
                         (_%else114624114639%_)))))
              (if (##pair? _%g114621114631%_)
                  (let ((_%tl114629114658%_ (##cdr _%g114621114631%_))
                        (_%hd114628114656%_ (##car _%g114621114631%_)))
                    (let ((_%hd114661%_ _%hd114628114656%_)
                          (_%rest114663%_ _%tl114629114658%_))
                      (_%K114627114653%_ _%rest114663%_ _%hd114661%_)))
                  (_%try-match114623114647%_)))))))
    (define gx#genident__%
      (lambda (_%e114597%_ _%src114598%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e114600%_ (gx#stx-e _%e114597%_)))
                   (if (interned-symbol? _%e114600%_) _%e114600%_ 'g)))
         (let ((_%$e114602%_ (gx#stx-source _%e114597%_)))
           (if _%$e114602%_ _%$e114602%_ _%src114598%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e114609%_ 'g) (_%src114611%_ '#f))
          (gx#genident__% _%e114609%_ _%src114611%_))))
    (define gx#genident__1
      (lambda (_%e114613%_)
        (let ((_%src114615%_ '#f))
          (gx#genident__% _%e114613%_ _%src114615%_))))
    (define gx#genident
      (lambda _g115080_
        (let ((_g115079_ (##length _g115080_)))
          (cond ((##fx= _g115079_ 0)
                 (apply (lambda () (gx#genident__0)) _g115080_))
                ((##fx= _g115079_ 1)
                 (apply (lambda (_%e114613%_) (gx#genident__1 _%e114613%_))
                        _g115080_))
                ((##fx= _g115079_ 2)
                 (apply (lambda (_%e114617%_ _%src114618%_)
                          (gx#genident__% _%e114617%_ _%src114618%_))
                        _g115080_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g115080_))))))
    (define gx#gentemps
      (lambda (_%stx-lst114594%_) (gx#stx-map1 gx#genident _%stx-lst114594%_)))
    (define gx#syntax->list
      (lambda (_%stx114592%_) (gx#stx-map1 values _%stx114592%_)))
    (define gx#stx-car
      (lambda (_%stx114589%_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _%stx114589%_)))))
    (define gx#stx-cdr
      (lambda (_%stx114586%_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _%stx114586%_)))))
    (define gx#stx-length
      (lambda (_%stx114551%_)
        (let _%lp114553%_ ((_%rest114555%_ _%stx114551%_) (_%n114556%_ '0))
          (let* ((_%g114557114565%_ (gx#stx-e _%rest114555%_))
                 (_%else114559114573%_ (lambda () _%n114556%_))
                 (_%K114561114578%_
                  (lambda (_%rest114576%_)
                    (_%lp114553%_ _%rest114576%_ (##fx+ _%n114556%_ '1)))))
            (if (##pair? _%g114557114565%_)
                (let* ((_%tl114563114581%_ (##cdr _%g114557114565%_))
                       (_%rest114584%_ _%tl114563114581%_))
                  (_%K114561114578%_ _%rest114584%_))
                (_%else114559114573%_))))))
    (define gx#stx-for-each
      (lambda _g115082_
        (let ((_g115081_ (##length _g115082_)))
          (cond ((##fx= _g115081_ 2)
                 (apply (lambda (_%f114544%_ _%stx114545%_)
                          (gx#stx-for-each1 _%f114544%_ _%stx114545%_))
                        _g115082_))
                ((##fx= _g115081_ 3)
                 (apply (lambda (_%f114547%_ _%xstx114548%_ _%ystx114549%_)
                          (gx#stx-for-each2
                           _%f114547%_
                           _%xstx114548%_
                           _%ystx114549%_))
                        _g115082_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g115082_))))))
    (define gx#stx-for-each1
      (lambda (_%f114494%_ _%stx114495%_)
        (if (procedure? _%f114494%_)
            '#!void
            (error '"expected procedure" _%f114494%_))
        (let _%lp114497%_ ((_%rest114499%_ _%stx114495%_))
          (let* ((_%g114500114510%_ (gx#syntax-e _%rest114499%_))
                 (_%else114503114518%_
                  (lambda () (_%f114494%_ _%rest114499%_))))
            (let ((_%K114506114532%_
                   (lambda (_%rest114529%_ _%hd114530%_)
                     (_%f114494%_ _%hd114530%_)
                     (_%lp114497%_ _%rest114529%_)))
                  (_%K114505114523%_ (lambda () '#!void)))
              (let ((_%try-match114502114526%_
                     (lambda ()
                       (if (##null? _%g114500114510%_)
                           (_%K114505114523%_)
                           (_%else114503114518%_)))))
                (if (##pair? _%g114500114510%_)
                    (let ((_%tl114508114537%_ (##cdr _%g114500114510%_))
                          (_%hd114507114535%_ (##car _%g114500114510%_)))
                      (let ((_%hd114540%_ _%hd114507114535%_)
                            (_%rest114542%_ _%tl114508114537%_))
                        (_%K114506114532%_ _%rest114542%_ _%hd114540%_)))
                    (_%try-match114502114526%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f114399%_ _%xstx114400%_ _%ystx114401%_)
        (if (procedure? _%f114399%_)
            '#!void
            (error '"expected procedure" _%f114399%_))
        (let _%lp114403%_ ((_%xrest114405%_ _%xstx114400%_)
                           (_%yrest114406%_ _%ystx114401%_))
          (let* ((_%g114407114417%_ (gx#syntax-e _%xrest114405%_))
                 (_%else114410114425%_ (lambda () '#!void)))
            (let ((_%K114413114482%_
                   (lambda (_%xrest114451%_ _%xhd114452%_)
                     (let* ((_%g114453114460%_ (gx#syntax-e _%yrest114406%_))
                            (_%E114455114464%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g114453114460%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K114456114470%_
                             (lambda (_%yrest114467%_ _%yhd114468%_)
                               (_%f114399%_ _%xhd114452%_ _%yhd114468%_)
                               (_%lp114403%_
                                _%xrest114451%_
                                _%yrest114467%_))))
                       (if (##pair? _%g114453114460%_)
                           (let ((_%hd114457114473%_ (##car _%g114453114460%_))
                                 (_%tl114458114475%_
                                  (##cdr _%g114453114460%_)))
                             (let* ((_%yhd114478%_ _%hd114457114473%_)
                                    (_%yrest114480%_ _%tl114458114475%_))
                               (_%K114456114470%_
                                _%yrest114480%_
                                _%yhd114478%_)))
                           (_%E114455114464%_)))))
                  (_%K114412114445%_
                   (lambda ()
                     (let* ((_%yrest114429114434%_ _%yrest114406%_)
                            (_%E114431114438%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest114429114434%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K114432114442%_
                             (lambda ()
                               (_%f114399%_ _%xrest114405%_ _%yrest114406%_))))
                       (if (not (gx#stx-null? _%yrest114429114434%_))
                           (_%K114432114442%_)
                           (_%E114431114438%_))))))
              (let ((_%try-match114409114448%_
                     (lambda ()
                       (if (not (null? _%g114407114417%_))
                           (_%K114412114445%_)
                           (_%else114410114425%_)))))
                (if (##pair? _%g114407114417%_)
                    (let ((_%tl114415114487%_ (##cdr _%g114407114417%_))
                          (_%hd114414114485%_ (##car _%g114407114417%_)))
                      (let ((_%xhd114490%_ _%hd114414114485%_)
                            (_%xrest114492%_ _%tl114415114487%_))
                        (_%K114413114482%_ _%xrest114492%_ _%xhd114490%_)))
                    (_%try-match114409114448%_))))))))
    (define gx#stx-map
      (lambda _g115084_
        (let ((_g115083_ (##length _g115084_)))
          (cond ((##fx= _g115083_ 2)
                 (apply (lambda (_%f114392%_ _%stx114393%_)
                          (gx#stx-map1 _%f114392%_ _%stx114393%_))
                        _g115084_))
                ((##fx= _g115083_ 3)
                 (apply (lambda (_%f114395%_ _%xstx114396%_ _%ystx114397%_)
                          (gx#stx-map2
                           _%f114395%_
                           _%xstx114396%_
                           _%ystx114397%_))
                        _g115084_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g115084_))))))
    (define gx#stx-map1
      (lambda (_%f114342%_ _%stx114343%_)
        (if (procedure? _%f114342%_)
            '#!void
            (error '"expected procedure" _%f114342%_))
        (let _%recur114345%_ ((_%rest114347%_ _%stx114343%_))
          (let* ((_%g114348114358%_ (gx#syntax-e _%rest114347%_))
                 (_%else114351114366%_
                  (lambda () (_%f114342%_ _%rest114347%_))))
            (let ((_%K114354114380%_
                   (lambda (_%rest114377%_ _%hd114378%_)
                     (cons (_%f114342%_ _%hd114378%_)
                           (_%recur114345%_ _%rest114377%_))))
                  (_%K114353114371%_ (lambda () '())))
              (let ((_%try-match114350114374%_
                     (lambda ()
                       (if (##null? _%g114348114358%_)
                           (_%K114353114371%_)
                           (_%else114351114366%_)))))
                (if (##pair? _%g114348114358%_)
                    (let ((_%tl114356114385%_ (##cdr _%g114348114358%_))
                          (_%hd114355114383%_ (##car _%g114348114358%_)))
                      (let ((_%hd114388%_ _%hd114355114383%_)
                            (_%rest114390%_ _%tl114356114385%_))
                        (_%K114354114380%_ _%rest114390%_ _%hd114388%_)))
                    (_%try-match114350114374%_))))))))
    (define gx#stx-map2
      (lambda (_%f114247%_ _%xstx114248%_ _%ystx114249%_)
        (if (procedure? _%f114247%_)
            '#!void
            (error '"expected procedure" _%f114247%_))
        (let _%recur114251%_ ((_%xrest114253%_ _%xstx114248%_)
                              (_%yrest114254%_ _%ystx114249%_))
          (let* ((_%g114255114265%_ (gx#syntax-e _%xrest114253%_))
                 (_%else114258114273%_ (lambda () '())))
            (let ((_%K114261114330%_
                   (lambda (_%xrest114299%_ _%xhd114300%_)
                     (let* ((_%g114301114308%_ (gx#syntax-e _%yrest114254%_))
                            (_%E114303114312%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g114301114308%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K114304114318%_
                             (lambda (_%yrest114315%_ _%yhd114316%_)
                               (cons (_%f114247%_ _%xhd114300%_ _%yhd114316%_)
                                     (_%recur114251%_
                                      _%xrest114299%_
                                      _%yrest114315%_)))))
                       (if (##pair? _%g114301114308%_)
                           (let ((_%hd114305114321%_ (##car _%g114301114308%_))
                                 (_%tl114306114323%_
                                  (##cdr _%g114301114308%_)))
                             (let* ((_%yhd114326%_ _%hd114305114321%_)
                                    (_%yrest114328%_ _%tl114306114323%_))
                               (_%K114304114318%_
                                _%yrest114328%_
                                _%yhd114326%_)))
                           (_%E114303114312%_)))))
                  (_%K114260114293%_
                   (lambda ()
                     (let* ((_%yrest114277114282%_ _%yrest114254%_)
                            (_%E114279114286%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest114277114282%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K114280114290%_
                             (lambda ()
                               (_%f114247%_ _%xrest114253%_ _%yrest114254%_))))
                       (if (not (gx#stx-null? _%yrest114277114282%_))
                           (_%K114280114290%_)
                           (_%E114279114286%_))))))
              (let ((_%try-match114257114296%_
                     (lambda ()
                       (if (not (null? _%g114255114265%_))
                           (_%K114260114293%_)
                           (_%else114258114273%_)))))
                (if (##pair? _%g114255114265%_)
                    (let ((_%tl114263114335%_ (##cdr _%g114255114265%_))
                          (_%hd114262114333%_ (##car _%g114255114265%_)))
                      (let ((_%xhd114338%_ _%hd114262114333%_)
                            (_%xrest114340%_ _%tl114263114335%_))
                        (_%K114261114330%_ _%xrest114340%_ _%xhd114338%_)))
                    (_%try-match114257114296%_))))))))
    (define gx#stx-andmap
      (lambda (_%f114197%_ _%stx114198%_)
        (if (procedure? _%f114197%_)
            '#!void
            (error '"expected procedure" _%f114197%_))
        (let _%lp114200%_ ((_%rest114202%_ _%stx114198%_))
          (let* ((_%g114203114213%_ (gx#syntax-e _%rest114202%_))
                 (_%else114206114221%_
                  (lambda () (_%f114197%_ _%rest114202%_))))
            (let ((_%K114209114235%_
                   (lambda (_%rest114232%_ _%hd114233%_)
                     (if (_%f114197%_ _%hd114233%_)
                         (_%lp114200%_ _%rest114232%_)
                         '#f)))
                  (_%K114208114226%_ (lambda () '#t)))
              (let ((_%try-match114205114229%_
                     (lambda ()
                       (if (##null? _%g114203114213%_)
                           (_%K114208114226%_)
                           (_%else114206114221%_)))))
                (if (##pair? _%g114203114213%_)
                    (let ((_%tl114211114240%_ (##cdr _%g114203114213%_))
                          (_%hd114210114238%_ (##car _%g114203114213%_)))
                      (let ((_%hd114243%_ _%hd114210114238%_)
                            (_%rest114245%_ _%tl114211114240%_))
                        (_%K114209114235%_ _%rest114245%_ _%hd114243%_)))
                    (_%try-match114205114229%_))))))))
    (define gx#stx-ormap
      (lambda (_%f114144%_ _%stx114145%_)
        (if (procedure? _%f114144%_)
            '#!void
            (error '"expected procedure" _%f114144%_))
        (let _%lp114147%_ ((_%rest114149%_ _%stx114145%_))
          (let* ((_%g114150114160%_ (gx#syntax-e _%rest114149%_))
                 (_%else114153114168%_
                  (lambda () (_%f114144%_ _%rest114149%_))))
            (let ((_%K114156114185%_
                   (lambda (_%rest114179%_ _%hd114180%_)
                     (let ((_%$e114182%_ (_%f114144%_ _%hd114180%_)))
                       (if _%$e114182%_
                           _%$e114182%_
                           (_%lp114147%_ _%rest114179%_)))))
                  (_%K114155114173%_ (lambda () '#f)))
              (let ((_%try-match114152114176%_
                     (lambda ()
                       (if (##null? _%g114150114160%_)
                           (_%K114155114173%_)
                           (_%else114153114168%_)))))
                (if (##pair? _%g114150114160%_)
                    (let ((_%tl114158114190%_ (##cdr _%g114150114160%_))
                          (_%hd114157114188%_ (##car _%g114150114160%_)))
                      (let ((_%hd114193%_ _%hd114157114188%_)
                            (_%rest114195%_ _%tl114158114190%_))
                        (_%K114156114185%_ _%rest114195%_ _%hd114193%_)))
                    (_%try-match114152114176%_))))))))
    (define gx#stx-foldl
      (lambda (_%f114092%_ _%iv114093%_ _%stx114094%_)
        (if (procedure? _%f114092%_)
            '#!void
            (error '"expected procedure" _%f114092%_))
        (let _%lp114096%_ ((_%r114098%_ _%iv114093%_)
                           (_%rest114099%_ _%stx114094%_))
          (let* ((_%g114100114110%_ (gx#syntax-e _%rest114099%_))
                 (_%else114103114118%_
                  (lambda () (_%f114092%_ _%rest114099%_ _%r114098%_))))
            (let ((_%K114106114132%_
                   (lambda (_%rest114129%_ _%hd114130%_)
                     (_%lp114096%_
                      (_%f114092%_ _%hd114130%_ _%r114098%_)
                      _%rest114129%_)))
                  (_%K114105114123%_ (lambda () _%r114098%_)))
              (let ((_%try-match114102114126%_
                     (lambda ()
                       (if (##null? _%g114100114110%_)
                           (_%K114105114123%_)
                           (_%else114103114118%_)))))
                (if (##pair? _%g114100114110%_)
                    (let ((_%tl114108114137%_ (##cdr _%g114100114110%_))
                          (_%hd114107114135%_ (##car _%g114100114110%_)))
                      (let ((_%hd114140%_ _%hd114107114135%_)
                            (_%rest114142%_ _%tl114108114137%_))
                        (_%K114106114132%_ _%rest114142%_ _%hd114140%_)))
                    (_%try-match114102114126%_))))))))
    (define gx#stx-foldr
      (lambda (_%f114041%_ _%iv114042%_ _%stx114043%_)
        (if (procedure? _%f114041%_)
            '#!void
            (error '"expected procedure" _%f114041%_))
        (let _%recur114045%_ ((_%rest114047%_ _%stx114043%_))
          (let* ((_%g114048114058%_ (gx#syntax-e _%rest114047%_))
                 (_%else114051114066%_
                  (lambda () (_%f114041%_ _%rest114047%_ _%iv114042%_))))
            (let ((_%K114054114080%_
                   (lambda (_%rest114077%_ _%hd114078%_)
                     (_%f114041%_
                      _%hd114078%_
                      (_%recur114045%_ _%rest114077%_))))
                  (_%K114053114071%_ (lambda () _%iv114042%_)))
              (let ((_%try-match114050114074%_
                     (lambda ()
                       (if (##null? _%g114048114058%_)
                           (_%K114053114071%_)
                           (_%else114051114066%_)))))
                (if (##pair? _%g114048114058%_)
                    (let ((_%tl114056114085%_ (##cdr _%g114048114058%_))
                          (_%hd114055114083%_ (##car _%g114048114058%_)))
                      (let ((_%hd114088%_ _%hd114055114083%_)
                            (_%rest114090%_ _%tl114056114085%_))
                        (_%K114054114080%_ _%rest114090%_ _%hd114088%_)))
                    (_%try-match114050114074%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx114039%_) (gx#stx-foldl cons '() _%stx114039%_)))
    (define gx#stx-last
      (lambda (_%stx114000%_)
        (let _%lp114002%_ ((_%rest114004%_ _%stx114000%_))
          (let* ((_%g114005114013%_ (gx#syntax-e _%rest114004%_))
                 (_%else114007114021%_ (lambda () _%rest114004%_))
                 (_%K114009114027%_
                  (lambda (_%rest114024%_ _%hd114025%_)
                    (if (gx#stx-null? _%rest114024%_)
                        _%hd114025%_
                        (_%lp114002%_ _%rest114024%_)))))
            (if (##pair? _%g114005114013%_)
                (let ((_%hd114010114030%_ (##car _%g114005114013%_))
                      (_%tl114011114032%_ (##cdr _%g114005114013%_)))
                  (let* ((_%hd114035%_ _%hd114010114030%_)
                         (_%rest114037%_ _%tl114011114032%_))
                    (_%K114009114027%_ _%rest114037%_ _%hd114035%_)))
                (_%else114007114021%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx113971%_)
        (let _%lp113973%_ ((_%hd113975%_ _%stx113971%_))
          (let* ((_%g113976113983%_ (gx#syntax-e _%hd113975%_))
                 (_%E113978113987%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g113976113983%_
                           '([_ . rest]))
                    '#!void))
                 (_%K113979113992%_
                  (lambda (_%rest113990%_)
                    (if (gx#stx-pair? _%rest113990%_)
                        (_%lp113973%_ _%rest113990%_)
                        _%hd113975%_))))
            (if (##pair? _%g113976113983%_)
                (let* ((_%tl113981113995%_ (##cdr _%g113976113983%_))
                       (_%rest113998%_ _%tl113981113995%_))
                  (_%K113979113992%_ _%rest113998%_))
                (_%E113978113987%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx113940%_ _%k113941%_)
        (let _%lp113943%_ ((_%rest113945%_ _%stx113940%_)
                           (_%k113946%_ _%k113941%_))
          (if (fxpositive? _%k113946%_)
              (let* ((_%g113947113954%_ (gx#syntax-e _%rest113945%_))
                     (_%E113949113958%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g113947113954%_
                               '([_ . rest]))
                        '#!void))
                     (_%K113950113963%_
                      (lambda (_%rest113961%_)
                        (_%lp113943%_ _%rest113961%_ (##fx- _%k113946%_ '1)))))
                (if (##pair? _%g113947113954%_)
                    (let* ((_%tl113952113966%_ (##cdr _%g113947113954%_))
                           (_%rest113969%_ _%tl113952113966%_))
                      (_%K113950113963%_ _%rest113969%_))
                    (_%E113949113958%_)))
              _%rest113945%_))))
    (define gx#stx-list-ref
      (lambda (_%stx113937%_ _%k113938%_)
        (gx#stx-car (gx#stx-list-tail _%stx113937%_ _%k113938%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx113849%_ _%key?113850%_)
        (if (procedure? _%key?113850%_)
            '#!void
            (error '"expected procedure" _%key?113850%_))
        (let _%lp113852%_ ((_%rest113854%_ _%stx113849%_))
          (let* ((_%g113855113865%_ (gx#stx-e _%rest113854%_))
                 (_%else113858113873%_ (lambda () '#f)))
            (let ((_%K113861113915%_
                   (lambda (_%rest113884%_ _%hd113885%_)
                     (if (_%key?113850%_ _%hd113885%_)
                         (let* ((_%g113886113894%_ (gx#stx-e _%rest113884%_))
                                (_%else113888113902%_ (lambda () '#f))
                                (_%K113890113907%_
                                 (lambda (_%rest113905%_)
                                   (_%lp113852%_ _%rest113905%_))))
                           (if (##pair? _%g113886113894%_)
                               (let* ((_%tl113892113910%_
                                       (##cdr _%g113886113894%_))
                                      (_%rest113913%_ _%tl113892113910%_))
                                 (_%lp113852%_ _%rest113913%_))
                               (_%else113888113902%_)))
                         '#f)))
                  (_%K113860113878%_ (lambda () '#t)))
              (let ((_%try-match113857113881%_
                     (lambda ()
                       (if (##null? _%g113855113865%_)
                           (_%K113860113878%_)
                           (_%else113858113873%_)))))
                (if (##pair? _%g113855113865%_)
                    (let ((_%tl113863113920%_ (##cdr _%g113855113865%_))
                          (_%hd113862113918%_ (##car _%g113855113865%_)))
                      (let ((_%hd113923%_ _%hd113862113918%_)
                            (_%rest113925%_ _%tl113863113920%_))
                        (_%K113861113915%_ _%rest113925%_ _%hd113923%_)))
                    (_%try-match113857113881%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx113930%_)
        (let ((_%key?113932%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx113930%_ _%key?113932%_))))
    (define gx#stx-plist?
      (lambda _g115086_
        (let ((_g115085_ (##length _g115086_)))
          (cond ((##fx= _g115085_ 1)
                 (apply (lambda (_%stx113930%_)
                          (gx#stx-plist?__0 _%stx113930%_))
                        _g115086_))
                ((##fx= _g115085_ 2)
                 (apply (lambda (_%stx113934%_ _%key?113935%_)
                          (gx#stx-plist?__% _%stx113934%_ _%key?113935%_))
                        _g115086_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g115086_))))))
    (define gx#stx-getq__%
      (lambda (_%key113767%_ _%stx113768%_ _%key=?113769%_)
        (if (procedure? _%key=?113769%_)
            '#!void
            (error '"expected procedure" _%key=?113769%_))
        (let _%lp113771%_ ((_%rest113773%_ _%stx113768%_))
          (let* ((_%g113774113782%_ (gx#syntax-e _%rest113773%_))
                 (_%else113776113790%_ (lambda () '#f))
                 (_%K113778113824%_
                  (lambda (_%rest113793%_ _%hd113794%_)
                    (let* ((_%g113795113802%_ (gx#syntax-e _%rest113793%_))
                           (_%E113797113806%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g113795113802%_
                                     '([val . rest]))
                              '#!void))
                           (_%K113798113812%_
                            (lambda (_%rest113809%_ _%val113810%_)
                              (if (_%key=?113769%_ _%hd113794%_ _%key113767%_)
                                  _%val113810%_
                                  (_%lp113771%_ _%rest113809%_)))))
                      (if (##pair? _%g113795113802%_)
                          (let ((_%hd113799113815%_ (##car _%g113795113802%_))
                                (_%tl113800113817%_ (##cdr _%g113795113802%_)))
                            (let* ((_%val113820%_ _%hd113799113815%_)
                                   (_%rest113822%_ _%tl113800113817%_))
                              (_%K113798113812%_
                               _%rest113822%_
                               _%val113820%_)))
                          (_%E113797113806%_))))))
            (if (##pair? _%g113774113782%_)
                (let ((_%hd113779113827%_ (##car _%g113774113782%_))
                      (_%tl113780113829%_ (##cdr _%g113774113782%_)))
                  (let* ((_%hd113832%_ _%hd113779113827%_)
                         (_%rest113834%_ _%tl113780113829%_))
                    (_%K113778113824%_ _%rest113834%_ _%hd113832%_)))
                (_%else113776113790%_))))))
    (define gx#stx-getq__0
      (lambda (_%key113839%_ _%stx113840%_)
        (let ((_%key=?113842%_ gx#stx-eq?))
          (gx#stx-getq__% _%key113839%_ _%stx113840%_ _%key=?113842%_))))
    (define gx#stx-getq
      (lambda _g115088_
        (let ((_g115087_ (##length _g115088_)))
          (cond ((##fx= _g115087_ 2)
                 (apply (lambda (_%key113839%_ _%stx113840%_)
                          (gx#stx-getq__0 _%key113839%_ _%stx113840%_))
                        _g115088_))
                ((##fx= _g115087_ 3)
                 (apply (lambda (_%key113844%_ _%stx113845%_ _%key=?113846%_)
                          (gx#stx-getq__%
                           _%key113844%_
                           _%stx113845%_
                           _%key=?113846%_))
                        _g115088_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g115088_))))))))

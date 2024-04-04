(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1712269045)
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
      (lambda _%$args114929%_
        (apply make-instance gx#identifier-wrap::t _%$args114929%_)))
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
      (lambda _%$args114926%_
        (apply make-instance gx#syntax-wrap::t _%$args114926%_)))
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
      (lambda _%$args114923%_
        (apply make-instance gx#syntax-quote::t _%$args114923%_)))
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
      (lambda (_%stx114921%_) (symbol? (gx#stx-e _%stx114921%_))))
    (define gx#identifier-quote?
      (lambda (_%stx114919%_)
        (if (##structure-direct-instance-of? _%stx114919%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx114919%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx114914%_)
        (if (##structure-direct-instance-of? _%stx114914%_ 'gx#syntax-quote::t)
            (let () '#t)
            (if (##structure-direct-instance-of?
                 _%stx114914%_
                 'gx#syntax-wrap::t)
                (let ()
                  (gx#sealed-syntax?
                   (##unchecked-structure-ref _%stx114914%_ '1 '#f '#f)))
                (let () '#f)))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx114909%_)
        (if (##structure-direct-instance-of? _%stx114909%_ 'gx#syntax-quote::t)
            (let () _%stx114909%_)
            (if (##structure-direct-instance-of?
                 _%stx114909%_
                 'gx#syntax-wrap::t)
                (let ()
                  (gx#sealed-syntax-unwrap
                   (##unchecked-structure-ref _%stx114909%_ '1 '#f '#f)))
                (let () '#f)))))
    (define gx#syntax-e
      (lambda (_%stx114883%_)
        (if (##structure-direct-instance-of? _%stx114883%_ 'gx#syntax-wrap::t)
            (let _%lp114886%_ ((_%e114888%_
                                (##unchecked-structure-ref
                                 _%stx114883%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks114889%_
                                (cons (##unchecked-structure-ref
                                       _%stx114883%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e114888%_)
                  (let ((_%$e114892%_
                         (##type-id (##structure-type _%e114888%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e114892%_)
                        (_%lp114886%_
                         (##unchecked-structure-ref _%e114888%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e114888%_ '3 '#f '#f)
                          _%marks114889%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e114892%_)
                                (eq? 'gx#identifier-wrap::t _%$e114892%_))
                            (##unchecked-structure-ref _%e114888%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e114892%_)
                                (_%lp114886%_
                                 (##unchecked-structure-ref
                                  _%e114888%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks114889%_)
                                _%e114888%_))))
                  (if (null? _%marks114889%_)
                      (let () _%e114888%_)
                      (if (pair? _%e114888%_)
                          (let ()
                            (cons (gx#stx-wrap
                                   (car _%e114888%_)
                                   _%marks114889%_)
                                  (gx#stx-wrap
                                   (cdr _%e114888%_)
                                   _%marks114889%_)))
                          (if (vector? _%e114888%_)
                              (let ()
                                (vector-map
                                 (lambda (_%g114900114902%_)
                                   (gx#stx-wrap
                                    _%g114900114902%_
                                    _%marks114889%_))
                                 _%e114888%_))
                              (if (box? _%e114888%_)
                                  (let ()
                                    (box (gx#stx-wrap
                                          (unbox _%e114888%_)
                                          _%marks114889%_)))
                                  (let () _%e114888%_)))))))
            (if (##structure-instance-of? _%stx114883%_ 'gerbil#AST::t)
                (let () (##unchecked-structure-ref _%stx114883%_ '1 '#f '#f))
                (let () _%stx114883%_)))))
    (define gx#syntax->datum
      (lambda (_%stx114876%_)
        (if (##structure-instance-of? _%stx114876%_ 'gerbil#AST::t)
            (let ()
              (gx#syntax->datum
               (##unchecked-structure-ref _%stx114876%_ '1 '#f '#f)))
            (if (pair? _%stx114876%_)
                (let ()
                  (cons (gx#syntax->datum (car _%stx114876%_))
                        (gx#syntax->datum (cdr _%stx114876%_))))
                (if (vector? _%stx114876%_)
                    (let () (vector-map gx#syntax->datum _%stx114876%_))
                    (if (box? _%stx114876%_)
                        (let () (box (gx#syntax->datum (unbox _%stx114876%_))))
                        (let () _%stx114876%_)))))))
    (define gx#datum->syntax__%
      (lambda (_%stx114810%_ _%datum114811%_ _%src114812%_ _%quote?114813%_)
        (letrec ((_%wrap-datum114815%_
                  (lambda (_%e114848%_ _%marks114849%_)
                    (_%wrap-inner114817%_
                     _%e114848%_
                     (lambda (_%g114850114852%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g114850114852%_
                        _%src114812%_
                        _%marks114849%_)))))
                 (_%wrap-quote114816%_
                  (lambda (_%e114840%_ _%ctx114841%_ _%marks114842%_)
                    (_%wrap-inner114817%_
                     _%e114840%_
                     (lambda (_%g114843114845%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g114843114845%_
                        _%src114812%_
                        _%ctx114841%_
                        _%marks114842%_)))))
                 (_%wrap-inner114817%_
                  (lambda (_%e114828%_ _%wrap-e114829%_)
                    (let _%recur114831%_ ((_%e114833%_ _%e114828%_))
                      (if (symbol? _%e114833%_)
                          (let () (_%wrap-e114829%_ _%e114833%_))
                          (if (pair? _%e114833%_)
                              (let ()
                                (cons (_%recur114831%_ (car _%e114833%_))
                                      (_%recur114831%_ (cdr _%e114833%_))))
                              (if (vector? _%e114833%_)
                                  (let ()
                                    (vector-map _%recur114831%_ _%e114833%_))
                                  (if (box? _%e114833%_)
                                      (let ()
                                        (box (_%recur114831%_
                                              (unbox _%e114833%_))))
                                      (let () _%e114833%_))))))))
                 (_%wrap-outer114818%_
                  (lambda (_%e114826%_)
                    (if (##structure-instance-of? _%e114826%_ 'gerbil#AST::t)
                        _%e114826%_
                        (##structure gx#AST::t _%e114826%_ _%src114812%_)))))
          (if (##structure-instance-of? _%datum114811%_ 'gerbil#AST::t)
              (let () _%datum114811%_)
              (if (not _%stx114810%_)
                  (let ()
                    (##structure gx#AST::t _%datum114811%_ _%src114812%_))
                  (if (gx#identifier? _%stx114810%_)
                      (let ((_%stx114823%_ (gx#stx-unwrap__0 _%stx114810%_)))
                        (_%wrap-outer114818%_
                         (if (##structure-direct-instance-of?
                              _%stx114823%_
                              'gx#syntax-quote::t)
                             (if _%quote?114813%_
                                 (_%wrap-quote114816%_
                                  _%datum114811%_
                                  (##unchecked-structure-ref
                                   _%stx114823%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx114823%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum114815%_
                                  _%datum114811%_
                                  (##unchecked-structure-ref
                                   _%stx114823%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum114815%_
                              _%datum114811%_
                              (##unchecked-structure-ref
                               _%stx114823%_
                               '3
                               '#f
                               '#f)))))
                      (let ()
                        (error '"Bad template syntax; expected identifier"
                               _%stx114810%_))))))))
    (define gx#datum->syntax__0
      (lambda (_%stx114858%_ _%datum114859%_)
        (let* ((_%src114861%_ '#f) (_%quote?114863%_ '#t))
          (gx#datum->syntax__%
           _%stx114858%_
           _%datum114859%_
           _%src114861%_
           _%quote?114863%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx114865%_ _%datum114866%_ _%src114867%_)
        (let ((_%quote?114869%_ '#t))
          (gx#datum->syntax__%
           _%stx114865%_
           _%datum114866%_
           _%src114867%_
           _%quote?114869%_))))
    (define gx#datum->syntax
      (lambda _g115010_
        (let ((_g115009_ (##length _g115010_)))
          (cond ((##fx= _g115009_ 2)
                 (apply (lambda (_%stx114858%_ _%datum114859%_)
                          (gx#datum->syntax__0 _%stx114858%_ _%datum114859%_))
                        _g115010_))
                ((##fx= _g115009_ 3)
                 (apply (lambda (_%stx114865%_ _%datum114866%_ _%src114867%_)
                          (gx#datum->syntax__1
                           _%stx114865%_
                           _%datum114866%_
                           _%src114867%_))
                        _g115010_))
                ((##fx= _g115009_ 4)
                 (apply (lambda (_%stx114871%_
                                 _%datum114872%_
                                 _%src114873%_
                                 _%quote?114874%_)
                          (gx#datum->syntax__%
                           _%stx114871%_
                           _%datum114872%_
                           _%src114873%_
                           _%quote?114874%_))
                        _g115010_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g115010_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx114776%_ _%marks114777%_)
        (let _%lp114779%_ ((_%e114781%_ _%stx114776%_)
                           (_%marks114782%_ _%marks114777%_)
                           (_%src114783%_ (gx#stx-source _%stx114776%_)))
          (if (##structure-direct-instance-of? _%e114781%_ 'gx#syntax-wrap::t)
              (let ()
                (_%lp114779%_
                 (##unchecked-structure-ref _%e114781%_ '1 '#f '#f)
                 (gx#apply-mark
                  (##unchecked-structure-ref _%e114781%_ '3 '#f '#f)
                  _%marks114782%_)
                 (##unchecked-structure-ref _%e114781%_ '2 '#f '#f)))
              (if (##structure-direct-instance-of?
                   _%e114781%_
                   'gx#identifier-wrap::t)
                  (let ()
                    (if (null? _%marks114782%_)
                        _%e114781%_
                        (##structure
                         gx#identifier-wrap::t
                         (##unchecked-structure-ref _%e114781%_ '1 '#f '#f)
                         (##unchecked-structure-ref _%e114781%_ '2 '#f '#f)
                         (__foldl1
                          gx#apply-mark
                          (##unchecked-structure-ref _%e114781%_ '3 '#f '#f)
                          _%marks114782%_))))
                  (if (##structure-direct-instance-of?
                       _%e114781%_
                       'gx#syntax-quote::t)
                      (let () _%e114781%_)
                      (if (##structure-instance-of? _%e114781%_ 'gerbil#AST::t)
                          (let ()
                            (_%lp114779%_
                             (##unchecked-structure-ref _%e114781%_ '1 '#f '#f)
                             _%marks114782%_
                             (##unchecked-structure-ref
                              _%e114781%_
                              '2
                              '#f
                              '#f)))
                          (if (symbol? _%e114781%_)
                              (let ()
                                (##structure
                                 gx#identifier-wrap::t
                                 _%e114781%_
                                 _%src114783%_
                                 (reverse _%marks114782%_)))
                              (if (null? _%marks114782%_)
                                  (let () _%e114781%_)
                                  (if (pair? _%e114781%_)
                                      (let ()
                                        (cons (gx#stx-wrap
                                               (car _%e114781%_)
                                               _%marks114782%_)
                                              (gx#stx-wrap
                                               (cdr _%e114781%_)
                                               _%marks114782%_)))
                                      (if (vector? _%e114781%_)
                                          (let ()
                                            (vector-map
                                             (lambda (_%g114792114794%_)
                                               (gx#stx-wrap
                                                _%g114792114794%_
                                                _%marks114782%_))
                                             _%e114781%_))
                                          (if (box? _%e114781%_)
                                              (let ()
                                                (box (gx#stx-wrap
                                                      (unbox _%e114781%_)
                                                      _%marks114782%_)))
                                              (let () _%e114781%_)))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx114802%_)
        (let ((_%marks114804%_ '()))
          (gx#stx-unwrap__% _%stx114802%_ _%marks114804%_))))
    (define gx#stx-unwrap
      (lambda _g115012_
        (let ((_g115011_ (##length _g115012_)))
          (cond ((##fx= _g115011_ 1)
                 (apply (lambda (_%stx114802%_)
                          (gx#stx-unwrap__0 _%stx114802%_))
                        _g115012_))
                ((##fx= _g115011_ 2)
                 (apply (lambda (_%stx114806%_ _%marks114807%_)
                          (gx#stx-unwrap__% _%stx114806%_ _%marks114807%_))
                        _g115012_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g115012_))))))
    (define gx#stx-wrap
      (lambda (_%stx114769%_ _%marks114770%_)
        (__foldl1
         (lambda (_%mark114772%_ _%stx114773%_)
           (gx#stx-apply-mark _%stx114773%_ _%mark114772%_))
         _%stx114769%_
         _%marks114770%_)))
    (define gx#stx-rewrap
      (lambda (_%stx114763%_ _%marks114764%_)
        (__foldr1
         (lambda (_%mark114766%_ _%stx114767%_)
           (gx#stx-apply-mark _%stx114767%_ _%mark114766%_))
         _%stx114763%_
         _%marks114764%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx114757%_ _%mark114758%_)
        (if (##structure-direct-instance-of? _%stx114757%_ 'gx#syntax-quote::t)
            (let () _%stx114757%_)
            (if (and (##structure-direct-instance-of?
                      _%stx114757%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark114758%_
                          (##unchecked-structure-ref
                           _%stx114757%_
                           '3
                           '#f
                           '#f)))
                (let () (##unchecked-structure-ref _%stx114757%_ '1 '#f '#f))
                (let ()
                  (##structure
                   gx#syntax-wrap::t
                   _%stx114757%_
                   (gx#stx-source _%stx114757%_)
                   _%mark114758%_))))))
    (define gx#apply-mark
      (lambda (_%mark114721%_ _%marks114722%_)
        (let* ((_%marks114723114731%_ _%marks114722%_)
               (_%else114725114739%_
                (lambda () (cons _%mark114721%_ _%marks114722%_)))
               (_%K114727114745%_
                (lambda (_%rest114742%_ _%hd114743%_)
                  (if (eq? _%mark114721%_ _%hd114743%_)
                      _%rest114742%_
                      (cons _%mark114721%_ _%marks114722%_)))))
          (if (##pair? _%marks114723114731%_)
              (let ((_%hd114728114748%_ (##car _%marks114723114731%_))
                    (_%tl114729114750%_ (##cdr _%marks114723114731%_)))
                (let* ((_%hd114753%_ _%hd114728114748%_)
                       (_%rest114755%_ _%tl114729114750%_))
                  (_%K114727114745%_ _%rest114755%_ _%hd114753%_)))
              (_%else114725114739%_)))))
    (define gx#stx-e
      (lambda (_%stx114716%_)
        (if (##structure-direct-instance-of? _%stx114716%_ 'gx#syntax-wrap::t)
            (let ()
              (gx#stx-e (##unchecked-structure-ref _%stx114716%_ '1 '#f '#f)))
            (if (##structure-instance-of? _%stx114716%_ 'gerbil#AST::t)
                (let () (##unchecked-structure-ref _%stx114716%_ '1 '#f '#f))
                (let () _%stx114716%_)))))
    (define gx#stx-source
      (lambda (_%stx114714%_)
        (if (##structure-instance-of? _%stx114714%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx114714%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx114708%_ _%src114709%_)
        (if (or (##structure-instance-of? _%stx114708%_ 'gerbil#AST::t)
                (not _%src114709%_))
            _%stx114708%_
            (##structure gx#AST::t _%stx114708%_ _%src114709%_))))
    (define gx#stx-datum?
      (lambda (_%stx114706%_) (gx#self-quoting? (gx#stx-e _%stx114706%_))))
    (define gx#self-quoting?
      (lambda (_%x114689%_)
        (let ((_%$e114691%_ (immediate? _%x114689%_)))
          (if _%$e114691%_
              _%$e114691%_
              (let ((_%$e114694%_ (number? _%x114689%_)))
                (if _%$e114694%_
                    _%$e114694%_
                    (let ((_%$e114697%_ (keyword? _%x114689%_)))
                      (if _%$e114697%_
                          _%$e114697%_
                          (let ((_%$e114700%_ (string? _%x114689%_)))
                            (if _%$e114700%_
                                _%$e114700%_
                                (let ((_%$e114703%_ (vector? _%x114689%_)))
                                  (if _%$e114703%_
                                      _%$e114703%_
                                      (u8vector? _%x114689%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e114687%_) (boolean? (gx#stx-e _%e114687%_))))
    (define gx#stx-keyword?
      (lambda (_%e114685%_) (keyword? (gx#stx-e _%e114685%_))))
    (define gx#stx-char? (lambda (_%e114683%_) (char? (gx#stx-e _%e114683%_))))
    (define gx#stx-number?
      (lambda (_%e114681%_) (number? (gx#stx-e _%e114681%_))))
    (define gx#stx-fixnum?
      (lambda (_%e114679%_) (fixnum? (gx#stx-e _%e114679%_))))
    (define gx#stx-string?
      (lambda (_%e114677%_) (string? (gx#stx-e _%e114677%_))))
    (define gx#stx-null? (lambda (_%e114675%_) (null? (gx#stx-e _%e114675%_))))
    (define gx#stx-pair? (lambda (_%e114673%_) (pair? (gx#stx-e _%e114673%_))))
    (define gx#stx-list?
      (lambda (_%e114635%_)
        (let* ((_%g114636114645%_ (gx#stx-e _%e114635%_))
               (_%E114639114649%_
                (lambda ()
                  (error '"No clause matching"
                         _%g114636114645%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K114641114665%_
                 (lambda (_%rest114663%_) (gx#stx-list? _%rest114663%_)))
                (_%K114640114655%_
                 (lambda (_%tail114653%_) (null? _%tail114653%_))))
            (if (##pair? _%g114636114645%_)
                (let* ((_%tl114643114668%_ (##cdr _%g114636114645%_))
                       (_%rest114671%_ _%tl114643114668%_))
                  (gx#stx-list? _%rest114671%_))
                (let ((_%tail114658%_ _%g114636114645%_))
                  (null? _%tail114658%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e114628%_)
        (let* ((_%e114630%_ (gx#stx-e _%e114628%_))
               (_%$e114632%_ (pair? _%e114630%_)))
          (if _%$e114632%_ _%$e114632%_ (null? _%e114630%_)))))
    (define gx#stx-vector?
      (lambda (_%e114626%_) (vector? (gx#stx-e _%e114626%_))))
    (define gx#stx-box? (lambda (_%e114624%_) (box? (gx#stx-e _%e114624%_))))
    (define gx#stx-eq?
      (lambda (_%x114621%_ _%y114622%_)
        (eq? (gx#stx-e _%x114621%_) (gx#stx-e _%y114622%_))))
    (define gx#stx-eqv?
      (lambda (_%x114618%_ _%y114619%_)
        (eqv? (gx#stx-e _%x114618%_) (gx#stx-e _%y114619%_))))
    (define gx#stx-equal?
      (lambda (_%x114615%_ _%y114616%_)
        (equal? (gx#stx-e _%x114615%_) (gx#stx-e _%y114616%_))))
    (define gx#stx-false? (lambda (_%x114613%_) (not (gx#stx-e _%x114613%_))))
    (define gx#stx-identifier
      (lambda (_%template114610%_ . _%args114611%_)
        (gx#datum->syntax__1
         _%template114610%_
         (apply make-symbol (gx#syntax->datum _%args114611%_))
         (gx#stx-source _%template114610%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx114608%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx114608%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx114603%_)
        (if (##structure-direct-instance-of?
             _%stx114603%_
             'gx#identifier-wrap::t)
            (let () (##unchecked-structure-ref _%stx114603%_ '3 '#f '#f))
            (if (##structure-direct-instance-of?
                 _%stx114603%_
                 'gx#syntax-quote::t)
                (let () (##unchecked-structure-ref _%stx114603%_ '4 '#f '#f))
                (let ()
                  (error '"Bad wrap; expected unwrapped identifier"
                         _%stx114603%_))))))
    (define gx#stx-identifier-context
      (lambda (_%stx114599%_)
        (let ((_%stx114601%_ (gx#stx-unwrap__0 _%stx114599%_)))
          (if (gx#identifier-quote? _%stx114601%_)
              (##unchecked-structure-ref _%stx114601%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx114554%_)
        (let* ((_%g114555114565%_ (gx#stx-e _%stx114554%_))
               (_%else114558114573%_ (lambda () '#f)))
          (let ((_%K114561114587%_
                 (lambda (_%rest114584%_ _%hd114585%_)
                   (if (gx#identifier? _%hd114585%_)
                       (gx#identifier-list? _%rest114584%_)
                       '#f)))
                (_%K114560114578%_ (lambda () '#t)))
            (let ((_%try-match114557114581%_
                   (lambda ()
                     (if (##null? _%g114555114565%_)
                         (_%K114560114578%_)
                         (_%else114558114573%_)))))
              (if (##pair? _%g114555114565%_)
                  (let ((_%tl114563114592%_ (##cdr _%g114555114565%_))
                        (_%hd114562114590%_ (##car _%g114555114565%_)))
                    (let ((_%hd114595%_ _%hd114562114590%_)
                          (_%rest114597%_ _%tl114563114592%_))
                      (_%K114561114587%_ _%rest114597%_ _%hd114595%_)))
                  (_%try-match114557114581%_)))))))
    (define gx#genident__%
      (lambda (_%e114531%_ _%src114532%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e114534%_ (gx#stx-e _%e114531%_)))
                   (if (interned-symbol? _%e114534%_) _%e114534%_ 'g)))
         (let ((_%$e114536%_ (gx#stx-source _%e114531%_)))
           (if _%$e114536%_ _%$e114536%_ _%src114532%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e114543%_ 'g) (_%src114545%_ '#f))
          (gx#genident__% _%e114543%_ _%src114545%_))))
    (define gx#genident__1
      (lambda (_%e114547%_)
        (let ((_%src114549%_ '#f))
          (gx#genident__% _%e114547%_ _%src114549%_))))
    (define gx#genident
      (lambda _g115014_
        (let ((_g115013_ (##length _g115014_)))
          (cond ((##fx= _g115013_ 0)
                 (apply (lambda () (gx#genident__0)) _g115014_))
                ((##fx= _g115013_ 1)
                 (apply (lambda (_%e114547%_) (gx#genident__1 _%e114547%_))
                        _g115014_))
                ((##fx= _g115013_ 2)
                 (apply (lambda (_%e114551%_ _%src114552%_)
                          (gx#genident__% _%e114551%_ _%src114552%_))
                        _g115014_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g115014_))))))
    (define gx#gentemps
      (lambda (_%stx-lst114528%_) (gx#stx-map1 gx#genident _%stx-lst114528%_)))
    (define gx#syntax->list
      (lambda (_%stx114526%_) (gx#stx-map1 values _%stx114526%_)))
    (define gx#stx-car
      (lambda (_%stx114523%_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _%stx114523%_)))))
    (define gx#stx-cdr
      (lambda (_%stx114520%_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _%stx114520%_)))))
    (define gx#stx-length
      (lambda (_%stx114485%_)
        (let _%lp114487%_ ((_%rest114489%_ _%stx114485%_) (_%n114490%_ '0))
          (let* ((_%g114491114499%_ (gx#stx-e _%rest114489%_))
                 (_%else114493114507%_ (lambda () _%n114490%_))
                 (_%K114495114512%_
                  (lambda (_%rest114510%_)
                    (_%lp114487%_ _%rest114510%_ (##fx+ _%n114490%_ '1)))))
            (if (##pair? _%g114491114499%_)
                (let* ((_%tl114497114515%_ (##cdr _%g114491114499%_))
                       (_%rest114518%_ _%tl114497114515%_))
                  (_%K114495114512%_ _%rest114518%_))
                (_%else114493114507%_))))))
    (define gx#stx-for-each
      (lambda _g115016_
        (let ((_g115015_ (##length _g115016_)))
          (cond ((##fx= _g115015_ 2)
                 (apply (lambda (_%f114478%_ _%stx114479%_)
                          (gx#stx-for-each1 _%f114478%_ _%stx114479%_))
                        _g115016_))
                ((##fx= _g115015_ 3)
                 (apply (lambda (_%f114481%_ _%xstx114482%_ _%ystx114483%_)
                          (gx#stx-for-each2
                           _%f114481%_
                           _%xstx114482%_
                           _%ystx114483%_))
                        _g115016_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g115016_))))))
    (define gx#stx-for-each1
      (lambda (_%f114428%_ _%stx114429%_)
        (if (procedure? _%f114428%_)
            '#!void
            (error '"expected procedure" _%f114428%_))
        (let _%lp114431%_ ((_%rest114433%_ _%stx114429%_))
          (let* ((_%g114434114444%_ (gx#syntax-e _%rest114433%_))
                 (_%else114437114452%_
                  (lambda () (_%f114428%_ _%rest114433%_))))
            (let ((_%K114440114466%_
                   (lambda (_%rest114463%_ _%hd114464%_)
                     (_%f114428%_ _%hd114464%_)
                     (_%lp114431%_ _%rest114463%_)))
                  (_%K114439114457%_ (lambda () '#!void)))
              (let ((_%try-match114436114460%_
                     (lambda ()
                       (if (##null? _%g114434114444%_)
                           (_%K114439114457%_)
                           (_%else114437114452%_)))))
                (if (##pair? _%g114434114444%_)
                    (let ((_%tl114442114471%_ (##cdr _%g114434114444%_))
                          (_%hd114441114469%_ (##car _%g114434114444%_)))
                      (let ((_%hd114474%_ _%hd114441114469%_)
                            (_%rest114476%_ _%tl114442114471%_))
                        (_%K114440114466%_ _%rest114476%_ _%hd114474%_)))
                    (_%try-match114436114460%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f114333%_ _%xstx114334%_ _%ystx114335%_)
        (if (procedure? _%f114333%_)
            '#!void
            (error '"expected procedure" _%f114333%_))
        (let _%lp114337%_ ((_%xrest114339%_ _%xstx114334%_)
                           (_%yrest114340%_ _%ystx114335%_))
          (let* ((_%g114341114351%_ (gx#syntax-e _%xrest114339%_))
                 (_%else114344114359%_ (lambda () '#!void)))
            (let ((_%K114347114416%_
                   (lambda (_%xrest114385%_ _%xhd114386%_)
                     (let* ((_%g114387114394%_ (gx#syntax-e _%yrest114340%_))
                            (_%E114389114398%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g114387114394%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K114390114404%_
                             (lambda (_%yrest114401%_ _%yhd114402%_)
                               (_%f114333%_ _%xhd114386%_ _%yhd114402%_)
                               (_%lp114337%_
                                _%xrest114385%_
                                _%yrest114401%_))))
                       (if (##pair? _%g114387114394%_)
                           (let ((_%hd114391114407%_ (##car _%g114387114394%_))
                                 (_%tl114392114409%_
                                  (##cdr _%g114387114394%_)))
                             (let* ((_%yhd114412%_ _%hd114391114407%_)
                                    (_%yrest114414%_ _%tl114392114409%_))
                               (_%K114390114404%_
                                _%yrest114414%_
                                _%yhd114412%_)))
                           (_%E114389114398%_)))))
                  (_%K114346114379%_
                   (lambda ()
                     (let* ((_%yrest114363114368%_ _%yrest114340%_)
                            (_%E114365114372%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest114363114368%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K114366114376%_
                             (lambda ()
                               (_%f114333%_ _%xrest114339%_ _%yrest114340%_))))
                       (if (not (gx#stx-null? _%yrest114363114368%_))
                           (_%K114366114376%_)
                           (_%E114365114372%_))))))
              (let ((_%try-match114343114382%_
                     (lambda ()
                       (if (not (null? _%g114341114351%_))
                           (_%K114346114379%_)
                           (_%else114344114359%_)))))
                (if (##pair? _%g114341114351%_)
                    (let ((_%tl114349114421%_ (##cdr _%g114341114351%_))
                          (_%hd114348114419%_ (##car _%g114341114351%_)))
                      (let ((_%xhd114424%_ _%hd114348114419%_)
                            (_%xrest114426%_ _%tl114349114421%_))
                        (_%K114347114416%_ _%xrest114426%_ _%xhd114424%_)))
                    (_%try-match114343114382%_))))))))
    (define gx#stx-map
      (lambda _g115018_
        (let ((_g115017_ (##length _g115018_)))
          (cond ((##fx= _g115017_ 2)
                 (apply (lambda (_%f114326%_ _%stx114327%_)
                          (gx#stx-map1 _%f114326%_ _%stx114327%_))
                        _g115018_))
                ((##fx= _g115017_ 3)
                 (apply (lambda (_%f114329%_ _%xstx114330%_ _%ystx114331%_)
                          (gx#stx-map2
                           _%f114329%_
                           _%xstx114330%_
                           _%ystx114331%_))
                        _g115018_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g115018_))))))
    (define gx#stx-map1
      (lambda (_%f114276%_ _%stx114277%_)
        (if (procedure? _%f114276%_)
            '#!void
            (error '"expected procedure" _%f114276%_))
        (let _%recur114279%_ ((_%rest114281%_ _%stx114277%_))
          (let* ((_%g114282114292%_ (gx#syntax-e _%rest114281%_))
                 (_%else114285114300%_
                  (lambda () (_%f114276%_ _%rest114281%_))))
            (let ((_%K114288114314%_
                   (lambda (_%rest114311%_ _%hd114312%_)
                     (cons (_%f114276%_ _%hd114312%_)
                           (_%recur114279%_ _%rest114311%_))))
                  (_%K114287114305%_ (lambda () '())))
              (let ((_%try-match114284114308%_
                     (lambda ()
                       (if (##null? _%g114282114292%_)
                           (_%K114287114305%_)
                           (_%else114285114300%_)))))
                (if (##pair? _%g114282114292%_)
                    (let ((_%tl114290114319%_ (##cdr _%g114282114292%_))
                          (_%hd114289114317%_ (##car _%g114282114292%_)))
                      (let ((_%hd114322%_ _%hd114289114317%_)
                            (_%rest114324%_ _%tl114290114319%_))
                        (_%K114288114314%_ _%rest114324%_ _%hd114322%_)))
                    (_%try-match114284114308%_))))))))
    (define gx#stx-map2
      (lambda (_%f114181%_ _%xstx114182%_ _%ystx114183%_)
        (if (procedure? _%f114181%_)
            '#!void
            (error '"expected procedure" _%f114181%_))
        (let _%recur114185%_ ((_%xrest114187%_ _%xstx114182%_)
                              (_%yrest114188%_ _%ystx114183%_))
          (let* ((_%g114189114199%_ (gx#syntax-e _%xrest114187%_))
                 (_%else114192114207%_ (lambda () '())))
            (let ((_%K114195114264%_
                   (lambda (_%xrest114233%_ _%xhd114234%_)
                     (let* ((_%g114235114242%_ (gx#syntax-e _%yrest114188%_))
                            (_%E114237114246%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g114235114242%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K114238114252%_
                             (lambda (_%yrest114249%_ _%yhd114250%_)
                               (cons (_%f114181%_ _%xhd114234%_ _%yhd114250%_)
                                     (_%recur114185%_
                                      _%xrest114233%_
                                      _%yrest114249%_)))))
                       (if (##pair? _%g114235114242%_)
                           (let ((_%hd114239114255%_ (##car _%g114235114242%_))
                                 (_%tl114240114257%_
                                  (##cdr _%g114235114242%_)))
                             (let* ((_%yhd114260%_ _%hd114239114255%_)
                                    (_%yrest114262%_ _%tl114240114257%_))
                               (_%K114238114252%_
                                _%yrest114262%_
                                _%yhd114260%_)))
                           (_%E114237114246%_)))))
                  (_%K114194114227%_
                   (lambda ()
                     (let* ((_%yrest114211114216%_ _%yrest114188%_)
                            (_%E114213114220%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest114211114216%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K114214114224%_
                             (lambda ()
                               (_%f114181%_ _%xrest114187%_ _%yrest114188%_))))
                       (if (not (gx#stx-null? _%yrest114211114216%_))
                           (_%K114214114224%_)
                           (_%E114213114220%_))))))
              (let ((_%try-match114191114230%_
                     (lambda ()
                       (if (not (null? _%g114189114199%_))
                           (_%K114194114227%_)
                           (_%else114192114207%_)))))
                (if (##pair? _%g114189114199%_)
                    (let ((_%tl114197114269%_ (##cdr _%g114189114199%_))
                          (_%hd114196114267%_ (##car _%g114189114199%_)))
                      (let ((_%xhd114272%_ _%hd114196114267%_)
                            (_%xrest114274%_ _%tl114197114269%_))
                        (_%K114195114264%_ _%xrest114274%_ _%xhd114272%_)))
                    (_%try-match114191114230%_))))))))
    (define gx#stx-andmap
      (lambda (_%f114131%_ _%stx114132%_)
        (if (procedure? _%f114131%_)
            '#!void
            (error '"expected procedure" _%f114131%_))
        (let _%lp114134%_ ((_%rest114136%_ _%stx114132%_))
          (let* ((_%g114137114147%_ (gx#syntax-e _%rest114136%_))
                 (_%else114140114155%_
                  (lambda () (_%f114131%_ _%rest114136%_))))
            (let ((_%K114143114169%_
                   (lambda (_%rest114166%_ _%hd114167%_)
                     (if (_%f114131%_ _%hd114167%_)
                         (_%lp114134%_ _%rest114166%_)
                         '#f)))
                  (_%K114142114160%_ (lambda () '#t)))
              (let ((_%try-match114139114163%_
                     (lambda ()
                       (if (##null? _%g114137114147%_)
                           (_%K114142114160%_)
                           (_%else114140114155%_)))))
                (if (##pair? _%g114137114147%_)
                    (let ((_%tl114145114174%_ (##cdr _%g114137114147%_))
                          (_%hd114144114172%_ (##car _%g114137114147%_)))
                      (let ((_%hd114177%_ _%hd114144114172%_)
                            (_%rest114179%_ _%tl114145114174%_))
                        (_%K114143114169%_ _%rest114179%_ _%hd114177%_)))
                    (_%try-match114139114163%_))))))))
    (define gx#stx-ormap
      (lambda (_%f114078%_ _%stx114079%_)
        (if (procedure? _%f114078%_)
            '#!void
            (error '"expected procedure" _%f114078%_))
        (let _%lp114081%_ ((_%rest114083%_ _%stx114079%_))
          (let* ((_%g114084114094%_ (gx#syntax-e _%rest114083%_))
                 (_%else114087114102%_
                  (lambda () (_%f114078%_ _%rest114083%_))))
            (let ((_%K114090114119%_
                   (lambda (_%rest114113%_ _%hd114114%_)
                     (let ((_%$e114116%_ (_%f114078%_ _%hd114114%_)))
                       (if _%$e114116%_
                           _%$e114116%_
                           (_%lp114081%_ _%rest114113%_)))))
                  (_%K114089114107%_ (lambda () '#f)))
              (let ((_%try-match114086114110%_
                     (lambda ()
                       (if (##null? _%g114084114094%_)
                           (_%K114089114107%_)
                           (_%else114087114102%_)))))
                (if (##pair? _%g114084114094%_)
                    (let ((_%tl114092114124%_ (##cdr _%g114084114094%_))
                          (_%hd114091114122%_ (##car _%g114084114094%_)))
                      (let ((_%hd114127%_ _%hd114091114122%_)
                            (_%rest114129%_ _%tl114092114124%_))
                        (_%K114090114119%_ _%rest114129%_ _%hd114127%_)))
                    (_%try-match114086114110%_))))))))
    (define gx#stx-foldl
      (lambda (_%f114026%_ _%iv114027%_ _%stx114028%_)
        (if (procedure? _%f114026%_)
            '#!void
            (error '"expected procedure" _%f114026%_))
        (let _%lp114030%_ ((_%r114032%_ _%iv114027%_)
                           (_%rest114033%_ _%stx114028%_))
          (let* ((_%g114034114044%_ (gx#syntax-e _%rest114033%_))
                 (_%else114037114052%_
                  (lambda () (_%f114026%_ _%rest114033%_ _%r114032%_))))
            (let ((_%K114040114066%_
                   (lambda (_%rest114063%_ _%hd114064%_)
                     (_%lp114030%_
                      (_%f114026%_ _%hd114064%_ _%r114032%_)
                      _%rest114063%_)))
                  (_%K114039114057%_ (lambda () _%r114032%_)))
              (let ((_%try-match114036114060%_
                     (lambda ()
                       (if (##null? _%g114034114044%_)
                           (_%K114039114057%_)
                           (_%else114037114052%_)))))
                (if (##pair? _%g114034114044%_)
                    (let ((_%tl114042114071%_ (##cdr _%g114034114044%_))
                          (_%hd114041114069%_ (##car _%g114034114044%_)))
                      (let ((_%hd114074%_ _%hd114041114069%_)
                            (_%rest114076%_ _%tl114042114071%_))
                        (_%K114040114066%_ _%rest114076%_ _%hd114074%_)))
                    (_%try-match114036114060%_))))))))
    (define gx#stx-foldr
      (lambda (_%f113975%_ _%iv113976%_ _%stx113977%_)
        (if (procedure? _%f113975%_)
            '#!void
            (error '"expected procedure" _%f113975%_))
        (let _%recur113979%_ ((_%rest113981%_ _%stx113977%_))
          (let* ((_%g113982113992%_ (gx#syntax-e _%rest113981%_))
                 (_%else113985114000%_
                  (lambda () (_%f113975%_ _%rest113981%_ _%iv113976%_))))
            (let ((_%K113988114014%_
                   (lambda (_%rest114011%_ _%hd114012%_)
                     (_%f113975%_
                      _%hd114012%_
                      (_%recur113979%_ _%rest114011%_))))
                  (_%K113987114005%_ (lambda () _%iv113976%_)))
              (let ((_%try-match113984114008%_
                     (lambda ()
                       (if (##null? _%g113982113992%_)
                           (_%K113987114005%_)
                           (_%else113985114000%_)))))
                (if (##pair? _%g113982113992%_)
                    (let ((_%tl113990114019%_ (##cdr _%g113982113992%_))
                          (_%hd113989114017%_ (##car _%g113982113992%_)))
                      (let ((_%hd114022%_ _%hd113989114017%_)
                            (_%rest114024%_ _%tl113990114019%_))
                        (_%K113988114014%_ _%rest114024%_ _%hd114022%_)))
                    (_%try-match113984114008%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx113973%_) (gx#stx-foldl cons '() _%stx113973%_)))
    (define gx#stx-last
      (lambda (_%stx113934%_)
        (let _%lp113936%_ ((_%rest113938%_ _%stx113934%_))
          (let* ((_%g113939113947%_ (gx#syntax-e _%rest113938%_))
                 (_%else113941113955%_ (lambda () _%rest113938%_))
                 (_%K113943113961%_
                  (lambda (_%rest113958%_ _%hd113959%_)
                    (if (gx#stx-null? _%rest113958%_)
                        _%hd113959%_
                        (_%lp113936%_ _%rest113958%_)))))
            (if (##pair? _%g113939113947%_)
                (let ((_%hd113944113964%_ (##car _%g113939113947%_))
                      (_%tl113945113966%_ (##cdr _%g113939113947%_)))
                  (let* ((_%hd113969%_ _%hd113944113964%_)
                         (_%rest113971%_ _%tl113945113966%_))
                    (_%K113943113961%_ _%rest113971%_ _%hd113969%_)))
                (_%else113941113955%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx113905%_)
        (let _%lp113907%_ ((_%hd113909%_ _%stx113905%_))
          (let* ((_%g113910113917%_ (gx#syntax-e _%hd113909%_))
                 (_%E113912113921%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g113910113917%_
                           '([_ . rest]))
                    '#!void))
                 (_%K113913113926%_
                  (lambda (_%rest113924%_)
                    (if (gx#stx-pair? _%rest113924%_)
                        (_%lp113907%_ _%rest113924%_)
                        _%hd113909%_))))
            (if (##pair? _%g113910113917%_)
                (let* ((_%tl113915113929%_ (##cdr _%g113910113917%_))
                       (_%rest113932%_ _%tl113915113929%_))
                  (_%K113913113926%_ _%rest113932%_))
                (_%E113912113921%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx113874%_ _%k113875%_)
        (let _%lp113877%_ ((_%rest113879%_ _%stx113874%_)
                           (_%k113880%_ _%k113875%_))
          (if (fxpositive? _%k113880%_)
              (let* ((_%g113881113888%_ (gx#syntax-e _%rest113879%_))
                     (_%E113883113892%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g113881113888%_
                               '([_ . rest]))
                        '#!void))
                     (_%K113884113897%_
                      (lambda (_%rest113895%_)
                        (_%lp113877%_ _%rest113895%_ (##fx- _%k113880%_ '1)))))
                (if (##pair? _%g113881113888%_)
                    (let* ((_%tl113886113900%_ (##cdr _%g113881113888%_))
                           (_%rest113903%_ _%tl113886113900%_))
                      (_%K113884113897%_ _%rest113903%_))
                    (_%E113883113892%_)))
              _%rest113879%_))))
    (define gx#stx-list-ref
      (lambda (_%stx113871%_ _%k113872%_)
        (gx#stx-car (gx#stx-list-tail _%stx113871%_ _%k113872%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx113783%_ _%key?113784%_)
        (if (procedure? _%key?113784%_)
            '#!void
            (error '"expected procedure" _%key?113784%_))
        (let _%lp113786%_ ((_%rest113788%_ _%stx113783%_))
          (let* ((_%g113789113799%_ (gx#stx-e _%rest113788%_))
                 (_%else113792113807%_ (lambda () '#f)))
            (let ((_%K113795113849%_
                   (lambda (_%rest113818%_ _%hd113819%_)
                     (if (_%key?113784%_ _%hd113819%_)
                         (let* ((_%g113820113828%_ (gx#stx-e _%rest113818%_))
                                (_%else113822113836%_ (lambda () '#f))
                                (_%K113824113841%_
                                 (lambda (_%rest113839%_)
                                   (_%lp113786%_ _%rest113839%_))))
                           (if (##pair? _%g113820113828%_)
                               (let* ((_%tl113826113844%_
                                       (##cdr _%g113820113828%_))
                                      (_%rest113847%_ _%tl113826113844%_))
                                 (_%lp113786%_ _%rest113847%_))
                               (_%else113822113836%_)))
                         '#f)))
                  (_%K113794113812%_ (lambda () '#t)))
              (let ((_%try-match113791113815%_
                     (lambda ()
                       (if (##null? _%g113789113799%_)
                           (_%K113794113812%_)
                           (_%else113792113807%_)))))
                (if (##pair? _%g113789113799%_)
                    (let ((_%tl113797113854%_ (##cdr _%g113789113799%_))
                          (_%hd113796113852%_ (##car _%g113789113799%_)))
                      (let ((_%hd113857%_ _%hd113796113852%_)
                            (_%rest113859%_ _%tl113797113854%_))
                        (_%K113795113849%_ _%rest113859%_ _%hd113857%_)))
                    (_%try-match113791113815%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx113864%_)
        (let ((_%key?113866%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx113864%_ _%key?113866%_))))
    (define gx#stx-plist?
      (lambda _g115020_
        (let ((_g115019_ (##length _g115020_)))
          (cond ((##fx= _g115019_ 1)
                 (apply (lambda (_%stx113864%_)
                          (gx#stx-plist?__0 _%stx113864%_))
                        _g115020_))
                ((##fx= _g115019_ 2)
                 (apply (lambda (_%stx113868%_ _%key?113869%_)
                          (gx#stx-plist?__% _%stx113868%_ _%key?113869%_))
                        _g115020_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g115020_))))))
    (define gx#stx-getq__%
      (lambda (_%key113701%_ _%stx113702%_ _%key=?113703%_)
        (if (procedure? _%key=?113703%_)
            '#!void
            (error '"expected procedure" _%key=?113703%_))
        (let _%lp113705%_ ((_%rest113707%_ _%stx113702%_))
          (let* ((_%g113708113716%_ (gx#syntax-e _%rest113707%_))
                 (_%else113710113724%_ (lambda () '#f))
                 (_%K113712113758%_
                  (lambda (_%rest113727%_ _%hd113728%_)
                    (let* ((_%g113729113736%_ (gx#syntax-e _%rest113727%_))
                           (_%E113731113740%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g113729113736%_
                                     '([val . rest]))
                              '#!void))
                           (_%K113732113746%_
                            (lambda (_%rest113743%_ _%val113744%_)
                              (if (_%key=?113703%_ _%hd113728%_ _%key113701%_)
                                  _%val113744%_
                                  (_%lp113705%_ _%rest113743%_)))))
                      (if (##pair? _%g113729113736%_)
                          (let ((_%hd113733113749%_ (##car _%g113729113736%_))
                                (_%tl113734113751%_ (##cdr _%g113729113736%_)))
                            (let* ((_%val113754%_ _%hd113733113749%_)
                                   (_%rest113756%_ _%tl113734113751%_))
                              (_%K113732113746%_
                               _%rest113756%_
                               _%val113754%_)))
                          (_%E113731113740%_))))))
            (if (##pair? _%g113708113716%_)
                (let ((_%hd113713113761%_ (##car _%g113708113716%_))
                      (_%tl113714113763%_ (##cdr _%g113708113716%_)))
                  (let* ((_%hd113766%_ _%hd113713113761%_)
                         (_%rest113768%_ _%tl113714113763%_))
                    (_%K113712113758%_ _%rest113768%_ _%hd113766%_)))
                (_%else113710113724%_))))))
    (define gx#stx-getq__0
      (lambda (_%key113773%_ _%stx113774%_)
        (let ((_%key=?113776%_ gx#stx-eq?))
          (gx#stx-getq__% _%key113773%_ _%stx113774%_ _%key=?113776%_))))
    (define gx#stx-getq
      (lambda _g115022_
        (let ((_g115021_ (##length _g115022_)))
          (cond ((##fx= _g115021_ 2)
                 (apply (lambda (_%key113773%_ _%stx113774%_)
                          (gx#stx-getq__0 _%key113773%_ _%stx113774%_))
                        _g115022_))
                ((##fx= _g115021_ 3)
                 (apply (lambda (_%key113778%_ _%stx113779%_ _%key=?113780%_)
                          (gx#stx-getq__%
                           _%key113778%_
                           _%stx113779%_
                           _%key=?113780%_))
                        _g115022_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g115022_))))))))

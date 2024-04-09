(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1712696213)
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
      (lambda _%$args114955%_
        (apply make-instance gx#identifier-wrap::t _%$args114955%_)))
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
      (lambda _%$args114952%_
        (apply make-instance gx#syntax-wrap::t _%$args114952%_)))
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
      (lambda _%$args114949%_
        (apply make-instance gx#syntax-quote::t _%$args114949%_)))
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
      (lambda (_%stx114947%_) (symbol? (gx#stx-e _%stx114947%_))))
    (define gx#identifier-quote?
      (lambda (_%stx114945%_)
        (if (##structure-direct-instance-of? _%stx114945%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx114945%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx114940%_)
        (if (##structure-direct-instance-of? _%stx114940%_ 'gx#syntax-quote::t)
            (let () '#t)
            (if (##structure-direct-instance-of?
                 _%stx114940%_
                 'gx#syntax-wrap::t)
                (let ()
                  (gx#sealed-syntax?
                   (##unchecked-structure-ref _%stx114940%_ '1 '#f '#f)))
                (let () '#f)))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx114935%_)
        (if (##structure-direct-instance-of? _%stx114935%_ 'gx#syntax-quote::t)
            (let () _%stx114935%_)
            (if (##structure-direct-instance-of?
                 _%stx114935%_
                 'gx#syntax-wrap::t)
                (let ()
                  (gx#sealed-syntax-unwrap
                   (##unchecked-structure-ref _%stx114935%_ '1 '#f '#f)))
                (let () '#f)))))
    (define gx#syntax-e
      (lambda (_%stx114909%_)
        (if (##structure-direct-instance-of? _%stx114909%_ 'gx#syntax-wrap::t)
            (let _%lp114912%_ ((_%e114914%_
                                (##unchecked-structure-ref
                                 _%stx114909%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks114915%_
                                (cons (##unchecked-structure-ref
                                       _%stx114909%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e114914%_)
                  (let ((_%$e114918%_
                         (##type-id (##structure-type _%e114914%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e114918%_)
                        (_%lp114912%_
                         (##unchecked-structure-ref _%e114914%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e114914%_ '3 '#f '#f)
                          _%marks114915%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e114918%_)
                                (eq? 'gx#identifier-wrap::t _%$e114918%_))
                            (##unchecked-structure-ref _%e114914%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e114918%_)
                                (_%lp114912%_
                                 (##unchecked-structure-ref
                                  _%e114914%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks114915%_)
                                _%e114914%_))))
                  (if (null? _%marks114915%_)
                      (let () _%e114914%_)
                      (if (pair? _%e114914%_)
                          (let ()
                            (cons (gx#stx-wrap
                                   (car _%e114914%_)
                                   _%marks114915%_)
                                  (gx#stx-wrap
                                   (cdr _%e114914%_)
                                   _%marks114915%_)))
                          (if (vector? _%e114914%_)
                              (let ()
                                (vector-map
                                 (lambda (_%g114926114928%_)
                                   (gx#stx-wrap
                                    _%g114926114928%_
                                    _%marks114915%_))
                                 _%e114914%_))
                              (if (box? _%e114914%_)
                                  (let ()
                                    (box (gx#stx-wrap
                                          (unbox _%e114914%_)
                                          _%marks114915%_)))
                                  (let () _%e114914%_)))))))
            (if (##structure-instance-of? _%stx114909%_ 'gerbil#AST::t)
                (let () (##unchecked-structure-ref _%stx114909%_ '1 '#f '#f))
                (let () _%stx114909%_)))))
    (define gx#syntax->datum
      (lambda (_%stx114902%_)
        (if (##structure-instance-of? _%stx114902%_ 'gerbil#AST::t)
            (let ()
              (gx#syntax->datum
               (##unchecked-structure-ref _%stx114902%_ '1 '#f '#f)))
            (if (pair? _%stx114902%_)
                (let ()
                  (cons (gx#syntax->datum (car _%stx114902%_))
                        (gx#syntax->datum (cdr _%stx114902%_))))
                (if (vector? _%stx114902%_)
                    (let () (vector-map gx#syntax->datum _%stx114902%_))
                    (if (box? _%stx114902%_)
                        (let () (box (gx#syntax->datum (unbox _%stx114902%_))))
                        (let () _%stx114902%_)))))))
    (define gx#datum->syntax__%
      (lambda (_%stx114836%_ _%datum114837%_ _%src114838%_ _%quote?114839%_)
        (letrec ((_%wrap-datum114841%_
                  (lambda (_%e114874%_ _%marks114875%_)
                    (_%wrap-inner114843%_
                     _%e114874%_
                     (lambda (_%g114876114878%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g114876114878%_
                        _%src114838%_
                        _%marks114875%_)))))
                 (_%wrap-quote114842%_
                  (lambda (_%e114866%_ _%ctx114867%_ _%marks114868%_)
                    (_%wrap-inner114843%_
                     _%e114866%_
                     (lambda (_%g114869114871%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g114869114871%_
                        _%src114838%_
                        _%ctx114867%_
                        _%marks114868%_)))))
                 (_%wrap-inner114843%_
                  (lambda (_%e114854%_ _%wrap-e114855%_)
                    (let _%recur114857%_ ((_%e114859%_ _%e114854%_))
                      (if (symbol? _%e114859%_)
                          (let () (_%wrap-e114855%_ _%e114859%_))
                          (if (pair? _%e114859%_)
                              (let ()
                                (cons (_%recur114857%_ (car _%e114859%_))
                                      (_%recur114857%_ (cdr _%e114859%_))))
                              (if (vector? _%e114859%_)
                                  (let ()
                                    (vector-map _%recur114857%_ _%e114859%_))
                                  (if (box? _%e114859%_)
                                      (let ()
                                        (box (_%recur114857%_
                                              (unbox _%e114859%_))))
                                      (let () _%e114859%_))))))))
                 (_%wrap-outer114844%_
                  (lambda (_%e114852%_)
                    (if (##structure-instance-of? _%e114852%_ 'gerbil#AST::t)
                        _%e114852%_
                        (##structure gx#AST::t _%e114852%_ _%src114838%_)))))
          (if (##structure-instance-of? _%datum114837%_ 'gerbil#AST::t)
              (let () _%datum114837%_)
              (if (not _%stx114836%_)
                  (let ()
                    (##structure gx#AST::t _%datum114837%_ _%src114838%_))
                  (if (gx#identifier? _%stx114836%_)
                      (let ((_%stx114849%_ (gx#stx-unwrap__0 _%stx114836%_)))
                        (_%wrap-outer114844%_
                         (if (##structure-direct-instance-of?
                              _%stx114849%_
                              'gx#syntax-quote::t)
                             (if _%quote?114839%_
                                 (_%wrap-quote114842%_
                                  _%datum114837%_
                                  (##unchecked-structure-ref
                                   _%stx114849%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx114849%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum114841%_
                                  _%datum114837%_
                                  (##unchecked-structure-ref
                                   _%stx114849%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum114841%_
                              _%datum114837%_
                              (##unchecked-structure-ref
                               _%stx114849%_
                               '3
                               '#f
                               '#f)))))
                      (let ()
                        (error '"Bad template syntax; expected identifier"
                               _%stx114836%_))))))))
    (define gx#datum->syntax__0
      (lambda (_%stx114884%_ _%datum114885%_)
        (let* ((_%src114887%_ '#f) (_%quote?114889%_ '#t))
          (gx#datum->syntax__%
           _%stx114884%_
           _%datum114885%_
           _%src114887%_
           _%quote?114889%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx114891%_ _%datum114892%_ _%src114893%_)
        (let ((_%quote?114895%_ '#t))
          (gx#datum->syntax__%
           _%stx114891%_
           _%datum114892%_
           _%src114893%_
           _%quote?114895%_))))
    (define gx#datum->syntax
      (lambda _g115036_
        (let ((_g115035_ (##length _g115036_)))
          (cond ((##fx= _g115035_ 2)
                 (apply (lambda (_%stx114884%_ _%datum114885%_)
                          (gx#datum->syntax__0 _%stx114884%_ _%datum114885%_))
                        _g115036_))
                ((##fx= _g115035_ 3)
                 (apply (lambda (_%stx114891%_ _%datum114892%_ _%src114893%_)
                          (gx#datum->syntax__1
                           _%stx114891%_
                           _%datum114892%_
                           _%src114893%_))
                        _g115036_))
                ((##fx= _g115035_ 4)
                 (apply (lambda (_%stx114897%_
                                 _%datum114898%_
                                 _%src114899%_
                                 _%quote?114900%_)
                          (gx#datum->syntax__%
                           _%stx114897%_
                           _%datum114898%_
                           _%src114899%_
                           _%quote?114900%_))
                        _g115036_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g115036_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx114802%_ _%marks114803%_)
        (let _%lp114805%_ ((_%e114807%_ _%stx114802%_)
                           (_%marks114808%_ _%marks114803%_)
                           (_%src114809%_ (gx#stx-source _%stx114802%_)))
          (if (##structure-direct-instance-of? _%e114807%_ 'gx#syntax-wrap::t)
              (let ()
                (_%lp114805%_
                 (##unchecked-structure-ref _%e114807%_ '1 '#f '#f)
                 (gx#apply-mark
                  (##unchecked-structure-ref _%e114807%_ '3 '#f '#f)
                  _%marks114808%_)
                 (##unchecked-structure-ref _%e114807%_ '2 '#f '#f)))
              (if (##structure-direct-instance-of?
                   _%e114807%_
                   'gx#identifier-wrap::t)
                  (let ()
                    (if (null? _%marks114808%_)
                        _%e114807%_
                        (##structure
                         gx#identifier-wrap::t
                         (##unchecked-structure-ref _%e114807%_ '1 '#f '#f)
                         (##unchecked-structure-ref _%e114807%_ '2 '#f '#f)
                         (__foldl1
                          gx#apply-mark
                          (##unchecked-structure-ref _%e114807%_ '3 '#f '#f)
                          _%marks114808%_))))
                  (if (##structure-direct-instance-of?
                       _%e114807%_
                       'gx#syntax-quote::t)
                      (let () _%e114807%_)
                      (if (##structure-instance-of? _%e114807%_ 'gerbil#AST::t)
                          (let ()
                            (_%lp114805%_
                             (##unchecked-structure-ref _%e114807%_ '1 '#f '#f)
                             _%marks114808%_
                             (##unchecked-structure-ref
                              _%e114807%_
                              '2
                              '#f
                              '#f)))
                          (if (symbol? _%e114807%_)
                              (let ()
                                (##structure
                                 gx#identifier-wrap::t
                                 _%e114807%_
                                 _%src114809%_
                                 (reverse _%marks114808%_)))
                              (if (null? _%marks114808%_)
                                  (let () _%e114807%_)
                                  (if (pair? _%e114807%_)
                                      (let ()
                                        (cons (gx#stx-wrap
                                               (car _%e114807%_)
                                               _%marks114808%_)
                                              (gx#stx-wrap
                                               (cdr _%e114807%_)
                                               _%marks114808%_)))
                                      (if (vector? _%e114807%_)
                                          (let ()
                                            (vector-map
                                             (lambda (_%g114818114820%_)
                                               (gx#stx-wrap
                                                _%g114818114820%_
                                                _%marks114808%_))
                                             _%e114807%_))
                                          (if (box? _%e114807%_)
                                              (let ()
                                                (box (gx#stx-wrap
                                                      (unbox _%e114807%_)
                                                      _%marks114808%_)))
                                              (let () _%e114807%_)))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx114828%_)
        (let ((_%marks114830%_ '()))
          (gx#stx-unwrap__% _%stx114828%_ _%marks114830%_))))
    (define gx#stx-unwrap
      (lambda _g115038_
        (let ((_g115037_ (##length _g115038_)))
          (cond ((##fx= _g115037_ 1)
                 (apply (lambda (_%stx114828%_)
                          (gx#stx-unwrap__0 _%stx114828%_))
                        _g115038_))
                ((##fx= _g115037_ 2)
                 (apply (lambda (_%stx114832%_ _%marks114833%_)
                          (gx#stx-unwrap__% _%stx114832%_ _%marks114833%_))
                        _g115038_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g115038_))))))
    (define gx#stx-wrap
      (lambda (_%stx114795%_ _%marks114796%_)
        (__foldl1
         (lambda (_%mark114798%_ _%stx114799%_)
           (gx#stx-apply-mark _%stx114799%_ _%mark114798%_))
         _%stx114795%_
         _%marks114796%_)))
    (define gx#stx-rewrap
      (lambda (_%stx114789%_ _%marks114790%_)
        (__foldr1
         (lambda (_%mark114792%_ _%stx114793%_)
           (gx#stx-apply-mark _%stx114793%_ _%mark114792%_))
         _%stx114789%_
         _%marks114790%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx114783%_ _%mark114784%_)
        (if (##structure-direct-instance-of? _%stx114783%_ 'gx#syntax-quote::t)
            (let () _%stx114783%_)
            (if (and (##structure-direct-instance-of?
                      _%stx114783%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark114784%_
                          (##unchecked-structure-ref
                           _%stx114783%_
                           '3
                           '#f
                           '#f)))
                (let () (##unchecked-structure-ref _%stx114783%_ '1 '#f '#f))
                (let ()
                  (##structure
                   gx#syntax-wrap::t
                   _%stx114783%_
                   (gx#stx-source _%stx114783%_)
                   _%mark114784%_))))))
    (define gx#apply-mark
      (lambda (_%mark114747%_ _%marks114748%_)
        (let* ((_%marks114749114757%_ _%marks114748%_)
               (_%else114751114765%_
                (lambda () (cons _%mark114747%_ _%marks114748%_)))
               (_%K114753114771%_
                (lambda (_%rest114768%_ _%hd114769%_)
                  (if (eq? _%mark114747%_ _%hd114769%_)
                      _%rest114768%_
                      (cons _%mark114747%_ _%marks114748%_)))))
          (if (##pair? _%marks114749114757%_)
              (let ((_%hd114754114774%_ (##car _%marks114749114757%_))
                    (_%tl114755114776%_ (##cdr _%marks114749114757%_)))
                (let* ((_%hd114779%_ _%hd114754114774%_)
                       (_%rest114781%_ _%tl114755114776%_))
                  (_%K114753114771%_ _%rest114781%_ _%hd114779%_)))
              (_%else114751114765%_)))))
    (define gx#stx-e
      (lambda (_%stx114742%_)
        (if (##structure-direct-instance-of? _%stx114742%_ 'gx#syntax-wrap::t)
            (let ()
              (gx#stx-e (##unchecked-structure-ref _%stx114742%_ '1 '#f '#f)))
            (if (##structure-instance-of? _%stx114742%_ 'gerbil#AST::t)
                (let () (##unchecked-structure-ref _%stx114742%_ '1 '#f '#f))
                (let () _%stx114742%_)))))
    (define gx#stx-source
      (lambda (_%stx114740%_)
        (if (##structure-instance-of? _%stx114740%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx114740%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx114734%_ _%src114735%_)
        (if (or (##structure-instance-of? _%stx114734%_ 'gerbil#AST::t)
                (not _%src114735%_))
            _%stx114734%_
            (##structure gx#AST::t _%stx114734%_ _%src114735%_))))
    (define gx#stx-datum?
      (lambda (_%stx114732%_) (gx#self-quoting? (gx#stx-e _%stx114732%_))))
    (define gx#self-quoting?
      (lambda (_%x114715%_)
        (let ((_%$e114717%_ (immediate? _%x114715%_)))
          (if _%$e114717%_
              _%$e114717%_
              (let ((_%$e114720%_ (number? _%x114715%_)))
                (if _%$e114720%_
                    _%$e114720%_
                    (let ((_%$e114723%_ (keyword? _%x114715%_)))
                      (if _%$e114723%_
                          _%$e114723%_
                          (let ((_%$e114726%_ (string? _%x114715%_)))
                            (if _%$e114726%_
                                _%$e114726%_
                                (let ((_%$e114729%_ (vector? _%x114715%_)))
                                  (if _%$e114729%_
                                      _%$e114729%_
                                      (u8vector? _%x114715%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e114713%_) (boolean? (gx#stx-e _%e114713%_))))
    (define gx#stx-keyword?
      (lambda (_%e114711%_) (keyword? (gx#stx-e _%e114711%_))))
    (define gx#stx-char? (lambda (_%e114709%_) (char? (gx#stx-e _%e114709%_))))
    (define gx#stx-number?
      (lambda (_%e114707%_) (number? (gx#stx-e _%e114707%_))))
    (define gx#stx-fixnum?
      (lambda (_%e114705%_) (fixnum? (gx#stx-e _%e114705%_))))
    (define gx#stx-string?
      (lambda (_%e114703%_) (string? (gx#stx-e _%e114703%_))))
    (define gx#stx-null? (lambda (_%e114701%_) (null? (gx#stx-e _%e114701%_))))
    (define gx#stx-pair? (lambda (_%e114699%_) (pair? (gx#stx-e _%e114699%_))))
    (define gx#stx-list?
      (lambda (_%e114661%_)
        (let* ((_%g114662114671%_ (gx#stx-e _%e114661%_))
               (_%E114665114675%_
                (lambda ()
                  (error '"No clause matching"
                         _%g114662114671%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K114667114691%_
                 (lambda (_%rest114689%_) (gx#stx-list? _%rest114689%_)))
                (_%K114666114681%_
                 (lambda (_%tail114679%_) (null? _%tail114679%_))))
            (if (##pair? _%g114662114671%_)
                (let* ((_%tl114669114694%_ (##cdr _%g114662114671%_))
                       (_%rest114697%_ _%tl114669114694%_))
                  (gx#stx-list? _%rest114697%_))
                (let ((_%tail114684%_ _%g114662114671%_))
                  (null? _%tail114684%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e114654%_)
        (let* ((_%e114656%_ (gx#stx-e _%e114654%_))
               (_%$e114658%_ (pair? _%e114656%_)))
          (if _%$e114658%_ _%$e114658%_ (null? _%e114656%_)))))
    (define gx#stx-vector?
      (lambda (_%e114652%_) (vector? (gx#stx-e _%e114652%_))))
    (define gx#stx-box? (lambda (_%e114650%_) (box? (gx#stx-e _%e114650%_))))
    (define gx#stx-eq?
      (lambda (_%x114647%_ _%y114648%_)
        (eq? (gx#stx-e _%x114647%_) (gx#stx-e _%y114648%_))))
    (define gx#stx-eqv?
      (lambda (_%x114644%_ _%y114645%_)
        (eqv? (gx#stx-e _%x114644%_) (gx#stx-e _%y114645%_))))
    (define gx#stx-equal?
      (lambda (_%x114641%_ _%y114642%_)
        (equal? (gx#stx-e _%x114641%_) (gx#stx-e _%y114642%_))))
    (define gx#stx-false? (lambda (_%x114639%_) (not (gx#stx-e _%x114639%_))))
    (define gx#stx-identifier
      (lambda (_%template114636%_ . _%args114637%_)
        (gx#datum->syntax__1
         _%template114636%_
         (apply make-symbol (gx#syntax->datum _%args114637%_))
         (gx#stx-source _%template114636%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx114634%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx114634%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx114629%_)
        (if (##structure-direct-instance-of?
             _%stx114629%_
             'gx#identifier-wrap::t)
            (let () (##unchecked-structure-ref _%stx114629%_ '3 '#f '#f))
            (if (##structure-direct-instance-of?
                 _%stx114629%_
                 'gx#syntax-quote::t)
                (let () (##unchecked-structure-ref _%stx114629%_ '4 '#f '#f))
                (let ()
                  (error '"Bad wrap; expected unwrapped identifier"
                         _%stx114629%_))))))
    (define gx#stx-identifier-context
      (lambda (_%stx114625%_)
        (let ((_%stx114627%_ (gx#stx-unwrap__0 _%stx114625%_)))
          (if (gx#identifier-quote? _%stx114627%_)
              (##unchecked-structure-ref _%stx114627%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx114580%_)
        (let* ((_%g114581114591%_ (gx#stx-e _%stx114580%_))
               (_%else114584114599%_ (lambda () '#f)))
          (let ((_%K114587114613%_
                 (lambda (_%rest114610%_ _%hd114611%_)
                   (if (gx#identifier? _%hd114611%_)
                       (gx#identifier-list? _%rest114610%_)
                       '#f)))
                (_%K114586114604%_ (lambda () '#t)))
            (let ((_%try-match114583114607%_
                   (lambda ()
                     (if (##null? _%g114581114591%_)
                         (_%K114586114604%_)
                         (_%else114584114599%_)))))
              (if (##pair? _%g114581114591%_)
                  (let ((_%tl114589114618%_ (##cdr _%g114581114591%_))
                        (_%hd114588114616%_ (##car _%g114581114591%_)))
                    (let ((_%hd114621%_ _%hd114588114616%_)
                          (_%rest114623%_ _%tl114589114618%_))
                      (_%K114587114613%_ _%rest114623%_ _%hd114621%_)))
                  (_%try-match114583114607%_)))))))
    (define gx#genident__%
      (lambda (_%e114557%_ _%src114558%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e114560%_ (gx#stx-e _%e114557%_)))
                   (if (interned-symbol? _%e114560%_) _%e114560%_ 'g)))
         (let ((_%$e114562%_ (gx#stx-source _%e114557%_)))
           (if _%$e114562%_ _%$e114562%_ _%src114558%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e114569%_ 'g) (_%src114571%_ '#f))
          (gx#genident__% _%e114569%_ _%src114571%_))))
    (define gx#genident__1
      (lambda (_%e114573%_)
        (let ((_%src114575%_ '#f))
          (gx#genident__% _%e114573%_ _%src114575%_))))
    (define gx#genident
      (lambda _g115040_
        (let ((_g115039_ (##length _g115040_)))
          (cond ((##fx= _g115039_ 0)
                 (apply (lambda () (gx#genident__0)) _g115040_))
                ((##fx= _g115039_ 1)
                 (apply (lambda (_%e114573%_) (gx#genident__1 _%e114573%_))
                        _g115040_))
                ((##fx= _g115039_ 2)
                 (apply (lambda (_%e114577%_ _%src114578%_)
                          (gx#genident__% _%e114577%_ _%src114578%_))
                        _g115040_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g115040_))))))
    (define gx#gentemps
      (lambda (_%stx-lst114554%_) (gx#stx-map1 gx#genident _%stx-lst114554%_)))
    (define gx#syntax->list
      (lambda (_%stx114552%_) (gx#stx-map1 values _%stx114552%_)))
    (define gx#stx-car
      (lambda (_%stx114549%_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _%stx114549%_)))))
    (define gx#stx-cdr
      (lambda (_%stx114546%_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _%stx114546%_)))))
    (define gx#stx-length
      (lambda (_%stx114511%_)
        (let _%lp114513%_ ((_%rest114515%_ _%stx114511%_) (_%n114516%_ '0))
          (let* ((_%g114517114525%_ (gx#stx-e _%rest114515%_))
                 (_%else114519114533%_ (lambda () _%n114516%_))
                 (_%K114521114538%_
                  (lambda (_%rest114536%_)
                    (_%lp114513%_ _%rest114536%_ (##fx+ _%n114516%_ '1)))))
            (if (##pair? _%g114517114525%_)
                (let* ((_%tl114523114541%_ (##cdr _%g114517114525%_))
                       (_%rest114544%_ _%tl114523114541%_))
                  (_%K114521114538%_ _%rest114544%_))
                (_%else114519114533%_))))))
    (define gx#stx-for-each
      (lambda _g115042_
        (let ((_g115041_ (##length _g115042_)))
          (cond ((##fx= _g115041_ 2)
                 (apply (lambda (_%f114504%_ _%stx114505%_)
                          (gx#stx-for-each1 _%f114504%_ _%stx114505%_))
                        _g115042_))
                ((##fx= _g115041_ 3)
                 (apply (lambda (_%f114507%_ _%xstx114508%_ _%ystx114509%_)
                          (gx#stx-for-each2
                           _%f114507%_
                           _%xstx114508%_
                           _%ystx114509%_))
                        _g115042_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g115042_))))))
    (define gx#stx-for-each1
      (lambda (_%f114454%_ _%stx114455%_)
        (if (procedure? _%f114454%_)
            '#!void
            (error '"expected procedure" _%f114454%_))
        (let _%lp114457%_ ((_%rest114459%_ _%stx114455%_))
          (let* ((_%g114460114470%_ (gx#syntax-e _%rest114459%_))
                 (_%else114463114478%_
                  (lambda () (_%f114454%_ _%rest114459%_))))
            (let ((_%K114466114492%_
                   (lambda (_%rest114489%_ _%hd114490%_)
                     (_%f114454%_ _%hd114490%_)
                     (_%lp114457%_ _%rest114489%_)))
                  (_%K114465114483%_ (lambda () '#!void)))
              (let ((_%try-match114462114486%_
                     (lambda ()
                       (if (##null? _%g114460114470%_)
                           (_%K114465114483%_)
                           (_%else114463114478%_)))))
                (if (##pair? _%g114460114470%_)
                    (let ((_%tl114468114497%_ (##cdr _%g114460114470%_))
                          (_%hd114467114495%_ (##car _%g114460114470%_)))
                      (let ((_%hd114500%_ _%hd114467114495%_)
                            (_%rest114502%_ _%tl114468114497%_))
                        (_%K114466114492%_ _%rest114502%_ _%hd114500%_)))
                    (_%try-match114462114486%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f114359%_ _%xstx114360%_ _%ystx114361%_)
        (if (procedure? _%f114359%_)
            '#!void
            (error '"expected procedure" _%f114359%_))
        (let _%lp114363%_ ((_%xrest114365%_ _%xstx114360%_)
                           (_%yrest114366%_ _%ystx114361%_))
          (let* ((_%g114367114377%_ (gx#syntax-e _%xrest114365%_))
                 (_%else114370114385%_ (lambda () '#!void)))
            (let ((_%K114373114442%_
                   (lambda (_%xrest114411%_ _%xhd114412%_)
                     (let* ((_%g114413114420%_ (gx#syntax-e _%yrest114366%_))
                            (_%E114415114424%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g114413114420%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K114416114430%_
                             (lambda (_%yrest114427%_ _%yhd114428%_)
                               (_%f114359%_ _%xhd114412%_ _%yhd114428%_)
                               (_%lp114363%_
                                _%xrest114411%_
                                _%yrest114427%_))))
                       (if (##pair? _%g114413114420%_)
                           (let ((_%hd114417114433%_ (##car _%g114413114420%_))
                                 (_%tl114418114435%_
                                  (##cdr _%g114413114420%_)))
                             (let* ((_%yhd114438%_ _%hd114417114433%_)
                                    (_%yrest114440%_ _%tl114418114435%_))
                               (_%K114416114430%_
                                _%yrest114440%_
                                _%yhd114438%_)))
                           (_%E114415114424%_)))))
                  (_%K114372114405%_
                   (lambda ()
                     (let* ((_%yrest114389114394%_ _%yrest114366%_)
                            (_%E114391114398%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest114389114394%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K114392114402%_
                             (lambda ()
                               (_%f114359%_ _%xrest114365%_ _%yrest114366%_))))
                       (if (not (gx#stx-null? _%yrest114389114394%_))
                           (_%K114392114402%_)
                           (_%E114391114398%_))))))
              (let ((_%try-match114369114408%_
                     (lambda ()
                       (if (not (null? _%g114367114377%_))
                           (_%K114372114405%_)
                           (_%else114370114385%_)))))
                (if (##pair? _%g114367114377%_)
                    (let ((_%tl114375114447%_ (##cdr _%g114367114377%_))
                          (_%hd114374114445%_ (##car _%g114367114377%_)))
                      (let ((_%xhd114450%_ _%hd114374114445%_)
                            (_%xrest114452%_ _%tl114375114447%_))
                        (_%K114373114442%_ _%xrest114452%_ _%xhd114450%_)))
                    (_%try-match114369114408%_))))))))
    (define gx#stx-map
      (lambda _g115044_
        (let ((_g115043_ (##length _g115044_)))
          (cond ((##fx= _g115043_ 2)
                 (apply (lambda (_%f114352%_ _%stx114353%_)
                          (gx#stx-map1 _%f114352%_ _%stx114353%_))
                        _g115044_))
                ((##fx= _g115043_ 3)
                 (apply (lambda (_%f114355%_ _%xstx114356%_ _%ystx114357%_)
                          (gx#stx-map2
                           _%f114355%_
                           _%xstx114356%_
                           _%ystx114357%_))
                        _g115044_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g115044_))))))
    (define gx#stx-map1
      (lambda (_%f114302%_ _%stx114303%_)
        (if (procedure? _%f114302%_)
            '#!void
            (error '"expected procedure" _%f114302%_))
        (let _%recur114305%_ ((_%rest114307%_ _%stx114303%_))
          (let* ((_%g114308114318%_ (gx#syntax-e _%rest114307%_))
                 (_%else114311114326%_
                  (lambda () (_%f114302%_ _%rest114307%_))))
            (let ((_%K114314114340%_
                   (lambda (_%rest114337%_ _%hd114338%_)
                     (cons (_%f114302%_ _%hd114338%_)
                           (_%recur114305%_ _%rest114337%_))))
                  (_%K114313114331%_ (lambda () '())))
              (let ((_%try-match114310114334%_
                     (lambda ()
                       (if (##null? _%g114308114318%_)
                           (_%K114313114331%_)
                           (_%else114311114326%_)))))
                (if (##pair? _%g114308114318%_)
                    (let ((_%tl114316114345%_ (##cdr _%g114308114318%_))
                          (_%hd114315114343%_ (##car _%g114308114318%_)))
                      (let ((_%hd114348%_ _%hd114315114343%_)
                            (_%rest114350%_ _%tl114316114345%_))
                        (_%K114314114340%_ _%rest114350%_ _%hd114348%_)))
                    (_%try-match114310114334%_))))))))
    (define gx#stx-map2
      (lambda (_%f114207%_ _%xstx114208%_ _%ystx114209%_)
        (if (procedure? _%f114207%_)
            '#!void
            (error '"expected procedure" _%f114207%_))
        (let _%recur114211%_ ((_%xrest114213%_ _%xstx114208%_)
                              (_%yrest114214%_ _%ystx114209%_))
          (let* ((_%g114215114225%_ (gx#syntax-e _%xrest114213%_))
                 (_%else114218114233%_ (lambda () '())))
            (let ((_%K114221114290%_
                   (lambda (_%xrest114259%_ _%xhd114260%_)
                     (let* ((_%g114261114268%_ (gx#syntax-e _%yrest114214%_))
                            (_%E114263114272%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g114261114268%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K114264114278%_
                             (lambda (_%yrest114275%_ _%yhd114276%_)
                               (cons (_%f114207%_ _%xhd114260%_ _%yhd114276%_)
                                     (_%recur114211%_
                                      _%xrest114259%_
                                      _%yrest114275%_)))))
                       (if (##pair? _%g114261114268%_)
                           (let ((_%hd114265114281%_ (##car _%g114261114268%_))
                                 (_%tl114266114283%_
                                  (##cdr _%g114261114268%_)))
                             (let* ((_%yhd114286%_ _%hd114265114281%_)
                                    (_%yrest114288%_ _%tl114266114283%_))
                               (_%K114264114278%_
                                _%yrest114288%_
                                _%yhd114286%_)))
                           (_%E114263114272%_)))))
                  (_%K114220114253%_
                   (lambda ()
                     (let* ((_%yrest114237114242%_ _%yrest114214%_)
                            (_%E114239114246%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest114237114242%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K114240114250%_
                             (lambda ()
                               (_%f114207%_ _%xrest114213%_ _%yrest114214%_))))
                       (if (not (gx#stx-null? _%yrest114237114242%_))
                           (_%K114240114250%_)
                           (_%E114239114246%_))))))
              (let ((_%try-match114217114256%_
                     (lambda ()
                       (if (not (null? _%g114215114225%_))
                           (_%K114220114253%_)
                           (_%else114218114233%_)))))
                (if (##pair? _%g114215114225%_)
                    (let ((_%tl114223114295%_ (##cdr _%g114215114225%_))
                          (_%hd114222114293%_ (##car _%g114215114225%_)))
                      (let ((_%xhd114298%_ _%hd114222114293%_)
                            (_%xrest114300%_ _%tl114223114295%_))
                        (_%K114221114290%_ _%xrest114300%_ _%xhd114298%_)))
                    (_%try-match114217114256%_))))))))
    (define gx#stx-andmap
      (lambda (_%f114157%_ _%stx114158%_)
        (if (procedure? _%f114157%_)
            '#!void
            (error '"expected procedure" _%f114157%_))
        (let _%lp114160%_ ((_%rest114162%_ _%stx114158%_))
          (let* ((_%g114163114173%_ (gx#syntax-e _%rest114162%_))
                 (_%else114166114181%_
                  (lambda () (_%f114157%_ _%rest114162%_))))
            (let ((_%K114169114195%_
                   (lambda (_%rest114192%_ _%hd114193%_)
                     (if (_%f114157%_ _%hd114193%_)
                         (_%lp114160%_ _%rest114192%_)
                         '#f)))
                  (_%K114168114186%_ (lambda () '#t)))
              (let ((_%try-match114165114189%_
                     (lambda ()
                       (if (##null? _%g114163114173%_)
                           (_%K114168114186%_)
                           (_%else114166114181%_)))))
                (if (##pair? _%g114163114173%_)
                    (let ((_%tl114171114200%_ (##cdr _%g114163114173%_))
                          (_%hd114170114198%_ (##car _%g114163114173%_)))
                      (let ((_%hd114203%_ _%hd114170114198%_)
                            (_%rest114205%_ _%tl114171114200%_))
                        (_%K114169114195%_ _%rest114205%_ _%hd114203%_)))
                    (_%try-match114165114189%_))))))))
    (define gx#stx-ormap
      (lambda (_%f114104%_ _%stx114105%_)
        (if (procedure? _%f114104%_)
            '#!void
            (error '"expected procedure" _%f114104%_))
        (let _%lp114107%_ ((_%rest114109%_ _%stx114105%_))
          (let* ((_%g114110114120%_ (gx#syntax-e _%rest114109%_))
                 (_%else114113114128%_
                  (lambda () (_%f114104%_ _%rest114109%_))))
            (let ((_%K114116114145%_
                   (lambda (_%rest114139%_ _%hd114140%_)
                     (let ((_%$e114142%_ (_%f114104%_ _%hd114140%_)))
                       (if _%$e114142%_
                           _%$e114142%_
                           (_%lp114107%_ _%rest114139%_)))))
                  (_%K114115114133%_ (lambda () '#f)))
              (let ((_%try-match114112114136%_
                     (lambda ()
                       (if (##null? _%g114110114120%_)
                           (_%K114115114133%_)
                           (_%else114113114128%_)))))
                (if (##pair? _%g114110114120%_)
                    (let ((_%tl114118114150%_ (##cdr _%g114110114120%_))
                          (_%hd114117114148%_ (##car _%g114110114120%_)))
                      (let ((_%hd114153%_ _%hd114117114148%_)
                            (_%rest114155%_ _%tl114118114150%_))
                        (_%K114116114145%_ _%rest114155%_ _%hd114153%_)))
                    (_%try-match114112114136%_))))))))
    (define gx#stx-foldl
      (lambda (_%f114052%_ _%iv114053%_ _%stx114054%_)
        (if (procedure? _%f114052%_)
            '#!void
            (error '"expected procedure" _%f114052%_))
        (let _%lp114056%_ ((_%r114058%_ _%iv114053%_)
                           (_%rest114059%_ _%stx114054%_))
          (let* ((_%g114060114070%_ (gx#syntax-e _%rest114059%_))
                 (_%else114063114078%_
                  (lambda () (_%f114052%_ _%rest114059%_ _%r114058%_))))
            (let ((_%K114066114092%_
                   (lambda (_%rest114089%_ _%hd114090%_)
                     (_%lp114056%_
                      (_%f114052%_ _%hd114090%_ _%r114058%_)
                      _%rest114089%_)))
                  (_%K114065114083%_ (lambda () _%r114058%_)))
              (let ((_%try-match114062114086%_
                     (lambda ()
                       (if (##null? _%g114060114070%_)
                           (_%K114065114083%_)
                           (_%else114063114078%_)))))
                (if (##pair? _%g114060114070%_)
                    (let ((_%tl114068114097%_ (##cdr _%g114060114070%_))
                          (_%hd114067114095%_ (##car _%g114060114070%_)))
                      (let ((_%hd114100%_ _%hd114067114095%_)
                            (_%rest114102%_ _%tl114068114097%_))
                        (_%K114066114092%_ _%rest114102%_ _%hd114100%_)))
                    (_%try-match114062114086%_))))))))
    (define gx#stx-foldr
      (lambda (_%f114001%_ _%iv114002%_ _%stx114003%_)
        (if (procedure? _%f114001%_)
            '#!void
            (error '"expected procedure" _%f114001%_))
        (let _%recur114005%_ ((_%rest114007%_ _%stx114003%_))
          (let* ((_%g114008114018%_ (gx#syntax-e _%rest114007%_))
                 (_%else114011114026%_
                  (lambda () (_%f114001%_ _%rest114007%_ _%iv114002%_))))
            (let ((_%K114014114040%_
                   (lambda (_%rest114037%_ _%hd114038%_)
                     (_%f114001%_
                      _%hd114038%_
                      (_%recur114005%_ _%rest114037%_))))
                  (_%K114013114031%_ (lambda () _%iv114002%_)))
              (let ((_%try-match114010114034%_
                     (lambda ()
                       (if (##null? _%g114008114018%_)
                           (_%K114013114031%_)
                           (_%else114011114026%_)))))
                (if (##pair? _%g114008114018%_)
                    (let ((_%tl114016114045%_ (##cdr _%g114008114018%_))
                          (_%hd114015114043%_ (##car _%g114008114018%_)))
                      (let ((_%hd114048%_ _%hd114015114043%_)
                            (_%rest114050%_ _%tl114016114045%_))
                        (_%K114014114040%_ _%rest114050%_ _%hd114048%_)))
                    (_%try-match114010114034%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx113999%_) (gx#stx-foldl cons '() _%stx113999%_)))
    (define gx#stx-last
      (lambda (_%stx113960%_)
        (let _%lp113962%_ ((_%rest113964%_ _%stx113960%_))
          (let* ((_%g113965113973%_ (gx#syntax-e _%rest113964%_))
                 (_%else113967113981%_ (lambda () _%rest113964%_))
                 (_%K113969113987%_
                  (lambda (_%rest113984%_ _%hd113985%_)
                    (if (gx#stx-null? _%rest113984%_)
                        _%hd113985%_
                        (_%lp113962%_ _%rest113984%_)))))
            (if (##pair? _%g113965113973%_)
                (let ((_%hd113970113990%_ (##car _%g113965113973%_))
                      (_%tl113971113992%_ (##cdr _%g113965113973%_)))
                  (let* ((_%hd113995%_ _%hd113970113990%_)
                         (_%rest113997%_ _%tl113971113992%_))
                    (_%K113969113987%_ _%rest113997%_ _%hd113995%_)))
                (_%else113967113981%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx113931%_)
        (let _%lp113933%_ ((_%hd113935%_ _%stx113931%_))
          (let* ((_%g113936113943%_ (gx#syntax-e _%hd113935%_))
                 (_%E113938113947%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g113936113943%_
                           '([_ . rest]))
                    '#!void))
                 (_%K113939113952%_
                  (lambda (_%rest113950%_)
                    (if (gx#stx-pair? _%rest113950%_)
                        (_%lp113933%_ _%rest113950%_)
                        _%hd113935%_))))
            (if (##pair? _%g113936113943%_)
                (let* ((_%tl113941113955%_ (##cdr _%g113936113943%_))
                       (_%rest113958%_ _%tl113941113955%_))
                  (_%K113939113952%_ _%rest113958%_))
                (_%E113938113947%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx113900%_ _%k113901%_)
        (let _%lp113903%_ ((_%rest113905%_ _%stx113900%_)
                           (_%k113906%_ _%k113901%_))
          (if (fxpositive? _%k113906%_)
              (let* ((_%g113907113914%_ (gx#syntax-e _%rest113905%_))
                     (_%E113909113918%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g113907113914%_
                               '([_ . rest]))
                        '#!void))
                     (_%K113910113923%_
                      (lambda (_%rest113921%_)
                        (_%lp113903%_ _%rest113921%_ (##fx- _%k113906%_ '1)))))
                (if (##pair? _%g113907113914%_)
                    (let* ((_%tl113912113926%_ (##cdr _%g113907113914%_))
                           (_%rest113929%_ _%tl113912113926%_))
                      (_%K113910113923%_ _%rest113929%_))
                    (_%E113909113918%_)))
              _%rest113905%_))))
    (define gx#stx-list-ref
      (lambda (_%stx113897%_ _%k113898%_)
        (gx#stx-car (gx#stx-list-tail _%stx113897%_ _%k113898%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx113809%_ _%key?113810%_)
        (if (procedure? _%key?113810%_)
            '#!void
            (error '"expected procedure" _%key?113810%_))
        (let _%lp113812%_ ((_%rest113814%_ _%stx113809%_))
          (let* ((_%g113815113825%_ (gx#stx-e _%rest113814%_))
                 (_%else113818113833%_ (lambda () '#f)))
            (let ((_%K113821113875%_
                   (lambda (_%rest113844%_ _%hd113845%_)
                     (if (_%key?113810%_ _%hd113845%_)
                         (let* ((_%g113846113854%_ (gx#stx-e _%rest113844%_))
                                (_%else113848113862%_ (lambda () '#f))
                                (_%K113850113867%_
                                 (lambda (_%rest113865%_)
                                   (_%lp113812%_ _%rest113865%_))))
                           (if (##pair? _%g113846113854%_)
                               (let* ((_%tl113852113870%_
                                       (##cdr _%g113846113854%_))
                                      (_%rest113873%_ _%tl113852113870%_))
                                 (_%lp113812%_ _%rest113873%_))
                               (_%else113848113862%_)))
                         '#f)))
                  (_%K113820113838%_ (lambda () '#t)))
              (let ((_%try-match113817113841%_
                     (lambda ()
                       (if (##null? _%g113815113825%_)
                           (_%K113820113838%_)
                           (_%else113818113833%_)))))
                (if (##pair? _%g113815113825%_)
                    (let ((_%tl113823113880%_ (##cdr _%g113815113825%_))
                          (_%hd113822113878%_ (##car _%g113815113825%_)))
                      (let ((_%hd113883%_ _%hd113822113878%_)
                            (_%rest113885%_ _%tl113823113880%_))
                        (_%K113821113875%_ _%rest113885%_ _%hd113883%_)))
                    (_%try-match113817113841%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx113890%_)
        (let ((_%key?113892%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx113890%_ _%key?113892%_))))
    (define gx#stx-plist?
      (lambda _g115046_
        (let ((_g115045_ (##length _g115046_)))
          (cond ((##fx= _g115045_ 1)
                 (apply (lambda (_%stx113890%_)
                          (gx#stx-plist?__0 _%stx113890%_))
                        _g115046_))
                ((##fx= _g115045_ 2)
                 (apply (lambda (_%stx113894%_ _%key?113895%_)
                          (gx#stx-plist?__% _%stx113894%_ _%key?113895%_))
                        _g115046_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g115046_))))))
    (define gx#stx-getq__%
      (lambda (_%key113727%_ _%stx113728%_ _%key=?113729%_)
        (if (procedure? _%key=?113729%_)
            '#!void
            (error '"expected procedure" _%key=?113729%_))
        (let _%lp113731%_ ((_%rest113733%_ _%stx113728%_))
          (let* ((_%g113734113742%_ (gx#syntax-e _%rest113733%_))
                 (_%else113736113750%_ (lambda () '#f))
                 (_%K113738113784%_
                  (lambda (_%rest113753%_ _%hd113754%_)
                    (let* ((_%g113755113762%_ (gx#syntax-e _%rest113753%_))
                           (_%E113757113766%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g113755113762%_
                                     '([val . rest]))
                              '#!void))
                           (_%K113758113772%_
                            (lambda (_%rest113769%_ _%val113770%_)
                              (if (_%key=?113729%_ _%hd113754%_ _%key113727%_)
                                  _%val113770%_
                                  (_%lp113731%_ _%rest113769%_)))))
                      (if (##pair? _%g113755113762%_)
                          (let ((_%hd113759113775%_ (##car _%g113755113762%_))
                                (_%tl113760113777%_ (##cdr _%g113755113762%_)))
                            (let* ((_%val113780%_ _%hd113759113775%_)
                                   (_%rest113782%_ _%tl113760113777%_))
                              (_%K113758113772%_
                               _%rest113782%_
                               _%val113780%_)))
                          (_%E113757113766%_))))))
            (if (##pair? _%g113734113742%_)
                (let ((_%hd113739113787%_ (##car _%g113734113742%_))
                      (_%tl113740113789%_ (##cdr _%g113734113742%_)))
                  (let* ((_%hd113792%_ _%hd113739113787%_)
                         (_%rest113794%_ _%tl113740113789%_))
                    (_%K113738113784%_ _%rest113794%_ _%hd113792%_)))
                (_%else113736113750%_))))))
    (define gx#stx-getq__0
      (lambda (_%key113799%_ _%stx113800%_)
        (let ((_%key=?113802%_ gx#stx-eq?))
          (gx#stx-getq__% _%key113799%_ _%stx113800%_ _%key=?113802%_))))
    (define gx#stx-getq
      (lambda _g115048_
        (let ((_g115047_ (##length _g115048_)))
          (cond ((##fx= _g115047_ 2)
                 (apply (lambda (_%key113799%_ _%stx113800%_)
                          (gx#stx-getq__0 _%key113799%_ _%stx113800%_))
                        _g115048_))
                ((##fx= _g115047_ 3)
                 (apply (lambda (_%key113804%_ _%stx113805%_ _%key=?113806%_)
                          (gx#stx-getq__%
                           _%key113804%_
                           _%stx113805%_
                           _%key=?113806%_))
                        _g115048_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g115048_))))))))

(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1712526089)
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
      (lambda _%$args114930%_
        (apply make-instance gx#identifier-wrap::t _%$args114930%_)))
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
      (lambda _%$args114927%_
        (apply make-instance gx#syntax-wrap::t _%$args114927%_)))
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
      (lambda _%$args114924%_
        (apply make-instance gx#syntax-quote::t _%$args114924%_)))
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
      (lambda (_%stx114922%_) (symbol? (gx#stx-e _%stx114922%_))))
    (define gx#identifier-quote?
      (lambda (_%stx114920%_)
        (if (##structure-direct-instance-of? _%stx114920%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx114920%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx114915%_)
        (if (##structure-direct-instance-of? _%stx114915%_ 'gx#syntax-quote::t)
            (let () '#t)
            (if (##structure-direct-instance-of?
                 _%stx114915%_
                 'gx#syntax-wrap::t)
                (let ()
                  (gx#sealed-syntax?
                   (##unchecked-structure-ref _%stx114915%_ '1 '#f '#f)))
                (let () '#f)))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx114910%_)
        (if (##structure-direct-instance-of? _%stx114910%_ 'gx#syntax-quote::t)
            (let () _%stx114910%_)
            (if (##structure-direct-instance-of?
                 _%stx114910%_
                 'gx#syntax-wrap::t)
                (let ()
                  (gx#sealed-syntax-unwrap
                   (##unchecked-structure-ref _%stx114910%_ '1 '#f '#f)))
                (let () '#f)))))
    (define gx#syntax-e
      (lambda (_%stx114884%_)
        (if (##structure-direct-instance-of? _%stx114884%_ 'gx#syntax-wrap::t)
            (let _%lp114887%_ ((_%e114889%_
                                (##unchecked-structure-ref
                                 _%stx114884%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks114890%_
                                (cons (##unchecked-structure-ref
                                       _%stx114884%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e114889%_)
                  (let ((_%$e114893%_
                         (##type-id (##structure-type _%e114889%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e114893%_)
                        (_%lp114887%_
                         (##unchecked-structure-ref _%e114889%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e114889%_ '3 '#f '#f)
                          _%marks114890%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e114893%_)
                                (eq? 'gx#identifier-wrap::t _%$e114893%_))
                            (##unchecked-structure-ref _%e114889%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e114893%_)
                                (_%lp114887%_
                                 (##unchecked-structure-ref
                                  _%e114889%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks114890%_)
                                _%e114889%_))))
                  (if (null? _%marks114890%_)
                      (let () _%e114889%_)
                      (if (pair? _%e114889%_)
                          (let ()
                            (cons (gx#stx-wrap
                                   (car _%e114889%_)
                                   _%marks114890%_)
                                  (gx#stx-wrap
                                   (cdr _%e114889%_)
                                   _%marks114890%_)))
                          (if (vector? _%e114889%_)
                              (let ()
                                (vector-map
                                 (lambda (_%g114901114903%_)
                                   (gx#stx-wrap
                                    _%g114901114903%_
                                    _%marks114890%_))
                                 _%e114889%_))
                              (if (box? _%e114889%_)
                                  (let ()
                                    (box (gx#stx-wrap
                                          (unbox _%e114889%_)
                                          _%marks114890%_)))
                                  (let () _%e114889%_)))))))
            (if (##structure-instance-of? _%stx114884%_ 'gerbil#AST::t)
                (let () (##unchecked-structure-ref _%stx114884%_ '1 '#f '#f))
                (let () _%stx114884%_)))))
    (define gx#syntax->datum
      (lambda (_%stx114877%_)
        (if (##structure-instance-of? _%stx114877%_ 'gerbil#AST::t)
            (let ()
              (gx#syntax->datum
               (##unchecked-structure-ref _%stx114877%_ '1 '#f '#f)))
            (if (pair? _%stx114877%_)
                (let ()
                  (cons (gx#syntax->datum (car _%stx114877%_))
                        (gx#syntax->datum (cdr _%stx114877%_))))
                (if (vector? _%stx114877%_)
                    (let () (vector-map gx#syntax->datum _%stx114877%_))
                    (if (box? _%stx114877%_)
                        (let () (box (gx#syntax->datum (unbox _%stx114877%_))))
                        (let () _%stx114877%_)))))))
    (define gx#datum->syntax__%
      (lambda (_%stx114811%_ _%datum114812%_ _%src114813%_ _%quote?114814%_)
        (letrec ((_%wrap-datum114816%_
                  (lambda (_%e114849%_ _%marks114850%_)
                    (_%wrap-inner114818%_
                     _%e114849%_
                     (lambda (_%g114851114853%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g114851114853%_
                        _%src114813%_
                        _%marks114850%_)))))
                 (_%wrap-quote114817%_
                  (lambda (_%e114841%_ _%ctx114842%_ _%marks114843%_)
                    (_%wrap-inner114818%_
                     _%e114841%_
                     (lambda (_%g114844114846%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g114844114846%_
                        _%src114813%_
                        _%ctx114842%_
                        _%marks114843%_)))))
                 (_%wrap-inner114818%_
                  (lambda (_%e114829%_ _%wrap-e114830%_)
                    (let _%recur114832%_ ((_%e114834%_ _%e114829%_))
                      (if (symbol? _%e114834%_)
                          (let () (_%wrap-e114830%_ _%e114834%_))
                          (if (pair? _%e114834%_)
                              (let ()
                                (cons (_%recur114832%_ (car _%e114834%_))
                                      (_%recur114832%_ (cdr _%e114834%_))))
                              (if (vector? _%e114834%_)
                                  (let ()
                                    (vector-map _%recur114832%_ _%e114834%_))
                                  (if (box? _%e114834%_)
                                      (let ()
                                        (box (_%recur114832%_
                                              (unbox _%e114834%_))))
                                      (let () _%e114834%_))))))))
                 (_%wrap-outer114819%_
                  (lambda (_%e114827%_)
                    (if (##structure-instance-of? _%e114827%_ 'gerbil#AST::t)
                        _%e114827%_
                        (##structure gx#AST::t _%e114827%_ _%src114813%_)))))
          (if (##structure-instance-of? _%datum114812%_ 'gerbil#AST::t)
              (let () _%datum114812%_)
              (if (not _%stx114811%_)
                  (let ()
                    (##structure gx#AST::t _%datum114812%_ _%src114813%_))
                  (if (gx#identifier? _%stx114811%_)
                      (let ((_%stx114824%_ (gx#stx-unwrap__0 _%stx114811%_)))
                        (_%wrap-outer114819%_
                         (if (##structure-direct-instance-of?
                              _%stx114824%_
                              'gx#syntax-quote::t)
                             (if _%quote?114814%_
                                 (_%wrap-quote114817%_
                                  _%datum114812%_
                                  (##unchecked-structure-ref
                                   _%stx114824%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx114824%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum114816%_
                                  _%datum114812%_
                                  (##unchecked-structure-ref
                                   _%stx114824%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum114816%_
                              _%datum114812%_
                              (##unchecked-structure-ref
                               _%stx114824%_
                               '3
                               '#f
                               '#f)))))
                      (let ()
                        (error '"Bad template syntax; expected identifier"
                               _%stx114811%_))))))))
    (define gx#datum->syntax__0
      (lambda (_%stx114859%_ _%datum114860%_)
        (let* ((_%src114862%_ '#f) (_%quote?114864%_ '#t))
          (gx#datum->syntax__%
           _%stx114859%_
           _%datum114860%_
           _%src114862%_
           _%quote?114864%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx114866%_ _%datum114867%_ _%src114868%_)
        (let ((_%quote?114870%_ '#t))
          (gx#datum->syntax__%
           _%stx114866%_
           _%datum114867%_
           _%src114868%_
           _%quote?114870%_))))
    (define gx#datum->syntax
      (lambda _g115011_
        (let ((_g115010_ (##length _g115011_)))
          (cond ((##fx= _g115010_ 2)
                 (apply (lambda (_%stx114859%_ _%datum114860%_)
                          (gx#datum->syntax__0 _%stx114859%_ _%datum114860%_))
                        _g115011_))
                ((##fx= _g115010_ 3)
                 (apply (lambda (_%stx114866%_ _%datum114867%_ _%src114868%_)
                          (gx#datum->syntax__1
                           _%stx114866%_
                           _%datum114867%_
                           _%src114868%_))
                        _g115011_))
                ((##fx= _g115010_ 4)
                 (apply (lambda (_%stx114872%_
                                 _%datum114873%_
                                 _%src114874%_
                                 _%quote?114875%_)
                          (gx#datum->syntax__%
                           _%stx114872%_
                           _%datum114873%_
                           _%src114874%_
                           _%quote?114875%_))
                        _g115011_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g115011_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx114777%_ _%marks114778%_)
        (let _%lp114780%_ ((_%e114782%_ _%stx114777%_)
                           (_%marks114783%_ _%marks114778%_)
                           (_%src114784%_ (gx#stx-source _%stx114777%_)))
          (if (##structure-direct-instance-of? _%e114782%_ 'gx#syntax-wrap::t)
              (let ()
                (_%lp114780%_
                 (##unchecked-structure-ref _%e114782%_ '1 '#f '#f)
                 (gx#apply-mark
                  (##unchecked-structure-ref _%e114782%_ '3 '#f '#f)
                  _%marks114783%_)
                 (##unchecked-structure-ref _%e114782%_ '2 '#f '#f)))
              (if (##structure-direct-instance-of?
                   _%e114782%_
                   'gx#identifier-wrap::t)
                  (let ()
                    (if (null? _%marks114783%_)
                        _%e114782%_
                        (##structure
                         gx#identifier-wrap::t
                         (##unchecked-structure-ref _%e114782%_ '1 '#f '#f)
                         (##unchecked-structure-ref _%e114782%_ '2 '#f '#f)
                         (__foldl1
                          gx#apply-mark
                          (##unchecked-structure-ref _%e114782%_ '3 '#f '#f)
                          _%marks114783%_))))
                  (if (##structure-direct-instance-of?
                       _%e114782%_
                       'gx#syntax-quote::t)
                      (let () _%e114782%_)
                      (if (##structure-instance-of? _%e114782%_ 'gerbil#AST::t)
                          (let ()
                            (_%lp114780%_
                             (##unchecked-structure-ref _%e114782%_ '1 '#f '#f)
                             _%marks114783%_
                             (##unchecked-structure-ref
                              _%e114782%_
                              '2
                              '#f
                              '#f)))
                          (if (symbol? _%e114782%_)
                              (let ()
                                (##structure
                                 gx#identifier-wrap::t
                                 _%e114782%_
                                 _%src114784%_
                                 (reverse _%marks114783%_)))
                              (if (null? _%marks114783%_)
                                  (let () _%e114782%_)
                                  (if (pair? _%e114782%_)
                                      (let ()
                                        (cons (gx#stx-wrap
                                               (car _%e114782%_)
                                               _%marks114783%_)
                                              (gx#stx-wrap
                                               (cdr _%e114782%_)
                                               _%marks114783%_)))
                                      (if (vector? _%e114782%_)
                                          (let ()
                                            (vector-map
                                             (lambda (_%g114793114795%_)
                                               (gx#stx-wrap
                                                _%g114793114795%_
                                                _%marks114783%_))
                                             _%e114782%_))
                                          (if (box? _%e114782%_)
                                              (let ()
                                                (box (gx#stx-wrap
                                                      (unbox _%e114782%_)
                                                      _%marks114783%_)))
                                              (let () _%e114782%_)))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx114803%_)
        (let ((_%marks114805%_ '()))
          (gx#stx-unwrap__% _%stx114803%_ _%marks114805%_))))
    (define gx#stx-unwrap
      (lambda _g115013_
        (let ((_g115012_ (##length _g115013_)))
          (cond ((##fx= _g115012_ 1)
                 (apply (lambda (_%stx114803%_)
                          (gx#stx-unwrap__0 _%stx114803%_))
                        _g115013_))
                ((##fx= _g115012_ 2)
                 (apply (lambda (_%stx114807%_ _%marks114808%_)
                          (gx#stx-unwrap__% _%stx114807%_ _%marks114808%_))
                        _g115013_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g115013_))))))
    (define gx#stx-wrap
      (lambda (_%stx114770%_ _%marks114771%_)
        (__foldl1
         (lambda (_%mark114773%_ _%stx114774%_)
           (gx#stx-apply-mark _%stx114774%_ _%mark114773%_))
         _%stx114770%_
         _%marks114771%_)))
    (define gx#stx-rewrap
      (lambda (_%stx114764%_ _%marks114765%_)
        (__foldr1
         (lambda (_%mark114767%_ _%stx114768%_)
           (gx#stx-apply-mark _%stx114768%_ _%mark114767%_))
         _%stx114764%_
         _%marks114765%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx114758%_ _%mark114759%_)
        (if (##structure-direct-instance-of? _%stx114758%_ 'gx#syntax-quote::t)
            (let () _%stx114758%_)
            (if (and (##structure-direct-instance-of?
                      _%stx114758%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark114759%_
                          (##unchecked-structure-ref
                           _%stx114758%_
                           '3
                           '#f
                           '#f)))
                (let () (##unchecked-structure-ref _%stx114758%_ '1 '#f '#f))
                (let ()
                  (##structure
                   gx#syntax-wrap::t
                   _%stx114758%_
                   (gx#stx-source _%stx114758%_)
                   _%mark114759%_))))))
    (define gx#apply-mark
      (lambda (_%mark114722%_ _%marks114723%_)
        (let* ((_%marks114724114732%_ _%marks114723%_)
               (_%else114726114740%_
                (lambda () (cons _%mark114722%_ _%marks114723%_)))
               (_%K114728114746%_
                (lambda (_%rest114743%_ _%hd114744%_)
                  (if (eq? _%mark114722%_ _%hd114744%_)
                      _%rest114743%_
                      (cons _%mark114722%_ _%marks114723%_)))))
          (if (##pair? _%marks114724114732%_)
              (let ((_%hd114729114749%_ (##car _%marks114724114732%_))
                    (_%tl114730114751%_ (##cdr _%marks114724114732%_)))
                (let* ((_%hd114754%_ _%hd114729114749%_)
                       (_%rest114756%_ _%tl114730114751%_))
                  (_%K114728114746%_ _%rest114756%_ _%hd114754%_)))
              (_%else114726114740%_)))))
    (define gx#stx-e
      (lambda (_%stx114717%_)
        (if (##structure-direct-instance-of? _%stx114717%_ 'gx#syntax-wrap::t)
            (let ()
              (gx#stx-e (##unchecked-structure-ref _%stx114717%_ '1 '#f '#f)))
            (if (##structure-instance-of? _%stx114717%_ 'gerbil#AST::t)
                (let () (##unchecked-structure-ref _%stx114717%_ '1 '#f '#f))
                (let () _%stx114717%_)))))
    (define gx#stx-source
      (lambda (_%stx114715%_)
        (if (##structure-instance-of? _%stx114715%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx114715%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx114709%_ _%src114710%_)
        (if (or (##structure-instance-of? _%stx114709%_ 'gerbil#AST::t)
                (not _%src114710%_))
            _%stx114709%_
            (##structure gx#AST::t _%stx114709%_ _%src114710%_))))
    (define gx#stx-datum?
      (lambda (_%stx114707%_) (gx#self-quoting? (gx#stx-e _%stx114707%_))))
    (define gx#self-quoting?
      (lambda (_%x114690%_)
        (let ((_%$e114692%_ (immediate? _%x114690%_)))
          (if _%$e114692%_
              _%$e114692%_
              (let ((_%$e114695%_ (number? _%x114690%_)))
                (if _%$e114695%_
                    _%$e114695%_
                    (let ((_%$e114698%_ (keyword? _%x114690%_)))
                      (if _%$e114698%_
                          _%$e114698%_
                          (let ((_%$e114701%_ (string? _%x114690%_)))
                            (if _%$e114701%_
                                _%$e114701%_
                                (let ((_%$e114704%_ (vector? _%x114690%_)))
                                  (if _%$e114704%_
                                      _%$e114704%_
                                      (u8vector? _%x114690%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e114688%_) (boolean? (gx#stx-e _%e114688%_))))
    (define gx#stx-keyword?
      (lambda (_%e114686%_) (keyword? (gx#stx-e _%e114686%_))))
    (define gx#stx-char? (lambda (_%e114684%_) (char? (gx#stx-e _%e114684%_))))
    (define gx#stx-number?
      (lambda (_%e114682%_) (number? (gx#stx-e _%e114682%_))))
    (define gx#stx-fixnum?
      (lambda (_%e114680%_) (fixnum? (gx#stx-e _%e114680%_))))
    (define gx#stx-string?
      (lambda (_%e114678%_) (string? (gx#stx-e _%e114678%_))))
    (define gx#stx-null? (lambda (_%e114676%_) (null? (gx#stx-e _%e114676%_))))
    (define gx#stx-pair? (lambda (_%e114674%_) (pair? (gx#stx-e _%e114674%_))))
    (define gx#stx-list?
      (lambda (_%e114636%_)
        (let* ((_%g114637114646%_ (gx#stx-e _%e114636%_))
               (_%E114640114650%_
                (lambda ()
                  (error '"No clause matching"
                         _%g114637114646%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K114642114666%_
                 (lambda (_%rest114664%_) (gx#stx-list? _%rest114664%_)))
                (_%K114641114656%_
                 (lambda (_%tail114654%_) (null? _%tail114654%_))))
            (if (##pair? _%g114637114646%_)
                (let* ((_%tl114644114669%_ (##cdr _%g114637114646%_))
                       (_%rest114672%_ _%tl114644114669%_))
                  (gx#stx-list? _%rest114672%_))
                (let ((_%tail114659%_ _%g114637114646%_))
                  (null? _%tail114659%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e114629%_)
        (let* ((_%e114631%_ (gx#stx-e _%e114629%_))
               (_%$e114633%_ (pair? _%e114631%_)))
          (if _%$e114633%_ _%$e114633%_ (null? _%e114631%_)))))
    (define gx#stx-vector?
      (lambda (_%e114627%_) (vector? (gx#stx-e _%e114627%_))))
    (define gx#stx-box? (lambda (_%e114625%_) (box? (gx#stx-e _%e114625%_))))
    (define gx#stx-eq?
      (lambda (_%x114622%_ _%y114623%_)
        (eq? (gx#stx-e _%x114622%_) (gx#stx-e _%y114623%_))))
    (define gx#stx-eqv?
      (lambda (_%x114619%_ _%y114620%_)
        (eqv? (gx#stx-e _%x114619%_) (gx#stx-e _%y114620%_))))
    (define gx#stx-equal?
      (lambda (_%x114616%_ _%y114617%_)
        (equal? (gx#stx-e _%x114616%_) (gx#stx-e _%y114617%_))))
    (define gx#stx-false? (lambda (_%x114614%_) (not (gx#stx-e _%x114614%_))))
    (define gx#stx-identifier
      (lambda (_%template114611%_ . _%args114612%_)
        (gx#datum->syntax__1
         _%template114611%_
         (apply make-symbol (gx#syntax->datum _%args114612%_))
         (gx#stx-source _%template114611%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx114609%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx114609%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx114604%_)
        (if (##structure-direct-instance-of?
             _%stx114604%_
             'gx#identifier-wrap::t)
            (let () (##unchecked-structure-ref _%stx114604%_ '3 '#f '#f))
            (if (##structure-direct-instance-of?
                 _%stx114604%_
                 'gx#syntax-quote::t)
                (let () (##unchecked-structure-ref _%stx114604%_ '4 '#f '#f))
                (let ()
                  (error '"Bad wrap; expected unwrapped identifier"
                         _%stx114604%_))))))
    (define gx#stx-identifier-context
      (lambda (_%stx114600%_)
        (let ((_%stx114602%_ (gx#stx-unwrap__0 _%stx114600%_)))
          (if (gx#identifier-quote? _%stx114602%_)
              (##unchecked-structure-ref _%stx114602%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx114555%_)
        (let* ((_%g114556114566%_ (gx#stx-e _%stx114555%_))
               (_%else114559114574%_ (lambda () '#f)))
          (let ((_%K114562114588%_
                 (lambda (_%rest114585%_ _%hd114586%_)
                   (if (gx#identifier? _%hd114586%_)
                       (gx#identifier-list? _%rest114585%_)
                       '#f)))
                (_%K114561114579%_ (lambda () '#t)))
            (let ((_%try-match114558114582%_
                   (lambda ()
                     (if (##null? _%g114556114566%_)
                         (_%K114561114579%_)
                         (_%else114559114574%_)))))
              (if (##pair? _%g114556114566%_)
                  (let ((_%tl114564114593%_ (##cdr _%g114556114566%_))
                        (_%hd114563114591%_ (##car _%g114556114566%_)))
                    (let ((_%hd114596%_ _%hd114563114591%_)
                          (_%rest114598%_ _%tl114564114593%_))
                      (_%K114562114588%_ _%rest114598%_ _%hd114596%_)))
                  (_%try-match114558114582%_)))))))
    (define gx#genident__%
      (lambda (_%e114532%_ _%src114533%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e114535%_ (gx#stx-e _%e114532%_)))
                   (if (interned-symbol? _%e114535%_) _%e114535%_ 'g)))
         (let ((_%$e114537%_ (gx#stx-source _%e114532%_)))
           (if _%$e114537%_ _%$e114537%_ _%src114533%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e114544%_ 'g) (_%src114546%_ '#f))
          (gx#genident__% _%e114544%_ _%src114546%_))))
    (define gx#genident__1
      (lambda (_%e114548%_)
        (let ((_%src114550%_ '#f))
          (gx#genident__% _%e114548%_ _%src114550%_))))
    (define gx#genident
      (lambda _g115015_
        (let ((_g115014_ (##length _g115015_)))
          (cond ((##fx= _g115014_ 0)
                 (apply (lambda () (gx#genident__0)) _g115015_))
                ((##fx= _g115014_ 1)
                 (apply (lambda (_%e114548%_) (gx#genident__1 _%e114548%_))
                        _g115015_))
                ((##fx= _g115014_ 2)
                 (apply (lambda (_%e114552%_ _%src114553%_)
                          (gx#genident__% _%e114552%_ _%src114553%_))
                        _g115015_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g115015_))))))
    (define gx#gentemps
      (lambda (_%stx-lst114529%_) (gx#stx-map1 gx#genident _%stx-lst114529%_)))
    (define gx#syntax->list
      (lambda (_%stx114527%_) (gx#stx-map1 values _%stx114527%_)))
    (define gx#stx-car
      (lambda (_%stx114524%_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _%stx114524%_)))))
    (define gx#stx-cdr
      (lambda (_%stx114521%_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _%stx114521%_)))))
    (define gx#stx-length
      (lambda (_%stx114486%_)
        (let _%lp114488%_ ((_%rest114490%_ _%stx114486%_) (_%n114491%_ '0))
          (let* ((_%g114492114500%_ (gx#stx-e _%rest114490%_))
                 (_%else114494114508%_ (lambda () _%n114491%_))
                 (_%K114496114513%_
                  (lambda (_%rest114511%_)
                    (_%lp114488%_ _%rest114511%_ (##fx+ _%n114491%_ '1)))))
            (if (##pair? _%g114492114500%_)
                (let* ((_%tl114498114516%_ (##cdr _%g114492114500%_))
                       (_%rest114519%_ _%tl114498114516%_))
                  (_%K114496114513%_ _%rest114519%_))
                (_%else114494114508%_))))))
    (define gx#stx-for-each
      (lambda _g115017_
        (let ((_g115016_ (##length _g115017_)))
          (cond ((##fx= _g115016_ 2)
                 (apply (lambda (_%f114479%_ _%stx114480%_)
                          (gx#stx-for-each1 _%f114479%_ _%stx114480%_))
                        _g115017_))
                ((##fx= _g115016_ 3)
                 (apply (lambda (_%f114482%_ _%xstx114483%_ _%ystx114484%_)
                          (gx#stx-for-each2
                           _%f114482%_
                           _%xstx114483%_
                           _%ystx114484%_))
                        _g115017_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g115017_))))))
    (define gx#stx-for-each1
      (lambda (_%f114429%_ _%stx114430%_)
        (if (procedure? _%f114429%_)
            '#!void
            (error '"expected procedure" _%f114429%_))
        (let _%lp114432%_ ((_%rest114434%_ _%stx114430%_))
          (let* ((_%g114435114445%_ (gx#syntax-e _%rest114434%_))
                 (_%else114438114453%_
                  (lambda () (_%f114429%_ _%rest114434%_))))
            (let ((_%K114441114467%_
                   (lambda (_%rest114464%_ _%hd114465%_)
                     (_%f114429%_ _%hd114465%_)
                     (_%lp114432%_ _%rest114464%_)))
                  (_%K114440114458%_ (lambda () '#!void)))
              (let ((_%try-match114437114461%_
                     (lambda ()
                       (if (##null? _%g114435114445%_)
                           (_%K114440114458%_)
                           (_%else114438114453%_)))))
                (if (##pair? _%g114435114445%_)
                    (let ((_%tl114443114472%_ (##cdr _%g114435114445%_))
                          (_%hd114442114470%_ (##car _%g114435114445%_)))
                      (let ((_%hd114475%_ _%hd114442114470%_)
                            (_%rest114477%_ _%tl114443114472%_))
                        (_%K114441114467%_ _%rest114477%_ _%hd114475%_)))
                    (_%try-match114437114461%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f114334%_ _%xstx114335%_ _%ystx114336%_)
        (if (procedure? _%f114334%_)
            '#!void
            (error '"expected procedure" _%f114334%_))
        (let _%lp114338%_ ((_%xrest114340%_ _%xstx114335%_)
                           (_%yrest114341%_ _%ystx114336%_))
          (let* ((_%g114342114352%_ (gx#syntax-e _%xrest114340%_))
                 (_%else114345114360%_ (lambda () '#!void)))
            (let ((_%K114348114417%_
                   (lambda (_%xrest114386%_ _%xhd114387%_)
                     (let* ((_%g114388114395%_ (gx#syntax-e _%yrest114341%_))
                            (_%E114390114399%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g114388114395%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K114391114405%_
                             (lambda (_%yrest114402%_ _%yhd114403%_)
                               (_%f114334%_ _%xhd114387%_ _%yhd114403%_)
                               (_%lp114338%_
                                _%xrest114386%_
                                _%yrest114402%_))))
                       (if (##pair? _%g114388114395%_)
                           (let ((_%hd114392114408%_ (##car _%g114388114395%_))
                                 (_%tl114393114410%_
                                  (##cdr _%g114388114395%_)))
                             (let* ((_%yhd114413%_ _%hd114392114408%_)
                                    (_%yrest114415%_ _%tl114393114410%_))
                               (_%K114391114405%_
                                _%yrest114415%_
                                _%yhd114413%_)))
                           (_%E114390114399%_)))))
                  (_%K114347114380%_
                   (lambda ()
                     (let* ((_%yrest114364114369%_ _%yrest114341%_)
                            (_%E114366114373%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest114364114369%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K114367114377%_
                             (lambda ()
                               (_%f114334%_ _%xrest114340%_ _%yrest114341%_))))
                       (if (not (gx#stx-null? _%yrest114364114369%_))
                           (_%K114367114377%_)
                           (_%E114366114373%_))))))
              (let ((_%try-match114344114383%_
                     (lambda ()
                       (if (not (null? _%g114342114352%_))
                           (_%K114347114380%_)
                           (_%else114345114360%_)))))
                (if (##pair? _%g114342114352%_)
                    (let ((_%tl114350114422%_ (##cdr _%g114342114352%_))
                          (_%hd114349114420%_ (##car _%g114342114352%_)))
                      (let ((_%xhd114425%_ _%hd114349114420%_)
                            (_%xrest114427%_ _%tl114350114422%_))
                        (_%K114348114417%_ _%xrest114427%_ _%xhd114425%_)))
                    (_%try-match114344114383%_))))))))
    (define gx#stx-map
      (lambda _g115019_
        (let ((_g115018_ (##length _g115019_)))
          (cond ((##fx= _g115018_ 2)
                 (apply (lambda (_%f114327%_ _%stx114328%_)
                          (gx#stx-map1 _%f114327%_ _%stx114328%_))
                        _g115019_))
                ((##fx= _g115018_ 3)
                 (apply (lambda (_%f114330%_ _%xstx114331%_ _%ystx114332%_)
                          (gx#stx-map2
                           _%f114330%_
                           _%xstx114331%_
                           _%ystx114332%_))
                        _g115019_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g115019_))))))
    (define gx#stx-map1
      (lambda (_%f114277%_ _%stx114278%_)
        (if (procedure? _%f114277%_)
            '#!void
            (error '"expected procedure" _%f114277%_))
        (let _%recur114280%_ ((_%rest114282%_ _%stx114278%_))
          (let* ((_%g114283114293%_ (gx#syntax-e _%rest114282%_))
                 (_%else114286114301%_
                  (lambda () (_%f114277%_ _%rest114282%_))))
            (let ((_%K114289114315%_
                   (lambda (_%rest114312%_ _%hd114313%_)
                     (cons (_%f114277%_ _%hd114313%_)
                           (_%recur114280%_ _%rest114312%_))))
                  (_%K114288114306%_ (lambda () '())))
              (let ((_%try-match114285114309%_
                     (lambda ()
                       (if (##null? _%g114283114293%_)
                           (_%K114288114306%_)
                           (_%else114286114301%_)))))
                (if (##pair? _%g114283114293%_)
                    (let ((_%tl114291114320%_ (##cdr _%g114283114293%_))
                          (_%hd114290114318%_ (##car _%g114283114293%_)))
                      (let ((_%hd114323%_ _%hd114290114318%_)
                            (_%rest114325%_ _%tl114291114320%_))
                        (_%K114289114315%_ _%rest114325%_ _%hd114323%_)))
                    (_%try-match114285114309%_))))))))
    (define gx#stx-map2
      (lambda (_%f114182%_ _%xstx114183%_ _%ystx114184%_)
        (if (procedure? _%f114182%_)
            '#!void
            (error '"expected procedure" _%f114182%_))
        (let _%recur114186%_ ((_%xrest114188%_ _%xstx114183%_)
                              (_%yrest114189%_ _%ystx114184%_))
          (let* ((_%g114190114200%_ (gx#syntax-e _%xrest114188%_))
                 (_%else114193114208%_ (lambda () '())))
            (let ((_%K114196114265%_
                   (lambda (_%xrest114234%_ _%xhd114235%_)
                     (let* ((_%g114236114243%_ (gx#syntax-e _%yrest114189%_))
                            (_%E114238114247%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g114236114243%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K114239114253%_
                             (lambda (_%yrest114250%_ _%yhd114251%_)
                               (cons (_%f114182%_ _%xhd114235%_ _%yhd114251%_)
                                     (_%recur114186%_
                                      _%xrest114234%_
                                      _%yrest114250%_)))))
                       (if (##pair? _%g114236114243%_)
                           (let ((_%hd114240114256%_ (##car _%g114236114243%_))
                                 (_%tl114241114258%_
                                  (##cdr _%g114236114243%_)))
                             (let* ((_%yhd114261%_ _%hd114240114256%_)
                                    (_%yrest114263%_ _%tl114241114258%_))
                               (_%K114239114253%_
                                _%yrest114263%_
                                _%yhd114261%_)))
                           (_%E114238114247%_)))))
                  (_%K114195114228%_
                   (lambda ()
                     (let* ((_%yrest114212114217%_ _%yrest114189%_)
                            (_%E114214114221%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest114212114217%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K114215114225%_
                             (lambda ()
                               (_%f114182%_ _%xrest114188%_ _%yrest114189%_))))
                       (if (not (gx#stx-null? _%yrest114212114217%_))
                           (_%K114215114225%_)
                           (_%E114214114221%_))))))
              (let ((_%try-match114192114231%_
                     (lambda ()
                       (if (not (null? _%g114190114200%_))
                           (_%K114195114228%_)
                           (_%else114193114208%_)))))
                (if (##pair? _%g114190114200%_)
                    (let ((_%tl114198114270%_ (##cdr _%g114190114200%_))
                          (_%hd114197114268%_ (##car _%g114190114200%_)))
                      (let ((_%xhd114273%_ _%hd114197114268%_)
                            (_%xrest114275%_ _%tl114198114270%_))
                        (_%K114196114265%_ _%xrest114275%_ _%xhd114273%_)))
                    (_%try-match114192114231%_))))))))
    (define gx#stx-andmap
      (lambda (_%f114132%_ _%stx114133%_)
        (if (procedure? _%f114132%_)
            '#!void
            (error '"expected procedure" _%f114132%_))
        (let _%lp114135%_ ((_%rest114137%_ _%stx114133%_))
          (let* ((_%g114138114148%_ (gx#syntax-e _%rest114137%_))
                 (_%else114141114156%_
                  (lambda () (_%f114132%_ _%rest114137%_))))
            (let ((_%K114144114170%_
                   (lambda (_%rest114167%_ _%hd114168%_)
                     (if (_%f114132%_ _%hd114168%_)
                         (_%lp114135%_ _%rest114167%_)
                         '#f)))
                  (_%K114143114161%_ (lambda () '#t)))
              (let ((_%try-match114140114164%_
                     (lambda ()
                       (if (##null? _%g114138114148%_)
                           (_%K114143114161%_)
                           (_%else114141114156%_)))))
                (if (##pair? _%g114138114148%_)
                    (let ((_%tl114146114175%_ (##cdr _%g114138114148%_))
                          (_%hd114145114173%_ (##car _%g114138114148%_)))
                      (let ((_%hd114178%_ _%hd114145114173%_)
                            (_%rest114180%_ _%tl114146114175%_))
                        (_%K114144114170%_ _%rest114180%_ _%hd114178%_)))
                    (_%try-match114140114164%_))))))))
    (define gx#stx-ormap
      (lambda (_%f114079%_ _%stx114080%_)
        (if (procedure? _%f114079%_)
            '#!void
            (error '"expected procedure" _%f114079%_))
        (let _%lp114082%_ ((_%rest114084%_ _%stx114080%_))
          (let* ((_%g114085114095%_ (gx#syntax-e _%rest114084%_))
                 (_%else114088114103%_
                  (lambda () (_%f114079%_ _%rest114084%_))))
            (let ((_%K114091114120%_
                   (lambda (_%rest114114%_ _%hd114115%_)
                     (let ((_%$e114117%_ (_%f114079%_ _%hd114115%_)))
                       (if _%$e114117%_
                           _%$e114117%_
                           (_%lp114082%_ _%rest114114%_)))))
                  (_%K114090114108%_ (lambda () '#f)))
              (let ((_%try-match114087114111%_
                     (lambda ()
                       (if (##null? _%g114085114095%_)
                           (_%K114090114108%_)
                           (_%else114088114103%_)))))
                (if (##pair? _%g114085114095%_)
                    (let ((_%tl114093114125%_ (##cdr _%g114085114095%_))
                          (_%hd114092114123%_ (##car _%g114085114095%_)))
                      (let ((_%hd114128%_ _%hd114092114123%_)
                            (_%rest114130%_ _%tl114093114125%_))
                        (_%K114091114120%_ _%rest114130%_ _%hd114128%_)))
                    (_%try-match114087114111%_))))))))
    (define gx#stx-foldl
      (lambda (_%f114027%_ _%iv114028%_ _%stx114029%_)
        (if (procedure? _%f114027%_)
            '#!void
            (error '"expected procedure" _%f114027%_))
        (let _%lp114031%_ ((_%r114033%_ _%iv114028%_)
                           (_%rest114034%_ _%stx114029%_))
          (let* ((_%g114035114045%_ (gx#syntax-e _%rest114034%_))
                 (_%else114038114053%_
                  (lambda () (_%f114027%_ _%rest114034%_ _%r114033%_))))
            (let ((_%K114041114067%_
                   (lambda (_%rest114064%_ _%hd114065%_)
                     (_%lp114031%_
                      (_%f114027%_ _%hd114065%_ _%r114033%_)
                      _%rest114064%_)))
                  (_%K114040114058%_ (lambda () _%r114033%_)))
              (let ((_%try-match114037114061%_
                     (lambda ()
                       (if (##null? _%g114035114045%_)
                           (_%K114040114058%_)
                           (_%else114038114053%_)))))
                (if (##pair? _%g114035114045%_)
                    (let ((_%tl114043114072%_ (##cdr _%g114035114045%_))
                          (_%hd114042114070%_ (##car _%g114035114045%_)))
                      (let ((_%hd114075%_ _%hd114042114070%_)
                            (_%rest114077%_ _%tl114043114072%_))
                        (_%K114041114067%_ _%rest114077%_ _%hd114075%_)))
                    (_%try-match114037114061%_))))))))
    (define gx#stx-foldr
      (lambda (_%f113976%_ _%iv113977%_ _%stx113978%_)
        (if (procedure? _%f113976%_)
            '#!void
            (error '"expected procedure" _%f113976%_))
        (let _%recur113980%_ ((_%rest113982%_ _%stx113978%_))
          (let* ((_%g113983113993%_ (gx#syntax-e _%rest113982%_))
                 (_%else113986114001%_
                  (lambda () (_%f113976%_ _%rest113982%_ _%iv113977%_))))
            (let ((_%K113989114015%_
                   (lambda (_%rest114012%_ _%hd114013%_)
                     (_%f113976%_
                      _%hd114013%_
                      (_%recur113980%_ _%rest114012%_))))
                  (_%K113988114006%_ (lambda () _%iv113977%_)))
              (let ((_%try-match113985114009%_
                     (lambda ()
                       (if (##null? _%g113983113993%_)
                           (_%K113988114006%_)
                           (_%else113986114001%_)))))
                (if (##pair? _%g113983113993%_)
                    (let ((_%tl113991114020%_ (##cdr _%g113983113993%_))
                          (_%hd113990114018%_ (##car _%g113983113993%_)))
                      (let ((_%hd114023%_ _%hd113990114018%_)
                            (_%rest114025%_ _%tl113991114020%_))
                        (_%K113989114015%_ _%rest114025%_ _%hd114023%_)))
                    (_%try-match113985114009%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx113974%_) (gx#stx-foldl cons '() _%stx113974%_)))
    (define gx#stx-last
      (lambda (_%stx113935%_)
        (let _%lp113937%_ ((_%rest113939%_ _%stx113935%_))
          (let* ((_%g113940113948%_ (gx#syntax-e _%rest113939%_))
                 (_%else113942113956%_ (lambda () _%rest113939%_))
                 (_%K113944113962%_
                  (lambda (_%rest113959%_ _%hd113960%_)
                    (if (gx#stx-null? _%rest113959%_)
                        _%hd113960%_
                        (_%lp113937%_ _%rest113959%_)))))
            (if (##pair? _%g113940113948%_)
                (let ((_%hd113945113965%_ (##car _%g113940113948%_))
                      (_%tl113946113967%_ (##cdr _%g113940113948%_)))
                  (let* ((_%hd113970%_ _%hd113945113965%_)
                         (_%rest113972%_ _%tl113946113967%_))
                    (_%K113944113962%_ _%rest113972%_ _%hd113970%_)))
                (_%else113942113956%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx113906%_)
        (let _%lp113908%_ ((_%hd113910%_ _%stx113906%_))
          (let* ((_%g113911113918%_ (gx#syntax-e _%hd113910%_))
                 (_%E113913113922%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g113911113918%_
                           '([_ . rest]))
                    '#!void))
                 (_%K113914113927%_
                  (lambda (_%rest113925%_)
                    (if (gx#stx-pair? _%rest113925%_)
                        (_%lp113908%_ _%rest113925%_)
                        _%hd113910%_))))
            (if (##pair? _%g113911113918%_)
                (let* ((_%tl113916113930%_ (##cdr _%g113911113918%_))
                       (_%rest113933%_ _%tl113916113930%_))
                  (_%K113914113927%_ _%rest113933%_))
                (_%E113913113922%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx113875%_ _%k113876%_)
        (let _%lp113878%_ ((_%rest113880%_ _%stx113875%_)
                           (_%k113881%_ _%k113876%_))
          (if (fxpositive? _%k113881%_)
              (let* ((_%g113882113889%_ (gx#syntax-e _%rest113880%_))
                     (_%E113884113893%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g113882113889%_
                               '([_ . rest]))
                        '#!void))
                     (_%K113885113898%_
                      (lambda (_%rest113896%_)
                        (_%lp113878%_ _%rest113896%_ (##fx- _%k113881%_ '1)))))
                (if (##pair? _%g113882113889%_)
                    (let* ((_%tl113887113901%_ (##cdr _%g113882113889%_))
                           (_%rest113904%_ _%tl113887113901%_))
                      (_%K113885113898%_ _%rest113904%_))
                    (_%E113884113893%_)))
              _%rest113880%_))))
    (define gx#stx-list-ref
      (lambda (_%stx113872%_ _%k113873%_)
        (gx#stx-car (gx#stx-list-tail _%stx113872%_ _%k113873%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx113784%_ _%key?113785%_)
        (if (procedure? _%key?113785%_)
            '#!void
            (error '"expected procedure" _%key?113785%_))
        (let _%lp113787%_ ((_%rest113789%_ _%stx113784%_))
          (let* ((_%g113790113800%_ (gx#stx-e _%rest113789%_))
                 (_%else113793113808%_ (lambda () '#f)))
            (let ((_%K113796113850%_
                   (lambda (_%rest113819%_ _%hd113820%_)
                     (if (_%key?113785%_ _%hd113820%_)
                         (let* ((_%g113821113829%_ (gx#stx-e _%rest113819%_))
                                (_%else113823113837%_ (lambda () '#f))
                                (_%K113825113842%_
                                 (lambda (_%rest113840%_)
                                   (_%lp113787%_ _%rest113840%_))))
                           (if (##pair? _%g113821113829%_)
                               (let* ((_%tl113827113845%_
                                       (##cdr _%g113821113829%_))
                                      (_%rest113848%_ _%tl113827113845%_))
                                 (_%lp113787%_ _%rest113848%_))
                               (_%else113823113837%_)))
                         '#f)))
                  (_%K113795113813%_ (lambda () '#t)))
              (let ((_%try-match113792113816%_
                     (lambda ()
                       (if (##null? _%g113790113800%_)
                           (_%K113795113813%_)
                           (_%else113793113808%_)))))
                (if (##pair? _%g113790113800%_)
                    (let ((_%tl113798113855%_ (##cdr _%g113790113800%_))
                          (_%hd113797113853%_ (##car _%g113790113800%_)))
                      (let ((_%hd113858%_ _%hd113797113853%_)
                            (_%rest113860%_ _%tl113798113855%_))
                        (_%K113796113850%_ _%rest113860%_ _%hd113858%_)))
                    (_%try-match113792113816%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx113865%_)
        (let ((_%key?113867%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx113865%_ _%key?113867%_))))
    (define gx#stx-plist?
      (lambda _g115021_
        (let ((_g115020_ (##length _g115021_)))
          (cond ((##fx= _g115020_ 1)
                 (apply (lambda (_%stx113865%_)
                          (gx#stx-plist?__0 _%stx113865%_))
                        _g115021_))
                ((##fx= _g115020_ 2)
                 (apply (lambda (_%stx113869%_ _%key?113870%_)
                          (gx#stx-plist?__% _%stx113869%_ _%key?113870%_))
                        _g115021_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g115021_))))))
    (define gx#stx-getq__%
      (lambda (_%key113702%_ _%stx113703%_ _%key=?113704%_)
        (if (procedure? _%key=?113704%_)
            '#!void
            (error '"expected procedure" _%key=?113704%_))
        (let _%lp113706%_ ((_%rest113708%_ _%stx113703%_))
          (let* ((_%g113709113717%_ (gx#syntax-e _%rest113708%_))
                 (_%else113711113725%_ (lambda () '#f))
                 (_%K113713113759%_
                  (lambda (_%rest113728%_ _%hd113729%_)
                    (let* ((_%g113730113737%_ (gx#syntax-e _%rest113728%_))
                           (_%E113732113741%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g113730113737%_
                                     '([val . rest]))
                              '#!void))
                           (_%K113733113747%_
                            (lambda (_%rest113744%_ _%val113745%_)
                              (if (_%key=?113704%_ _%hd113729%_ _%key113702%_)
                                  _%val113745%_
                                  (_%lp113706%_ _%rest113744%_)))))
                      (if (##pair? _%g113730113737%_)
                          (let ((_%hd113734113750%_ (##car _%g113730113737%_))
                                (_%tl113735113752%_ (##cdr _%g113730113737%_)))
                            (let* ((_%val113755%_ _%hd113734113750%_)
                                   (_%rest113757%_ _%tl113735113752%_))
                              (_%K113733113747%_
                               _%rest113757%_
                               _%val113755%_)))
                          (_%E113732113741%_))))))
            (if (##pair? _%g113709113717%_)
                (let ((_%hd113714113762%_ (##car _%g113709113717%_))
                      (_%tl113715113764%_ (##cdr _%g113709113717%_)))
                  (let* ((_%hd113767%_ _%hd113714113762%_)
                         (_%rest113769%_ _%tl113715113764%_))
                    (_%K113713113759%_ _%rest113769%_ _%hd113767%_)))
                (_%else113711113725%_))))))
    (define gx#stx-getq__0
      (lambda (_%key113774%_ _%stx113775%_)
        (let ((_%key=?113777%_ gx#stx-eq?))
          (gx#stx-getq__% _%key113774%_ _%stx113775%_ _%key=?113777%_))))
    (define gx#stx-getq
      (lambda _g115023_
        (let ((_g115022_ (##length _g115023_)))
          (cond ((##fx= _g115022_ 2)
                 (apply (lambda (_%key113774%_ _%stx113775%_)
                          (gx#stx-getq__0 _%key113774%_ _%stx113775%_))
                        _g115023_))
                ((##fx= _g115022_ 3)
                 (apply (lambda (_%key113779%_ _%stx113780%_ _%key=?113781%_)
                          (gx#stx-getq__%
                           _%key113779%_
                           _%stx113780%_
                           _%key=?113781%_))
                        _g115023_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g115023_))))))))

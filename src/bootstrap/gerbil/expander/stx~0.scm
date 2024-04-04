(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1712262513)
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
      (lambda _%$args115003%_
        (apply make-instance gx#identifier-wrap::t _%$args115003%_)))
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
      (lambda _%$args115000%_
        (apply make-instance gx#syntax-wrap::t _%$args115000%_)))
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
      (lambda _%$args114997%_
        (apply make-instance gx#syntax-quote::t _%$args114997%_)))
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
      (lambda (_%stx114995%_) (symbol? (gx#stx-e _%stx114995%_))))
    (define gx#identifier-quote?
      (lambda (_%stx114993%_)
        (if (##structure-direct-instance-of? _%stx114993%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx114993%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx114988%_)
        (if (##structure-direct-instance-of? _%stx114988%_ 'gx#syntax-quote::t)
            (let () '#t)
            (if (##structure-direct-instance-of?
                 _%stx114988%_
                 'gx#syntax-wrap::t)
                (let ()
                  (gx#sealed-syntax?
                   (##unchecked-structure-ref _%stx114988%_ '1 '#f '#f)))
                (let () '#f)))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx114983%_)
        (if (##structure-direct-instance-of? _%stx114983%_ 'gx#syntax-quote::t)
            (let () _%stx114983%_)
            (if (##structure-direct-instance-of?
                 _%stx114983%_
                 'gx#syntax-wrap::t)
                (let ()
                  (gx#sealed-syntax-unwrap
                   (##unchecked-structure-ref _%stx114983%_ '1 '#f '#f)))
                (let () '#f)))))
    (define gx#syntax-e
      (lambda (_%stx114957%_)
        (if (##structure-direct-instance-of? _%stx114957%_ 'gx#syntax-wrap::t)
            (let _%lp114960%_ ((_%e114962%_
                                (##unchecked-structure-ref
                                 _%stx114957%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks114963%_
                                (cons (##unchecked-structure-ref
                                       _%stx114957%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e114962%_)
                  (let ((_%$e114966%_
                         (##type-id (##structure-type _%e114962%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e114966%_)
                        (_%lp114960%_
                         (##unchecked-structure-ref _%e114962%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e114962%_ '3 '#f '#f)
                          _%marks114963%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e114966%_)
                                (eq? 'gx#identifier-wrap::t _%$e114966%_))
                            (##unchecked-structure-ref _%e114962%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e114966%_)
                                (_%lp114960%_
                                 (##unchecked-structure-ref
                                  _%e114962%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks114963%_)
                                _%e114962%_))))
                  (if (null? _%marks114963%_)
                      (let () _%e114962%_)
                      (if (pair? _%e114962%_)
                          (let ()
                            (cons (gx#stx-wrap
                                   (car _%e114962%_)
                                   _%marks114963%_)
                                  (gx#stx-wrap
                                   (cdr _%e114962%_)
                                   _%marks114963%_)))
                          (if (vector? _%e114962%_)
                              (let ()
                                (vector-map
                                 (lambda (_%g114974114976%_)
                                   (gx#stx-wrap
                                    _%g114974114976%_
                                    _%marks114963%_))
                                 _%e114962%_))
                              (if (box? _%e114962%_)
                                  (let ()
                                    (box (gx#stx-wrap
                                          (unbox _%e114962%_)
                                          _%marks114963%_)))
                                  (let () _%e114962%_)))))))
            (if (##structure-instance-of? _%stx114957%_ 'gerbil#AST::t)
                (let () (##unchecked-structure-ref _%stx114957%_ '1 '#f '#f))
                (let () _%stx114957%_)))))
    (define gx#syntax->datum
      (lambda (_%stx114950%_)
        (if (##structure-instance-of? _%stx114950%_ 'gerbil#AST::t)
            (let ()
              (gx#syntax->datum
               (##unchecked-structure-ref _%stx114950%_ '1 '#f '#f)))
            (if (pair? _%stx114950%_)
                (let ()
                  (cons (gx#syntax->datum (car _%stx114950%_))
                        (gx#syntax->datum (cdr _%stx114950%_))))
                (if (vector? _%stx114950%_)
                    (let () (vector-map gx#syntax->datum _%stx114950%_))
                    (if (box? _%stx114950%_)
                        (let () (box (gx#syntax->datum (unbox _%stx114950%_))))
                        (let () _%stx114950%_)))))))
    (define gx#datum->syntax__%
      (lambda (_%stx114884%_ _%datum114885%_ _%src114886%_ _%quote?114887%_)
        (letrec ((_%wrap-datum114889%_
                  (lambda (_%e114922%_ _%marks114923%_)
                    (_%wrap-inner114891%_
                     _%e114922%_
                     (lambda (_%g114924114926%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g114924114926%_
                        _%src114886%_
                        _%marks114923%_)))))
                 (_%wrap-quote114890%_
                  (lambda (_%e114914%_ _%ctx114915%_ _%marks114916%_)
                    (_%wrap-inner114891%_
                     _%e114914%_
                     (lambda (_%g114917114919%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g114917114919%_
                        _%src114886%_
                        _%ctx114915%_
                        _%marks114916%_)))))
                 (_%wrap-inner114891%_
                  (lambda (_%e114902%_ _%wrap-e114903%_)
                    (let _%recur114905%_ ((_%e114907%_ _%e114902%_))
                      (if (symbol? _%e114907%_)
                          (let () (_%wrap-e114903%_ _%e114907%_))
                          (if (pair? _%e114907%_)
                              (let ()
                                (cons (_%recur114905%_ (car _%e114907%_))
                                      (_%recur114905%_ (cdr _%e114907%_))))
                              (if (vector? _%e114907%_)
                                  (let ()
                                    (vector-map _%recur114905%_ _%e114907%_))
                                  (if (box? _%e114907%_)
                                      (let ()
                                        (box (_%recur114905%_
                                              (unbox _%e114907%_))))
                                      (let () _%e114907%_))))))))
                 (_%wrap-outer114892%_
                  (lambda (_%e114900%_)
                    (if (##structure-instance-of? _%e114900%_ 'gerbil#AST::t)
                        _%e114900%_
                        (##structure gx#AST::t _%e114900%_ _%src114886%_)))))
          (if (##structure-instance-of? _%datum114885%_ 'gerbil#AST::t)
              (let () _%datum114885%_)
              (if (not _%stx114884%_)
                  (let ()
                    (##structure gx#AST::t _%datum114885%_ _%src114886%_))
                  (if (gx#identifier? _%stx114884%_)
                      (let ((_%stx114897%_ (gx#stx-unwrap__0 _%stx114884%_)))
                        (_%wrap-outer114892%_
                         (if (##structure-direct-instance-of?
                              _%stx114897%_
                              'gx#syntax-quote::t)
                             (if _%quote?114887%_
                                 (_%wrap-quote114890%_
                                  _%datum114885%_
                                  (##unchecked-structure-ref
                                   _%stx114897%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx114897%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum114889%_
                                  _%datum114885%_
                                  (##unchecked-structure-ref
                                   _%stx114897%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum114889%_
                              _%datum114885%_
                              (##unchecked-structure-ref
                               _%stx114897%_
                               '3
                               '#f
                               '#f)))))
                      (let ()
                        (error '"Bad template syntax; expected identifier"
                               _%stx114884%_))))))))
    (define gx#datum->syntax__0
      (lambda (_%stx114932%_ _%datum114933%_)
        (let* ((_%src114935%_ '#f) (_%quote?114937%_ '#t))
          (gx#datum->syntax__%
           _%stx114932%_
           _%datum114933%_
           _%src114935%_
           _%quote?114937%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx114939%_ _%datum114940%_ _%src114941%_)
        (let ((_%quote?114943%_ '#t))
          (gx#datum->syntax__%
           _%stx114939%_
           _%datum114940%_
           _%src114941%_
           _%quote?114943%_))))
    (define gx#datum->syntax
      (lambda _g115084_
        (let ((_g115083_ (##length _g115084_)))
          (cond ((##fx= _g115083_ 2)
                 (apply (lambda (_%stx114932%_ _%datum114933%_)
                          (gx#datum->syntax__0 _%stx114932%_ _%datum114933%_))
                        _g115084_))
                ((##fx= _g115083_ 3)
                 (apply (lambda (_%stx114939%_ _%datum114940%_ _%src114941%_)
                          (gx#datum->syntax__1
                           _%stx114939%_
                           _%datum114940%_
                           _%src114941%_))
                        _g115084_))
                ((##fx= _g115083_ 4)
                 (apply (lambda (_%stx114945%_
                                 _%datum114946%_
                                 _%src114947%_
                                 _%quote?114948%_)
                          (gx#datum->syntax__%
                           _%stx114945%_
                           _%datum114946%_
                           _%src114947%_
                           _%quote?114948%_))
                        _g115084_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g115084_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx114850%_ _%marks114851%_)
        (let _%lp114853%_ ((_%e114855%_ _%stx114850%_)
                           (_%marks114856%_ _%marks114851%_)
                           (_%src114857%_ (gx#stx-source _%stx114850%_)))
          (if (##structure-direct-instance-of? _%e114855%_ 'gx#syntax-wrap::t)
              (let ()
                (_%lp114853%_
                 (##unchecked-structure-ref _%e114855%_ '1 '#f '#f)
                 (gx#apply-mark
                  (##unchecked-structure-ref _%e114855%_ '3 '#f '#f)
                  _%marks114856%_)
                 (##unchecked-structure-ref _%e114855%_ '2 '#f '#f)))
              (if (##structure-direct-instance-of?
                   _%e114855%_
                   'gx#identifier-wrap::t)
                  (let ()
                    (if (null? _%marks114856%_)
                        _%e114855%_
                        (##structure
                         gx#identifier-wrap::t
                         (##unchecked-structure-ref _%e114855%_ '1 '#f '#f)
                         (##unchecked-structure-ref _%e114855%_ '2 '#f '#f)
                         (__foldl1
                          gx#apply-mark
                          (##unchecked-structure-ref _%e114855%_ '3 '#f '#f)
                          _%marks114856%_))))
                  (if (##structure-direct-instance-of?
                       _%e114855%_
                       'gx#syntax-quote::t)
                      (let () _%e114855%_)
                      (if (##structure-instance-of? _%e114855%_ 'gerbil#AST::t)
                          (let ()
                            (_%lp114853%_
                             (##unchecked-structure-ref _%e114855%_ '1 '#f '#f)
                             _%marks114856%_
                             (##unchecked-structure-ref
                              _%e114855%_
                              '2
                              '#f
                              '#f)))
                          (if (symbol? _%e114855%_)
                              (let ()
                                (##structure
                                 gx#identifier-wrap::t
                                 _%e114855%_
                                 _%src114857%_
                                 (reverse _%marks114856%_)))
                              (if (null? _%marks114856%_)
                                  (let () _%e114855%_)
                                  (if (pair? _%e114855%_)
                                      (let ()
                                        (cons (gx#stx-wrap
                                               (car _%e114855%_)
                                               _%marks114856%_)
                                              (gx#stx-wrap
                                               (cdr _%e114855%_)
                                               _%marks114856%_)))
                                      (if (vector? _%e114855%_)
                                          (let ()
                                            (vector-map
                                             (lambda (_%g114866114868%_)
                                               (gx#stx-wrap
                                                _%g114866114868%_
                                                _%marks114856%_))
                                             _%e114855%_))
                                          (if (box? _%e114855%_)
                                              (let ()
                                                (box (gx#stx-wrap
                                                      (unbox _%e114855%_)
                                                      _%marks114856%_)))
                                              (let () _%e114855%_)))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx114876%_)
        (let ((_%marks114878%_ '()))
          (gx#stx-unwrap__% _%stx114876%_ _%marks114878%_))))
    (define gx#stx-unwrap
      (lambda _g115086_
        (let ((_g115085_ (##length _g115086_)))
          (cond ((##fx= _g115085_ 1)
                 (apply (lambda (_%stx114876%_)
                          (gx#stx-unwrap__0 _%stx114876%_))
                        _g115086_))
                ((##fx= _g115085_ 2)
                 (apply (lambda (_%stx114880%_ _%marks114881%_)
                          (gx#stx-unwrap__% _%stx114880%_ _%marks114881%_))
                        _g115086_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g115086_))))))
    (define gx#stx-wrap
      (lambda (_%stx114843%_ _%marks114844%_)
        (__foldl1
         (lambda (_%mark114846%_ _%stx114847%_)
           (gx#stx-apply-mark _%stx114847%_ _%mark114846%_))
         _%stx114843%_
         _%marks114844%_)))
    (define gx#stx-rewrap
      (lambda (_%stx114837%_ _%marks114838%_)
        (__foldr1
         (lambda (_%mark114840%_ _%stx114841%_)
           (gx#stx-apply-mark _%stx114841%_ _%mark114840%_))
         _%stx114837%_
         _%marks114838%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx114831%_ _%mark114832%_)
        (if (##structure-direct-instance-of? _%stx114831%_ 'gx#syntax-quote::t)
            (let () _%stx114831%_)
            (if (and (##structure-direct-instance-of?
                      _%stx114831%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark114832%_
                          (##unchecked-structure-ref
                           _%stx114831%_
                           '3
                           '#f
                           '#f)))
                (let () (##unchecked-structure-ref _%stx114831%_ '1 '#f '#f))
                (let ()
                  (##structure
                   gx#syntax-wrap::t
                   _%stx114831%_
                   (gx#stx-source _%stx114831%_)
                   _%mark114832%_))))))
    (define gx#apply-mark
      (lambda (_%mark114795%_ _%marks114796%_)
        (let* ((_%marks114797114805%_ _%marks114796%_)
               (_%else114799114813%_
                (lambda () (cons _%mark114795%_ _%marks114796%_)))
               (_%K114801114819%_
                (lambda (_%rest114816%_ _%hd114817%_)
                  (if (eq? _%mark114795%_ _%hd114817%_)
                      _%rest114816%_
                      (cons _%mark114795%_ _%marks114796%_)))))
          (if (##pair? _%marks114797114805%_)
              (let ((_%hd114802114822%_ (##car _%marks114797114805%_))
                    (_%tl114803114824%_ (##cdr _%marks114797114805%_)))
                (let* ((_%hd114827%_ _%hd114802114822%_)
                       (_%rest114829%_ _%tl114803114824%_))
                  (_%K114801114819%_ _%rest114829%_ _%hd114827%_)))
              (_%else114799114813%_)))))
    (define gx#stx-e
      (lambda (_%stx114790%_)
        (if (##structure-direct-instance-of? _%stx114790%_ 'gx#syntax-wrap::t)
            (let ()
              (gx#stx-e (##unchecked-structure-ref _%stx114790%_ '1 '#f '#f)))
            (if (##structure-instance-of? _%stx114790%_ 'gerbil#AST::t)
                (let () (##unchecked-structure-ref _%stx114790%_ '1 '#f '#f))
                (let () _%stx114790%_)))))
    (define gx#stx-source
      (lambda (_%stx114788%_)
        (if (##structure-instance-of? _%stx114788%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx114788%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx114782%_ _%src114783%_)
        (if (or (##structure-instance-of? _%stx114782%_ 'gerbil#AST::t)
                (not _%src114783%_))
            _%stx114782%_
            (##structure gx#AST::t _%stx114782%_ _%src114783%_))))
    (define gx#stx-datum?
      (lambda (_%stx114780%_) (gx#self-quoting? (gx#stx-e _%stx114780%_))))
    (define gx#self-quoting?
      (lambda (_%x114763%_)
        (let ((_%$e114765%_ (immediate? _%x114763%_)))
          (if _%$e114765%_
              _%$e114765%_
              (let ((_%$e114768%_ (number? _%x114763%_)))
                (if _%$e114768%_
                    _%$e114768%_
                    (let ((_%$e114771%_ (keyword? _%x114763%_)))
                      (if _%$e114771%_
                          _%$e114771%_
                          (let ((_%$e114774%_ (string? _%x114763%_)))
                            (if _%$e114774%_
                                _%$e114774%_
                                (let ((_%$e114777%_ (vector? _%x114763%_)))
                                  (if _%$e114777%_
                                      _%$e114777%_
                                      (u8vector? _%x114763%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e114761%_) (boolean? (gx#stx-e _%e114761%_))))
    (define gx#stx-keyword?
      (lambda (_%e114759%_) (keyword? (gx#stx-e _%e114759%_))))
    (define gx#stx-char? (lambda (_%e114757%_) (char? (gx#stx-e _%e114757%_))))
    (define gx#stx-number?
      (lambda (_%e114755%_) (number? (gx#stx-e _%e114755%_))))
    (define gx#stx-fixnum?
      (lambda (_%e114753%_) (fixnum? (gx#stx-e _%e114753%_))))
    (define gx#stx-string?
      (lambda (_%e114751%_) (string? (gx#stx-e _%e114751%_))))
    (define gx#stx-null? (lambda (_%e114749%_) (null? (gx#stx-e _%e114749%_))))
    (define gx#stx-pair? (lambda (_%e114747%_) (pair? (gx#stx-e _%e114747%_))))
    (define gx#stx-list?
      (lambda (_%e114709%_)
        (let* ((_%g114710114719%_ (gx#stx-e _%e114709%_))
               (_%E114713114723%_
                (lambda ()
                  (error '"No clause matching"
                         _%g114710114719%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K114715114739%_
                 (lambda (_%rest114737%_) (gx#stx-list? _%rest114737%_)))
                (_%K114714114729%_
                 (lambda (_%tail114727%_) (null? _%tail114727%_))))
            (if (##pair? _%g114710114719%_)
                (let* ((_%tl114717114742%_ (##cdr _%g114710114719%_))
                       (_%rest114745%_ _%tl114717114742%_))
                  (gx#stx-list? _%rest114745%_))
                (let ((_%tail114732%_ _%g114710114719%_))
                  (null? _%tail114732%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e114702%_)
        (let* ((_%e114704%_ (gx#stx-e _%e114702%_))
               (_%$e114706%_ (pair? _%e114704%_)))
          (if _%$e114706%_ _%$e114706%_ (null? _%e114704%_)))))
    (define gx#stx-vector?
      (lambda (_%e114700%_) (vector? (gx#stx-e _%e114700%_))))
    (define gx#stx-box? (lambda (_%e114698%_) (box? (gx#stx-e _%e114698%_))))
    (define gx#stx-eq?
      (lambda (_%x114695%_ _%y114696%_)
        (eq? (gx#stx-e _%x114695%_) (gx#stx-e _%y114696%_))))
    (define gx#stx-eqv?
      (lambda (_%x114692%_ _%y114693%_)
        (eqv? (gx#stx-e _%x114692%_) (gx#stx-e _%y114693%_))))
    (define gx#stx-equal?
      (lambda (_%x114689%_ _%y114690%_)
        (equal? (gx#stx-e _%x114689%_) (gx#stx-e _%y114690%_))))
    (define gx#stx-false? (lambda (_%x114687%_) (not (gx#stx-e _%x114687%_))))
    (define gx#stx-identifier
      (lambda (_%template114684%_ . _%args114685%_)
        (gx#datum->syntax__1
         _%template114684%_
         (apply make-symbol (gx#syntax->datum _%args114685%_))
         (gx#stx-source _%template114684%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx114682%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx114682%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx114677%_)
        (if (##structure-direct-instance-of?
             _%stx114677%_
             'gx#identifier-wrap::t)
            (let () (##unchecked-structure-ref _%stx114677%_ '3 '#f '#f))
            (if (##structure-direct-instance-of?
                 _%stx114677%_
                 'gx#syntax-quote::t)
                (let () (##unchecked-structure-ref _%stx114677%_ '4 '#f '#f))
                (let ()
                  (error '"Bad wrap; expected unwrapped identifier"
                         _%stx114677%_))))))
    (define gx#stx-identifier-context
      (lambda (_%stx114673%_)
        (let ((_%stx114675%_ (gx#stx-unwrap__0 _%stx114673%_)))
          (if (gx#identifier-quote? _%stx114675%_)
              (##unchecked-structure-ref _%stx114675%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx114628%_)
        (let* ((_%g114629114639%_ (gx#stx-e _%stx114628%_))
               (_%else114632114647%_ (lambda () '#f)))
          (let ((_%K114635114661%_
                 (lambda (_%rest114658%_ _%hd114659%_)
                   (if (gx#identifier? _%hd114659%_)
                       (gx#identifier-list? _%rest114658%_)
                       '#f)))
                (_%K114634114652%_ (lambda () '#t)))
            (let ((_%try-match114631114655%_
                   (lambda ()
                     (if (##null? _%g114629114639%_)
                         (_%K114634114652%_)
                         (_%else114632114647%_)))))
              (if (##pair? _%g114629114639%_)
                  (let ((_%tl114637114666%_ (##cdr _%g114629114639%_))
                        (_%hd114636114664%_ (##car _%g114629114639%_)))
                    (let ((_%hd114669%_ _%hd114636114664%_)
                          (_%rest114671%_ _%tl114637114666%_))
                      (_%K114635114661%_ _%rest114671%_ _%hd114669%_)))
                  (_%try-match114631114655%_)))))))
    (define gx#genident__%
      (lambda (_%e114605%_ _%src114606%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e114608%_ (gx#stx-e _%e114605%_)))
                   (if (interned-symbol? _%e114608%_) _%e114608%_ 'g)))
         (let ((_%$e114610%_ (gx#stx-source _%e114605%_)))
           (if _%$e114610%_ _%$e114610%_ _%src114606%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e114617%_ 'g) (_%src114619%_ '#f))
          (gx#genident__% _%e114617%_ _%src114619%_))))
    (define gx#genident__1
      (lambda (_%e114621%_)
        (let ((_%src114623%_ '#f))
          (gx#genident__% _%e114621%_ _%src114623%_))))
    (define gx#genident
      (lambda _g115088_
        (let ((_g115087_ (##length _g115088_)))
          (cond ((##fx= _g115087_ 0)
                 (apply (lambda () (gx#genident__0)) _g115088_))
                ((##fx= _g115087_ 1)
                 (apply (lambda (_%e114621%_) (gx#genident__1 _%e114621%_))
                        _g115088_))
                ((##fx= _g115087_ 2)
                 (apply (lambda (_%e114625%_ _%src114626%_)
                          (gx#genident__% _%e114625%_ _%src114626%_))
                        _g115088_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g115088_))))))
    (define gx#gentemps
      (lambda (_%stx-lst114602%_) (gx#stx-map1 gx#genident _%stx-lst114602%_)))
    (define gx#syntax->list
      (lambda (_%stx114600%_) (gx#stx-map1 values _%stx114600%_)))
    (define gx#stx-car
      (lambda (_%stx114597%_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _%stx114597%_)))))
    (define gx#stx-cdr
      (lambda (_%stx114594%_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _%stx114594%_)))))
    (define gx#stx-length
      (lambda (_%stx114559%_)
        (let _%lp114561%_ ((_%rest114563%_ _%stx114559%_) (_%n114564%_ '0))
          (let* ((_%g114565114573%_ (gx#stx-e _%rest114563%_))
                 (_%else114567114581%_ (lambda () _%n114564%_))
                 (_%K114569114586%_
                  (lambda (_%rest114584%_)
                    (_%lp114561%_ _%rest114584%_ (##fx+ _%n114564%_ '1)))))
            (if (##pair? _%g114565114573%_)
                (let* ((_%tl114571114589%_ (##cdr _%g114565114573%_))
                       (_%rest114592%_ _%tl114571114589%_))
                  (_%K114569114586%_ _%rest114592%_))
                (_%else114567114581%_))))))
    (define gx#stx-for-each
      (lambda _g115090_
        (let ((_g115089_ (##length _g115090_)))
          (cond ((##fx= _g115089_ 2)
                 (apply (lambda (_%f114552%_ _%stx114553%_)
                          (gx#stx-for-each1 _%f114552%_ _%stx114553%_))
                        _g115090_))
                ((##fx= _g115089_ 3)
                 (apply (lambda (_%f114555%_ _%xstx114556%_ _%ystx114557%_)
                          (gx#stx-for-each2
                           _%f114555%_
                           _%xstx114556%_
                           _%ystx114557%_))
                        _g115090_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g115090_))))))
    (define gx#stx-for-each1
      (lambda (_%f114502%_ _%stx114503%_)
        (if (procedure? _%f114502%_)
            '#!void
            (error '"expected procedure" _%f114502%_))
        (let _%lp114505%_ ((_%rest114507%_ _%stx114503%_))
          (let* ((_%g114508114518%_ (gx#syntax-e _%rest114507%_))
                 (_%else114511114526%_
                  (lambda () (_%f114502%_ _%rest114507%_))))
            (let ((_%K114514114540%_
                   (lambda (_%rest114537%_ _%hd114538%_)
                     (_%f114502%_ _%hd114538%_)
                     (_%lp114505%_ _%rest114537%_)))
                  (_%K114513114531%_ (lambda () '#!void)))
              (let ((_%try-match114510114534%_
                     (lambda ()
                       (if (##null? _%g114508114518%_)
                           (_%K114513114531%_)
                           (_%else114511114526%_)))))
                (if (##pair? _%g114508114518%_)
                    (let ((_%tl114516114545%_ (##cdr _%g114508114518%_))
                          (_%hd114515114543%_ (##car _%g114508114518%_)))
                      (let ((_%hd114548%_ _%hd114515114543%_)
                            (_%rest114550%_ _%tl114516114545%_))
                        (_%K114514114540%_ _%rest114550%_ _%hd114548%_)))
                    (_%try-match114510114534%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f114407%_ _%xstx114408%_ _%ystx114409%_)
        (if (procedure? _%f114407%_)
            '#!void
            (error '"expected procedure" _%f114407%_))
        (let _%lp114411%_ ((_%xrest114413%_ _%xstx114408%_)
                           (_%yrest114414%_ _%ystx114409%_))
          (let* ((_%g114415114425%_ (gx#syntax-e _%xrest114413%_))
                 (_%else114418114433%_ (lambda () '#!void)))
            (let ((_%K114421114490%_
                   (lambda (_%xrest114459%_ _%xhd114460%_)
                     (let* ((_%g114461114468%_ (gx#syntax-e _%yrest114414%_))
                            (_%E114463114472%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g114461114468%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K114464114478%_
                             (lambda (_%yrest114475%_ _%yhd114476%_)
                               (_%f114407%_ _%xhd114460%_ _%yhd114476%_)
                               (_%lp114411%_
                                _%xrest114459%_
                                _%yrest114475%_))))
                       (if (##pair? _%g114461114468%_)
                           (let ((_%hd114465114481%_ (##car _%g114461114468%_))
                                 (_%tl114466114483%_
                                  (##cdr _%g114461114468%_)))
                             (let* ((_%yhd114486%_ _%hd114465114481%_)
                                    (_%yrest114488%_ _%tl114466114483%_))
                               (_%K114464114478%_
                                _%yrest114488%_
                                _%yhd114486%_)))
                           (_%E114463114472%_)))))
                  (_%K114420114453%_
                   (lambda ()
                     (let* ((_%yrest114437114442%_ _%yrest114414%_)
                            (_%E114439114446%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest114437114442%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K114440114450%_
                             (lambda ()
                               (_%f114407%_ _%xrest114413%_ _%yrest114414%_))))
                       (if (not (gx#stx-null? _%yrest114437114442%_))
                           (_%K114440114450%_)
                           (_%E114439114446%_))))))
              (let ((_%try-match114417114456%_
                     (lambda ()
                       (if (not (null? _%g114415114425%_))
                           (_%K114420114453%_)
                           (_%else114418114433%_)))))
                (if (##pair? _%g114415114425%_)
                    (let ((_%tl114423114495%_ (##cdr _%g114415114425%_))
                          (_%hd114422114493%_ (##car _%g114415114425%_)))
                      (let ((_%xhd114498%_ _%hd114422114493%_)
                            (_%xrest114500%_ _%tl114423114495%_))
                        (_%K114421114490%_ _%xrest114500%_ _%xhd114498%_)))
                    (_%try-match114417114456%_))))))))
    (define gx#stx-map
      (lambda _g115092_
        (let ((_g115091_ (##length _g115092_)))
          (cond ((##fx= _g115091_ 2)
                 (apply (lambda (_%f114400%_ _%stx114401%_)
                          (gx#stx-map1 _%f114400%_ _%stx114401%_))
                        _g115092_))
                ((##fx= _g115091_ 3)
                 (apply (lambda (_%f114403%_ _%xstx114404%_ _%ystx114405%_)
                          (gx#stx-map2
                           _%f114403%_
                           _%xstx114404%_
                           _%ystx114405%_))
                        _g115092_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g115092_))))))
    (define gx#stx-map1
      (lambda (_%f114350%_ _%stx114351%_)
        (if (procedure? _%f114350%_)
            '#!void
            (error '"expected procedure" _%f114350%_))
        (let _%recur114353%_ ((_%rest114355%_ _%stx114351%_))
          (let* ((_%g114356114366%_ (gx#syntax-e _%rest114355%_))
                 (_%else114359114374%_
                  (lambda () (_%f114350%_ _%rest114355%_))))
            (let ((_%K114362114388%_
                   (lambda (_%rest114385%_ _%hd114386%_)
                     (cons (_%f114350%_ _%hd114386%_)
                           (_%recur114353%_ _%rest114385%_))))
                  (_%K114361114379%_ (lambda () '())))
              (let ((_%try-match114358114382%_
                     (lambda ()
                       (if (##null? _%g114356114366%_)
                           (_%K114361114379%_)
                           (_%else114359114374%_)))))
                (if (##pair? _%g114356114366%_)
                    (let ((_%tl114364114393%_ (##cdr _%g114356114366%_))
                          (_%hd114363114391%_ (##car _%g114356114366%_)))
                      (let ((_%hd114396%_ _%hd114363114391%_)
                            (_%rest114398%_ _%tl114364114393%_))
                        (_%K114362114388%_ _%rest114398%_ _%hd114396%_)))
                    (_%try-match114358114382%_))))))))
    (define gx#stx-map2
      (lambda (_%f114255%_ _%xstx114256%_ _%ystx114257%_)
        (if (procedure? _%f114255%_)
            '#!void
            (error '"expected procedure" _%f114255%_))
        (let _%recur114259%_ ((_%xrest114261%_ _%xstx114256%_)
                              (_%yrest114262%_ _%ystx114257%_))
          (let* ((_%g114263114273%_ (gx#syntax-e _%xrest114261%_))
                 (_%else114266114281%_ (lambda () '())))
            (let ((_%K114269114338%_
                   (lambda (_%xrest114307%_ _%xhd114308%_)
                     (let* ((_%g114309114316%_ (gx#syntax-e _%yrest114262%_))
                            (_%E114311114320%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g114309114316%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K114312114326%_
                             (lambda (_%yrest114323%_ _%yhd114324%_)
                               (cons (_%f114255%_ _%xhd114308%_ _%yhd114324%_)
                                     (_%recur114259%_
                                      _%xrest114307%_
                                      _%yrest114323%_)))))
                       (if (##pair? _%g114309114316%_)
                           (let ((_%hd114313114329%_ (##car _%g114309114316%_))
                                 (_%tl114314114331%_
                                  (##cdr _%g114309114316%_)))
                             (let* ((_%yhd114334%_ _%hd114313114329%_)
                                    (_%yrest114336%_ _%tl114314114331%_))
                               (_%K114312114326%_
                                _%yrest114336%_
                                _%yhd114334%_)))
                           (_%E114311114320%_)))))
                  (_%K114268114301%_
                   (lambda ()
                     (let* ((_%yrest114285114290%_ _%yrest114262%_)
                            (_%E114287114294%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest114285114290%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K114288114298%_
                             (lambda ()
                               (_%f114255%_ _%xrest114261%_ _%yrest114262%_))))
                       (if (not (gx#stx-null? _%yrest114285114290%_))
                           (_%K114288114298%_)
                           (_%E114287114294%_))))))
              (let ((_%try-match114265114304%_
                     (lambda ()
                       (if (not (null? _%g114263114273%_))
                           (_%K114268114301%_)
                           (_%else114266114281%_)))))
                (if (##pair? _%g114263114273%_)
                    (let ((_%tl114271114343%_ (##cdr _%g114263114273%_))
                          (_%hd114270114341%_ (##car _%g114263114273%_)))
                      (let ((_%xhd114346%_ _%hd114270114341%_)
                            (_%xrest114348%_ _%tl114271114343%_))
                        (_%K114269114338%_ _%xrest114348%_ _%xhd114346%_)))
                    (_%try-match114265114304%_))))))))
    (define gx#stx-andmap
      (lambda (_%f114205%_ _%stx114206%_)
        (if (procedure? _%f114205%_)
            '#!void
            (error '"expected procedure" _%f114205%_))
        (let _%lp114208%_ ((_%rest114210%_ _%stx114206%_))
          (let* ((_%g114211114221%_ (gx#syntax-e _%rest114210%_))
                 (_%else114214114229%_
                  (lambda () (_%f114205%_ _%rest114210%_))))
            (let ((_%K114217114243%_
                   (lambda (_%rest114240%_ _%hd114241%_)
                     (if (_%f114205%_ _%hd114241%_)
                         (_%lp114208%_ _%rest114240%_)
                         '#f)))
                  (_%K114216114234%_ (lambda () '#t)))
              (let ((_%try-match114213114237%_
                     (lambda ()
                       (if (##null? _%g114211114221%_)
                           (_%K114216114234%_)
                           (_%else114214114229%_)))))
                (if (##pair? _%g114211114221%_)
                    (let ((_%tl114219114248%_ (##cdr _%g114211114221%_))
                          (_%hd114218114246%_ (##car _%g114211114221%_)))
                      (let ((_%hd114251%_ _%hd114218114246%_)
                            (_%rest114253%_ _%tl114219114248%_))
                        (_%K114217114243%_ _%rest114253%_ _%hd114251%_)))
                    (_%try-match114213114237%_))))))))
    (define gx#stx-ormap
      (lambda (_%f114152%_ _%stx114153%_)
        (if (procedure? _%f114152%_)
            '#!void
            (error '"expected procedure" _%f114152%_))
        (let _%lp114155%_ ((_%rest114157%_ _%stx114153%_))
          (let* ((_%g114158114168%_ (gx#syntax-e _%rest114157%_))
                 (_%else114161114176%_
                  (lambda () (_%f114152%_ _%rest114157%_))))
            (let ((_%K114164114193%_
                   (lambda (_%rest114187%_ _%hd114188%_)
                     (let ((_%$e114190%_ (_%f114152%_ _%hd114188%_)))
                       (if _%$e114190%_
                           _%$e114190%_
                           (_%lp114155%_ _%rest114187%_)))))
                  (_%K114163114181%_ (lambda () '#f)))
              (let ((_%try-match114160114184%_
                     (lambda ()
                       (if (##null? _%g114158114168%_)
                           (_%K114163114181%_)
                           (_%else114161114176%_)))))
                (if (##pair? _%g114158114168%_)
                    (let ((_%tl114166114198%_ (##cdr _%g114158114168%_))
                          (_%hd114165114196%_ (##car _%g114158114168%_)))
                      (let ((_%hd114201%_ _%hd114165114196%_)
                            (_%rest114203%_ _%tl114166114198%_))
                        (_%K114164114193%_ _%rest114203%_ _%hd114201%_)))
                    (_%try-match114160114184%_))))))))
    (define gx#stx-foldl
      (lambda (_%f114100%_ _%iv114101%_ _%stx114102%_)
        (if (procedure? _%f114100%_)
            '#!void
            (error '"expected procedure" _%f114100%_))
        (let _%lp114104%_ ((_%r114106%_ _%iv114101%_)
                           (_%rest114107%_ _%stx114102%_))
          (let* ((_%g114108114118%_ (gx#syntax-e _%rest114107%_))
                 (_%else114111114126%_
                  (lambda () (_%f114100%_ _%rest114107%_ _%r114106%_))))
            (let ((_%K114114114140%_
                   (lambda (_%rest114137%_ _%hd114138%_)
                     (_%lp114104%_
                      (_%f114100%_ _%hd114138%_ _%r114106%_)
                      _%rest114137%_)))
                  (_%K114113114131%_ (lambda () _%r114106%_)))
              (let ((_%try-match114110114134%_
                     (lambda ()
                       (if (##null? _%g114108114118%_)
                           (_%K114113114131%_)
                           (_%else114111114126%_)))))
                (if (##pair? _%g114108114118%_)
                    (let ((_%tl114116114145%_ (##cdr _%g114108114118%_))
                          (_%hd114115114143%_ (##car _%g114108114118%_)))
                      (let ((_%hd114148%_ _%hd114115114143%_)
                            (_%rest114150%_ _%tl114116114145%_))
                        (_%K114114114140%_ _%rest114150%_ _%hd114148%_)))
                    (_%try-match114110114134%_))))))))
    (define gx#stx-foldr
      (lambda (_%f114049%_ _%iv114050%_ _%stx114051%_)
        (if (procedure? _%f114049%_)
            '#!void
            (error '"expected procedure" _%f114049%_))
        (let _%recur114053%_ ((_%rest114055%_ _%stx114051%_))
          (let* ((_%g114056114066%_ (gx#syntax-e _%rest114055%_))
                 (_%else114059114074%_
                  (lambda () (_%f114049%_ _%rest114055%_ _%iv114050%_))))
            (let ((_%K114062114088%_
                   (lambda (_%rest114085%_ _%hd114086%_)
                     (_%f114049%_
                      _%hd114086%_
                      (_%recur114053%_ _%rest114085%_))))
                  (_%K114061114079%_ (lambda () _%iv114050%_)))
              (let ((_%try-match114058114082%_
                     (lambda ()
                       (if (##null? _%g114056114066%_)
                           (_%K114061114079%_)
                           (_%else114059114074%_)))))
                (if (##pair? _%g114056114066%_)
                    (let ((_%tl114064114093%_ (##cdr _%g114056114066%_))
                          (_%hd114063114091%_ (##car _%g114056114066%_)))
                      (let ((_%hd114096%_ _%hd114063114091%_)
                            (_%rest114098%_ _%tl114064114093%_))
                        (_%K114062114088%_ _%rest114098%_ _%hd114096%_)))
                    (_%try-match114058114082%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx114047%_) (gx#stx-foldl cons '() _%stx114047%_)))
    (define gx#stx-last
      (lambda (_%stx114008%_)
        (let _%lp114010%_ ((_%rest114012%_ _%stx114008%_))
          (let* ((_%g114013114021%_ (gx#syntax-e _%rest114012%_))
                 (_%else114015114029%_ (lambda () _%rest114012%_))
                 (_%K114017114035%_
                  (lambda (_%rest114032%_ _%hd114033%_)
                    (if (gx#stx-null? _%rest114032%_)
                        _%hd114033%_
                        (_%lp114010%_ _%rest114032%_)))))
            (if (##pair? _%g114013114021%_)
                (let ((_%hd114018114038%_ (##car _%g114013114021%_))
                      (_%tl114019114040%_ (##cdr _%g114013114021%_)))
                  (let* ((_%hd114043%_ _%hd114018114038%_)
                         (_%rest114045%_ _%tl114019114040%_))
                    (_%K114017114035%_ _%rest114045%_ _%hd114043%_)))
                (_%else114015114029%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx113979%_)
        (let _%lp113981%_ ((_%hd113983%_ _%stx113979%_))
          (let* ((_%g113984113991%_ (gx#syntax-e _%hd113983%_))
                 (_%E113986113995%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g113984113991%_
                           '([_ . rest]))
                    '#!void))
                 (_%K113987114000%_
                  (lambda (_%rest113998%_)
                    (if (gx#stx-pair? _%rest113998%_)
                        (_%lp113981%_ _%rest113998%_)
                        _%hd113983%_))))
            (if (##pair? _%g113984113991%_)
                (let* ((_%tl113989114003%_ (##cdr _%g113984113991%_))
                       (_%rest114006%_ _%tl113989114003%_))
                  (_%K113987114000%_ _%rest114006%_))
                (_%E113986113995%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx113948%_ _%k113949%_)
        (let _%lp113951%_ ((_%rest113953%_ _%stx113948%_)
                           (_%k113954%_ _%k113949%_))
          (if (fxpositive? _%k113954%_)
              (let* ((_%g113955113962%_ (gx#syntax-e _%rest113953%_))
                     (_%E113957113966%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g113955113962%_
                               '([_ . rest]))
                        '#!void))
                     (_%K113958113971%_
                      (lambda (_%rest113969%_)
                        (_%lp113951%_ _%rest113969%_ (##fx- _%k113954%_ '1)))))
                (if (##pair? _%g113955113962%_)
                    (let* ((_%tl113960113974%_ (##cdr _%g113955113962%_))
                           (_%rest113977%_ _%tl113960113974%_))
                      (_%K113958113971%_ _%rest113977%_))
                    (_%E113957113966%_)))
              _%rest113953%_))))
    (define gx#stx-list-ref
      (lambda (_%stx113945%_ _%k113946%_)
        (gx#stx-car (gx#stx-list-tail _%stx113945%_ _%k113946%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx113857%_ _%key?113858%_)
        (if (procedure? _%key?113858%_)
            '#!void
            (error '"expected procedure" _%key?113858%_))
        (let _%lp113860%_ ((_%rest113862%_ _%stx113857%_))
          (let* ((_%g113863113873%_ (gx#stx-e _%rest113862%_))
                 (_%else113866113881%_ (lambda () '#f)))
            (let ((_%K113869113923%_
                   (lambda (_%rest113892%_ _%hd113893%_)
                     (if (_%key?113858%_ _%hd113893%_)
                         (let* ((_%g113894113902%_ (gx#stx-e _%rest113892%_))
                                (_%else113896113910%_ (lambda () '#f))
                                (_%K113898113915%_
                                 (lambda (_%rest113913%_)
                                   (_%lp113860%_ _%rest113913%_))))
                           (if (##pair? _%g113894113902%_)
                               (let* ((_%tl113900113918%_
                                       (##cdr _%g113894113902%_))
                                      (_%rest113921%_ _%tl113900113918%_))
                                 (_%lp113860%_ _%rest113921%_))
                               (_%else113896113910%_)))
                         '#f)))
                  (_%K113868113886%_ (lambda () '#t)))
              (let ((_%try-match113865113889%_
                     (lambda ()
                       (if (##null? _%g113863113873%_)
                           (_%K113868113886%_)
                           (_%else113866113881%_)))))
                (if (##pair? _%g113863113873%_)
                    (let ((_%tl113871113928%_ (##cdr _%g113863113873%_))
                          (_%hd113870113926%_ (##car _%g113863113873%_)))
                      (let ((_%hd113931%_ _%hd113870113926%_)
                            (_%rest113933%_ _%tl113871113928%_))
                        (_%K113869113923%_ _%rest113933%_ _%hd113931%_)))
                    (_%try-match113865113889%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx113938%_)
        (let ((_%key?113940%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx113938%_ _%key?113940%_))))
    (define gx#stx-plist?
      (lambda _g115094_
        (let ((_g115093_ (##length _g115094_)))
          (cond ((##fx= _g115093_ 1)
                 (apply (lambda (_%stx113938%_)
                          (gx#stx-plist?__0 _%stx113938%_))
                        _g115094_))
                ((##fx= _g115093_ 2)
                 (apply (lambda (_%stx113942%_ _%key?113943%_)
                          (gx#stx-plist?__% _%stx113942%_ _%key?113943%_))
                        _g115094_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g115094_))))))
    (define gx#stx-getq__%
      (lambda (_%key113775%_ _%stx113776%_ _%key=?113777%_)
        (if (procedure? _%key=?113777%_)
            '#!void
            (error '"expected procedure" _%key=?113777%_))
        (let _%lp113779%_ ((_%rest113781%_ _%stx113776%_))
          (let* ((_%g113782113790%_ (gx#syntax-e _%rest113781%_))
                 (_%else113784113798%_ (lambda () '#f))
                 (_%K113786113832%_
                  (lambda (_%rest113801%_ _%hd113802%_)
                    (let* ((_%g113803113810%_ (gx#syntax-e _%rest113801%_))
                           (_%E113805113814%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g113803113810%_
                                     '([val . rest]))
                              '#!void))
                           (_%K113806113820%_
                            (lambda (_%rest113817%_ _%val113818%_)
                              (if (_%key=?113777%_ _%hd113802%_ _%key113775%_)
                                  _%val113818%_
                                  (_%lp113779%_ _%rest113817%_)))))
                      (if (##pair? _%g113803113810%_)
                          (let ((_%hd113807113823%_ (##car _%g113803113810%_))
                                (_%tl113808113825%_ (##cdr _%g113803113810%_)))
                            (let* ((_%val113828%_ _%hd113807113823%_)
                                   (_%rest113830%_ _%tl113808113825%_))
                              (_%K113806113820%_
                               _%rest113830%_
                               _%val113828%_)))
                          (_%E113805113814%_))))))
            (if (##pair? _%g113782113790%_)
                (let ((_%hd113787113835%_ (##car _%g113782113790%_))
                      (_%tl113788113837%_ (##cdr _%g113782113790%_)))
                  (let* ((_%hd113840%_ _%hd113787113835%_)
                         (_%rest113842%_ _%tl113788113837%_))
                    (_%K113786113832%_ _%rest113842%_ _%hd113840%_)))
                (_%else113784113798%_))))))
    (define gx#stx-getq__0
      (lambda (_%key113847%_ _%stx113848%_)
        (let ((_%key=?113850%_ gx#stx-eq?))
          (gx#stx-getq__% _%key113847%_ _%stx113848%_ _%key=?113850%_))))
    (define gx#stx-getq
      (lambda _g115096_
        (let ((_g115095_ (##length _g115096_)))
          (cond ((##fx= _g115095_ 2)
                 (apply (lambda (_%key113847%_ _%stx113848%_)
                          (gx#stx-getq__0 _%key113847%_ _%stx113848%_))
                        _g115096_))
                ((##fx= _g115095_ 3)
                 (apply (lambda (_%key113852%_ _%stx113853%_ _%key=?113854%_)
                          (gx#stx-getq__%
                           _%key113852%_
                           _%stx113853%_
                           _%key=?113854%_))
                        _g115096_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g115096_))))))))

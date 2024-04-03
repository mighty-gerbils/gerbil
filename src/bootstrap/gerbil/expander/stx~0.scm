(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1712124234)
  (begin
    (declare (not safe))
    (define gx#identifier-wrap::t
      (make-class-type
       'gx#identifier-wrap::t
       'syntax
       (list gx#AST::t)
       '(marks)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#identifier-wrap? (__make-class-predicate gx#identifier-wrap::t))
    (define gx#make-identifier-wrap
      (lambda _%$args114422%_
        (apply make-instance gx#identifier-wrap::t _%$args114422%_)))
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
      (make-class-type
       'gx#syntax-wrap::t
       'syntax
       (list gx#AST::t)
       '(mark)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#syntax-wrap? (__make-class-predicate gx#syntax-wrap::t))
    (define gx#make-syntax-wrap
      (lambda _%$args114419%_
        (apply make-instance gx#syntax-wrap::t _%$args114419%_)))
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
      (make-class-type
       'gx#syntax-quote::t
       'syntax
       (list gx#AST::t)
       '(context marks)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#syntax-quote? (__make-class-predicate gx#syntax-quote::t))
    (define gx#make-syntax-quote
      (lambda _%$args114416%_
        (apply make-instance gx#syntax-quote::t _%$args114416%_)))
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
      (lambda (_%stx114414%_) (symbol? (gx#stx-e _%stx114414%_))))
    (define gx#identifier-quote?
      (lambda (_%stx114412%_)
        (if (##structure-direct-instance-of? _%stx114412%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx114412%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx114407%_)
        (if (##structure-direct-instance-of? _%stx114407%_ 'gx#syntax-quote::t)
            (let () '#t)
            (if (##structure-direct-instance-of?
                 _%stx114407%_
                 'gx#syntax-wrap::t)
                (let ()
                  (gx#sealed-syntax?
                   (##unchecked-structure-ref _%stx114407%_ '1 '#f '#f)))
                (let () '#f)))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx114402%_)
        (if (##structure-direct-instance-of? _%stx114402%_ 'gx#syntax-quote::t)
            (let () _%stx114402%_)
            (if (##structure-direct-instance-of?
                 _%stx114402%_
                 'gx#syntax-wrap::t)
                (let ()
                  (gx#sealed-syntax-unwrap
                   (##unchecked-structure-ref _%stx114402%_ '1 '#f '#f)))
                (let () '#f)))))
    (define gx#syntax-e
      (lambda (_%stx114376%_)
        (if (##structure-direct-instance-of? _%stx114376%_ 'gx#syntax-wrap::t)
            (let ()
              (let _%lp114379%_ ((_%e114381%_
                                  (##unchecked-structure-ref
                                   _%stx114376%_
                                   '1
                                   '#f
                                   '#f))
                                 (_%marks114382%_
                                  (cons (##unchecked-structure-ref
                                         _%stx114376%_
                                         '3
                                         '#f
                                         '#f)
                                        '())))
                (if (##structure? _%e114381%_)
                    (let ()
                      (let ((_%$e114385%_
                             (##type-id (##structure-type _%e114381%_))))
                        (if (eq? 'gx#syntax-wrap::t _%$e114385%_)
                            (_%lp114379%_
                             (##unchecked-structure-ref _%e114381%_ '1 '#f '#f)
                             (gx#apply-mark
                              (##unchecked-structure-ref
                               _%e114381%_
                               '3
                               '#f
                               '#f)
                              _%marks114382%_))
                            (if (or (eq? 'gx#syntax-quote::t _%$e114385%_)
                                    (eq? 'gx#identifier-wrap::t _%$e114385%_))
                                (##unchecked-structure-ref
                                 _%e114381%_
                                 '1
                                 '#f
                                 '#f)
                                (if (eq? 'gerbil#AST::t _%$e114385%_)
                                    (_%lp114379%_
                                     (##unchecked-structure-ref
                                      _%e114381%_
                                      '1
                                      '#f
                                      '#f)
                                     _%marks114382%_)
                                    _%e114381%_)))))
                    (if (null? _%marks114382%_)
                        (let () _%e114381%_)
                        (if (pair? _%e114381%_)
                            (let ()
                              (cons (gx#stx-wrap
                                     (car _%e114381%_)
                                     _%marks114382%_)
                                    (gx#stx-wrap
                                     (cdr _%e114381%_)
                                     _%marks114382%_)))
                            (if (vector? _%e114381%_)
                                (let ()
                                  (vector-map
                                   (lambda (_%g114393114395%_)
                                     (gx#stx-wrap
                                      _%g114393114395%_
                                      _%marks114382%_))
                                   _%e114381%_))
                                (if (box? _%e114381%_)
                                    (let ()
                                      (box (gx#stx-wrap
                                            (unbox _%e114381%_)
                                            _%marks114382%_)))
                                    (let () _%e114381%_))))))))
            (if (##structure-instance-of? _%stx114376%_ 'gerbil#AST::t)
                (let () (##unchecked-structure-ref _%stx114376%_ '1 '#f '#f))
                (let () _%stx114376%_)))))
    (define gx#syntax->datum
      (lambda (_%stx114369%_)
        (if (##structure-instance-of? _%stx114369%_ 'gerbil#AST::t)
            (let ()
              (gx#syntax->datum
               (##unchecked-structure-ref _%stx114369%_ '1 '#f '#f)))
            (if (pair? _%stx114369%_)
                (let ()
                  (cons (gx#syntax->datum (car _%stx114369%_))
                        (gx#syntax->datum (cdr _%stx114369%_))))
                (if (vector? _%stx114369%_)
                    (let () (vector-map gx#syntax->datum _%stx114369%_))
                    (if (box? _%stx114369%_)
                        (let () (box (gx#syntax->datum (unbox _%stx114369%_))))
                        (let () _%stx114369%_)))))))
    (define gx#datum->syntax__%
      (lambda (_%stx114303%_ _%datum114304%_ _%src114305%_ _%quote?114306%_)
        (letrec ((_%wrap-datum114308%_
                  (lambda (_%e114341%_ _%marks114342%_)
                    (_%wrap-inner114310%_
                     _%e114341%_
                     (lambda (_%g114343114345%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g114343114345%_
                        _%src114305%_
                        _%marks114342%_)))))
                 (_%wrap-quote114309%_
                  (lambda (_%e114333%_ _%ctx114334%_ _%marks114335%_)
                    (_%wrap-inner114310%_
                     _%e114333%_
                     (lambda (_%g114336114338%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g114336114338%_
                        _%src114305%_
                        _%ctx114334%_
                        _%marks114335%_)))))
                 (_%wrap-inner114310%_
                  (lambda (_%e114321%_ _%wrap-e114322%_)
                    (let _%recur114324%_ ((_%e114326%_ _%e114321%_))
                      (if (symbol? _%e114326%_)
                          (let () (_%wrap-e114322%_ _%e114326%_))
                          (if (pair? _%e114326%_)
                              (let ()
                                (cons (_%recur114324%_ (car _%e114326%_))
                                      (_%recur114324%_ (cdr _%e114326%_))))
                              (if (vector? _%e114326%_)
                                  (let ()
                                    (vector-map _%recur114324%_ _%e114326%_))
                                  (if (box? _%e114326%_)
                                      (let ()
                                        (box (_%recur114324%_
                                              (unbox _%e114326%_))))
                                      (let () _%e114326%_))))))))
                 (_%wrap-outer114311%_
                  (lambda (_%e114319%_)
                    (if (##structure-instance-of? _%e114319%_ 'gerbil#AST::t)
                        _%e114319%_
                        (##structure gx#AST::t _%e114319%_ _%src114305%_)))))
          (if (##structure-instance-of? _%datum114304%_ 'gerbil#AST::t)
              (let () _%datum114304%_)
              (if (not _%stx114303%_)
                  (let ()
                    (##structure gx#AST::t _%datum114304%_ _%src114305%_))
                  (if (gx#identifier? _%stx114303%_)
                      (let ()
                        (let ((_%stx114316%_ (gx#stx-unwrap__0 _%stx114303%_)))
                          (_%wrap-outer114311%_
                           (if (##structure-direct-instance-of?
                                _%stx114316%_
                                'gx#syntax-quote::t)
                               (if _%quote?114306%_
                                   (_%wrap-quote114309%_
                                    _%datum114304%_
                                    (##unchecked-structure-ref
                                     _%stx114316%_
                                     '3
                                     '#f
                                     '#f)
                                    (##unchecked-structure-ref
                                     _%stx114316%_
                                     '4
                                     '#f
                                     '#f))
                                   (_%wrap-datum114308%_
                                    _%datum114304%_
                                    (##unchecked-structure-ref
                                     _%stx114316%_
                                     '4
                                     '#f
                                     '#f)))
                               (_%wrap-datum114308%_
                                _%datum114304%_
                                (##unchecked-structure-ref
                                 _%stx114316%_
                                 '3
                                 '#f
                                 '#f))))))
                      (let ()
                        (error '"Bad template syntax; expected identifier"
                               _%stx114303%_))))))))
    (define gx#datum->syntax__0
      (lambda (_%stx114351%_ _%datum114352%_)
        (let* ((_%src114354%_ '#f) (_%quote?114356%_ '#t))
          (gx#datum->syntax__%
           _%stx114351%_
           _%datum114352%_
           _%src114354%_
           _%quote?114356%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx114358%_ _%datum114359%_ _%src114360%_)
        (let ((_%quote?114362%_ '#t))
          (gx#datum->syntax__%
           _%stx114358%_
           _%datum114359%_
           _%src114360%_
           _%quote?114362%_))))
    (define gx#datum->syntax
      (lambda _g114503_
        (let ((_g114502_ (##length _g114503_)))
          (cond ((##fx= _g114502_ 2)
                 (apply (lambda (_%stx114351%_ _%datum114352%_)
                          (gx#datum->syntax__0 _%stx114351%_ _%datum114352%_))
                        _g114503_))
                ((##fx= _g114502_ 3)
                 (apply (lambda (_%stx114358%_ _%datum114359%_ _%src114360%_)
                          (gx#datum->syntax__1
                           _%stx114358%_
                           _%datum114359%_
                           _%src114360%_))
                        _g114503_))
                ((##fx= _g114502_ 4)
                 (apply (lambda (_%stx114364%_
                                 _%datum114365%_
                                 _%src114366%_
                                 _%quote?114367%_)
                          (gx#datum->syntax__%
                           _%stx114364%_
                           _%datum114365%_
                           _%src114366%_
                           _%quote?114367%_))
                        _g114503_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g114503_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx114269%_ _%marks114270%_)
        (let _%lp114272%_ ((_%e114274%_ _%stx114269%_)
                           (_%marks114275%_ _%marks114270%_)
                           (_%src114276%_ (gx#stx-source _%stx114269%_)))
          (if (##structure-direct-instance-of? _%e114274%_ 'gx#syntax-wrap::t)
              (let ()
                (_%lp114272%_
                 (##unchecked-structure-ref _%e114274%_ '1 '#f '#f)
                 (gx#apply-mark
                  (##unchecked-structure-ref _%e114274%_ '3 '#f '#f)
                  _%marks114275%_)
                 (##unchecked-structure-ref _%e114274%_ '2 '#f '#f)))
              (if (##structure-direct-instance-of?
                   _%e114274%_
                   'gx#identifier-wrap::t)
                  (let ()
                    (if (null? _%marks114275%_)
                        _%e114274%_
                        (##structure
                         gx#identifier-wrap::t
                         (##unchecked-structure-ref _%e114274%_ '1 '#f '#f)
                         (##unchecked-structure-ref _%e114274%_ '2 '#f '#f)
                         (__foldl1
                          gx#apply-mark
                          (##unchecked-structure-ref _%e114274%_ '3 '#f '#f)
                          _%marks114275%_))))
                  (if (##structure-direct-instance-of?
                       _%e114274%_
                       'gx#syntax-quote::t)
                      (let () _%e114274%_)
                      (if (##structure-instance-of? _%e114274%_ 'gerbil#AST::t)
                          (let ()
                            (_%lp114272%_
                             (##unchecked-structure-ref _%e114274%_ '1 '#f '#f)
                             _%marks114275%_
                             (##unchecked-structure-ref
                              _%e114274%_
                              '2
                              '#f
                              '#f)))
                          (if (symbol? _%e114274%_)
                              (let ()
                                (##structure
                                 gx#identifier-wrap::t
                                 _%e114274%_
                                 _%src114276%_
                                 (reverse _%marks114275%_)))
                              (if (null? _%marks114275%_)
                                  (let () _%e114274%_)
                                  (if (pair? _%e114274%_)
                                      (let ()
                                        (cons (gx#stx-wrap
                                               (car _%e114274%_)
                                               _%marks114275%_)
                                              (gx#stx-wrap
                                               (cdr _%e114274%_)
                                               _%marks114275%_)))
                                      (if (vector? _%e114274%_)
                                          (let ()
                                            (vector-map
                                             (lambda (_%g114285114287%_)
                                               (gx#stx-wrap
                                                _%g114285114287%_
                                                _%marks114275%_))
                                             _%e114274%_))
                                          (if (box? _%e114274%_)
                                              (let ()
                                                (box (gx#stx-wrap
                                                      (unbox _%e114274%_)
                                                      _%marks114275%_)))
                                              (let () _%e114274%_)))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx114295%_)
        (let ((_%marks114297%_ '()))
          (gx#stx-unwrap__% _%stx114295%_ _%marks114297%_))))
    (define gx#stx-unwrap
      (lambda _g114505_
        (let ((_g114504_ (##length _g114505_)))
          (cond ((##fx= _g114504_ 1)
                 (apply (lambda (_%stx114295%_)
                          (gx#stx-unwrap__0 _%stx114295%_))
                        _g114505_))
                ((##fx= _g114504_ 2)
                 (apply (lambda (_%stx114299%_ _%marks114300%_)
                          (gx#stx-unwrap__% _%stx114299%_ _%marks114300%_))
                        _g114505_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g114505_))))))
    (define gx#stx-wrap
      (lambda (_%stx114262%_ _%marks114263%_)
        (__foldl1
         (lambda (_%mark114265%_ _%stx114266%_)
           (gx#stx-apply-mark _%stx114266%_ _%mark114265%_))
         _%stx114262%_
         _%marks114263%_)))
    (define gx#stx-rewrap
      (lambda (_%stx114256%_ _%marks114257%_)
        (__foldr1
         (lambda (_%mark114259%_ _%stx114260%_)
           (gx#stx-apply-mark _%stx114260%_ _%mark114259%_))
         _%stx114256%_
         _%marks114257%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx114250%_ _%mark114251%_)
        (if (##structure-direct-instance-of? _%stx114250%_ 'gx#syntax-quote::t)
            (let () _%stx114250%_)
            (if (and (##structure-direct-instance-of?
                      _%stx114250%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark114251%_
                          (##unchecked-structure-ref
                           _%stx114250%_
                           '3
                           '#f
                           '#f)))
                (let () (##unchecked-structure-ref _%stx114250%_ '1 '#f '#f))
                (let ()
                  (##structure
                   gx#syntax-wrap::t
                   _%stx114250%_
                   (gx#stx-source _%stx114250%_)
                   _%mark114251%_))))))
    (define gx#apply-mark
      (lambda (_%mark114214%_ _%marks114215%_)
        (let* ((_%marks114216114224%_ _%marks114215%_)
               (_%else114218114232%_
                (lambda () (cons _%mark114214%_ _%marks114215%_)))
               (_%K114220114238%_
                (lambda (_%rest114235%_ _%hd114236%_)
                  (if (eq? _%mark114214%_ _%hd114236%_)
                      _%rest114235%_
                      (cons _%mark114214%_ _%marks114215%_)))))
          (if (##pair? _%marks114216114224%_)
              (let ((_%hd114221114241%_ (##car _%marks114216114224%_))
                    (_%tl114222114243%_ (##cdr _%marks114216114224%_)))
                (let* ((_%hd114246%_ _%hd114221114241%_)
                       (_%rest114248%_ _%tl114222114243%_))
                  (_%K114220114238%_ _%rest114248%_ _%hd114246%_)))
              (_%else114218114232%_)))))
    (define gx#stx-e
      (lambda (_%stx114209%_)
        (if (##structure-direct-instance-of? _%stx114209%_ 'gx#syntax-wrap::t)
            (let ()
              (gx#stx-e (##unchecked-structure-ref _%stx114209%_ '1 '#f '#f)))
            (if (##structure-instance-of? _%stx114209%_ 'gerbil#AST::t)
                (let () (##unchecked-structure-ref _%stx114209%_ '1 '#f '#f))
                (let () _%stx114209%_)))))
    (define gx#stx-source
      (lambda (_%stx114207%_)
        (if (##structure-instance-of? _%stx114207%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx114207%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx114201%_ _%src114202%_)
        (if (or (##structure-instance-of? _%stx114201%_ 'gerbil#AST::t)
                (not _%src114202%_))
            _%stx114201%_
            (##structure gx#AST::t _%stx114201%_ _%src114202%_))))
    (define gx#stx-datum?
      (lambda (_%stx114199%_) (gx#self-quoting? (gx#stx-e _%stx114199%_))))
    (define gx#self-quoting?
      (lambda (_%x114182%_)
        (let ((_%$e114184%_ (immediate? _%x114182%_)))
          (if _%$e114184%_
              _%$e114184%_
              (let ((_%$e114187%_ (number? _%x114182%_)))
                (if _%$e114187%_
                    _%$e114187%_
                    (let ((_%$e114190%_ (keyword? _%x114182%_)))
                      (if _%$e114190%_
                          _%$e114190%_
                          (let ((_%$e114193%_ (string? _%x114182%_)))
                            (if _%$e114193%_
                                _%$e114193%_
                                (let ((_%$e114196%_ (vector? _%x114182%_)))
                                  (if _%$e114196%_
                                      _%$e114196%_
                                      (u8vector? _%x114182%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e114180%_) (boolean? (gx#stx-e _%e114180%_))))
    (define gx#stx-keyword?
      (lambda (_%e114178%_) (keyword? (gx#stx-e _%e114178%_))))
    (define gx#stx-char? (lambda (_%e114176%_) (char? (gx#stx-e _%e114176%_))))
    (define gx#stx-number?
      (lambda (_%e114174%_) (number? (gx#stx-e _%e114174%_))))
    (define gx#stx-fixnum?
      (lambda (_%e114172%_) (fixnum? (gx#stx-e _%e114172%_))))
    (define gx#stx-string?
      (lambda (_%e114170%_) (string? (gx#stx-e _%e114170%_))))
    (define gx#stx-null? (lambda (_%e114168%_) (null? (gx#stx-e _%e114168%_))))
    (define gx#stx-pair? (lambda (_%e114166%_) (pair? (gx#stx-e _%e114166%_))))
    (define gx#stx-list?
      (lambda (_%e114128%_)
        (let* ((_%g114129114138%_ (gx#stx-e _%e114128%_))
               (_%E114132114142%_
                (lambda ()
                  (error '"No clause matching"
                         _%g114129114138%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K114134114158%_
                 (lambda (_%rest114156%_) (gx#stx-list? _%rest114156%_)))
                (_%K114133114148%_
                 (lambda (_%tail114146%_) (null? _%tail114146%_))))
            (if (##pair? _%g114129114138%_)
                (let* ((_%tl114136114161%_ (##cdr _%g114129114138%_))
                       (_%rest114164%_ _%tl114136114161%_))
                  (gx#stx-list? _%rest114164%_))
                (let ((_%tail114151%_ _%g114129114138%_))
                  (null? _%tail114151%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e114121%_)
        (let* ((_%e114123%_ (gx#stx-e _%e114121%_))
               (_%$e114125%_ (pair? _%e114123%_)))
          (if _%$e114125%_ _%$e114125%_ (null? _%e114123%_)))))
    (define gx#stx-vector?
      (lambda (_%e114119%_) (vector? (gx#stx-e _%e114119%_))))
    (define gx#stx-box? (lambda (_%e114117%_) (box? (gx#stx-e _%e114117%_))))
    (define gx#stx-eq?
      (lambda (_%x114114%_ _%y114115%_)
        (eq? (gx#stx-e _%x114114%_) (gx#stx-e _%y114115%_))))
    (define gx#stx-eqv?
      (lambda (_%x114111%_ _%y114112%_)
        (eqv? (gx#stx-e _%x114111%_) (gx#stx-e _%y114112%_))))
    (define gx#stx-equal?
      (lambda (_%x114108%_ _%y114109%_)
        (equal? (gx#stx-e _%x114108%_) (gx#stx-e _%y114109%_))))
    (define gx#stx-false? (lambda (_%x114106%_) (not (gx#stx-e _%x114106%_))))
    (define gx#stx-identifier
      (lambda (_%template114103%_ . _%args114104%_)
        (gx#datum->syntax__1
         _%template114103%_
         (apply make-symbol (gx#syntax->datum _%args114104%_))
         (gx#stx-source _%template114103%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx114101%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx114101%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx114096%_)
        (if (##structure-direct-instance-of?
             _%stx114096%_
             'gx#identifier-wrap::t)
            (let () (##unchecked-structure-ref _%stx114096%_ '3 '#f '#f))
            (if (##structure-direct-instance-of?
                 _%stx114096%_
                 'gx#syntax-quote::t)
                (let () (##unchecked-structure-ref _%stx114096%_ '4 '#f '#f))
                (let ()
                  (error '"Bad wrap; expected unwrapped identifier"
                         _%stx114096%_))))))
    (define gx#stx-identifier-context
      (lambda (_%stx114092%_)
        (let ((_%stx114094%_ (gx#stx-unwrap__0 _%stx114092%_)))
          (if (gx#identifier-quote? _%stx114094%_)
              (##unchecked-structure-ref _%stx114094%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx114047%_)
        (let* ((_%g114048114058%_ (gx#stx-e _%stx114047%_))
               (_%else114051114066%_ (lambda () '#f)))
          (let ((_%K114054114080%_
                 (lambda (_%rest114077%_ _%hd114078%_)
                   (if (gx#identifier? _%hd114078%_)
                       (gx#identifier-list? _%rest114077%_)
                       '#f)))
                (_%K114053114071%_ (lambda () '#t)))
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
                  (_%try-match114050114074%_)))))))
    (define gx#genident__%
      (lambda (_%e114024%_ _%src114025%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e114027%_ (gx#stx-e _%e114024%_)))
                   (if (interned-symbol? _%e114027%_) _%e114027%_ 'g)))
         (let ((_%$e114029%_ (gx#stx-source _%e114024%_)))
           (if _%$e114029%_ _%$e114029%_ _%src114025%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e114036%_ 'g) (_%src114038%_ '#f))
          (gx#genident__% _%e114036%_ _%src114038%_))))
    (define gx#genident__1
      (lambda (_%e114040%_)
        (let ((_%src114042%_ '#f))
          (gx#genident__% _%e114040%_ _%src114042%_))))
    (define gx#genident
      (lambda _g114507_
        (let ((_g114506_ (##length _g114507_)))
          (cond ((##fx= _g114506_ 0)
                 (apply (lambda () (gx#genident__0)) _g114507_))
                ((##fx= _g114506_ 1)
                 (apply (lambda (_%e114040%_) (gx#genident__1 _%e114040%_))
                        _g114507_))
                ((##fx= _g114506_ 2)
                 (apply (lambda (_%e114044%_ _%src114045%_)
                          (gx#genident__% _%e114044%_ _%src114045%_))
                        _g114507_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g114507_))))))
    (define gx#gentemps
      (lambda (_%stx-lst114021%_) (gx#stx-map1 gx#genident _%stx-lst114021%_)))
    (define gx#syntax->list
      (lambda (_%stx114019%_) (gx#stx-map1 values _%stx114019%_)))
    (define gx#stx-car
      (lambda (_%stx114016%_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _%stx114016%_)))))
    (define gx#stx-cdr
      (lambda (_%stx114013%_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _%stx114013%_)))))
    (define gx#stx-length
      (lambda (_%stx113978%_)
        (let _%lp113980%_ ((_%rest113982%_ _%stx113978%_) (_%n113983%_ '0))
          (let* ((_%g113984113992%_ (gx#stx-e _%rest113982%_))
                 (_%else113986114000%_ (lambda () _%n113983%_))
                 (_%K113988114005%_
                  (lambda (_%rest114003%_)
                    (_%lp113980%_ _%rest114003%_ (##fx+ _%n113983%_ '1)))))
            (if (##pair? _%g113984113992%_)
                (let* ((_%tl113990114008%_ (##cdr _%g113984113992%_))
                       (_%rest114011%_ _%tl113990114008%_))
                  (_%K113988114005%_ _%rest114011%_))
                (_%else113986114000%_))))))
    (define gx#stx-for-each
      (lambda _g114509_
        (let ((_g114508_ (##length _g114509_)))
          (cond ((##fx= _g114508_ 2)
                 (apply (lambda (_%f113971%_ _%stx113972%_)
                          (gx#stx-for-each1 _%f113971%_ _%stx113972%_))
                        _g114509_))
                ((##fx= _g114508_ 3)
                 (apply (lambda (_%f113974%_ _%xstx113975%_ _%ystx113976%_)
                          (gx#stx-for-each2
                           _%f113974%_
                           _%xstx113975%_
                           _%ystx113976%_))
                        _g114509_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g114509_))))))
    (define gx#stx-for-each1
      (lambda (_%f113921%_ _%stx113922%_)
        (if (procedure? _%f113921%_)
            '#!void
            (error '"expected procedure" _%f113921%_))
        (let _%lp113924%_ ((_%rest113926%_ _%stx113922%_))
          (let* ((_%g113927113937%_ (gx#syntax-e _%rest113926%_))
                 (_%else113930113945%_
                  (lambda () (_%f113921%_ _%rest113926%_))))
            (let ((_%K113933113959%_
                   (lambda (_%rest113956%_ _%hd113957%_)
                     (_%f113921%_ _%hd113957%_)
                     (_%lp113924%_ _%rest113956%_)))
                  (_%K113932113950%_ (lambda () '#!void)))
              (let ((_%try-match113929113953%_
                     (lambda ()
                       (if (##null? _%g113927113937%_)
                           (_%K113932113950%_)
                           (_%else113930113945%_)))))
                (if (##pair? _%g113927113937%_)
                    (let ((_%tl113935113964%_ (##cdr _%g113927113937%_))
                          (_%hd113934113962%_ (##car _%g113927113937%_)))
                      (let ((_%hd113967%_ _%hd113934113962%_)
                            (_%rest113969%_ _%tl113935113964%_))
                        (_%K113933113959%_ _%rest113969%_ _%hd113967%_)))
                    (_%try-match113929113953%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f113826%_ _%xstx113827%_ _%ystx113828%_)
        (if (procedure? _%f113826%_)
            '#!void
            (error '"expected procedure" _%f113826%_))
        (let _%lp113830%_ ((_%xrest113832%_ _%xstx113827%_)
                           (_%yrest113833%_ _%ystx113828%_))
          (let* ((_%g113834113844%_ (gx#syntax-e _%xrest113832%_))
                 (_%else113837113852%_ (lambda () '#!void)))
            (let ((_%K113840113909%_
                   (lambda (_%xrest113878%_ _%xhd113879%_)
                     (let* ((_%g113880113887%_ (gx#syntax-e _%yrest113833%_))
                            (_%E113882113891%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g113880113887%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K113883113897%_
                             (lambda (_%yrest113894%_ _%yhd113895%_)
                               (_%f113826%_ _%xhd113879%_ _%yhd113895%_)
                               (_%lp113830%_
                                _%xrest113878%_
                                _%yrest113894%_))))
                       (if (##pair? _%g113880113887%_)
                           (let ((_%hd113884113900%_ (##car _%g113880113887%_))
                                 (_%tl113885113902%_
                                  (##cdr _%g113880113887%_)))
                             (let* ((_%yhd113905%_ _%hd113884113900%_)
                                    (_%yrest113907%_ _%tl113885113902%_))
                               (_%K113883113897%_
                                _%yrest113907%_
                                _%yhd113905%_)))
                           (_%E113882113891%_)))))
                  (_%K113839113872%_
                   (lambda ()
                     (let* ((_%yrest113856113861%_ _%yrest113833%_)
                            (_%E113858113865%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest113856113861%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K113859113869%_
                             (lambda ()
                               (_%f113826%_ _%xrest113832%_ _%yrest113833%_))))
                       (if (not (gx#stx-null? _%yrest113856113861%_))
                           (_%K113859113869%_)
                           (_%E113858113865%_))))))
              (let ((_%try-match113836113875%_
                     (lambda ()
                       (if (not (null? _%g113834113844%_))
                           (_%K113839113872%_)
                           (_%else113837113852%_)))))
                (if (##pair? _%g113834113844%_)
                    (let ((_%tl113842113914%_ (##cdr _%g113834113844%_))
                          (_%hd113841113912%_ (##car _%g113834113844%_)))
                      (let ((_%xhd113917%_ _%hd113841113912%_)
                            (_%xrest113919%_ _%tl113842113914%_))
                        (_%K113840113909%_ _%xrest113919%_ _%xhd113917%_)))
                    (_%try-match113836113875%_))))))))
    (define gx#stx-map
      (lambda _g114511_
        (let ((_g114510_ (##length _g114511_)))
          (cond ((##fx= _g114510_ 2)
                 (apply (lambda (_%f113819%_ _%stx113820%_)
                          (gx#stx-map1 _%f113819%_ _%stx113820%_))
                        _g114511_))
                ((##fx= _g114510_ 3)
                 (apply (lambda (_%f113822%_ _%xstx113823%_ _%ystx113824%_)
                          (gx#stx-map2
                           _%f113822%_
                           _%xstx113823%_
                           _%ystx113824%_))
                        _g114511_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g114511_))))))
    (define gx#stx-map1
      (lambda (_%f113769%_ _%stx113770%_)
        (if (procedure? _%f113769%_)
            '#!void
            (error '"expected procedure" _%f113769%_))
        (let _%recur113772%_ ((_%rest113774%_ _%stx113770%_))
          (let* ((_%g113775113785%_ (gx#syntax-e _%rest113774%_))
                 (_%else113778113793%_
                  (lambda () (_%f113769%_ _%rest113774%_))))
            (let ((_%K113781113807%_
                   (lambda (_%rest113804%_ _%hd113805%_)
                     (cons (_%f113769%_ _%hd113805%_)
                           (_%recur113772%_ _%rest113804%_))))
                  (_%K113780113798%_ (lambda () '())))
              (let ((_%try-match113777113801%_
                     (lambda ()
                       (if (##null? _%g113775113785%_)
                           (_%K113780113798%_)
                           (_%else113778113793%_)))))
                (if (##pair? _%g113775113785%_)
                    (let ((_%tl113783113812%_ (##cdr _%g113775113785%_))
                          (_%hd113782113810%_ (##car _%g113775113785%_)))
                      (let ((_%hd113815%_ _%hd113782113810%_)
                            (_%rest113817%_ _%tl113783113812%_))
                        (_%K113781113807%_ _%rest113817%_ _%hd113815%_)))
                    (_%try-match113777113801%_))))))))
    (define gx#stx-map2
      (lambda (_%f113674%_ _%xstx113675%_ _%ystx113676%_)
        (if (procedure? _%f113674%_)
            '#!void
            (error '"expected procedure" _%f113674%_))
        (let _%recur113678%_ ((_%xrest113680%_ _%xstx113675%_)
                              (_%yrest113681%_ _%ystx113676%_))
          (let* ((_%g113682113692%_ (gx#syntax-e _%xrest113680%_))
                 (_%else113685113700%_ (lambda () '())))
            (let ((_%K113688113757%_
                   (lambda (_%xrest113726%_ _%xhd113727%_)
                     (let* ((_%g113728113735%_ (gx#syntax-e _%yrest113681%_))
                            (_%E113730113739%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g113728113735%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K113731113745%_
                             (lambda (_%yrest113742%_ _%yhd113743%_)
                               (cons (_%f113674%_ _%xhd113727%_ _%yhd113743%_)
                                     (_%recur113678%_
                                      _%xrest113726%_
                                      _%yrest113742%_)))))
                       (if (##pair? _%g113728113735%_)
                           (let ((_%hd113732113748%_ (##car _%g113728113735%_))
                                 (_%tl113733113750%_
                                  (##cdr _%g113728113735%_)))
                             (let* ((_%yhd113753%_ _%hd113732113748%_)
                                    (_%yrest113755%_ _%tl113733113750%_))
                               (_%K113731113745%_
                                _%yrest113755%_
                                _%yhd113753%_)))
                           (_%E113730113739%_)))))
                  (_%K113687113720%_
                   (lambda ()
                     (let* ((_%yrest113704113709%_ _%yrest113681%_)
                            (_%E113706113713%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest113704113709%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K113707113717%_
                             (lambda ()
                               (_%f113674%_ _%xrest113680%_ _%yrest113681%_))))
                       (if (not (gx#stx-null? _%yrest113704113709%_))
                           (_%K113707113717%_)
                           (_%E113706113713%_))))))
              (let ((_%try-match113684113723%_
                     (lambda ()
                       (if (not (null? _%g113682113692%_))
                           (_%K113687113720%_)
                           (_%else113685113700%_)))))
                (if (##pair? _%g113682113692%_)
                    (let ((_%tl113690113762%_ (##cdr _%g113682113692%_))
                          (_%hd113689113760%_ (##car _%g113682113692%_)))
                      (let ((_%xhd113765%_ _%hd113689113760%_)
                            (_%xrest113767%_ _%tl113690113762%_))
                        (_%K113688113757%_ _%xrest113767%_ _%xhd113765%_)))
                    (_%try-match113684113723%_))))))))
    (define gx#stx-andmap
      (lambda (_%f113624%_ _%stx113625%_)
        (if (procedure? _%f113624%_)
            '#!void
            (error '"expected procedure" _%f113624%_))
        (let _%lp113627%_ ((_%rest113629%_ _%stx113625%_))
          (let* ((_%g113630113640%_ (gx#syntax-e _%rest113629%_))
                 (_%else113633113648%_
                  (lambda () (_%f113624%_ _%rest113629%_))))
            (let ((_%K113636113662%_
                   (lambda (_%rest113659%_ _%hd113660%_)
                     (if (_%f113624%_ _%hd113660%_)
                         (_%lp113627%_ _%rest113659%_)
                         '#f)))
                  (_%K113635113653%_ (lambda () '#t)))
              (let ((_%try-match113632113656%_
                     (lambda ()
                       (if (##null? _%g113630113640%_)
                           (_%K113635113653%_)
                           (_%else113633113648%_)))))
                (if (##pair? _%g113630113640%_)
                    (let ((_%tl113638113667%_ (##cdr _%g113630113640%_))
                          (_%hd113637113665%_ (##car _%g113630113640%_)))
                      (let ((_%hd113670%_ _%hd113637113665%_)
                            (_%rest113672%_ _%tl113638113667%_))
                        (_%K113636113662%_ _%rest113672%_ _%hd113670%_)))
                    (_%try-match113632113656%_))))))))
    (define gx#stx-ormap
      (lambda (_%f113571%_ _%stx113572%_)
        (if (procedure? _%f113571%_)
            '#!void
            (error '"expected procedure" _%f113571%_))
        (let _%lp113574%_ ((_%rest113576%_ _%stx113572%_))
          (let* ((_%g113577113587%_ (gx#syntax-e _%rest113576%_))
                 (_%else113580113595%_
                  (lambda () (_%f113571%_ _%rest113576%_))))
            (let ((_%K113583113612%_
                   (lambda (_%rest113606%_ _%hd113607%_)
                     (let ((_%$e113609%_ (_%f113571%_ _%hd113607%_)))
                       (if _%$e113609%_
                           _%$e113609%_
                           (_%lp113574%_ _%rest113606%_)))))
                  (_%K113582113600%_ (lambda () '#f)))
              (let ((_%try-match113579113603%_
                     (lambda ()
                       (if (##null? _%g113577113587%_)
                           (_%K113582113600%_)
                           (_%else113580113595%_)))))
                (if (##pair? _%g113577113587%_)
                    (let ((_%tl113585113617%_ (##cdr _%g113577113587%_))
                          (_%hd113584113615%_ (##car _%g113577113587%_)))
                      (let ((_%hd113620%_ _%hd113584113615%_)
                            (_%rest113622%_ _%tl113585113617%_))
                        (_%K113583113612%_ _%rest113622%_ _%hd113620%_)))
                    (_%try-match113579113603%_))))))))
    (define gx#stx-foldl
      (lambda (_%f113519%_ _%iv113520%_ _%stx113521%_)
        (if (procedure? _%f113519%_)
            '#!void
            (error '"expected procedure" _%f113519%_))
        (let _%lp113523%_ ((_%r113525%_ _%iv113520%_)
                           (_%rest113526%_ _%stx113521%_))
          (let* ((_%g113527113537%_ (gx#syntax-e _%rest113526%_))
                 (_%else113530113545%_
                  (lambda () (_%f113519%_ _%rest113526%_ _%r113525%_))))
            (let ((_%K113533113559%_
                   (lambda (_%rest113556%_ _%hd113557%_)
                     (_%lp113523%_
                      (_%f113519%_ _%hd113557%_ _%r113525%_)
                      _%rest113556%_)))
                  (_%K113532113550%_ (lambda () _%r113525%_)))
              (let ((_%try-match113529113553%_
                     (lambda ()
                       (if (##null? _%g113527113537%_)
                           (_%K113532113550%_)
                           (_%else113530113545%_)))))
                (if (##pair? _%g113527113537%_)
                    (let ((_%tl113535113564%_ (##cdr _%g113527113537%_))
                          (_%hd113534113562%_ (##car _%g113527113537%_)))
                      (let ((_%hd113567%_ _%hd113534113562%_)
                            (_%rest113569%_ _%tl113535113564%_))
                        (_%K113533113559%_ _%rest113569%_ _%hd113567%_)))
                    (_%try-match113529113553%_))))))))
    (define gx#stx-foldr
      (lambda (_%f113468%_ _%iv113469%_ _%stx113470%_)
        (if (procedure? _%f113468%_)
            '#!void
            (error '"expected procedure" _%f113468%_))
        (let _%recur113472%_ ((_%rest113474%_ _%stx113470%_))
          (let* ((_%g113475113485%_ (gx#syntax-e _%rest113474%_))
                 (_%else113478113493%_
                  (lambda () (_%f113468%_ _%rest113474%_ _%iv113469%_))))
            (let ((_%K113481113507%_
                   (lambda (_%rest113504%_ _%hd113505%_)
                     (_%f113468%_
                      _%hd113505%_
                      (_%recur113472%_ _%rest113504%_))))
                  (_%K113480113498%_ (lambda () _%iv113469%_)))
              (let ((_%try-match113477113501%_
                     (lambda ()
                       (if (##null? _%g113475113485%_)
                           (_%K113480113498%_)
                           (_%else113478113493%_)))))
                (if (##pair? _%g113475113485%_)
                    (let ((_%tl113483113512%_ (##cdr _%g113475113485%_))
                          (_%hd113482113510%_ (##car _%g113475113485%_)))
                      (let ((_%hd113515%_ _%hd113482113510%_)
                            (_%rest113517%_ _%tl113483113512%_))
                        (_%K113481113507%_ _%rest113517%_ _%hd113515%_)))
                    (_%try-match113477113501%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx113466%_) (gx#stx-foldl cons '() _%stx113466%_)))
    (define gx#stx-last
      (lambda (_%stx113427%_)
        (let _%lp113429%_ ((_%rest113431%_ _%stx113427%_))
          (let* ((_%g113432113440%_ (gx#syntax-e _%rest113431%_))
                 (_%else113434113448%_ (lambda () _%rest113431%_))
                 (_%K113436113454%_
                  (lambda (_%rest113451%_ _%hd113452%_)
                    (if (gx#stx-null? _%rest113451%_)
                        _%hd113452%_
                        (_%lp113429%_ _%rest113451%_)))))
            (if (##pair? _%g113432113440%_)
                (let ((_%hd113437113457%_ (##car _%g113432113440%_))
                      (_%tl113438113459%_ (##cdr _%g113432113440%_)))
                  (let* ((_%hd113462%_ _%hd113437113457%_)
                         (_%rest113464%_ _%tl113438113459%_))
                    (_%K113436113454%_ _%rest113464%_ _%hd113462%_)))
                (_%else113434113448%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx113398%_)
        (let _%lp113400%_ ((_%hd113402%_ _%stx113398%_))
          (let* ((_%g113403113410%_ (gx#syntax-e _%hd113402%_))
                 (_%E113405113414%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g113403113410%_
                           '([_ . rest]))
                    '#!void))
                 (_%K113406113419%_
                  (lambda (_%rest113417%_)
                    (if (gx#stx-pair? _%rest113417%_)
                        (_%lp113400%_ _%rest113417%_)
                        _%hd113402%_))))
            (if (##pair? _%g113403113410%_)
                (let* ((_%tl113408113422%_ (##cdr _%g113403113410%_))
                       (_%rest113425%_ _%tl113408113422%_))
                  (_%K113406113419%_ _%rest113425%_))
                (_%E113405113414%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx113367%_ _%k113368%_)
        (let _%lp113370%_ ((_%rest113372%_ _%stx113367%_)
                           (_%k113373%_ _%k113368%_))
          (if (fxpositive? _%k113373%_)
              (let* ((_%g113374113381%_ (gx#syntax-e _%rest113372%_))
                     (_%E113376113385%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g113374113381%_
                               '([_ . rest]))
                        '#!void))
                     (_%K113377113390%_
                      (lambda (_%rest113388%_)
                        (_%lp113370%_ _%rest113388%_ (##fx- _%k113373%_ '1)))))
                (if (##pair? _%g113374113381%_)
                    (let* ((_%tl113379113393%_ (##cdr _%g113374113381%_))
                           (_%rest113396%_ _%tl113379113393%_))
                      (_%K113377113390%_ _%rest113396%_))
                    (_%E113376113385%_)))
              _%rest113372%_))))
    (define gx#stx-list-ref
      (lambda (_%stx113364%_ _%k113365%_)
        (gx#stx-car (gx#stx-list-tail _%stx113364%_ _%k113365%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx113276%_ _%key?113277%_)
        (if (procedure? _%key?113277%_)
            '#!void
            (error '"expected procedure" _%key?113277%_))
        (let _%lp113279%_ ((_%rest113281%_ _%stx113276%_))
          (let* ((_%g113282113292%_ (gx#stx-e _%rest113281%_))
                 (_%else113285113300%_ (lambda () '#f)))
            (let ((_%K113288113342%_
                   (lambda (_%rest113311%_ _%hd113312%_)
                     (if (_%key?113277%_ _%hd113312%_)
                         (let* ((_%g113313113321%_ (gx#stx-e _%rest113311%_))
                                (_%else113315113329%_ (lambda () '#f))
                                (_%K113317113334%_
                                 (lambda (_%rest113332%_)
                                   (_%lp113279%_ _%rest113332%_))))
                           (if (##pair? _%g113313113321%_)
                               (let* ((_%tl113319113337%_
                                       (##cdr _%g113313113321%_))
                                      (_%rest113340%_ _%tl113319113337%_))
                                 (_%lp113279%_ _%rest113340%_))
                               (_%else113315113329%_)))
                         '#f)))
                  (_%K113287113305%_ (lambda () '#t)))
              (let ((_%try-match113284113308%_
                     (lambda ()
                       (if (##null? _%g113282113292%_)
                           (_%K113287113305%_)
                           (_%else113285113300%_)))))
                (if (##pair? _%g113282113292%_)
                    (let ((_%tl113290113347%_ (##cdr _%g113282113292%_))
                          (_%hd113289113345%_ (##car _%g113282113292%_)))
                      (let ((_%hd113350%_ _%hd113289113345%_)
                            (_%rest113352%_ _%tl113290113347%_))
                        (_%K113288113342%_ _%rest113352%_ _%hd113350%_)))
                    (_%try-match113284113308%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx113357%_)
        (let ((_%key?113359%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx113357%_ _%key?113359%_))))
    (define gx#stx-plist?
      (lambda _g114513_
        (let ((_g114512_ (##length _g114513_)))
          (cond ((##fx= _g114512_ 1)
                 (apply (lambda (_%stx113357%_)
                          (gx#stx-plist?__0 _%stx113357%_))
                        _g114513_))
                ((##fx= _g114512_ 2)
                 (apply (lambda (_%stx113361%_ _%key?113362%_)
                          (gx#stx-plist?__% _%stx113361%_ _%key?113362%_))
                        _g114513_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g114513_))))))
    (define gx#stx-getq__%
      (lambda (_%key113194%_ _%stx113195%_ _%key=?113196%_)
        (if (procedure? _%key=?113196%_)
            '#!void
            (error '"expected procedure" _%key=?113196%_))
        (let _%lp113198%_ ((_%rest113200%_ _%stx113195%_))
          (let* ((_%g113201113209%_ (gx#syntax-e _%rest113200%_))
                 (_%else113203113217%_ (lambda () '#f))
                 (_%K113205113251%_
                  (lambda (_%rest113220%_ _%hd113221%_)
                    (let* ((_%g113222113229%_ (gx#syntax-e _%rest113220%_))
                           (_%E113224113233%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g113222113229%_
                                     '([val . rest]))
                              '#!void))
                           (_%K113225113239%_
                            (lambda (_%rest113236%_ _%val113237%_)
                              (if (_%key=?113196%_ _%hd113221%_ _%key113194%_)
                                  _%val113237%_
                                  (_%lp113198%_ _%rest113236%_)))))
                      (if (##pair? _%g113222113229%_)
                          (let ((_%hd113226113242%_ (##car _%g113222113229%_))
                                (_%tl113227113244%_ (##cdr _%g113222113229%_)))
                            (let* ((_%val113247%_ _%hd113226113242%_)
                                   (_%rest113249%_ _%tl113227113244%_))
                              (_%K113225113239%_
                               _%rest113249%_
                               _%val113247%_)))
                          (_%E113224113233%_))))))
            (if (##pair? _%g113201113209%_)
                (let ((_%hd113206113254%_ (##car _%g113201113209%_))
                      (_%tl113207113256%_ (##cdr _%g113201113209%_)))
                  (let* ((_%hd113259%_ _%hd113206113254%_)
                         (_%rest113261%_ _%tl113207113256%_))
                    (_%K113205113251%_ _%rest113261%_ _%hd113259%_)))
                (_%else113203113217%_))))))
    (define gx#stx-getq__0
      (lambda (_%key113266%_ _%stx113267%_)
        (let ((_%key=?113269%_ gx#stx-eq?))
          (gx#stx-getq__% _%key113266%_ _%stx113267%_ _%key=?113269%_))))
    (define gx#stx-getq
      (lambda _g114515_
        (let ((_g114514_ (##length _g114515_)))
          (cond ((##fx= _g114514_ 2)
                 (apply (lambda (_%key113266%_ _%stx113267%_)
                          (gx#stx-getq__0 _%key113266%_ _%stx113267%_))
                        _g114515_))
                ((##fx= _g114514_ 3)
                 (apply (lambda (_%key113271%_ _%stx113272%_ _%key=?113273%_)
                          (gx#stx-getq__%
                           _%key113271%_
                           _%stx113272%_
                           _%key=?113273%_))
                        _g114515_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g114515_))))))))

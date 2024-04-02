(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1712093476)
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
      (lambda _%$args114476%_
        (apply make-instance gx#identifier-wrap::t _%$args114476%_)))
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
      (lambda _%$args114473%_
        (apply make-instance gx#syntax-wrap::t _%$args114473%_)))
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
      (lambda _%$args114470%_
        (apply make-instance gx#syntax-quote::t _%$args114470%_)))
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
      (lambda (_%stx114468%_) (symbol? (gx#stx-e _%stx114468%_))))
    (define gx#identifier-quote?
      (lambda (_%stx114466%_)
        (if (##structure-direct-instance-of? _%stx114466%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx114466%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx114461%_)
        (if (##structure-direct-instance-of? _%stx114461%_ 'gx#syntax-quote::t)
            (let () '#t)
            (if (##structure-direct-instance-of?
                 _%stx114461%_
                 'gx#syntax-wrap::t)
                (let ()
                  (gx#sealed-syntax?
                   (##unchecked-structure-ref _%stx114461%_ '1 '#f '#f)))
                (let () '#f)))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx114456%_)
        (if (##structure-direct-instance-of? _%stx114456%_ 'gx#syntax-quote::t)
            (let () _%stx114456%_)
            (if (##structure-direct-instance-of?
                 _%stx114456%_
                 'gx#syntax-wrap::t)
                (let ()
                  (gx#sealed-syntax-unwrap
                   (##unchecked-structure-ref _%stx114456%_ '1 '#f '#f)))
                (let () '#f)))))
    (define gx#syntax-e
      (lambda (_%stx114430%_)
        (if (##structure-direct-instance-of? _%stx114430%_ 'gx#syntax-wrap::t)
            (let ()
              (let _%lp114433%_ ((_%e114435%_
                                  (##unchecked-structure-ref
                                   _%stx114430%_
                                   '1
                                   '#f
                                   '#f))
                                 (_%marks114436%_
                                  (cons (##unchecked-structure-ref
                                         _%stx114430%_
                                         '3
                                         '#f
                                         '#f)
                                        '())))
                (if (##structure? _%e114435%_)
                    (let ()
                      (let ((_%$e114439%_
                             (##type-id (##structure-type _%e114435%_))))
                        (if (eq? 'gx#syntax-wrap::t _%$e114439%_)
                            (_%lp114433%_
                             (##unchecked-structure-ref _%e114435%_ '1 '#f '#f)
                             (gx#apply-mark
                              (##unchecked-structure-ref
                               _%e114435%_
                               '3
                               '#f
                               '#f)
                              _%marks114436%_))
                            (if (or (eq? 'gx#syntax-quote::t _%$e114439%_)
                                    (eq? 'gx#identifier-wrap::t _%$e114439%_))
                                (##unchecked-structure-ref
                                 _%e114435%_
                                 '1
                                 '#f
                                 '#f)
                                (if (eq? 'gerbil#AST::t _%$e114439%_)
                                    (_%lp114433%_
                                     (##unchecked-structure-ref
                                      _%e114435%_
                                      '1
                                      '#f
                                      '#f)
                                     _%marks114436%_)
                                    _%e114435%_)))))
                    (if (null? _%marks114436%_)
                        (let () _%e114435%_)
                        (if (pair? _%e114435%_)
                            (let ()
                              (cons (gx#stx-wrap
                                     (car _%e114435%_)
                                     _%marks114436%_)
                                    (gx#stx-wrap
                                     (cdr _%e114435%_)
                                     _%marks114436%_)))
                            (if (vector? _%e114435%_)
                                (let ()
                                  (vector-map
                                   (lambda (_%g114447114449%_)
                                     (gx#stx-wrap
                                      _%g114447114449%_
                                      _%marks114436%_))
                                   _%e114435%_))
                                (if (box? _%e114435%_)
                                    (let ()
                                      (box (gx#stx-wrap
                                            (unbox _%e114435%_)
                                            _%marks114436%_)))
                                    (let () _%e114435%_))))))))
            (if (##structure-instance-of? _%stx114430%_ 'gerbil#AST::t)
                (let () (##unchecked-structure-ref _%stx114430%_ '1 '#f '#f))
                (let () _%stx114430%_)))))
    (define gx#syntax->datum
      (lambda (_%stx114423%_)
        (if (##structure-instance-of? _%stx114423%_ 'gerbil#AST::t)
            (let ()
              (gx#syntax->datum
               (##unchecked-structure-ref _%stx114423%_ '1 '#f '#f)))
            (if (pair? _%stx114423%_)
                (let ()
                  (cons (gx#syntax->datum (car _%stx114423%_))
                        (gx#syntax->datum (cdr _%stx114423%_))))
                (if (vector? _%stx114423%_)
                    (let () (vector-map gx#syntax->datum _%stx114423%_))
                    (if (box? _%stx114423%_)
                        (let () (box (gx#syntax->datum (unbox _%stx114423%_))))
                        (let () _%stx114423%_)))))))
    (define gx#datum->syntax__%
      (lambda (_%stx114357%_ _%datum114358%_ _%src114359%_ _%quote?114360%_)
        (letrec ((_%wrap-datum114362%_
                  (lambda (_%e114395%_ _%marks114396%_)
                    (_%wrap-inner114364%_
                     _%e114395%_
                     (lambda (_%g114397114399%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g114397114399%_
                        _%src114359%_
                        _%marks114396%_)))))
                 (_%wrap-quote114363%_
                  (lambda (_%e114387%_ _%ctx114388%_ _%marks114389%_)
                    (_%wrap-inner114364%_
                     _%e114387%_
                     (lambda (_%g114390114392%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g114390114392%_
                        _%src114359%_
                        _%ctx114388%_
                        _%marks114389%_)))))
                 (_%wrap-inner114364%_
                  (lambda (_%e114375%_ _%wrap-e114376%_)
                    (let _%recur114378%_ ((_%e114380%_ _%e114375%_))
                      (if (symbol? _%e114380%_)
                          (let () (_%wrap-e114376%_ _%e114380%_))
                          (if (pair? _%e114380%_)
                              (let ()
                                (cons (_%recur114378%_ (car _%e114380%_))
                                      (_%recur114378%_ (cdr _%e114380%_))))
                              (if (vector? _%e114380%_)
                                  (let ()
                                    (vector-map _%recur114378%_ _%e114380%_))
                                  (if (box? _%e114380%_)
                                      (let ()
                                        (box (_%recur114378%_
                                              (unbox _%e114380%_))))
                                      (let () _%e114380%_))))))))
                 (_%wrap-outer114365%_
                  (lambda (_%e114373%_)
                    (if (##structure-instance-of? _%e114373%_ 'gerbil#AST::t)
                        _%e114373%_
                        (##structure gx#AST::t _%e114373%_ _%src114359%_)))))
          (if (##structure-instance-of? _%datum114358%_ 'gerbil#AST::t)
              (let () _%datum114358%_)
              (if (not _%stx114357%_)
                  (let ()
                    (##structure gx#AST::t _%datum114358%_ _%src114359%_))
                  (if (gx#identifier? _%stx114357%_)
                      (let ()
                        (let ((_%stx114370%_ (gx#stx-unwrap__0 _%stx114357%_)))
                          (_%wrap-outer114365%_
                           (if (##structure-direct-instance-of?
                                _%stx114370%_
                                'gx#syntax-quote::t)
                               (if _%quote?114360%_
                                   (_%wrap-quote114363%_
                                    _%datum114358%_
                                    (##unchecked-structure-ref
                                     _%stx114370%_
                                     '3
                                     '#f
                                     '#f)
                                    (##unchecked-structure-ref
                                     _%stx114370%_
                                     '4
                                     '#f
                                     '#f))
                                   (_%wrap-datum114362%_
                                    _%datum114358%_
                                    (##unchecked-structure-ref
                                     _%stx114370%_
                                     '4
                                     '#f
                                     '#f)))
                               (_%wrap-datum114362%_
                                _%datum114358%_
                                (##unchecked-structure-ref
                                 _%stx114370%_
                                 '3
                                 '#f
                                 '#f))))))
                      (let ()
                        (error '"Bad template syntax; expected identifier"
                               _%stx114357%_))))))))
    (define gx#datum->syntax__0
      (lambda (_%stx114405%_ _%datum114406%_)
        (let* ((_%src114408%_ '#f) (_%quote?114410%_ '#t))
          (gx#datum->syntax__%
           _%stx114405%_
           _%datum114406%_
           _%src114408%_
           _%quote?114410%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx114412%_ _%datum114413%_ _%src114414%_)
        (let ((_%quote?114416%_ '#t))
          (gx#datum->syntax__%
           _%stx114412%_
           _%datum114413%_
           _%src114414%_
           _%quote?114416%_))))
    (define gx#datum->syntax
      (lambda _g114557_
        (let ((_g114556_ (##length _g114557_)))
          (cond ((##fx= _g114556_ 2)
                 (apply (lambda (_%stx114405%_ _%datum114406%_)
                          (gx#datum->syntax__0 _%stx114405%_ _%datum114406%_))
                        _g114557_))
                ((##fx= _g114556_ 3)
                 (apply (lambda (_%stx114412%_ _%datum114413%_ _%src114414%_)
                          (gx#datum->syntax__1
                           _%stx114412%_
                           _%datum114413%_
                           _%src114414%_))
                        _g114557_))
                ((##fx= _g114556_ 4)
                 (apply (lambda (_%stx114418%_
                                 _%datum114419%_
                                 _%src114420%_
                                 _%quote?114421%_)
                          (gx#datum->syntax__%
                           _%stx114418%_
                           _%datum114419%_
                           _%src114420%_
                           _%quote?114421%_))
                        _g114557_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g114557_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx114323%_ _%marks114324%_)
        (let _%lp114326%_ ((_%e114328%_ _%stx114323%_)
                           (_%marks114329%_ _%marks114324%_)
                           (_%src114330%_ (gx#stx-source _%stx114323%_)))
          (if (##structure-direct-instance-of? _%e114328%_ 'gx#syntax-wrap::t)
              (let ()
                (_%lp114326%_
                 (##unchecked-structure-ref _%e114328%_ '1 '#f '#f)
                 (gx#apply-mark
                  (##unchecked-structure-ref _%e114328%_ '3 '#f '#f)
                  _%marks114329%_)
                 (##unchecked-structure-ref _%e114328%_ '2 '#f '#f)))
              (if (##structure-direct-instance-of?
                   _%e114328%_
                   'gx#identifier-wrap::t)
                  (let ()
                    (if (null? _%marks114329%_)
                        _%e114328%_
                        (##structure
                         gx#identifier-wrap::t
                         (##unchecked-structure-ref _%e114328%_ '1 '#f '#f)
                         (##unchecked-structure-ref _%e114328%_ '2 '#f '#f)
                         (__foldl1
                          gx#apply-mark
                          (##unchecked-structure-ref _%e114328%_ '3 '#f '#f)
                          _%marks114329%_))))
                  (if (##structure-direct-instance-of?
                       _%e114328%_
                       'gx#syntax-quote::t)
                      (let () _%e114328%_)
                      (if (##structure-instance-of? _%e114328%_ 'gerbil#AST::t)
                          (let ()
                            (_%lp114326%_
                             (##unchecked-structure-ref _%e114328%_ '1 '#f '#f)
                             _%marks114329%_
                             (##unchecked-structure-ref
                              _%e114328%_
                              '2
                              '#f
                              '#f)))
                          (if (symbol? _%e114328%_)
                              (let ()
                                (##structure
                                 gx#identifier-wrap::t
                                 _%e114328%_
                                 _%src114330%_
                                 (reverse _%marks114329%_)))
                              (if (null? _%marks114329%_)
                                  (let () _%e114328%_)
                                  (if (pair? _%e114328%_)
                                      (let ()
                                        (cons (gx#stx-wrap
                                               (car _%e114328%_)
                                               _%marks114329%_)
                                              (gx#stx-wrap
                                               (cdr _%e114328%_)
                                               _%marks114329%_)))
                                      (if (vector? _%e114328%_)
                                          (let ()
                                            (vector-map
                                             (lambda (_%g114339114341%_)
                                               (gx#stx-wrap
                                                _%g114339114341%_
                                                _%marks114329%_))
                                             _%e114328%_))
                                          (if (box? _%e114328%_)
                                              (let ()
                                                (box (gx#stx-wrap
                                                      (unbox _%e114328%_)
                                                      _%marks114329%_)))
                                              (let () _%e114328%_)))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx114349%_)
        (let ((_%marks114351%_ '()))
          (gx#stx-unwrap__% _%stx114349%_ _%marks114351%_))))
    (define gx#stx-unwrap
      (lambda _g114559_
        (let ((_g114558_ (##length _g114559_)))
          (cond ((##fx= _g114558_ 1)
                 (apply (lambda (_%stx114349%_)
                          (gx#stx-unwrap__0 _%stx114349%_))
                        _g114559_))
                ((##fx= _g114558_ 2)
                 (apply (lambda (_%stx114353%_ _%marks114354%_)
                          (gx#stx-unwrap__% _%stx114353%_ _%marks114354%_))
                        _g114559_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g114559_))))))
    (define gx#stx-wrap
      (lambda (_%stx114316%_ _%marks114317%_)
        (__foldl1
         (lambda (_%mark114319%_ _%stx114320%_)
           (gx#stx-apply-mark _%stx114320%_ _%mark114319%_))
         _%stx114316%_
         _%marks114317%_)))
    (define gx#stx-rewrap
      (lambda (_%stx114310%_ _%marks114311%_)
        (__foldr1
         (lambda (_%mark114313%_ _%stx114314%_)
           (gx#stx-apply-mark _%stx114314%_ _%mark114313%_))
         _%stx114310%_
         _%marks114311%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx114304%_ _%mark114305%_)
        (if (##structure-direct-instance-of? _%stx114304%_ 'gx#syntax-quote::t)
            (let () _%stx114304%_)
            (if (and (##structure-direct-instance-of?
                      _%stx114304%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark114305%_
                          (##unchecked-structure-ref
                           _%stx114304%_
                           '3
                           '#f
                           '#f)))
                (let () (##unchecked-structure-ref _%stx114304%_ '1 '#f '#f))
                (let ()
                  (##structure
                   gx#syntax-wrap::t
                   _%stx114304%_
                   (gx#stx-source _%stx114304%_)
                   _%mark114305%_))))))
    (define gx#apply-mark
      (lambda (_%mark114268%_ _%marks114269%_)
        (let* ((_%marks114270114278%_ _%marks114269%_)
               (_%else114272114286%_
                (lambda () (cons _%mark114268%_ _%marks114269%_)))
               (_%K114274114292%_
                (lambda (_%rest114289%_ _%hd114290%_)
                  (if (eq? _%mark114268%_ _%hd114290%_)
                      _%rest114289%_
                      (cons _%mark114268%_ _%marks114269%_)))))
          (if (##pair? _%marks114270114278%_)
              (let ((_%hd114275114295%_ (##car _%marks114270114278%_))
                    (_%tl114276114297%_ (##cdr _%marks114270114278%_)))
                (let* ((_%hd114300%_ _%hd114275114295%_)
                       (_%rest114302%_ _%tl114276114297%_))
                  (_%K114274114292%_ _%rest114302%_ _%hd114300%_)))
              (_%else114272114286%_)))))
    (define gx#stx-e
      (lambda (_%stx114263%_)
        (if (##structure-direct-instance-of? _%stx114263%_ 'gx#syntax-wrap::t)
            (let ()
              (gx#stx-e (##unchecked-structure-ref _%stx114263%_ '1 '#f '#f)))
            (if (##structure-instance-of? _%stx114263%_ 'gerbil#AST::t)
                (let () (##unchecked-structure-ref _%stx114263%_ '1 '#f '#f))
                (let () _%stx114263%_)))))
    (define gx#stx-source
      (lambda (_%stx114261%_)
        (if (##structure-instance-of? _%stx114261%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx114261%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx114255%_ _%src114256%_)
        (if (or (##structure-instance-of? _%stx114255%_ 'gerbil#AST::t)
                (not _%src114256%_))
            _%stx114255%_
            (##structure gx#AST::t _%stx114255%_ _%src114256%_))))
    (define gx#stx-datum?
      (lambda (_%stx114253%_) (gx#self-quoting? (gx#stx-e _%stx114253%_))))
    (define gx#self-quoting?
      (lambda (_%x114236%_)
        (let ((_%$e114238%_ (immediate? _%x114236%_)))
          (if _%$e114238%_
              _%$e114238%_
              (let ((_%$e114241%_ (number? _%x114236%_)))
                (if _%$e114241%_
                    _%$e114241%_
                    (let ((_%$e114244%_ (keyword? _%x114236%_)))
                      (if _%$e114244%_
                          _%$e114244%_
                          (let ((_%$e114247%_ (string? _%x114236%_)))
                            (if _%$e114247%_
                                _%$e114247%_
                                (let ((_%$e114250%_ (vector? _%x114236%_)))
                                  (if _%$e114250%_
                                      _%$e114250%_
                                      (u8vector? _%x114236%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e114234%_) (boolean? (gx#stx-e _%e114234%_))))
    (define gx#stx-keyword?
      (lambda (_%e114232%_) (keyword? (gx#stx-e _%e114232%_))))
    (define gx#stx-char? (lambda (_%e114230%_) (char? (gx#stx-e _%e114230%_))))
    (define gx#stx-number?
      (lambda (_%e114228%_) (number? (gx#stx-e _%e114228%_))))
    (define gx#stx-fixnum?
      (lambda (_%e114226%_) (fixnum? (gx#stx-e _%e114226%_))))
    (define gx#stx-string?
      (lambda (_%e114224%_) (string? (gx#stx-e _%e114224%_))))
    (define gx#stx-null? (lambda (_%e114222%_) (null? (gx#stx-e _%e114222%_))))
    (define gx#stx-pair? (lambda (_%e114220%_) (pair? (gx#stx-e _%e114220%_))))
    (define gx#stx-list?
      (lambda (_%e114182%_)
        (let* ((_%g114183114192%_ (gx#stx-e _%e114182%_))
               (_%E114186114196%_
                (lambda ()
                  (error '"No clause matching"
                         _%g114183114192%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K114188114212%_
                 (lambda (_%rest114210%_) (gx#stx-list? _%rest114210%_)))
                (_%K114187114202%_
                 (lambda (_%tail114200%_) (null? _%tail114200%_))))
            (if (##pair? _%g114183114192%_)
                (let* ((_%tl114190114215%_ (##cdr _%g114183114192%_))
                       (_%rest114218%_ _%tl114190114215%_))
                  (gx#stx-list? _%rest114218%_))
                (let ((_%tail114205%_ _%g114183114192%_))
                  (null? _%tail114205%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e114175%_)
        (let* ((_%e114177%_ (gx#stx-e _%e114175%_))
               (_%$e114179%_ (pair? _%e114177%_)))
          (if _%$e114179%_ _%$e114179%_ (null? _%e114177%_)))))
    (define gx#stx-vector?
      (lambda (_%e114173%_) (vector? (gx#stx-e _%e114173%_))))
    (define gx#stx-box? (lambda (_%e114171%_) (box? (gx#stx-e _%e114171%_))))
    (define gx#stx-eq?
      (lambda (_%x114168%_ _%y114169%_)
        (eq? (gx#stx-e _%x114168%_) (gx#stx-e _%y114169%_))))
    (define gx#stx-eqv?
      (lambda (_%x114165%_ _%y114166%_)
        (eqv? (gx#stx-e _%x114165%_) (gx#stx-e _%y114166%_))))
    (define gx#stx-equal?
      (lambda (_%x114162%_ _%y114163%_)
        (equal? (gx#stx-e _%x114162%_) (gx#stx-e _%y114163%_))))
    (define gx#stx-false? (lambda (_%x114160%_) (not (gx#stx-e _%x114160%_))))
    (define gx#stx-identifier
      (lambda (_%template114157%_ . _%args114158%_)
        (gx#datum->syntax__1
         _%template114157%_
         (apply make-symbol (gx#syntax->datum _%args114158%_))
         (gx#stx-source _%template114157%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx114155%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx114155%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx114150%_)
        (if (##structure-direct-instance-of?
             _%stx114150%_
             'gx#identifier-wrap::t)
            (let () (##unchecked-structure-ref _%stx114150%_ '3 '#f '#f))
            (if (##structure-direct-instance-of?
                 _%stx114150%_
                 'gx#syntax-quote::t)
                (let () (##unchecked-structure-ref _%stx114150%_ '4 '#f '#f))
                (let ()
                  (error '"Bad wrap; expected unwrapped identifier"
                         _%stx114150%_))))))
    (define gx#stx-identifier-context
      (lambda (_%stx114146%_)
        (let ((_%stx114148%_ (gx#stx-unwrap__0 _%stx114146%_)))
          (if (gx#identifier-quote? _%stx114148%_)
              (##unchecked-structure-ref _%stx114148%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx114101%_)
        (let* ((_%g114102114112%_ (gx#stx-e _%stx114101%_))
               (_%else114105114120%_ (lambda () '#f)))
          (let ((_%K114108114134%_
                 (lambda (_%rest114131%_ _%hd114132%_)
                   (if (gx#identifier? _%hd114132%_)
                       (gx#identifier-list? _%rest114131%_)
                       '#f)))
                (_%K114107114125%_ (lambda () '#t)))
            (let ((_%try-match114104114128%_
                   (lambda ()
                     (if (##null? _%g114102114112%_)
                         (_%K114107114125%_)
                         (_%else114105114120%_)))))
              (if (##pair? _%g114102114112%_)
                  (let ((_%tl114110114139%_ (##cdr _%g114102114112%_))
                        (_%hd114109114137%_ (##car _%g114102114112%_)))
                    (let ((_%hd114142%_ _%hd114109114137%_)
                          (_%rest114144%_ _%tl114110114139%_))
                      (_%K114108114134%_ _%rest114144%_ _%hd114142%_)))
                  (_%try-match114104114128%_)))))))
    (define gx#genident__%
      (lambda (_%e114078%_ _%src114079%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e114081%_ (gx#stx-e _%e114078%_)))
                   (if (interned-symbol? _%e114081%_) _%e114081%_ 'g)))
         (let ((_%$e114083%_ (gx#stx-source _%e114078%_)))
           (if _%$e114083%_ _%$e114083%_ _%src114079%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e114090%_ 'g) (_%src114092%_ '#f))
          (gx#genident__% _%e114090%_ _%src114092%_))))
    (define gx#genident__1
      (lambda (_%e114094%_)
        (let ((_%src114096%_ '#f))
          (gx#genident__% _%e114094%_ _%src114096%_))))
    (define gx#genident
      (lambda _g114561_
        (let ((_g114560_ (##length _g114561_)))
          (cond ((##fx= _g114560_ 0)
                 (apply (lambda () (gx#genident__0)) _g114561_))
                ((##fx= _g114560_ 1)
                 (apply (lambda (_%e114094%_) (gx#genident__1 _%e114094%_))
                        _g114561_))
                ((##fx= _g114560_ 2)
                 (apply (lambda (_%e114098%_ _%src114099%_)
                          (gx#genident__% _%e114098%_ _%src114099%_))
                        _g114561_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g114561_))))))
    (define gx#gentemps
      (lambda (_%stx-lst114075%_) (gx#stx-map1 gx#genident _%stx-lst114075%_)))
    (define gx#syntax->list
      (lambda (_%stx114073%_) (gx#stx-map1 values _%stx114073%_)))
    (define gx#stx-car
      (lambda (_%stx114070%_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _%stx114070%_)))))
    (define gx#stx-cdr
      (lambda (_%stx114067%_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _%stx114067%_)))))
    (define gx#stx-length
      (lambda (_%stx114032%_)
        (let _%lp114034%_ ((_%rest114036%_ _%stx114032%_) (_%n114037%_ '0))
          (let* ((_%g114038114046%_ (gx#stx-e _%rest114036%_))
                 (_%else114040114054%_ (lambda () _%n114037%_))
                 (_%K114042114059%_
                  (lambda (_%rest114057%_)
                    (_%lp114034%_ _%rest114057%_ (##fx+ _%n114037%_ '1)))))
            (if (##pair? _%g114038114046%_)
                (let* ((_%tl114044114062%_ (##cdr _%g114038114046%_))
                       (_%rest114065%_ _%tl114044114062%_))
                  (_%K114042114059%_ _%rest114065%_))
                (_%else114040114054%_))))))
    (define gx#stx-for-each
      (lambda _g114563_
        (let ((_g114562_ (##length _g114563_)))
          (cond ((##fx= _g114562_ 2)
                 (apply (lambda (_%f114025%_ _%stx114026%_)
                          (gx#stx-for-each1 _%f114025%_ _%stx114026%_))
                        _g114563_))
                ((##fx= _g114562_ 3)
                 (apply (lambda (_%f114028%_ _%xstx114029%_ _%ystx114030%_)
                          (gx#stx-for-each2
                           _%f114028%_
                           _%xstx114029%_
                           _%ystx114030%_))
                        _g114563_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g114563_))))))
    (define gx#stx-for-each1
      (lambda (_%f113975%_ _%stx113976%_)
        (if (procedure? _%f113975%_)
            '#!void
            (error '"expected procedure" _%f113975%_))
        (let _%lp113978%_ ((_%rest113980%_ _%stx113976%_))
          (let* ((_%g113981113991%_ (gx#syntax-e _%rest113980%_))
                 (_%else113984113999%_
                  (lambda () (_%f113975%_ _%rest113980%_))))
            (let ((_%K113987114013%_
                   (lambda (_%rest114010%_ _%hd114011%_)
                     (_%f113975%_ _%hd114011%_)
                     (_%lp113978%_ _%rest114010%_)))
                  (_%K113986114004%_ (lambda () '#!void)))
              (let ((_%try-match113983114007%_
                     (lambda ()
                       (if (##null? _%g113981113991%_)
                           (_%K113986114004%_)
                           (_%else113984113999%_)))))
                (if (##pair? _%g113981113991%_)
                    (let ((_%tl113989114018%_ (##cdr _%g113981113991%_))
                          (_%hd113988114016%_ (##car _%g113981113991%_)))
                      (let ((_%hd114021%_ _%hd113988114016%_)
                            (_%rest114023%_ _%tl113989114018%_))
                        (_%K113987114013%_ _%rest114023%_ _%hd114021%_)))
                    (_%try-match113983114007%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f113880%_ _%xstx113881%_ _%ystx113882%_)
        (if (procedure? _%f113880%_)
            '#!void
            (error '"expected procedure" _%f113880%_))
        (let _%lp113884%_ ((_%xrest113886%_ _%xstx113881%_)
                           (_%yrest113887%_ _%ystx113882%_))
          (let* ((_%g113888113898%_ (gx#syntax-e _%xrest113886%_))
                 (_%else113891113906%_ (lambda () '#!void)))
            (let ((_%K113894113963%_
                   (lambda (_%xrest113932%_ _%xhd113933%_)
                     (let* ((_%g113934113941%_ (gx#syntax-e _%yrest113887%_))
                            (_%E113936113945%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g113934113941%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K113937113951%_
                             (lambda (_%yrest113948%_ _%yhd113949%_)
                               (_%f113880%_ _%xhd113933%_ _%yhd113949%_)
                               (_%lp113884%_
                                _%xrest113932%_
                                _%yrest113948%_))))
                       (if (##pair? _%g113934113941%_)
                           (let ((_%hd113938113954%_ (##car _%g113934113941%_))
                                 (_%tl113939113956%_
                                  (##cdr _%g113934113941%_)))
                             (let* ((_%yhd113959%_ _%hd113938113954%_)
                                    (_%yrest113961%_ _%tl113939113956%_))
                               (_%K113937113951%_
                                _%yrest113961%_
                                _%yhd113959%_)))
                           (_%E113936113945%_)))))
                  (_%K113893113926%_
                   (lambda ()
                     (let* ((_%yrest113910113915%_ _%yrest113887%_)
                            (_%E113912113919%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest113910113915%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K113913113923%_
                             (lambda ()
                               (_%f113880%_ _%xrest113886%_ _%yrest113887%_))))
                       (if (not (gx#stx-null? _%yrest113910113915%_))
                           (_%K113913113923%_)
                           (_%E113912113919%_))))))
              (let ((_%try-match113890113929%_
                     (lambda ()
                       (if (not (null? _%g113888113898%_))
                           (_%K113893113926%_)
                           (_%else113891113906%_)))))
                (if (##pair? _%g113888113898%_)
                    (let ((_%tl113896113968%_ (##cdr _%g113888113898%_))
                          (_%hd113895113966%_ (##car _%g113888113898%_)))
                      (let ((_%xhd113971%_ _%hd113895113966%_)
                            (_%xrest113973%_ _%tl113896113968%_))
                        (_%K113894113963%_ _%xrest113973%_ _%xhd113971%_)))
                    (_%try-match113890113929%_))))))))
    (define gx#stx-map
      (lambda _g114565_
        (let ((_g114564_ (##length _g114565_)))
          (cond ((##fx= _g114564_ 2)
                 (apply (lambda (_%f113873%_ _%stx113874%_)
                          (gx#stx-map1 _%f113873%_ _%stx113874%_))
                        _g114565_))
                ((##fx= _g114564_ 3)
                 (apply (lambda (_%f113876%_ _%xstx113877%_ _%ystx113878%_)
                          (gx#stx-map2
                           _%f113876%_
                           _%xstx113877%_
                           _%ystx113878%_))
                        _g114565_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g114565_))))))
    (define gx#stx-map1
      (lambda (_%f113823%_ _%stx113824%_)
        (if (procedure? _%f113823%_)
            '#!void
            (error '"expected procedure" _%f113823%_))
        (let _%recur113826%_ ((_%rest113828%_ _%stx113824%_))
          (let* ((_%g113829113839%_ (gx#syntax-e _%rest113828%_))
                 (_%else113832113847%_
                  (lambda () (_%f113823%_ _%rest113828%_))))
            (let ((_%K113835113861%_
                   (lambda (_%rest113858%_ _%hd113859%_)
                     (cons (_%f113823%_ _%hd113859%_)
                           (_%recur113826%_ _%rest113858%_))))
                  (_%K113834113852%_ (lambda () '())))
              (let ((_%try-match113831113855%_
                     (lambda ()
                       (if (##null? _%g113829113839%_)
                           (_%K113834113852%_)
                           (_%else113832113847%_)))))
                (if (##pair? _%g113829113839%_)
                    (let ((_%tl113837113866%_ (##cdr _%g113829113839%_))
                          (_%hd113836113864%_ (##car _%g113829113839%_)))
                      (let ((_%hd113869%_ _%hd113836113864%_)
                            (_%rest113871%_ _%tl113837113866%_))
                        (_%K113835113861%_ _%rest113871%_ _%hd113869%_)))
                    (_%try-match113831113855%_))))))))
    (define gx#stx-map2
      (lambda (_%f113728%_ _%xstx113729%_ _%ystx113730%_)
        (if (procedure? _%f113728%_)
            '#!void
            (error '"expected procedure" _%f113728%_))
        (let _%recur113732%_ ((_%xrest113734%_ _%xstx113729%_)
                              (_%yrest113735%_ _%ystx113730%_))
          (let* ((_%g113736113746%_ (gx#syntax-e _%xrest113734%_))
                 (_%else113739113754%_ (lambda () '())))
            (let ((_%K113742113811%_
                   (lambda (_%xrest113780%_ _%xhd113781%_)
                     (let* ((_%g113782113789%_ (gx#syntax-e _%yrest113735%_))
                            (_%E113784113793%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g113782113789%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K113785113799%_
                             (lambda (_%yrest113796%_ _%yhd113797%_)
                               (cons (_%f113728%_ _%xhd113781%_ _%yhd113797%_)
                                     (_%recur113732%_
                                      _%xrest113780%_
                                      _%yrest113796%_)))))
                       (if (##pair? _%g113782113789%_)
                           (let ((_%hd113786113802%_ (##car _%g113782113789%_))
                                 (_%tl113787113804%_
                                  (##cdr _%g113782113789%_)))
                             (let* ((_%yhd113807%_ _%hd113786113802%_)
                                    (_%yrest113809%_ _%tl113787113804%_))
                               (_%K113785113799%_
                                _%yrest113809%_
                                _%yhd113807%_)))
                           (_%E113784113793%_)))))
                  (_%K113741113774%_
                   (lambda ()
                     (let* ((_%yrest113758113763%_ _%yrest113735%_)
                            (_%E113760113767%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest113758113763%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K113761113771%_
                             (lambda ()
                               (_%f113728%_ _%xrest113734%_ _%yrest113735%_))))
                       (if (not (gx#stx-null? _%yrest113758113763%_))
                           (_%K113761113771%_)
                           (_%E113760113767%_))))))
              (let ((_%try-match113738113777%_
                     (lambda ()
                       (if (not (null? _%g113736113746%_))
                           (_%K113741113774%_)
                           (_%else113739113754%_)))))
                (if (##pair? _%g113736113746%_)
                    (let ((_%tl113744113816%_ (##cdr _%g113736113746%_))
                          (_%hd113743113814%_ (##car _%g113736113746%_)))
                      (let ((_%xhd113819%_ _%hd113743113814%_)
                            (_%xrest113821%_ _%tl113744113816%_))
                        (_%K113742113811%_ _%xrest113821%_ _%xhd113819%_)))
                    (_%try-match113738113777%_))))))))
    (define gx#stx-andmap
      (lambda (_%f113678%_ _%stx113679%_)
        (if (procedure? _%f113678%_)
            '#!void
            (error '"expected procedure" _%f113678%_))
        (let _%lp113681%_ ((_%rest113683%_ _%stx113679%_))
          (let* ((_%g113684113694%_ (gx#syntax-e _%rest113683%_))
                 (_%else113687113702%_
                  (lambda () (_%f113678%_ _%rest113683%_))))
            (let ((_%K113690113716%_
                   (lambda (_%rest113713%_ _%hd113714%_)
                     (if (_%f113678%_ _%hd113714%_)
                         (_%lp113681%_ _%rest113713%_)
                         '#f)))
                  (_%K113689113707%_ (lambda () '#t)))
              (let ((_%try-match113686113710%_
                     (lambda ()
                       (if (##null? _%g113684113694%_)
                           (_%K113689113707%_)
                           (_%else113687113702%_)))))
                (if (##pair? _%g113684113694%_)
                    (let ((_%tl113692113721%_ (##cdr _%g113684113694%_))
                          (_%hd113691113719%_ (##car _%g113684113694%_)))
                      (let ((_%hd113724%_ _%hd113691113719%_)
                            (_%rest113726%_ _%tl113692113721%_))
                        (_%K113690113716%_ _%rest113726%_ _%hd113724%_)))
                    (_%try-match113686113710%_))))))))
    (define gx#stx-ormap
      (lambda (_%f113625%_ _%stx113626%_)
        (if (procedure? _%f113625%_)
            '#!void
            (error '"expected procedure" _%f113625%_))
        (let _%lp113628%_ ((_%rest113630%_ _%stx113626%_))
          (let* ((_%g113631113641%_ (gx#syntax-e _%rest113630%_))
                 (_%else113634113649%_
                  (lambda () (_%f113625%_ _%rest113630%_))))
            (let ((_%K113637113666%_
                   (lambda (_%rest113660%_ _%hd113661%_)
                     (let ((_%$e113663%_ (_%f113625%_ _%hd113661%_)))
                       (if _%$e113663%_
                           _%$e113663%_
                           (_%lp113628%_ _%rest113660%_)))))
                  (_%K113636113654%_ (lambda () '#f)))
              (let ((_%try-match113633113657%_
                     (lambda ()
                       (if (##null? _%g113631113641%_)
                           (_%K113636113654%_)
                           (_%else113634113649%_)))))
                (if (##pair? _%g113631113641%_)
                    (let ((_%tl113639113671%_ (##cdr _%g113631113641%_))
                          (_%hd113638113669%_ (##car _%g113631113641%_)))
                      (let ((_%hd113674%_ _%hd113638113669%_)
                            (_%rest113676%_ _%tl113639113671%_))
                        (_%K113637113666%_ _%rest113676%_ _%hd113674%_)))
                    (_%try-match113633113657%_))))))))
    (define gx#stx-foldl
      (lambda (_%f113573%_ _%iv113574%_ _%stx113575%_)
        (if (procedure? _%f113573%_)
            '#!void
            (error '"expected procedure" _%f113573%_))
        (let _%lp113577%_ ((_%r113579%_ _%iv113574%_)
                           (_%rest113580%_ _%stx113575%_))
          (let* ((_%g113581113591%_ (gx#syntax-e _%rest113580%_))
                 (_%else113584113599%_
                  (lambda () (_%f113573%_ _%rest113580%_ _%r113579%_))))
            (let ((_%K113587113613%_
                   (lambda (_%rest113610%_ _%hd113611%_)
                     (_%lp113577%_
                      (_%f113573%_ _%hd113611%_ _%r113579%_)
                      _%rest113610%_)))
                  (_%K113586113604%_ (lambda () _%r113579%_)))
              (let ((_%try-match113583113607%_
                     (lambda ()
                       (if (##null? _%g113581113591%_)
                           (_%K113586113604%_)
                           (_%else113584113599%_)))))
                (if (##pair? _%g113581113591%_)
                    (let ((_%tl113589113618%_ (##cdr _%g113581113591%_))
                          (_%hd113588113616%_ (##car _%g113581113591%_)))
                      (let ((_%hd113621%_ _%hd113588113616%_)
                            (_%rest113623%_ _%tl113589113618%_))
                        (_%K113587113613%_ _%rest113623%_ _%hd113621%_)))
                    (_%try-match113583113607%_))))))))
    (define gx#stx-foldr
      (lambda (_%f113522%_ _%iv113523%_ _%stx113524%_)
        (if (procedure? _%f113522%_)
            '#!void
            (error '"expected procedure" _%f113522%_))
        (let _%recur113526%_ ((_%rest113528%_ _%stx113524%_))
          (let* ((_%g113529113539%_ (gx#syntax-e _%rest113528%_))
                 (_%else113532113547%_
                  (lambda () (_%f113522%_ _%rest113528%_ _%iv113523%_))))
            (let ((_%K113535113561%_
                   (lambda (_%rest113558%_ _%hd113559%_)
                     (_%f113522%_
                      _%hd113559%_
                      (_%recur113526%_ _%rest113558%_))))
                  (_%K113534113552%_ (lambda () _%iv113523%_)))
              (let ((_%try-match113531113555%_
                     (lambda ()
                       (if (##null? _%g113529113539%_)
                           (_%K113534113552%_)
                           (_%else113532113547%_)))))
                (if (##pair? _%g113529113539%_)
                    (let ((_%tl113537113566%_ (##cdr _%g113529113539%_))
                          (_%hd113536113564%_ (##car _%g113529113539%_)))
                      (let ((_%hd113569%_ _%hd113536113564%_)
                            (_%rest113571%_ _%tl113537113566%_))
                        (_%K113535113561%_ _%rest113571%_ _%hd113569%_)))
                    (_%try-match113531113555%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx113520%_) (gx#stx-foldl cons '() _%stx113520%_)))
    (define gx#stx-last
      (lambda (_%stx113481%_)
        (let _%lp113483%_ ((_%rest113485%_ _%stx113481%_))
          (let* ((_%g113486113494%_ (gx#syntax-e _%rest113485%_))
                 (_%else113488113502%_ (lambda () _%rest113485%_))
                 (_%K113490113508%_
                  (lambda (_%rest113505%_ _%hd113506%_)
                    (if (gx#stx-null? _%rest113505%_)
                        _%hd113506%_
                        (_%lp113483%_ _%rest113505%_)))))
            (if (##pair? _%g113486113494%_)
                (let ((_%hd113491113511%_ (##car _%g113486113494%_))
                      (_%tl113492113513%_ (##cdr _%g113486113494%_)))
                  (let* ((_%hd113516%_ _%hd113491113511%_)
                         (_%rest113518%_ _%tl113492113513%_))
                    (_%K113490113508%_ _%rest113518%_ _%hd113516%_)))
                (_%else113488113502%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx113452%_)
        (let _%lp113454%_ ((_%hd113456%_ _%stx113452%_))
          (let* ((_%g113457113464%_ (gx#syntax-e _%hd113456%_))
                 (_%E113459113468%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g113457113464%_
                           '([_ . rest]))
                    '#!void))
                 (_%K113460113473%_
                  (lambda (_%rest113471%_)
                    (if (gx#stx-pair? _%rest113471%_)
                        (_%lp113454%_ _%rest113471%_)
                        _%hd113456%_))))
            (if (##pair? _%g113457113464%_)
                (let* ((_%tl113462113476%_ (##cdr _%g113457113464%_))
                       (_%rest113479%_ _%tl113462113476%_))
                  (_%K113460113473%_ _%rest113479%_))
                (_%E113459113468%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx113421%_ _%k113422%_)
        (let _%lp113424%_ ((_%rest113426%_ _%stx113421%_)
                           (_%k113427%_ _%k113422%_))
          (if (fxpositive? _%k113427%_)
              (let* ((_%g113428113435%_ (gx#syntax-e _%rest113426%_))
                     (_%E113430113439%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g113428113435%_
                               '([_ . rest]))
                        '#!void))
                     (_%K113431113444%_
                      (lambda (_%rest113442%_)
                        (_%lp113424%_ _%rest113442%_ (##fx- _%k113427%_ '1)))))
                (if (##pair? _%g113428113435%_)
                    (let* ((_%tl113433113447%_ (##cdr _%g113428113435%_))
                           (_%rest113450%_ _%tl113433113447%_))
                      (_%K113431113444%_ _%rest113450%_))
                    (_%E113430113439%_)))
              _%rest113426%_))))
    (define gx#stx-list-ref
      (lambda (_%stx113418%_ _%k113419%_)
        (gx#stx-car (gx#stx-list-tail _%stx113418%_ _%k113419%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx113330%_ _%key?113331%_)
        (if (procedure? _%key?113331%_)
            '#!void
            (error '"expected procedure" _%key?113331%_))
        (let _%lp113333%_ ((_%rest113335%_ _%stx113330%_))
          (let* ((_%g113336113346%_ (gx#stx-e _%rest113335%_))
                 (_%else113339113354%_ (lambda () '#f)))
            (let ((_%K113342113396%_
                   (lambda (_%rest113365%_ _%hd113366%_)
                     (if (_%key?113331%_ _%hd113366%_)
                         (let* ((_%g113367113375%_ (gx#stx-e _%rest113365%_))
                                (_%else113369113383%_ (lambda () '#f))
                                (_%K113371113388%_
                                 (lambda (_%rest113386%_)
                                   (_%lp113333%_ _%rest113386%_))))
                           (if (##pair? _%g113367113375%_)
                               (let* ((_%tl113373113391%_
                                       (##cdr _%g113367113375%_))
                                      (_%rest113394%_ _%tl113373113391%_))
                                 (_%lp113333%_ _%rest113394%_))
                               (_%else113369113383%_)))
                         '#f)))
                  (_%K113341113359%_ (lambda () '#t)))
              (let ((_%try-match113338113362%_
                     (lambda ()
                       (if (##null? _%g113336113346%_)
                           (_%K113341113359%_)
                           (_%else113339113354%_)))))
                (if (##pair? _%g113336113346%_)
                    (let ((_%tl113344113401%_ (##cdr _%g113336113346%_))
                          (_%hd113343113399%_ (##car _%g113336113346%_)))
                      (let ((_%hd113404%_ _%hd113343113399%_)
                            (_%rest113406%_ _%tl113344113401%_))
                        (_%K113342113396%_ _%rest113406%_ _%hd113404%_)))
                    (_%try-match113338113362%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx113411%_)
        (let ((_%key?113413%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx113411%_ _%key?113413%_))))
    (define gx#stx-plist?
      (lambda _g114567_
        (let ((_g114566_ (##length _g114567_)))
          (cond ((##fx= _g114566_ 1)
                 (apply (lambda (_%stx113411%_)
                          (gx#stx-plist?__0 _%stx113411%_))
                        _g114567_))
                ((##fx= _g114566_ 2)
                 (apply (lambda (_%stx113415%_ _%key?113416%_)
                          (gx#stx-plist?__% _%stx113415%_ _%key?113416%_))
                        _g114567_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g114567_))))))
    (define gx#stx-getq__%
      (lambda (_%key113248%_ _%stx113249%_ _%key=?113250%_)
        (if (procedure? _%key=?113250%_)
            '#!void
            (error '"expected procedure" _%key=?113250%_))
        (let _%lp113252%_ ((_%rest113254%_ _%stx113249%_))
          (let* ((_%g113255113263%_ (gx#syntax-e _%rest113254%_))
                 (_%else113257113271%_ (lambda () '#f))
                 (_%K113259113305%_
                  (lambda (_%rest113274%_ _%hd113275%_)
                    (let* ((_%g113276113283%_ (gx#syntax-e _%rest113274%_))
                           (_%E113278113287%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g113276113283%_
                                     '([val . rest]))
                              '#!void))
                           (_%K113279113293%_
                            (lambda (_%rest113290%_ _%val113291%_)
                              (if (_%key=?113250%_ _%hd113275%_ _%key113248%_)
                                  _%val113291%_
                                  (_%lp113252%_ _%rest113290%_)))))
                      (if (##pair? _%g113276113283%_)
                          (let ((_%hd113280113296%_ (##car _%g113276113283%_))
                                (_%tl113281113298%_ (##cdr _%g113276113283%_)))
                            (let* ((_%val113301%_ _%hd113280113296%_)
                                   (_%rest113303%_ _%tl113281113298%_))
                              (_%K113279113293%_
                               _%rest113303%_
                               _%val113301%_)))
                          (_%E113278113287%_))))))
            (if (##pair? _%g113255113263%_)
                (let ((_%hd113260113308%_ (##car _%g113255113263%_))
                      (_%tl113261113310%_ (##cdr _%g113255113263%_)))
                  (let* ((_%hd113313%_ _%hd113260113308%_)
                         (_%rest113315%_ _%tl113261113310%_))
                    (_%K113259113305%_ _%rest113315%_ _%hd113313%_)))
                (_%else113257113271%_))))))
    (define gx#stx-getq__0
      (lambda (_%key113320%_ _%stx113321%_)
        (let ((_%key=?113323%_ gx#stx-eq?))
          (gx#stx-getq__% _%key113320%_ _%stx113321%_ _%key=?113323%_))))
    (define gx#stx-getq
      (lambda _g114569_
        (let ((_g114568_ (##length _g114569_)))
          (cond ((##fx= _g114568_ 2)
                 (apply (lambda (_%key113320%_ _%stx113321%_)
                          (gx#stx-getq__0 _%key113320%_ _%stx113321%_))
                        _g114569_))
                ((##fx= _g114568_ 3)
                 (apply (lambda (_%key113325%_ _%stx113326%_ _%key=?113327%_)
                          (gx#stx-getq__%
                           _%key113325%_
                           _%stx113326%_
                           _%key=?113327%_))
                        _g114569_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g114569_))))))))

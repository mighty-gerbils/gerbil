(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1712084085)
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
      (lambda _%$args114281%_
        (apply make-instance gx#identifier-wrap::t _%$args114281%_)))
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
      (lambda _%$args114278%_
        (apply make-instance gx#syntax-wrap::t _%$args114278%_)))
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
      (lambda _%$args114275%_
        (apply make-instance gx#syntax-quote::t _%$args114275%_)))
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
      (lambda (_%stx114273%_) (symbol? (gx#stx-e _%stx114273%_))))
    (define gx#identifier-quote?
      (lambda (_%stx114271%_)
        (if (##structure-direct-instance-of? _%stx114271%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx114271%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx114266%_)
        (if (##structure-direct-instance-of? _%stx114266%_ 'gx#syntax-quote::t)
            (let () '#t)
            (if (##structure-direct-instance-of?
                 _%stx114266%_
                 'gx#syntax-wrap::t)
                (let ()
                  (gx#sealed-syntax?
                   (##unchecked-structure-ref _%stx114266%_ '1 '#f '#f)))
                (let () '#f)))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx114261%_)
        (if (##structure-direct-instance-of? _%stx114261%_ 'gx#syntax-quote::t)
            (let () _%stx114261%_)
            (if (##structure-direct-instance-of?
                 _%stx114261%_
                 'gx#syntax-wrap::t)
                (let ()
                  (gx#sealed-syntax-unwrap
                   (##unchecked-structure-ref _%stx114261%_ '1 '#f '#f)))
                (let () '#f)))))
    (define gx#syntax-e
      (lambda (_%stx114235%_)
        (if (##structure-direct-instance-of? _%stx114235%_ 'gx#syntax-wrap::t)
            (let ()
              (let _%lp114238%_ ((_%e114240%_
                                  (##unchecked-structure-ref
                                   _%stx114235%_
                                   '1
                                   '#f
                                   '#f))
                                 (_%marks114241%_
                                  (cons (##unchecked-structure-ref
                                         _%stx114235%_
                                         '3
                                         '#f
                                         '#f)
                                        '())))
                (if (##structure? _%e114240%_)
                    (let ()
                      (let ((_%$e114244%_
                             (##type-id (##structure-type _%e114240%_))))
                        (if (eq? 'gx#syntax-wrap::t _%$e114244%_)
                            (_%lp114238%_
                             (##unchecked-structure-ref _%e114240%_ '1 '#f '#f)
                             (gx#apply-mark
                              (##unchecked-structure-ref
                               _%e114240%_
                               '3
                               '#f
                               '#f)
                              _%marks114241%_))
                            (if (or (eq? 'gx#syntax-quote::t _%$e114244%_)
                                    (eq? 'gx#identifier-wrap::t _%$e114244%_))
                                (##unchecked-structure-ref
                                 _%e114240%_
                                 '1
                                 '#f
                                 '#f)
                                (if (eq? 'gerbil#AST::t _%$e114244%_)
                                    (_%lp114238%_
                                     (##unchecked-structure-ref
                                      _%e114240%_
                                      '1
                                      '#f
                                      '#f)
                                     _%marks114241%_)
                                    _%e114240%_)))))
                    (if (null? _%marks114241%_)
                        (let () _%e114240%_)
                        (if (pair? _%e114240%_)
                            (let ()
                              (cons (gx#stx-wrap
                                     (car _%e114240%_)
                                     _%marks114241%_)
                                    (gx#stx-wrap
                                     (cdr _%e114240%_)
                                     _%marks114241%_)))
                            (if (vector? _%e114240%_)
                                (let ()
                                  (vector-map
                                   (lambda (_%g114252114254%_)
                                     (gx#stx-wrap
                                      _%g114252114254%_
                                      _%marks114241%_))
                                   _%e114240%_))
                                (if (box? _%e114240%_)
                                    (let ()
                                      (box (gx#stx-wrap
                                            (unbox _%e114240%_)
                                            _%marks114241%_)))
                                    (let () _%e114240%_))))))))
            (if (##structure-instance-of? _%stx114235%_ 'gerbil#AST::t)
                (let () (##unchecked-structure-ref _%stx114235%_ '1 '#f '#f))
                (let () _%stx114235%_)))))
    (define gx#syntax->datum
      (lambda (_%stx114228%_)
        (if (##structure-instance-of? _%stx114228%_ 'gerbil#AST::t)
            (let ()
              (gx#syntax->datum
               (##unchecked-structure-ref _%stx114228%_ '1 '#f '#f)))
            (if (pair? _%stx114228%_)
                (let ()
                  (cons (gx#syntax->datum (car _%stx114228%_))
                        (gx#syntax->datum (cdr _%stx114228%_))))
                (if (vector? _%stx114228%_)
                    (let () (vector-map gx#syntax->datum _%stx114228%_))
                    (if (box? _%stx114228%_)
                        (let () (box (gx#syntax->datum (unbox _%stx114228%_))))
                        (let () _%stx114228%_)))))))
    (define gx#datum->syntax__%
      (lambda (_%stx114162%_ _%datum114163%_ _%src114164%_ _%quote?114165%_)
        (letrec ((_%wrap-datum114167%_
                  (lambda (_%e114200%_ _%marks114201%_)
                    (_%wrap-inner114169%_
                     _%e114200%_
                     (lambda (_%g114202114204%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g114202114204%_
                        _%src114164%_
                        _%marks114201%_)))))
                 (_%wrap-quote114168%_
                  (lambda (_%e114192%_ _%ctx114193%_ _%marks114194%_)
                    (_%wrap-inner114169%_
                     _%e114192%_
                     (lambda (_%g114195114197%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g114195114197%_
                        _%src114164%_
                        _%ctx114193%_
                        _%marks114194%_)))))
                 (_%wrap-inner114169%_
                  (lambda (_%e114180%_ _%wrap-e114181%_)
                    (let _%recur114183%_ ((_%e114185%_ _%e114180%_))
                      (if (symbol? _%e114185%_)
                          (let () (_%wrap-e114181%_ _%e114185%_))
                          (if (pair? _%e114185%_)
                              (let ()
                                (cons (_%recur114183%_ (car _%e114185%_))
                                      (_%recur114183%_ (cdr _%e114185%_))))
                              (if (vector? _%e114185%_)
                                  (let ()
                                    (vector-map _%recur114183%_ _%e114185%_))
                                  (if (box? _%e114185%_)
                                      (let ()
                                        (box (_%recur114183%_
                                              (unbox _%e114185%_))))
                                      (let () _%e114185%_))))))))
                 (_%wrap-outer114170%_
                  (lambda (_%e114178%_)
                    (if (##structure-instance-of? _%e114178%_ 'gerbil#AST::t)
                        _%e114178%_
                        (##structure gx#AST::t _%e114178%_ _%src114164%_)))))
          (if (##structure-instance-of? _%datum114163%_ 'gerbil#AST::t)
              (let () _%datum114163%_)
              (if (not _%stx114162%_)
                  (let ()
                    (##structure gx#AST::t _%datum114163%_ _%src114164%_))
                  (if (gx#identifier? _%stx114162%_)
                      (let ()
                        (let ((_%stx114175%_ (gx#stx-unwrap__0 _%stx114162%_)))
                          (_%wrap-outer114170%_
                           (if (##structure-direct-instance-of?
                                _%stx114175%_
                                'gx#syntax-quote::t)
                               (if _%quote?114165%_
                                   (_%wrap-quote114168%_
                                    _%datum114163%_
                                    (##unchecked-structure-ref
                                     _%stx114175%_
                                     '3
                                     '#f
                                     '#f)
                                    (##unchecked-structure-ref
                                     _%stx114175%_
                                     '4
                                     '#f
                                     '#f))
                                   (_%wrap-datum114167%_
                                    _%datum114163%_
                                    (##unchecked-structure-ref
                                     _%stx114175%_
                                     '4
                                     '#f
                                     '#f)))
                               (_%wrap-datum114167%_
                                _%datum114163%_
                                (##unchecked-structure-ref
                                 _%stx114175%_
                                 '3
                                 '#f
                                 '#f))))))
                      (let ()
                        (error '"Bad template syntax; expected identifier"
                               _%stx114162%_))))))))
    (define gx#datum->syntax__0
      (lambda (_%stx114210%_ _%datum114211%_)
        (let* ((_%src114213%_ '#f) (_%quote?114215%_ '#t))
          (gx#datum->syntax__%
           _%stx114210%_
           _%datum114211%_
           _%src114213%_
           _%quote?114215%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx114217%_ _%datum114218%_ _%src114219%_)
        (let ((_%quote?114221%_ '#t))
          (gx#datum->syntax__%
           _%stx114217%_
           _%datum114218%_
           _%src114219%_
           _%quote?114221%_))))
    (define gx#datum->syntax
      (lambda _g114362_
        (let ((_g114361_ (##length _g114362_)))
          (cond ((##fx= _g114361_ 2)
                 (apply (lambda (_%stx114210%_ _%datum114211%_)
                          (gx#datum->syntax__0 _%stx114210%_ _%datum114211%_))
                        _g114362_))
                ((##fx= _g114361_ 3)
                 (apply (lambda (_%stx114217%_ _%datum114218%_ _%src114219%_)
                          (gx#datum->syntax__1
                           _%stx114217%_
                           _%datum114218%_
                           _%src114219%_))
                        _g114362_))
                ((##fx= _g114361_ 4)
                 (apply (lambda (_%stx114223%_
                                 _%datum114224%_
                                 _%src114225%_
                                 _%quote?114226%_)
                          (gx#datum->syntax__%
                           _%stx114223%_
                           _%datum114224%_
                           _%src114225%_
                           _%quote?114226%_))
                        _g114362_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g114362_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx114128%_ _%marks114129%_)
        (let _%lp114131%_ ((_%e114133%_ _%stx114128%_)
                           (_%marks114134%_ _%marks114129%_)
                           (_%src114135%_ (gx#stx-source _%stx114128%_)))
          (if (##structure-direct-instance-of? _%e114133%_ 'gx#syntax-wrap::t)
              (let ()
                (_%lp114131%_
                 (##unchecked-structure-ref _%e114133%_ '1 '#f '#f)
                 (gx#apply-mark
                  (##unchecked-structure-ref _%e114133%_ '3 '#f '#f)
                  _%marks114134%_)
                 (##unchecked-structure-ref _%e114133%_ '2 '#f '#f)))
              (if (##structure-direct-instance-of?
                   _%e114133%_
                   'gx#identifier-wrap::t)
                  (let ()
                    (if (null? _%marks114134%_)
                        _%e114133%_
                        (##structure
                         gx#identifier-wrap::t
                         (##unchecked-structure-ref _%e114133%_ '1 '#f '#f)
                         (##unchecked-structure-ref _%e114133%_ '2 '#f '#f)
                         (__foldl1
                          gx#apply-mark
                          (##unchecked-structure-ref _%e114133%_ '3 '#f '#f)
                          _%marks114134%_))))
                  (if (##structure-direct-instance-of?
                       _%e114133%_
                       'gx#syntax-quote::t)
                      (let () _%e114133%_)
                      (if (##structure-instance-of? _%e114133%_ 'gerbil#AST::t)
                          (let ()
                            (_%lp114131%_
                             (##unchecked-structure-ref _%e114133%_ '1 '#f '#f)
                             _%marks114134%_
                             (##unchecked-structure-ref
                              _%e114133%_
                              '2
                              '#f
                              '#f)))
                          (if (symbol? _%e114133%_)
                              (let ()
                                (##structure
                                 gx#identifier-wrap::t
                                 _%e114133%_
                                 _%src114135%_
                                 (reverse _%marks114134%_)))
                              (if (null? _%marks114134%_)
                                  (let () _%e114133%_)
                                  (if (pair? _%e114133%_)
                                      (let ()
                                        (cons (gx#stx-wrap
                                               (car _%e114133%_)
                                               _%marks114134%_)
                                              (gx#stx-wrap
                                               (cdr _%e114133%_)
                                               _%marks114134%_)))
                                      (if (vector? _%e114133%_)
                                          (let ()
                                            (vector-map
                                             (lambda (_%g114144114146%_)
                                               (gx#stx-wrap
                                                _%g114144114146%_
                                                _%marks114134%_))
                                             _%e114133%_))
                                          (if (box? _%e114133%_)
                                              (let ()
                                                (box (gx#stx-wrap
                                                      (unbox _%e114133%_)
                                                      _%marks114134%_)))
                                              (let () _%e114133%_)))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx114154%_)
        (let ((_%marks114156%_ '()))
          (gx#stx-unwrap__% _%stx114154%_ _%marks114156%_))))
    (define gx#stx-unwrap
      (lambda _g114364_
        (let ((_g114363_ (##length _g114364_)))
          (cond ((##fx= _g114363_ 1)
                 (apply (lambda (_%stx114154%_)
                          (gx#stx-unwrap__0 _%stx114154%_))
                        _g114364_))
                ((##fx= _g114363_ 2)
                 (apply (lambda (_%stx114158%_ _%marks114159%_)
                          (gx#stx-unwrap__% _%stx114158%_ _%marks114159%_))
                        _g114364_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g114364_))))))
    (define gx#stx-wrap
      (lambda (_%stx114121%_ _%marks114122%_)
        (__foldl1
         (lambda (_%mark114124%_ _%stx114125%_)
           (gx#stx-apply-mark _%stx114125%_ _%mark114124%_))
         _%stx114121%_
         _%marks114122%_)))
    (define gx#stx-rewrap
      (lambda (_%stx114115%_ _%marks114116%_)
        (__foldr1
         (lambda (_%mark114118%_ _%stx114119%_)
           (gx#stx-apply-mark _%stx114119%_ _%mark114118%_))
         _%stx114115%_
         _%marks114116%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx114109%_ _%mark114110%_)
        (if (##structure-direct-instance-of? _%stx114109%_ 'gx#syntax-quote::t)
            (let () _%stx114109%_)
            (if (and (##structure-direct-instance-of?
                      _%stx114109%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark114110%_
                          (##unchecked-structure-ref
                           _%stx114109%_
                           '3
                           '#f
                           '#f)))
                (let () (##unchecked-structure-ref _%stx114109%_ '1 '#f '#f))
                (let ()
                  (##structure
                   gx#syntax-wrap::t
                   _%stx114109%_
                   (gx#stx-source _%stx114109%_)
                   _%mark114110%_))))))
    (define gx#apply-mark
      (lambda (_%mark114073%_ _%marks114074%_)
        (let* ((_%marks114075114083%_ _%marks114074%_)
               (_%else114077114091%_
                (lambda () (cons _%mark114073%_ _%marks114074%_)))
               (_%K114079114097%_
                (lambda (_%rest114094%_ _%hd114095%_)
                  (if (eq? _%mark114073%_ _%hd114095%_)
                      _%rest114094%_
                      (cons _%mark114073%_ _%marks114074%_)))))
          (if (##pair? _%marks114075114083%_)
              (let ((_%hd114080114100%_ (##car _%marks114075114083%_))
                    (_%tl114081114102%_ (##cdr _%marks114075114083%_)))
                (let* ((_%hd114105%_ _%hd114080114100%_)
                       (_%rest114107%_ _%tl114081114102%_))
                  (_%K114079114097%_ _%rest114107%_ _%hd114105%_)))
              (_%else114077114091%_)))))
    (define gx#stx-e
      (lambda (_%stx114068%_)
        (if (##structure-direct-instance-of? _%stx114068%_ 'gx#syntax-wrap::t)
            (let ()
              (gx#stx-e (##unchecked-structure-ref _%stx114068%_ '1 '#f '#f)))
            (if (##structure-instance-of? _%stx114068%_ 'gerbil#AST::t)
                (let () (##unchecked-structure-ref _%stx114068%_ '1 '#f '#f))
                (let () _%stx114068%_)))))
    (define gx#stx-source
      (lambda (_%stx114066%_)
        (if (##structure-instance-of? _%stx114066%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx114066%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx114060%_ _%src114061%_)
        (if (or (##structure-instance-of? _%stx114060%_ 'gerbil#AST::t)
                (not _%src114061%_))
            _%stx114060%_
            (##structure gx#AST::t _%stx114060%_ _%src114061%_))))
    (define gx#stx-datum?
      (lambda (_%stx114058%_) (gx#self-quoting? (gx#stx-e _%stx114058%_))))
    (define gx#self-quoting?
      (lambda (_%x114041%_)
        (let ((_%$e114043%_ (immediate? _%x114041%_)))
          (if _%$e114043%_
              _%$e114043%_
              (let ((_%$e114046%_ (number? _%x114041%_)))
                (if _%$e114046%_
                    _%$e114046%_
                    (let ((_%$e114049%_ (keyword? _%x114041%_)))
                      (if _%$e114049%_
                          _%$e114049%_
                          (let ((_%$e114052%_ (string? _%x114041%_)))
                            (if _%$e114052%_
                                _%$e114052%_
                                (let ((_%$e114055%_ (vector? _%x114041%_)))
                                  (if _%$e114055%_
                                      _%$e114055%_
                                      (u8vector? _%x114041%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e114039%_) (boolean? (gx#stx-e _%e114039%_))))
    (define gx#stx-keyword?
      (lambda (_%e114037%_) (keyword? (gx#stx-e _%e114037%_))))
    (define gx#stx-char? (lambda (_%e114035%_) (char? (gx#stx-e _%e114035%_))))
    (define gx#stx-number?
      (lambda (_%e114033%_) (number? (gx#stx-e _%e114033%_))))
    (define gx#stx-fixnum?
      (lambda (_%e114031%_) (fixnum? (gx#stx-e _%e114031%_))))
    (define gx#stx-string?
      (lambda (_%e114029%_) (string? (gx#stx-e _%e114029%_))))
    (define gx#stx-null? (lambda (_%e114027%_) (null? (gx#stx-e _%e114027%_))))
    (define gx#stx-pair? (lambda (_%e114025%_) (pair? (gx#stx-e _%e114025%_))))
    (define gx#stx-list?
      (lambda (_%e113987%_)
        (let* ((_%g113988113997%_ (gx#stx-e _%e113987%_))
               (_%E113991114001%_
                (lambda ()
                  (error '"No clause matching"
                         _%g113988113997%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K113993114017%_
                 (lambda (_%rest114015%_) (gx#stx-list? _%rest114015%_)))
                (_%K113992114007%_
                 (lambda (_%tail114005%_) (null? _%tail114005%_))))
            (if (##pair? _%g113988113997%_)
                (let* ((_%tl113995114020%_ (##cdr _%g113988113997%_))
                       (_%rest114023%_ _%tl113995114020%_))
                  (gx#stx-list? _%rest114023%_))
                (let ((_%tail114010%_ _%g113988113997%_))
                  (null? _%tail114010%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e113980%_)
        (let* ((_%e113982%_ (gx#stx-e _%e113980%_))
               (_%$e113984%_ (pair? _%e113982%_)))
          (if _%$e113984%_ _%$e113984%_ (null? _%e113982%_)))))
    (define gx#stx-vector?
      (lambda (_%e113978%_) (vector? (gx#stx-e _%e113978%_))))
    (define gx#stx-box? (lambda (_%e113976%_) (box? (gx#stx-e _%e113976%_))))
    (define gx#stx-eq?
      (lambda (_%x113973%_ _%y113974%_)
        (eq? (gx#stx-e _%x113973%_) (gx#stx-e _%y113974%_))))
    (define gx#stx-eqv?
      (lambda (_%x113970%_ _%y113971%_)
        (eqv? (gx#stx-e _%x113970%_) (gx#stx-e _%y113971%_))))
    (define gx#stx-equal?
      (lambda (_%x113967%_ _%y113968%_)
        (equal? (gx#stx-e _%x113967%_) (gx#stx-e _%y113968%_))))
    (define gx#stx-false? (lambda (_%x113965%_) (not (gx#stx-e _%x113965%_))))
    (define gx#stx-identifier
      (lambda (_%template113962%_ . _%args113963%_)
        (gx#datum->syntax__1
         _%template113962%_
         (apply make-symbol (gx#syntax->datum _%args113963%_))
         (gx#stx-source _%template113962%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx113960%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx113960%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx113955%_)
        (if (##structure-direct-instance-of?
             _%stx113955%_
             'gx#identifier-wrap::t)
            (let () (##unchecked-structure-ref _%stx113955%_ '3 '#f '#f))
            (if (##structure-direct-instance-of?
                 _%stx113955%_
                 'gx#syntax-quote::t)
                (let () (##unchecked-structure-ref _%stx113955%_ '4 '#f '#f))
                (let ()
                  (error '"Bad wrap; expected unwrapped identifier"
                         _%stx113955%_))))))
    (define gx#stx-identifier-context
      (lambda (_%stx113951%_)
        (let ((_%stx113953%_ (gx#stx-unwrap__0 _%stx113951%_)))
          (if (gx#identifier-quote? _%stx113953%_)
              (##unchecked-structure-ref _%stx113953%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx113906%_)
        (let* ((_%g113907113917%_ (gx#stx-e _%stx113906%_))
               (_%else113910113925%_ (lambda () '#f)))
          (let ((_%K113913113939%_
                 (lambda (_%rest113936%_ _%hd113937%_)
                   (if (gx#identifier? _%hd113937%_)
                       (gx#identifier-list? _%rest113936%_)
                       '#f)))
                (_%K113912113930%_ (lambda () '#t)))
            (let ((_%try-match113909113933%_
                   (lambda ()
                     (if (##null? _%g113907113917%_)
                         (_%K113912113930%_)
                         (_%else113910113925%_)))))
              (if (##pair? _%g113907113917%_)
                  (let ((_%tl113915113944%_ (##cdr _%g113907113917%_))
                        (_%hd113914113942%_ (##car _%g113907113917%_)))
                    (let ((_%hd113947%_ _%hd113914113942%_)
                          (_%rest113949%_ _%tl113915113944%_))
                      (_%K113913113939%_ _%rest113949%_ _%hd113947%_)))
                  (_%try-match113909113933%_)))))))
    (define gx#genident__%
      (lambda (_%e113883%_ _%src113884%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e113886%_ (gx#stx-e _%e113883%_)))
                   (if (interned-symbol? _%e113886%_) _%e113886%_ 'g)))
         (let ((_%$e113888%_ (gx#stx-source _%e113883%_)))
           (if _%$e113888%_ _%$e113888%_ _%src113884%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e113895%_ 'g) (_%src113897%_ '#f))
          (gx#genident__% _%e113895%_ _%src113897%_))))
    (define gx#genident__1
      (lambda (_%e113899%_)
        (let ((_%src113901%_ '#f))
          (gx#genident__% _%e113899%_ _%src113901%_))))
    (define gx#genident
      (lambda _g114366_
        (let ((_g114365_ (##length _g114366_)))
          (cond ((##fx= _g114365_ 0)
                 (apply (lambda () (gx#genident__0)) _g114366_))
                ((##fx= _g114365_ 1)
                 (apply (lambda (_%e113899%_) (gx#genident__1 _%e113899%_))
                        _g114366_))
                ((##fx= _g114365_ 2)
                 (apply (lambda (_%e113903%_ _%src113904%_)
                          (gx#genident__% _%e113903%_ _%src113904%_))
                        _g114366_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g114366_))))))
    (define gx#gentemps
      (lambda (_%stx-lst113880%_) (gx#stx-map1 gx#genident _%stx-lst113880%_)))
    (define gx#syntax->list
      (lambda (_%stx113878%_) (gx#stx-map1 values _%stx113878%_)))
    (define gx#stx-car
      (lambda (_%stx113875%_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _%stx113875%_)))))
    (define gx#stx-cdr
      (lambda (_%stx113872%_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _%stx113872%_)))))
    (define gx#stx-length
      (lambda (_%stx113837%_)
        (let _%lp113839%_ ((_%rest113841%_ _%stx113837%_) (_%n113842%_ '0))
          (let* ((_%g113843113851%_ (gx#stx-e _%rest113841%_))
                 (_%else113845113859%_ (lambda () _%n113842%_))
                 (_%K113847113864%_
                  (lambda (_%rest113862%_)
                    (_%lp113839%_ _%rest113862%_ (##fx+ _%n113842%_ '1)))))
            (if (##pair? _%g113843113851%_)
                (let* ((_%tl113849113867%_ (##cdr _%g113843113851%_))
                       (_%rest113870%_ _%tl113849113867%_))
                  (_%K113847113864%_ _%rest113870%_))
                (_%else113845113859%_))))))
    (define gx#stx-for-each
      (lambda _g114368_
        (let ((_g114367_ (##length _g114368_)))
          (cond ((##fx= _g114367_ 2)
                 (apply (lambda (_%f113830%_ _%stx113831%_)
                          (gx#stx-for-each1 _%f113830%_ _%stx113831%_))
                        _g114368_))
                ((##fx= _g114367_ 3)
                 (apply (lambda (_%f113833%_ _%xstx113834%_ _%ystx113835%_)
                          (gx#stx-for-each2
                           _%f113833%_
                           _%xstx113834%_
                           _%ystx113835%_))
                        _g114368_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g114368_))))))
    (define gx#stx-for-each1
      (lambda (_%f113780%_ _%stx113781%_)
        (if (procedure? _%f113780%_)
            '#!void
            (error '"expected procedure" _%f113780%_))
        (let _%lp113783%_ ((_%rest113785%_ _%stx113781%_))
          (let* ((_%g113786113796%_ (gx#syntax-e _%rest113785%_))
                 (_%else113789113804%_
                  (lambda () (_%f113780%_ _%rest113785%_))))
            (let ((_%K113792113818%_
                   (lambda (_%rest113815%_ _%hd113816%_)
                     (_%f113780%_ _%hd113816%_)
                     (_%lp113783%_ _%rest113815%_)))
                  (_%K113791113809%_ (lambda () '#!void)))
              (let ((_%try-match113788113812%_
                     (lambda ()
                       (if (##null? _%g113786113796%_)
                           (_%K113791113809%_)
                           (_%else113789113804%_)))))
                (if (##pair? _%g113786113796%_)
                    (let ((_%tl113794113823%_ (##cdr _%g113786113796%_))
                          (_%hd113793113821%_ (##car _%g113786113796%_)))
                      (let ((_%hd113826%_ _%hd113793113821%_)
                            (_%rest113828%_ _%tl113794113823%_))
                        (_%K113792113818%_ _%rest113828%_ _%hd113826%_)))
                    (_%try-match113788113812%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f113685%_ _%xstx113686%_ _%ystx113687%_)
        (if (procedure? _%f113685%_)
            '#!void
            (error '"expected procedure" _%f113685%_))
        (let _%lp113689%_ ((_%xrest113691%_ _%xstx113686%_)
                           (_%yrest113692%_ _%ystx113687%_))
          (let* ((_%g113693113703%_ (gx#syntax-e _%xrest113691%_))
                 (_%else113696113711%_ (lambda () '#!void)))
            (let ((_%K113699113768%_
                   (lambda (_%xrest113737%_ _%xhd113738%_)
                     (let* ((_%g113739113746%_ (gx#syntax-e _%yrest113692%_))
                            (_%E113741113750%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g113739113746%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K113742113756%_
                             (lambda (_%yrest113753%_ _%yhd113754%_)
                               (_%f113685%_ _%xhd113738%_ _%yhd113754%_)
                               (_%lp113689%_
                                _%xrest113737%_
                                _%yrest113753%_))))
                       (if (##pair? _%g113739113746%_)
                           (let ((_%hd113743113759%_ (##car _%g113739113746%_))
                                 (_%tl113744113761%_
                                  (##cdr _%g113739113746%_)))
                             (let* ((_%yhd113764%_ _%hd113743113759%_)
                                    (_%yrest113766%_ _%tl113744113761%_))
                               (_%K113742113756%_
                                _%yrest113766%_
                                _%yhd113764%_)))
                           (_%E113741113750%_)))))
                  (_%K113698113731%_
                   (lambda ()
                     (let* ((_%yrest113715113720%_ _%yrest113692%_)
                            (_%E113717113724%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest113715113720%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K113718113728%_
                             (lambda ()
                               (_%f113685%_ _%xrest113691%_ _%yrest113692%_))))
                       (if (not (gx#stx-null? _%yrest113715113720%_))
                           (_%K113718113728%_)
                           (_%E113717113724%_))))))
              (let ((_%try-match113695113734%_
                     (lambda ()
                       (if (not (null? _%g113693113703%_))
                           (_%K113698113731%_)
                           (_%else113696113711%_)))))
                (if (##pair? _%g113693113703%_)
                    (let ((_%tl113701113773%_ (##cdr _%g113693113703%_))
                          (_%hd113700113771%_ (##car _%g113693113703%_)))
                      (let ((_%xhd113776%_ _%hd113700113771%_)
                            (_%xrest113778%_ _%tl113701113773%_))
                        (_%K113699113768%_ _%xrest113778%_ _%xhd113776%_)))
                    (_%try-match113695113734%_))))))))
    (define gx#stx-map
      (lambda _g114370_
        (let ((_g114369_ (##length _g114370_)))
          (cond ((##fx= _g114369_ 2)
                 (apply (lambda (_%f113678%_ _%stx113679%_)
                          (gx#stx-map1 _%f113678%_ _%stx113679%_))
                        _g114370_))
                ((##fx= _g114369_ 3)
                 (apply (lambda (_%f113681%_ _%xstx113682%_ _%ystx113683%_)
                          (gx#stx-map2
                           _%f113681%_
                           _%xstx113682%_
                           _%ystx113683%_))
                        _g114370_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g114370_))))))
    (define gx#stx-map1
      (lambda (_%f113628%_ _%stx113629%_)
        (if (procedure? _%f113628%_)
            '#!void
            (error '"expected procedure" _%f113628%_))
        (let _%recur113631%_ ((_%rest113633%_ _%stx113629%_))
          (let* ((_%g113634113644%_ (gx#syntax-e _%rest113633%_))
                 (_%else113637113652%_
                  (lambda () (_%f113628%_ _%rest113633%_))))
            (let ((_%K113640113666%_
                   (lambda (_%rest113663%_ _%hd113664%_)
                     (cons (_%f113628%_ _%hd113664%_)
                           (_%recur113631%_ _%rest113663%_))))
                  (_%K113639113657%_ (lambda () '())))
              (let ((_%try-match113636113660%_
                     (lambda ()
                       (if (##null? _%g113634113644%_)
                           (_%K113639113657%_)
                           (_%else113637113652%_)))))
                (if (##pair? _%g113634113644%_)
                    (let ((_%tl113642113671%_ (##cdr _%g113634113644%_))
                          (_%hd113641113669%_ (##car _%g113634113644%_)))
                      (let ((_%hd113674%_ _%hd113641113669%_)
                            (_%rest113676%_ _%tl113642113671%_))
                        (_%K113640113666%_ _%rest113676%_ _%hd113674%_)))
                    (_%try-match113636113660%_))))))))
    (define gx#stx-map2
      (lambda (_%f113533%_ _%xstx113534%_ _%ystx113535%_)
        (if (procedure? _%f113533%_)
            '#!void
            (error '"expected procedure" _%f113533%_))
        (let _%recur113537%_ ((_%xrest113539%_ _%xstx113534%_)
                              (_%yrest113540%_ _%ystx113535%_))
          (let* ((_%g113541113551%_ (gx#syntax-e _%xrest113539%_))
                 (_%else113544113559%_ (lambda () '())))
            (let ((_%K113547113616%_
                   (lambda (_%xrest113585%_ _%xhd113586%_)
                     (let* ((_%g113587113594%_ (gx#syntax-e _%yrest113540%_))
                            (_%E113589113598%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g113587113594%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K113590113604%_
                             (lambda (_%yrest113601%_ _%yhd113602%_)
                               (cons (_%f113533%_ _%xhd113586%_ _%yhd113602%_)
                                     (_%recur113537%_
                                      _%xrest113585%_
                                      _%yrest113601%_)))))
                       (if (##pair? _%g113587113594%_)
                           (let ((_%hd113591113607%_ (##car _%g113587113594%_))
                                 (_%tl113592113609%_
                                  (##cdr _%g113587113594%_)))
                             (let* ((_%yhd113612%_ _%hd113591113607%_)
                                    (_%yrest113614%_ _%tl113592113609%_))
                               (_%K113590113604%_
                                _%yrest113614%_
                                _%yhd113612%_)))
                           (_%E113589113598%_)))))
                  (_%K113546113579%_
                   (lambda ()
                     (let* ((_%yrest113563113568%_ _%yrest113540%_)
                            (_%E113565113572%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest113563113568%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K113566113576%_
                             (lambda ()
                               (_%f113533%_ _%xrest113539%_ _%yrest113540%_))))
                       (if (not (gx#stx-null? _%yrest113563113568%_))
                           (_%K113566113576%_)
                           (_%E113565113572%_))))))
              (let ((_%try-match113543113582%_
                     (lambda ()
                       (if (not (null? _%g113541113551%_))
                           (_%K113546113579%_)
                           (_%else113544113559%_)))))
                (if (##pair? _%g113541113551%_)
                    (let ((_%tl113549113621%_ (##cdr _%g113541113551%_))
                          (_%hd113548113619%_ (##car _%g113541113551%_)))
                      (let ((_%xhd113624%_ _%hd113548113619%_)
                            (_%xrest113626%_ _%tl113549113621%_))
                        (_%K113547113616%_ _%xrest113626%_ _%xhd113624%_)))
                    (_%try-match113543113582%_))))))))
    (define gx#stx-andmap
      (lambda (_%f113483%_ _%stx113484%_)
        (if (procedure? _%f113483%_)
            '#!void
            (error '"expected procedure" _%f113483%_))
        (let _%lp113486%_ ((_%rest113488%_ _%stx113484%_))
          (let* ((_%g113489113499%_ (gx#syntax-e _%rest113488%_))
                 (_%else113492113507%_
                  (lambda () (_%f113483%_ _%rest113488%_))))
            (let ((_%K113495113521%_
                   (lambda (_%rest113518%_ _%hd113519%_)
                     (if (_%f113483%_ _%hd113519%_)
                         (_%lp113486%_ _%rest113518%_)
                         '#f)))
                  (_%K113494113512%_ (lambda () '#t)))
              (let ((_%try-match113491113515%_
                     (lambda ()
                       (if (##null? _%g113489113499%_)
                           (_%K113494113512%_)
                           (_%else113492113507%_)))))
                (if (##pair? _%g113489113499%_)
                    (let ((_%tl113497113526%_ (##cdr _%g113489113499%_))
                          (_%hd113496113524%_ (##car _%g113489113499%_)))
                      (let ((_%hd113529%_ _%hd113496113524%_)
                            (_%rest113531%_ _%tl113497113526%_))
                        (_%K113495113521%_ _%rest113531%_ _%hd113529%_)))
                    (_%try-match113491113515%_))))))))
    (define gx#stx-ormap
      (lambda (_%f113430%_ _%stx113431%_)
        (if (procedure? _%f113430%_)
            '#!void
            (error '"expected procedure" _%f113430%_))
        (let _%lp113433%_ ((_%rest113435%_ _%stx113431%_))
          (let* ((_%g113436113446%_ (gx#syntax-e _%rest113435%_))
                 (_%else113439113454%_
                  (lambda () (_%f113430%_ _%rest113435%_))))
            (let ((_%K113442113471%_
                   (lambda (_%rest113465%_ _%hd113466%_)
                     (let ((_%$e113468%_ (_%f113430%_ _%hd113466%_)))
                       (if _%$e113468%_
                           _%$e113468%_
                           (_%lp113433%_ _%rest113465%_)))))
                  (_%K113441113459%_ (lambda () '#f)))
              (let ((_%try-match113438113462%_
                     (lambda ()
                       (if (##null? _%g113436113446%_)
                           (_%K113441113459%_)
                           (_%else113439113454%_)))))
                (if (##pair? _%g113436113446%_)
                    (let ((_%tl113444113476%_ (##cdr _%g113436113446%_))
                          (_%hd113443113474%_ (##car _%g113436113446%_)))
                      (let ((_%hd113479%_ _%hd113443113474%_)
                            (_%rest113481%_ _%tl113444113476%_))
                        (_%K113442113471%_ _%rest113481%_ _%hd113479%_)))
                    (_%try-match113438113462%_))))))))
    (define gx#stx-foldl
      (lambda (_%f113378%_ _%iv113379%_ _%stx113380%_)
        (if (procedure? _%f113378%_)
            '#!void
            (error '"expected procedure" _%f113378%_))
        (let _%lp113382%_ ((_%r113384%_ _%iv113379%_)
                           (_%rest113385%_ _%stx113380%_))
          (let* ((_%g113386113396%_ (gx#syntax-e _%rest113385%_))
                 (_%else113389113404%_
                  (lambda () (_%f113378%_ _%rest113385%_ _%r113384%_))))
            (let ((_%K113392113418%_
                   (lambda (_%rest113415%_ _%hd113416%_)
                     (_%lp113382%_
                      (_%f113378%_ _%hd113416%_ _%r113384%_)
                      _%rest113415%_)))
                  (_%K113391113409%_ (lambda () _%r113384%_)))
              (let ((_%try-match113388113412%_
                     (lambda ()
                       (if (##null? _%g113386113396%_)
                           (_%K113391113409%_)
                           (_%else113389113404%_)))))
                (if (##pair? _%g113386113396%_)
                    (let ((_%tl113394113423%_ (##cdr _%g113386113396%_))
                          (_%hd113393113421%_ (##car _%g113386113396%_)))
                      (let ((_%hd113426%_ _%hd113393113421%_)
                            (_%rest113428%_ _%tl113394113423%_))
                        (_%K113392113418%_ _%rest113428%_ _%hd113426%_)))
                    (_%try-match113388113412%_))))))))
    (define gx#stx-foldr
      (lambda (_%f113327%_ _%iv113328%_ _%stx113329%_)
        (if (procedure? _%f113327%_)
            '#!void
            (error '"expected procedure" _%f113327%_))
        (let _%recur113331%_ ((_%rest113333%_ _%stx113329%_))
          (let* ((_%g113334113344%_ (gx#syntax-e _%rest113333%_))
                 (_%else113337113352%_
                  (lambda () (_%f113327%_ _%rest113333%_ _%iv113328%_))))
            (let ((_%K113340113366%_
                   (lambda (_%rest113363%_ _%hd113364%_)
                     (_%f113327%_
                      _%hd113364%_
                      (_%recur113331%_ _%rest113363%_))))
                  (_%K113339113357%_ (lambda () _%iv113328%_)))
              (let ((_%try-match113336113360%_
                     (lambda ()
                       (if (##null? _%g113334113344%_)
                           (_%K113339113357%_)
                           (_%else113337113352%_)))))
                (if (##pair? _%g113334113344%_)
                    (let ((_%tl113342113371%_ (##cdr _%g113334113344%_))
                          (_%hd113341113369%_ (##car _%g113334113344%_)))
                      (let ((_%hd113374%_ _%hd113341113369%_)
                            (_%rest113376%_ _%tl113342113371%_))
                        (_%K113340113366%_ _%rest113376%_ _%hd113374%_)))
                    (_%try-match113336113360%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx113325%_) (gx#stx-foldl cons '() _%stx113325%_)))
    (define gx#stx-last
      (lambda (_%stx113286%_)
        (let _%lp113288%_ ((_%rest113290%_ _%stx113286%_))
          (let* ((_%g113291113299%_ (gx#syntax-e _%rest113290%_))
                 (_%else113293113307%_ (lambda () _%rest113290%_))
                 (_%K113295113313%_
                  (lambda (_%rest113310%_ _%hd113311%_)
                    (if (gx#stx-null? _%rest113310%_)
                        _%hd113311%_
                        (_%lp113288%_ _%rest113310%_)))))
            (if (##pair? _%g113291113299%_)
                (let ((_%hd113296113316%_ (##car _%g113291113299%_))
                      (_%tl113297113318%_ (##cdr _%g113291113299%_)))
                  (let* ((_%hd113321%_ _%hd113296113316%_)
                         (_%rest113323%_ _%tl113297113318%_))
                    (_%K113295113313%_ _%rest113323%_ _%hd113321%_)))
                (_%else113293113307%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx113257%_)
        (let _%lp113259%_ ((_%hd113261%_ _%stx113257%_))
          (let* ((_%g113262113269%_ (gx#syntax-e _%hd113261%_))
                 (_%E113264113273%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g113262113269%_
                           '([_ . rest]))
                    '#!void))
                 (_%K113265113278%_
                  (lambda (_%rest113276%_)
                    (if (gx#stx-pair? _%rest113276%_)
                        (_%lp113259%_ _%rest113276%_)
                        _%hd113261%_))))
            (if (##pair? _%g113262113269%_)
                (let* ((_%tl113267113281%_ (##cdr _%g113262113269%_))
                       (_%rest113284%_ _%tl113267113281%_))
                  (_%K113265113278%_ _%rest113284%_))
                (_%E113264113273%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx113226%_ _%k113227%_)
        (let _%lp113229%_ ((_%rest113231%_ _%stx113226%_)
                           (_%k113232%_ _%k113227%_))
          (if (fxpositive? _%k113232%_)
              (let* ((_%g113233113240%_ (gx#syntax-e _%rest113231%_))
                     (_%E113235113244%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g113233113240%_
                               '([_ . rest]))
                        '#!void))
                     (_%K113236113249%_
                      (lambda (_%rest113247%_)
                        (_%lp113229%_ _%rest113247%_ (##fx- _%k113232%_ '1)))))
                (if (##pair? _%g113233113240%_)
                    (let* ((_%tl113238113252%_ (##cdr _%g113233113240%_))
                           (_%rest113255%_ _%tl113238113252%_))
                      (_%K113236113249%_ _%rest113255%_))
                    (_%E113235113244%_)))
              _%rest113231%_))))
    (define gx#stx-list-ref
      (lambda (_%stx113223%_ _%k113224%_)
        (gx#stx-car (gx#stx-list-tail _%stx113223%_ _%k113224%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx113135%_ _%key?113136%_)
        (if (procedure? _%key?113136%_)
            '#!void
            (error '"expected procedure" _%key?113136%_))
        (let _%lp113138%_ ((_%rest113140%_ _%stx113135%_))
          (let* ((_%g113141113151%_ (gx#stx-e _%rest113140%_))
                 (_%else113144113159%_ (lambda () '#f)))
            (let ((_%K113147113201%_
                   (lambda (_%rest113170%_ _%hd113171%_)
                     (if (_%key?113136%_ _%hd113171%_)
                         (let* ((_%g113172113180%_ (gx#stx-e _%rest113170%_))
                                (_%else113174113188%_ (lambda () '#f))
                                (_%K113176113193%_
                                 (lambda (_%rest113191%_)
                                   (_%lp113138%_ _%rest113191%_))))
                           (if (##pair? _%g113172113180%_)
                               (let* ((_%tl113178113196%_
                                       (##cdr _%g113172113180%_))
                                      (_%rest113199%_ _%tl113178113196%_))
                                 (_%lp113138%_ _%rest113199%_))
                               (_%else113174113188%_)))
                         '#f)))
                  (_%K113146113164%_ (lambda () '#t)))
              (let ((_%try-match113143113167%_
                     (lambda ()
                       (if (##null? _%g113141113151%_)
                           (_%K113146113164%_)
                           (_%else113144113159%_)))))
                (if (##pair? _%g113141113151%_)
                    (let ((_%tl113149113206%_ (##cdr _%g113141113151%_))
                          (_%hd113148113204%_ (##car _%g113141113151%_)))
                      (let ((_%hd113209%_ _%hd113148113204%_)
                            (_%rest113211%_ _%tl113149113206%_))
                        (_%K113147113201%_ _%rest113211%_ _%hd113209%_)))
                    (_%try-match113143113167%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx113216%_)
        (let ((_%key?113218%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx113216%_ _%key?113218%_))))
    (define gx#stx-plist?
      (lambda _g114372_
        (let ((_g114371_ (##length _g114372_)))
          (cond ((##fx= _g114371_ 1)
                 (apply (lambda (_%stx113216%_)
                          (gx#stx-plist?__0 _%stx113216%_))
                        _g114372_))
                ((##fx= _g114371_ 2)
                 (apply (lambda (_%stx113220%_ _%key?113221%_)
                          (gx#stx-plist?__% _%stx113220%_ _%key?113221%_))
                        _g114372_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g114372_))))))
    (define gx#stx-getq__%
      (lambda (_%key113053%_ _%stx113054%_ _%key=?113055%_)
        (if (procedure? _%key=?113055%_)
            '#!void
            (error '"expected procedure" _%key=?113055%_))
        (let _%lp113057%_ ((_%rest113059%_ _%stx113054%_))
          (let* ((_%g113060113068%_ (gx#syntax-e _%rest113059%_))
                 (_%else113062113076%_ (lambda () '#f))
                 (_%K113064113110%_
                  (lambda (_%rest113079%_ _%hd113080%_)
                    (let* ((_%g113081113088%_ (gx#syntax-e _%rest113079%_))
                           (_%E113083113092%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g113081113088%_
                                     '([val . rest]))
                              '#!void))
                           (_%K113084113098%_
                            (lambda (_%rest113095%_ _%val113096%_)
                              (if (_%key=?113055%_ _%hd113080%_ _%key113053%_)
                                  _%val113096%_
                                  (_%lp113057%_ _%rest113095%_)))))
                      (if (##pair? _%g113081113088%_)
                          (let ((_%hd113085113101%_ (##car _%g113081113088%_))
                                (_%tl113086113103%_ (##cdr _%g113081113088%_)))
                            (let* ((_%val113106%_ _%hd113085113101%_)
                                   (_%rest113108%_ _%tl113086113103%_))
                              (_%K113084113098%_
                               _%rest113108%_
                               _%val113106%_)))
                          (_%E113083113092%_))))))
            (if (##pair? _%g113060113068%_)
                (let ((_%hd113065113113%_ (##car _%g113060113068%_))
                      (_%tl113066113115%_ (##cdr _%g113060113068%_)))
                  (let* ((_%hd113118%_ _%hd113065113113%_)
                         (_%rest113120%_ _%tl113066113115%_))
                    (_%K113064113110%_ _%rest113120%_ _%hd113118%_)))
                (_%else113062113076%_))))))
    (define gx#stx-getq__0
      (lambda (_%key113125%_ _%stx113126%_)
        (let ((_%key=?113128%_ gx#stx-eq?))
          (gx#stx-getq__% _%key113125%_ _%stx113126%_ _%key=?113128%_))))
    (define gx#stx-getq
      (lambda _g114374_
        (let ((_g114373_ (##length _g114374_)))
          (cond ((##fx= _g114373_ 2)
                 (apply (lambda (_%key113125%_ _%stx113126%_)
                          (gx#stx-getq__0 _%key113125%_ _%stx113126%_))
                        _g114374_))
                ((##fx= _g114373_ 3)
                 (apply (lambda (_%key113130%_ _%stx113131%_ _%key=?113132%_)
                          (gx#stx-getq__%
                           _%key113130%_
                           _%stx113131%_
                           _%key=?113132%_))
                        _g114374_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g114374_))))))))

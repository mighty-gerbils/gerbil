(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1712121898)
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
      (lambda _%$args114387%_
        (apply make-instance gx#identifier-wrap::t _%$args114387%_)))
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
      (lambda _%$args114384%_
        (apply make-instance gx#syntax-wrap::t _%$args114384%_)))
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
      (lambda _%$args114381%_
        (apply make-instance gx#syntax-quote::t _%$args114381%_)))
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
      (lambda (_%stx114379%_) (symbol? (gx#stx-e _%stx114379%_))))
    (define gx#identifier-quote?
      (lambda (_%stx114377%_)
        (if (##structure-direct-instance-of? _%stx114377%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx114377%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx114372%_)
        (if (##structure-direct-instance-of? _%stx114372%_ 'gx#syntax-quote::t)
            (let () '#t)
            (if (##structure-direct-instance-of?
                 _%stx114372%_
                 'gx#syntax-wrap::t)
                (let ()
                  (gx#sealed-syntax?
                   (##unchecked-structure-ref _%stx114372%_ '1 '#f '#f)))
                (let () '#f)))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx114367%_)
        (if (##structure-direct-instance-of? _%stx114367%_ 'gx#syntax-quote::t)
            (let () _%stx114367%_)
            (if (##structure-direct-instance-of?
                 _%stx114367%_
                 'gx#syntax-wrap::t)
                (let ()
                  (gx#sealed-syntax-unwrap
                   (##unchecked-structure-ref _%stx114367%_ '1 '#f '#f)))
                (let () '#f)))))
    (define gx#syntax-e
      (lambda (_%stx114341%_)
        (if (##structure-direct-instance-of? _%stx114341%_ 'gx#syntax-wrap::t)
            (let ()
              (let _%lp114344%_ ((_%e114346%_
                                  (##unchecked-structure-ref
                                   _%stx114341%_
                                   '1
                                   '#f
                                   '#f))
                                 (_%marks114347%_
                                  (cons (##unchecked-structure-ref
                                         _%stx114341%_
                                         '3
                                         '#f
                                         '#f)
                                        '())))
                (if (##structure? _%e114346%_)
                    (let ()
                      (let ((_%$e114350%_
                             (##type-id (##structure-type _%e114346%_))))
                        (if (eq? 'gx#syntax-wrap::t _%$e114350%_)
                            (_%lp114344%_
                             (##unchecked-structure-ref _%e114346%_ '1 '#f '#f)
                             (gx#apply-mark
                              (##unchecked-structure-ref
                               _%e114346%_
                               '3
                               '#f
                               '#f)
                              _%marks114347%_))
                            (if (or (eq? 'gx#syntax-quote::t _%$e114350%_)
                                    (eq? 'gx#identifier-wrap::t _%$e114350%_))
                                (##unchecked-structure-ref
                                 _%e114346%_
                                 '1
                                 '#f
                                 '#f)
                                (if (eq? 'gerbil#AST::t _%$e114350%_)
                                    (_%lp114344%_
                                     (##unchecked-structure-ref
                                      _%e114346%_
                                      '1
                                      '#f
                                      '#f)
                                     _%marks114347%_)
                                    _%e114346%_)))))
                    (if (null? _%marks114347%_)
                        (let () _%e114346%_)
                        (if (pair? _%e114346%_)
                            (let ()
                              (cons (gx#stx-wrap
                                     (car _%e114346%_)
                                     _%marks114347%_)
                                    (gx#stx-wrap
                                     (cdr _%e114346%_)
                                     _%marks114347%_)))
                            (if (vector? _%e114346%_)
                                (let ()
                                  (vector-map
                                   (lambda (_%g114358114360%_)
                                     (gx#stx-wrap
                                      _%g114358114360%_
                                      _%marks114347%_))
                                   _%e114346%_))
                                (if (box? _%e114346%_)
                                    (let ()
                                      (box (gx#stx-wrap
                                            (unbox _%e114346%_)
                                            _%marks114347%_)))
                                    (let () _%e114346%_))))))))
            (if (##structure-instance-of? _%stx114341%_ 'gerbil#AST::t)
                (let () (##unchecked-structure-ref _%stx114341%_ '1 '#f '#f))
                (let () _%stx114341%_)))))
    (define gx#syntax->datum
      (lambda (_%stx114334%_)
        (if (##structure-instance-of? _%stx114334%_ 'gerbil#AST::t)
            (let ()
              (gx#syntax->datum
               (##unchecked-structure-ref _%stx114334%_ '1 '#f '#f)))
            (if (pair? _%stx114334%_)
                (let ()
                  (cons (gx#syntax->datum (car _%stx114334%_))
                        (gx#syntax->datum (cdr _%stx114334%_))))
                (if (vector? _%stx114334%_)
                    (let () (vector-map gx#syntax->datum _%stx114334%_))
                    (if (box? _%stx114334%_)
                        (let () (box (gx#syntax->datum (unbox _%stx114334%_))))
                        (let () _%stx114334%_)))))))
    (define gx#datum->syntax__%
      (lambda (_%stx114268%_ _%datum114269%_ _%src114270%_ _%quote?114271%_)
        (letrec ((_%wrap-datum114273%_
                  (lambda (_%e114306%_ _%marks114307%_)
                    (_%wrap-inner114275%_
                     _%e114306%_
                     (lambda (_%g114308114310%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g114308114310%_
                        _%src114270%_
                        _%marks114307%_)))))
                 (_%wrap-quote114274%_
                  (lambda (_%e114298%_ _%ctx114299%_ _%marks114300%_)
                    (_%wrap-inner114275%_
                     _%e114298%_
                     (lambda (_%g114301114303%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g114301114303%_
                        _%src114270%_
                        _%ctx114299%_
                        _%marks114300%_)))))
                 (_%wrap-inner114275%_
                  (lambda (_%e114286%_ _%wrap-e114287%_)
                    (let _%recur114289%_ ((_%e114291%_ _%e114286%_))
                      (if (symbol? _%e114291%_)
                          (let () (_%wrap-e114287%_ _%e114291%_))
                          (if (pair? _%e114291%_)
                              (let ()
                                (cons (_%recur114289%_ (car _%e114291%_))
                                      (_%recur114289%_ (cdr _%e114291%_))))
                              (if (vector? _%e114291%_)
                                  (let ()
                                    (vector-map _%recur114289%_ _%e114291%_))
                                  (if (box? _%e114291%_)
                                      (let ()
                                        (box (_%recur114289%_
                                              (unbox _%e114291%_))))
                                      (let () _%e114291%_))))))))
                 (_%wrap-outer114276%_
                  (lambda (_%e114284%_)
                    (if (##structure-instance-of? _%e114284%_ 'gerbil#AST::t)
                        _%e114284%_
                        (##structure gx#AST::t _%e114284%_ _%src114270%_)))))
          (if (##structure-instance-of? _%datum114269%_ 'gerbil#AST::t)
              (let () _%datum114269%_)
              (if (not _%stx114268%_)
                  (let ()
                    (##structure gx#AST::t _%datum114269%_ _%src114270%_))
                  (if (gx#identifier? _%stx114268%_)
                      (let ()
                        (let ((_%stx114281%_ (gx#stx-unwrap__0 _%stx114268%_)))
                          (_%wrap-outer114276%_
                           (if (##structure-direct-instance-of?
                                _%stx114281%_
                                'gx#syntax-quote::t)
                               (if _%quote?114271%_
                                   (_%wrap-quote114274%_
                                    _%datum114269%_
                                    (##unchecked-structure-ref
                                     _%stx114281%_
                                     '3
                                     '#f
                                     '#f)
                                    (##unchecked-structure-ref
                                     _%stx114281%_
                                     '4
                                     '#f
                                     '#f))
                                   (_%wrap-datum114273%_
                                    _%datum114269%_
                                    (##unchecked-structure-ref
                                     _%stx114281%_
                                     '4
                                     '#f
                                     '#f)))
                               (_%wrap-datum114273%_
                                _%datum114269%_
                                (##unchecked-structure-ref
                                 _%stx114281%_
                                 '3
                                 '#f
                                 '#f))))))
                      (let ()
                        (error '"Bad template syntax; expected identifier"
                               _%stx114268%_))))))))
    (define gx#datum->syntax__0
      (lambda (_%stx114316%_ _%datum114317%_)
        (let* ((_%src114319%_ '#f) (_%quote?114321%_ '#t))
          (gx#datum->syntax__%
           _%stx114316%_
           _%datum114317%_
           _%src114319%_
           _%quote?114321%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx114323%_ _%datum114324%_ _%src114325%_)
        (let ((_%quote?114327%_ '#t))
          (gx#datum->syntax__%
           _%stx114323%_
           _%datum114324%_
           _%src114325%_
           _%quote?114327%_))))
    (define gx#datum->syntax
      (lambda _g114468_
        (let ((_g114467_ (##length _g114468_)))
          (cond ((##fx= _g114467_ 2)
                 (apply (lambda (_%stx114316%_ _%datum114317%_)
                          (gx#datum->syntax__0 _%stx114316%_ _%datum114317%_))
                        _g114468_))
                ((##fx= _g114467_ 3)
                 (apply (lambda (_%stx114323%_ _%datum114324%_ _%src114325%_)
                          (gx#datum->syntax__1
                           _%stx114323%_
                           _%datum114324%_
                           _%src114325%_))
                        _g114468_))
                ((##fx= _g114467_ 4)
                 (apply (lambda (_%stx114329%_
                                 _%datum114330%_
                                 _%src114331%_
                                 _%quote?114332%_)
                          (gx#datum->syntax__%
                           _%stx114329%_
                           _%datum114330%_
                           _%src114331%_
                           _%quote?114332%_))
                        _g114468_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g114468_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx114234%_ _%marks114235%_)
        (let _%lp114237%_ ((_%e114239%_ _%stx114234%_)
                           (_%marks114240%_ _%marks114235%_)
                           (_%src114241%_ (gx#stx-source _%stx114234%_)))
          (if (##structure-direct-instance-of? _%e114239%_ 'gx#syntax-wrap::t)
              (let ()
                (_%lp114237%_
                 (##unchecked-structure-ref _%e114239%_ '1 '#f '#f)
                 (gx#apply-mark
                  (##unchecked-structure-ref _%e114239%_ '3 '#f '#f)
                  _%marks114240%_)
                 (##unchecked-structure-ref _%e114239%_ '2 '#f '#f)))
              (if (##structure-direct-instance-of?
                   _%e114239%_
                   'gx#identifier-wrap::t)
                  (let ()
                    (if (null? _%marks114240%_)
                        _%e114239%_
                        (##structure
                         gx#identifier-wrap::t
                         (##unchecked-structure-ref _%e114239%_ '1 '#f '#f)
                         (##unchecked-structure-ref _%e114239%_ '2 '#f '#f)
                         (__foldl1
                          gx#apply-mark
                          (##unchecked-structure-ref _%e114239%_ '3 '#f '#f)
                          _%marks114240%_))))
                  (if (##structure-direct-instance-of?
                       _%e114239%_
                       'gx#syntax-quote::t)
                      (let () _%e114239%_)
                      (if (##structure-instance-of? _%e114239%_ 'gerbil#AST::t)
                          (let ()
                            (_%lp114237%_
                             (##unchecked-structure-ref _%e114239%_ '1 '#f '#f)
                             _%marks114240%_
                             (##unchecked-structure-ref
                              _%e114239%_
                              '2
                              '#f
                              '#f)))
                          (if (symbol? _%e114239%_)
                              (let ()
                                (##structure
                                 gx#identifier-wrap::t
                                 _%e114239%_
                                 _%src114241%_
                                 (reverse _%marks114240%_)))
                              (if (null? _%marks114240%_)
                                  (let () _%e114239%_)
                                  (if (pair? _%e114239%_)
                                      (let ()
                                        (cons (gx#stx-wrap
                                               (car _%e114239%_)
                                               _%marks114240%_)
                                              (gx#stx-wrap
                                               (cdr _%e114239%_)
                                               _%marks114240%_)))
                                      (if (vector? _%e114239%_)
                                          (let ()
                                            (vector-map
                                             (lambda (_%g114250114252%_)
                                               (gx#stx-wrap
                                                _%g114250114252%_
                                                _%marks114240%_))
                                             _%e114239%_))
                                          (if (box? _%e114239%_)
                                              (let ()
                                                (box (gx#stx-wrap
                                                      (unbox _%e114239%_)
                                                      _%marks114240%_)))
                                              (let () _%e114239%_)))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx114260%_)
        (let ((_%marks114262%_ '()))
          (gx#stx-unwrap__% _%stx114260%_ _%marks114262%_))))
    (define gx#stx-unwrap
      (lambda _g114470_
        (let ((_g114469_ (##length _g114470_)))
          (cond ((##fx= _g114469_ 1)
                 (apply (lambda (_%stx114260%_)
                          (gx#stx-unwrap__0 _%stx114260%_))
                        _g114470_))
                ((##fx= _g114469_ 2)
                 (apply (lambda (_%stx114264%_ _%marks114265%_)
                          (gx#stx-unwrap__% _%stx114264%_ _%marks114265%_))
                        _g114470_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g114470_))))))
    (define gx#stx-wrap
      (lambda (_%stx114227%_ _%marks114228%_)
        (__foldl1
         (lambda (_%mark114230%_ _%stx114231%_)
           (gx#stx-apply-mark _%stx114231%_ _%mark114230%_))
         _%stx114227%_
         _%marks114228%_)))
    (define gx#stx-rewrap
      (lambda (_%stx114221%_ _%marks114222%_)
        (__foldr1
         (lambda (_%mark114224%_ _%stx114225%_)
           (gx#stx-apply-mark _%stx114225%_ _%mark114224%_))
         _%stx114221%_
         _%marks114222%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx114215%_ _%mark114216%_)
        (if (##structure-direct-instance-of? _%stx114215%_ 'gx#syntax-quote::t)
            (let () _%stx114215%_)
            (if (and (##structure-direct-instance-of?
                      _%stx114215%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark114216%_
                          (##unchecked-structure-ref
                           _%stx114215%_
                           '3
                           '#f
                           '#f)))
                (let () (##unchecked-structure-ref _%stx114215%_ '1 '#f '#f))
                (let ()
                  (##structure
                   gx#syntax-wrap::t
                   _%stx114215%_
                   (gx#stx-source _%stx114215%_)
                   _%mark114216%_))))))
    (define gx#apply-mark
      (lambda (_%mark114179%_ _%marks114180%_)
        (let* ((_%marks114181114189%_ _%marks114180%_)
               (_%else114183114197%_
                (lambda () (cons _%mark114179%_ _%marks114180%_)))
               (_%K114185114203%_
                (lambda (_%rest114200%_ _%hd114201%_)
                  (if (eq? _%mark114179%_ _%hd114201%_)
                      _%rest114200%_
                      (cons _%mark114179%_ _%marks114180%_)))))
          (if (##pair? _%marks114181114189%_)
              (let ((_%hd114186114206%_ (##car _%marks114181114189%_))
                    (_%tl114187114208%_ (##cdr _%marks114181114189%_)))
                (let* ((_%hd114211%_ _%hd114186114206%_)
                       (_%rest114213%_ _%tl114187114208%_))
                  (_%K114185114203%_ _%rest114213%_ _%hd114211%_)))
              (_%else114183114197%_)))))
    (define gx#stx-e
      (lambda (_%stx114174%_)
        (if (##structure-direct-instance-of? _%stx114174%_ 'gx#syntax-wrap::t)
            (let ()
              (gx#stx-e (##unchecked-structure-ref _%stx114174%_ '1 '#f '#f)))
            (if (##structure-instance-of? _%stx114174%_ 'gerbil#AST::t)
                (let () (##unchecked-structure-ref _%stx114174%_ '1 '#f '#f))
                (let () _%stx114174%_)))))
    (define gx#stx-source
      (lambda (_%stx114172%_)
        (if (##structure-instance-of? _%stx114172%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx114172%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx114166%_ _%src114167%_)
        (if (or (##structure-instance-of? _%stx114166%_ 'gerbil#AST::t)
                (not _%src114167%_))
            _%stx114166%_
            (##structure gx#AST::t _%stx114166%_ _%src114167%_))))
    (define gx#stx-datum?
      (lambda (_%stx114164%_) (gx#self-quoting? (gx#stx-e _%stx114164%_))))
    (define gx#self-quoting?
      (lambda (_%x114147%_)
        (let ((_%$e114149%_ (immediate? _%x114147%_)))
          (if _%$e114149%_
              _%$e114149%_
              (let ((_%$e114152%_ (number? _%x114147%_)))
                (if _%$e114152%_
                    _%$e114152%_
                    (let ((_%$e114155%_ (keyword? _%x114147%_)))
                      (if _%$e114155%_
                          _%$e114155%_
                          (let ((_%$e114158%_ (string? _%x114147%_)))
                            (if _%$e114158%_
                                _%$e114158%_
                                (let ((_%$e114161%_ (vector? _%x114147%_)))
                                  (if _%$e114161%_
                                      _%$e114161%_
                                      (u8vector? _%x114147%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e114145%_) (boolean? (gx#stx-e _%e114145%_))))
    (define gx#stx-keyword?
      (lambda (_%e114143%_) (keyword? (gx#stx-e _%e114143%_))))
    (define gx#stx-char? (lambda (_%e114141%_) (char? (gx#stx-e _%e114141%_))))
    (define gx#stx-number?
      (lambda (_%e114139%_) (number? (gx#stx-e _%e114139%_))))
    (define gx#stx-fixnum?
      (lambda (_%e114137%_) (fixnum? (gx#stx-e _%e114137%_))))
    (define gx#stx-string?
      (lambda (_%e114135%_) (string? (gx#stx-e _%e114135%_))))
    (define gx#stx-null? (lambda (_%e114133%_) (null? (gx#stx-e _%e114133%_))))
    (define gx#stx-pair? (lambda (_%e114131%_) (pair? (gx#stx-e _%e114131%_))))
    (define gx#stx-list?
      (lambda (_%e114093%_)
        (let* ((_%g114094114103%_ (gx#stx-e _%e114093%_))
               (_%E114097114107%_
                (lambda ()
                  (error '"No clause matching"
                         _%g114094114103%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K114099114123%_
                 (lambda (_%rest114121%_) (gx#stx-list? _%rest114121%_)))
                (_%K114098114113%_
                 (lambda (_%tail114111%_) (null? _%tail114111%_))))
            (if (##pair? _%g114094114103%_)
                (let* ((_%tl114101114126%_ (##cdr _%g114094114103%_))
                       (_%rest114129%_ _%tl114101114126%_))
                  (gx#stx-list? _%rest114129%_))
                (let ((_%tail114116%_ _%g114094114103%_))
                  (null? _%tail114116%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e114086%_)
        (let* ((_%e114088%_ (gx#stx-e _%e114086%_))
               (_%$e114090%_ (pair? _%e114088%_)))
          (if _%$e114090%_ _%$e114090%_ (null? _%e114088%_)))))
    (define gx#stx-vector?
      (lambda (_%e114084%_) (vector? (gx#stx-e _%e114084%_))))
    (define gx#stx-box? (lambda (_%e114082%_) (box? (gx#stx-e _%e114082%_))))
    (define gx#stx-eq?
      (lambda (_%x114079%_ _%y114080%_)
        (eq? (gx#stx-e _%x114079%_) (gx#stx-e _%y114080%_))))
    (define gx#stx-eqv?
      (lambda (_%x114076%_ _%y114077%_)
        (eqv? (gx#stx-e _%x114076%_) (gx#stx-e _%y114077%_))))
    (define gx#stx-equal?
      (lambda (_%x114073%_ _%y114074%_)
        (equal? (gx#stx-e _%x114073%_) (gx#stx-e _%y114074%_))))
    (define gx#stx-false? (lambda (_%x114071%_) (not (gx#stx-e _%x114071%_))))
    (define gx#stx-identifier
      (lambda (_%template114068%_ . _%args114069%_)
        (gx#datum->syntax__1
         _%template114068%_
         (apply make-symbol (gx#syntax->datum _%args114069%_))
         (gx#stx-source _%template114068%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx114066%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx114066%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx114061%_)
        (if (##structure-direct-instance-of?
             _%stx114061%_
             'gx#identifier-wrap::t)
            (let () (##unchecked-structure-ref _%stx114061%_ '3 '#f '#f))
            (if (##structure-direct-instance-of?
                 _%stx114061%_
                 'gx#syntax-quote::t)
                (let () (##unchecked-structure-ref _%stx114061%_ '4 '#f '#f))
                (let ()
                  (error '"Bad wrap; expected unwrapped identifier"
                         _%stx114061%_))))))
    (define gx#stx-identifier-context
      (lambda (_%stx114057%_)
        (let ((_%stx114059%_ (gx#stx-unwrap__0 _%stx114057%_)))
          (if (gx#identifier-quote? _%stx114059%_)
              (##unchecked-structure-ref _%stx114059%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx114012%_)
        (let* ((_%g114013114023%_ (gx#stx-e _%stx114012%_))
               (_%else114016114031%_ (lambda () '#f)))
          (let ((_%K114019114045%_
                 (lambda (_%rest114042%_ _%hd114043%_)
                   (if (gx#identifier? _%hd114043%_)
                       (gx#identifier-list? _%rest114042%_)
                       '#f)))
                (_%K114018114036%_ (lambda () '#t)))
            (let ((_%try-match114015114039%_
                   (lambda ()
                     (if (##null? _%g114013114023%_)
                         (_%K114018114036%_)
                         (_%else114016114031%_)))))
              (if (##pair? _%g114013114023%_)
                  (let ((_%tl114021114050%_ (##cdr _%g114013114023%_))
                        (_%hd114020114048%_ (##car _%g114013114023%_)))
                    (let ((_%hd114053%_ _%hd114020114048%_)
                          (_%rest114055%_ _%tl114021114050%_))
                      (_%K114019114045%_ _%rest114055%_ _%hd114053%_)))
                  (_%try-match114015114039%_)))))))
    (define gx#genident__%
      (lambda (_%e113989%_ _%src113990%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e113992%_ (gx#stx-e _%e113989%_)))
                   (if (interned-symbol? _%e113992%_) _%e113992%_ 'g)))
         (let ((_%$e113994%_ (gx#stx-source _%e113989%_)))
           (if _%$e113994%_ _%$e113994%_ _%src113990%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e114001%_ 'g) (_%src114003%_ '#f))
          (gx#genident__% _%e114001%_ _%src114003%_))))
    (define gx#genident__1
      (lambda (_%e114005%_)
        (let ((_%src114007%_ '#f))
          (gx#genident__% _%e114005%_ _%src114007%_))))
    (define gx#genident
      (lambda _g114472_
        (let ((_g114471_ (##length _g114472_)))
          (cond ((##fx= _g114471_ 0)
                 (apply (lambda () (gx#genident__0)) _g114472_))
                ((##fx= _g114471_ 1)
                 (apply (lambda (_%e114005%_) (gx#genident__1 _%e114005%_))
                        _g114472_))
                ((##fx= _g114471_ 2)
                 (apply (lambda (_%e114009%_ _%src114010%_)
                          (gx#genident__% _%e114009%_ _%src114010%_))
                        _g114472_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g114472_))))))
    (define gx#gentemps
      (lambda (_%stx-lst113986%_) (gx#stx-map1 gx#genident _%stx-lst113986%_)))
    (define gx#syntax->list
      (lambda (_%stx113984%_) (gx#stx-map1 values _%stx113984%_)))
    (define gx#stx-car
      (lambda (_%stx113981%_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _%stx113981%_)))))
    (define gx#stx-cdr
      (lambda (_%stx113978%_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _%stx113978%_)))))
    (define gx#stx-length
      (lambda (_%stx113943%_)
        (let _%lp113945%_ ((_%rest113947%_ _%stx113943%_) (_%n113948%_ '0))
          (let* ((_%g113949113957%_ (gx#stx-e _%rest113947%_))
                 (_%else113951113965%_ (lambda () _%n113948%_))
                 (_%K113953113970%_
                  (lambda (_%rest113968%_)
                    (_%lp113945%_ _%rest113968%_ (##fx+ _%n113948%_ '1)))))
            (if (##pair? _%g113949113957%_)
                (let* ((_%tl113955113973%_ (##cdr _%g113949113957%_))
                       (_%rest113976%_ _%tl113955113973%_))
                  (_%K113953113970%_ _%rest113976%_))
                (_%else113951113965%_))))))
    (define gx#stx-for-each
      (lambda _g114474_
        (let ((_g114473_ (##length _g114474_)))
          (cond ((##fx= _g114473_ 2)
                 (apply (lambda (_%f113936%_ _%stx113937%_)
                          (gx#stx-for-each1 _%f113936%_ _%stx113937%_))
                        _g114474_))
                ((##fx= _g114473_ 3)
                 (apply (lambda (_%f113939%_ _%xstx113940%_ _%ystx113941%_)
                          (gx#stx-for-each2
                           _%f113939%_
                           _%xstx113940%_
                           _%ystx113941%_))
                        _g114474_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g114474_))))))
    (define gx#stx-for-each1
      (lambda (_%f113886%_ _%stx113887%_)
        (if (procedure? _%f113886%_)
            '#!void
            (error '"expected procedure" _%f113886%_))
        (let _%lp113889%_ ((_%rest113891%_ _%stx113887%_))
          (let* ((_%g113892113902%_ (gx#syntax-e _%rest113891%_))
                 (_%else113895113910%_
                  (lambda () (_%f113886%_ _%rest113891%_))))
            (let ((_%K113898113924%_
                   (lambda (_%rest113921%_ _%hd113922%_)
                     (_%f113886%_ _%hd113922%_)
                     (_%lp113889%_ _%rest113921%_)))
                  (_%K113897113915%_ (lambda () '#!void)))
              (let ((_%try-match113894113918%_
                     (lambda ()
                       (if (##null? _%g113892113902%_)
                           (_%K113897113915%_)
                           (_%else113895113910%_)))))
                (if (##pair? _%g113892113902%_)
                    (let ((_%tl113900113929%_ (##cdr _%g113892113902%_))
                          (_%hd113899113927%_ (##car _%g113892113902%_)))
                      (let ((_%hd113932%_ _%hd113899113927%_)
                            (_%rest113934%_ _%tl113900113929%_))
                        (_%K113898113924%_ _%rest113934%_ _%hd113932%_)))
                    (_%try-match113894113918%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f113791%_ _%xstx113792%_ _%ystx113793%_)
        (if (procedure? _%f113791%_)
            '#!void
            (error '"expected procedure" _%f113791%_))
        (let _%lp113795%_ ((_%xrest113797%_ _%xstx113792%_)
                           (_%yrest113798%_ _%ystx113793%_))
          (let* ((_%g113799113809%_ (gx#syntax-e _%xrest113797%_))
                 (_%else113802113817%_ (lambda () '#!void)))
            (let ((_%K113805113874%_
                   (lambda (_%xrest113843%_ _%xhd113844%_)
                     (let* ((_%g113845113852%_ (gx#syntax-e _%yrest113798%_))
                            (_%E113847113856%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g113845113852%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K113848113862%_
                             (lambda (_%yrest113859%_ _%yhd113860%_)
                               (_%f113791%_ _%xhd113844%_ _%yhd113860%_)
                               (_%lp113795%_
                                _%xrest113843%_
                                _%yrest113859%_))))
                       (if (##pair? _%g113845113852%_)
                           (let ((_%hd113849113865%_ (##car _%g113845113852%_))
                                 (_%tl113850113867%_
                                  (##cdr _%g113845113852%_)))
                             (let* ((_%yhd113870%_ _%hd113849113865%_)
                                    (_%yrest113872%_ _%tl113850113867%_))
                               (_%K113848113862%_
                                _%yrest113872%_
                                _%yhd113870%_)))
                           (_%E113847113856%_)))))
                  (_%K113804113837%_
                   (lambda ()
                     (let* ((_%yrest113821113826%_ _%yrest113798%_)
                            (_%E113823113830%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest113821113826%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K113824113834%_
                             (lambda ()
                               (_%f113791%_ _%xrest113797%_ _%yrest113798%_))))
                       (if (not (gx#stx-null? _%yrest113821113826%_))
                           (_%K113824113834%_)
                           (_%E113823113830%_))))))
              (let ((_%try-match113801113840%_
                     (lambda ()
                       (if (not (null? _%g113799113809%_))
                           (_%K113804113837%_)
                           (_%else113802113817%_)))))
                (if (##pair? _%g113799113809%_)
                    (let ((_%tl113807113879%_ (##cdr _%g113799113809%_))
                          (_%hd113806113877%_ (##car _%g113799113809%_)))
                      (let ((_%xhd113882%_ _%hd113806113877%_)
                            (_%xrest113884%_ _%tl113807113879%_))
                        (_%K113805113874%_ _%xrest113884%_ _%xhd113882%_)))
                    (_%try-match113801113840%_))))))))
    (define gx#stx-map
      (lambda _g114476_
        (let ((_g114475_ (##length _g114476_)))
          (cond ((##fx= _g114475_ 2)
                 (apply (lambda (_%f113784%_ _%stx113785%_)
                          (gx#stx-map1 _%f113784%_ _%stx113785%_))
                        _g114476_))
                ((##fx= _g114475_ 3)
                 (apply (lambda (_%f113787%_ _%xstx113788%_ _%ystx113789%_)
                          (gx#stx-map2
                           _%f113787%_
                           _%xstx113788%_
                           _%ystx113789%_))
                        _g114476_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g114476_))))))
    (define gx#stx-map1
      (lambda (_%f113734%_ _%stx113735%_)
        (if (procedure? _%f113734%_)
            '#!void
            (error '"expected procedure" _%f113734%_))
        (let _%recur113737%_ ((_%rest113739%_ _%stx113735%_))
          (let* ((_%g113740113750%_ (gx#syntax-e _%rest113739%_))
                 (_%else113743113758%_
                  (lambda () (_%f113734%_ _%rest113739%_))))
            (let ((_%K113746113772%_
                   (lambda (_%rest113769%_ _%hd113770%_)
                     (cons (_%f113734%_ _%hd113770%_)
                           (_%recur113737%_ _%rest113769%_))))
                  (_%K113745113763%_ (lambda () '())))
              (let ((_%try-match113742113766%_
                     (lambda ()
                       (if (##null? _%g113740113750%_)
                           (_%K113745113763%_)
                           (_%else113743113758%_)))))
                (if (##pair? _%g113740113750%_)
                    (let ((_%tl113748113777%_ (##cdr _%g113740113750%_))
                          (_%hd113747113775%_ (##car _%g113740113750%_)))
                      (let ((_%hd113780%_ _%hd113747113775%_)
                            (_%rest113782%_ _%tl113748113777%_))
                        (_%K113746113772%_ _%rest113782%_ _%hd113780%_)))
                    (_%try-match113742113766%_))))))))
    (define gx#stx-map2
      (lambda (_%f113639%_ _%xstx113640%_ _%ystx113641%_)
        (if (procedure? _%f113639%_)
            '#!void
            (error '"expected procedure" _%f113639%_))
        (let _%recur113643%_ ((_%xrest113645%_ _%xstx113640%_)
                              (_%yrest113646%_ _%ystx113641%_))
          (let* ((_%g113647113657%_ (gx#syntax-e _%xrest113645%_))
                 (_%else113650113665%_ (lambda () '())))
            (let ((_%K113653113722%_
                   (lambda (_%xrest113691%_ _%xhd113692%_)
                     (let* ((_%g113693113700%_ (gx#syntax-e _%yrest113646%_))
                            (_%E113695113704%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g113693113700%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K113696113710%_
                             (lambda (_%yrest113707%_ _%yhd113708%_)
                               (cons (_%f113639%_ _%xhd113692%_ _%yhd113708%_)
                                     (_%recur113643%_
                                      _%xrest113691%_
                                      _%yrest113707%_)))))
                       (if (##pair? _%g113693113700%_)
                           (let ((_%hd113697113713%_ (##car _%g113693113700%_))
                                 (_%tl113698113715%_
                                  (##cdr _%g113693113700%_)))
                             (let* ((_%yhd113718%_ _%hd113697113713%_)
                                    (_%yrest113720%_ _%tl113698113715%_))
                               (_%K113696113710%_
                                _%yrest113720%_
                                _%yhd113718%_)))
                           (_%E113695113704%_)))))
                  (_%K113652113685%_
                   (lambda ()
                     (let* ((_%yrest113669113674%_ _%yrest113646%_)
                            (_%E113671113678%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest113669113674%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K113672113682%_
                             (lambda ()
                               (_%f113639%_ _%xrest113645%_ _%yrest113646%_))))
                       (if (not (gx#stx-null? _%yrest113669113674%_))
                           (_%K113672113682%_)
                           (_%E113671113678%_))))))
              (let ((_%try-match113649113688%_
                     (lambda ()
                       (if (not (null? _%g113647113657%_))
                           (_%K113652113685%_)
                           (_%else113650113665%_)))))
                (if (##pair? _%g113647113657%_)
                    (let ((_%tl113655113727%_ (##cdr _%g113647113657%_))
                          (_%hd113654113725%_ (##car _%g113647113657%_)))
                      (let ((_%xhd113730%_ _%hd113654113725%_)
                            (_%xrest113732%_ _%tl113655113727%_))
                        (_%K113653113722%_ _%xrest113732%_ _%xhd113730%_)))
                    (_%try-match113649113688%_))))))))
    (define gx#stx-andmap
      (lambda (_%f113589%_ _%stx113590%_)
        (if (procedure? _%f113589%_)
            '#!void
            (error '"expected procedure" _%f113589%_))
        (let _%lp113592%_ ((_%rest113594%_ _%stx113590%_))
          (let* ((_%g113595113605%_ (gx#syntax-e _%rest113594%_))
                 (_%else113598113613%_
                  (lambda () (_%f113589%_ _%rest113594%_))))
            (let ((_%K113601113627%_
                   (lambda (_%rest113624%_ _%hd113625%_)
                     (if (_%f113589%_ _%hd113625%_)
                         (_%lp113592%_ _%rest113624%_)
                         '#f)))
                  (_%K113600113618%_ (lambda () '#t)))
              (let ((_%try-match113597113621%_
                     (lambda ()
                       (if (##null? _%g113595113605%_)
                           (_%K113600113618%_)
                           (_%else113598113613%_)))))
                (if (##pair? _%g113595113605%_)
                    (let ((_%tl113603113632%_ (##cdr _%g113595113605%_))
                          (_%hd113602113630%_ (##car _%g113595113605%_)))
                      (let ((_%hd113635%_ _%hd113602113630%_)
                            (_%rest113637%_ _%tl113603113632%_))
                        (_%K113601113627%_ _%rest113637%_ _%hd113635%_)))
                    (_%try-match113597113621%_))))))))
    (define gx#stx-ormap
      (lambda (_%f113536%_ _%stx113537%_)
        (if (procedure? _%f113536%_)
            '#!void
            (error '"expected procedure" _%f113536%_))
        (let _%lp113539%_ ((_%rest113541%_ _%stx113537%_))
          (let* ((_%g113542113552%_ (gx#syntax-e _%rest113541%_))
                 (_%else113545113560%_
                  (lambda () (_%f113536%_ _%rest113541%_))))
            (let ((_%K113548113577%_
                   (lambda (_%rest113571%_ _%hd113572%_)
                     (let ((_%$e113574%_ (_%f113536%_ _%hd113572%_)))
                       (if _%$e113574%_
                           _%$e113574%_
                           (_%lp113539%_ _%rest113571%_)))))
                  (_%K113547113565%_ (lambda () '#f)))
              (let ((_%try-match113544113568%_
                     (lambda ()
                       (if (##null? _%g113542113552%_)
                           (_%K113547113565%_)
                           (_%else113545113560%_)))))
                (if (##pair? _%g113542113552%_)
                    (let ((_%tl113550113582%_ (##cdr _%g113542113552%_))
                          (_%hd113549113580%_ (##car _%g113542113552%_)))
                      (let ((_%hd113585%_ _%hd113549113580%_)
                            (_%rest113587%_ _%tl113550113582%_))
                        (_%K113548113577%_ _%rest113587%_ _%hd113585%_)))
                    (_%try-match113544113568%_))))))))
    (define gx#stx-foldl
      (lambda (_%f113484%_ _%iv113485%_ _%stx113486%_)
        (if (procedure? _%f113484%_)
            '#!void
            (error '"expected procedure" _%f113484%_))
        (let _%lp113488%_ ((_%r113490%_ _%iv113485%_)
                           (_%rest113491%_ _%stx113486%_))
          (let* ((_%g113492113502%_ (gx#syntax-e _%rest113491%_))
                 (_%else113495113510%_
                  (lambda () (_%f113484%_ _%rest113491%_ _%r113490%_))))
            (let ((_%K113498113524%_
                   (lambda (_%rest113521%_ _%hd113522%_)
                     (_%lp113488%_
                      (_%f113484%_ _%hd113522%_ _%r113490%_)
                      _%rest113521%_)))
                  (_%K113497113515%_ (lambda () _%r113490%_)))
              (let ((_%try-match113494113518%_
                     (lambda ()
                       (if (##null? _%g113492113502%_)
                           (_%K113497113515%_)
                           (_%else113495113510%_)))))
                (if (##pair? _%g113492113502%_)
                    (let ((_%tl113500113529%_ (##cdr _%g113492113502%_))
                          (_%hd113499113527%_ (##car _%g113492113502%_)))
                      (let ((_%hd113532%_ _%hd113499113527%_)
                            (_%rest113534%_ _%tl113500113529%_))
                        (_%K113498113524%_ _%rest113534%_ _%hd113532%_)))
                    (_%try-match113494113518%_))))))))
    (define gx#stx-foldr
      (lambda (_%f113433%_ _%iv113434%_ _%stx113435%_)
        (if (procedure? _%f113433%_)
            '#!void
            (error '"expected procedure" _%f113433%_))
        (let _%recur113437%_ ((_%rest113439%_ _%stx113435%_))
          (let* ((_%g113440113450%_ (gx#syntax-e _%rest113439%_))
                 (_%else113443113458%_
                  (lambda () (_%f113433%_ _%rest113439%_ _%iv113434%_))))
            (let ((_%K113446113472%_
                   (lambda (_%rest113469%_ _%hd113470%_)
                     (_%f113433%_
                      _%hd113470%_
                      (_%recur113437%_ _%rest113469%_))))
                  (_%K113445113463%_ (lambda () _%iv113434%_)))
              (let ((_%try-match113442113466%_
                     (lambda ()
                       (if (##null? _%g113440113450%_)
                           (_%K113445113463%_)
                           (_%else113443113458%_)))))
                (if (##pair? _%g113440113450%_)
                    (let ((_%tl113448113477%_ (##cdr _%g113440113450%_))
                          (_%hd113447113475%_ (##car _%g113440113450%_)))
                      (let ((_%hd113480%_ _%hd113447113475%_)
                            (_%rest113482%_ _%tl113448113477%_))
                        (_%K113446113472%_ _%rest113482%_ _%hd113480%_)))
                    (_%try-match113442113466%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx113431%_) (gx#stx-foldl cons '() _%stx113431%_)))
    (define gx#stx-last
      (lambda (_%stx113392%_)
        (let _%lp113394%_ ((_%rest113396%_ _%stx113392%_))
          (let* ((_%g113397113405%_ (gx#syntax-e _%rest113396%_))
                 (_%else113399113413%_ (lambda () _%rest113396%_))
                 (_%K113401113419%_
                  (lambda (_%rest113416%_ _%hd113417%_)
                    (if (gx#stx-null? _%rest113416%_)
                        _%hd113417%_
                        (_%lp113394%_ _%rest113416%_)))))
            (if (##pair? _%g113397113405%_)
                (let ((_%hd113402113422%_ (##car _%g113397113405%_))
                      (_%tl113403113424%_ (##cdr _%g113397113405%_)))
                  (let* ((_%hd113427%_ _%hd113402113422%_)
                         (_%rest113429%_ _%tl113403113424%_))
                    (_%K113401113419%_ _%rest113429%_ _%hd113427%_)))
                (_%else113399113413%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx113363%_)
        (let _%lp113365%_ ((_%hd113367%_ _%stx113363%_))
          (let* ((_%g113368113375%_ (gx#syntax-e _%hd113367%_))
                 (_%E113370113379%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g113368113375%_
                           '([_ . rest]))
                    '#!void))
                 (_%K113371113384%_
                  (lambda (_%rest113382%_)
                    (if (gx#stx-pair? _%rest113382%_)
                        (_%lp113365%_ _%rest113382%_)
                        _%hd113367%_))))
            (if (##pair? _%g113368113375%_)
                (let* ((_%tl113373113387%_ (##cdr _%g113368113375%_))
                       (_%rest113390%_ _%tl113373113387%_))
                  (_%K113371113384%_ _%rest113390%_))
                (_%E113370113379%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx113332%_ _%k113333%_)
        (let _%lp113335%_ ((_%rest113337%_ _%stx113332%_)
                           (_%k113338%_ _%k113333%_))
          (if (fxpositive? _%k113338%_)
              (let* ((_%g113339113346%_ (gx#syntax-e _%rest113337%_))
                     (_%E113341113350%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g113339113346%_
                               '([_ . rest]))
                        '#!void))
                     (_%K113342113355%_
                      (lambda (_%rest113353%_)
                        (_%lp113335%_ _%rest113353%_ (##fx- _%k113338%_ '1)))))
                (if (##pair? _%g113339113346%_)
                    (let* ((_%tl113344113358%_ (##cdr _%g113339113346%_))
                           (_%rest113361%_ _%tl113344113358%_))
                      (_%K113342113355%_ _%rest113361%_))
                    (_%E113341113350%_)))
              _%rest113337%_))))
    (define gx#stx-list-ref
      (lambda (_%stx113329%_ _%k113330%_)
        (gx#stx-car (gx#stx-list-tail _%stx113329%_ _%k113330%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx113241%_ _%key?113242%_)
        (if (procedure? _%key?113242%_)
            '#!void
            (error '"expected procedure" _%key?113242%_))
        (let _%lp113244%_ ((_%rest113246%_ _%stx113241%_))
          (let* ((_%g113247113257%_ (gx#stx-e _%rest113246%_))
                 (_%else113250113265%_ (lambda () '#f)))
            (let ((_%K113253113307%_
                   (lambda (_%rest113276%_ _%hd113277%_)
                     (if (_%key?113242%_ _%hd113277%_)
                         (let* ((_%g113278113286%_ (gx#stx-e _%rest113276%_))
                                (_%else113280113294%_ (lambda () '#f))
                                (_%K113282113299%_
                                 (lambda (_%rest113297%_)
                                   (_%lp113244%_ _%rest113297%_))))
                           (if (##pair? _%g113278113286%_)
                               (let* ((_%tl113284113302%_
                                       (##cdr _%g113278113286%_))
                                      (_%rest113305%_ _%tl113284113302%_))
                                 (_%lp113244%_ _%rest113305%_))
                               (_%else113280113294%_)))
                         '#f)))
                  (_%K113252113270%_ (lambda () '#t)))
              (let ((_%try-match113249113273%_
                     (lambda ()
                       (if (##null? _%g113247113257%_)
                           (_%K113252113270%_)
                           (_%else113250113265%_)))))
                (if (##pair? _%g113247113257%_)
                    (let ((_%tl113255113312%_ (##cdr _%g113247113257%_))
                          (_%hd113254113310%_ (##car _%g113247113257%_)))
                      (let ((_%hd113315%_ _%hd113254113310%_)
                            (_%rest113317%_ _%tl113255113312%_))
                        (_%K113253113307%_ _%rest113317%_ _%hd113315%_)))
                    (_%try-match113249113273%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx113322%_)
        (let ((_%key?113324%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx113322%_ _%key?113324%_))))
    (define gx#stx-plist?
      (lambda _g114478_
        (let ((_g114477_ (##length _g114478_)))
          (cond ((##fx= _g114477_ 1)
                 (apply (lambda (_%stx113322%_)
                          (gx#stx-plist?__0 _%stx113322%_))
                        _g114478_))
                ((##fx= _g114477_ 2)
                 (apply (lambda (_%stx113326%_ _%key?113327%_)
                          (gx#stx-plist?__% _%stx113326%_ _%key?113327%_))
                        _g114478_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g114478_))))))
    (define gx#stx-getq__%
      (lambda (_%key113159%_ _%stx113160%_ _%key=?113161%_)
        (if (procedure? _%key=?113161%_)
            '#!void
            (error '"expected procedure" _%key=?113161%_))
        (let _%lp113163%_ ((_%rest113165%_ _%stx113160%_))
          (let* ((_%g113166113174%_ (gx#syntax-e _%rest113165%_))
                 (_%else113168113182%_ (lambda () '#f))
                 (_%K113170113216%_
                  (lambda (_%rest113185%_ _%hd113186%_)
                    (let* ((_%g113187113194%_ (gx#syntax-e _%rest113185%_))
                           (_%E113189113198%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g113187113194%_
                                     '([val . rest]))
                              '#!void))
                           (_%K113190113204%_
                            (lambda (_%rest113201%_ _%val113202%_)
                              (if (_%key=?113161%_ _%hd113186%_ _%key113159%_)
                                  _%val113202%_
                                  (_%lp113163%_ _%rest113201%_)))))
                      (if (##pair? _%g113187113194%_)
                          (let ((_%hd113191113207%_ (##car _%g113187113194%_))
                                (_%tl113192113209%_ (##cdr _%g113187113194%_)))
                            (let* ((_%val113212%_ _%hd113191113207%_)
                                   (_%rest113214%_ _%tl113192113209%_))
                              (_%K113190113204%_
                               _%rest113214%_
                               _%val113212%_)))
                          (_%E113189113198%_))))))
            (if (##pair? _%g113166113174%_)
                (let ((_%hd113171113219%_ (##car _%g113166113174%_))
                      (_%tl113172113221%_ (##cdr _%g113166113174%_)))
                  (let* ((_%hd113224%_ _%hd113171113219%_)
                         (_%rest113226%_ _%tl113172113221%_))
                    (_%K113170113216%_ _%rest113226%_ _%hd113224%_)))
                (_%else113168113182%_))))))
    (define gx#stx-getq__0
      (lambda (_%key113231%_ _%stx113232%_)
        (let ((_%key=?113234%_ gx#stx-eq?))
          (gx#stx-getq__% _%key113231%_ _%stx113232%_ _%key=?113234%_))))
    (define gx#stx-getq
      (lambda _g114480_
        (let ((_g114479_ (##length _g114480_)))
          (cond ((##fx= _g114479_ 2)
                 (apply (lambda (_%key113231%_ _%stx113232%_)
                          (gx#stx-getq__0 _%key113231%_ _%stx113232%_))
                        _g114480_))
                ((##fx= _g114479_ 3)
                 (apply (lambda (_%key113236%_ _%stx113237%_ _%key=?113238%_)
                          (gx#stx-getq__%
                           _%key113236%_
                           _%stx113237%_
                           _%key=?113238%_))
                        _g114480_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g114480_))))))))

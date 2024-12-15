(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1734278444)
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
      (lambda _%$args119203%_
        (apply make-instance gx#identifier-wrap::t _%$args119203%_)))
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
      (lambda _%$args119200%_
        (apply make-instance gx#syntax-wrap::t _%$args119200%_)))
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
      (lambda _%$args119197%_
        (apply make-instance gx#syntax-quote::t _%$args119197%_)))
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
      (lambda (_%stx119195%_) (symbol? (gx#stx-e _%stx119195%_))))
    (define gx#identifier-quote?
      (lambda (_%stx119193%_)
        (if (##structure-direct-instance-of? _%stx119193%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx119193%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx119188%_)
        (if (##structure-direct-instance-of? _%stx119188%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx119188%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx119188%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx119183%_)
        (if (##structure-direct-instance-of? _%stx119183%_ 'gx#syntax-quote::t)
            _%stx119183%_
            (if (##structure-direct-instance-of?
                 _%stx119183%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx119183%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx119157%_)
        (if (##structure-direct-instance-of? _%stx119157%_ 'gx#syntax-wrap::t)
            (let _%lp119160%_ ((_%e119162%_
                                (##unchecked-structure-ref
                                 _%stx119157%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks119163%_
                                (cons (##unchecked-structure-ref
                                       _%stx119157%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e119162%_)
                  (let ((_%$e119166%_
                         (##type-id (##structure-type _%e119162%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e119166%_)
                        (_%lp119160%_
                         (##unchecked-structure-ref _%e119162%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e119162%_ '3 '#f '#f)
                          _%marks119163%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e119166%_)
                                (eq? 'gx#identifier-wrap::t _%$e119166%_))
                            (##unchecked-structure-ref _%e119162%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e119166%_)
                                (_%lp119160%_
                                 (##unchecked-structure-ref
                                  _%e119162%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks119163%_)
                                _%e119162%_))))
                  (if (null? _%marks119163%_)
                      _%e119162%_
                      (if (pair? _%e119162%_)
                          (cons (gx#stx-wrap
                                 (##car _%e119162%_)
                                 _%marks119163%_)
                                (gx#stx-wrap
                                 (##cdr _%e119162%_)
                                 _%marks119163%_))
                          (if (vector? _%e119162%_)
                              (vector-map
                               (lambda (_%g119174119176%_)
                                 (gx#stx-wrap
                                  _%g119174119176%_
                                  _%marks119163%_))
                               _%e119162%_)
                              (if (box? _%e119162%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e119162%_)
                                        _%marks119163%_))
                                  _%e119162%_))))))
            (if (##structure-instance-of? _%stx119157%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx119157%_ '1 '#f '#f)
                _%stx119157%_))))
    (define gx#syntax->datum
      (lambda (_%stx119150%_)
        (if (##structure-instance-of? _%stx119150%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx119150%_ '1 '#f '#f))
            (if (pair? _%stx119150%_)
                (cons (gx#syntax->datum (##car _%stx119150%_))
                      (gx#syntax->datum (##cdr _%stx119150%_)))
                (if (vector? _%stx119150%_)
                    (vector-map gx#syntax->datum _%stx119150%_)
                    (if (box? _%stx119150%_)
                        (box (gx#syntax->datum (unbox _%stx119150%_)))
                        _%stx119150%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx119084%_ _%datum119085%_ _%src119086%_ _%quote?119087%_)
        (letrec ((_%wrap-datum119089%_
                  (lambda (_%e119122%_ _%marks119123%_)
                    (_%wrap-inner119091%_
                     _%e119122%_
                     (lambda (_%g119124119126%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g119124119126%_
                        _%src119086%_
                        _%marks119123%_)))))
                 (_%wrap-quote119090%_
                  (lambda (_%e119114%_ _%ctx119115%_ _%marks119116%_)
                    (_%wrap-inner119091%_
                     _%e119114%_
                     (lambda (_%g119117119119%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g119117119119%_
                        _%src119086%_
                        _%ctx119115%_
                        _%marks119116%_)))))
                 (_%wrap-inner119091%_
                  (lambda (_%e119102%_ _%wrap-e119103%_)
                    (let _%recur119105%_ ((_%e119107%_ _%e119102%_))
                      (if (symbol? _%e119107%_)
                          (_%wrap-e119103%_ _%e119107%_)
                          (if (pair? _%e119107%_)
                              (cons (_%recur119105%_ (##car _%e119107%_))
                                    (_%recur119105%_ (##cdr _%e119107%_)))
                              (if (vector? _%e119107%_)
                                  (vector-map _%recur119105%_ _%e119107%_)
                                  (if (box? _%e119107%_)
                                      (box (_%recur119105%_
                                            (unbox _%e119107%_)))
                                      _%e119107%_)))))))
                 (_%wrap-outer119092%_
                  (lambda (_%e119100%_)
                    (if (##structure-instance-of? _%e119100%_ 'gerbil#AST::t)
                        _%e119100%_
                        (##structure gx#AST::t _%e119100%_ _%src119086%_)))))
          (if (##structure-instance-of? _%datum119085%_ 'gerbil#AST::t)
              _%datum119085%_
              (if (not _%stx119084%_)
                  (##structure gx#AST::t _%datum119085%_ _%src119086%_)
                  (if (gx#identifier? _%stx119084%_)
                      (let ((_%stx119097%_ (gx#stx-unwrap__0 _%stx119084%_)))
                        (_%wrap-outer119092%_
                         (if (##structure-direct-instance-of?
                              _%stx119097%_
                              'gx#syntax-quote::t)
                             (if _%quote?119087%_
                                 (_%wrap-quote119090%_
                                  _%datum119085%_
                                  (##unchecked-structure-ref
                                   _%stx119097%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx119097%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum119089%_
                                  _%datum119085%_
                                  (##unchecked-structure-ref
                                   _%stx119097%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum119089%_
                              _%datum119085%_
                              (##unchecked-structure-ref
                               _%stx119097%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx119084%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx119132%_ _%datum119133%_)
        (let* ((_%src119135%_ '#f) (_%quote?119137%_ '#t))
          (gx#datum->syntax__%
           _%stx119132%_
           _%datum119133%_
           _%src119135%_
           _%quote?119137%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx119139%_ _%datum119140%_ _%src119141%_)
        (let ((_%quote?119143%_ '#t))
          (gx#datum->syntax__%
           _%stx119139%_
           _%datum119140%_
           _%src119141%_
           _%quote?119143%_))))
    (define gx#datum->syntax
      (lambda _g119284_
        (let ((_g119283_ (##length _g119284_)))
          (cond ((##fx= _g119283_ 2) (apply gx#datum->syntax__0 _g119284_))
                ((##fx= _g119283_ 3) (apply gx#datum->syntax__1 _g119284_))
                ((##fx= _g119283_ 4) (apply gx#datum->syntax__% _g119284_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g119284_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx119050%_ _%marks119051%_)
        (let _%lp119053%_ ((_%e119055%_ _%stx119050%_)
                           (_%marks119056%_ _%marks119051%_)
                           (_%src119057%_ (gx#stx-source _%stx119050%_)))
          (if (##structure-direct-instance-of? _%e119055%_ 'gx#syntax-wrap::t)
              (_%lp119053%_
               (##unchecked-structure-ref _%e119055%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e119055%_ '3 '#f '#f)
                _%marks119056%_)
               (##unchecked-structure-ref _%e119055%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e119055%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks119056%_)
                      _%e119055%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e119055%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e119055%_ '2 '#f '#f)
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e119055%_ '3 '#f '#f)
                        _%marks119056%_)))
                  (if (##structure-direct-instance-of?
                       _%e119055%_
                       'gx#syntax-quote::t)
                      _%e119055%_
                      (if (##structure-instance-of? _%e119055%_ 'gerbil#AST::t)
                          (_%lp119053%_
                           (##unchecked-structure-ref _%e119055%_ '1 '#f '#f)
                           _%marks119056%_
                           (##unchecked-structure-ref _%e119055%_ '2 '#f '#f))
                          (if (symbol? _%e119055%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e119055%_
                               _%src119057%_
                               (reverse _%marks119056%_))
                              (if (null? _%marks119056%_)
                                  _%e119055%_
                                  (if (pair? _%e119055%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e119055%_)
                                             _%marks119056%_)
                                            (gx#stx-wrap
                                             (##cdr _%e119055%_)
                                             _%marks119056%_))
                                      (if (vector? _%e119055%_)
                                          (vector-map
                                           (lambda (_%g119066119068%_)
                                             (gx#stx-wrap
                                              _%g119066119068%_
                                              _%marks119056%_))
                                           _%e119055%_)
                                          (if (box? _%e119055%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e119055%_)
                                                    _%marks119056%_))
                                              _%e119055%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx119076%_)
        (let ((_%marks119078%_ '()))
          (gx#stx-unwrap__% _%stx119076%_ _%marks119078%_))))
    (define gx#stx-unwrap
      (lambda _g119286_
        (let ((_g119285_ (##length _g119286_)))
          (cond ((##fx= _g119285_ 1) (apply gx#stx-unwrap__0 _g119286_))
                ((##fx= _g119285_ 2) (apply gx#stx-unwrap__% _g119286_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g119286_))))))
    (define gx#stx-wrap
      (lambda (_%stx119043%_ _%marks119044%_)
        (__foldl1
         (lambda (_%mark119046%_ _%stx119047%_)
           (gx#stx-apply-mark _%stx119047%_ _%mark119046%_))
         _%stx119043%_
         _%marks119044%_)))
    (define gx#stx-rewrap
      (lambda (_%stx119037%_ _%marks119038%_)
        (__foldr1
         (lambda (_%mark119040%_ _%stx119041%_)
           (gx#stx-apply-mark _%stx119041%_ _%mark119040%_))
         _%stx119037%_
         _%marks119038%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx119031%_ _%mark119032%_)
        (if (##structure-direct-instance-of? _%stx119031%_ 'gx#syntax-quote::t)
            _%stx119031%_
            (if (and (##structure-direct-instance-of?
                      _%stx119031%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark119032%_
                          (##unchecked-structure-ref
                           _%stx119031%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx119031%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx119031%_
                 (gx#stx-source _%stx119031%_)
                 _%mark119032%_)))))
    (define gx#apply-mark
      (lambda (_%mark118995%_ _%marks118996%_)
        (let* ((_%marks118997119005%_ _%marks118996%_)
               (_%else118999119013%_
                (lambda () (cons _%mark118995%_ _%marks118996%_)))
               (_%K119001119019%_
                (lambda (_%rest119016%_ _%hd119017%_)
                  (if (eq? _%mark118995%_ _%hd119017%_)
                      _%rest119016%_
                      (cons _%mark118995%_ _%marks118996%_)))))
          (if (pair? _%marks118997119005%_)
              (let ((_%hd119002119022%_ (##car _%marks118997119005%_))
                    (_%tl119003119024%_ (##cdr _%marks118997119005%_)))
                (let* ((_%hd119027%_ _%hd119002119022%_)
                       (_%rest119029%_ _%tl119003119024%_))
                  (_%K119001119019%_ _%rest119029%_ _%hd119027%_)))
              (_%else118999119013%_)))))
    (define gx#stx-e
      (lambda (_%stx118990%_)
        (if (##structure-direct-instance-of? _%stx118990%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx118990%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx118990%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx118990%_ '1 '#f '#f)
                _%stx118990%_))))
    (define gx#stx-source
      (lambda (_%stx118988%_)
        (if (##structure-instance-of? _%stx118988%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx118988%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx118982%_ _%src118983%_)
        (if (or (##structure-instance-of? _%stx118982%_ 'gerbil#AST::t)
                (not _%src118983%_))
            _%stx118982%_
            (##structure gx#AST::t _%stx118982%_ _%src118983%_))))
    (define gx#stx-datum?
      (lambda (_%stx118980%_) (gx#self-quoting? (gx#stx-e _%stx118980%_))))
    (define gx#self-quoting?
      (lambda (_%x118963%_)
        (let ((_%$e118965%_ (immediate? _%x118963%_)))
          (if _%$e118965%_
              _%$e118965%_
              (let ((_%$e118968%_ (number? _%x118963%_)))
                (if _%$e118968%_
                    _%$e118968%_
                    (let ((_%$e118971%_ (keyword? _%x118963%_)))
                      (if _%$e118971%_
                          _%$e118971%_
                          (let ((_%$e118974%_ (string? _%x118963%_)))
                            (if _%$e118974%_
                                _%$e118974%_
                                (let ((_%$e118977%_ (vector? _%x118963%_)))
                                  (if _%$e118977%_
                                      _%$e118977%_
                                      (u8vector? _%x118963%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e118961%_) (boolean? (gx#stx-e _%e118961%_))))
    (define gx#stx-keyword?
      (lambda (_%e118959%_) (keyword? (gx#stx-e _%e118959%_))))
    (define gx#stx-char? (lambda (_%e118957%_) (char? (gx#stx-e _%e118957%_))))
    (define gx#stx-number?
      (lambda (_%e118955%_) (number? (gx#stx-e _%e118955%_))))
    (define gx#stx-fixnum?
      (lambda (_%e118953%_) (fixnum? (gx#stx-e _%e118953%_))))
    (define gx#stx-string?
      (lambda (_%e118951%_) (string? (gx#stx-e _%e118951%_))))
    (define gx#stx-null? (lambda (_%e118949%_) (null? (gx#stx-e _%e118949%_))))
    (define gx#stx-pair? (lambda (_%e118947%_) (pair? (gx#stx-e _%e118947%_))))
    (define gx#stx-list?
      (lambda (_%e118909%_)
        (let* ((_%g118910118919%_ (gx#stx-e _%e118909%_))
               (_%E118913118923%_
                (lambda ()
                  (error '"No clause matching"
                         _%g118910118919%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K118915118939%_
                 (lambda (_%rest118937%_) (gx#stx-list? _%rest118937%_)))
                (_%K118914118929%_
                 (lambda (_%tail118927%_) (null? _%tail118927%_))))
            (if (pair? _%g118910118919%_)
                (let* ((_%tl118917118942%_ (##cdr _%g118910118919%_))
                       (_%rest118945%_ _%tl118917118942%_))
                  (gx#stx-list? _%rest118945%_))
                (let ((_%tail118932%_ _%g118910118919%_))
                  (null? _%tail118932%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e118902%_)
        (let* ((_%e118904%_ (gx#stx-e _%e118902%_))
               (_%$e118906%_ (pair? _%e118904%_)))
          (if _%$e118906%_ _%$e118906%_ (null? _%e118904%_)))))
    (define gx#stx-vector?
      (lambda (_%e118900%_) (vector? (gx#stx-e _%e118900%_))))
    (define gx#stx-box? (lambda (_%e118898%_) (box? (gx#stx-e _%e118898%_))))
    (define gx#stx-eq?
      (lambda (_%x118895%_ _%y118896%_)
        (eq? (gx#stx-e _%x118895%_) (gx#stx-e _%y118896%_))))
    (define gx#stx-eqv?
      (lambda (_%x118892%_ _%y118893%_)
        (eqv? (gx#stx-e _%x118892%_) (gx#stx-e _%y118893%_))))
    (define gx#stx-equal?
      (lambda (_%x118889%_ _%y118890%_)
        (equal? (gx#stx-e _%x118889%_) (gx#stx-e _%y118890%_))))
    (define gx#stx-false? (lambda (_%x118887%_) (not (gx#stx-e _%x118887%_))))
    (define gx#stx-identifier
      (lambda (_%template118884%_ . _%args118885%_)
        (gx#datum->syntax__1
         _%template118884%_
         (apply make-symbol (gx#syntax->datum _%args118885%_))
         (gx#stx-source _%template118884%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx118882%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx118882%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx118877%_)
        (if (##structure-direct-instance-of?
             _%stx118877%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx118877%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx118877%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx118877%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx118877%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx118873%_)
        (let ((_%stx118875%_ (gx#stx-unwrap__0 _%stx118873%_)))
          (if (gx#identifier-quote? _%stx118875%_)
              (##unchecked-structure-ref _%stx118875%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx118828%_)
        (let* ((_%g118829118839%_ (gx#stx-e _%stx118828%_))
               (_%else118832118847%_ (lambda () '#f)))
          (let ((_%K118835118861%_
                 (lambda (_%rest118858%_ _%hd118859%_)
                   (if (gx#identifier? _%hd118859%_)
                       (gx#identifier-list? _%rest118858%_)
                       '#f)))
                (_%K118834118852%_ (lambda () '#t)))
            (let ((_%try-match118831118855%_
                   (lambda ()
                     (if (null? _%g118829118839%_)
                         (_%K118834118852%_)
                         (_%else118832118847%_)))))
              (if (pair? _%g118829118839%_)
                  (let ((_%tl118837118866%_ (##cdr _%g118829118839%_))
                        (_%hd118836118864%_ (##car _%g118829118839%_)))
                    (let ((_%hd118869%_ _%hd118836118864%_)
                          (_%rest118871%_ _%tl118837118866%_))
                      (_%K118835118861%_ _%rest118871%_ _%hd118869%_)))
                  (_%try-match118831118855%_)))))))
    (define gx#genident__%
      (lambda (_%e118805%_ _%src118806%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e118808%_ (gx#stx-e _%e118805%_)))
                   (if (interned-symbol? _%e118808%_) _%e118808%_ 'g)))
         (let ((_%$e118810%_ (gx#stx-source _%e118805%_)))
           (if _%$e118810%_ _%$e118810%_ _%src118806%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e118817%_ 'g) (_%src118819%_ '#f))
          (gx#genident__% _%e118817%_ _%src118819%_))))
    (define gx#genident__1
      (lambda (_%e118821%_)
        (let ((_%src118823%_ '#f))
          (gx#genident__% _%e118821%_ _%src118823%_))))
    (define gx#genident
      (lambda _g119288_
        (let ((_g119287_ (##length _g119288_)))
          (cond ((##fx= _g119287_ 0) (apply gx#genident__0 _g119288_))
                ((##fx= _g119287_ 1) (apply gx#genident__1 _g119288_))
                ((##fx= _g119287_ 2) (apply gx#genident__% _g119288_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g119288_))))))
    (define gx#gentemps
      (lambda (_%stx-lst118802%_) (gx#stx-map1 gx#genident _%stx-lst118802%_)))
    (define gx#syntax->list
      (lambda (_%stx118800%_) (gx#stx-map1 values _%stx118800%_)))
    (define gx#stx-car
      (lambda (_%stx118797%_)
        (declare (safe))
        (car (gx#syntax-e _%stx118797%_))))
    (define gx#stx-cdr
      (lambda (_%stx118794%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx118794%_))))
    (define gx#stx-length
      (lambda (_%stx118759%_)
        (let _%lp118761%_ ((_%rest118763%_ _%stx118759%_) (_%n118764%_ '0))
          (let* ((_%g118765118773%_ (gx#stx-e _%rest118763%_))
                 (_%else118767118781%_ (lambda () _%n118764%_))
                 (_%K118769118786%_
                  (lambda (_%rest118784%_)
                    (_%lp118761%_ _%rest118784%_ (##fx+ _%n118764%_ '1)))))
            (if (pair? _%g118765118773%_)
                (let* ((_%tl118771118789%_ (##cdr _%g118765118773%_))
                       (_%rest118792%_ _%tl118771118789%_))
                  (_%K118769118786%_ _%rest118792%_))
                (_%else118767118781%_))))))
    (define gx#stx-for-each
      (lambda _g119290_
        (let ((_g119289_ (##length _g119290_)))
          (cond ((##fx= _g119289_ 2) (apply gx#stx-for-each1 _g119290_))
                ((##fx= _g119289_ 3) (apply gx#stx-for-each2 _g119290_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g119290_))))))
    (define gx#stx-for-each1
      (lambda (_%f118702%_ _%stx118703%_)
        (if (procedure? _%f118702%_)
            '#!void
            (error '"expected procedure" _%f118702%_))
        (let _%lp118705%_ ((_%rest118707%_ _%stx118703%_))
          (let* ((_%g118708118718%_ (gx#syntax-e _%rest118707%_))
                 (_%else118711118726%_
                  (lambda () (_%f118702%_ _%rest118707%_))))
            (let ((_%K118714118740%_
                   (lambda (_%rest118737%_ _%hd118738%_)
                     (_%f118702%_ _%hd118738%_)
                     (_%lp118705%_ _%rest118737%_)))
                  (_%K118713118731%_ (lambda () '#!void)))
              (let ((_%try-match118710118734%_
                     (lambda ()
                       (if (null? _%g118708118718%_)
                           (_%K118713118731%_)
                           (_%else118711118726%_)))))
                (if (pair? _%g118708118718%_)
                    (let ((_%tl118716118745%_ (##cdr _%g118708118718%_))
                          (_%hd118715118743%_ (##car _%g118708118718%_)))
                      (let ((_%hd118748%_ _%hd118715118743%_)
                            (_%rest118750%_ _%tl118716118745%_))
                        (_%K118714118740%_ _%rest118750%_ _%hd118748%_)))
                    (_%try-match118710118734%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f118607%_ _%xstx118608%_ _%ystx118609%_)
        (if (procedure? _%f118607%_)
            '#!void
            (error '"expected procedure" _%f118607%_))
        (let _%lp118611%_ ((_%xrest118613%_ _%xstx118608%_)
                           (_%yrest118614%_ _%ystx118609%_))
          (let* ((_%g118615118625%_ (gx#syntax-e _%xrest118613%_))
                 (_%else118618118633%_ (lambda () '#!void)))
            (let ((_%K118621118690%_
                   (lambda (_%xrest118659%_ _%xhd118660%_)
                     (let* ((_%g118661118668%_ (gx#syntax-e _%yrest118614%_))
                            (_%E118663118672%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g118661118668%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K118664118678%_
                             (lambda (_%yrest118675%_ _%yhd118676%_)
                               (_%f118607%_ _%xhd118660%_ _%yhd118676%_)
                               (_%lp118611%_
                                _%xrest118659%_
                                _%yrest118675%_))))
                       (if (pair? _%g118661118668%_)
                           (let ((_%hd118665118681%_ (##car _%g118661118668%_))
                                 (_%tl118666118683%_
                                  (##cdr _%g118661118668%_)))
                             (let* ((_%yhd118686%_ _%hd118665118681%_)
                                    (_%yrest118688%_ _%tl118666118683%_))
                               (_%K118664118678%_
                                _%yrest118688%_
                                _%yhd118686%_)))
                           (_%E118663118672%_)))))
                  (_%K118620118653%_
                   (lambda ()
                     (let* ((_%yrest118637118642%_ _%yrest118614%_)
                            (_%E118639118646%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest118637118642%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K118640118650%_
                             (lambda ()
                               (_%f118607%_ _%xrest118613%_ _%yrest118614%_))))
                       (if (gx#stx-null? _%yrest118637118642%_)
                           (_%E118639118646%_)
                           (_%K118640118650%_))))))
              (let ((_%try-match118617118656%_
                     (lambda ()
                       (if (null? _%g118615118625%_)
                           (_%else118618118633%_)
                           (_%K118620118653%_)))))
                (if (pair? _%g118615118625%_)
                    (let ((_%tl118623118695%_ (##cdr _%g118615118625%_))
                          (_%hd118622118693%_ (##car _%g118615118625%_)))
                      (let ((_%xhd118698%_ _%hd118622118693%_)
                            (_%xrest118700%_ _%tl118623118695%_))
                        (_%K118621118690%_ _%xrest118700%_ _%xhd118698%_)))
                    (_%try-match118617118656%_))))))))
    (define gx#stx-map
      (lambda _g119292_
        (let ((_g119291_ (##length _g119292_)))
          (cond ((##fx= _g119291_ 2) (apply gx#stx-map1 _g119292_))
                ((##fx= _g119291_ 3) (apply gx#stx-map2 _g119292_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g119292_))))))
    (define gx#stx-map1
      (lambda (_%f118550%_ _%stx118551%_)
        (if (procedure? _%f118550%_)
            '#!void
            (error '"expected procedure" _%f118550%_))
        (let _%recur118553%_ ((_%rest118555%_ _%stx118551%_))
          (let* ((_%g118556118566%_ (gx#syntax-e _%rest118555%_))
                 (_%else118559118574%_
                  (lambda () (_%f118550%_ _%rest118555%_))))
            (let ((_%K118562118588%_
                   (lambda (_%rest118585%_ _%hd118586%_)
                     (cons (_%f118550%_ _%hd118586%_)
                           (_%recur118553%_ _%rest118585%_))))
                  (_%K118561118579%_ (lambda () '())))
              (let ((_%try-match118558118582%_
                     (lambda ()
                       (if (null? _%g118556118566%_)
                           (_%K118561118579%_)
                           (_%else118559118574%_)))))
                (if (pair? _%g118556118566%_)
                    (let ((_%tl118564118593%_ (##cdr _%g118556118566%_))
                          (_%hd118563118591%_ (##car _%g118556118566%_)))
                      (let ((_%hd118596%_ _%hd118563118591%_)
                            (_%rest118598%_ _%tl118564118593%_))
                        (_%K118562118588%_ _%rest118598%_ _%hd118596%_)))
                    (_%try-match118558118582%_))))))))
    (define gx#stx-map2
      (lambda (_%f118455%_ _%xstx118456%_ _%ystx118457%_)
        (if (procedure? _%f118455%_)
            '#!void
            (error '"expected procedure" _%f118455%_))
        (let _%recur118459%_ ((_%xrest118461%_ _%xstx118456%_)
                              (_%yrest118462%_ _%ystx118457%_))
          (let* ((_%g118463118473%_ (gx#syntax-e _%xrest118461%_))
                 (_%else118466118481%_ (lambda () '())))
            (let ((_%K118469118538%_
                   (lambda (_%xrest118507%_ _%xhd118508%_)
                     (let* ((_%g118509118516%_ (gx#syntax-e _%yrest118462%_))
                            (_%E118511118520%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g118509118516%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K118512118526%_
                             (lambda (_%yrest118523%_ _%yhd118524%_)
                               (cons (_%f118455%_ _%xhd118508%_ _%yhd118524%_)
                                     (_%recur118459%_
                                      _%xrest118507%_
                                      _%yrest118523%_)))))
                       (if (pair? _%g118509118516%_)
                           (let ((_%hd118513118529%_ (##car _%g118509118516%_))
                                 (_%tl118514118531%_
                                  (##cdr _%g118509118516%_)))
                             (let* ((_%yhd118534%_ _%hd118513118529%_)
                                    (_%yrest118536%_ _%tl118514118531%_))
                               (_%K118512118526%_
                                _%yrest118536%_
                                _%yhd118534%_)))
                           (_%E118511118520%_)))))
                  (_%K118468118501%_
                   (lambda ()
                     (let* ((_%yrest118485118490%_ _%yrest118462%_)
                            (_%E118487118494%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest118485118490%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K118488118498%_
                             (lambda ()
                               (_%f118455%_ _%xrest118461%_ _%yrest118462%_))))
                       (if (gx#stx-null? _%yrest118485118490%_)
                           (_%E118487118494%_)
                           (_%K118488118498%_))))))
              (let ((_%try-match118465118504%_
                     (lambda ()
                       (if (null? _%g118463118473%_)
                           (_%else118466118481%_)
                           (_%K118468118501%_)))))
                (if (pair? _%g118463118473%_)
                    (let ((_%tl118471118543%_ (##cdr _%g118463118473%_))
                          (_%hd118470118541%_ (##car _%g118463118473%_)))
                      (let ((_%xhd118546%_ _%hd118470118541%_)
                            (_%xrest118548%_ _%tl118471118543%_))
                        (_%K118469118538%_ _%xrest118548%_ _%xhd118546%_)))
                    (_%try-match118465118504%_))))))))
    (define gx#stx-andmap
      (lambda (_%f118405%_ _%stx118406%_)
        (if (procedure? _%f118405%_)
            '#!void
            (error '"expected procedure" _%f118405%_))
        (let _%lp118408%_ ((_%rest118410%_ _%stx118406%_))
          (let* ((_%g118411118421%_ (gx#syntax-e _%rest118410%_))
                 (_%else118414118429%_
                  (lambda () (_%f118405%_ _%rest118410%_))))
            (let ((_%K118417118443%_
                   (lambda (_%rest118440%_ _%hd118441%_)
                     (if (_%f118405%_ _%hd118441%_)
                         (_%lp118408%_ _%rest118440%_)
                         '#f)))
                  (_%K118416118434%_ (lambda () '#t)))
              (let ((_%try-match118413118437%_
                     (lambda ()
                       (if (null? _%g118411118421%_)
                           (_%K118416118434%_)
                           (_%else118414118429%_)))))
                (if (pair? _%g118411118421%_)
                    (let ((_%tl118419118448%_ (##cdr _%g118411118421%_))
                          (_%hd118418118446%_ (##car _%g118411118421%_)))
                      (let ((_%hd118451%_ _%hd118418118446%_)
                            (_%rest118453%_ _%tl118419118448%_))
                        (_%K118417118443%_ _%rest118453%_ _%hd118451%_)))
                    (_%try-match118413118437%_))))))))
    (define gx#stx-ormap
      (lambda (_%f118352%_ _%stx118353%_)
        (if (procedure? _%f118352%_)
            '#!void
            (error '"expected procedure" _%f118352%_))
        (let _%lp118355%_ ((_%rest118357%_ _%stx118353%_))
          (let* ((_%g118358118368%_ (gx#syntax-e _%rest118357%_))
                 (_%else118361118376%_
                  (lambda () (_%f118352%_ _%rest118357%_))))
            (let ((_%K118364118393%_
                   (lambda (_%rest118387%_ _%hd118388%_)
                     (let ((_%$e118390%_ (_%f118352%_ _%hd118388%_)))
                       (if _%$e118390%_
                           _%$e118390%_
                           (_%lp118355%_ _%rest118387%_)))))
                  (_%K118363118381%_ (lambda () '#f)))
              (let ((_%try-match118360118384%_
                     (lambda ()
                       (if (null? _%g118358118368%_)
                           (_%K118363118381%_)
                           (_%else118361118376%_)))))
                (if (pair? _%g118358118368%_)
                    (let ((_%tl118366118398%_ (##cdr _%g118358118368%_))
                          (_%hd118365118396%_ (##car _%g118358118368%_)))
                      (let ((_%hd118401%_ _%hd118365118396%_)
                            (_%rest118403%_ _%tl118366118398%_))
                        (_%K118364118393%_ _%rest118403%_ _%hd118401%_)))
                    (_%try-match118360118384%_))))))))
    (define gx#stx-foldl
      (lambda (_%f118300%_ _%iv118301%_ _%stx118302%_)
        (if (procedure? _%f118300%_)
            '#!void
            (error '"expected procedure" _%f118300%_))
        (let _%lp118304%_ ((_%r118306%_ _%iv118301%_)
                           (_%rest118307%_ _%stx118302%_))
          (let* ((_%g118308118318%_ (gx#syntax-e _%rest118307%_))
                 (_%else118311118326%_
                  (lambda () (_%f118300%_ _%rest118307%_ _%r118306%_))))
            (let ((_%K118314118340%_
                   (lambda (_%rest118337%_ _%hd118338%_)
                     (_%lp118304%_
                      (_%f118300%_ _%hd118338%_ _%r118306%_)
                      _%rest118337%_)))
                  (_%K118313118331%_ (lambda () _%r118306%_)))
              (let ((_%try-match118310118334%_
                     (lambda ()
                       (if (null? _%g118308118318%_)
                           (_%K118313118331%_)
                           (_%else118311118326%_)))))
                (if (pair? _%g118308118318%_)
                    (let ((_%tl118316118345%_ (##cdr _%g118308118318%_))
                          (_%hd118315118343%_ (##car _%g118308118318%_)))
                      (let ((_%hd118348%_ _%hd118315118343%_)
                            (_%rest118350%_ _%tl118316118345%_))
                        (_%K118314118340%_ _%rest118350%_ _%hd118348%_)))
                    (_%try-match118310118334%_))))))))
    (define gx#stx-foldr
      (lambda (_%f118249%_ _%iv118250%_ _%stx118251%_)
        (if (procedure? _%f118249%_)
            '#!void
            (error '"expected procedure" _%f118249%_))
        (let _%recur118253%_ ((_%rest118255%_ _%stx118251%_))
          (let* ((_%g118256118266%_ (gx#syntax-e _%rest118255%_))
                 (_%else118259118274%_
                  (lambda () (_%f118249%_ _%rest118255%_ _%iv118250%_))))
            (let ((_%K118262118288%_
                   (lambda (_%rest118285%_ _%hd118286%_)
                     (_%f118249%_
                      _%hd118286%_
                      (_%recur118253%_ _%rest118285%_))))
                  (_%K118261118279%_ (lambda () _%iv118250%_)))
              (let ((_%try-match118258118282%_
                     (lambda ()
                       (if (null? _%g118256118266%_)
                           (_%K118261118279%_)
                           (_%else118259118274%_)))))
                (if (pair? _%g118256118266%_)
                    (let ((_%tl118264118293%_ (##cdr _%g118256118266%_))
                          (_%hd118263118291%_ (##car _%g118256118266%_)))
                      (let ((_%hd118296%_ _%hd118263118291%_)
                            (_%rest118298%_ _%tl118264118293%_))
                        (_%K118262118288%_ _%rest118298%_ _%hd118296%_)))
                    (_%try-match118258118282%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx118247%_) (gx#stx-foldl cons '() _%stx118247%_)))
    (define gx#stx-last
      (lambda (_%stx118208%_)
        (let _%lp118210%_ ((_%rest118212%_ _%stx118208%_))
          (let* ((_%g118213118221%_ (gx#syntax-e _%rest118212%_))
                 (_%else118215118229%_ (lambda () _%rest118212%_))
                 (_%K118217118235%_
                  (lambda (_%rest118232%_ _%hd118233%_)
                    (if (gx#stx-null? _%rest118232%_)
                        _%hd118233%_
                        (_%lp118210%_ _%rest118232%_)))))
            (if (pair? _%g118213118221%_)
                (let ((_%hd118218118238%_ (##car _%g118213118221%_))
                      (_%tl118219118240%_ (##cdr _%g118213118221%_)))
                  (let* ((_%hd118243%_ _%hd118218118238%_)
                         (_%rest118245%_ _%tl118219118240%_))
                    (_%K118217118235%_ _%rest118245%_ _%hd118243%_)))
                (_%else118215118229%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx118179%_)
        (let _%lp118181%_ ((_%hd118183%_ _%stx118179%_))
          (let* ((_%g118184118191%_ (gx#syntax-e _%hd118183%_))
                 (_%E118186118195%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g118184118191%_
                           '([_ . rest]))
                    '#!void))
                 (_%K118187118200%_
                  (lambda (_%rest118198%_)
                    (if (gx#stx-pair? _%rest118198%_)
                        (_%lp118181%_ _%rest118198%_)
                        _%hd118183%_))))
            (if (pair? _%g118184118191%_)
                (let* ((_%tl118189118203%_ (##cdr _%g118184118191%_))
                       (_%rest118206%_ _%tl118189118203%_))
                  (_%K118187118200%_ _%rest118206%_))
                (_%E118186118195%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx118148%_ _%k118149%_)
        (let _%lp118151%_ ((_%rest118153%_ _%stx118148%_)
                           (_%k118154%_ _%k118149%_))
          (if (fxpositive? _%k118154%_)
              (let* ((_%g118155118162%_ (gx#syntax-e _%rest118153%_))
                     (_%E118157118166%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g118155118162%_
                               '([_ . rest]))
                        '#!void))
                     (_%K118158118171%_
                      (lambda (_%rest118169%_)
                        (_%lp118151%_ _%rest118169%_ (##fx- _%k118154%_ '1)))))
                (if (pair? _%g118155118162%_)
                    (let* ((_%tl118160118174%_ (##cdr _%g118155118162%_))
                           (_%rest118177%_ _%tl118160118174%_))
                      (_%K118158118171%_ _%rest118177%_))
                    (_%E118157118166%_)))
              _%rest118153%_))))
    (define gx#stx-list-ref
      (lambda (_%stx118145%_ _%k118146%_)
        (gx#stx-car (gx#stx-list-tail _%stx118145%_ _%k118146%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx118057%_ _%key?118058%_)
        (if (procedure? _%key?118058%_)
            '#!void
            (error '"expected procedure" _%key?118058%_))
        (let _%lp118060%_ ((_%rest118062%_ _%stx118057%_))
          (let* ((_%g118063118073%_ (gx#stx-e _%rest118062%_))
                 (_%else118066118081%_ (lambda () '#f)))
            (let ((_%K118069118123%_
                   (lambda (_%rest118092%_ _%hd118093%_)
                     (if (_%key?118058%_ _%hd118093%_)
                         (let* ((_%g118094118102%_ (gx#stx-e _%rest118092%_))
                                (_%else118096118110%_ (lambda () '#f))
                                (_%K118098118115%_
                                 (lambda (_%rest118113%_)
                                   (_%lp118060%_ _%rest118113%_))))
                           (if (pair? _%g118094118102%_)
                               (let* ((_%tl118100118118%_
                                       (##cdr _%g118094118102%_))
                                      (_%rest118121%_ _%tl118100118118%_))
                                 (_%lp118060%_ _%rest118121%_))
                               (_%else118096118110%_)))
                         '#f)))
                  (_%K118068118086%_ (lambda () '#t)))
              (let ((_%try-match118065118089%_
                     (lambda ()
                       (if (null? _%g118063118073%_)
                           (_%K118068118086%_)
                           (_%else118066118081%_)))))
                (if (pair? _%g118063118073%_)
                    (let ((_%tl118071118128%_ (##cdr _%g118063118073%_))
                          (_%hd118070118126%_ (##car _%g118063118073%_)))
                      (let ((_%hd118131%_ _%hd118070118126%_)
                            (_%rest118133%_ _%tl118071118128%_))
                        (_%K118069118123%_ _%rest118133%_ _%hd118131%_)))
                    (_%try-match118065118089%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx118138%_)
        (let ((_%key?118140%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx118138%_ _%key?118140%_))))
    (define gx#stx-plist?
      (lambda _g119294_
        (let ((_g119293_ (##length _g119294_)))
          (cond ((##fx= _g119293_ 1) (apply gx#stx-plist?__0 _g119294_))
                ((##fx= _g119293_ 2) (apply gx#stx-plist?__% _g119294_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g119294_))))))
    (define gx#stx-getq__%
      (lambda (_%key117975%_ _%stx117976%_ _%key=?117977%_)
        (if (procedure? _%key=?117977%_)
            '#!void
            (error '"expected procedure" _%key=?117977%_))
        (let _%lp117979%_ ((_%rest117981%_ _%stx117976%_))
          (let* ((_%g117982117990%_ (gx#syntax-e _%rest117981%_))
                 (_%else117984117998%_ (lambda () '#f))
                 (_%K117986118032%_
                  (lambda (_%rest118001%_ _%hd118002%_)
                    (let* ((_%g118003118010%_ (gx#syntax-e _%rest118001%_))
                           (_%E118005118014%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g118003118010%_
                                     '([val . rest]))
                              '#!void))
                           (_%K118006118020%_
                            (lambda (_%rest118017%_ _%val118018%_)
                              (if (_%key=?117977%_ _%hd118002%_ _%key117975%_)
                                  _%val118018%_
                                  (_%lp117979%_ _%rest118017%_)))))
                      (if (pair? _%g118003118010%_)
                          (let ((_%hd118007118023%_ (##car _%g118003118010%_))
                                (_%tl118008118025%_ (##cdr _%g118003118010%_)))
                            (let* ((_%val118028%_ _%hd118007118023%_)
                                   (_%rest118030%_ _%tl118008118025%_))
                              (_%K118006118020%_
                               _%rest118030%_
                               _%val118028%_)))
                          (_%E118005118014%_))))))
            (if (pair? _%g117982117990%_)
                (let ((_%hd117987118035%_ (##car _%g117982117990%_))
                      (_%tl117988118037%_ (##cdr _%g117982117990%_)))
                  (let* ((_%hd118040%_ _%hd117987118035%_)
                         (_%rest118042%_ _%tl117988118037%_))
                    (_%K117986118032%_ _%rest118042%_ _%hd118040%_)))
                (_%else117984117998%_))))))
    (define gx#stx-getq__0
      (lambda (_%key118047%_ _%stx118048%_)
        (let ((_%key=?118050%_ gx#stx-eq?))
          (gx#stx-getq__% _%key118047%_ _%stx118048%_ _%key=?118050%_))))
    (define gx#stx-getq
      (lambda _g119296_
        (let ((_g119295_ (##length _g119296_)))
          (cond ((##fx= _g119295_ 2) (apply gx#stx-getq__0 _g119296_))
                ((##fx= _g119295_ 3) (apply gx#stx-getq__% _g119296_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g119296_))))))))

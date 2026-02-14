(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1771037609)
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
      (lambda _%$args182265%_
        (apply make-instance gx#identifier-wrap::t _%$args182265%_)))
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
      (lambda _%$args182262%_
        (apply make-instance gx#syntax-wrap::t _%$args182262%_)))
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
      (lambda _%$args182259%_
        (apply make-instance gx#syntax-quote::t _%$args182259%_)))
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
      (lambda (_%stx182257%_) (symbol? (gx#stx-e _%stx182257%_))))
    (define gx#identifier-quote?
      (lambda (_%stx182255%_)
        (if (##structure-direct-instance-of? _%stx182255%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx182255%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx182250%_)
        (if (##structure-direct-instance-of? _%stx182250%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx182250%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx182250%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx182245%_)
        (if (##structure-direct-instance-of? _%stx182245%_ 'gx#syntax-quote::t)
            _%stx182245%_
            (if (##structure-direct-instance-of?
                 _%stx182245%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx182245%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx182219%_)
        (if (##structure-direct-instance-of? _%stx182219%_ 'gx#syntax-wrap::t)
            (let _%lp182222%_ ((_%e182224%_
                                (##unchecked-structure-ref
                                 _%stx182219%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks182225%_
                                (cons (##unchecked-structure-ref
                                       _%stx182219%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e182224%_)
                  (let ((_%$e182228%_
                         (##type-id (##structure-type _%e182224%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e182228%_)
                        (_%lp182222%_
                         (##unchecked-structure-ref _%e182224%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e182224%_ '3 '#f '#f)
                          _%marks182225%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e182228%_)
                                (eq? 'gx#identifier-wrap::t _%$e182228%_))
                            (##unchecked-structure-ref _%e182224%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e182228%_)
                                (_%lp182222%_
                                 (##unchecked-structure-ref
                                  _%e182224%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks182225%_)
                                _%e182224%_))))
                  (if (null? _%marks182225%_)
                      _%e182224%_
                      (if (pair? _%e182224%_)
                          (cons (gx#stx-wrap
                                 (##car _%e182224%_)
                                 _%marks182225%_)
                                (gx#stx-wrap
                                 (##cdr _%e182224%_)
                                 _%marks182225%_))
                          (if (vector? _%e182224%_)
                              (vector-map
                               (lambda (_%g182236182238%_)
                                 (gx#stx-wrap
                                  _%g182236182238%_
                                  _%marks182225%_))
                               _%e182224%_)
                              (if (box? _%e182224%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e182224%_)
                                        _%marks182225%_))
                                  _%e182224%_))))))
            (if (##structure-instance-of? _%stx182219%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx182219%_ '1 '#f '#f)
                _%stx182219%_))))
    (define gx#syntax->datum
      (lambda (_%stx182212%_)
        (if (##structure-instance-of? _%stx182212%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx182212%_ '1 '#f '#f))
            (if (pair? _%stx182212%_)
                (cons (gx#syntax->datum (##car _%stx182212%_))
                      (gx#syntax->datum (##cdr _%stx182212%_)))
                (if (vector? _%stx182212%_)
                    (vector-map gx#syntax->datum _%stx182212%_)
                    (if (box? _%stx182212%_)
                        (box (gx#syntax->datum (unbox _%stx182212%_)))
                        _%stx182212%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx182146%_ _%datum182147%_ _%src182148%_ _%quote?182149%_)
        (letrec ((_%wrap-datum182151%_
                  (lambda (_%e182184%_ _%marks182185%_)
                    (_%wrap-inner182153%_
                     _%e182184%_
                     (lambda (_%g182186182188%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g182186182188%_
                        _%src182148%_
                        _%marks182185%_)))))
                 (_%wrap-quote182152%_
                  (lambda (_%e182176%_ _%ctx182177%_ _%marks182178%_)
                    (_%wrap-inner182153%_
                     _%e182176%_
                     (lambda (_%g182179182181%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g182179182181%_
                        _%src182148%_
                        _%ctx182177%_
                        _%marks182178%_)))))
                 (_%wrap-inner182153%_
                  (lambda (_%e182164%_ _%wrap-e182165%_)
                    (let _%recur182167%_ ((_%e182169%_ _%e182164%_))
                      (if (symbol? _%e182169%_)
                          (_%wrap-e182165%_ _%e182169%_)
                          (if (pair? _%e182169%_)
                              (cons (_%recur182167%_ (##car _%e182169%_))
                                    (_%recur182167%_ (##cdr _%e182169%_)))
                              (if (vector? _%e182169%_)
                                  (vector-map _%recur182167%_ _%e182169%_)
                                  (if (box? _%e182169%_)
                                      (box (_%recur182167%_
                                            (unbox _%e182169%_)))
                                      _%e182169%_)))))))
                 (_%wrap-outer182154%_
                  (lambda (_%e182162%_)
                    (if (##structure-instance-of? _%e182162%_ 'gerbil#AST::t)
                        _%e182162%_
                        (##structure gx#AST::t _%e182162%_ _%src182148%_)))))
          (if (##structure-instance-of? _%datum182147%_ 'gerbil#AST::t)
              _%datum182147%_
              (if (not _%stx182146%_)
                  (##structure gx#AST::t _%datum182147%_ _%src182148%_)
                  (if (gx#identifier? _%stx182146%_)
                      (let ((_%stx182159%_ (gx#stx-unwrap__0 _%stx182146%_)))
                        (_%wrap-outer182154%_
                         (if (##structure-direct-instance-of?
                              _%stx182159%_
                              'gx#syntax-quote::t)
                             (if _%quote?182149%_
                                 (_%wrap-quote182152%_
                                  _%datum182147%_
                                  (##unchecked-structure-ref
                                   _%stx182159%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx182159%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum182151%_
                                  _%datum182147%_
                                  (##unchecked-structure-ref
                                   _%stx182159%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum182151%_
                              _%datum182147%_
                              (##unchecked-structure-ref
                               _%stx182159%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx182146%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx182194%_ _%datum182195%_)
        (let* ((_%src182197%_ '#f) (_%quote?182199%_ '#t))
          (gx#datum->syntax__%
           _%stx182194%_
           _%datum182195%_
           _%src182197%_
           _%quote?182199%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx182201%_ _%datum182202%_ _%src182203%_)
        (let ((_%quote?182205%_ '#t))
          (gx#datum->syntax__%
           _%stx182201%_
           _%datum182202%_
           _%src182203%_
           _%quote?182205%_))))
    (define gx#datum->syntax
      (lambda _g182345_
        (let ((_g182346_ (##length _g182345_)))
          (cond ((##fx= _g182346_ 2) (apply gx#datum->syntax__0 _g182345_))
                ((##fx= _g182346_ 3) (apply gx#datum->syntax__1 _g182345_))
                ((##fx= _g182346_ 4) (apply gx#datum->syntax__% _g182345_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g182345_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx182112%_ _%marks182113%_)
        (let _%lp182115%_ ((_%e182117%_ _%stx182112%_)
                           (_%marks182118%_ _%marks182113%_)
                           (_%src182119%_ (gx#stx-source _%stx182112%_)))
          (if (##structure-direct-instance-of? _%e182117%_ 'gx#syntax-wrap::t)
              (_%lp182115%_
               (##unchecked-structure-ref _%e182117%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e182117%_ '3 '#f '#f)
                _%marks182118%_)
               (##unchecked-structure-ref _%e182117%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e182117%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks182118%_)
                      _%e182117%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e182117%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e182117%_ '2 '#f '#f)
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e182117%_ '3 '#f '#f)
                        _%marks182118%_)))
                  (if (##structure-direct-instance-of?
                       _%e182117%_
                       'gx#syntax-quote::t)
                      _%e182117%_
                      (if (##structure-instance-of? _%e182117%_ 'gerbil#AST::t)
                          (_%lp182115%_
                           (##unchecked-structure-ref _%e182117%_ '1 '#f '#f)
                           _%marks182118%_
                           (##unchecked-structure-ref _%e182117%_ '2 '#f '#f))
                          (if (symbol? _%e182117%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e182117%_
                               _%src182119%_
                               (reverse _%marks182118%_))
                              (if (null? _%marks182118%_)
                                  _%e182117%_
                                  (if (pair? _%e182117%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e182117%_)
                                             _%marks182118%_)
                                            (gx#stx-wrap
                                             (##cdr _%e182117%_)
                                             _%marks182118%_))
                                      (if (vector? _%e182117%_)
                                          (vector-map
                                           (lambda (_%g182128182130%_)
                                             (gx#stx-wrap
                                              _%g182128182130%_
                                              _%marks182118%_))
                                           _%e182117%_)
                                          (if (box? _%e182117%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e182117%_)
                                                    _%marks182118%_))
                                              _%e182117%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx182138%_)
        (let ((_%marks182140%_ '()))
          (gx#stx-unwrap__% _%stx182138%_ _%marks182140%_))))
    (define gx#stx-unwrap
      (lambda _g182347_
        (let ((_g182348_ (##length _g182347_)))
          (cond ((##fx= _g182348_ 1) (apply gx#stx-unwrap__0 _g182347_))
                ((##fx= _g182348_ 2) (apply gx#stx-unwrap__% _g182347_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g182347_))))))
    (define gx#stx-wrap
      (lambda (_%stx182105%_ _%marks182106%_)
        (foldl__0
         (lambda (_%mark182108%_ _%stx182109%_)
           (gx#stx-apply-mark _%stx182109%_ _%mark182108%_))
         _%stx182105%_
         _%marks182106%_)))
    (define gx#stx-rewrap
      (lambda (_%stx182099%_ _%marks182100%_)
        (foldr__0
         (lambda (_%mark182102%_ _%stx182103%_)
           (gx#stx-apply-mark _%stx182103%_ _%mark182102%_))
         _%stx182099%_
         _%marks182100%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx182093%_ _%mark182094%_)
        (if (##structure-direct-instance-of? _%stx182093%_ 'gx#syntax-quote::t)
            _%stx182093%_
            (if (and (##structure-direct-instance-of?
                      _%stx182093%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark182094%_
                          (##unchecked-structure-ref
                           _%stx182093%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx182093%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx182093%_
                 (gx#stx-source _%stx182093%_)
                 _%mark182094%_)))))
    (define gx#apply-mark
      (lambda (_%mark182057%_ _%marks182058%_)
        (let* ((_%marks182059182067%_ _%marks182058%_)
               (_%else182061182075%_
                (lambda () (cons _%mark182057%_ _%marks182058%_)))
               (_%K182063182081%_
                (lambda (_%rest182078%_ _%hd182079%_)
                  (if (eq? _%mark182057%_ _%hd182079%_)
                      _%rest182078%_
                      (cons _%mark182057%_ _%marks182058%_)))))
          (if (pair? _%marks182059182067%_)
              (let ((_%hd182064182084%_ (##car _%marks182059182067%_))
                    (_%tl182065182086%_ (##cdr _%marks182059182067%_)))
                (let* ((_%hd182089%_ _%hd182064182084%_)
                       (_%rest182091%_ _%tl182065182086%_))
                  (_%K182063182081%_ _%rest182091%_ _%hd182089%_)))
              (_%else182061182075%_)))))
    (define gx#stx-e
      (lambda (_%stx182052%_)
        (if (##structure-direct-instance-of? _%stx182052%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx182052%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx182052%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx182052%_ '1 '#f '#f)
                _%stx182052%_))))
    (define gx#stx-source
      (lambda (_%stx182050%_)
        (if (##structure-instance-of? _%stx182050%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx182050%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx182044%_ _%src182045%_)
        (if (or (##structure-instance-of? _%stx182044%_ 'gerbil#AST::t)
                (not _%src182045%_))
            _%stx182044%_
            (##structure gx#AST::t _%stx182044%_ _%src182045%_))))
    (define gx#stx-datum?
      (lambda (_%stx182042%_) (gx#self-quoting? (gx#stx-e _%stx182042%_))))
    (define gx#self-quoting?
      (lambda (_%x182025%_)
        (let ((_%$e182027%_ (immediate? _%x182025%_)))
          (if _%$e182027%_
              _%$e182027%_
              (let ((_%$e182030%_ (number? _%x182025%_)))
                (if _%$e182030%_
                    _%$e182030%_
                    (let ((_%$e182033%_ (keyword? _%x182025%_)))
                      (if _%$e182033%_
                          _%$e182033%_
                          (let ((_%$e182036%_ (string? _%x182025%_)))
                            (if _%$e182036%_
                                _%$e182036%_
                                (let ((_%$e182039%_ (vector? _%x182025%_)))
                                  (if _%$e182039%_
                                      _%$e182039%_
                                      (u8vector? _%x182025%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e182023%_) (boolean? (gx#stx-e _%e182023%_))))
    (define gx#stx-keyword?
      (lambda (_%e182021%_) (keyword? (gx#stx-e _%e182021%_))))
    (define gx#stx-char? (lambda (_%e182019%_) (char? (gx#stx-e _%e182019%_))))
    (define gx#stx-number?
      (lambda (_%e182017%_) (number? (gx#stx-e _%e182017%_))))
    (define gx#stx-fixnum?
      (lambda (_%e182015%_) (fixnum? (gx#stx-e _%e182015%_))))
    (define gx#stx-string?
      (lambda (_%e182013%_) (string? (gx#stx-e _%e182013%_))))
    (define gx#stx-null? (lambda (_%e182011%_) (null? (gx#stx-e _%e182011%_))))
    (define gx#stx-pair? (lambda (_%e182009%_) (pair? (gx#stx-e _%e182009%_))))
    (define gx#stx-list?
      (lambda (_%e181971%_)
        (let* ((_%g181972181981%_ (gx#stx-e _%e181971%_))
               (_%E181975181985%_
                (lambda ()
                  (error '"No clause matching"
                         _%g181972181981%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K181977182001%_
                 (lambda (_%rest181999%_) (gx#stx-list? _%rest181999%_)))
                (_%K181976181991%_
                 (lambda (_%tail181989%_) (null? _%tail181989%_))))
            (if (pair? _%g181972181981%_)
                (let* ((_%tl181979182004%_ (##cdr _%g181972181981%_))
                       (_%rest182007%_ _%tl181979182004%_))
                  (gx#stx-list? _%rest182007%_))
                (let ((_%tail181994%_ _%g181972181981%_))
                  (null? _%tail181994%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e181964%_)
        (let* ((_%e181966%_ (gx#stx-e _%e181964%_))
               (_%$e181968%_ (pair? _%e181966%_)))
          (if _%$e181968%_ _%$e181968%_ (null? _%e181966%_)))))
    (define gx#stx-vector?
      (lambda (_%e181962%_) (vector? (gx#stx-e _%e181962%_))))
    (define gx#stx-box? (lambda (_%e181960%_) (box? (gx#stx-e _%e181960%_))))
    (define gx#stx-eq?
      (lambda (_%x181957%_ _%y181958%_)
        (eq? (gx#stx-e _%x181957%_) (gx#stx-e _%y181958%_))))
    (define gx#stx-eqv?
      (lambda (_%x181954%_ _%y181955%_)
        (eqv? (gx#stx-e _%x181954%_) (gx#stx-e _%y181955%_))))
    (define gx#stx-equal?
      (lambda (_%x181951%_ _%y181952%_)
        (equal? (gx#stx-e _%x181951%_) (gx#stx-e _%y181952%_))))
    (define gx#stx-false? (lambda (_%x181949%_) (not (gx#stx-e _%x181949%_))))
    (define gx#stx-identifier
      (lambda (_%template181946%_ . _%args181947%_)
        (gx#datum->syntax__1
         _%template181946%_
         (apply make-symbol (gx#syntax->datum _%args181947%_))
         (gx#stx-source _%template181946%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx181944%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx181944%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx181939%_)
        (if (##structure-direct-instance-of?
             _%stx181939%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx181939%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx181939%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx181939%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx181939%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx181935%_)
        (let ((_%stx181937%_ (gx#stx-unwrap__0 _%stx181935%_)))
          (if (gx#identifier-quote? _%stx181937%_)
              (##unchecked-structure-ref _%stx181937%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx181890%_)
        (let* ((_%g181891181901%_ (gx#stx-e _%stx181890%_))
               (_%else181894181909%_ (lambda () '#f)))
          (let ((_%K181897181923%_
                 (lambda (_%rest181920%_ _%hd181921%_)
                   (if (gx#identifier? _%hd181921%_)
                       (gx#identifier-list? _%rest181920%_)
                       '#f)))
                (_%K181896181914%_ (lambda () '#t)))
            (let ((_%try-match181893181917%_
                   (lambda ()
                     (if (null? _%g181891181901%_)
                         (_%K181896181914%_)
                         (_%else181894181909%_)))))
              (if (pair? _%g181891181901%_)
                  (let ((_%tl181899181928%_ (##cdr _%g181891181901%_))
                        (_%hd181898181926%_ (##car _%g181891181901%_)))
                    (let ((_%hd181931%_ _%hd181898181926%_)
                          (_%rest181933%_ _%tl181899181928%_))
                      (_%K181897181923%_ _%rest181933%_ _%hd181931%_)))
                  (_%try-match181893181917%_)))))))
    (define gx#genident__%
      (lambda (_%e181870%_ _%src181871%_)
        (gx#datum->syntax__1
         (if (gx#identifier? _%src181871%_) _%src181871%_ '#f)
         (##string->symbol
          (##symbol->string
           (##gensym
            (let ((_%e181873%_ (gx#stx-e _%e181870%_)))
              (if (symbol? _%e181873%_) _%e181873%_ 'g)))))
         _%src181871%_)))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e181879%_ 'g) (_%src181881%_ '#f))
          (gx#genident__% _%e181879%_ _%src181881%_))))
    (define gx#genident__1
      (lambda (_%e181883%_)
        (let ((_%src181885%_ '#f))
          (gx#genident__% _%e181883%_ _%src181885%_))))
    (define gx#genident
      (lambda _g182349_
        (let ((_g182350_ (##length _g182349_)))
          (cond ((##fx= _g182350_ 0) (apply gx#genident__0 _g182349_))
                ((##fx= _g182350_ 1) (apply gx#genident__1 _g182349_))
                ((##fx= _g182350_ 2) (apply gx#genident__% _g182349_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g182349_))))))
    (define gx#gentemps
      (lambda (_%stx-lst181865%_)
        (gx#stx-map1
         (lambda (_%x181867%_) (gx#genident__% _%x181867%_ _%x181867%_))
         _%stx-lst181865%_)))
    (define gx#syntax->list
      (lambda (_%stx181863%_) (gx#stx-map1 values _%stx181863%_)))
    (define gx#stx-car
      (lambda (_%stx181860%_)
        (declare (safe))
        (car (gx#syntax-e _%stx181860%_))))
    (define gx#stx-cdr
      (lambda (_%stx181857%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx181857%_))))
    (define gx#stx-length
      (lambda (_%stx181822%_)
        (let _%lp181824%_ ((_%rest181826%_ _%stx181822%_) (_%n181827%_ '0))
          (let* ((_%g181828181836%_ (gx#stx-e _%rest181826%_))
                 (_%else181830181844%_ (lambda () _%n181827%_))
                 (_%K181832181849%_
                  (lambda (_%rest181847%_)
                    (_%lp181824%_ _%rest181847%_ (##fx+ _%n181827%_ '1)))))
            (if (pair? _%g181828181836%_)
                (let* ((_%tl181834181852%_ (##cdr _%g181828181836%_))
                       (_%rest181855%_ _%tl181834181852%_))
                  (_%K181832181849%_ _%rest181855%_))
                (_%else181830181844%_))))))
    (define gx#stx-for-each
      (lambda _g182351_
        (let ((_g182352_ (##length _g182351_)))
          (cond ((##fx= _g182352_ 2) (apply gx#stx-for-each1 _g182351_))
                ((##fx= _g182352_ 3) (apply gx#stx-for-each2 _g182351_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g182351_))))))
    (define gx#stx-for-each1
      (lambda (_%f181765%_ _%stx181766%_)
        (if (procedure? _%f181765%_)
            '#!void
            (error '"expected procedure" _%f181765%_))
        (let _%lp181768%_ ((_%rest181770%_ _%stx181766%_))
          (let* ((_%g181771181781%_ (gx#syntax-e _%rest181770%_))
                 (_%else181774181789%_
                  (lambda () (_%f181765%_ _%rest181770%_))))
            (let ((_%K181777181803%_
                   (lambda (_%rest181800%_ _%hd181801%_)
                     (_%f181765%_ _%hd181801%_)
                     (_%lp181768%_ _%rest181800%_)))
                  (_%K181776181794%_ (lambda () '#!void)))
              (let ((_%try-match181773181797%_
                     (lambda ()
                       (if (null? _%g181771181781%_)
                           (_%K181776181794%_)
                           (_%else181774181789%_)))))
                (if (pair? _%g181771181781%_)
                    (let ((_%tl181779181808%_ (##cdr _%g181771181781%_))
                          (_%hd181778181806%_ (##car _%g181771181781%_)))
                      (let ((_%hd181811%_ _%hd181778181806%_)
                            (_%rest181813%_ _%tl181779181808%_))
                        (_%K181777181803%_ _%rest181813%_ _%hd181811%_)))
                    (_%try-match181773181797%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f181670%_ _%xstx181671%_ _%ystx181672%_)
        (if (procedure? _%f181670%_)
            '#!void
            (error '"expected procedure" _%f181670%_))
        (let _%lp181674%_ ((_%xrest181676%_ _%xstx181671%_)
                           (_%yrest181677%_ _%ystx181672%_))
          (let* ((_%g181678181688%_ (gx#syntax-e _%xrest181676%_))
                 (_%else181681181696%_ (lambda () '#!void)))
            (let ((_%K181684181753%_
                   (lambda (_%xrest181722%_ _%xhd181723%_)
                     (let* ((_%g181724181731%_ (gx#syntax-e _%yrest181677%_))
                            (_%E181726181735%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g181724181731%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K181727181741%_
                             (lambda (_%yrest181738%_ _%yhd181739%_)
                               (_%f181670%_ _%xhd181723%_ _%yhd181739%_)
                               (_%lp181674%_
                                _%xrest181722%_
                                _%yrest181738%_))))
                       (if (pair? _%g181724181731%_)
                           (let ((_%hd181728181744%_ (##car _%g181724181731%_))
                                 (_%tl181729181746%_
                                  (##cdr _%g181724181731%_)))
                             (let* ((_%yhd181749%_ _%hd181728181744%_)
                                    (_%yrest181751%_ _%tl181729181746%_))
                               (_%K181727181741%_
                                _%yrest181751%_
                                _%yhd181749%_)))
                           (_%E181726181735%_)))))
                  (_%K181683181716%_
                   (lambda ()
                     (let* ((_%yrest181700181705%_ _%yrest181677%_)
                            (_%E181702181709%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest181700181705%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K181703181713%_
                             (lambda ()
                               (_%f181670%_ _%xrest181676%_ _%yrest181677%_))))
                       (if (gx#stx-null? _%yrest181700181705%_)
                           (_%E181702181709%_)
                           (_%K181703181713%_))))))
              (let ((_%try-match181680181719%_
                     (lambda ()
                       (if (null? _%g181678181688%_)
                           (_%else181681181696%_)
                           (_%K181683181716%_)))))
                (if (pair? _%g181678181688%_)
                    (let ((_%tl181686181758%_ (##cdr _%g181678181688%_))
                          (_%hd181685181756%_ (##car _%g181678181688%_)))
                      (let ((_%xhd181761%_ _%hd181685181756%_)
                            (_%xrest181763%_ _%tl181686181758%_))
                        (_%K181684181753%_ _%xrest181763%_ _%xhd181761%_)))
                    (_%try-match181680181719%_))))))))
    (define gx#stx-map
      (lambda _g182353_
        (let ((_g182354_ (##length _g182353_)))
          (cond ((##fx= _g182354_ 2) (apply gx#stx-map1 _g182353_))
                ((##fx= _g182354_ 3) (apply gx#stx-map2 _g182353_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g182353_))))))
    (define gx#stx-map1
      (lambda (_%f181613%_ _%stx181614%_)
        (if (procedure? _%f181613%_)
            '#!void
            (error '"expected procedure" _%f181613%_))
        (let _%recur181616%_ ((_%rest181618%_ _%stx181614%_))
          (let* ((_%g181619181629%_ (gx#syntax-e _%rest181618%_))
                 (_%else181622181637%_
                  (lambda () (_%f181613%_ _%rest181618%_))))
            (let ((_%K181625181651%_
                   (lambda (_%rest181648%_ _%hd181649%_)
                     (cons (_%f181613%_ _%hd181649%_)
                           (_%recur181616%_ _%rest181648%_))))
                  (_%K181624181642%_ (lambda () '())))
              (let ((_%try-match181621181645%_
                     (lambda ()
                       (if (null? _%g181619181629%_)
                           (_%K181624181642%_)
                           (_%else181622181637%_)))))
                (if (pair? _%g181619181629%_)
                    (let ((_%tl181627181656%_ (##cdr _%g181619181629%_))
                          (_%hd181626181654%_ (##car _%g181619181629%_)))
                      (let ((_%hd181659%_ _%hd181626181654%_)
                            (_%rest181661%_ _%tl181627181656%_))
                        (_%K181625181651%_ _%rest181661%_ _%hd181659%_)))
                    (_%try-match181621181645%_))))))))
    (define gx#stx-map2
      (lambda (_%f181518%_ _%xstx181519%_ _%ystx181520%_)
        (if (procedure? _%f181518%_)
            '#!void
            (error '"expected procedure" _%f181518%_))
        (let _%recur181522%_ ((_%xrest181524%_ _%xstx181519%_)
                              (_%yrest181525%_ _%ystx181520%_))
          (let* ((_%g181526181536%_ (gx#syntax-e _%xrest181524%_))
                 (_%else181529181544%_ (lambda () '())))
            (let ((_%K181532181601%_
                   (lambda (_%xrest181570%_ _%xhd181571%_)
                     (let* ((_%g181572181579%_ (gx#syntax-e _%yrest181525%_))
                            (_%E181574181583%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g181572181579%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K181575181589%_
                             (lambda (_%yrest181586%_ _%yhd181587%_)
                               (cons (_%f181518%_ _%xhd181571%_ _%yhd181587%_)
                                     (_%recur181522%_
                                      _%xrest181570%_
                                      _%yrest181586%_)))))
                       (if (pair? _%g181572181579%_)
                           (let ((_%hd181576181592%_ (##car _%g181572181579%_))
                                 (_%tl181577181594%_
                                  (##cdr _%g181572181579%_)))
                             (let* ((_%yhd181597%_ _%hd181576181592%_)
                                    (_%yrest181599%_ _%tl181577181594%_))
                               (_%K181575181589%_
                                _%yrest181599%_
                                _%yhd181597%_)))
                           (_%E181574181583%_)))))
                  (_%K181531181564%_
                   (lambda ()
                     (let* ((_%yrest181548181553%_ _%yrest181525%_)
                            (_%E181550181557%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest181548181553%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K181551181561%_
                             (lambda ()
                               (_%f181518%_ _%xrest181524%_ _%yrest181525%_))))
                       (if (gx#stx-null? _%yrest181548181553%_)
                           (_%E181550181557%_)
                           (_%K181551181561%_))))))
              (let ((_%try-match181528181567%_
                     (lambda ()
                       (if (null? _%g181526181536%_)
                           (_%else181529181544%_)
                           (_%K181531181564%_)))))
                (if (pair? _%g181526181536%_)
                    (let ((_%tl181534181606%_ (##cdr _%g181526181536%_))
                          (_%hd181533181604%_ (##car _%g181526181536%_)))
                      (let ((_%xhd181609%_ _%hd181533181604%_)
                            (_%xrest181611%_ _%tl181534181606%_))
                        (_%K181532181601%_ _%xrest181611%_ _%xhd181609%_)))
                    (_%try-match181528181567%_))))))))
    (define gx#stx-andmap
      (lambda (_%f181468%_ _%stx181469%_)
        (if (procedure? _%f181468%_)
            '#!void
            (error '"expected procedure" _%f181468%_))
        (let _%lp181471%_ ((_%rest181473%_ _%stx181469%_))
          (let* ((_%g181474181484%_ (gx#syntax-e _%rest181473%_))
                 (_%else181477181492%_
                  (lambda () (_%f181468%_ _%rest181473%_))))
            (let ((_%K181480181506%_
                   (lambda (_%rest181503%_ _%hd181504%_)
                     (if (_%f181468%_ _%hd181504%_)
                         (_%lp181471%_ _%rest181503%_)
                         '#f)))
                  (_%K181479181497%_ (lambda () '#t)))
              (let ((_%try-match181476181500%_
                     (lambda ()
                       (if (null? _%g181474181484%_)
                           (_%K181479181497%_)
                           (_%else181477181492%_)))))
                (if (pair? _%g181474181484%_)
                    (let ((_%tl181482181511%_ (##cdr _%g181474181484%_))
                          (_%hd181481181509%_ (##car _%g181474181484%_)))
                      (let ((_%hd181514%_ _%hd181481181509%_)
                            (_%rest181516%_ _%tl181482181511%_))
                        (_%K181480181506%_ _%rest181516%_ _%hd181514%_)))
                    (_%try-match181476181500%_))))))))
    (define gx#stx-ormap
      (lambda (_%f181415%_ _%stx181416%_)
        (if (procedure? _%f181415%_)
            '#!void
            (error '"expected procedure" _%f181415%_))
        (let _%lp181418%_ ((_%rest181420%_ _%stx181416%_))
          (let* ((_%g181421181431%_ (gx#syntax-e _%rest181420%_))
                 (_%else181424181439%_
                  (lambda () (_%f181415%_ _%rest181420%_))))
            (let ((_%K181427181456%_
                   (lambda (_%rest181450%_ _%hd181451%_)
                     (let ((_%$e181453%_ (_%f181415%_ _%hd181451%_)))
                       (if _%$e181453%_
                           _%$e181453%_
                           (_%lp181418%_ _%rest181450%_)))))
                  (_%K181426181444%_ (lambda () '#f)))
              (let ((_%try-match181423181447%_
                     (lambda ()
                       (if (null? _%g181421181431%_)
                           (_%K181426181444%_)
                           (_%else181424181439%_)))))
                (if (pair? _%g181421181431%_)
                    (let ((_%tl181429181461%_ (##cdr _%g181421181431%_))
                          (_%hd181428181459%_ (##car _%g181421181431%_)))
                      (let ((_%hd181464%_ _%hd181428181459%_)
                            (_%rest181466%_ _%tl181429181461%_))
                        (_%K181427181456%_ _%rest181466%_ _%hd181464%_)))
                    (_%try-match181423181447%_))))))))
    (define gx#stx-foldl
      (lambda (_%f181363%_ _%iv181364%_ _%stx181365%_)
        (if (procedure? _%f181363%_)
            '#!void
            (error '"expected procedure" _%f181363%_))
        (let _%lp181367%_ ((_%r181369%_ _%iv181364%_)
                           (_%rest181370%_ _%stx181365%_))
          (let* ((_%g181371181381%_ (gx#syntax-e _%rest181370%_))
                 (_%else181374181389%_
                  (lambda () (_%f181363%_ _%rest181370%_ _%r181369%_))))
            (let ((_%K181377181403%_
                   (lambda (_%rest181400%_ _%hd181401%_)
                     (_%lp181367%_
                      (_%f181363%_ _%hd181401%_ _%r181369%_)
                      _%rest181400%_)))
                  (_%K181376181394%_ (lambda () _%r181369%_)))
              (let ((_%try-match181373181397%_
                     (lambda ()
                       (if (null? _%g181371181381%_)
                           (_%K181376181394%_)
                           (_%else181374181389%_)))))
                (if (pair? _%g181371181381%_)
                    (let ((_%tl181379181408%_ (##cdr _%g181371181381%_))
                          (_%hd181378181406%_ (##car _%g181371181381%_)))
                      (let ((_%hd181411%_ _%hd181378181406%_)
                            (_%rest181413%_ _%tl181379181408%_))
                        (_%K181377181403%_ _%rest181413%_ _%hd181411%_)))
                    (_%try-match181373181397%_))))))))
    (define gx#stx-foldr
      (lambda (_%f181312%_ _%iv181313%_ _%stx181314%_)
        (if (procedure? _%f181312%_)
            '#!void
            (error '"expected procedure" _%f181312%_))
        (let _%recur181316%_ ((_%rest181318%_ _%stx181314%_))
          (let* ((_%g181319181329%_ (gx#syntax-e _%rest181318%_))
                 (_%else181322181337%_
                  (lambda () (_%f181312%_ _%rest181318%_ _%iv181313%_))))
            (let ((_%K181325181351%_
                   (lambda (_%rest181348%_ _%hd181349%_)
                     (_%f181312%_
                      _%hd181349%_
                      (_%recur181316%_ _%rest181348%_))))
                  (_%K181324181342%_ (lambda () _%iv181313%_)))
              (let ((_%try-match181321181345%_
                     (lambda ()
                       (if (null? _%g181319181329%_)
                           (_%K181324181342%_)
                           (_%else181322181337%_)))))
                (if (pair? _%g181319181329%_)
                    (let ((_%tl181327181356%_ (##cdr _%g181319181329%_))
                          (_%hd181326181354%_ (##car _%g181319181329%_)))
                      (let ((_%hd181359%_ _%hd181326181354%_)
                            (_%rest181361%_ _%tl181327181356%_))
                        (_%K181325181351%_ _%rest181361%_ _%hd181359%_)))
                    (_%try-match181321181345%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx181310%_) (gx#stx-foldl cons '() _%stx181310%_)))
    (define gx#stx-last
      (lambda (_%stx181271%_)
        (let _%lp181273%_ ((_%rest181275%_ _%stx181271%_))
          (let* ((_%g181276181284%_ (gx#syntax-e _%rest181275%_))
                 (_%else181278181292%_ (lambda () _%rest181275%_))
                 (_%K181280181298%_
                  (lambda (_%rest181295%_ _%hd181296%_)
                    (if (gx#stx-null? _%rest181295%_)
                        _%hd181296%_
                        (_%lp181273%_ _%rest181295%_)))))
            (if (pair? _%g181276181284%_)
                (let ((_%hd181281181301%_ (##car _%g181276181284%_))
                      (_%tl181282181303%_ (##cdr _%g181276181284%_)))
                  (let* ((_%hd181306%_ _%hd181281181301%_)
                         (_%rest181308%_ _%tl181282181303%_))
                    (_%K181280181298%_ _%rest181308%_ _%hd181306%_)))
                (_%else181278181292%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx181242%_)
        (let _%lp181244%_ ((_%hd181246%_ _%stx181242%_))
          (let* ((_%g181247181254%_ (gx#syntax-e _%hd181246%_))
                 (_%E181249181258%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g181247181254%_
                           '([_ . rest]))
                    '#!void))
                 (_%K181250181263%_
                  (lambda (_%rest181261%_)
                    (if (gx#stx-pair? _%rest181261%_)
                        (_%lp181244%_ _%rest181261%_)
                        _%hd181246%_))))
            (if (pair? _%g181247181254%_)
                (let* ((_%tl181252181266%_ (##cdr _%g181247181254%_))
                       (_%rest181269%_ _%tl181252181266%_))
                  (_%K181250181263%_ _%rest181269%_))
                (_%E181249181258%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx181211%_ _%k181212%_)
        (let _%lp181214%_ ((_%rest181216%_ _%stx181211%_)
                           (_%k181217%_ _%k181212%_))
          (if (fxpositive? _%k181217%_)
              (let* ((_%g181218181225%_ (gx#syntax-e _%rest181216%_))
                     (_%E181220181229%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g181218181225%_
                               '([_ . rest]))
                        '#!void))
                     (_%K181221181234%_
                      (lambda (_%rest181232%_)
                        (_%lp181214%_ _%rest181232%_ (##fx- _%k181217%_ '1)))))
                (if (pair? _%g181218181225%_)
                    (let* ((_%tl181223181237%_ (##cdr _%g181218181225%_))
                           (_%rest181240%_ _%tl181223181237%_))
                      (_%K181221181234%_ _%rest181240%_))
                    (_%E181220181229%_)))
              _%rest181216%_))))
    (define gx#stx-list-ref
      (lambda (_%stx181208%_ _%k181209%_)
        (gx#stx-car (gx#stx-list-tail _%stx181208%_ _%k181209%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx181120%_ _%key?181121%_)
        (if (procedure? _%key?181121%_)
            '#!void
            (error '"expected procedure" _%key?181121%_))
        (let _%lp181123%_ ((_%rest181125%_ _%stx181120%_))
          (let* ((_%g181126181136%_ (gx#stx-e _%rest181125%_))
                 (_%else181129181144%_ (lambda () '#f)))
            (let ((_%K181132181186%_
                   (lambda (_%rest181155%_ _%hd181156%_)
                     (if (_%key?181121%_ _%hd181156%_)
                         (let* ((_%g181157181165%_ (gx#stx-e _%rest181155%_))
                                (_%else181159181173%_ (lambda () '#f))
                                (_%K181161181178%_
                                 (lambda (_%rest181176%_)
                                   (_%lp181123%_ _%rest181176%_))))
                           (if (pair? _%g181157181165%_)
                               (let* ((_%tl181163181181%_
                                       (##cdr _%g181157181165%_))
                                      (_%rest181184%_ _%tl181163181181%_))
                                 (_%lp181123%_ _%rest181184%_))
                               (_%else181159181173%_)))
                         '#f)))
                  (_%K181131181149%_ (lambda () '#t)))
              (let ((_%try-match181128181152%_
                     (lambda ()
                       (if (null? _%g181126181136%_)
                           (_%K181131181149%_)
                           (_%else181129181144%_)))))
                (if (pair? _%g181126181136%_)
                    (let ((_%tl181134181191%_ (##cdr _%g181126181136%_))
                          (_%hd181133181189%_ (##car _%g181126181136%_)))
                      (let ((_%hd181194%_ _%hd181133181189%_)
                            (_%rest181196%_ _%tl181134181191%_))
                        (_%K181132181186%_ _%rest181196%_ _%hd181194%_)))
                    (_%try-match181128181152%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx181201%_)
        (let ((_%key?181203%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx181201%_ _%key?181203%_))))
    (define gx#stx-plist?
      (lambda _g182355_
        (let ((_g182356_ (##length _g182355_)))
          (cond ((##fx= _g182356_ 1) (apply gx#stx-plist?__0 _g182355_))
                ((##fx= _g182356_ 2) (apply gx#stx-plist?__% _g182355_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g182355_))))))
    (define gx#stx-getq__%
      (lambda (_%key181038%_ _%stx181039%_ _%key=?181040%_)
        (if (procedure? _%key=?181040%_)
            '#!void
            (error '"expected procedure" _%key=?181040%_))
        (let _%lp181042%_ ((_%rest181044%_ _%stx181039%_))
          (let* ((_%g181045181053%_ (gx#syntax-e _%rest181044%_))
                 (_%else181047181061%_ (lambda () '#f))
                 (_%K181049181095%_
                  (lambda (_%rest181064%_ _%hd181065%_)
                    (let* ((_%g181066181073%_ (gx#syntax-e _%rest181064%_))
                           (_%E181068181077%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g181066181073%_
                                     '([val . rest]))
                              '#!void))
                           (_%K181069181083%_
                            (lambda (_%rest181080%_ _%val181081%_)
                              (if (_%key=?181040%_ _%hd181065%_ _%key181038%_)
                                  _%val181081%_
                                  (_%lp181042%_ _%rest181080%_)))))
                      (if (pair? _%g181066181073%_)
                          (let ((_%hd181070181086%_ (##car _%g181066181073%_))
                                (_%tl181071181088%_ (##cdr _%g181066181073%_)))
                            (let* ((_%val181091%_ _%hd181070181086%_)
                                   (_%rest181093%_ _%tl181071181088%_))
                              (_%K181069181083%_
                               _%rest181093%_
                               _%val181091%_)))
                          (_%E181068181077%_))))))
            (if (pair? _%g181045181053%_)
                (let ((_%hd181050181098%_ (##car _%g181045181053%_))
                      (_%tl181051181100%_ (##cdr _%g181045181053%_)))
                  (let* ((_%hd181103%_ _%hd181050181098%_)
                         (_%rest181105%_ _%tl181051181100%_))
                    (_%K181049181095%_ _%rest181105%_ _%hd181103%_)))
                (_%else181047181061%_))))))
    (define gx#stx-getq__0
      (lambda (_%key181110%_ _%stx181111%_)
        (let ((_%key=?181113%_ gx#stx-eq?))
          (gx#stx-getq__% _%key181110%_ _%stx181111%_ _%key=?181113%_))))
    (define gx#stx-getq
      (lambda _g182357_
        (let ((_g182358_ (##length _g182357_)))
          (cond ((##fx= _g182358_ 2) (apply gx#stx-getq__0 _g182357_))
                ((##fx= _g182358_ 3) (apply gx#stx-getq__% _g182357_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g182357_))))))))

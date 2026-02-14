(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1771093448)
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
      (lambda _%$args173262%_
        (apply make-instance gx#identifier-wrap::t _%$args173262%_)))
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
      (lambda _%$args173259%_
        (apply make-instance gx#syntax-wrap::t _%$args173259%_)))
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
      (lambda _%$args173256%_
        (apply make-instance gx#syntax-quote::t _%$args173256%_)))
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
      (lambda (_%stx173254%_) (symbol? (gx#stx-e _%stx173254%_))))
    (define gx#identifier-quote?
      (lambda (_%stx173252%_)
        (if (##structure-direct-instance-of? _%stx173252%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx173252%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx173247%_)
        (if (##structure-direct-instance-of? _%stx173247%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx173247%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx173247%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx173242%_)
        (if (##structure-direct-instance-of? _%stx173242%_ 'gx#syntax-quote::t)
            _%stx173242%_
            (if (##structure-direct-instance-of?
                 _%stx173242%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx173242%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx173216%_)
        (if (##structure-direct-instance-of? _%stx173216%_ 'gx#syntax-wrap::t)
            (let _%lp173219%_ ((_%e173221%_
                                (##unchecked-structure-ref
                                 _%stx173216%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks173222%_
                                (cons (##unchecked-structure-ref
                                       _%stx173216%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e173221%_)
                  (let ((_%$e173225%_
                         (##type-id (##structure-type _%e173221%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e173225%_)
                        (_%lp173219%_
                         (##unchecked-structure-ref _%e173221%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e173221%_ '3 '#f '#f)
                          _%marks173222%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e173225%_)
                                (eq? 'gx#identifier-wrap::t _%$e173225%_))
                            (##unchecked-structure-ref _%e173221%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e173225%_)
                                (_%lp173219%_
                                 (##unchecked-structure-ref
                                  _%e173221%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks173222%_)
                                _%e173221%_))))
                  (if (null? _%marks173222%_)
                      _%e173221%_
                      (if (pair? _%e173221%_)
                          (cons (gx#stx-wrap
                                 (##car _%e173221%_)
                                 _%marks173222%_)
                                (gx#stx-wrap
                                 (##cdr _%e173221%_)
                                 _%marks173222%_))
                          (if (vector? _%e173221%_)
                              (vector-map
                               (lambda (_%g173233173235%_)
                                 (gx#stx-wrap
                                  _%g173233173235%_
                                  _%marks173222%_))
                               _%e173221%_)
                              (if (box? _%e173221%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e173221%_)
                                        _%marks173222%_))
                                  _%e173221%_))))))
            (if (##structure-instance-of? _%stx173216%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx173216%_ '1 '#f '#f)
                _%stx173216%_))))
    (define gx#syntax->datum
      (lambda (_%stx173209%_)
        (if (##structure-instance-of? _%stx173209%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx173209%_ '1 '#f '#f))
            (if (pair? _%stx173209%_)
                (cons (gx#syntax->datum (##car _%stx173209%_))
                      (gx#syntax->datum (##cdr _%stx173209%_)))
                (if (vector? _%stx173209%_)
                    (vector-map gx#syntax->datum _%stx173209%_)
                    (if (box? _%stx173209%_)
                        (box (gx#syntax->datum (unbox _%stx173209%_)))
                        _%stx173209%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx173143%_ _%datum173144%_ _%src173145%_ _%quote?173146%_)
        (letrec ((_%wrap-datum173148%_
                  (lambda (_%e173181%_ _%marks173182%_)
                    (_%wrap-inner173150%_
                     _%e173181%_
                     (lambda (_%g173183173185%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g173183173185%_
                        _%src173145%_
                        _%marks173182%_)))))
                 (_%wrap-quote173149%_
                  (lambda (_%e173173%_ _%ctx173174%_ _%marks173175%_)
                    (_%wrap-inner173150%_
                     _%e173173%_
                     (lambda (_%g173176173178%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g173176173178%_
                        _%src173145%_
                        _%ctx173174%_
                        _%marks173175%_)))))
                 (_%wrap-inner173150%_
                  (lambda (_%e173161%_ _%wrap-e173162%_)
                    (let _%recur173164%_ ((_%e173166%_ _%e173161%_))
                      (if (symbol? _%e173166%_)
                          (_%wrap-e173162%_ _%e173166%_)
                          (if (pair? _%e173166%_)
                              (cons (_%recur173164%_ (##car _%e173166%_))
                                    (_%recur173164%_ (##cdr _%e173166%_)))
                              (if (vector? _%e173166%_)
                                  (vector-map _%recur173164%_ _%e173166%_)
                                  (if (box? _%e173166%_)
                                      (box (_%recur173164%_
                                            (unbox _%e173166%_)))
                                      _%e173166%_)))))))
                 (_%wrap-outer173151%_
                  (lambda (_%e173159%_)
                    (if (##structure-instance-of? _%e173159%_ 'gerbil#AST::t)
                        _%e173159%_
                        (##structure gx#AST::t _%e173159%_ _%src173145%_)))))
          (if (##structure-instance-of? _%datum173144%_ 'gerbil#AST::t)
              _%datum173144%_
              (if (not _%stx173143%_)
                  (##structure gx#AST::t _%datum173144%_ _%src173145%_)
                  (if (gx#identifier? _%stx173143%_)
                      (let ((_%stx173156%_ (gx#stx-unwrap__0 _%stx173143%_)))
                        (_%wrap-outer173151%_
                         (if (##structure-direct-instance-of?
                              _%stx173156%_
                              'gx#syntax-quote::t)
                             (if _%quote?173146%_
                                 (_%wrap-quote173149%_
                                  _%datum173144%_
                                  (##unchecked-structure-ref
                                   _%stx173156%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx173156%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum173148%_
                                  _%datum173144%_
                                  (##unchecked-structure-ref
                                   _%stx173156%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum173148%_
                              _%datum173144%_
                              (##unchecked-structure-ref
                               _%stx173156%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx173143%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx173191%_ _%datum173192%_)
        (let* ((_%src173194%_ '#f) (_%quote?173196%_ '#t))
          (gx#datum->syntax__%
           _%stx173191%_
           _%datum173192%_
           _%src173194%_
           _%quote?173196%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx173198%_ _%datum173199%_ _%src173200%_)
        (let ((_%quote?173202%_ '#t))
          (gx#datum->syntax__%
           _%stx173198%_
           _%datum173199%_
           _%src173200%_
           _%quote?173202%_))))
    (define gx#datum->syntax
      (lambda _g173342_
        (let ((_g173343_ (##length _g173342_)))
          (cond ((##fx= _g173343_ 2) (apply gx#datum->syntax__0 _g173342_))
                ((##fx= _g173343_ 3) (apply gx#datum->syntax__1 _g173342_))
                ((##fx= _g173343_ 4) (apply gx#datum->syntax__% _g173342_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g173342_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx173109%_ _%marks173110%_)
        (let _%lp173112%_ ((_%e173114%_ _%stx173109%_)
                           (_%marks173115%_ _%marks173110%_)
                           (_%src173116%_ (gx#stx-source _%stx173109%_)))
          (if (##structure-direct-instance-of? _%e173114%_ 'gx#syntax-wrap::t)
              (_%lp173112%_
               (##unchecked-structure-ref _%e173114%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e173114%_ '3 '#f '#f)
                _%marks173115%_)
               (##unchecked-structure-ref _%e173114%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e173114%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks173115%_)
                      _%e173114%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e173114%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e173114%_ '2 '#f '#f)
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e173114%_ '3 '#f '#f)
                        _%marks173115%_)))
                  (if (##structure-direct-instance-of?
                       _%e173114%_
                       'gx#syntax-quote::t)
                      _%e173114%_
                      (if (##structure-instance-of? _%e173114%_ 'gerbil#AST::t)
                          (_%lp173112%_
                           (##unchecked-structure-ref _%e173114%_ '1 '#f '#f)
                           _%marks173115%_
                           (##unchecked-structure-ref _%e173114%_ '2 '#f '#f))
                          (if (symbol? _%e173114%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e173114%_
                               _%src173116%_
                               (reverse _%marks173115%_))
                              (if (null? _%marks173115%_)
                                  _%e173114%_
                                  (if (pair? _%e173114%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e173114%_)
                                             _%marks173115%_)
                                            (gx#stx-wrap
                                             (##cdr _%e173114%_)
                                             _%marks173115%_))
                                      (if (vector? _%e173114%_)
                                          (vector-map
                                           (lambda (_%g173125173127%_)
                                             (gx#stx-wrap
                                              _%g173125173127%_
                                              _%marks173115%_))
                                           _%e173114%_)
                                          (if (box? _%e173114%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e173114%_)
                                                    _%marks173115%_))
                                              _%e173114%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx173135%_)
        (let ((_%marks173137%_ '()))
          (gx#stx-unwrap__% _%stx173135%_ _%marks173137%_))))
    (define gx#stx-unwrap
      (lambda _g173344_
        (let ((_g173345_ (##length _g173344_)))
          (cond ((##fx= _g173345_ 1) (apply gx#stx-unwrap__0 _g173344_))
                ((##fx= _g173345_ 2) (apply gx#stx-unwrap__% _g173344_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g173344_))))))
    (define gx#stx-wrap
      (lambda (_%stx173102%_ _%marks173103%_)
        (foldl__0
         (lambda (_%mark173105%_ _%stx173106%_)
           (gx#stx-apply-mark _%stx173106%_ _%mark173105%_))
         _%stx173102%_
         _%marks173103%_)))
    (define gx#stx-rewrap
      (lambda (_%stx173096%_ _%marks173097%_)
        (foldr__0
         (lambda (_%mark173099%_ _%stx173100%_)
           (gx#stx-apply-mark _%stx173100%_ _%mark173099%_))
         _%stx173096%_
         _%marks173097%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx173090%_ _%mark173091%_)
        (if (##structure-direct-instance-of? _%stx173090%_ 'gx#syntax-quote::t)
            _%stx173090%_
            (if (and (##structure-direct-instance-of?
                      _%stx173090%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark173091%_
                          (##unchecked-structure-ref
                           _%stx173090%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx173090%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx173090%_
                 (gx#stx-source _%stx173090%_)
                 _%mark173091%_)))))
    (define gx#apply-mark
      (lambda (_%mark173054%_ _%marks173055%_)
        (let* ((_%marks173056173064%_ _%marks173055%_)
               (_%else173058173072%_
                (lambda () (cons _%mark173054%_ _%marks173055%_)))
               (_%K173060173078%_
                (lambda (_%rest173075%_ _%hd173076%_)
                  (if (eq? _%mark173054%_ _%hd173076%_)
                      _%rest173075%_
                      (cons _%mark173054%_ _%marks173055%_)))))
          (if (pair? _%marks173056173064%_)
              (let ((_%hd173061173081%_ (##car _%marks173056173064%_))
                    (_%tl173062173083%_ (##cdr _%marks173056173064%_)))
                (let* ((_%hd173086%_ _%hd173061173081%_)
                       (_%rest173088%_ _%tl173062173083%_))
                  (_%K173060173078%_ _%rest173088%_ _%hd173086%_)))
              (_%else173058173072%_)))))
    (define gx#stx-e
      (lambda (_%stx173049%_)
        (if (##structure-direct-instance-of? _%stx173049%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx173049%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx173049%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx173049%_ '1 '#f '#f)
                _%stx173049%_))))
    (define gx#stx-source
      (lambda (_%stx173047%_)
        (if (##structure-instance-of? _%stx173047%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx173047%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx173041%_ _%src173042%_)
        (if (or (##structure-instance-of? _%stx173041%_ 'gerbil#AST::t)
                (not _%src173042%_))
            _%stx173041%_
            (##structure gx#AST::t _%stx173041%_ _%src173042%_))))
    (define gx#stx-datum?
      (lambda (_%stx173039%_) (gx#self-quoting? (gx#stx-e _%stx173039%_))))
    (define gx#self-quoting?
      (lambda (_%x173022%_)
        (let ((_%$e173024%_ (immediate? _%x173022%_)))
          (if _%$e173024%_
              _%$e173024%_
              (let ((_%$e173027%_ (number? _%x173022%_)))
                (if _%$e173027%_
                    _%$e173027%_
                    (let ((_%$e173030%_ (keyword? _%x173022%_)))
                      (if _%$e173030%_
                          _%$e173030%_
                          (let ((_%$e173033%_ (string? _%x173022%_)))
                            (if _%$e173033%_
                                _%$e173033%_
                                (let ((_%$e173036%_ (vector? _%x173022%_)))
                                  (if _%$e173036%_
                                      _%$e173036%_
                                      (u8vector? _%x173022%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e173020%_) (boolean? (gx#stx-e _%e173020%_))))
    (define gx#stx-keyword?
      (lambda (_%e173018%_) (keyword? (gx#stx-e _%e173018%_))))
    (define gx#stx-char? (lambda (_%e173016%_) (char? (gx#stx-e _%e173016%_))))
    (define gx#stx-number?
      (lambda (_%e173014%_) (number? (gx#stx-e _%e173014%_))))
    (define gx#stx-fixnum?
      (lambda (_%e173012%_) (fixnum? (gx#stx-e _%e173012%_))))
    (define gx#stx-string?
      (lambda (_%e173010%_) (string? (gx#stx-e _%e173010%_))))
    (define gx#stx-null? (lambda (_%e173008%_) (null? (gx#stx-e _%e173008%_))))
    (define gx#stx-pair? (lambda (_%e173006%_) (pair? (gx#stx-e _%e173006%_))))
    (define gx#stx-list?
      (lambda (_%e172968%_)
        (let* ((_%g172969172978%_ (gx#stx-e _%e172968%_))
               (_%E172972172982%_
                (lambda ()
                  (error '"No clause matching"
                         _%g172969172978%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K172974172998%_
                 (lambda (_%rest172996%_) (gx#stx-list? _%rest172996%_)))
                (_%K172973172988%_
                 (lambda (_%tail172986%_) (null? _%tail172986%_))))
            (if (pair? _%g172969172978%_)
                (let* ((_%tl172976173001%_ (##cdr _%g172969172978%_))
                       (_%rest173004%_ _%tl172976173001%_))
                  (gx#stx-list? _%rest173004%_))
                (let ((_%tail172991%_ _%g172969172978%_))
                  (null? _%tail172991%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e172961%_)
        (let* ((_%e172963%_ (gx#stx-e _%e172961%_))
               (_%$e172965%_ (pair? _%e172963%_)))
          (if _%$e172965%_ _%$e172965%_ (null? _%e172963%_)))))
    (define gx#stx-vector?
      (lambda (_%e172959%_) (vector? (gx#stx-e _%e172959%_))))
    (define gx#stx-box? (lambda (_%e172957%_) (box? (gx#stx-e _%e172957%_))))
    (define gx#stx-eq?
      (lambda (_%x172954%_ _%y172955%_)
        (eq? (gx#stx-e _%x172954%_) (gx#stx-e _%y172955%_))))
    (define gx#stx-eqv?
      (lambda (_%x172951%_ _%y172952%_)
        (eqv? (gx#stx-e _%x172951%_) (gx#stx-e _%y172952%_))))
    (define gx#stx-equal?
      (lambda (_%x172948%_ _%y172949%_)
        (equal? (gx#stx-e _%x172948%_) (gx#stx-e _%y172949%_))))
    (define gx#stx-false? (lambda (_%x172946%_) (not (gx#stx-e _%x172946%_))))
    (define gx#stx-identifier
      (lambda (_%template172943%_ . _%args172944%_)
        (gx#datum->syntax__1
         _%template172943%_
         (apply make-symbol (gx#syntax->datum _%args172944%_))
         (gx#stx-source _%template172943%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx172941%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx172941%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx172936%_)
        (if (##structure-direct-instance-of?
             _%stx172936%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx172936%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx172936%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx172936%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx172936%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx172932%_)
        (let ((_%stx172934%_ (gx#stx-unwrap__0 _%stx172932%_)))
          (if (gx#identifier-quote? _%stx172934%_)
              (##unchecked-structure-ref _%stx172934%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx172887%_)
        (let* ((_%g172888172898%_ (gx#stx-e _%stx172887%_))
               (_%else172891172906%_ (lambda () '#f)))
          (let ((_%K172894172920%_
                 (lambda (_%rest172917%_ _%hd172918%_)
                   (if (gx#identifier? _%hd172918%_)
                       (gx#identifier-list? _%rest172917%_)
                       '#f)))
                (_%K172893172911%_ (lambda () '#t)))
            (let ((_%try-match172890172914%_
                   (lambda ()
                     (if (null? _%g172888172898%_)
                         (_%K172893172911%_)
                         (_%else172891172906%_)))))
              (if (pair? _%g172888172898%_)
                  (let ((_%tl172896172925%_ (##cdr _%g172888172898%_))
                        (_%hd172895172923%_ (##car _%g172888172898%_)))
                    (let ((_%hd172928%_ _%hd172895172923%_)
                          (_%rest172930%_ _%tl172896172925%_))
                      (_%K172894172920%_ _%rest172930%_ _%hd172928%_)))
                  (_%try-match172890172914%_)))))))
    (define gx#genident__%
      (lambda (_%e172867%_ _%src172868%_)
        (gx#datum->syntax__1
         (if (gx#identifier? _%src172868%_) _%src172868%_ '#f)
         (##string->symbol
          (##symbol->string
           (##gensym
            (let ((_%e172870%_ (gx#stx-e _%e172867%_)))
              (if (symbol? _%e172870%_) _%e172870%_ 'g)))))
         _%src172868%_)))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e172876%_ 'g) (_%src172878%_ '#f))
          (gx#genident__% _%e172876%_ _%src172878%_))))
    (define gx#genident__1
      (lambda (_%e172880%_)
        (let ((_%src172882%_ '#f))
          (gx#genident__% _%e172880%_ _%src172882%_))))
    (define gx#genident
      (lambda _g173346_
        (let ((_g173347_ (##length _g173346_)))
          (cond ((##fx= _g173347_ 0) (apply gx#genident__0 _g173346_))
                ((##fx= _g173347_ 1) (apply gx#genident__1 _g173346_))
                ((##fx= _g173347_ 2) (apply gx#genident__% _g173346_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g173346_))))))
    (define gx#gentemps
      (lambda (_%stx-lst172862%_)
        (gx#stx-map1
         (lambda (_%x172864%_) (gx#genident__% _%x172864%_ _%x172864%_))
         _%stx-lst172862%_)))
    (define gx#syntax->list
      (lambda (_%stx172860%_) (gx#stx-map1 values _%stx172860%_)))
    (define gx#stx-car
      (lambda (_%stx172857%_)
        (declare (safe))
        (car (gx#syntax-e _%stx172857%_))))
    (define gx#stx-cdr
      (lambda (_%stx172854%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx172854%_))))
    (define gx#stx-length
      (lambda (_%stx172819%_)
        (let _%lp172821%_ ((_%rest172823%_ _%stx172819%_) (_%n172824%_ '0))
          (let* ((_%g172825172833%_ (gx#stx-e _%rest172823%_))
                 (_%else172827172841%_ (lambda () _%n172824%_))
                 (_%K172829172846%_
                  (lambda (_%rest172844%_)
                    (_%lp172821%_ _%rest172844%_ (##fx+ _%n172824%_ '1)))))
            (if (pair? _%g172825172833%_)
                (let* ((_%tl172831172849%_ (##cdr _%g172825172833%_))
                       (_%rest172852%_ _%tl172831172849%_))
                  (_%K172829172846%_ _%rest172852%_))
                (_%else172827172841%_))))))
    (define gx#stx-for-each
      (lambda _g173348_
        (let ((_g173349_ (##length _g173348_)))
          (cond ((##fx= _g173349_ 2) (apply gx#stx-for-each1 _g173348_))
                ((##fx= _g173349_ 3) (apply gx#stx-for-each2 _g173348_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g173348_))))))
    (define gx#stx-for-each1
      (lambda (_%f172762%_ _%stx172763%_)
        (if (procedure? _%f172762%_)
            '#!void
            (error '"expected procedure" _%f172762%_))
        (let _%lp172765%_ ((_%rest172767%_ _%stx172763%_))
          (let* ((_%g172768172778%_ (gx#syntax-e _%rest172767%_))
                 (_%else172771172786%_
                  (lambda () (_%f172762%_ _%rest172767%_))))
            (let ((_%K172774172800%_
                   (lambda (_%rest172797%_ _%hd172798%_)
                     (_%f172762%_ _%hd172798%_)
                     (_%lp172765%_ _%rest172797%_)))
                  (_%K172773172791%_ (lambda () '#!void)))
              (let ((_%try-match172770172794%_
                     (lambda ()
                       (if (null? _%g172768172778%_)
                           (_%K172773172791%_)
                           (_%else172771172786%_)))))
                (if (pair? _%g172768172778%_)
                    (let ((_%tl172776172805%_ (##cdr _%g172768172778%_))
                          (_%hd172775172803%_ (##car _%g172768172778%_)))
                      (let ((_%hd172808%_ _%hd172775172803%_)
                            (_%rest172810%_ _%tl172776172805%_))
                        (_%K172774172800%_ _%rest172810%_ _%hd172808%_)))
                    (_%try-match172770172794%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f172667%_ _%xstx172668%_ _%ystx172669%_)
        (if (procedure? _%f172667%_)
            '#!void
            (error '"expected procedure" _%f172667%_))
        (let _%lp172671%_ ((_%xrest172673%_ _%xstx172668%_)
                           (_%yrest172674%_ _%ystx172669%_))
          (let* ((_%g172675172685%_ (gx#syntax-e _%xrest172673%_))
                 (_%else172678172693%_ (lambda () '#!void)))
            (let ((_%K172681172750%_
                   (lambda (_%xrest172719%_ _%xhd172720%_)
                     (let* ((_%g172721172728%_ (gx#syntax-e _%yrest172674%_))
                            (_%E172723172732%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g172721172728%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K172724172738%_
                             (lambda (_%yrest172735%_ _%yhd172736%_)
                               (_%f172667%_ _%xhd172720%_ _%yhd172736%_)
                               (_%lp172671%_
                                _%xrest172719%_
                                _%yrest172735%_))))
                       (if (pair? _%g172721172728%_)
                           (let ((_%hd172725172741%_ (##car _%g172721172728%_))
                                 (_%tl172726172743%_
                                  (##cdr _%g172721172728%_)))
                             (let* ((_%yhd172746%_ _%hd172725172741%_)
                                    (_%yrest172748%_ _%tl172726172743%_))
                               (_%K172724172738%_
                                _%yrest172748%_
                                _%yhd172746%_)))
                           (_%E172723172732%_)))))
                  (_%K172680172713%_
                   (lambda ()
                     (let* ((_%yrest172697172702%_ _%yrest172674%_)
                            (_%E172699172706%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest172697172702%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K172700172710%_
                             (lambda ()
                               (_%f172667%_ _%xrest172673%_ _%yrest172674%_))))
                       (if (gx#stx-null? _%yrest172697172702%_)
                           (_%E172699172706%_)
                           (_%K172700172710%_))))))
              (let ((_%try-match172677172716%_
                     (lambda ()
                       (if (null? _%g172675172685%_)
                           (_%else172678172693%_)
                           (_%K172680172713%_)))))
                (if (pair? _%g172675172685%_)
                    (let ((_%tl172683172755%_ (##cdr _%g172675172685%_))
                          (_%hd172682172753%_ (##car _%g172675172685%_)))
                      (let ((_%xhd172758%_ _%hd172682172753%_)
                            (_%xrest172760%_ _%tl172683172755%_))
                        (_%K172681172750%_ _%xrest172760%_ _%xhd172758%_)))
                    (_%try-match172677172716%_))))))))
    (define gx#stx-map
      (lambda _g173350_
        (let ((_g173351_ (##length _g173350_)))
          (cond ((##fx= _g173351_ 2) (apply gx#stx-map1 _g173350_))
                ((##fx= _g173351_ 3) (apply gx#stx-map2 _g173350_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g173350_))))))
    (define gx#stx-map1
      (lambda (_%f172610%_ _%stx172611%_)
        (if (procedure? _%f172610%_)
            '#!void
            (error '"expected procedure" _%f172610%_))
        (let _%recur172613%_ ((_%rest172615%_ _%stx172611%_))
          (let* ((_%g172616172626%_ (gx#syntax-e _%rest172615%_))
                 (_%else172619172634%_
                  (lambda () (_%f172610%_ _%rest172615%_))))
            (let ((_%K172622172648%_
                   (lambda (_%rest172645%_ _%hd172646%_)
                     (cons (_%f172610%_ _%hd172646%_)
                           (_%recur172613%_ _%rest172645%_))))
                  (_%K172621172639%_ (lambda () '())))
              (let ((_%try-match172618172642%_
                     (lambda ()
                       (if (null? _%g172616172626%_)
                           (_%K172621172639%_)
                           (_%else172619172634%_)))))
                (if (pair? _%g172616172626%_)
                    (let ((_%tl172624172653%_ (##cdr _%g172616172626%_))
                          (_%hd172623172651%_ (##car _%g172616172626%_)))
                      (let ((_%hd172656%_ _%hd172623172651%_)
                            (_%rest172658%_ _%tl172624172653%_))
                        (_%K172622172648%_ _%rest172658%_ _%hd172656%_)))
                    (_%try-match172618172642%_))))))))
    (define gx#stx-map2
      (lambda (_%f172515%_ _%xstx172516%_ _%ystx172517%_)
        (if (procedure? _%f172515%_)
            '#!void
            (error '"expected procedure" _%f172515%_))
        (let _%recur172519%_ ((_%xrest172521%_ _%xstx172516%_)
                              (_%yrest172522%_ _%ystx172517%_))
          (let* ((_%g172523172533%_ (gx#syntax-e _%xrest172521%_))
                 (_%else172526172541%_ (lambda () '())))
            (let ((_%K172529172598%_
                   (lambda (_%xrest172567%_ _%xhd172568%_)
                     (let* ((_%g172569172576%_ (gx#syntax-e _%yrest172522%_))
                            (_%E172571172580%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g172569172576%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K172572172586%_
                             (lambda (_%yrest172583%_ _%yhd172584%_)
                               (cons (_%f172515%_ _%xhd172568%_ _%yhd172584%_)
                                     (_%recur172519%_
                                      _%xrest172567%_
                                      _%yrest172583%_)))))
                       (if (pair? _%g172569172576%_)
                           (let ((_%hd172573172589%_ (##car _%g172569172576%_))
                                 (_%tl172574172591%_
                                  (##cdr _%g172569172576%_)))
                             (let* ((_%yhd172594%_ _%hd172573172589%_)
                                    (_%yrest172596%_ _%tl172574172591%_))
                               (_%K172572172586%_
                                _%yrest172596%_
                                _%yhd172594%_)))
                           (_%E172571172580%_)))))
                  (_%K172528172561%_
                   (lambda ()
                     (let* ((_%yrest172545172550%_ _%yrest172522%_)
                            (_%E172547172554%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest172545172550%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K172548172558%_
                             (lambda ()
                               (_%f172515%_ _%xrest172521%_ _%yrest172522%_))))
                       (if (gx#stx-null? _%yrest172545172550%_)
                           (_%E172547172554%_)
                           (_%K172548172558%_))))))
              (let ((_%try-match172525172564%_
                     (lambda ()
                       (if (null? _%g172523172533%_)
                           (_%else172526172541%_)
                           (_%K172528172561%_)))))
                (if (pair? _%g172523172533%_)
                    (let ((_%tl172531172603%_ (##cdr _%g172523172533%_))
                          (_%hd172530172601%_ (##car _%g172523172533%_)))
                      (let ((_%xhd172606%_ _%hd172530172601%_)
                            (_%xrest172608%_ _%tl172531172603%_))
                        (_%K172529172598%_ _%xrest172608%_ _%xhd172606%_)))
                    (_%try-match172525172564%_))))))))
    (define gx#stx-andmap
      (lambda (_%f172465%_ _%stx172466%_)
        (if (procedure? _%f172465%_)
            '#!void
            (error '"expected procedure" _%f172465%_))
        (let _%lp172468%_ ((_%rest172470%_ _%stx172466%_))
          (let* ((_%g172471172481%_ (gx#syntax-e _%rest172470%_))
                 (_%else172474172489%_
                  (lambda () (_%f172465%_ _%rest172470%_))))
            (let ((_%K172477172503%_
                   (lambda (_%rest172500%_ _%hd172501%_)
                     (if (_%f172465%_ _%hd172501%_)
                         (_%lp172468%_ _%rest172500%_)
                         '#f)))
                  (_%K172476172494%_ (lambda () '#t)))
              (let ((_%try-match172473172497%_
                     (lambda ()
                       (if (null? _%g172471172481%_)
                           (_%K172476172494%_)
                           (_%else172474172489%_)))))
                (if (pair? _%g172471172481%_)
                    (let ((_%tl172479172508%_ (##cdr _%g172471172481%_))
                          (_%hd172478172506%_ (##car _%g172471172481%_)))
                      (let ((_%hd172511%_ _%hd172478172506%_)
                            (_%rest172513%_ _%tl172479172508%_))
                        (_%K172477172503%_ _%rest172513%_ _%hd172511%_)))
                    (_%try-match172473172497%_))))))))
    (define gx#stx-ormap
      (lambda (_%f172412%_ _%stx172413%_)
        (if (procedure? _%f172412%_)
            '#!void
            (error '"expected procedure" _%f172412%_))
        (let _%lp172415%_ ((_%rest172417%_ _%stx172413%_))
          (let* ((_%g172418172428%_ (gx#syntax-e _%rest172417%_))
                 (_%else172421172436%_
                  (lambda () (_%f172412%_ _%rest172417%_))))
            (let ((_%K172424172453%_
                   (lambda (_%rest172447%_ _%hd172448%_)
                     (let ((_%$e172450%_ (_%f172412%_ _%hd172448%_)))
                       (if _%$e172450%_
                           _%$e172450%_
                           (_%lp172415%_ _%rest172447%_)))))
                  (_%K172423172441%_ (lambda () '#f)))
              (let ((_%try-match172420172444%_
                     (lambda ()
                       (if (null? _%g172418172428%_)
                           (_%K172423172441%_)
                           (_%else172421172436%_)))))
                (if (pair? _%g172418172428%_)
                    (let ((_%tl172426172458%_ (##cdr _%g172418172428%_))
                          (_%hd172425172456%_ (##car _%g172418172428%_)))
                      (let ((_%hd172461%_ _%hd172425172456%_)
                            (_%rest172463%_ _%tl172426172458%_))
                        (_%K172424172453%_ _%rest172463%_ _%hd172461%_)))
                    (_%try-match172420172444%_))))))))
    (define gx#stx-foldl
      (lambda (_%f172360%_ _%iv172361%_ _%stx172362%_)
        (if (procedure? _%f172360%_)
            '#!void
            (error '"expected procedure" _%f172360%_))
        (let _%lp172364%_ ((_%r172366%_ _%iv172361%_)
                           (_%rest172367%_ _%stx172362%_))
          (let* ((_%g172368172378%_ (gx#syntax-e _%rest172367%_))
                 (_%else172371172386%_
                  (lambda () (_%f172360%_ _%rest172367%_ _%r172366%_))))
            (let ((_%K172374172400%_
                   (lambda (_%rest172397%_ _%hd172398%_)
                     (_%lp172364%_
                      (_%f172360%_ _%hd172398%_ _%r172366%_)
                      _%rest172397%_)))
                  (_%K172373172391%_ (lambda () _%r172366%_)))
              (let ((_%try-match172370172394%_
                     (lambda ()
                       (if (null? _%g172368172378%_)
                           (_%K172373172391%_)
                           (_%else172371172386%_)))))
                (if (pair? _%g172368172378%_)
                    (let ((_%tl172376172405%_ (##cdr _%g172368172378%_))
                          (_%hd172375172403%_ (##car _%g172368172378%_)))
                      (let ((_%hd172408%_ _%hd172375172403%_)
                            (_%rest172410%_ _%tl172376172405%_))
                        (_%K172374172400%_ _%rest172410%_ _%hd172408%_)))
                    (_%try-match172370172394%_))))))))
    (define gx#stx-foldr
      (lambda (_%f172309%_ _%iv172310%_ _%stx172311%_)
        (if (procedure? _%f172309%_)
            '#!void
            (error '"expected procedure" _%f172309%_))
        (let _%recur172313%_ ((_%rest172315%_ _%stx172311%_))
          (let* ((_%g172316172326%_ (gx#syntax-e _%rest172315%_))
                 (_%else172319172334%_
                  (lambda () (_%f172309%_ _%rest172315%_ _%iv172310%_))))
            (let ((_%K172322172348%_
                   (lambda (_%rest172345%_ _%hd172346%_)
                     (_%f172309%_
                      _%hd172346%_
                      (_%recur172313%_ _%rest172345%_))))
                  (_%K172321172339%_ (lambda () _%iv172310%_)))
              (let ((_%try-match172318172342%_
                     (lambda ()
                       (if (null? _%g172316172326%_)
                           (_%K172321172339%_)
                           (_%else172319172334%_)))))
                (if (pair? _%g172316172326%_)
                    (let ((_%tl172324172353%_ (##cdr _%g172316172326%_))
                          (_%hd172323172351%_ (##car _%g172316172326%_)))
                      (let ((_%hd172356%_ _%hd172323172351%_)
                            (_%rest172358%_ _%tl172324172353%_))
                        (_%K172322172348%_ _%rest172358%_ _%hd172356%_)))
                    (_%try-match172318172342%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx172307%_) (gx#stx-foldl cons '() _%stx172307%_)))
    (define gx#stx-last
      (lambda (_%stx172268%_)
        (let _%lp172270%_ ((_%rest172272%_ _%stx172268%_))
          (let* ((_%g172273172281%_ (gx#syntax-e _%rest172272%_))
                 (_%else172275172289%_ (lambda () _%rest172272%_))
                 (_%K172277172295%_
                  (lambda (_%rest172292%_ _%hd172293%_)
                    (if (gx#stx-null? _%rest172292%_)
                        _%hd172293%_
                        (_%lp172270%_ _%rest172292%_)))))
            (if (pair? _%g172273172281%_)
                (let ((_%hd172278172298%_ (##car _%g172273172281%_))
                      (_%tl172279172300%_ (##cdr _%g172273172281%_)))
                  (let* ((_%hd172303%_ _%hd172278172298%_)
                         (_%rest172305%_ _%tl172279172300%_))
                    (_%K172277172295%_ _%rest172305%_ _%hd172303%_)))
                (_%else172275172289%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx172239%_)
        (let _%lp172241%_ ((_%hd172243%_ _%stx172239%_))
          (let* ((_%g172244172251%_ (gx#syntax-e _%hd172243%_))
                 (_%E172246172255%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g172244172251%_
                           '([_ . rest]))
                    '#!void))
                 (_%K172247172260%_
                  (lambda (_%rest172258%_)
                    (if (gx#stx-pair? _%rest172258%_)
                        (_%lp172241%_ _%rest172258%_)
                        _%hd172243%_))))
            (if (pair? _%g172244172251%_)
                (let* ((_%tl172249172263%_ (##cdr _%g172244172251%_))
                       (_%rest172266%_ _%tl172249172263%_))
                  (_%K172247172260%_ _%rest172266%_))
                (_%E172246172255%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx172208%_ _%k172209%_)
        (let _%lp172211%_ ((_%rest172213%_ _%stx172208%_)
                           (_%k172214%_ _%k172209%_))
          (if (fxpositive? _%k172214%_)
              (let* ((_%g172215172222%_ (gx#syntax-e _%rest172213%_))
                     (_%E172217172226%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g172215172222%_
                               '([_ . rest]))
                        '#!void))
                     (_%K172218172231%_
                      (lambda (_%rest172229%_)
                        (_%lp172211%_ _%rest172229%_ (##fx- _%k172214%_ '1)))))
                (if (pair? _%g172215172222%_)
                    (let* ((_%tl172220172234%_ (##cdr _%g172215172222%_))
                           (_%rest172237%_ _%tl172220172234%_))
                      (_%K172218172231%_ _%rest172237%_))
                    (_%E172217172226%_)))
              _%rest172213%_))))
    (define gx#stx-list-ref
      (lambda (_%stx172205%_ _%k172206%_)
        (gx#stx-car (gx#stx-list-tail _%stx172205%_ _%k172206%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx172117%_ _%key?172118%_)
        (if (procedure? _%key?172118%_)
            '#!void
            (error '"expected procedure" _%key?172118%_))
        (let _%lp172120%_ ((_%rest172122%_ _%stx172117%_))
          (let* ((_%g172123172133%_ (gx#stx-e _%rest172122%_))
                 (_%else172126172141%_ (lambda () '#f)))
            (let ((_%K172129172183%_
                   (lambda (_%rest172152%_ _%hd172153%_)
                     (if (_%key?172118%_ _%hd172153%_)
                         (let* ((_%g172154172162%_ (gx#stx-e _%rest172152%_))
                                (_%else172156172170%_ (lambda () '#f))
                                (_%K172158172175%_
                                 (lambda (_%rest172173%_)
                                   (_%lp172120%_ _%rest172173%_))))
                           (if (pair? _%g172154172162%_)
                               (let* ((_%tl172160172178%_
                                       (##cdr _%g172154172162%_))
                                      (_%rest172181%_ _%tl172160172178%_))
                                 (_%lp172120%_ _%rest172181%_))
                               (_%else172156172170%_)))
                         '#f)))
                  (_%K172128172146%_ (lambda () '#t)))
              (let ((_%try-match172125172149%_
                     (lambda ()
                       (if (null? _%g172123172133%_)
                           (_%K172128172146%_)
                           (_%else172126172141%_)))))
                (if (pair? _%g172123172133%_)
                    (let ((_%tl172131172188%_ (##cdr _%g172123172133%_))
                          (_%hd172130172186%_ (##car _%g172123172133%_)))
                      (let ((_%hd172191%_ _%hd172130172186%_)
                            (_%rest172193%_ _%tl172131172188%_))
                        (_%K172129172183%_ _%rest172193%_ _%hd172191%_)))
                    (_%try-match172125172149%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx172198%_)
        (let ((_%key?172200%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx172198%_ _%key?172200%_))))
    (define gx#stx-plist?
      (lambda _g173352_
        (let ((_g173353_ (##length _g173352_)))
          (cond ((##fx= _g173353_ 1) (apply gx#stx-plist?__0 _g173352_))
                ((##fx= _g173353_ 2) (apply gx#stx-plist?__% _g173352_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g173352_))))))
    (define gx#stx-getq__%
      (lambda (_%key172035%_ _%stx172036%_ _%key=?172037%_)
        (if (procedure? _%key=?172037%_)
            '#!void
            (error '"expected procedure" _%key=?172037%_))
        (let _%lp172039%_ ((_%rest172041%_ _%stx172036%_))
          (let* ((_%g172042172050%_ (gx#syntax-e _%rest172041%_))
                 (_%else172044172058%_ (lambda () '#f))
                 (_%K172046172092%_
                  (lambda (_%rest172061%_ _%hd172062%_)
                    (let* ((_%g172063172070%_ (gx#syntax-e _%rest172061%_))
                           (_%E172065172074%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g172063172070%_
                                     '([val . rest]))
                              '#!void))
                           (_%K172066172080%_
                            (lambda (_%rest172077%_ _%val172078%_)
                              (if (_%key=?172037%_ _%hd172062%_ _%key172035%_)
                                  _%val172078%_
                                  (_%lp172039%_ _%rest172077%_)))))
                      (if (pair? _%g172063172070%_)
                          (let ((_%hd172067172083%_ (##car _%g172063172070%_))
                                (_%tl172068172085%_ (##cdr _%g172063172070%_)))
                            (let* ((_%val172088%_ _%hd172067172083%_)
                                   (_%rest172090%_ _%tl172068172085%_))
                              (_%K172066172080%_
                               _%rest172090%_
                               _%val172088%_)))
                          (_%E172065172074%_))))))
            (if (pair? _%g172042172050%_)
                (let ((_%hd172047172095%_ (##car _%g172042172050%_))
                      (_%tl172048172097%_ (##cdr _%g172042172050%_)))
                  (let* ((_%hd172100%_ _%hd172047172095%_)
                         (_%rest172102%_ _%tl172048172097%_))
                    (_%K172046172092%_ _%rest172102%_ _%hd172100%_)))
                (_%else172044172058%_))))))
    (define gx#stx-getq__0
      (lambda (_%key172107%_ _%stx172108%_)
        (let ((_%key=?172110%_ gx#stx-eq?))
          (gx#stx-getq__% _%key172107%_ _%stx172108%_ _%key=?172110%_))))
    (define gx#stx-getq
      (lambda _g173354_
        (let ((_g173355_ (##length _g173354_)))
          (cond ((##fx= _g173355_ 2) (apply gx#stx-getq__0 _g173354_))
                ((##fx= _g173355_ 3) (apply gx#stx-getq__% _g173354_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g173354_))))))))

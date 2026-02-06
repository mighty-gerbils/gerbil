(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1770342548)
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
      (lambda _%$args162785%_
        (apply make-instance gx#identifier-wrap::t _%$args162785%_)))
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
      (lambda _%$args162782%_
        (apply make-instance gx#syntax-wrap::t _%$args162782%_)))
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
      (lambda _%$args162779%_
        (apply make-instance gx#syntax-quote::t _%$args162779%_)))
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
      (lambda (_%stx162777%_) (symbol? (gx#stx-e _%stx162777%_))))
    (define gx#identifier-quote?
      (lambda (_%stx162775%_)
        (if (##structure-direct-instance-of? _%stx162775%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx162775%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx162770%_)
        (if (##structure-direct-instance-of? _%stx162770%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx162770%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx162770%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx162765%_)
        (if (##structure-direct-instance-of? _%stx162765%_ 'gx#syntax-quote::t)
            _%stx162765%_
            (if (##structure-direct-instance-of?
                 _%stx162765%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx162765%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx162739%_)
        (if (##structure-direct-instance-of? _%stx162739%_ 'gx#syntax-wrap::t)
            (let _%lp162742%_ ((_%e162744%_
                                (##unchecked-structure-ref
                                 _%stx162739%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks162745%_
                                (cons (##unchecked-structure-ref
                                       _%stx162739%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e162744%_)
                  (let ((_%$e162748%_
                         (##type-id (##structure-type _%e162744%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e162748%_)
                        (_%lp162742%_
                         (##unchecked-structure-ref _%e162744%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e162744%_ '3 '#f '#f)
                          _%marks162745%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e162748%_)
                                (eq? 'gx#identifier-wrap::t _%$e162748%_))
                            (##unchecked-structure-ref _%e162744%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e162748%_)
                                (_%lp162742%_
                                 (##unchecked-structure-ref
                                  _%e162744%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks162745%_)
                                _%e162744%_))))
                  (if (null? _%marks162745%_)
                      _%e162744%_
                      (if (pair? _%e162744%_)
                          (cons (gx#stx-wrap
                                 (##car _%e162744%_)
                                 _%marks162745%_)
                                (gx#stx-wrap
                                 (##cdr _%e162744%_)
                                 _%marks162745%_))
                          (if (vector? _%e162744%_)
                              (vector-map
                               (lambda (_%g162756162758%_)
                                 (gx#stx-wrap
                                  _%g162756162758%_
                                  _%marks162745%_))
                               _%e162744%_)
                              (if (box? _%e162744%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e162744%_)
                                        _%marks162745%_))
                                  _%e162744%_))))))
            (if (##structure-instance-of? _%stx162739%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx162739%_ '1 '#f '#f)
                _%stx162739%_))))
    (define gx#syntax->datum
      (lambda (_%stx162732%_)
        (if (##structure-instance-of? _%stx162732%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx162732%_ '1 '#f '#f))
            (if (pair? _%stx162732%_)
                (cons (gx#syntax->datum (##car _%stx162732%_))
                      (gx#syntax->datum (##cdr _%stx162732%_)))
                (if (vector? _%stx162732%_)
                    (vector-map gx#syntax->datum _%stx162732%_)
                    (if (box? _%stx162732%_)
                        (box (gx#syntax->datum (unbox _%stx162732%_)))
                        _%stx162732%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx162666%_ _%datum162667%_ _%src162668%_ _%quote?162669%_)
        (letrec ((_%wrap-datum162671%_
                  (lambda (_%e162704%_ _%marks162705%_)
                    (_%wrap-inner162673%_
                     _%e162704%_
                     (lambda (_%g162706162708%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g162706162708%_
                        _%src162668%_
                        _%marks162705%_)))))
                 (_%wrap-quote162672%_
                  (lambda (_%e162696%_ _%ctx162697%_ _%marks162698%_)
                    (_%wrap-inner162673%_
                     _%e162696%_
                     (lambda (_%g162699162701%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g162699162701%_
                        _%src162668%_
                        _%ctx162697%_
                        _%marks162698%_)))))
                 (_%wrap-inner162673%_
                  (lambda (_%e162684%_ _%wrap-e162685%_)
                    (let _%recur162687%_ ((_%e162689%_ _%e162684%_))
                      (if (symbol? _%e162689%_)
                          (_%wrap-e162685%_ _%e162689%_)
                          (if (pair? _%e162689%_)
                              (cons (_%recur162687%_ (##car _%e162689%_))
                                    (_%recur162687%_ (##cdr _%e162689%_)))
                              (if (vector? _%e162689%_)
                                  (vector-map _%recur162687%_ _%e162689%_)
                                  (if (box? _%e162689%_)
                                      (box (_%recur162687%_
                                            (unbox _%e162689%_)))
                                      _%e162689%_)))))))
                 (_%wrap-outer162674%_
                  (lambda (_%e162682%_)
                    (if (##structure-instance-of? _%e162682%_ 'gerbil#AST::t)
                        _%e162682%_
                        (##structure gx#AST::t _%e162682%_ _%src162668%_)))))
          (if (##structure-instance-of? _%datum162667%_ 'gerbil#AST::t)
              _%datum162667%_
              (if (not _%stx162666%_)
                  (##structure gx#AST::t _%datum162667%_ _%src162668%_)
                  (if (gx#identifier? _%stx162666%_)
                      (let ((_%stx162679%_ (gx#stx-unwrap__0 _%stx162666%_)))
                        (_%wrap-outer162674%_
                         (if (##structure-direct-instance-of?
                              _%stx162679%_
                              'gx#syntax-quote::t)
                             (if _%quote?162669%_
                                 (_%wrap-quote162672%_
                                  _%datum162667%_
                                  (##unchecked-structure-ref
                                   _%stx162679%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx162679%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum162671%_
                                  _%datum162667%_
                                  (##unchecked-structure-ref
                                   _%stx162679%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum162671%_
                              _%datum162667%_
                              (##unchecked-structure-ref
                               _%stx162679%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx162666%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx162714%_ _%datum162715%_)
        (let* ((_%src162717%_ '#f) (_%quote?162719%_ '#t))
          (gx#datum->syntax__%
           _%stx162714%_
           _%datum162715%_
           _%src162717%_
           _%quote?162719%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx162721%_ _%datum162722%_ _%src162723%_)
        (let ((_%quote?162725%_ '#t))
          (gx#datum->syntax__%
           _%stx162721%_
           _%datum162722%_
           _%src162723%_
           _%quote?162725%_))))
    (define gx#datum->syntax
      (lambda _g162865_
        (let ((_g162866_ (##length _g162865_)))
          (cond ((##fx= _g162866_ 2) (apply gx#datum->syntax__0 _g162865_))
                ((##fx= _g162866_ 3) (apply gx#datum->syntax__1 _g162865_))
                ((##fx= _g162866_ 4) (apply gx#datum->syntax__% _g162865_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g162865_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx162632%_ _%marks162633%_)
        (let _%lp162635%_ ((_%e162637%_ _%stx162632%_)
                           (_%marks162638%_ _%marks162633%_)
                           (_%src162639%_ (gx#stx-source _%stx162632%_)))
          (if (##structure-direct-instance-of? _%e162637%_ 'gx#syntax-wrap::t)
              (_%lp162635%_
               (##unchecked-structure-ref _%e162637%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e162637%_ '3 '#f '#f)
                _%marks162638%_)
               (##unchecked-structure-ref _%e162637%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e162637%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks162638%_)
                      _%e162637%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e162637%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e162637%_ '2 '#f '#f)
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e162637%_ '3 '#f '#f)
                        _%marks162638%_)))
                  (if (##structure-direct-instance-of?
                       _%e162637%_
                       'gx#syntax-quote::t)
                      _%e162637%_
                      (if (##structure-instance-of? _%e162637%_ 'gerbil#AST::t)
                          (_%lp162635%_
                           (##unchecked-structure-ref _%e162637%_ '1 '#f '#f)
                           _%marks162638%_
                           (##unchecked-structure-ref _%e162637%_ '2 '#f '#f))
                          (if (symbol? _%e162637%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e162637%_
                               _%src162639%_
                               (reverse _%marks162638%_))
                              (if (null? _%marks162638%_)
                                  _%e162637%_
                                  (if (pair? _%e162637%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e162637%_)
                                             _%marks162638%_)
                                            (gx#stx-wrap
                                             (##cdr _%e162637%_)
                                             _%marks162638%_))
                                      (if (vector? _%e162637%_)
                                          (vector-map
                                           (lambda (_%g162648162650%_)
                                             (gx#stx-wrap
                                              _%g162648162650%_
                                              _%marks162638%_))
                                           _%e162637%_)
                                          (if (box? _%e162637%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e162637%_)
                                                    _%marks162638%_))
                                              _%e162637%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx162658%_)
        (let ((_%marks162660%_ '()))
          (gx#stx-unwrap__% _%stx162658%_ _%marks162660%_))))
    (define gx#stx-unwrap
      (lambda _g162867_
        (let ((_g162868_ (##length _g162867_)))
          (cond ((##fx= _g162868_ 1) (apply gx#stx-unwrap__0 _g162867_))
                ((##fx= _g162868_ 2) (apply gx#stx-unwrap__% _g162867_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g162867_))))))
    (define gx#stx-wrap
      (lambda (_%stx162625%_ _%marks162626%_)
        (__foldl1
         (lambda (_%mark162628%_ _%stx162629%_)
           (gx#stx-apply-mark _%stx162629%_ _%mark162628%_))
         _%stx162625%_
         _%marks162626%_)))
    (define gx#stx-rewrap
      (lambda (_%stx162619%_ _%marks162620%_)
        (__foldr1
         (lambda (_%mark162622%_ _%stx162623%_)
           (gx#stx-apply-mark _%stx162623%_ _%mark162622%_))
         _%stx162619%_
         _%marks162620%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx162613%_ _%mark162614%_)
        (if (##structure-direct-instance-of? _%stx162613%_ 'gx#syntax-quote::t)
            _%stx162613%_
            (if (and (##structure-direct-instance-of?
                      _%stx162613%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark162614%_
                          (##unchecked-structure-ref
                           _%stx162613%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx162613%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx162613%_
                 (gx#stx-source _%stx162613%_)
                 _%mark162614%_)))))
    (define gx#apply-mark
      (lambda (_%mark162577%_ _%marks162578%_)
        (let* ((_%marks162579162587%_ _%marks162578%_)
               (_%else162581162595%_
                (lambda () (cons _%mark162577%_ _%marks162578%_)))
               (_%K162583162601%_
                (lambda (_%rest162598%_ _%hd162599%_)
                  (if (eq? _%mark162577%_ _%hd162599%_)
                      _%rest162598%_
                      (cons _%mark162577%_ _%marks162578%_)))))
          (if (pair? _%marks162579162587%_)
              (let ((_%hd162584162604%_ (##car _%marks162579162587%_))
                    (_%tl162585162606%_ (##cdr _%marks162579162587%_)))
                (let* ((_%hd162609%_ _%hd162584162604%_)
                       (_%rest162611%_ _%tl162585162606%_))
                  (_%K162583162601%_ _%rest162611%_ _%hd162609%_)))
              (_%else162581162595%_)))))
    (define gx#stx-e
      (lambda (_%stx162572%_)
        (if (##structure-direct-instance-of? _%stx162572%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx162572%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx162572%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx162572%_ '1 '#f '#f)
                _%stx162572%_))))
    (define gx#stx-source
      (lambda (_%stx162570%_)
        (if (##structure-instance-of? _%stx162570%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx162570%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx162564%_ _%src162565%_)
        (if (or (##structure-instance-of? _%stx162564%_ 'gerbil#AST::t)
                (not _%src162565%_))
            _%stx162564%_
            (##structure gx#AST::t _%stx162564%_ _%src162565%_))))
    (define gx#stx-datum?
      (lambda (_%stx162562%_) (gx#self-quoting? (gx#stx-e _%stx162562%_))))
    (define gx#self-quoting?
      (lambda (_%x162545%_)
        (let ((_%$e162547%_ (immediate? _%x162545%_)))
          (if _%$e162547%_
              _%$e162547%_
              (let ((_%$e162550%_ (number? _%x162545%_)))
                (if _%$e162550%_
                    _%$e162550%_
                    (let ((_%$e162553%_ (keyword? _%x162545%_)))
                      (if _%$e162553%_
                          _%$e162553%_
                          (let ((_%$e162556%_ (string? _%x162545%_)))
                            (if _%$e162556%_
                                _%$e162556%_
                                (let ((_%$e162559%_ (vector? _%x162545%_)))
                                  (if _%$e162559%_
                                      _%$e162559%_
                                      (u8vector? _%x162545%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e162543%_) (boolean? (gx#stx-e _%e162543%_))))
    (define gx#stx-keyword?
      (lambda (_%e162541%_) (keyword? (gx#stx-e _%e162541%_))))
    (define gx#stx-char? (lambda (_%e162539%_) (char? (gx#stx-e _%e162539%_))))
    (define gx#stx-number?
      (lambda (_%e162537%_) (number? (gx#stx-e _%e162537%_))))
    (define gx#stx-fixnum?
      (lambda (_%e162535%_) (fixnum? (gx#stx-e _%e162535%_))))
    (define gx#stx-string?
      (lambda (_%e162533%_) (string? (gx#stx-e _%e162533%_))))
    (define gx#stx-null? (lambda (_%e162531%_) (null? (gx#stx-e _%e162531%_))))
    (define gx#stx-pair? (lambda (_%e162529%_) (pair? (gx#stx-e _%e162529%_))))
    (define gx#stx-list?
      (lambda (_%e162491%_)
        (let* ((_%g162492162501%_ (gx#stx-e _%e162491%_))
               (_%E162495162505%_
                (lambda ()
                  (error '"No clause matching"
                         _%g162492162501%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K162497162521%_
                 (lambda (_%rest162519%_) (gx#stx-list? _%rest162519%_)))
                (_%K162496162511%_
                 (lambda (_%tail162509%_) (null? _%tail162509%_))))
            (if (pair? _%g162492162501%_)
                (let* ((_%tl162499162524%_ (##cdr _%g162492162501%_))
                       (_%rest162527%_ _%tl162499162524%_))
                  (gx#stx-list? _%rest162527%_))
                (let ((_%tail162514%_ _%g162492162501%_))
                  (null? _%tail162514%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e162484%_)
        (let* ((_%e162486%_ (gx#stx-e _%e162484%_))
               (_%$e162488%_ (pair? _%e162486%_)))
          (if _%$e162488%_ _%$e162488%_ (null? _%e162486%_)))))
    (define gx#stx-vector?
      (lambda (_%e162482%_) (vector? (gx#stx-e _%e162482%_))))
    (define gx#stx-box? (lambda (_%e162480%_) (box? (gx#stx-e _%e162480%_))))
    (define gx#stx-eq?
      (lambda (_%x162477%_ _%y162478%_)
        (eq? (gx#stx-e _%x162477%_) (gx#stx-e _%y162478%_))))
    (define gx#stx-eqv?
      (lambda (_%x162474%_ _%y162475%_)
        (eqv? (gx#stx-e _%x162474%_) (gx#stx-e _%y162475%_))))
    (define gx#stx-equal?
      (lambda (_%x162471%_ _%y162472%_)
        (equal? (gx#stx-e _%x162471%_) (gx#stx-e _%y162472%_))))
    (define gx#stx-false? (lambda (_%x162469%_) (not (gx#stx-e _%x162469%_))))
    (define gx#stx-identifier
      (lambda (_%template162466%_ . _%args162467%_)
        (gx#datum->syntax__1
         _%template162466%_
         (apply make-symbol (gx#syntax->datum _%args162467%_))
         (gx#stx-source _%template162466%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx162464%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx162464%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx162459%_)
        (if (##structure-direct-instance-of?
             _%stx162459%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx162459%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx162459%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx162459%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx162459%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx162455%_)
        (let ((_%stx162457%_ (gx#stx-unwrap__0 _%stx162455%_)))
          (if (gx#identifier-quote? _%stx162457%_)
              (##unchecked-structure-ref _%stx162457%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx162410%_)
        (let* ((_%g162411162421%_ (gx#stx-e _%stx162410%_))
               (_%else162414162429%_ (lambda () '#f)))
          (let ((_%K162417162443%_
                 (lambda (_%rest162440%_ _%hd162441%_)
                   (if (gx#identifier? _%hd162441%_)
                       (gx#identifier-list? _%rest162440%_)
                       '#f)))
                (_%K162416162434%_ (lambda () '#t)))
            (let ((_%try-match162413162437%_
                   (lambda ()
                     (if (null? _%g162411162421%_)
                         (_%K162416162434%_)
                         (_%else162414162429%_)))))
              (if (pair? _%g162411162421%_)
                  (let ((_%tl162419162448%_ (##cdr _%g162411162421%_))
                        (_%hd162418162446%_ (##car _%g162411162421%_)))
                    (let ((_%hd162451%_ _%hd162418162446%_)
                          (_%rest162453%_ _%tl162419162448%_))
                      (_%K162417162443%_ _%rest162453%_ _%hd162451%_)))
                  (_%try-match162413162437%_)))))))
    (define gx#genident__%
      (lambda (_%e162390%_ _%src162391%_)
        (gx#datum->syntax__1
         (if (gx#identifier? _%src162391%_) _%src162391%_ '#f)
         (##string->symbol
          (##symbol->string
           (##gensym
            (let ((_%e162393%_ (gx#stx-e _%e162390%_)))
              (if (symbol? _%e162393%_) _%e162393%_ 'g)))))
         _%src162391%_)))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e162399%_ 'g) (_%src162401%_ '#f))
          (gx#genident__% _%e162399%_ _%src162401%_))))
    (define gx#genident__1
      (lambda (_%e162403%_)
        (let ((_%src162405%_ '#f))
          (gx#genident__% _%e162403%_ _%src162405%_))))
    (define gx#genident
      (lambda _g162869_
        (let ((_g162870_ (##length _g162869_)))
          (cond ((##fx= _g162870_ 0) (apply gx#genident__0 _g162869_))
                ((##fx= _g162870_ 1) (apply gx#genident__1 _g162869_))
                ((##fx= _g162870_ 2) (apply gx#genident__% _g162869_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g162869_))))))
    (define gx#gentemps
      (lambda (_%stx-lst162385%_)
        (gx#stx-map1
         (lambda (_%x162387%_) (gx#genident__% _%x162387%_ _%x162387%_))
         _%stx-lst162385%_)))
    (define gx#syntax->list
      (lambda (_%stx162383%_) (gx#stx-map1 values _%stx162383%_)))
    (define gx#stx-car
      (lambda (_%stx162380%_)
        (declare (safe))
        (car (gx#syntax-e _%stx162380%_))))
    (define gx#stx-cdr
      (lambda (_%stx162377%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx162377%_))))
    (define gx#stx-length
      (lambda (_%stx162342%_)
        (let _%lp162344%_ ((_%rest162346%_ _%stx162342%_) (_%n162347%_ '0))
          (let* ((_%g162348162356%_ (gx#stx-e _%rest162346%_))
                 (_%else162350162364%_ (lambda () _%n162347%_))
                 (_%K162352162369%_
                  (lambda (_%rest162367%_)
                    (_%lp162344%_ _%rest162367%_ (##fx+ _%n162347%_ '1)))))
            (if (pair? _%g162348162356%_)
                (let* ((_%tl162354162372%_ (##cdr _%g162348162356%_))
                       (_%rest162375%_ _%tl162354162372%_))
                  (_%K162352162369%_ _%rest162375%_))
                (_%else162350162364%_))))))
    (define gx#stx-for-each
      (lambda _g162871_
        (let ((_g162872_ (##length _g162871_)))
          (cond ((##fx= _g162872_ 2) (apply gx#stx-for-each1 _g162871_))
                ((##fx= _g162872_ 3) (apply gx#stx-for-each2 _g162871_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g162871_))))))
    (define gx#stx-for-each1
      (lambda (_%f162285%_ _%stx162286%_)
        (if (procedure? _%f162285%_)
            '#!void
            (error '"expected procedure" _%f162285%_))
        (let _%lp162288%_ ((_%rest162290%_ _%stx162286%_))
          (let* ((_%g162291162301%_ (gx#syntax-e _%rest162290%_))
                 (_%else162294162309%_
                  (lambda () (_%f162285%_ _%rest162290%_))))
            (let ((_%K162297162323%_
                   (lambda (_%rest162320%_ _%hd162321%_)
                     (_%f162285%_ _%hd162321%_)
                     (_%lp162288%_ _%rest162320%_)))
                  (_%K162296162314%_ (lambda () '#!void)))
              (let ((_%try-match162293162317%_
                     (lambda ()
                       (if (null? _%g162291162301%_)
                           (_%K162296162314%_)
                           (_%else162294162309%_)))))
                (if (pair? _%g162291162301%_)
                    (let ((_%tl162299162328%_ (##cdr _%g162291162301%_))
                          (_%hd162298162326%_ (##car _%g162291162301%_)))
                      (let ((_%hd162331%_ _%hd162298162326%_)
                            (_%rest162333%_ _%tl162299162328%_))
                        (_%K162297162323%_ _%rest162333%_ _%hd162331%_)))
                    (_%try-match162293162317%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f162190%_ _%xstx162191%_ _%ystx162192%_)
        (if (procedure? _%f162190%_)
            '#!void
            (error '"expected procedure" _%f162190%_))
        (let _%lp162194%_ ((_%xrest162196%_ _%xstx162191%_)
                           (_%yrest162197%_ _%ystx162192%_))
          (let* ((_%g162198162208%_ (gx#syntax-e _%xrest162196%_))
                 (_%else162201162216%_ (lambda () '#!void)))
            (let ((_%K162204162273%_
                   (lambda (_%xrest162242%_ _%xhd162243%_)
                     (let* ((_%g162244162251%_ (gx#syntax-e _%yrest162197%_))
                            (_%E162246162255%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g162244162251%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K162247162261%_
                             (lambda (_%yrest162258%_ _%yhd162259%_)
                               (_%f162190%_ _%xhd162243%_ _%yhd162259%_)
                               (_%lp162194%_
                                _%xrest162242%_
                                _%yrest162258%_))))
                       (if (pair? _%g162244162251%_)
                           (let ((_%hd162248162264%_ (##car _%g162244162251%_))
                                 (_%tl162249162266%_
                                  (##cdr _%g162244162251%_)))
                             (let* ((_%yhd162269%_ _%hd162248162264%_)
                                    (_%yrest162271%_ _%tl162249162266%_))
                               (_%K162247162261%_
                                _%yrest162271%_
                                _%yhd162269%_)))
                           (_%E162246162255%_)))))
                  (_%K162203162236%_
                   (lambda ()
                     (let* ((_%yrest162220162225%_ _%yrest162197%_)
                            (_%E162222162229%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest162220162225%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K162223162233%_
                             (lambda ()
                               (_%f162190%_ _%xrest162196%_ _%yrest162197%_))))
                       (if (gx#stx-null? _%yrest162220162225%_)
                           (_%E162222162229%_)
                           (_%K162223162233%_))))))
              (let ((_%try-match162200162239%_
                     (lambda ()
                       (if (null? _%g162198162208%_)
                           (_%else162201162216%_)
                           (_%K162203162236%_)))))
                (if (pair? _%g162198162208%_)
                    (let ((_%tl162206162278%_ (##cdr _%g162198162208%_))
                          (_%hd162205162276%_ (##car _%g162198162208%_)))
                      (let ((_%xhd162281%_ _%hd162205162276%_)
                            (_%xrest162283%_ _%tl162206162278%_))
                        (_%K162204162273%_ _%xrest162283%_ _%xhd162281%_)))
                    (_%try-match162200162239%_))))))))
    (define gx#stx-map
      (lambda _g162873_
        (let ((_g162874_ (##length _g162873_)))
          (cond ((##fx= _g162874_ 2) (apply gx#stx-map1 _g162873_))
                ((##fx= _g162874_ 3) (apply gx#stx-map2 _g162873_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g162873_))))))
    (define gx#stx-map1
      (lambda (_%f162133%_ _%stx162134%_)
        (if (procedure? _%f162133%_)
            '#!void
            (error '"expected procedure" _%f162133%_))
        (let _%recur162136%_ ((_%rest162138%_ _%stx162134%_))
          (let* ((_%g162139162149%_ (gx#syntax-e _%rest162138%_))
                 (_%else162142162157%_
                  (lambda () (_%f162133%_ _%rest162138%_))))
            (let ((_%K162145162171%_
                   (lambda (_%rest162168%_ _%hd162169%_)
                     (cons (_%f162133%_ _%hd162169%_)
                           (_%recur162136%_ _%rest162168%_))))
                  (_%K162144162162%_ (lambda () '())))
              (let ((_%try-match162141162165%_
                     (lambda ()
                       (if (null? _%g162139162149%_)
                           (_%K162144162162%_)
                           (_%else162142162157%_)))))
                (if (pair? _%g162139162149%_)
                    (let ((_%tl162147162176%_ (##cdr _%g162139162149%_))
                          (_%hd162146162174%_ (##car _%g162139162149%_)))
                      (let ((_%hd162179%_ _%hd162146162174%_)
                            (_%rest162181%_ _%tl162147162176%_))
                        (_%K162145162171%_ _%rest162181%_ _%hd162179%_)))
                    (_%try-match162141162165%_))))))))
    (define gx#stx-map2
      (lambda (_%f162038%_ _%xstx162039%_ _%ystx162040%_)
        (if (procedure? _%f162038%_)
            '#!void
            (error '"expected procedure" _%f162038%_))
        (let _%recur162042%_ ((_%xrest162044%_ _%xstx162039%_)
                              (_%yrest162045%_ _%ystx162040%_))
          (let* ((_%g162046162056%_ (gx#syntax-e _%xrest162044%_))
                 (_%else162049162064%_ (lambda () '())))
            (let ((_%K162052162121%_
                   (lambda (_%xrest162090%_ _%xhd162091%_)
                     (let* ((_%g162092162099%_ (gx#syntax-e _%yrest162045%_))
                            (_%E162094162103%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g162092162099%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K162095162109%_
                             (lambda (_%yrest162106%_ _%yhd162107%_)
                               (cons (_%f162038%_ _%xhd162091%_ _%yhd162107%_)
                                     (_%recur162042%_
                                      _%xrest162090%_
                                      _%yrest162106%_)))))
                       (if (pair? _%g162092162099%_)
                           (let ((_%hd162096162112%_ (##car _%g162092162099%_))
                                 (_%tl162097162114%_
                                  (##cdr _%g162092162099%_)))
                             (let* ((_%yhd162117%_ _%hd162096162112%_)
                                    (_%yrest162119%_ _%tl162097162114%_))
                               (_%K162095162109%_
                                _%yrest162119%_
                                _%yhd162117%_)))
                           (_%E162094162103%_)))))
                  (_%K162051162084%_
                   (lambda ()
                     (let* ((_%yrest162068162073%_ _%yrest162045%_)
                            (_%E162070162077%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest162068162073%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K162071162081%_
                             (lambda ()
                               (_%f162038%_ _%xrest162044%_ _%yrest162045%_))))
                       (if (gx#stx-null? _%yrest162068162073%_)
                           (_%E162070162077%_)
                           (_%K162071162081%_))))))
              (let ((_%try-match162048162087%_
                     (lambda ()
                       (if (null? _%g162046162056%_)
                           (_%else162049162064%_)
                           (_%K162051162084%_)))))
                (if (pair? _%g162046162056%_)
                    (let ((_%tl162054162126%_ (##cdr _%g162046162056%_))
                          (_%hd162053162124%_ (##car _%g162046162056%_)))
                      (let ((_%xhd162129%_ _%hd162053162124%_)
                            (_%xrest162131%_ _%tl162054162126%_))
                        (_%K162052162121%_ _%xrest162131%_ _%xhd162129%_)))
                    (_%try-match162048162087%_))))))))
    (define gx#stx-andmap
      (lambda (_%f161988%_ _%stx161989%_)
        (if (procedure? _%f161988%_)
            '#!void
            (error '"expected procedure" _%f161988%_))
        (let _%lp161991%_ ((_%rest161993%_ _%stx161989%_))
          (let* ((_%g161994162004%_ (gx#syntax-e _%rest161993%_))
                 (_%else161997162012%_
                  (lambda () (_%f161988%_ _%rest161993%_))))
            (let ((_%K162000162026%_
                   (lambda (_%rest162023%_ _%hd162024%_)
                     (if (_%f161988%_ _%hd162024%_)
                         (_%lp161991%_ _%rest162023%_)
                         '#f)))
                  (_%K161999162017%_ (lambda () '#t)))
              (let ((_%try-match161996162020%_
                     (lambda ()
                       (if (null? _%g161994162004%_)
                           (_%K161999162017%_)
                           (_%else161997162012%_)))))
                (if (pair? _%g161994162004%_)
                    (let ((_%tl162002162031%_ (##cdr _%g161994162004%_))
                          (_%hd162001162029%_ (##car _%g161994162004%_)))
                      (let ((_%hd162034%_ _%hd162001162029%_)
                            (_%rest162036%_ _%tl162002162031%_))
                        (_%K162000162026%_ _%rest162036%_ _%hd162034%_)))
                    (_%try-match161996162020%_))))))))
    (define gx#stx-ormap
      (lambda (_%f161935%_ _%stx161936%_)
        (if (procedure? _%f161935%_)
            '#!void
            (error '"expected procedure" _%f161935%_))
        (let _%lp161938%_ ((_%rest161940%_ _%stx161936%_))
          (let* ((_%g161941161951%_ (gx#syntax-e _%rest161940%_))
                 (_%else161944161959%_
                  (lambda () (_%f161935%_ _%rest161940%_))))
            (let ((_%K161947161976%_
                   (lambda (_%rest161970%_ _%hd161971%_)
                     (let ((_%$e161973%_ (_%f161935%_ _%hd161971%_)))
                       (if _%$e161973%_
                           _%$e161973%_
                           (_%lp161938%_ _%rest161970%_)))))
                  (_%K161946161964%_ (lambda () '#f)))
              (let ((_%try-match161943161967%_
                     (lambda ()
                       (if (null? _%g161941161951%_)
                           (_%K161946161964%_)
                           (_%else161944161959%_)))))
                (if (pair? _%g161941161951%_)
                    (let ((_%tl161949161981%_ (##cdr _%g161941161951%_))
                          (_%hd161948161979%_ (##car _%g161941161951%_)))
                      (let ((_%hd161984%_ _%hd161948161979%_)
                            (_%rest161986%_ _%tl161949161981%_))
                        (_%K161947161976%_ _%rest161986%_ _%hd161984%_)))
                    (_%try-match161943161967%_))))))))
    (define gx#stx-foldl
      (lambda (_%f161883%_ _%iv161884%_ _%stx161885%_)
        (if (procedure? _%f161883%_)
            '#!void
            (error '"expected procedure" _%f161883%_))
        (let _%lp161887%_ ((_%r161889%_ _%iv161884%_)
                           (_%rest161890%_ _%stx161885%_))
          (let* ((_%g161891161901%_ (gx#syntax-e _%rest161890%_))
                 (_%else161894161909%_
                  (lambda () (_%f161883%_ _%rest161890%_ _%r161889%_))))
            (let ((_%K161897161923%_
                   (lambda (_%rest161920%_ _%hd161921%_)
                     (_%lp161887%_
                      (_%f161883%_ _%hd161921%_ _%r161889%_)
                      _%rest161920%_)))
                  (_%K161896161914%_ (lambda () _%r161889%_)))
              (let ((_%try-match161893161917%_
                     (lambda ()
                       (if (null? _%g161891161901%_)
                           (_%K161896161914%_)
                           (_%else161894161909%_)))))
                (if (pair? _%g161891161901%_)
                    (let ((_%tl161899161928%_ (##cdr _%g161891161901%_))
                          (_%hd161898161926%_ (##car _%g161891161901%_)))
                      (let ((_%hd161931%_ _%hd161898161926%_)
                            (_%rest161933%_ _%tl161899161928%_))
                        (_%K161897161923%_ _%rest161933%_ _%hd161931%_)))
                    (_%try-match161893161917%_))))))))
    (define gx#stx-foldr
      (lambda (_%f161832%_ _%iv161833%_ _%stx161834%_)
        (if (procedure? _%f161832%_)
            '#!void
            (error '"expected procedure" _%f161832%_))
        (let _%recur161836%_ ((_%rest161838%_ _%stx161834%_))
          (let* ((_%g161839161849%_ (gx#syntax-e _%rest161838%_))
                 (_%else161842161857%_
                  (lambda () (_%f161832%_ _%rest161838%_ _%iv161833%_))))
            (let ((_%K161845161871%_
                   (lambda (_%rest161868%_ _%hd161869%_)
                     (_%f161832%_
                      _%hd161869%_
                      (_%recur161836%_ _%rest161868%_))))
                  (_%K161844161862%_ (lambda () _%iv161833%_)))
              (let ((_%try-match161841161865%_
                     (lambda ()
                       (if (null? _%g161839161849%_)
                           (_%K161844161862%_)
                           (_%else161842161857%_)))))
                (if (pair? _%g161839161849%_)
                    (let ((_%tl161847161876%_ (##cdr _%g161839161849%_))
                          (_%hd161846161874%_ (##car _%g161839161849%_)))
                      (let ((_%hd161879%_ _%hd161846161874%_)
                            (_%rest161881%_ _%tl161847161876%_))
                        (_%K161845161871%_ _%rest161881%_ _%hd161879%_)))
                    (_%try-match161841161865%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx161830%_) (gx#stx-foldl cons '() _%stx161830%_)))
    (define gx#stx-last
      (lambda (_%stx161791%_)
        (let _%lp161793%_ ((_%rest161795%_ _%stx161791%_))
          (let* ((_%g161796161804%_ (gx#syntax-e _%rest161795%_))
                 (_%else161798161812%_ (lambda () _%rest161795%_))
                 (_%K161800161818%_
                  (lambda (_%rest161815%_ _%hd161816%_)
                    (if (gx#stx-null? _%rest161815%_)
                        _%hd161816%_
                        (_%lp161793%_ _%rest161815%_)))))
            (if (pair? _%g161796161804%_)
                (let ((_%hd161801161821%_ (##car _%g161796161804%_))
                      (_%tl161802161823%_ (##cdr _%g161796161804%_)))
                  (let* ((_%hd161826%_ _%hd161801161821%_)
                         (_%rest161828%_ _%tl161802161823%_))
                    (_%K161800161818%_ _%rest161828%_ _%hd161826%_)))
                (_%else161798161812%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx161762%_)
        (let _%lp161764%_ ((_%hd161766%_ _%stx161762%_))
          (let* ((_%g161767161774%_ (gx#syntax-e _%hd161766%_))
                 (_%E161769161778%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g161767161774%_
                           '([_ . rest]))
                    '#!void))
                 (_%K161770161783%_
                  (lambda (_%rest161781%_)
                    (if (gx#stx-pair? _%rest161781%_)
                        (_%lp161764%_ _%rest161781%_)
                        _%hd161766%_))))
            (if (pair? _%g161767161774%_)
                (let* ((_%tl161772161786%_ (##cdr _%g161767161774%_))
                       (_%rest161789%_ _%tl161772161786%_))
                  (_%K161770161783%_ _%rest161789%_))
                (_%E161769161778%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx161731%_ _%k161732%_)
        (let _%lp161734%_ ((_%rest161736%_ _%stx161731%_)
                           (_%k161737%_ _%k161732%_))
          (if (fxpositive? _%k161737%_)
              (let* ((_%g161738161745%_ (gx#syntax-e _%rest161736%_))
                     (_%E161740161749%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g161738161745%_
                               '([_ . rest]))
                        '#!void))
                     (_%K161741161754%_
                      (lambda (_%rest161752%_)
                        (_%lp161734%_ _%rest161752%_ (##fx- _%k161737%_ '1)))))
                (if (pair? _%g161738161745%_)
                    (let* ((_%tl161743161757%_ (##cdr _%g161738161745%_))
                           (_%rest161760%_ _%tl161743161757%_))
                      (_%K161741161754%_ _%rest161760%_))
                    (_%E161740161749%_)))
              _%rest161736%_))))
    (define gx#stx-list-ref
      (lambda (_%stx161728%_ _%k161729%_)
        (gx#stx-car (gx#stx-list-tail _%stx161728%_ _%k161729%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx161640%_ _%key?161641%_)
        (if (procedure? _%key?161641%_)
            '#!void
            (error '"expected procedure" _%key?161641%_))
        (let _%lp161643%_ ((_%rest161645%_ _%stx161640%_))
          (let* ((_%g161646161656%_ (gx#stx-e _%rest161645%_))
                 (_%else161649161664%_ (lambda () '#f)))
            (let ((_%K161652161706%_
                   (lambda (_%rest161675%_ _%hd161676%_)
                     (if (_%key?161641%_ _%hd161676%_)
                         (let* ((_%g161677161685%_ (gx#stx-e _%rest161675%_))
                                (_%else161679161693%_ (lambda () '#f))
                                (_%K161681161698%_
                                 (lambda (_%rest161696%_)
                                   (_%lp161643%_ _%rest161696%_))))
                           (if (pair? _%g161677161685%_)
                               (let* ((_%tl161683161701%_
                                       (##cdr _%g161677161685%_))
                                      (_%rest161704%_ _%tl161683161701%_))
                                 (_%lp161643%_ _%rest161704%_))
                               (_%else161679161693%_)))
                         '#f)))
                  (_%K161651161669%_ (lambda () '#t)))
              (let ((_%try-match161648161672%_
                     (lambda ()
                       (if (null? _%g161646161656%_)
                           (_%K161651161669%_)
                           (_%else161649161664%_)))))
                (if (pair? _%g161646161656%_)
                    (let ((_%tl161654161711%_ (##cdr _%g161646161656%_))
                          (_%hd161653161709%_ (##car _%g161646161656%_)))
                      (let ((_%hd161714%_ _%hd161653161709%_)
                            (_%rest161716%_ _%tl161654161711%_))
                        (_%K161652161706%_ _%rest161716%_ _%hd161714%_)))
                    (_%try-match161648161672%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx161721%_)
        (let ((_%key?161723%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx161721%_ _%key?161723%_))))
    (define gx#stx-plist?
      (lambda _g162875_
        (let ((_g162876_ (##length _g162875_)))
          (cond ((##fx= _g162876_ 1) (apply gx#stx-plist?__0 _g162875_))
                ((##fx= _g162876_ 2) (apply gx#stx-plist?__% _g162875_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g162875_))))))
    (define gx#stx-getq__%
      (lambda (_%key161558%_ _%stx161559%_ _%key=?161560%_)
        (if (procedure? _%key=?161560%_)
            '#!void
            (error '"expected procedure" _%key=?161560%_))
        (let _%lp161562%_ ((_%rest161564%_ _%stx161559%_))
          (let* ((_%g161565161573%_ (gx#syntax-e _%rest161564%_))
                 (_%else161567161581%_ (lambda () '#f))
                 (_%K161569161615%_
                  (lambda (_%rest161584%_ _%hd161585%_)
                    (let* ((_%g161586161593%_ (gx#syntax-e _%rest161584%_))
                           (_%E161588161597%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g161586161593%_
                                     '([val . rest]))
                              '#!void))
                           (_%K161589161603%_
                            (lambda (_%rest161600%_ _%val161601%_)
                              (if (_%key=?161560%_ _%hd161585%_ _%key161558%_)
                                  _%val161601%_
                                  (_%lp161562%_ _%rest161600%_)))))
                      (if (pair? _%g161586161593%_)
                          (let ((_%hd161590161606%_ (##car _%g161586161593%_))
                                (_%tl161591161608%_ (##cdr _%g161586161593%_)))
                            (let* ((_%val161611%_ _%hd161590161606%_)
                                   (_%rest161613%_ _%tl161591161608%_))
                              (_%K161589161603%_
                               _%rest161613%_
                               _%val161611%_)))
                          (_%E161588161597%_))))))
            (if (pair? _%g161565161573%_)
                (let ((_%hd161570161618%_ (##car _%g161565161573%_))
                      (_%tl161571161620%_ (##cdr _%g161565161573%_)))
                  (let* ((_%hd161623%_ _%hd161570161618%_)
                         (_%rest161625%_ _%tl161571161620%_))
                    (_%K161569161615%_ _%rest161625%_ _%hd161623%_)))
                (_%else161567161581%_))))))
    (define gx#stx-getq__0
      (lambda (_%key161630%_ _%stx161631%_)
        (let ((_%key=?161633%_ gx#stx-eq?))
          (gx#stx-getq__% _%key161630%_ _%stx161631%_ _%key=?161633%_))))
    (define gx#stx-getq
      (lambda _g162877_
        (let ((_g162878_ (##length _g162877_)))
          (cond ((##fx= _g162878_ 2) (apply gx#stx-getq__0 _g162877_))
                ((##fx= _g162878_ 3) (apply gx#stx-getq__% _g162877_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g162877_))))))))

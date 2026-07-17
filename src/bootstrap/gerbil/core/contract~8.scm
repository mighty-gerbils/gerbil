(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ClassMeta[1]#meta-object-methods!|
    (lambda (_%meta62113%_)
      (let ((_%$e62116%_
             (let ((__obj105018 _%meta62113%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj105018
                      'gerbil/core#meta-object::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj105018 '1 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#meta-object::t
                    __obj105018
                    'methods)))))
        (if _%$e62116%_
            _%$e62116%_
            (let ((_%tab62122%_ (make-hash-table-eq)))
              (let ((__obj105019 _%meta62113%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-direct-instance-of?
                       __obj105019
                       'gerbil/core#meta-object::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj105019
                       _%tab62122%_
                       '1
                       '#f
                       '#f))
                    (class-slot-set!
                     gerbil/core/mop~MOP-2#meta-object::t
                     __obj105019
                     'methods
                     _%tab62122%_)))
              _%tab62122%_)))))
  (define |gerbil/core/contract~ClassMeta[:0:]#@call-meta-object|
    (lambda (_%stx62125%_)
      (let* ((_%$%g6212862159%_
              (lambda (_%$%g6212962155%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g6212962155%_)))
             (_%$%g6212762271%_
              (lambda (_%$%g6212962163%_)
                (if (gx#stx-pair? _%$%g6212962163%_)
                    (let ((_%$%e6213362166%_ (gx#syntax-e _%$%g6212962163%_)))
                      (let ((_%$%hd6213462170%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e6213362166%_)))
                            (_%$%tl6213562173%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e6213362166%_))))
                        (if (gx#stx-pair? _%$%tl6213562173%_)
                            (let ((_%$%e6213662176%_
                                   (gx#syntax-e _%$%tl6213562173%_)))
                              (let ((_%$%hd6213762180%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e6213662176%_)))
                                    (_%$%tl6213862183%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e6213662176%_))))
                                (if (gx#stx-pair? _%$%tl6213862183%_)
                                    (let ((_%$%e6213962186%_
                                           (gx#syntax-e _%$%tl6213862183%_)))
                                      (let ((_%$%hd6214062190%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e6213962186%_)))
                                            (_%$%tl6214162193%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e6213962186%_))))
                                        (if (gx#stx-pair? _%$%hd6214062190%_)
                                            (let ((_%$%e6214262196%_
                                                   (gx#syntax-e
                                                    _%$%hd6214062190%_)))
                                              (let ((_%$%hd6214362200%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e6214262196%_)))
                                                    (_%$%tl6214462203%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e6214262196%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl6214462203%_)
                                                    (let ((_g105228_
                                                           (gx#syntax-split-splice
                                                            _%$%tl6214462203%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g105229_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g105228_)
                             (##values-length _g105228_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g105229_ 2)))
                      (error "Context expects 2 values" _g105229_)))
                (let ((_%$%target6214562206%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g105228_ 0)))
                      (_%$%tl6214762209%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g105228_ 1))))
                  (if (gx#stx-null? _%$%tl6214762209%_)
                      (letrec ((_%$%loop6214862212%_
                                (lambda (_%$%hd6214662216%_
                                         _%$%arg6215262219%_)
                                  (if (gx#stx-pair? _%$%hd6214662216%_)
                                      (let ((_%$%e6214962221%_
                                             (gx#syntax-e _%$%hd6214662216%_)))
                                        (let ((_%$%lp-hd6215062225%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e6214962221%_)))
                                              (_%$%lp-tl6215162228%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e6214962221%_))))
                                          (_%$%loop6214862212%_
                                           _%$%lp-tl6215162228%_
                                           (cons _%$%lp-hd6215062225%_
                                                 _%$%arg6215262219%_))))
                                      (let ((_%$%arg6215362231%_
                                             (reverse _%$%arg6215262219%_)))
                                        (if (gx#stx-null? _%$%tl6214162193%_)
                                            (if (gx#identifier?
                                                 _%$%hd6214362200%_)
                                                (let ((_%meta62260%_
                                                       (gx#syntax-local-value
                                                        _%$%hd6213762180%_
                                                        false)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (class-instance?
                                                         gerbil/core/mop~MOP-2#meta-object::t
                                                         _%meta62260%_))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"not a meta-object"
                                                       _%stx62125%_
                                                       _%$%hd6213762180%_
                                                       _%meta62260%_))
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'let)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'meta)
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'syntax-local-value)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'syntax)
                                                    (cons _%$%hd6213762180%_
                                                          '()))
                                              '()))
                                  '()))
                      (cons (cons (gx#datum->syntax '#f 'call-meta-object)
                                  (cons (gx#datum->syntax '#f 'meta)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote)
                                                    (cons _%$%hd6214362200%_
                                                          '()))
                                              (foldr (lambda (_%$%g6226262265%_
                                                              _%$%g6226362268%_)
                                                       (cons _%$%g6226262265%_
                                                             _%$%g6226362268%_))
                                                     '()
                                                     _%$%arg6215362231%_))))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g6212862159%_
                                                 _%$%g6212962163%_))
                                            (_%$%g6212862159%_
                                             _%$%g6212962163%_)))))))
                        (_%$%loop6214862212%_ _%$%target6214562206%_ '()))
                      (_%$%g6212862159%_ _%$%g6212962163%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g6212862159%_
                                                     _%$%g6212962163%_))))
                                            (_%$%g6212862159%_
                                             _%$%g6212962163%_))))
                                    (_%$%g6212862159%_ _%$%g6212962163%_))))
                            (_%$%g6212862159%_ _%$%g6212962163%_))))
                    (_%$%g6212862159%_ _%$%g6212962163%_)))))
        (_%$%g6212762271%_ _%stx62125%_))))
  (define |gerbil/core/contract~ClassMeta[:0:]#defmethod-for-meta|
    (lambda (_%stx62276%_)
      (let* ((_%$%g6227962324%_
              (lambda (_%$%g6228062320%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g6228062320%_)))
             (_%$%g6227862492%_
              (lambda (_%$%g6228062328%_)
                (if (gx#stx-pair? _%$%g6228062328%_)
                    (let ((_%$%e6228662331%_ (gx#syntax-e _%$%g6228062328%_)))
                      (let ((_%$%hd6228762335%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e6228662331%_)))
                            (_%$%tl6228862338%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e6228662331%_))))
                        (if (gx#stx-pair? _%$%tl6228862338%_)
                            (let ((_%$%e6228962341%_
                                   (gx#syntax-e _%$%tl6228862338%_)))
                              (let ((_%$%hd6229062345%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e6228962341%_)))
                                    (_%$%tl6229162348%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e6228962341%_))))
                                (if (gx#stx-pair? _%$%tl6229162348%_)
                                    (let ((_%$%e6229262351%_
                                           (gx#syntax-e _%$%tl6229162348%_)))
                                      (let ((_%$%hd6229362355%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e6229262351%_)))
                                            (_%$%tl6229462358%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e6229262351%_))))
                                        (if (gx#stx-pair? _%$%hd6229362355%_)
                                            (let ((_%$%e6229562361%_
                                                   (gx#syntax-e
                                                    _%$%hd6229362355%_)))
                                              (let ((_%$%hd6229662365%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e6229562361%_)))
                                                    (_%$%tl6229762368%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e6229562361%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl6229762368%_)
                                                    (let ((_g105230_
                                                           (gx#syntax-split-splice
                                                            _%$%tl6229762368%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g105231_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g105230_)
                             (##values-length _g105230_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g105231_ 2)))
                      (error "Context expects 2 values" _g105231_)))
                (let ((_%$%target6229862371%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g105230_ 0)))
                      (_%$%tl6230062374%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g105230_ 1))))
                  (if (gx#stx-null? _%$%tl6230062374%_)
                      (letrec ((_%$%loop6230162377%_
                                (lambda (_%$%hd6229962381%_
                                         _%$%arg6230562384%_)
                                  (if (gx#stx-pair? _%$%hd6229962381%_)
                                      (let ((_%$%e6230262386%_
                                             (gx#syntax-e _%$%hd6229962381%_)))
                                        (let ((_%$%lp-hd6230362390%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e6230262386%_)))
                                              (_%$%lp-tl6230462393%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e6230262386%_))))
                                          (_%$%loop6230162377%_
                                           _%$%lp-tl6230462393%_
                                           (cons _%$%lp-hd6230362390%_
                                                 _%$%arg6230562384%_))))
                                      (let ((_%$%arg6230662396%_
                                             (reverse _%$%arg6230562384%_)))
                                        (if (gx#stx-pair? _%$%tl6229462358%_)
                                            (let ((_%$%e6230762399%_
                                                   (gx#syntax-e
                                                    _%$%tl6229462358%_)))
                                              (let ((_%$%hd6230862403%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e6230762399%_)))
                                                    (_%$%tl6230962406%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e6230762399%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl6230962406%_)
                                                    (let ((_g105232_
                                                           (gx#syntax-split-splice
                                                            _%$%tl6230962406%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g105233_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g105232_)
                             (##values-length _g105232_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g105233_ 2)))
                      (error "Context expects 2 values" _g105233_)))
                (let ((_%$%target6231062409%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g105232_ 0)))
                      (_%$%tl6231262412%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g105232_ 1))))
                  (if (gx#stx-null? _%$%tl6231262412%_)
                      (letrec ((_%$%loop6231362415%_
                                (lambda (_%$%hd6231162419%_
                                         _%$%rest6231762422%_)
                                  (if (gx#stx-pair? _%$%hd6231162419%_)
                                      (let ((_%$%e6231462424%_
                                             (gx#syntax-e _%$%hd6231162419%_)))
                                        (let ((_%$%lp-hd6231562428%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e6231462424%_)))
                                              (_%$%lp-tl6231662431%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e6231462424%_))))
                                          (_%$%loop6231362415%_
                                           _%$%lp-tl6231662431%_
                                           (cons _%$%lp-hd6231562428%_
                                                 _%$%rest6231762422%_))))
                                      (let ((_%$%rest6231862434%_
                                             (reverse _%$%rest6231762422%_)))
                                        (if (gx#identifier? _%$%hd6229662365%_)
                                            (let ((_%meta62473%_
                                                   (gx#syntax-local-value
                                                    _%$%hd6229062345%_
                                                    false)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (class-instance?
                                                     gerbil/core/mop~MOP-2#meta-object::t
                                                     _%meta62473%_))
                                                  '#!void
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"not a meta-object"
                                                   _%stx62276%_
                                                   _%$%hd6229062345%_
                                                   _%meta62473%_))
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-syntax)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'let)
                        (cons (cons (gx#datum->syntax '#f 'tab)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'meta-object-methods!)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'syntax-local-value)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'syntax)
                                (cons _%$%hd6229062345%_ '()))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              (cons (cons (gx#datum->syntax '#f 'hash-put!)
                                          (cons (gx#datum->syntax '#f 'tab)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%$%hd6229662365%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons (gx#datum->syntax '#f 'lambda)
                          (cons (foldr (lambda (_%$%g6247562480%_
                                                _%$%g6247662483%_)
                                         (cons _%$%g6247562480%_
                                               _%$%g6247662483%_))
                                       '()
                                       _%$%arg6230662396%_)
                                (cons _%$%hd6230862403%_
                                      (foldr (lambda (_%$%g6247762486%_
                                                      _%$%g6247862489%_)
                                               (cons _%$%g6247762486%_
                                                     _%$%g6247862489%_))
                                             '()
                                             _%$%rest6231862434%_))))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g6227962324%_
                                             _%$%g6228062328%_)))))))
                        (_%$%loop6231362415%_ _%$%target6231062409%_ '()))
                      (_%$%g6227962324%_ _%$%g6228062328%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g6227962324%_
                                                     _%$%g6228062328%_))))
                                            (_%$%g6227962324%_
                                             _%$%g6228062328%_)))))))
                        (_%$%loop6230162377%_ _%$%target6229862371%_ '()))
                      (_%$%g6227962324%_ _%$%g6228062328%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g6227962324%_
                                                     _%$%g6228062328%_))))
                                            (_%$%g6227962324%_
                                             _%$%g6228062328%_))))
                                    (_%$%g6227962324%_ _%$%g6228062328%_))))
                            (_%$%g6227962324%_ _%$%g6228062328%_))))
                    (_%$%g6227962324%_ _%$%g6228062328%_)))))
        (_%$%g6227862492%_ _%stx62276%_)))))

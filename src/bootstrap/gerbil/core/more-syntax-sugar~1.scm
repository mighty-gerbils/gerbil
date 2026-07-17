(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-syntax-sugar[1]#_g50190_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-syntax-sugar[1]#_g50191_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-syntax-sugar[1]#_g50192_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/more-syntax-sugar[:0:]#identifier-rules|
      (lambda (_%$stx49198%_)
        (let* ((_%$%g4920249213%_
                (lambda (_%$%g4920349209%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4920349209%_)))
               (_%$%g4920149243%_
                (lambda (_%$%g4920349217%_)
                  (if (gx#stx-pair? _%$%g4920349217%_)
                      (let ((_%$%e4920549220%_
                             (gx#syntax-e _%$%g4920349217%_)))
                        (let ((_%$%hd4920649224%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4920549220%_)))
                              (_%$%tl4920749227%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4920549220%_))))
                          (cons (gx#datum->syntax '#f 'make-setq-macro)
                                (cons 'macro:
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'syntax-rules)
                                                  _%$%tl4920749227%_)
                                            '())))))
                      (_%$%g4920249213%_ _%$%g4920349217%_)))))
          (_%$%g4920149243%_ _%$stx49198%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#with-identifiers|
      (lambda (_%stx49247%_)
        (let* ((_%$%g4925049283%_
                (lambda (_%$%g4925149279%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4925149279%_)))
               (_%$%g4924949847%_
                (lambda (_%$%g4925149287%_)
                  (if (gx#stx-pair? _%$%g4925149287%_)
                      (let ((_%$%e4925449290%_
                             (gx#syntax-e _%$%g4925149287%_)))
                        (let ((_%$%hd4925549294%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4925449290%_)))
                              (_%$%tl4925649297%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4925449290%_))))
                          (if (gx#stx-pair? _%$%tl4925649297%_)
                              (let ((_%$%e4925749300%_
                                     (gx#syntax-e _%$%tl4925649297%_)))
                                (let ((_%$%hd4925849304%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4925749300%_)))
                                      (_%$%tl4925949307%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4925749300%_))))
                                  (if (gx#stx-pair/null? _%$%hd4925849304%_)
                                      (let ((_g50184_
                                             (gx#syntax-split-splice
                                              _%$%hd4925849304%_
                                              '0)))
                                        (begin
                                          (let ((_g50185_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g50184_)
                                                       (##values-length
                                                        _g50184_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g50185_ 2)))
                                                (error "Context expects 2 values"
                                                       _g50185_)))
                                          (let ((_%$%target4926049310%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g50184_ 0)))
                                                (_%$%tl4926249313%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g50184_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4926249313%_)
                                                (letrec ((_%$%loop4926349316%_
                                                          (lambda (_%$%hd4926149320%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%clause4926749323%_)
                    (if (gx#stx-pair? _%$%hd4926149320%_)
                        (let ((_%$%e4926449325%_
                               (gx#syntax-e _%$%hd4926149320%_)))
                          (let ((_%$%lp-hd4926549329%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4926449325%_)))
                                (_%$%lp-tl4926649332%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4926449325%_))))
                            (_%$%loop4926349316%_
                             _%$%lp-tl4926649332%_
                             (cons _%$%lp-hd4926549329%_
                                   _%$%clause4926749323%_))))
                        (let ((_%$%clause4926849335%_
                               (reverse _%$%clause4926749323%_)))
                          (if (gx#stx-pair/null? _%$%tl4925949307%_)
                              (let ((_g50186_
                                     (gx#syntax-split-splice
                                      _%$%tl4925949307%_
                                      '0)))
                                (begin
                                  (let ((_g50187_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g50186_)
                                               (##values-length _g50186_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g50187_ 2)))
                                        (error "Context expects 2 values"
                                               _g50187_)))
                                  (let ((_%$%target4926949338%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g50186_ 0)))
                                        (_%$%tl4927149341%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g50186_ 1))))
                                    (if (gx#stx-null? _%$%tl4927149341%_)
                                        (letrec ((_%$%loop4927249344%_
                                                  (lambda (_%$%hd4927049348%_
                                                           _%$%body4927649351%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd4927049348%_)
                                                        (let ((_%$%e4927349353%_
                                                               (gx#syntax-e
                                                                _%$%hd4927049348%_)))
                                                          (let ((_%$%lp-hd4927449357%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4927349353%_)))
                        (_%$%lp-tl4927549360%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4927349353%_))))
                    (_%$%loop4927249344%_
                     _%$%lp-tl4927549360%_
                     (cons _%$%lp-hd4927449357%_ _%$%body4927649351%_))))
                (let* ((_%$%body4927749363%_ (reverse _%$%body4927649351%_))
                       (_%$%g4939049407%_
                        (lambda (_%$%g4939149403%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%$%g4939149403%_)))
                       (_%$%g4938949474%_
                        (lambda (_%$%g4939149411%_)
                          (if (gx#stx-pair/null? _%$%g4939149411%_)
                              (let ((_g50188_
                                     (gx#syntax-split-splice
                                      _%$%g4939149411%_
                                      '0)))
                                (begin
                                  (let ((_g50189_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g50188_)
                                               (##values-length _g50188_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g50189_ 2)))
                                        (error "Context expects 2 values"
                                               _g50189_)))
                                  (let ((_%$%target4939349414%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g50188_ 0)))
                                        (_%$%tl4939549417%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g50188_ 1))))
                                    (if (gx#stx-null? _%$%tl4939549417%_)
                                        (letrec ((_%$%loop4939649420%_
                                                  (lambda (_%$%hd4939449424%_
                                                           _%$%clause4940049427%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd4939449424%_)
                                                        (let ((_%$%e4939749429%_
                                                               (gx#syntax-e
                                                                _%$%hd4939449424%_)))
                                                          (let ((_%$%lp-hd4939849433%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4939749429%_)))
                        (_%$%lp-tl4939949436%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4939749429%_))))
                    (_%$%loop4939649420%_
                     _%$%lp-tl4939949436%_
                     (cons _%$%lp-hd4939849433%_ _%$%clause4940049427%_))))
                (let ((_%$%clause4940149439%_
                       (reverse _%$%clause4940049427%_)))
                  (cons (gx#datum->syntax '#f 'with-syntax*)
                        (cons (foldr (lambda (_%$%g4945749462%_
                                              _%$%g4945849465%_)
                                       (cons _%$%g4945749462%_
                                             _%$%g4945849465%_))
                                     '()
                                     _%$%clause4940149439%_)
                              (foldr (lambda (_%$%g4945949468%_
                                              _%$%g4946049471%_)
                                       (cons _%$%g4945949468%_
                                             _%$%g4946049471%_))
                                     '()
                                     _%$%body4927749363%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop4939649420%_
                                           _%$%target4939349414%_
                                           '()))
                                        (_%$%g4939049407%_
                                         _%$%g4939149411%_)))))
                              (_%$%g4939049407%_ _%$%g4939149411%_)))))
                  (_%$%g4938949474%_
                   (map (lambda (_%clause49478%_)
                          (let* ((_%__stx5005350054%_ _%clause49478%_)
                                 (_%$%g4948449551%_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx5005350054%_))))
                            (let ((_%__kont5005650057%_
                                   (lambda (_%$%g4948649816%_
                                            _%$%g4948749818%_)
                                     (cons _%$%g4948749818%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'syntax-local-temp)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'quote)
                           (cons _%$%g4948649816%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                                  (_%__kont5005850059%_
                                   (lambda (_%$%g4950049750%_
                                            _%$%g4950149752%_)
                                     (cons _%$%g4950149752%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'genident)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'quote)
                           (cons _%$%g4950049750%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                                  (_%__kont5006050061%_
                                   (lambda (_%$%g4951449684%_
                                            _%$%g4951549686%_)
                                     (cons _%$%g4951549686%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'syntax-local-introduce)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'quote)
                           (cons _%$%g4951449684%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                                  (_%__kont5006250063%_
                                   (lambda (_%$%g4952849606%_
                                            _%$%g4952949608%_
                                            _%$%g4953049609%_)
                                     (cons _%$%g4953049609%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'stx-identifier)
                                                       (cons _%$%g4952949608%_
                                                             (foldr (lambda (_%$%g4962849631%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%$%g4962949634%_)
                              (cons _%$%g4962849631%_ _%$%g4962949634%_))
                            '()
                            _%$%g4952849606%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                              (let* ((_%__match5018250183%_
                                      (lambda (_%$%e4953149558%_
                                               _%$%hd4953249562%_
                                               _%$%tl4953349565%_
                                               _%$%e4953449568%_
                                               _%$%hd4953549572%_
                                               _%$%tl4953649575%_
                                               _%__splice5006450065%_
                                               _%$%target4953749578%_
                                               _%$%tl4953949581%_)
                                        (letrec ((_%$%loop4954049584%_
                                                  (lambda (_%$%hd4953849588%_
                                                           _%$%components4954449591%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd4953849588%_)
                                                        (let ((_%$%e4954149593%_
                                                               (gx#syntax-e
                                                                _%$%hd4953849588%_)))
                                                          (let ((_%$%lp-tl4954349600%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4954149593%_)))
                        (_%$%lp-hd4954249597%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4954149593%_))))
                    (_%$%loop4954049584%_
                     _%$%lp-tl4954349600%_
                     (cons _%$%lp-hd4954249597%_ _%$%components4954449591%_))))
                (let ((_%$%components4954549603%_
                       (reverse _%$%components4954449591%_)))
                  (let ((_%$%g4952849606%_ _%$%components4954549603%_)
                        (_%$%g4952949608%_ _%$%hd4953549572%_)
                        (_%$%g4953049609%_ _%$%hd4953249562%_))
                    (if (gx#identifier? _%$%g4953049609%_)
                        (_%__kont5006250063%_
                         _%$%g4952849606%_
                         _%$%g4952949608%_
                         _%$%g4953049609%_)
                        (_%$%g4948449551%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop4954049584%_
                                           _%$%target4953749578%_
                                           '()))))
                                     (_%__match5016250163%_
                                      (lambda (_%$%e4951649644%_
                                               _%$%hd4951749648%_
                                               _%$%tl4951849651%_
                                               _%$%e4951949654%_
                                               _%$%hd4952049658%_
                                               _%$%tl4952149661%_
                                               _%$%e4952249664%_
                                               _%$%hd4952349668%_
                                               _%$%tl4952449671%_
                                               _%$%e4952549674%_
                                               _%$%hd4952649678%_
                                               _%$%tl4952749681%_)
                                        (let ((_%$%g4951449684%_
                                               _%$%hd4952649678%_)
                                              (_%$%g4951549686%_
                                               _%$%hd4951749648%_))
                                          (if (and (gx#identifier?
                                                    _%$%g4951549686%_)
                                                   (gx#identifier?
                                                    _%$%g4951449684%_))
                                              (_%__kont5006050061%_
                                               _%$%g4951449684%_
                                               _%$%g4951549686%_)
                                              (if (gx#stx-pair/null?
                                                   _%$%tl4952149661%_)
                                                  (let ((_%__splice5006450065%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl4952149661%_
                                                          '0)))
                                                    (let ((_%$%tl4953949581%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice5006450065%_
                                                              '1)))
                                                          (_%$%target4953749578%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice5006450065%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl4953949581%_)
                                                          (_%__match5018250183%_
                                                           _%$%e4951649644%_
                                                           _%$%hd4951749648%_
                                                           _%$%tl4951849651%_
                                                           _%$%e4951949654%_
                                                           _%$%hd4952049658%_
                                                           _%$%tl4952149661%_
                                                           _%__splice5006450065%_
                                                           _%$%target4953749578%_
                                                           _%$%tl4953949581%_)
                                                          (_%$%g4948449551%_))))
                                                  (_%$%g4948449551%_))))))
                                     (_%__match5013050131%_
                                      (lambda (_%$%e4950249710%_
                                               _%$%hd4950349714%_
                                               _%$%tl4950449717%_
                                               _%$%e4950549720%_
                                               _%$%hd4950649724%_
                                               _%$%tl4950749727%_
                                               _%$%e4950849730%_
                                               _%$%hd4950949734%_
                                               _%$%tl4951049737%_
                                               _%$%e4951149740%_
                                               _%$%hd4951249744%_
                                               _%$%tl4951349747%_)
                                        (let ((_%$%g4950049750%_
                                               _%$%hd4951249744%_)
                                              (_%$%g4950149752%_
                                               _%$%hd4950349714%_))
                                          (if (and (gx#identifier?
                                                    _%$%g4950149752%_)
                                                   (gx#identifier?
                                                    _%$%g4950049750%_))
                                              (_%__kont5005850059%_
                                               _%$%g4950049750%_
                                               _%$%g4950149752%_)
                                              (if (gx#stx-pair/null?
                                                   _%$%tl4950749727%_)
                                                  (let ((_%__splice5006450065%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl4950749727%_
                                                          '0)))
                                                    (let ((_%$%tl4953949581%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice5006450065%_
                                                              '1)))
                                                          (_%$%target4953749578%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice5006450065%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl4953949581%_)
                                                          (_%__match5018250183%_
                                                           _%$%e4950249710%_
                                                           _%$%hd4950349714%_
                                                           _%$%tl4950449717%_
                                                           _%$%e4950549720%_
                                                           _%$%hd4950649724%_
                                                           _%$%tl4950749727%_
                                                           _%__splice5006450065%_
                                                           _%$%target4953749578%_
                                                           _%$%tl4953949581%_)
                                                          (_%$%g4948449551%_))))
                                                  (_%$%g4948449551%_))))))
                                     (_%__match5009850099%_
                                      (lambda (_%$%e4948849776%_
                                               _%$%hd4948949780%_
                                               _%$%tl4949049783%_
                                               _%$%e4949149786%_
                                               _%$%hd4949249790%_
                                               _%$%tl4949349793%_
                                               _%$%e4949449796%_
                                               _%$%hd4949549800%_
                                               _%$%tl4949649803%_
                                               _%$%e4949749806%_
                                               _%$%hd4949849810%_
                                               _%$%tl4949949813%_)
                                        (let ((_%$%g4948649816%_
                                               _%$%hd4949849810%_)
                                              (_%$%g4948749818%_
                                               _%$%hd4948949780%_))
                                          (if (and (gx#identifier?
                                                    _%$%g4948749818%_)
                                                   (gx#identifier?
                                                    _%$%g4948649816%_))
                                              (_%__kont5005650057%_
                                               _%$%g4948649816%_
                                               _%$%g4948749818%_)
                                              (if (gx#stx-pair/null?
                                                   _%$%tl4949349793%_)
                                                  (let ((_%__splice5006450065%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl4949349793%_
                                                          '0)))
                                                    (let ((_%$%tl4953949581%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice5006450065%_
                                                              '1)))
                                                          (_%$%target4953749578%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice5006450065%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl4953949581%_)
                                                          (_%__match5018250183%_
                                                           _%$%e4948849776%_
                                                           _%$%hd4948949780%_
                                                           _%$%tl4949049783%_
                                                           _%$%e4949149786%_
                                                           _%$%hd4949249790%_
                                                           _%$%tl4949349793%_
                                                           _%__splice5006450065%_
                                                           _%$%target4953749578%_
                                                           _%$%tl4953949581%_)
                                                          (_%$%g4948449551%_))))
                                                  (_%$%g4948449551%_)))))))
                                (if (gx#stx-pair? _%__stx5005350054%_)
                                    (let ((_%$%e4948849776%_
                                           (gx#syntax-e _%__stx5005350054%_)))
                                      (let ((_%$%tl4949049783%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4948849776%_)))
                                            (_%$%hd4948949780%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4948849776%_))))
                                        (if (gx#stx-pair? _%$%tl4949049783%_)
                                            (let ((_%$%e4949149786%_
                                                   (gx#syntax-e
                                                    _%$%tl4949049783%_)))
                                              (let ((_%$%tl4949349793%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e4949149786%_)))
                                                    (_%$%hd4949249790%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e4949149786%_))))
                                                (if (gx#stx-pair?
                                                     _%$%hd4949249790%_)
                                                    (let ((_%$%e4949449796%_
                                                           (gx#syntax-e
                                                            _%$%hd4949249790%_)))
                                                      (let ((_%$%tl4949649803%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e4949449796%_)))
                    (_%$%hd4949549800%_
                     (let () (declare (not safe)) (##car _%$%e4949449796%_))))
                (if (gx#identifier? _%$%hd4949549800%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/more-syntax-sugar[1]#_g50190_|
                         _%$%hd4949549800%_)
                        (if (gx#stx-pair? _%$%tl4949649803%_)
                            (let ((_%$%e4949749806%_
                                   (gx#syntax-e _%$%tl4949649803%_)))
                              (let ((_%$%tl4949949813%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e4949749806%_)))
                                    (_%$%hd4949849810%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e4949749806%_))))
                                (if (gx#stx-null? _%$%tl4949949813%_)
                                    (if (gx#stx-null? _%$%tl4949349793%_)
                                        (_%__match5009850099%_
                                         _%$%e4948849776%_
                                         _%$%hd4948949780%_
                                         _%$%tl4949049783%_
                                         _%$%e4949149786%_
                                         _%$%hd4949249790%_
                                         _%$%tl4949349793%_
                                         _%$%e4949449796%_
                                         _%$%hd4949549800%_
                                         _%$%tl4949649803%_
                                         _%$%e4949749806%_
                                         _%$%hd4949849810%_
                                         _%$%tl4949949813%_)
                                        (if (gx#stx-pair/null?
                                             _%$%tl4949349793%_)
                                            (let ((_%__splice5006450065%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl4949349793%_
                                                    '0)))
                                              (let ((_%$%tl4953949581%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice5006450065%_
                                                        '1)))
                                                    (_%$%target4953749578%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice5006450065%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl4953949581%_)
                                                    (_%__match5018250183%_
                                                     _%$%e4948849776%_
                                                     _%$%hd4948949780%_
                                                     _%$%tl4949049783%_
                                                     _%$%e4949149786%_
                                                     _%$%hd4949249790%_
                                                     _%$%tl4949349793%_
                                                     _%__splice5006450065%_
                                                     _%$%target4953749578%_
                                                     _%$%tl4953949581%_)
                                                    (_%$%g4948449551%_))))
                                            (_%$%g4948449551%_)))
                                    (if (gx#stx-pair/null? _%$%tl4949349793%_)
                                        (let ((_%__splice5006450065%_
                                               (gx#syntax-split-splice->vector
                                                _%$%tl4949349793%_
                                                '0)))
                                          (let ((_%$%tl4953949581%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice5006450065%_
                                                    '1)))
                                                (_%$%target4953749578%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice5006450065%_
                                                    '0))))
                                            (if (gx#stx-null?
                                                 _%$%tl4953949581%_)
                                                (_%__match5018250183%_
                                                 _%$%e4948849776%_
                                                 _%$%hd4948949780%_
                                                 _%$%tl4949049783%_
                                                 _%$%e4949149786%_
                                                 _%$%hd4949249790%_
                                                 _%$%tl4949349793%_
                                                 _%__splice5006450065%_
                                                 _%$%target4953749578%_
                                                 _%$%tl4953949581%_)
                                                (_%$%g4948449551%_))))
                                        (_%$%g4948449551%_)))))
                            (if (gx#stx-pair/null? _%$%tl4949349793%_)
                                (let ((_%__splice5006450065%_
                                       (gx#syntax-split-splice->vector
                                        _%$%tl4949349793%_
                                        '0)))
                                  (let ((_%$%tl4953949581%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice5006450065%_
                                            '1)))
                                        (_%$%target4953749578%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice5006450065%_
                                            '0))))
                                    (if (gx#stx-null? _%$%tl4953949581%_)
                                        (_%__match5018250183%_
                                         _%$%e4948849776%_
                                         _%$%hd4948949780%_
                                         _%$%tl4949049783%_
                                         _%$%e4949149786%_
                                         _%$%hd4949249790%_
                                         _%$%tl4949349793%_
                                         _%__splice5006450065%_
                                         _%$%target4953749578%_
                                         _%$%tl4953949581%_)
                                        (_%$%g4948449551%_))))
                                (_%$%g4948449551%_)))
                        (if (gx#free-identifier=?
                             |gerbil/core/more-syntax-sugar[1]#_g50191_|
                             _%$%hd4949549800%_)
                            (if (gx#stx-pair? _%$%tl4949649803%_)
                                (let ((_%$%e4951149740%_
                                       (gx#syntax-e _%$%tl4949649803%_)))
                                  (let ((_%$%tl4951349747%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4951149740%_)))
                                        (_%$%hd4951249744%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4951149740%_))))
                                    (if (gx#stx-null? _%$%tl4951349747%_)
                                        (if (gx#stx-null? _%$%tl4949349793%_)
                                            (_%__match5013050131%_
                                             _%$%e4948849776%_
                                             _%$%hd4948949780%_
                                             _%$%tl4949049783%_
                                             _%$%e4949149786%_
                                             _%$%hd4949249790%_
                                             _%$%tl4949349793%_
                                             _%$%e4949449796%_
                                             _%$%hd4949549800%_
                                             _%$%tl4949649803%_
                                             _%$%e4951149740%_
                                             _%$%hd4951249744%_
                                             _%$%tl4951349747%_)
                                            (if (gx#stx-pair/null?
                                                 _%$%tl4949349793%_)
                                                (let ((_%__splice5006450065%_
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl4949349793%_
                                                        '0)))
                                                  (let ((_%$%tl4953949581%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice5006450065%_
                                                            '1)))
                                                        (_%$%target4953749578%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice5006450065%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4953949581%_)
                                                        (_%__match5018250183%_
                                                         _%$%e4948849776%_
                                                         _%$%hd4948949780%_
                                                         _%$%tl4949049783%_
                                                         _%$%e4949149786%_
                                                         _%$%hd4949249790%_
                                                         _%$%tl4949349793%_
                                                         _%__splice5006450065%_
                                                         _%$%target4953749578%_
                                                         _%$%tl4953949581%_)
                                                        (_%$%g4948449551%_))))
                                                (_%$%g4948449551%_)))
                                        (if (gx#stx-pair/null?
                                             _%$%tl4949349793%_)
                                            (let ((_%__splice5006450065%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl4949349793%_
                                                    '0)))
                                              (let ((_%$%tl4953949581%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice5006450065%_
                                                        '1)))
                                                    (_%$%target4953749578%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice5006450065%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl4953949581%_)
                                                    (_%__match5018250183%_
                                                     _%$%e4948849776%_
                                                     _%$%hd4948949780%_
                                                     _%$%tl4949049783%_
                                                     _%$%e4949149786%_
                                                     _%$%hd4949249790%_
                                                     _%$%tl4949349793%_
                                                     _%__splice5006450065%_
                                                     _%$%target4953749578%_
                                                     _%$%tl4953949581%_)
                                                    (_%$%g4948449551%_))))
                                            (_%$%g4948449551%_)))))
                                (if (gx#stx-pair/null? _%$%tl4949349793%_)
                                    (let ((_%__splice5006450065%_
                                           (gx#syntax-split-splice->vector
                                            _%$%tl4949349793%_
                                            '0)))
                                      (let ((_%$%tl4953949581%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice5006450065%_
                                                '1)))
                                            (_%$%target4953749578%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice5006450065%_
                                                '0))))
                                        (if (gx#stx-null? _%$%tl4953949581%_)
                                            (_%__match5018250183%_
                                             _%$%e4948849776%_
                                             _%$%hd4948949780%_
                                             _%$%tl4949049783%_
                                             _%$%e4949149786%_
                                             _%$%hd4949249790%_
                                             _%$%tl4949349793%_
                                             _%__splice5006450065%_
                                             _%$%target4953749578%_
                                             _%$%tl4953949581%_)
                                            (_%$%g4948449551%_))))
                                    (_%$%g4948449551%_)))
                            (if (gx#free-identifier=?
                                 |gerbil/core/more-syntax-sugar[1]#_g50192_|
                                 _%$%hd4949549800%_)
                                (if (gx#stx-pair? _%$%tl4949649803%_)
                                    (let ((_%$%e4952549674%_
                                           (gx#syntax-e _%$%tl4949649803%_)))
                                      (let ((_%$%tl4952749681%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4952549674%_)))
                                            (_%$%hd4952649678%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4952549674%_))))
                                        (if (gx#stx-null? _%$%tl4952749681%_)
                                            (if (gx#stx-null?
                                                 _%$%tl4949349793%_)
                                                (_%__match5016250163%_
                                                 _%$%e4948849776%_
                                                 _%$%hd4948949780%_
                                                 _%$%tl4949049783%_
                                                 _%$%e4949149786%_
                                                 _%$%hd4949249790%_
                                                 _%$%tl4949349793%_
                                                 _%$%e4949449796%_
                                                 _%$%hd4949549800%_
                                                 _%$%tl4949649803%_
                                                 _%$%e4952549674%_
                                                 _%$%hd4952649678%_
                                                 _%$%tl4952749681%_)
                                                (if (gx#stx-pair/null?
                                                     _%$%tl4949349793%_)
                                                    (let ((_%__splice5006450065%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl4949349793%_
                                                            '0)))
                                                      (let ((_%$%tl4953949581%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice5006450065%_ '1)))
                    (_%$%target4953749578%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice5006450065%_ '0))))
                (if (gx#stx-null? _%$%tl4953949581%_)
                    (_%__match5018250183%_
                     _%$%e4948849776%_
                     _%$%hd4948949780%_
                     _%$%tl4949049783%_
                     _%$%e4949149786%_
                     _%$%hd4949249790%_
                     _%$%tl4949349793%_
                     _%__splice5006450065%_
                     _%$%target4953749578%_
                     _%$%tl4953949581%_)
                    (_%$%g4948449551%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4948449551%_)))
                                            (if (gx#stx-pair/null?
                                                 _%$%tl4949349793%_)
                                                (let ((_%__splice5006450065%_
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl4949349793%_
                                                        '0)))
                                                  (let ((_%$%tl4953949581%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice5006450065%_
                                                            '1)))
                                                        (_%$%target4953749578%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice5006450065%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4953949581%_)
                                                        (_%__match5018250183%_
                                                         _%$%e4948849776%_
                                                         _%$%hd4948949780%_
                                                         _%$%tl4949049783%_
                                                         _%$%e4949149786%_
                                                         _%$%hd4949249790%_
                                                         _%$%tl4949349793%_
                                                         _%__splice5006450065%_
                                                         _%$%target4953749578%_
                                                         _%$%tl4953949581%_)
                                                        (_%$%g4948449551%_))))
                                                (_%$%g4948449551%_)))))
                                    (if (gx#stx-pair/null? _%$%tl4949349793%_)
                                        (let ((_%__splice5006450065%_
                                               (gx#syntax-split-splice->vector
                                                _%$%tl4949349793%_
                                                '0)))
                                          (let ((_%$%tl4953949581%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice5006450065%_
                                                    '1)))
                                                (_%$%target4953749578%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice5006450065%_
                                                    '0))))
                                            (if (gx#stx-null?
                                                 _%$%tl4953949581%_)
                                                (_%__match5018250183%_
                                                 _%$%e4948849776%_
                                                 _%$%hd4948949780%_
                                                 _%$%tl4949049783%_
                                                 _%$%e4949149786%_
                                                 _%$%hd4949249790%_
                                                 _%$%tl4949349793%_
                                                 _%__splice5006450065%_
                                                 _%$%target4953749578%_
                                                 _%$%tl4953949581%_)
                                                (_%$%g4948449551%_))))
                                        (_%$%g4948449551%_)))
                                (if (gx#stx-pair/null? _%$%tl4949349793%_)
                                    (let ((_%__splice5006450065%_
                                           (gx#syntax-split-splice->vector
                                            _%$%tl4949349793%_
                                            '0)))
                                      (let ((_%$%tl4953949581%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice5006450065%_
                                                '1)))
                                            (_%$%target4953749578%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice5006450065%_
                                                '0))))
                                        (if (gx#stx-null? _%$%tl4953949581%_)
                                            (_%__match5018250183%_
                                             _%$%e4948849776%_
                                             _%$%hd4948949780%_
                                             _%$%tl4949049783%_
                                             _%$%e4949149786%_
                                             _%$%hd4949249790%_
                                             _%$%tl4949349793%_
                                             _%__splice5006450065%_
                                             _%$%target4953749578%_
                                             _%$%tl4953949581%_)
                                            (_%$%g4948449551%_))))
                                    (_%$%g4948449551%_)))))
                    (if (gx#stx-pair/null? _%$%tl4949349793%_)
                        (let ((_%__splice5006450065%_
                               (gx#syntax-split-splice->vector
                                _%$%tl4949349793%_
                                '0)))
                          (let ((_%$%tl4953949581%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice5006450065%_ '1)))
                                (_%$%target4953749578%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice5006450065%_ '0))))
                            (if (gx#stx-null? _%$%tl4953949581%_)
                                (_%__match5018250183%_
                                 _%$%e4948849776%_
                                 _%$%hd4948949780%_
                                 _%$%tl4949049783%_
                                 _%$%e4949149786%_
                                 _%$%hd4949249790%_
                                 _%$%tl4949349793%_
                                 _%__splice5006450065%_
                                 _%$%target4953749578%_
                                 _%$%tl4953949581%_)
                                (_%$%g4948449551%_))))
                        (_%$%g4948449551%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _%$%tl4949349793%_)
                                                        (let ((_%__splice5006450065%_
                                                               (gx#syntax-split-splice->vector
                                                                _%$%tl4949349793%_
                                                                '0)))
                                                          (let ((_%$%tl4953949581%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice5006450065%_ '1)))
                        (_%$%target4953749578%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice5006450065%_ '0))))
                    (if (gx#stx-null? _%$%tl4953949581%_)
                        (_%__match5018250183%_
                         _%$%e4948849776%_
                         _%$%hd4948949780%_
                         _%$%tl4949049783%_
                         _%$%e4949149786%_
                         _%$%hd4949249790%_
                         _%$%tl4949349793%_
                         _%__splice5006450065%_
                         _%$%target4953749578%_
                         _%$%tl4953949581%_)
                        (_%$%g4948449551%_))))
                (_%$%g4948449551%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g4948449551%_))))
                                    (_%$%g4948449551%_))))))
                        (foldr (lambda (_%$%g4983849841%_ _%$%g4983949844%_)
                                 (cons _%$%g4983849841%_ _%$%g4983949844%_))
                               '()
                               _%$%clause4926849335%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop4927249344%_
                                           _%$%target4926949338%_
                                           '()))
                                        (_%$%g4925049283%_
                                         _%$%g4925149287%_)))))
                              (_%$%g4925049283%_ _%$%g4925149287%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4926349316%_
                                                   _%$%target4926049310%_
                                                   '()))
                                                (_%$%g4925049283%_
                                                 _%$%g4925149287%_)))))
                                      (_%$%g4925049283%_ _%$%g4925149287%_))))
                              (_%$%g4925049283%_ _%$%g4925149287%_))))
                      (_%$%g4925049283%_ _%$%g4925149287%_)))))
          (_%$%g4924949847%_ _%stx49247%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#with-identifier|
      (lambda (_%$stx49855%_)
        (let* ((_%$%g4985949896%_
                (lambda (_%$%g4986049892%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4986049892%_)))
               (_%$%g4985850033%_
                (lambda (_%$%g4986049900%_)
                  (if (gx#stx-pair? _%$%g4986049900%_)
                      (let ((_%$%e4986449903%_
                             (gx#syntax-e _%$%g4986049900%_)))
                        (let ((_%$%hd4986549907%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4986449903%_)))
                              (_%$%tl4986649910%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4986449903%_))))
                          (if (gx#stx-pair? _%$%tl4986649910%_)
                              (let ((_%$%e4986749913%_
                                     (gx#syntax-e _%$%tl4986649910%_)))
                                (let ((_%$%hd4986849917%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4986749913%_)))
                                      (_%$%tl4986949920%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4986749913%_))))
                                  (if (gx#stx-pair? _%$%hd4986849917%_)
                                      (let ((_%$%e4987049923%_
                                             (gx#syntax-e _%$%hd4986849917%_)))
                                        (let ((_%$%hd4987149927%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4987049923%_)))
                                              (_%$%tl4987249930%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4987049923%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl4987249930%_)
                                              (let ((_g50193_
                                                     (gx#syntax-split-splice
                                                      _%$%tl4987249930%_
                                                      '0)))
                                                (begin
                                                  (let ((_g50194_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g50193_)
                                                               (##values-length
                                                                _g50193_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g50194_ 2)))
                (error "Context expects 2 values" _g50194_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target4987349933%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g50193_
                                                            0)))
                                                        (_%$%tl4987549936%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g50193_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4987549936%_)
                                                        (letrec ((_%$%loop4987649939%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd4987449943%_
                                   _%$%components4988049946%_)
                            (if (gx#stx-pair? _%$%hd4987449943%_)
                                (let ((_%$%e4987749948%_
                                       (gx#syntax-e _%$%hd4987449943%_)))
                                  (let ((_%$%lp-hd4987849952%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4987749948%_)))
                                        (_%$%lp-tl4987949955%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4987749948%_))))
                                    (_%$%loop4987649939%_
                                     _%$%lp-tl4987949955%_
                                     (cons _%$%lp-hd4987849952%_
                                           _%$%components4988049946%_))))
                                (let ((_%$%components4988149958%_
                                       (reverse _%$%components4988049946%_)))
                                  (if (gx#stx-pair/null? _%$%tl4986949920%_)
                                      (let ((_g50195_
                                             (gx#syntax-split-splice
                                              _%$%tl4986949920%_
                                              '0)))
                                        (begin
                                          (let ((_g50196_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g50195_)
                                                       (##values-length
                                                        _g50195_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g50196_ 2)))
                                                (error "Context expects 2 values"
                                                       _g50196_)))
                                          (let ((_%$%target4988249961%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g50195_ 0)))
                                                (_%$%tl4988449964%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g50195_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4988449964%_)
                                                (letrec ((_%$%loop4988549967%_
                                                          (lambda (_%$%hd4988349971%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%body4988949974%_)
                    (if (gx#stx-pair? _%$%hd4988349971%_)
                        (let ((_%$%e4988649976%_
                               (gx#syntax-e _%$%hd4988349971%_)))
                          (let ((_%$%lp-hd4988749980%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4988649976%_)))
                                (_%$%lp-tl4988849983%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4988649976%_))))
                            (_%$%loop4988549967%_
                             _%$%lp-tl4988849983%_
                             (cons _%$%lp-hd4988749980%_
                                   _%$%body4988949974%_))))
                        (let ((_%$%body4989049986%_
                               (reverse _%$%body4988949974%_)))
                          (if (gx#identifier? _%$%hd4987149927%_)
                              (cons (gx#datum->syntax '#f 'with-identifiers)
                                    (cons (cons (cons _%$%hd4987149927%_
                                                      (foldr (lambda (_%$%g5001650021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g5001750024%_)
                       (cons _%$%g5001650021%_ _%$%g5001750024%_))
                     '()
                     _%$%components4988149958%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (foldr (lambda (_%$%g5001850027%_
                                                          _%$%g5001950030%_)
                                                   (cons _%$%g5001850027%_
                                                         _%$%g5001950030%_))
                                                 '()
                                                 _%$%body4989049986%_)))
                              (_%$%g4985949896%_ _%$%g4986049900%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4988549967%_
                                                   _%$%target4988249961%_
                                                   '()))
                                                (_%$%g4985949896%_
                                                 _%$%g4986049900%_)))))
                                      (_%$%g4985949896%_
                                       _%$%g4986049900%_)))))))
                  (_%$%loop4987649939%_ _%$%target4987349933%_ '()))
                (_%$%g4985949896%_ _%$%g4986049900%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g4985949896%_
                                               _%$%g4986049900%_))))
                                      (_%$%g4985949896%_ _%$%g4986049900%_))))
                              (_%$%g4985949896%_ _%$%g4986049900%_))))
                      (_%$%g4985949896%_ _%$%g4986049900%_)))))
          (_%$%g4985850033%_ _%$stx49855%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#quasisyntax|
      (lambda (_%$stx50039%_)
        (let ((_%$%g5004250049%_
               (lambda (_%$%g5004350045%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g5004350045%_))))
          (_%$%g5004250049%_ _%$stx50039%_))))))

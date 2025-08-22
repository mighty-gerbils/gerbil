(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ContractRules[:0:]#maybe|
    (lambda (_%$stx55173%_)
      (let* ((_%g5517755191%_
              (lambda (_%g5517855187%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5517855187%_)))
             (_%g5517655233%_
              (lambda (_%g5517855195%_)
                (if (gx#stx-pair? _%g5517855195%_)
                    (let ((_%e5518055198%_ (gx#syntax-e _%g5517855195%_)))
                      (let ((_%hd5518155202%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5518055198%_)))
                            (_%tl5518255205%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5518055198%_))))
                        (if (gx#stx-pair? _%tl5518255205%_)
                            (let ((_%e5518355208%_
                                   (gx#syntax-e _%tl5518255205%_)))
                              (let ((_%hd5518455212%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5518355208%_)))
                                    (_%tl5518555215%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5518355208%_))))
                                (if (gx#stx-null? _%tl5518555215%_)
                                    ((lambda (_%L55218%_)
                                       (cons (gx#datum->syntax '#f '?)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'or)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'not)
                                                               (cons _%L55218%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd5518455212%_)
                                    (_%g5517755191%_ _%g5517855195%_))))
                            (_%g5517755191%_ _%g5517855195%_))))
                    (_%g5517755191%_ _%g5517855195%_)))))
        (_%g5517655233%_ _%$stx55173%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range?|
    (lambda (_%$stx55237%_)
      (let* ((_%g5524155259%_
              (lambda (_%g5524255255%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5524255255%_)))
             (_%g5524055314%_
              (lambda (_%g5524255263%_)
                (if (gx#stx-pair? _%g5524255263%_)
                    (let ((_%e5524555266%_ (gx#syntax-e _%g5524255263%_)))
                      (let ((_%hd5524655270%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5524555266%_)))
                            (_%tl5524755273%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5524555266%_))))
                        (if (gx#stx-pair? _%tl5524755273%_)
                            (let ((_%e5524855276%_
                                   (gx#syntax-e _%tl5524755273%_)))
                              (let ((_%hd5524955280%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5524855276%_)))
                                    (_%tl5525055283%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5524855276%_))))
                                (if (gx#stx-pair? _%tl5525055283%_)
                                    (let ((_%e5525155286%_
                                           (gx#syntax-e _%tl5525055283%_)))
                                      (let ((_%hd5525255290%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5525155286%_)))
                                            (_%tl5525355293%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5525155286%_))))
                                        (if (gx#stx-null? _%tl5525355293%_)
                                            ((lambda (_%L55296%_ _%L55298%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'o)
                         '())
                   (cons (cons (gx#datum->syntax '#f 'and)
                               (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                           (cons (gx#datum->syntax '#f 'o)
                                                 '()))
                                     (cons (cons (gx#datum->syntax '#f 'fx>=)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'o)
                                                       (cons _%L55298%_ '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'fx<)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L55296%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5525255290%_
                                             _%hd5524955280%_)
                                            (_%g5524155259%_
                                             _%g5524255263%_))))
                                    (_%g5524155259%_ _%g5524255263%_))))
                            (_%g5524155259%_ _%g5524255263%_))))
                    (_%g5524155259%_ _%g5524255263%_)))))
        (_%g5524055314%_ _%$stx55237%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range-inclusive?|
    (lambda (_%$stx55318%_)
      (let* ((_%g5532255340%_
              (lambda (_%g5532355336%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5532355336%_)))
             (_%g5532155395%_
              (lambda (_%g5532355344%_)
                (if (gx#stx-pair? _%g5532355344%_)
                    (let ((_%e5532655347%_ (gx#syntax-e _%g5532355344%_)))
                      (let ((_%hd5532755351%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5532655347%_)))
                            (_%tl5532855354%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5532655347%_))))
                        (if (gx#stx-pair? _%tl5532855354%_)
                            (let ((_%e5532955357%_
                                   (gx#syntax-e _%tl5532855354%_)))
                              (let ((_%hd5533055361%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5532955357%_)))
                                    (_%tl5533155364%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5532955357%_))))
                                (if (gx#stx-pair? _%tl5533155364%_)
                                    (let ((_%e5533255367%_
                                           (gx#syntax-e _%tl5533155364%_)))
                                      (let ((_%hd5533355371%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5533255367%_)))
                                            (_%tl5533455374%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5533255367%_))))
                                        (if (gx#stx-null? _%tl5533455374%_)
                                            ((lambda (_%L55377%_ _%L55379%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'o)
                         '())
                   (cons (cons (gx#datum->syntax '#f 'and)
                               (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                           (cons (gx#datum->syntax '#f 'o)
                                                 '()))
                                     (cons (cons (gx#datum->syntax '#f 'fx<=)
                                                 (cons _%L55379%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L55377%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5533355371%_
                                             _%hd5533055361%_)
                                            (_%g5532255340%_
                                             _%g5532355344%_))))
                                    (_%g5532255340%_ _%g5532355344%_))))
                            (_%g5532255340%_ _%g5532355344%_))))
                    (_%g5532255340%_ _%g5532355344%_)))))
        (_%g5532155395%_ _%$stx55318%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#list-of?|
    (lambda (_%$stx55399%_)
      (let* ((_%g5540355417%_
              (lambda (_%g5540455413%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5540455413%_)))
             (_%g5540255458%_
              (lambda (_%g5540455421%_)
                (if (gx#stx-pair? _%g5540455421%_)
                    (let ((_%e5540655424%_ (gx#syntax-e _%g5540455421%_)))
                      (let ((_%hd5540755428%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5540655424%_)))
                            (_%tl5540855431%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5540655424%_))))
                        (if (gx#stx-pair? _%tl5540855431%_)
                            (let ((_%e5540955434%_
                                   (gx#syntax-e _%tl5540855431%_)))
                              (let ((_%hd5541055438%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5540955434%_)))
                                    (_%tl5541155441%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5540955434%_))))
                                (if (gx#stx-null? _%tl5541155441%_)
                                    ((lambda (_%L55444%_)
                                       (cons (gx#datum->syntax '#f 'lambda)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'o)
                                                         '())
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'and)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'list?)
                                   (cons (gx#datum->syntax '#f 'o) '()))
                             (cons (cons (gx#datum->syntax '#f 'andmap)
                                         (cons _%L55444%_
                                               (cons (gx#datum->syntax '#f 'o)
                                                     '())))
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd5541055438%_)
                                    (_%g5540355417%_ _%g5540455421%_))))
                            (_%g5540355417%_ _%g5540455421%_))))
                    (_%g5540355417%_ _%g5540455421%_)))))
        (_%g5540255458%_ _%$stx55399%_)))))

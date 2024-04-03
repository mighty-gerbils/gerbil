(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ContractRules[:0:]#maybe|
    (lambda (_%$stx51293%_)
      (let* ((_%g5129751311%_
              (lambda (_%g5129851307%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5129851307%_)))
             (_%g5129651353%_
              (lambda (_%g5129851315%_)
                (if (gx#stx-pair? _%g5129851315%_)
                    (let ((_%e5130251318%_ (gx#syntax-e _%g5129851315%_)))
                      (let ((_%hd5130151322%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5130251318%_)))
                            (_%tl5130051325%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5130251318%_))))
                        (if (gx#stx-pair? _%tl5130051325%_)
                            (let ((_%e5130551328%_
                                   (gx#syntax-e _%tl5130051325%_)))
                              (let ((_%hd5130451332%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5130551328%_)))
                                    (_%tl5130351335%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5130551328%_))))
                                (if (gx#stx-null? _%tl5130351335%_)
                                    ((lambda (_%L51338%_)
                                       (cons (gx#datum->syntax '#f '?)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'or)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'not)
                                                               (cons _%L51338%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd5130451332%_)
                                    (_%g5129751311%_ _%g5129851315%_))))
                            (_%g5129751311%_ _%g5129851315%_))))
                    (_%g5129751311%_ _%g5129851315%_)))))
        (_%g5129651353%_ _%$stx51293%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range?|
    (lambda (_%$stx51357%_)
      (let* ((_%g5136151379%_
              (lambda (_%g5136251375%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5136251375%_)))
             (_%g5136051434%_
              (lambda (_%g5136251383%_)
                (if (gx#stx-pair? _%g5136251383%_)
                    (let ((_%e5136751386%_ (gx#syntax-e _%g5136251383%_)))
                      (let ((_%hd5136651390%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5136751386%_)))
                            (_%tl5136551393%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5136751386%_))))
                        (if (gx#stx-pair? _%tl5136551393%_)
                            (let ((_%e5137051396%_
                                   (gx#syntax-e _%tl5136551393%_)))
                              (let ((_%hd5136951400%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5137051396%_)))
                                    (_%tl5136851403%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5137051396%_))))
                                (if (gx#stx-pair? _%tl5136851403%_)
                                    (let ((_%e5137351406%_
                                           (gx#syntax-e _%tl5136851403%_)))
                                      (let ((_%hd5137251410%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5137351406%_)))
                                            (_%tl5137151413%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5137351406%_))))
                                        (if (gx#stx-null? _%tl5137151413%_)
                                            ((lambda (_%L51416%_ _%L51418%_)
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
                                                       (cons _%L51418%_ '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'fx<)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L51416%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5137251410%_
                                             _%hd5136951400%_)
                                            (_%g5136151379%_
                                             _%g5136251383%_))))
                                    (_%g5136151379%_ _%g5136251383%_))))
                            (_%g5136151379%_ _%g5136251383%_))))
                    (_%g5136151379%_ _%g5136251383%_)))))
        (_%g5136051434%_ _%$stx51357%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range-inclusive?|
    (lambda (_%$stx51438%_)
      (let* ((_%g5144251460%_
              (lambda (_%g5144351456%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5144351456%_)))
             (_%g5144151515%_
              (lambda (_%g5144351464%_)
                (if (gx#stx-pair? _%g5144351464%_)
                    (let ((_%e5144851467%_ (gx#syntax-e _%g5144351464%_)))
                      (let ((_%hd5144751471%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5144851467%_)))
                            (_%tl5144651474%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5144851467%_))))
                        (if (gx#stx-pair? _%tl5144651474%_)
                            (let ((_%e5145151477%_
                                   (gx#syntax-e _%tl5144651474%_)))
                              (let ((_%hd5145051481%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5145151477%_)))
                                    (_%tl5144951484%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5145151477%_))))
                                (if (gx#stx-pair? _%tl5144951484%_)
                                    (let ((_%e5145451487%_
                                           (gx#syntax-e _%tl5144951484%_)))
                                      (let ((_%hd5145351491%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5145451487%_)))
                                            (_%tl5145251494%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5145451487%_))))
                                        (if (gx#stx-null? _%tl5145251494%_)
                                            ((lambda (_%L51497%_ _%L51499%_)
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
                                                 (cons _%L51499%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L51497%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5145351491%_
                                             _%hd5145051481%_)
                                            (_%g5144251460%_
                                             _%g5144351464%_))))
                                    (_%g5144251460%_ _%g5144351464%_))))
                            (_%g5144251460%_ _%g5144351464%_))))
                    (_%g5144251460%_ _%g5144351464%_)))))
        (_%g5144151515%_ _%$stx51438%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#list-of?|
    (lambda (_%$stx51519%_)
      (let* ((_%g5152351537%_
              (lambda (_%g5152451533%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5152451533%_)))
             (_%g5152251578%_
              (lambda (_%g5152451541%_)
                (if (gx#stx-pair? _%g5152451541%_)
                    (let ((_%e5152851544%_ (gx#syntax-e _%g5152451541%_)))
                      (let ((_%hd5152751548%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5152851544%_)))
                            (_%tl5152651551%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5152851544%_))))
                        (if (gx#stx-pair? _%tl5152651551%_)
                            (let ((_%e5153151554%_
                                   (gx#syntax-e _%tl5152651551%_)))
                              (let ((_%hd5153051558%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5153151554%_)))
                                    (_%tl5152951561%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5153151554%_))))
                                (if (gx#stx-null? _%tl5152951561%_)
                                    ((lambda (_%L51564%_)
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
                                         (cons _%L51564%_
                                               (cons (gx#datum->syntax '#f 'o)
                                                     '())))
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd5153051558%_)
                                    (_%g5152351537%_ _%g5152451541%_))))
                            (_%g5152351537%_ _%g5152451541%_))))
                    (_%g5152351537%_ _%g5152451541%_)))))
        (_%g5152251578%_ _%$stx51519%_)))))

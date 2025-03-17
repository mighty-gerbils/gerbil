(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#defspecialized-table|
    (lambda (_%$stx92309%_)
      (let* ((_%g9231392359%_
              (lambda (_%g9231492355%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9231492355%_)))
             (_%g9231292513%_
              (lambda (_%g9231492363%_)
                (if (gx#stx-pair? _%g9231492363%_)
                    (let ((_%e9232492366%_ (gx#syntax-e _%g9231492363%_)))
                      (let ((_%hd9232592370%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9232492366%_)))
                            (_%tl9232692373%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9232492366%_))))
                        (if (gx#stx-pair? _%tl9232692373%_)
                            (let ((_%e9232792376%_
                                   (gx#syntax-e _%tl9232692373%_)))
                              (let ((_%hd9232892380%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9232792376%_)))
                                    (_%tl9232992383%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9232792376%_))))
                                (if (gx#stx-pair? _%tl9232992383%_)
                                    (let ((_%e9233092386%_
                                           (gx#syntax-e _%tl9232992383%_)))
                                      (let ((_%hd9233192390%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9233092386%_)))
                                            (_%tl9233292393%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9233092386%_))))
                                        (if (gx#stx-pair? _%tl9233292393%_)
                                            (let ((_%e9233392396%_
                                                   (gx#syntax-e
                                                    _%tl9233292393%_)))
                                              (let ((_%hd9233492400%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9233392396%_)))
                                                    (_%tl9233592403%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9233392396%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9233592403%_)
                                                    (let ((_%e9233692406%_
                                                           (gx#syntax-e
                                                            _%tl9233592403%_)))
                                                      (let ((_%hd9233792410%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9233692406%_)))
                    (_%tl9233892413%_
                     (let () (declare (not safe)) (##cdr _%e9233692406%_))))
                (if (gx#stx-pair? _%tl9233892413%_)
                    (let ((_%e9233992416%_ (gx#syntax-e _%tl9233892413%_)))
                      (let ((_%hd9234092420%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9233992416%_)))
                            (_%tl9234192423%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9233992416%_))))
                        (if (gx#stx-pair? _%tl9234192423%_)
                            (let ((_%e9234292426%_
                                   (gx#syntax-e _%tl9234192423%_)))
                              (let ((_%hd9234392430%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9234292426%_)))
                                    (_%tl9234492433%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9234292426%_))))
                                (if (gx#stx-pair? _%tl9234492433%_)
                                    (let ((_%e9234592436%_
                                           (gx#syntax-e _%tl9234492433%_)))
                                      (let ((_%hd9234692440%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9234592436%_)))
                                            (_%tl9234792443%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9234592436%_))))
                                        (if (gx#stx-pair? _%tl9234792443%_)
                                            (let ((_%e9234892446%_
                                                   (gx#syntax-e
                                                    _%tl9234792443%_)))
                                              (let ((_%hd9234992450%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9234892446%_)))
                                                    (_%tl9235092453%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9234892446%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9235092453%_)
                                                    (let ((_%e9235192456%_
                                                           (gx#syntax-e
                                                            _%tl9235092453%_)))
                                                      (let ((_%hd9235292460%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9235192456%_)))
                    (_%tl9235392463%_
                     (let () (declare (not safe)) (##cdr _%e9235192456%_))))
                (if (gx#stx-null? _%tl9235392463%_)
                    ((lambda (_%L92466%_
                              _%L92468%_
                              _%L92469%_
                              _%L92470%_
                              _%L92471%_
                              _%L92472%_
                              _%L92473%_
                              _%L92474%_
                              _%L92475%_)
                       (cons (gx#datum->syntax '#f 'begin)
                             (cons (cons (gx#datum->syntax '#f 'def)
                                         (cons (cons _%L92475%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'size-hint)
                         (cons '#f '()))
                   (cons (cons (gx#datum->syntax '#f 'seed) (cons '0 '()))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-raw-table)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'size-hint)
                         (cons _%L92468%_
                               (cons _%L92466%_
                                     (cons (gx#datum->syntax '#f 'seed)
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   (cons (cons (gx#datum->syntax '#f 'def)
                                               (cons (cons _%L92474%_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'tab)
                         (cons (gx#datum->syntax '#f 'key)
                               (cons (gx#datum->syntax '#f 'default) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons (cons (cons (gx#datum->syntax '#f 'table)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '&raw-table-table)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'tab)
                                                             '()))
                                                 '()))
                                     (cons (cons (gx#datum->syntax '#f 'seed)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '&raw-table-seed)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'tab)
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               (cons (cons (gx#datum->syntax '#f '__table-ref)
                                           (cons (gx#datum->syntax '#f 'table)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'seed)
                                                       (cons _%L92468%_
                                                             (cons _%L92466%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'key)
                                 (cons (gx#datum->syntax '#f 'default)
                                       '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons (cons _%L92473%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'tab)
                               (cons (gx#datum->syntax '#f 'key)
                                     (cons (gx#datum->syntax '#f 'value)
                                           '()))))
                   (cons (cons (gx#datum->syntax '#f 'when)
                               (cons (cons (gx#datum->syntax '#f 'fx<)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '&raw-table-free)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'tab)
                                                             '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fxquotient)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'vector-length)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              '&raw-table-table)
                                             (cons (gx#datum->syntax '#f 'tab)
                                                   '()))
                                       '()))
                           (cons '4 '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__raw-table-rehash!)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'tab)
                                                       '()))
                                           '())))
                         (cons (cons _%L92472%_
                                     (cons (gx#datum->syntax '#f 'tab)
                                           (cons (gx#datum->syntax '#f 'key)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'value)
                                                       '()))))
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'def)
                                                           (cons (cons _%L92472%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (gx#datum->syntax '#f 'tab)
                                     (cons (gx#datum->syntax '#f 'key)
                                           (cons (gx#datum->syntax '#f 'value)
                                                 '()))))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'table)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '&raw-table-table)
                           (cons (gx#datum->syntax '#f 'tab) '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'seed)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '&raw-table-seed)
                                 (cons (gx#datum->syntax '#f 'tab) '()))
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '__table-set!)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'table)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'seed)
                           (cons _%L92468%_
                                 (cons _%L92466%_
                                       (cons (gx#datum->syntax '#f 'key)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'value)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'set!)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '&raw-table-free)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'tab)
                                                           '()))
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fx-)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '&raw-table-free)
                               (cons (gx#datum->syntax '#f 'tab) '()))
                         (cons '1 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   (cons (cons (gx#datum->syntax '#f 'set!)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-count)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'tab)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'fx+)
                         (cons (cons (gx#datum->syntax '#f '&raw-table-count)
                                     (cons (gx#datum->syntax '#f 'tab) '()))
                               (cons '1 '())))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                 (cons (cons (gx#datum->syntax '#f 'lambda)
                             (cons '()
                                   (cons (cons (gx#datum->syntax '#f 'set!)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-count)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'tab)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'fx+)
                         (cons (cons (gx#datum->syntax '#f '&raw-table-count)
                                     (cons (gx#datum->syntax '#f 'tab) '()))
                               (cons '1 '())))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'def)
                         (cons (cons _%L92471%_
                                     (cons (gx#datum->syntax '#f 'tab)
                                           (cons (gx#datum->syntax '#f 'key)
                                                 (cons _%L92471%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'default)
                                                             '())))))
                               (cons (cons (gx#datum->syntax '#f 'when)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'fx<)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '&raw-table-free)
                           (cons (gx#datum->syntax '#f 'tab) '()))
                     (cons (cons (gx#datum->syntax '#f 'fxquotient)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-length)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '&raw-table-table)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'tab)
                                                               '()))
                                                   '()))
                                       (cons '4 '())))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__raw-table-rehash!)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'tab)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons _%L92470%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'tab)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'key)
                                                             (cons _%L92471%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                   (cons (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _%L92470%_
                                           (cons (gx#datum->syntax '#f 'tab)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'key)
                                                       (cons _%L92471%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'default)
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'let)
                                                 (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'table)
                           (cons (cons (gx#datum->syntax '#f '&raw-table-table)
                                       (cons (gx#datum->syntax '#f 'tab) '()))
                                 '()))
                     (cons (cons (gx#datum->syntax '#f 'seed)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              '&raw-table-seed)
                                             (cons (gx#datum->syntax '#f 'tab)
                                                   '()))
                                       '()))
                           '()))
               (cons (cons (gx#datum->syntax '#f '__table-update!)
                           (cons (gx#datum->syntax '#f 'table)
                                 (cons (gx#datum->syntax '#f 'seed)
                                       (cons _%L92468%_
                                             (cons _%L92466%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'key)
                                                         (cons _%L92471%_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'default)
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons '()
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'set!)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '&raw-table-free)
                               (cons (gx#datum->syntax '#f 'tab) '()))
                         (cons (cons (gx#datum->syntax '#f 'fx-)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '&raw-table-free)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'tab)
                                                       '()))
                                           (cons '1 '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'set!)
                         (cons (cons (gx#datum->syntax '#f '&raw-table-count)
                                     (cons (gx#datum->syntax '#f 'tab) '()))
                               (cons (cons (gx#datum->syntax '#f 'fx+)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '&raw-table-count)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'tab)
                                                             '()))
                                                 (cons '1 '())))
                                     '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons '()
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'set!)
                         (cons (cons (gx#datum->syntax '#f '&raw-table-count)
                                     (cons (gx#datum->syntax '#f 'tab) '()))
                               (cons (cons (gx#datum->syntax '#f 'fx+)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '&raw-table-count)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'tab)
                                                             '()))
                                                 (cons '1 '())))
                                     '())))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         (cons (cons (gx#datum->syntax '#f 'def)
                                     (cons (cons _%L92469%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'tab)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'key)
                                                             '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'table)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              '&raw-table-table)
                                             (cons (gx#datum->syntax '#f 'tab)
                                                   '()))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'seed)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '&raw-table-seed)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'tab)
                                                         '()))
                                             '()))
                                 '()))
                     (cons (cons (gx#datum->syntax '#f '__table-del!)
                                 (cons (gx#datum->syntax '#f 'table)
                                       (cons (gx#datum->syntax '#f 'seed)
                                             (cons _%L92468%_
                                                   (cons _%L92466%_
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'key)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'lambda)
                                   (cons '()
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'set!)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '&raw-table-count)
                         (cons (gx#datum->syntax '#f 'tab) '()))
                   (cons (cons (gx#datum->syntax '#f 'fx-)
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            '&raw-table-count)
                                           (cons (gx#datum->syntax '#f 'tab)
                                                 '()))
                                     (cons '1 '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     _%hd9235292460%_
                     _%hd9234992450%_
                     _%hd9234692440%_
                     _%hd9234392430%_
                     _%hd9234092420%_
                     _%hd9233792410%_
                     _%hd9233492400%_
                     _%hd9233192390%_
                     _%hd9232892380%_)
                    (_%g9231392359%_ _%g9231492363%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9231392359%_
                                                     _%g9231492363%_))))
                                            (_%g9231392359%_
                                             _%g9231492363%_))))
                                    (_%g9231392359%_ _%g9231492363%_))))
                            (_%g9231392359%_ _%g9231492363%_))))
                    (_%g9231392359%_ _%g9231492363%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9231392359%_
                                                     _%g9231492363%_))))
                                            (_%g9231392359%_
                                             _%g9231492363%_))))
                                    (_%g9231392359%_ _%g9231492363%_))))
                            (_%g9231392359%_ _%g9231492363%_))))
                    (_%g9231392359%_ _%g9231492363%_)))))
        (_%g9231292513%_ _%$stx92309%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx92517%_)
      (let* ((_%g9252192543%_
              (lambda (_%g9252292539%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9252292539%_)))
             (_%g9252092612%_
              (lambda (_%g9252292547%_)
                (if (gx#stx-pair? _%g9252292547%_)
                    (let ((_%e9252692550%_ (gx#syntax-e _%g9252292547%_)))
                      (let ((_%hd9252792554%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9252692550%_)))
                            (_%tl9252892557%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9252692550%_))))
                        (if (gx#stx-pair? _%tl9252892557%_)
                            (let ((_%e9252992560%_
                                   (gx#syntax-e _%tl9252892557%_)))
                              (let ((_%hd9253092564%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9252992560%_)))
                                    (_%tl9253192567%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9252992560%_))))
                                (if (gx#stx-pair? _%tl9253192567%_)
                                    (let ((_%e9253292570%_
                                           (gx#syntax-e _%tl9253192567%_)))
                                      (let ((_%hd9253392574%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9253292570%_)))
                                            (_%tl9253492577%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9253292570%_))))
                                        (if (gx#stx-pair? _%tl9253492577%_)
                                            (let ((_%e9253592580%_
                                                   (gx#syntax-e
                                                    _%tl9253492577%_)))
                                              (let ((_%hd9253692584%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9253592580%_)))
                                                    (_%tl9253792587%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9253592580%_))))
                                                (if (gx#stx-null?
                                                     _%tl9253792587%_)
                                                    ((lambda (_%L92590%_
                                                              _%L92592%_
                                                              _%L92593%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%L92593%_
                                                   (cons _%L92592%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%L92592%_ (cons _%L92592%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%L92590%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd9253692584%_
                                                     _%hd9253392574%_
                                                     _%hd9253092564%_)
                                                    (_%g9252192543%_
                                                     _%g9252292547%_))))
                                            (_%g9252192543%_
                                             _%g9252292547%_))))
                                    (_%g9252192543%_ _%g9252292547%_))))
                            (_%g9252192543%_ _%g9252292547%_))))
                    (_%g9252192543%_ _%g9252292547%_)))))
        (_%g9252092612%_ _%$stx92517%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx92616%_)
      (let* ((_%g9262092654%_
              (lambda (_%g9262192650%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9262192650%_)))
             (_%g9261992765%_
              (lambda (_%g9262192658%_)
                (if (gx#stx-pair? _%g9262192658%_)
                    (let ((_%e9262892661%_ (gx#syntax-e _%g9262192658%_)))
                      (let ((_%hd9262992665%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9262892661%_)))
                            (_%tl9263092668%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9262892661%_))))
                        (if (gx#stx-pair? _%tl9263092668%_)
                            (let ((_%e9263192671%_
                                   (gx#syntax-e _%tl9263092668%_)))
                              (let ((_%hd9263292675%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9263192671%_)))
                                    (_%tl9263392678%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9263192671%_))))
                                (if (gx#stx-pair? _%tl9263392678%_)
                                    (let ((_%e9263492681%_
                                           (gx#syntax-e _%tl9263392678%_)))
                                      (let ((_%hd9263592685%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9263492681%_)))
                                            (_%tl9263692688%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9263492681%_))))
                                        (if (gx#stx-pair? _%tl9263692688%_)
                                            (let ((_%e9263792691%_
                                                   (gx#syntax-e
                                                    _%tl9263692688%_)))
                                              (let ((_%hd9263892695%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9263792691%_)))
                                                    (_%tl9263992698%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9263792691%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9263992698%_)
                                                    (let ((_%e9264092701%_
                                                           (gx#syntax-e
                                                            _%tl9263992698%_)))
                                                      (let ((_%hd9264192705%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9264092701%_)))
                    (_%tl9264292708%_
                     (let () (declare (not safe)) (##cdr _%e9264092701%_))))
                (if (gx#stx-pair? _%tl9264292708%_)
                    (let ((_%e9264392711%_ (gx#syntax-e _%tl9264292708%_)))
                      (let ((_%hd9264492715%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9264392711%_)))
                            (_%tl9264592718%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9264392711%_))))
                        (if (gx#stx-pair? _%tl9264592718%_)
                            (let ((_%e9264692721%_
                                   (gx#syntax-e _%tl9264592718%_)))
                              (let ((_%hd9264792725%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9264692721%_)))
                                    (_%tl9264892728%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9264692721%_))))
                                (if (gx#stx-null? _%tl9264892728%_)
                                    ((lambda (_%L92731%_
                                              _%L92733%_
                                              _%L92734%_
                                              _%L92735%_
                                              _%L92736%_
                                              _%L92737%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L92735%_
                                               (cons _%L92733%_ '()))
                                         (cons _%L92736%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L92737%_ '()))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'entries)
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'fxquotient)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons '2 '())))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'start)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fxarithmetic-shift-left)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'fxmodulo)
                         (cons (gx#datum->syntax '#f 'h)
                               (cons (gx#datum->syntax '#f 'entries) '())))
                   (cons '1 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'loop)
                             (cons (cons (cons (gx#datum->syntax '#f 'probe)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'start)
                                                     '()))
                                         (cons (cons (gx#datum->syntax '#f 'i)
                                                     (cons '1 '()))
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'deleted)
                                                           (cons '#f '()))
                                                     '())))
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'k)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'vector-ref)
                               (cons _%L92737%_
                                     (cons (gx#datum->syntax '#f 'probe) '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'cond)
                         (cons (cons (cons (gx#datum->syntax '#f 'eq?)
                                           (cons (gx#datum->syntax '#f 'k)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'macro-unused-obj)
                                                             '())
                                                       '())))
                                     (cons _%L92731%_ '()))
                               (cons (cons (cons (gx#datum->syntax '#f 'eq?)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'k)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'macro-deleted-obj)
                           '())
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'loop)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe-step)
                           (cons (gx#datum->syntax '#f 'start)
                                 (cons (gx#datum->syntax '#f 'i)
                                       (cons (gx#datum->syntax '#f 'size)
                                             '()))))
                     (cons (cons (gx#datum->syntax '#f 'fx+)
                                 (cons (gx#datum->syntax '#f 'i)
                                       (cons '1 '())))
                           (cons (cons (gx#datum->syntax '#f 'or)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (cons (cons _%L92734%_
                                                       (cons _%L92733%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%L92737%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'probe)
                                             (cons '1 '())))
                                 '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'else)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'loop)
                           (cons (cons (gx#datum->syntax '#f 'probe-step)
                                       (cons (gx#datum->syntax '#f 'start)
                                             (cons (gx#datum->syntax '#f 'i)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'size)
                                                         '()))))
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax '#f 'i)
                                                   (cons '1 '())))
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             '()))))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd9264792725%_
                                     _%hd9264492715%_
                                     _%hd9264192705%_
                                     _%hd9263892695%_
                                     _%hd9263592685%_
                                     _%hd9263292675%_)
                                    (_%g9262092654%_ _%g9262192658%_))))
                            (_%g9262092654%_ _%g9262192658%_))))
                    (_%g9262092654%_ _%g9262192658%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9262092654%_
                                                     _%g9262192658%_))))
                                            (_%g9262092654%_
                                             _%g9262192658%_))))
                                    (_%g9262092654%_ _%g9262192658%_))))
                            (_%g9262092654%_ _%g9262192658%_))))
                    (_%g9262092654%_ _%g9262192658%_)))))
        (_%g9261992765%_ _%$stx92616%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx92769%_)
      (let* ((_%g9277392815%_
              (lambda (_%g9277492811%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9277492811%_)))
             (_%g9277292954%_
              (lambda (_%g9277492819%_)
                (if (gx#stx-pair? _%g9277492819%_)
                    (let ((_%e9278392822%_ (gx#syntax-e _%g9277492819%_)))
                      (let ((_%hd9278492826%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9278392822%_)))
                            (_%tl9278592829%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9278392822%_))))
                        (if (gx#stx-pair? _%tl9278592829%_)
                            (let ((_%e9278692832%_
                                   (gx#syntax-e _%tl9278592829%_)))
                              (let ((_%hd9278792836%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9278692832%_)))
                                    (_%tl9278892839%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9278692832%_))))
                                (if (gx#stx-pair? _%tl9278892839%_)
                                    (let ((_%e9278992842%_
                                           (gx#syntax-e _%tl9278892839%_)))
                                      (let ((_%hd9279092846%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9278992842%_)))
                                            (_%tl9279192849%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9278992842%_))))
                                        (if (gx#stx-pair? _%tl9279192849%_)
                                            (let ((_%e9279292852%_
                                                   (gx#syntax-e
                                                    _%tl9279192849%_)))
                                              (let ((_%hd9279392856%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9279292852%_)))
                                                    (_%tl9279492859%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9279292852%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9279492859%_)
                                                    (let ((_%e9279592862%_
                                                           (gx#syntax-e
                                                            _%tl9279492859%_)))
                                                      (let ((_%hd9279692866%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9279592862%_)))
                    (_%tl9279792869%_
                     (let () (declare (not safe)) (##cdr _%e9279592862%_))))
                (if (gx#stx-pair? _%tl9279792869%_)
                    (let ((_%e9279892872%_ (gx#syntax-e _%tl9279792869%_)))
                      (let ((_%hd9279992876%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9279892872%_)))
                            (_%tl9280092879%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9279892872%_))))
                        (if (gx#stx-pair? _%tl9280092879%_)
                            (let ((_%e9280192882%_
                                   (gx#syntax-e _%tl9280092879%_)))
                              (let ((_%hd9280292886%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9280192882%_)))
                                    (_%tl9280392889%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9280192882%_))))
                                (if (gx#stx-pair? _%tl9280392889%_)
                                    (let ((_%e9280492892%_
                                           (gx#syntax-e _%tl9280392889%_)))
                                      (let ((_%hd9280592896%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9280492892%_)))
                                            (_%tl9280692899%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9280492892%_))))
                                        (if (gx#stx-pair? _%tl9280692899%_)
                                            (let ((_%e9280792902%_
                                                   (gx#syntax-e
                                                    _%tl9280692899%_)))
                                              (let ((_%hd9280892906%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9280792902%_)))
                                                    (_%tl9280992909%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9280792902%_))))
                                                (if (gx#stx-null?
                                                     _%tl9280992909%_)
                                                    ((lambda (_%L92912%_
                                                              _%L92914%_
                                                              _%L92915%_
                                                              _%L92916%_
                                                              _%L92917%_
                                                              _%L92918%_
                                                              _%L92919%_
                                                              _%L92920%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let*)
                                                             (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        '#f
                                        'h)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'fxxor)
                                                   (cons (cons _%L92918%_
                                                               (cons _%L92916%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%L92919%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%L92920%_ '()))
                                                   '()))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'entries)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'fxquotient)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'size)
                             (cons '2 '())))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'start)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fxarithmetic-shift-left)
                             (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                         (cons (gx#datum->syntax '#f 'h)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'entries)
                                                     '())))
                                   (cons '1 '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           (cons (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f 'loop)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'probe)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'start)
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'i) (cons '1 '()))
                       (cons (cons (gx#datum->syntax '#f 'deleted)
                                   (cons '#f '()))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'k)
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%L92920%_
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           '())))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'cond)
                                         (cons (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'eq?)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'k)
                         (cons (cons (gx#datum->syntax '#f 'macro-unused-obj)
                                     '())
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'if)
                         (cons (gx#datum->syntax '#f 'deleted)
                               (cons (cons (gx#datum->syntax '#f 'begin)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'vector-set!)
                                                       (cons _%L92920%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%L92916%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L92920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%L92915%_ '()))))
               (cons (cons _%L92912%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L92920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%L92916%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L92920%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%L92915%_ '()))))
                     (cons (cons _%L92914%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'eq?)
                         (cons (gx#datum->syntax '#f 'k)
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            'macro-deleted-obj)
                                           '())
                                     '())))
                   (cons (cons (gx#datum->syntax '#f 'loop)
                               (cons (cons (gx#datum->syntax '#f 'probe-step)
                                           (cons (gx#datum->syntax '#f 'start)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'i)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'size)
                                                             '()))))
                                     (cons (cons (gx#datum->syntax '#f 'fx+)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'i)
                                                       (cons '1 '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'or)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'deleted)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (cons _%L92917%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L92916%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%L92920%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%L92916%_ '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%L92920%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%L92915%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   (cons (cons (gx#datum->syntax '#f 'else)
                               (cons (cons (gx#datum->syntax '#f 'loop)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'probe-step)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'start)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'i)
                           (cons (gx#datum->syntax '#f 'size) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'i)
                           (cons '1 '())))
               (cons (gx#datum->syntax '#f 'deleted) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd9280892906%_
                                                     _%hd9280592896%_
                                                     _%hd9280292886%_
                                                     _%hd9279992876%_
                                                     _%hd9279692866%_
                                                     _%hd9279392856%_
                                                     _%hd9279092846%_
                                                     _%hd9278792836%_)
                                                    (_%g9277392815%_
                                                     _%g9277492819%_))))
                                            (_%g9277392815%_
                                             _%g9277492819%_))))
                                    (_%g9277392815%_ _%g9277492819%_))))
                            (_%g9277392815%_ _%g9277492819%_))))
                    (_%g9277392815%_ _%g9277492819%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9277392815%_
                                                     _%g9277492819%_))))
                                            (_%g9277392815%_
                                             _%g9277492819%_))))
                                    (_%g9277392815%_ _%g9277492819%_))))
                            (_%g9277392815%_ _%g9277492819%_))))
                    (_%g9277392815%_ _%g9277492819%_)))))
        (_%g9277292954%_ _%$stx92769%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx92958%_)
      (let* ((_%g9296293008%_
              (lambda (_%g9296393004%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9296393004%_)))
             (_%g9296193161%_
              (lambda (_%g9296393012%_)
                (if (gx#stx-pair? _%g9296393012%_)
                    (let ((_%e9297393015%_ (gx#syntax-e _%g9296393012%_)))
                      (let ((_%hd9297493019%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9297393015%_)))
                            (_%tl9297593022%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9297393015%_))))
                        (if (gx#stx-pair? _%tl9297593022%_)
                            (let ((_%e9297693025%_
                                   (gx#syntax-e _%tl9297593022%_)))
                              (let ((_%hd9297793029%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9297693025%_)))
                                    (_%tl9297893032%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9297693025%_))))
                                (if (gx#stx-pair? _%tl9297893032%_)
                                    (let ((_%e9297993035%_
                                           (gx#syntax-e _%tl9297893032%_)))
                                      (let ((_%hd9298093039%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9297993035%_)))
                                            (_%tl9298193042%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9297993035%_))))
                                        (if (gx#stx-pair? _%tl9298193042%_)
                                            (let ((_%e9298293045%_
                                                   (gx#syntax-e
                                                    _%tl9298193042%_)))
                                              (let ((_%hd9298393049%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9298293045%_)))
                                                    (_%tl9298493052%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9298293045%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9298493052%_)
                                                    (let ((_%e9298593055%_
                                                           (gx#syntax-e
                                                            _%tl9298493052%_)))
                                                      (let ((_%hd9298693059%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9298593055%_)))
                    (_%tl9298793062%_
                     (let () (declare (not safe)) (##cdr _%e9298593055%_))))
                (if (gx#stx-pair? _%tl9298793062%_)
                    (let ((_%e9298893065%_ (gx#syntax-e _%tl9298793062%_)))
                      (let ((_%hd9298993069%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9298893065%_)))
                            (_%tl9299093072%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9298893065%_))))
                        (if (gx#stx-pair? _%tl9299093072%_)
                            (let ((_%e9299193075%_
                                   (gx#syntax-e _%tl9299093072%_)))
                              (let ((_%hd9299293079%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9299193075%_)))
                                    (_%tl9299393082%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9299193075%_))))
                                (if (gx#stx-pair? _%tl9299393082%_)
                                    (let ((_%e9299493085%_
                                           (gx#syntax-e _%tl9299393082%_)))
                                      (let ((_%hd9299593089%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9299493085%_)))
                                            (_%tl9299693092%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9299493085%_))))
                                        (if (gx#stx-pair? _%tl9299693092%_)
                                            (let ((_%e9299793095%_
                                                   (gx#syntax-e
                                                    _%tl9299693092%_)))
                                              (let ((_%hd9299893099%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9299793095%_)))
                                                    (_%tl9299993102%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9299793095%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9299993102%_)
                                                    (let ((_%e9300093105%_
                                                           (gx#syntax-e
                                                            _%tl9299993102%_)))
                                                      (let ((_%hd9300193109%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9300093105%_)))
                    (_%tl9300293112%_
                     (let () (declare (not safe)) (##cdr _%e9300093105%_))))
                (if (gx#stx-null? _%tl9300293112%_)
                    ((lambda (_%L93115%_
                              _%L93117%_
                              _%L93118%_
                              _%L93119%_
                              _%L93120%_
                              _%L93121%_
                              _%L93122%_
                              _%L93123%_
                              _%L93124%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%L93122%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L93120%_ '()))
                         (cons _%L93123%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%L93124%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'entries)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'fxquotient)
                               (cons (gx#datum->syntax '#f 'size)
                                     (cons '2 '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'start)
                         (cons (cons (gx#datum->syntax
                                      '#f
                                      'fxarithmetic-shift-left)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'fxmodulo)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'h)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'entries)
                                                             '())))
                                           (cons '1 '())))
                               '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'loop)
                                                     (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'probe)
                               (cons (gx#datum->syntax '#f 'start) '()))
                         (cons (cons (gx#datum->syntax '#f 'i) (cons '1 '()))
                               (cons (cons (gx#datum->syntax '#f 'deleted)
                                           (cons '#f '()))
                                     '())))
                   (cons (cons (gx#datum->syntax '#f 'let)
                               (cons (cons (gx#datum->syntax '#f 'k)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'vector-ref)
                                                       (cons _%L93124%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (cons (gx#datum->syntax '#f 'cond)
                                                 (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'eq?)
                           (cons (gx#datum->syntax '#f 'k)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-unused-obj)
                                             '())
                                       '())))
                     (cons (cons (gx#datum->syntax '#f 'if)
                                 (cons (gx#datum->syntax '#f 'deleted)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'begin)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'vector-set!)
                                                               (cons _%L93124%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%L93120%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%L93124%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%L93119%_
                                                     (cons _%L93118%_ '()))
                                               '()))))
                       (cons (cons _%L93115%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%L93124%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%L93120%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%L93124%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%L93119%_
                                                           (cons _%L93118%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%L93117%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))
               (cons (cons (cons (gx#datum->syntax '#f 'eq?)
                                 (cons (gx#datum->syntax '#f 'k)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'macro-deleted-obj)
                                                   '())
                                             '())))
                           (cons (cons (gx#datum->syntax '#f 'loop)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'probe-step)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'start)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'i)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'size)
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'fx+)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'i)
                                                               (cons '1 '())))
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'or)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'deleted)
                             (cons (gx#datum->syntax '#f 'probe) '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     (cons (cons (cons _%L93121%_
                                       (cons _%L93120%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%L93124%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%L93120%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%L93124%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%L93119%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%L93124%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'fx+)
                         (cons (gx#datum->syntax '#f 'probe) (cons '1 '())))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (cons (cons (gx#datum->syntax '#f 'else)
                                       (cons (cons (gx#datum->syntax '#f 'loop)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'probe-step)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'start)
                             (cons (gx#datum->syntax '#f 'i)
                                   (cons (gx#datum->syntax '#f 'size) '()))))
                 (cons (cons (gx#datum->syntax '#f 'fx+)
                             (cons (gx#datum->syntax '#f 'i) (cons '1 '())))
                       (cons (gx#datum->syntax '#f 'deleted) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                     _%hd9300193109%_
                     _%hd9299893099%_
                     _%hd9299593089%_
                     _%hd9299293079%_
                     _%hd9298993069%_
                     _%hd9298693059%_
                     _%hd9298393049%_
                     _%hd9298093039%_
                     _%hd9297793029%_)
                    (_%g9296293008%_ _%g9296393012%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9296293008%_
                                                     _%g9296393012%_))))
                                            (_%g9296293008%_
                                             _%g9296393012%_))))
                                    (_%g9296293008%_ _%g9296393012%_))))
                            (_%g9296293008%_ _%g9296393012%_))))
                    (_%g9296293008%_ _%g9296393012%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9296293008%_
                                                     _%g9296393012%_))))
                                            (_%g9296293008%_
                                             _%g9296393012%_))))
                                    (_%g9296293008%_ _%g9296393012%_))))
                            (_%g9296293008%_ _%g9296393012%_))))
                    (_%g9296293008%_ _%g9296393012%_)))))
        (_%g9296193161%_ _%$stx92958%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx93165%_)
      (let* ((_%g9316993203%_
              (lambda (_%g9317093199%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9317093199%_)))
             (_%g9316893314%_
              (lambda (_%g9317093207%_)
                (if (gx#stx-pair? _%g9317093207%_)
                    (let ((_%e9317793210%_ (gx#syntax-e _%g9317093207%_)))
                      (let ((_%hd9317893214%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9317793210%_)))
                            (_%tl9317993217%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9317793210%_))))
                        (if (gx#stx-pair? _%tl9317993217%_)
                            (let ((_%e9318093220%_
                                   (gx#syntax-e _%tl9317993217%_)))
                              (let ((_%hd9318193224%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9318093220%_)))
                                    (_%tl9318293227%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9318093220%_))))
                                (if (gx#stx-pair? _%tl9318293227%_)
                                    (let ((_%e9318393230%_
                                           (gx#syntax-e _%tl9318293227%_)))
                                      (let ((_%hd9318493234%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9318393230%_)))
                                            (_%tl9318593237%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9318393230%_))))
                                        (if (gx#stx-pair? _%tl9318593237%_)
                                            (let ((_%e9318693240%_
                                                   (gx#syntax-e
                                                    _%tl9318593237%_)))
                                              (let ((_%hd9318793244%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9318693240%_)))
                                                    (_%tl9318893247%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9318693240%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9318893247%_)
                                                    (let ((_%e9318993250%_
                                                           (gx#syntax-e
                                                            _%tl9318893247%_)))
                                                      (let ((_%hd9319093254%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9318993250%_)))
                    (_%tl9319193257%_
                     (let () (declare (not safe)) (##cdr _%e9318993250%_))))
                (if (gx#stx-pair? _%tl9319193257%_)
                    (let ((_%e9319293260%_ (gx#syntax-e _%tl9319193257%_)))
                      (let ((_%hd9319393264%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9319293260%_)))
                            (_%tl9319493267%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9319293260%_))))
                        (if (gx#stx-pair? _%tl9319493267%_)
                            (let ((_%e9319593270%_
                                   (gx#syntax-e _%tl9319493267%_)))
                              (let ((_%hd9319693274%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9319593270%_)))
                                    (_%tl9319793277%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9319593270%_))))
                                (if (gx#stx-null? _%tl9319793277%_)
                                    ((lambda (_%L93280%_
                                              _%L93282%_
                                              _%L93283%_
                                              _%L93284%_
                                              _%L93285%_
                                              _%L93286%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L93284%_
                                               (cons _%L93282%_ '()))
                                         (cons _%L93285%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L93286%_ '()))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'entries)
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'fxquotient)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons '2 '())))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'start)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fxarithmetic-shift-left)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'fxmodulo)
                         (cons (gx#datum->syntax '#f 'h)
                               (cons (gx#datum->syntax '#f 'entries) '())))
                   (cons '1 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'loop)
                             (cons (cons (cons (gx#datum->syntax '#f 'probe)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'start)
                                                     '()))
                                         (cons (cons (gx#datum->syntax '#f 'i)
                                                     (cons '1 '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'k)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'vector-ref)
                               (cons _%L93286%_
                                     (cons (gx#datum->syntax '#f 'probe) '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'cond)
                         (cons (cons (cons (gx#datum->syntax '#f 'eq?)
                                           (cons (gx#datum->syntax '#f 'k)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'macro-unused-obj)
                                                             '())
                                                       '())))
                                     (cons (cons (gx#datum->syntax '#f 'void)
                                                 '())
                                           '()))
                               (cons (cons (cons (gx#datum->syntax '#f 'eq?)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'k)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'macro-deleted-obj)
                           '())
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'loop)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe-step)
                           (cons (gx#datum->syntax '#f 'start)
                                 (cons (gx#datum->syntax '#f 'i)
                                       (cons (gx#datum->syntax '#f 'size)
                                             '()))))
                     (cons (cons (gx#datum->syntax '#f 'fx+)
                                 (cons (gx#datum->syntax '#f 'i)
                                       (cons '1 '())))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (cons (cons _%L93283%_
                                                       (cons _%L93282%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L93286%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L93286%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'macro-absent-obj)
                                                   '())
                                             '()))))
                     (cons (cons _%L93280%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'else)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'loop)
                           (cons (cons (gx#datum->syntax '#f 'probe-step)
                                       (cons (gx#datum->syntax '#f 'start)
                                             (cons (gx#datum->syntax '#f 'i)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'size)
                                                         '()))))
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax '#f 'i)
                                                   (cons '1 '())))
                                       '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd9319693274%_
                                     _%hd9319393264%_
                                     _%hd9319093254%_
                                     _%hd9318793244%_
                                     _%hd9318493234%_
                                     _%hd9318193224%_)
                                    (_%g9316993203%_ _%g9317093207%_))))
                            (_%g9316993203%_ _%g9317093207%_))))
                    (_%g9316993203%_ _%g9317093207%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9316993203%_
                                                     _%g9317093207%_))))
                                            (_%g9316993203%_
                                             _%g9317093207%_))))
                                    (_%g9316993203%_ _%g9317093207%_))))
                            (_%g9316993203%_ _%g9317093207%_))))
                    (_%g9316993203%_ _%g9317093207%_)))))
        (_%g9316893314%_ _%$stx93165%_)))))

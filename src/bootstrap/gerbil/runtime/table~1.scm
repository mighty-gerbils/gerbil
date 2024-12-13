(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_%$stx91426%_)
      (let* ((_%g9143091444%_
              (lambda (_%g9143191440%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9143191440%_)))
             (_%g9142991486%_
              (lambda (_%g9143191448%_)
                (if (gx#stx-pair? _%g9143191448%_)
                    (let ((_%e9143391451%_ (gx#syntax-e _%g9143191448%_)))
                      (let ((_%hd9143491455%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9143391451%_)))
                            (_%tl9143591458%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9143391451%_))))
                        (if (gx#stx-pair? _%tl9143591458%_)
                            (let ((_%e9143691461%_
                                   (gx#syntax-e _%tl9143591458%_)))
                              (let ((_%hd9143791465%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9143691461%_)))
                                    (_%tl9143891468%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9143691461%_))))
                                (if (gx#stx-null? _%tl9143891468%_)
                                    ((lambda (_%L91471%_)
                                       (cons (gx#datum->syntax '#f 'macro-slot)
                                             (cons '1 (cons _%L91471%_ '()))))
                                     _%hd9143791465%_)
                                    (_%g9143091444%_ _%g9143191448%_))))
                            (_%g9143091444%_ _%g9143191448%_))))
                    (_%g9143091444%_ _%g9143191448%_)))))
        (_%g9142991486%_ _%$stx91426%_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_%$stx91490%_)
      (let* ((_%g9149491540%_
              (lambda (_%g9149591536%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9149591536%_)))
             (_%g9149391693%_
              (lambda (_%g9149591544%_)
                (if (gx#stx-pair? _%g9149591544%_)
                    (let ((_%e9150591547%_ (gx#syntax-e _%g9149591544%_)))
                      (let ((_%hd9150691551%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9150591547%_)))
                            (_%tl9150791554%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9150591547%_))))
                        (if (gx#stx-pair? _%tl9150791554%_)
                            (let ((_%e9150891557%_
                                   (gx#syntax-e _%tl9150791554%_)))
                              (let ((_%hd9150991561%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9150891557%_)))
                                    (_%tl9151091564%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9150891557%_))))
                                (if (gx#stx-pair? _%tl9151091564%_)
                                    (let ((_%e9151191567%_
                                           (gx#syntax-e _%tl9151091564%_)))
                                      (let ((_%hd9151291571%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9151191567%_)))
                                            (_%tl9151391574%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9151191567%_))))
                                        (if (gx#stx-pair? _%tl9151391574%_)
                                            (let ((_%e9151491577%_
                                                   (gx#syntax-e
                                                    _%tl9151391574%_)))
                                              (let ((_%hd9151591581%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9151491577%_)))
                                                    (_%tl9151691584%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9151491577%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9151691584%_)
                                                    (let ((_%e9151791587%_
                                                           (gx#syntax-e
                                                            _%tl9151691584%_)))
                                                      (let ((_%hd9151891591%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9151791587%_)))
                    (_%tl9151991594%_
                     (let () (declare (not safe)) (##cdr _%e9151791587%_))))
                (if (gx#stx-pair? _%tl9151991594%_)
                    (let ((_%e9152091597%_ (gx#syntax-e _%tl9151991594%_)))
                      (let ((_%hd9152191601%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9152091597%_)))
                            (_%tl9152291604%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9152091597%_))))
                        (if (gx#stx-pair? _%tl9152291604%_)
                            (let ((_%e9152391607%_
                                   (gx#syntax-e _%tl9152291604%_)))
                              (let ((_%hd9152491611%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9152391607%_)))
                                    (_%tl9152591614%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9152391607%_))))
                                (if (gx#stx-pair? _%tl9152591614%_)
                                    (let ((_%e9152691617%_
                                           (gx#syntax-e _%tl9152591614%_)))
                                      (let ((_%hd9152791621%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9152691617%_)))
                                            (_%tl9152891624%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9152691617%_))))
                                        (if (gx#stx-pair? _%tl9152891624%_)
                                            (let ((_%e9152991627%_
                                                   (gx#syntax-e
                                                    _%tl9152891624%_)))
                                              (let ((_%hd9153091631%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9152991627%_)))
                                                    (_%tl9153191634%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9152991627%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9153191634%_)
                                                    (let ((_%e9153291637%_
                                                           (gx#syntax-e
                                                            _%tl9153191634%_)))
                                                      (let ((_%hd9153391641%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9153291637%_)))
                    (_%tl9153491644%_
                     (let () (declare (not safe)) (##cdr _%e9153291637%_))))
                (if (gx#stx-null? _%tl9153491644%_)
                    ((lambda (_%L91647%_
                              _%L91649%_
                              _%L91650%_
                              _%L91651%_
                              _%L91652%_
                              _%L91653%_
                              _%L91654%_
                              _%L91655%_
                              _%L91656%_)
                       (cons (gx#datum->syntax '#f 'begin)
                             (cons (cons (gx#datum->syntax '#f 'def)
                                         (cons (cons _%L91656%_
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
                         (cons _%L91649%_
                               (cons _%L91647%_
                                     (cons (gx#datum->syntax '#f 'seed)
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   (cons (cons (gx#datum->syntax '#f 'def)
                                               (cons (cons _%L91655%_
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
                                                       (cons _%L91649%_
                                                             (cons _%L91647%_
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
                                                     (cons (cons _%L91654%_
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
                         (cons (cons _%L91653%_
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
                                                           (cons (cons _%L91653%_
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
                           (cons _%L91649%_
                                 (cons _%L91647%_
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
                         (cons (cons _%L91652%_
                                     (cons (gx#datum->syntax '#f 'tab)
                                           (cons (gx#datum->syntax '#f 'key)
                                                 (cons _%L91652%_
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
                                     (cons (cons _%L91651%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'tab)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'key)
                                                             (cons _%L91652%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                   (cons (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _%L91651%_
                                           (cons (gx#datum->syntax '#f 'tab)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'key)
                                                       (cons _%L91652%_
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
                                       (cons _%L91649%_
                                             (cons _%L91647%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'key)
                                                         (cons _%L91652%_
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
                                     (cons (cons _%L91650%_
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
                                             (cons _%L91649%_
                                                   (cons _%L91647%_
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
                     _%hd9153391641%_
                     _%hd9153091631%_
                     _%hd9152791621%_
                     _%hd9152491611%_
                     _%hd9152191601%_
                     _%hd9151891591%_
                     _%hd9151591581%_
                     _%hd9151291571%_
                     _%hd9150991561%_)
                    (_%g9149491540%_ _%g9149591544%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9149491540%_
                                                     _%g9149591544%_))))
                                            (_%g9149491540%_
                                             _%g9149591544%_))))
                                    (_%g9149491540%_ _%g9149591544%_))))
                            (_%g9149491540%_ _%g9149591544%_))))
                    (_%g9149491540%_ _%g9149591544%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9149491540%_
                                                     _%g9149591544%_))))
                                            (_%g9149491540%_
                                             _%g9149591544%_))))
                                    (_%g9149491540%_ _%g9149591544%_))))
                            (_%g9149491540%_ _%g9149591544%_))))
                    (_%g9149491540%_ _%g9149591544%_)))))
        (_%g9149391693%_ _%$stx91490%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx91697%_)
      (let* ((_%g9170191723%_
              (lambda (_%g9170291719%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9170291719%_)))
             (_%g9170091792%_
              (lambda (_%g9170291727%_)
                (if (gx#stx-pair? _%g9170291727%_)
                    (let ((_%e9170691730%_ (gx#syntax-e _%g9170291727%_)))
                      (let ((_%hd9170791734%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9170691730%_)))
                            (_%tl9170891737%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9170691730%_))))
                        (if (gx#stx-pair? _%tl9170891737%_)
                            (let ((_%e9170991740%_
                                   (gx#syntax-e _%tl9170891737%_)))
                              (let ((_%hd9171091744%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9170991740%_)))
                                    (_%tl9171191747%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9170991740%_))))
                                (if (gx#stx-pair? _%tl9171191747%_)
                                    (let ((_%e9171291750%_
                                           (gx#syntax-e _%tl9171191747%_)))
                                      (let ((_%hd9171391754%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9171291750%_)))
                                            (_%tl9171491757%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9171291750%_))))
                                        (if (gx#stx-pair? _%tl9171491757%_)
                                            (let ((_%e9171591760%_
                                                   (gx#syntax-e
                                                    _%tl9171491757%_)))
                                              (let ((_%hd9171691764%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9171591760%_)))
                                                    (_%tl9171791767%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9171591760%_))))
                                                (if (gx#stx-null?
                                                     _%tl9171791767%_)
                                                    ((lambda (_%L91770%_
                                                              _%L91772%_
                                                              _%L91773%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%L91773%_
                                                   (cons _%L91772%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%L91772%_ (cons _%L91772%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%L91770%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd9171691764%_
                                                     _%hd9171391754%_
                                                     _%hd9171091744%_)
                                                    (_%g9170191723%_
                                                     _%g9170291727%_))))
                                            (_%g9170191723%_
                                             _%g9170291727%_))))
                                    (_%g9170191723%_ _%g9170291727%_))))
                            (_%g9170191723%_ _%g9170291727%_))))
                    (_%g9170191723%_ _%g9170291727%_)))))
        (_%g9170091792%_ _%$stx91697%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx91796%_)
      (let* ((_%g9180091834%_
              (lambda (_%g9180191830%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9180191830%_)))
             (_%g9179991945%_
              (lambda (_%g9180191838%_)
                (if (gx#stx-pair? _%g9180191838%_)
                    (let ((_%e9180891841%_ (gx#syntax-e _%g9180191838%_)))
                      (let ((_%hd9180991845%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9180891841%_)))
                            (_%tl9181091848%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9180891841%_))))
                        (if (gx#stx-pair? _%tl9181091848%_)
                            (let ((_%e9181191851%_
                                   (gx#syntax-e _%tl9181091848%_)))
                              (let ((_%hd9181291855%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9181191851%_)))
                                    (_%tl9181391858%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9181191851%_))))
                                (if (gx#stx-pair? _%tl9181391858%_)
                                    (let ((_%e9181491861%_
                                           (gx#syntax-e _%tl9181391858%_)))
                                      (let ((_%hd9181591865%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9181491861%_)))
                                            (_%tl9181691868%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9181491861%_))))
                                        (if (gx#stx-pair? _%tl9181691868%_)
                                            (let ((_%e9181791871%_
                                                   (gx#syntax-e
                                                    _%tl9181691868%_)))
                                              (let ((_%hd9181891875%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9181791871%_)))
                                                    (_%tl9181991878%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9181791871%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9181991878%_)
                                                    (let ((_%e9182091881%_
                                                           (gx#syntax-e
                                                            _%tl9181991878%_)))
                                                      (let ((_%hd9182191885%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9182091881%_)))
                    (_%tl9182291888%_
                     (let () (declare (not safe)) (##cdr _%e9182091881%_))))
                (if (gx#stx-pair? _%tl9182291888%_)
                    (let ((_%e9182391891%_ (gx#syntax-e _%tl9182291888%_)))
                      (let ((_%hd9182491895%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9182391891%_)))
                            (_%tl9182591898%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9182391891%_))))
                        (if (gx#stx-pair? _%tl9182591898%_)
                            (let ((_%e9182691901%_
                                   (gx#syntax-e _%tl9182591898%_)))
                              (let ((_%hd9182791905%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9182691901%_)))
                                    (_%tl9182891908%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9182691901%_))))
                                (if (gx#stx-null? _%tl9182891908%_)
                                    ((lambda (_%L91911%_
                                              _%L91913%_
                                              _%L91914%_
                                              _%L91915%_
                                              _%L91916%_
                                              _%L91917%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L91915%_
                                               (cons _%L91913%_ '()))
                                         (cons _%L91916%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L91917%_ '()))
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
                               (cons _%L91917%_
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
                                     (cons _%L91911%_ '()))
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
                                     (cons (cons (cons _%L91914%_
                                                       (cons _%L91913%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%L91917%_
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
                                     _%hd9182791905%_
                                     _%hd9182491895%_
                                     _%hd9182191885%_
                                     _%hd9181891875%_
                                     _%hd9181591865%_
                                     _%hd9181291855%_)
                                    (_%g9180091834%_ _%g9180191838%_))))
                            (_%g9180091834%_ _%g9180191838%_))))
                    (_%g9180091834%_ _%g9180191838%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9180091834%_
                                                     _%g9180191838%_))))
                                            (_%g9180091834%_
                                             _%g9180191838%_))))
                                    (_%g9180091834%_ _%g9180191838%_))))
                            (_%g9180091834%_ _%g9180191838%_))))
                    (_%g9180091834%_ _%g9180191838%_)))))
        (_%g9179991945%_ _%$stx91796%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx91949%_)
      (let* ((_%g9195391995%_
              (lambda (_%g9195491991%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9195491991%_)))
             (_%g9195292134%_
              (lambda (_%g9195491999%_)
                (if (gx#stx-pair? _%g9195491999%_)
                    (let ((_%e9196392002%_ (gx#syntax-e _%g9195491999%_)))
                      (let ((_%hd9196492006%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9196392002%_)))
                            (_%tl9196592009%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9196392002%_))))
                        (if (gx#stx-pair? _%tl9196592009%_)
                            (let ((_%e9196692012%_
                                   (gx#syntax-e _%tl9196592009%_)))
                              (let ((_%hd9196792016%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9196692012%_)))
                                    (_%tl9196892019%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9196692012%_))))
                                (if (gx#stx-pair? _%tl9196892019%_)
                                    (let ((_%e9196992022%_
                                           (gx#syntax-e _%tl9196892019%_)))
                                      (let ((_%hd9197092026%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9196992022%_)))
                                            (_%tl9197192029%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9196992022%_))))
                                        (if (gx#stx-pair? _%tl9197192029%_)
                                            (let ((_%e9197292032%_
                                                   (gx#syntax-e
                                                    _%tl9197192029%_)))
                                              (let ((_%hd9197392036%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9197292032%_)))
                                                    (_%tl9197492039%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9197292032%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9197492039%_)
                                                    (let ((_%e9197592042%_
                                                           (gx#syntax-e
                                                            _%tl9197492039%_)))
                                                      (let ((_%hd9197692046%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9197592042%_)))
                    (_%tl9197792049%_
                     (let () (declare (not safe)) (##cdr _%e9197592042%_))))
                (if (gx#stx-pair? _%tl9197792049%_)
                    (let ((_%e9197892052%_ (gx#syntax-e _%tl9197792049%_)))
                      (let ((_%hd9197992056%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9197892052%_)))
                            (_%tl9198092059%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9197892052%_))))
                        (if (gx#stx-pair? _%tl9198092059%_)
                            (let ((_%e9198192062%_
                                   (gx#syntax-e _%tl9198092059%_)))
                              (let ((_%hd9198292066%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9198192062%_)))
                                    (_%tl9198392069%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9198192062%_))))
                                (if (gx#stx-pair? _%tl9198392069%_)
                                    (let ((_%e9198492072%_
                                           (gx#syntax-e _%tl9198392069%_)))
                                      (let ((_%hd9198592076%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9198492072%_)))
                                            (_%tl9198692079%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9198492072%_))))
                                        (if (gx#stx-pair? _%tl9198692079%_)
                                            (let ((_%e9198792082%_
                                                   (gx#syntax-e
                                                    _%tl9198692079%_)))
                                              (let ((_%hd9198892086%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9198792082%_)))
                                                    (_%tl9198992089%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9198792082%_))))
                                                (if (gx#stx-null?
                                                     _%tl9198992089%_)
                                                    ((lambda (_%L92092%_
                                                              _%L92094%_
                                                              _%L92095%_
                                                              _%L92096%_
                                                              _%L92097%_
                                                              _%L92098%_
                                                              _%L92099%_
                                                              _%L92100%_)
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
                                                   (cons (cons _%L92098%_
                                                               (cons _%L92096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%L92099%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%L92100%_ '()))
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
                                               (cons _%L92100%_
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
                                                       (cons _%L92100%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%L92096%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L92100%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%L92095%_ '()))))
               (cons (cons _%L92092%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L92100%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%L92096%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L92100%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%L92095%_ '()))))
                     (cons (cons _%L92094%_ '()) '()))))
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
                                                     (cons (cons (cons _%L92097%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L92096%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%L92100%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%L92096%_ '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%L92100%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%L92095%_ '()))))
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
                                                     _%hd9198892086%_
                                                     _%hd9198592076%_
                                                     _%hd9198292066%_
                                                     _%hd9197992056%_
                                                     _%hd9197692046%_
                                                     _%hd9197392036%_
                                                     _%hd9197092026%_
                                                     _%hd9196792016%_)
                                                    (_%g9195391995%_
                                                     _%g9195491999%_))))
                                            (_%g9195391995%_
                                             _%g9195491999%_))))
                                    (_%g9195391995%_ _%g9195491999%_))))
                            (_%g9195391995%_ _%g9195491999%_))))
                    (_%g9195391995%_ _%g9195491999%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9195391995%_
                                                     _%g9195491999%_))))
                                            (_%g9195391995%_
                                             _%g9195491999%_))))
                                    (_%g9195391995%_ _%g9195491999%_))))
                            (_%g9195391995%_ _%g9195491999%_))))
                    (_%g9195391995%_ _%g9195491999%_)))))
        (_%g9195292134%_ _%$stx91949%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx92138%_)
      (let* ((_%g9214292188%_
              (lambda (_%g9214392184%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9214392184%_)))
             (_%g9214192341%_
              (lambda (_%g9214392192%_)
                (if (gx#stx-pair? _%g9214392192%_)
                    (let ((_%e9215392195%_ (gx#syntax-e _%g9214392192%_)))
                      (let ((_%hd9215492199%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9215392195%_)))
                            (_%tl9215592202%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9215392195%_))))
                        (if (gx#stx-pair? _%tl9215592202%_)
                            (let ((_%e9215692205%_
                                   (gx#syntax-e _%tl9215592202%_)))
                              (let ((_%hd9215792209%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9215692205%_)))
                                    (_%tl9215892212%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9215692205%_))))
                                (if (gx#stx-pair? _%tl9215892212%_)
                                    (let ((_%e9215992215%_
                                           (gx#syntax-e _%tl9215892212%_)))
                                      (let ((_%hd9216092219%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9215992215%_)))
                                            (_%tl9216192222%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9215992215%_))))
                                        (if (gx#stx-pair? _%tl9216192222%_)
                                            (let ((_%e9216292225%_
                                                   (gx#syntax-e
                                                    _%tl9216192222%_)))
                                              (let ((_%hd9216392229%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9216292225%_)))
                                                    (_%tl9216492232%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9216292225%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9216492232%_)
                                                    (let ((_%e9216592235%_
                                                           (gx#syntax-e
                                                            _%tl9216492232%_)))
                                                      (let ((_%hd9216692239%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9216592235%_)))
                    (_%tl9216792242%_
                     (let () (declare (not safe)) (##cdr _%e9216592235%_))))
                (if (gx#stx-pair? _%tl9216792242%_)
                    (let ((_%e9216892245%_ (gx#syntax-e _%tl9216792242%_)))
                      (let ((_%hd9216992249%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9216892245%_)))
                            (_%tl9217092252%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9216892245%_))))
                        (if (gx#stx-pair? _%tl9217092252%_)
                            (let ((_%e9217192255%_
                                   (gx#syntax-e _%tl9217092252%_)))
                              (let ((_%hd9217292259%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9217192255%_)))
                                    (_%tl9217392262%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9217192255%_))))
                                (if (gx#stx-pair? _%tl9217392262%_)
                                    (let ((_%e9217492265%_
                                           (gx#syntax-e _%tl9217392262%_)))
                                      (let ((_%hd9217592269%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9217492265%_)))
                                            (_%tl9217692272%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9217492265%_))))
                                        (if (gx#stx-pair? _%tl9217692272%_)
                                            (let ((_%e9217792275%_
                                                   (gx#syntax-e
                                                    _%tl9217692272%_)))
                                              (let ((_%hd9217892279%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9217792275%_)))
                                                    (_%tl9217992282%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9217792275%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9217992282%_)
                                                    (let ((_%e9218092285%_
                                                           (gx#syntax-e
                                                            _%tl9217992282%_)))
                                                      (let ((_%hd9218192289%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9218092285%_)))
                    (_%tl9218292292%_
                     (let () (declare (not safe)) (##cdr _%e9218092285%_))))
                (if (gx#stx-null? _%tl9218292292%_)
                    ((lambda (_%L92295%_
                              _%L92297%_
                              _%L92298%_
                              _%L92299%_
                              _%L92300%_
                              _%L92301%_
                              _%L92302%_
                              _%L92303%_
                              _%L92304%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%L92302%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L92300%_ '()))
                         (cons _%L92303%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%L92304%_ '()))
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
                                                       (cons _%L92304%_
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
                                                               (cons _%L92304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%L92300%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%L92304%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%L92299%_
                                                     (cons _%L92298%_ '()))
                                               '()))))
                       (cons (cons _%L92295%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%L92304%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%L92300%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%L92304%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%L92299%_
                                                           (cons _%L92298%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%L92297%_ '()) '()))))
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
                     (cons (cons (cons _%L92301%_
                                       (cons _%L92300%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%L92304%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%L92300%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%L92304%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%L92299%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%L92304%_
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
                     _%hd9218192289%_
                     _%hd9217892279%_
                     _%hd9217592269%_
                     _%hd9217292259%_
                     _%hd9216992249%_
                     _%hd9216692239%_
                     _%hd9216392229%_
                     _%hd9216092219%_
                     _%hd9215792209%_)
                    (_%g9214292188%_ _%g9214392192%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9214292188%_
                                                     _%g9214392192%_))))
                                            (_%g9214292188%_
                                             _%g9214392192%_))))
                                    (_%g9214292188%_ _%g9214392192%_))))
                            (_%g9214292188%_ _%g9214392192%_))))
                    (_%g9214292188%_ _%g9214392192%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9214292188%_
                                                     _%g9214392192%_))))
                                            (_%g9214292188%_
                                             _%g9214392192%_))))
                                    (_%g9214292188%_ _%g9214392192%_))))
                            (_%g9214292188%_ _%g9214392192%_))))
                    (_%g9214292188%_ _%g9214392192%_)))))
        (_%g9214192341%_ _%$stx92138%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx92345%_)
      (let* ((_%g9234992383%_
              (lambda (_%g9235092379%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9235092379%_)))
             (_%g9234892494%_
              (lambda (_%g9235092387%_)
                (if (gx#stx-pair? _%g9235092387%_)
                    (let ((_%e9235792390%_ (gx#syntax-e _%g9235092387%_)))
                      (let ((_%hd9235892394%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9235792390%_)))
                            (_%tl9235992397%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9235792390%_))))
                        (if (gx#stx-pair? _%tl9235992397%_)
                            (let ((_%e9236092400%_
                                   (gx#syntax-e _%tl9235992397%_)))
                              (let ((_%hd9236192404%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9236092400%_)))
                                    (_%tl9236292407%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9236092400%_))))
                                (if (gx#stx-pair? _%tl9236292407%_)
                                    (let ((_%e9236392410%_
                                           (gx#syntax-e _%tl9236292407%_)))
                                      (let ((_%hd9236492414%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9236392410%_)))
                                            (_%tl9236592417%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9236392410%_))))
                                        (if (gx#stx-pair? _%tl9236592417%_)
                                            (let ((_%e9236692420%_
                                                   (gx#syntax-e
                                                    _%tl9236592417%_)))
                                              (let ((_%hd9236792424%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9236692420%_)))
                                                    (_%tl9236892427%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9236692420%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9236892427%_)
                                                    (let ((_%e9236992430%_
                                                           (gx#syntax-e
                                                            _%tl9236892427%_)))
                                                      (let ((_%hd9237092434%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9236992430%_)))
                    (_%tl9237192437%_
                     (let () (declare (not safe)) (##cdr _%e9236992430%_))))
                (if (gx#stx-pair? _%tl9237192437%_)
                    (let ((_%e9237292440%_ (gx#syntax-e _%tl9237192437%_)))
                      (let ((_%hd9237392444%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9237292440%_)))
                            (_%tl9237492447%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9237292440%_))))
                        (if (gx#stx-pair? _%tl9237492447%_)
                            (let ((_%e9237592450%_
                                   (gx#syntax-e _%tl9237492447%_)))
                              (let ((_%hd9237692454%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9237592450%_)))
                                    (_%tl9237792457%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9237592450%_))))
                                (if (gx#stx-null? _%tl9237792457%_)
                                    ((lambda (_%L92460%_
                                              _%L92462%_
                                              _%L92463%_
                                              _%L92464%_
                                              _%L92465%_
                                              _%L92466%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L92464%_
                                               (cons _%L92462%_ '()))
                                         (cons _%L92465%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L92466%_ '()))
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
                               (cons _%L92466%_
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
                                     (cons (cons (cons _%L92463%_
                                                       (cons _%L92462%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L92466%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L92466%_
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
                     (cons (cons _%L92460%_ '()) '()))))
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
                                     _%hd9237692454%_
                                     _%hd9237392444%_
                                     _%hd9237092434%_
                                     _%hd9236792424%_
                                     _%hd9236492414%_
                                     _%hd9236192404%_)
                                    (_%g9234992383%_ _%g9235092387%_))))
                            (_%g9234992383%_ _%g9235092387%_))))
                    (_%g9234992383%_ _%g9235092387%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9234992383%_
                                                     _%g9235092387%_))))
                                            (_%g9234992383%_
                                             _%g9235092387%_))))
                                    (_%g9234992383%_ _%g9235092387%_))))
                            (_%g9234992383%_ _%g9235092387%_))))
                    (_%g9234992383%_ _%g9235092387%_)))))
        (_%g9234892494%_ _%$stx92345%_)))))

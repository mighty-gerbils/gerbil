(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_%$stx91363%_)
      (let* ((_%g9136791381%_
              (lambda (_%g9136891377%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9136891377%_)))
             (_%g9136691423%_
              (lambda (_%g9136891385%_)
                (if (gx#stx-pair? _%g9136891385%_)
                    (let ((_%e9137091388%_ (gx#syntax-e _%g9136891385%_)))
                      (let ((_%hd9137191392%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9137091388%_)))
                            (_%tl9137291395%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9137091388%_))))
                        (if (gx#stx-pair? _%tl9137291395%_)
                            (let ((_%e9137391398%_
                                   (gx#syntax-e _%tl9137291395%_)))
                              (let ((_%hd9137491402%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9137391398%_)))
                                    (_%tl9137591405%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9137391398%_))))
                                (if (gx#stx-null? _%tl9137591405%_)
                                    ((lambda (_%L91408%_)
                                       (cons (gx#datum->syntax '#f 'macro-slot)
                                             (cons '1 (cons _%L91408%_ '()))))
                                     _%hd9137491402%_)
                                    (_%g9136791381%_ _%g9136891385%_))))
                            (_%g9136791381%_ _%g9136891385%_))))
                    (_%g9136791381%_ _%g9136891385%_)))))
        (_%g9136691423%_ _%$stx91363%_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_%$stx91427%_)
      (let* ((_%g9143191477%_
              (lambda (_%g9143291473%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9143291473%_)))
             (_%g9143091630%_
              (lambda (_%g9143291481%_)
                (if (gx#stx-pair? _%g9143291481%_)
                    (let ((_%e9144291484%_ (gx#syntax-e _%g9143291481%_)))
                      (let ((_%hd9144391488%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9144291484%_)))
                            (_%tl9144491491%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9144291484%_))))
                        (if (gx#stx-pair? _%tl9144491491%_)
                            (let ((_%e9144591494%_
                                   (gx#syntax-e _%tl9144491491%_)))
                              (let ((_%hd9144691498%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9144591494%_)))
                                    (_%tl9144791501%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9144591494%_))))
                                (if (gx#stx-pair? _%tl9144791501%_)
                                    (let ((_%e9144891504%_
                                           (gx#syntax-e _%tl9144791501%_)))
                                      (let ((_%hd9144991508%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9144891504%_)))
                                            (_%tl9145091511%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9144891504%_))))
                                        (if (gx#stx-pair? _%tl9145091511%_)
                                            (let ((_%e9145191514%_
                                                   (gx#syntax-e
                                                    _%tl9145091511%_)))
                                              (let ((_%hd9145291518%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9145191514%_)))
                                                    (_%tl9145391521%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9145191514%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9145391521%_)
                                                    (let ((_%e9145491524%_
                                                           (gx#syntax-e
                                                            _%tl9145391521%_)))
                                                      (let ((_%hd9145591528%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9145491524%_)))
                    (_%tl9145691531%_
                     (let () (declare (not safe)) (##cdr _%e9145491524%_))))
                (if (gx#stx-pair? _%tl9145691531%_)
                    (let ((_%e9145791534%_ (gx#syntax-e _%tl9145691531%_)))
                      (let ((_%hd9145891538%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9145791534%_)))
                            (_%tl9145991541%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9145791534%_))))
                        (if (gx#stx-pair? _%tl9145991541%_)
                            (let ((_%e9146091544%_
                                   (gx#syntax-e _%tl9145991541%_)))
                              (let ((_%hd9146191548%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9146091544%_)))
                                    (_%tl9146291551%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9146091544%_))))
                                (if (gx#stx-pair? _%tl9146291551%_)
                                    (let ((_%e9146391554%_
                                           (gx#syntax-e _%tl9146291551%_)))
                                      (let ((_%hd9146491558%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9146391554%_)))
                                            (_%tl9146591561%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9146391554%_))))
                                        (if (gx#stx-pair? _%tl9146591561%_)
                                            (let ((_%e9146691564%_
                                                   (gx#syntax-e
                                                    _%tl9146591561%_)))
                                              (let ((_%hd9146791568%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9146691564%_)))
                                                    (_%tl9146891571%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9146691564%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9146891571%_)
                                                    (let ((_%e9146991574%_
                                                           (gx#syntax-e
                                                            _%tl9146891571%_)))
                                                      (let ((_%hd9147091578%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9146991574%_)))
                    (_%tl9147191581%_
                     (let () (declare (not safe)) (##cdr _%e9146991574%_))))
                (if (gx#stx-null? _%tl9147191581%_)
                    ((lambda (_%L91584%_
                              _%L91586%_
                              _%L91587%_
                              _%L91588%_
                              _%L91589%_
                              _%L91590%_
                              _%L91591%_
                              _%L91592%_
                              _%L91593%_)
                       (cons (gx#datum->syntax '#f 'begin)
                             (cons (cons (gx#datum->syntax '#f 'def)
                                         (cons (cons _%L91593%_
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
                         (cons _%L91586%_
                               (cons _%L91584%_
                                     (cons (gx#datum->syntax '#f 'seed)
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   (cons (cons (gx#datum->syntax '#f 'def)
                                               (cons (cons _%L91592%_
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
                                                       (cons _%L91586%_
                                                             (cons _%L91584%_
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
                                                     (cons (cons _%L91591%_
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
                         (cons (cons _%L91590%_
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
                                                           (cons (cons _%L91590%_
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
                           (cons _%L91586%_
                                 (cons _%L91584%_
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
                         (cons (cons _%L91589%_
                                     (cons (gx#datum->syntax '#f 'tab)
                                           (cons (gx#datum->syntax '#f 'key)
                                                 (cons _%L91589%_
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
                                     (cons (cons _%L91588%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'tab)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'key)
                                                             (cons _%L91589%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                   (cons (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _%L91588%_
                                           (cons (gx#datum->syntax '#f 'tab)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'key)
                                                       (cons _%L91589%_
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
                                       (cons _%L91586%_
                                             (cons _%L91584%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'key)
                                                         (cons _%L91589%_
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
                                     (cons (cons _%L91587%_
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
                                             (cons _%L91586%_
                                                   (cons _%L91584%_
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
                     _%hd9147091578%_
                     _%hd9146791568%_
                     _%hd9146491558%_
                     _%hd9146191548%_
                     _%hd9145891538%_
                     _%hd9145591528%_
                     _%hd9145291518%_
                     _%hd9144991508%_
                     _%hd9144691498%_)
                    (_%g9143191477%_ _%g9143291481%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9143191477%_
                                                     _%g9143291481%_))))
                                            (_%g9143191477%_
                                             _%g9143291481%_))))
                                    (_%g9143191477%_ _%g9143291481%_))))
                            (_%g9143191477%_ _%g9143291481%_))))
                    (_%g9143191477%_ _%g9143291481%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9143191477%_
                                                     _%g9143291481%_))))
                                            (_%g9143191477%_
                                             _%g9143291481%_))))
                                    (_%g9143191477%_ _%g9143291481%_))))
                            (_%g9143191477%_ _%g9143291481%_))))
                    (_%g9143191477%_ _%g9143291481%_)))))
        (_%g9143091630%_ _%$stx91427%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx91634%_)
      (let* ((_%g9163891660%_
              (lambda (_%g9163991656%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9163991656%_)))
             (_%g9163791729%_
              (lambda (_%g9163991664%_)
                (if (gx#stx-pair? _%g9163991664%_)
                    (let ((_%e9164391667%_ (gx#syntax-e _%g9163991664%_)))
                      (let ((_%hd9164491671%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9164391667%_)))
                            (_%tl9164591674%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9164391667%_))))
                        (if (gx#stx-pair? _%tl9164591674%_)
                            (let ((_%e9164691677%_
                                   (gx#syntax-e _%tl9164591674%_)))
                              (let ((_%hd9164791681%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9164691677%_)))
                                    (_%tl9164891684%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9164691677%_))))
                                (if (gx#stx-pair? _%tl9164891684%_)
                                    (let ((_%e9164991687%_
                                           (gx#syntax-e _%tl9164891684%_)))
                                      (let ((_%hd9165091691%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9164991687%_)))
                                            (_%tl9165191694%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9164991687%_))))
                                        (if (gx#stx-pair? _%tl9165191694%_)
                                            (let ((_%e9165291697%_
                                                   (gx#syntax-e
                                                    _%tl9165191694%_)))
                                              (let ((_%hd9165391701%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9165291697%_)))
                                                    (_%tl9165491704%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9165291697%_))))
                                                (if (gx#stx-null?
                                                     _%tl9165491704%_)
                                                    ((lambda (_%L91707%_
                                                              _%L91709%_
                                                              _%L91710%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%L91710%_
                                                   (cons _%L91709%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%L91709%_ (cons _%L91709%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%L91707%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd9165391701%_
                                                     _%hd9165091691%_
                                                     _%hd9164791681%_)
                                                    (_%g9163891660%_
                                                     _%g9163991664%_))))
                                            (_%g9163891660%_
                                             _%g9163991664%_))))
                                    (_%g9163891660%_ _%g9163991664%_))))
                            (_%g9163891660%_ _%g9163991664%_))))
                    (_%g9163891660%_ _%g9163991664%_)))))
        (_%g9163791729%_ _%$stx91634%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx91733%_)
      (let* ((_%g9173791771%_
              (lambda (_%g9173891767%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9173891767%_)))
             (_%g9173691882%_
              (lambda (_%g9173891775%_)
                (if (gx#stx-pair? _%g9173891775%_)
                    (let ((_%e9174591778%_ (gx#syntax-e _%g9173891775%_)))
                      (let ((_%hd9174691782%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9174591778%_)))
                            (_%tl9174791785%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9174591778%_))))
                        (if (gx#stx-pair? _%tl9174791785%_)
                            (let ((_%e9174891788%_
                                   (gx#syntax-e _%tl9174791785%_)))
                              (let ((_%hd9174991792%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9174891788%_)))
                                    (_%tl9175091795%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9174891788%_))))
                                (if (gx#stx-pair? _%tl9175091795%_)
                                    (let ((_%e9175191798%_
                                           (gx#syntax-e _%tl9175091795%_)))
                                      (let ((_%hd9175291802%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9175191798%_)))
                                            (_%tl9175391805%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9175191798%_))))
                                        (if (gx#stx-pair? _%tl9175391805%_)
                                            (let ((_%e9175491808%_
                                                   (gx#syntax-e
                                                    _%tl9175391805%_)))
                                              (let ((_%hd9175591812%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9175491808%_)))
                                                    (_%tl9175691815%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9175491808%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9175691815%_)
                                                    (let ((_%e9175791818%_
                                                           (gx#syntax-e
                                                            _%tl9175691815%_)))
                                                      (let ((_%hd9175891822%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9175791818%_)))
                    (_%tl9175991825%_
                     (let () (declare (not safe)) (##cdr _%e9175791818%_))))
                (if (gx#stx-pair? _%tl9175991825%_)
                    (let ((_%e9176091828%_ (gx#syntax-e _%tl9175991825%_)))
                      (let ((_%hd9176191832%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9176091828%_)))
                            (_%tl9176291835%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9176091828%_))))
                        (if (gx#stx-pair? _%tl9176291835%_)
                            (let ((_%e9176391838%_
                                   (gx#syntax-e _%tl9176291835%_)))
                              (let ((_%hd9176491842%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9176391838%_)))
                                    (_%tl9176591845%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9176391838%_))))
                                (if (gx#stx-null? _%tl9176591845%_)
                                    ((lambda (_%L91848%_
                                              _%L91850%_
                                              _%L91851%_
                                              _%L91852%_
                                              _%L91853%_
                                              _%L91854%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L91852%_
                                               (cons _%L91850%_ '()))
                                         (cons _%L91853%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L91854%_ '()))
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
                               (cons _%L91854%_
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
                                     (cons _%L91848%_ '()))
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
                                     (cons (cons (cons _%L91851%_
                                                       (cons _%L91850%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%L91854%_
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
                                     _%hd9176491842%_
                                     _%hd9176191832%_
                                     _%hd9175891822%_
                                     _%hd9175591812%_
                                     _%hd9175291802%_
                                     _%hd9174991792%_)
                                    (_%g9173791771%_ _%g9173891775%_))))
                            (_%g9173791771%_ _%g9173891775%_))))
                    (_%g9173791771%_ _%g9173891775%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9173791771%_
                                                     _%g9173891775%_))))
                                            (_%g9173791771%_
                                             _%g9173891775%_))))
                                    (_%g9173791771%_ _%g9173891775%_))))
                            (_%g9173791771%_ _%g9173891775%_))))
                    (_%g9173791771%_ _%g9173891775%_)))))
        (_%g9173691882%_ _%$stx91733%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx91886%_)
      (let* ((_%g9189091932%_
              (lambda (_%g9189191928%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9189191928%_)))
             (_%g9188992071%_
              (lambda (_%g9189191936%_)
                (if (gx#stx-pair? _%g9189191936%_)
                    (let ((_%e9190091939%_ (gx#syntax-e _%g9189191936%_)))
                      (let ((_%hd9190191943%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9190091939%_)))
                            (_%tl9190291946%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9190091939%_))))
                        (if (gx#stx-pair? _%tl9190291946%_)
                            (let ((_%e9190391949%_
                                   (gx#syntax-e _%tl9190291946%_)))
                              (let ((_%hd9190491953%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9190391949%_)))
                                    (_%tl9190591956%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9190391949%_))))
                                (if (gx#stx-pair? _%tl9190591956%_)
                                    (let ((_%e9190691959%_
                                           (gx#syntax-e _%tl9190591956%_)))
                                      (let ((_%hd9190791963%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9190691959%_)))
                                            (_%tl9190891966%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9190691959%_))))
                                        (if (gx#stx-pair? _%tl9190891966%_)
                                            (let ((_%e9190991969%_
                                                   (gx#syntax-e
                                                    _%tl9190891966%_)))
                                              (let ((_%hd9191091973%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9190991969%_)))
                                                    (_%tl9191191976%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9190991969%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9191191976%_)
                                                    (let ((_%e9191291979%_
                                                           (gx#syntax-e
                                                            _%tl9191191976%_)))
                                                      (let ((_%hd9191391983%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9191291979%_)))
                    (_%tl9191491986%_
                     (let () (declare (not safe)) (##cdr _%e9191291979%_))))
                (if (gx#stx-pair? _%tl9191491986%_)
                    (let ((_%e9191591989%_ (gx#syntax-e _%tl9191491986%_)))
                      (let ((_%hd9191691993%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9191591989%_)))
                            (_%tl9191791996%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9191591989%_))))
                        (if (gx#stx-pair? _%tl9191791996%_)
                            (let ((_%e9191891999%_
                                   (gx#syntax-e _%tl9191791996%_)))
                              (let ((_%hd9191992003%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9191891999%_)))
                                    (_%tl9192092006%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9191891999%_))))
                                (if (gx#stx-pair? _%tl9192092006%_)
                                    (let ((_%e9192192009%_
                                           (gx#syntax-e _%tl9192092006%_)))
                                      (let ((_%hd9192292013%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9192192009%_)))
                                            (_%tl9192392016%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9192192009%_))))
                                        (if (gx#stx-pair? _%tl9192392016%_)
                                            (let ((_%e9192492019%_
                                                   (gx#syntax-e
                                                    _%tl9192392016%_)))
                                              (let ((_%hd9192592023%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9192492019%_)))
                                                    (_%tl9192692026%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9192492019%_))))
                                                (if (gx#stx-null?
                                                     _%tl9192692026%_)
                                                    ((lambda (_%L92029%_
                                                              _%L92031%_
                                                              _%L92032%_
                                                              _%L92033%_
                                                              _%L92034%_
                                                              _%L92035%_
                                                              _%L92036%_
                                                              _%L92037%_)
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
                                                   (cons (cons _%L92035%_
                                                               (cons _%L92033%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%L92036%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%L92037%_ '()))
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
                                               (cons _%L92037%_
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
                                                       (cons _%L92037%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%L92033%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L92037%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%L92032%_ '()))))
               (cons (cons _%L92029%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L92037%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%L92033%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L92037%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%L92032%_ '()))))
                     (cons (cons _%L92031%_ '()) '()))))
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
                                                     (cons (cons (cons _%L92034%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L92033%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%L92037%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%L92033%_ '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%L92037%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%L92032%_ '()))))
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
                                                     _%hd9192592023%_
                                                     _%hd9192292013%_
                                                     _%hd9191992003%_
                                                     _%hd9191691993%_
                                                     _%hd9191391983%_
                                                     _%hd9191091973%_
                                                     _%hd9190791963%_
                                                     _%hd9190491953%_)
                                                    (_%g9189091932%_
                                                     _%g9189191936%_))))
                                            (_%g9189091932%_
                                             _%g9189191936%_))))
                                    (_%g9189091932%_ _%g9189191936%_))))
                            (_%g9189091932%_ _%g9189191936%_))))
                    (_%g9189091932%_ _%g9189191936%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9189091932%_
                                                     _%g9189191936%_))))
                                            (_%g9189091932%_
                                             _%g9189191936%_))))
                                    (_%g9189091932%_ _%g9189191936%_))))
                            (_%g9189091932%_ _%g9189191936%_))))
                    (_%g9189091932%_ _%g9189191936%_)))))
        (_%g9188992071%_ _%$stx91886%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx92075%_)
      (let* ((_%g9207992125%_
              (lambda (_%g9208092121%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9208092121%_)))
             (_%g9207892278%_
              (lambda (_%g9208092129%_)
                (if (gx#stx-pair? _%g9208092129%_)
                    (let ((_%e9209092132%_ (gx#syntax-e _%g9208092129%_)))
                      (let ((_%hd9209192136%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9209092132%_)))
                            (_%tl9209292139%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9209092132%_))))
                        (if (gx#stx-pair? _%tl9209292139%_)
                            (let ((_%e9209392142%_
                                   (gx#syntax-e _%tl9209292139%_)))
                              (let ((_%hd9209492146%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9209392142%_)))
                                    (_%tl9209592149%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9209392142%_))))
                                (if (gx#stx-pair? _%tl9209592149%_)
                                    (let ((_%e9209692152%_
                                           (gx#syntax-e _%tl9209592149%_)))
                                      (let ((_%hd9209792156%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9209692152%_)))
                                            (_%tl9209892159%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9209692152%_))))
                                        (if (gx#stx-pair? _%tl9209892159%_)
                                            (let ((_%e9209992162%_
                                                   (gx#syntax-e
                                                    _%tl9209892159%_)))
                                              (let ((_%hd9210092166%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9209992162%_)))
                                                    (_%tl9210192169%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9209992162%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9210192169%_)
                                                    (let ((_%e9210292172%_
                                                           (gx#syntax-e
                                                            _%tl9210192169%_)))
                                                      (let ((_%hd9210392176%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9210292172%_)))
                    (_%tl9210492179%_
                     (let () (declare (not safe)) (##cdr _%e9210292172%_))))
                (if (gx#stx-pair? _%tl9210492179%_)
                    (let ((_%e9210592182%_ (gx#syntax-e _%tl9210492179%_)))
                      (let ((_%hd9210692186%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9210592182%_)))
                            (_%tl9210792189%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9210592182%_))))
                        (if (gx#stx-pair? _%tl9210792189%_)
                            (let ((_%e9210892192%_
                                   (gx#syntax-e _%tl9210792189%_)))
                              (let ((_%hd9210992196%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9210892192%_)))
                                    (_%tl9211092199%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9210892192%_))))
                                (if (gx#stx-pair? _%tl9211092199%_)
                                    (let ((_%e9211192202%_
                                           (gx#syntax-e _%tl9211092199%_)))
                                      (let ((_%hd9211292206%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9211192202%_)))
                                            (_%tl9211392209%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9211192202%_))))
                                        (if (gx#stx-pair? _%tl9211392209%_)
                                            (let ((_%e9211492212%_
                                                   (gx#syntax-e
                                                    _%tl9211392209%_)))
                                              (let ((_%hd9211592216%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9211492212%_)))
                                                    (_%tl9211692219%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9211492212%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9211692219%_)
                                                    (let ((_%e9211792222%_
                                                           (gx#syntax-e
                                                            _%tl9211692219%_)))
                                                      (let ((_%hd9211892226%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9211792222%_)))
                    (_%tl9211992229%_
                     (let () (declare (not safe)) (##cdr _%e9211792222%_))))
                (if (gx#stx-null? _%tl9211992229%_)
                    ((lambda (_%L92232%_
                              _%L92234%_
                              _%L92235%_
                              _%L92236%_
                              _%L92237%_
                              _%L92238%_
                              _%L92239%_
                              _%L92240%_
                              _%L92241%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%L92239%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L92237%_ '()))
                         (cons _%L92240%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%L92241%_ '()))
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
                                                       (cons _%L92241%_
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
                                                               (cons _%L92241%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%L92237%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%L92241%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%L92236%_
                                                     (cons _%L92235%_ '()))
                                               '()))))
                       (cons (cons _%L92232%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%L92241%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%L92237%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%L92241%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%L92236%_
                                                           (cons _%L92235%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%L92234%_ '()) '()))))
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
                     (cons (cons (cons _%L92238%_
                                       (cons _%L92237%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%L92241%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%L92237%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%L92241%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%L92236%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%L92241%_
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
                     _%hd9211892226%_
                     _%hd9211592216%_
                     _%hd9211292206%_
                     _%hd9210992196%_
                     _%hd9210692186%_
                     _%hd9210392176%_
                     _%hd9210092166%_
                     _%hd9209792156%_
                     _%hd9209492146%_)
                    (_%g9207992125%_ _%g9208092129%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9207992125%_
                                                     _%g9208092129%_))))
                                            (_%g9207992125%_
                                             _%g9208092129%_))))
                                    (_%g9207992125%_ _%g9208092129%_))))
                            (_%g9207992125%_ _%g9208092129%_))))
                    (_%g9207992125%_ _%g9208092129%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9207992125%_
                                                     _%g9208092129%_))))
                                            (_%g9207992125%_
                                             _%g9208092129%_))))
                                    (_%g9207992125%_ _%g9208092129%_))))
                            (_%g9207992125%_ _%g9208092129%_))))
                    (_%g9207992125%_ _%g9208092129%_)))))
        (_%g9207892278%_ _%$stx92075%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx92282%_)
      (let* ((_%g9228692320%_
              (lambda (_%g9228792316%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9228792316%_)))
             (_%g9228592431%_
              (lambda (_%g9228792324%_)
                (if (gx#stx-pair? _%g9228792324%_)
                    (let ((_%e9229492327%_ (gx#syntax-e _%g9228792324%_)))
                      (let ((_%hd9229592331%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9229492327%_)))
                            (_%tl9229692334%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9229492327%_))))
                        (if (gx#stx-pair? _%tl9229692334%_)
                            (let ((_%e9229792337%_
                                   (gx#syntax-e _%tl9229692334%_)))
                              (let ((_%hd9229892341%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9229792337%_)))
                                    (_%tl9229992344%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9229792337%_))))
                                (if (gx#stx-pair? _%tl9229992344%_)
                                    (let ((_%e9230092347%_
                                           (gx#syntax-e _%tl9229992344%_)))
                                      (let ((_%hd9230192351%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9230092347%_)))
                                            (_%tl9230292354%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9230092347%_))))
                                        (if (gx#stx-pair? _%tl9230292354%_)
                                            (let ((_%e9230392357%_
                                                   (gx#syntax-e
                                                    _%tl9230292354%_)))
                                              (let ((_%hd9230492361%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9230392357%_)))
                                                    (_%tl9230592364%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9230392357%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9230592364%_)
                                                    (let ((_%e9230692367%_
                                                           (gx#syntax-e
                                                            _%tl9230592364%_)))
                                                      (let ((_%hd9230792371%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9230692367%_)))
                    (_%tl9230892374%_
                     (let () (declare (not safe)) (##cdr _%e9230692367%_))))
                (if (gx#stx-pair? _%tl9230892374%_)
                    (let ((_%e9230992377%_ (gx#syntax-e _%tl9230892374%_)))
                      (let ((_%hd9231092381%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9230992377%_)))
                            (_%tl9231192384%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9230992377%_))))
                        (if (gx#stx-pair? _%tl9231192384%_)
                            (let ((_%e9231292387%_
                                   (gx#syntax-e _%tl9231192384%_)))
                              (let ((_%hd9231392391%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9231292387%_)))
                                    (_%tl9231492394%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9231292387%_))))
                                (if (gx#stx-null? _%tl9231492394%_)
                                    ((lambda (_%L92397%_
                                              _%L92399%_
                                              _%L92400%_
                                              _%L92401%_
                                              _%L92402%_
                                              _%L92403%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L92401%_
                                               (cons _%L92399%_ '()))
                                         (cons _%L92402%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L92403%_ '()))
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
                               (cons _%L92403%_
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
                                     (cons (cons (cons _%L92400%_
                                                       (cons _%L92399%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L92403%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L92403%_
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
                     (cons (cons _%L92397%_ '()) '()))))
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
                                     _%hd9231392391%_
                                     _%hd9231092381%_
                                     _%hd9230792371%_
                                     _%hd9230492361%_
                                     _%hd9230192351%_
                                     _%hd9229892341%_)
                                    (_%g9228692320%_ _%g9228792324%_))))
                            (_%g9228692320%_ _%g9228792324%_))))
                    (_%g9228692320%_ _%g9228792324%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9228692320%_
                                                     _%g9228792324%_))))
                                            (_%g9228692320%_
                                             _%g9228792324%_))))
                                    (_%g9228692320%_ _%g9228792324%_))))
                            (_%g9228692320%_ _%g9228792324%_))))
                    (_%g9228692320%_ _%g9228792324%_)))))
        (_%g9228592431%_ _%$stx92282%_)))))

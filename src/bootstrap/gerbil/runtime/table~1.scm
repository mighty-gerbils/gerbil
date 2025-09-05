(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#defspecialized-table|
    (lambda (_%$stx99176%_)
      (let* ((_%g9918099226%_
              (lambda (_%g9918199222%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9918199222%_)))
             (_%g9917999380%_
              (lambda (_%g9918199230%_)
                (if (gx#stx-pair? _%g9918199230%_)
                    (let ((_%e9919199233%_ (gx#syntax-e _%g9918199230%_)))
                      (let ((_%hd9919299237%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9919199233%_)))
                            (_%tl9919399240%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9919199233%_))))
                        (if (gx#stx-pair? _%tl9919399240%_)
                            (let ((_%e9919499243%_
                                   (gx#syntax-e _%tl9919399240%_)))
                              (let ((_%hd9919599247%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9919499243%_)))
                                    (_%tl9919699250%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9919499243%_))))
                                (if (gx#stx-pair? _%tl9919699250%_)
                                    (let ((_%e9919799253%_
                                           (gx#syntax-e _%tl9919699250%_)))
                                      (let ((_%hd9919899257%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9919799253%_)))
                                            (_%tl9919999260%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9919799253%_))))
                                        (if (gx#stx-pair? _%tl9919999260%_)
                                            (let ((_%e9920099263%_
                                                   (gx#syntax-e
                                                    _%tl9919999260%_)))
                                              (let ((_%hd9920199267%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9920099263%_)))
                                                    (_%tl9920299270%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9920099263%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9920299270%_)
                                                    (let ((_%e9920399273%_
                                                           (gx#syntax-e
                                                            _%tl9920299270%_)))
                                                      (let ((_%hd9920499277%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9920399273%_)))
                    (_%tl9920599280%_
                     (let () (declare (not safe)) (##cdr _%e9920399273%_))))
                (if (gx#stx-pair? _%tl9920599280%_)
                    (let ((_%e9920699283%_ (gx#syntax-e _%tl9920599280%_)))
                      (let ((_%hd9920799287%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9920699283%_)))
                            (_%tl9920899290%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9920699283%_))))
                        (if (gx#stx-pair? _%tl9920899290%_)
                            (let ((_%e9920999293%_
                                   (gx#syntax-e _%tl9920899290%_)))
                              (let ((_%hd9921099297%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9920999293%_)))
                                    (_%tl9921199300%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9920999293%_))))
                                (if (gx#stx-pair? _%tl9921199300%_)
                                    (let ((_%e9921299303%_
                                           (gx#syntax-e _%tl9921199300%_)))
                                      (let ((_%hd9921399307%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9921299303%_)))
                                            (_%tl9921499310%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9921299303%_))))
                                        (if (gx#stx-pair? _%tl9921499310%_)
                                            (let ((_%e9921599313%_
                                                   (gx#syntax-e
                                                    _%tl9921499310%_)))
                                              (let ((_%hd9921699317%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9921599313%_)))
                                                    (_%tl9921799320%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9921599313%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9921799320%_)
                                                    (let ((_%e9921899323%_
                                                           (gx#syntax-e
                                                            _%tl9921799320%_)))
                                                      (let ((_%hd9921999327%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9921899323%_)))
                    (_%tl9922099330%_
                     (let () (declare (not safe)) (##cdr _%e9921899323%_))))
                (if (gx#stx-null? _%tl9922099330%_)
                    ((lambda (_%L99333%_
                              _%L99335%_
                              _%L99336%_
                              _%L99337%_
                              _%L99338%_
                              _%L99339%_
                              _%L99340%_
                              _%L99341%_
                              _%L99342%_)
                       (cons (gx#datum->syntax '#f 'begin)
                             (cons (cons (gx#datum->syntax '#f 'def)
                                         (cons (cons _%L99342%_
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
                         (cons _%L99335%_
                               (cons _%L99333%_
                                     (cons (gx#datum->syntax '#f 'seed)
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   (cons (cons (gx#datum->syntax '#f 'def)
                                               (cons (cons _%L99341%_
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
                                                       (cons _%L99335%_
                                                             (cons _%L99333%_
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
                                                     (cons (cons _%L99340%_
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
                         (cons (cons _%L99339%_
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
                                                           (cons (cons _%L99339%_
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
                           (cons _%L99335%_
                                 (cons _%L99333%_
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
                         (cons (cons _%L99338%_
                                     (cons (gx#datum->syntax '#f 'tab)
                                           (cons (gx#datum->syntax '#f 'key)
                                                 (cons _%L99338%_
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
                                     (cons (cons _%L99337%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'tab)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'key)
                                                             (cons _%L99338%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                   (cons (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _%L99337%_
                                           (cons (gx#datum->syntax '#f 'tab)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'key)
                                                       (cons _%L99338%_
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
                                       (cons _%L99335%_
                                             (cons _%L99333%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'key)
                                                         (cons _%L99338%_
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
                                     (cons (cons _%L99336%_
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
                                             (cons _%L99335%_
                                                   (cons _%L99333%_
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
                     _%hd9921999327%_
                     _%hd9921699317%_
                     _%hd9921399307%_
                     _%hd9921099297%_
                     _%hd9920799287%_
                     _%hd9920499277%_
                     _%hd9920199267%_
                     _%hd9919899257%_
                     _%hd9919599247%_)
                    (_%g9918099226%_ _%g9918199230%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9918099226%_
                                                     _%g9918199230%_))))
                                            (_%g9918099226%_
                                             _%g9918199230%_))))
                                    (_%g9918099226%_ _%g9918199230%_))))
                            (_%g9918099226%_ _%g9918199230%_))))
                    (_%g9918099226%_ _%g9918199230%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9918099226%_
                                                     _%g9918199230%_))))
                                            (_%g9918099226%_
                                             _%g9918199230%_))))
                                    (_%g9918099226%_ _%g9918199230%_))))
                            (_%g9918099226%_ _%g9918199230%_))))
                    (_%g9918099226%_ _%g9918199230%_)))))
        (_%g9917999380%_ _%$stx99176%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx99384%_)
      (let* ((_%g9938899410%_
              (lambda (_%g9938999406%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9938999406%_)))
             (_%g9938799479%_
              (lambda (_%g9938999414%_)
                (if (gx#stx-pair? _%g9938999414%_)
                    (let ((_%e9939399417%_ (gx#syntax-e _%g9938999414%_)))
                      (let ((_%hd9939499421%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9939399417%_)))
                            (_%tl9939599424%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9939399417%_))))
                        (if (gx#stx-pair? _%tl9939599424%_)
                            (let ((_%e9939699427%_
                                   (gx#syntax-e _%tl9939599424%_)))
                              (let ((_%hd9939799431%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9939699427%_)))
                                    (_%tl9939899434%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9939699427%_))))
                                (if (gx#stx-pair? _%tl9939899434%_)
                                    (let ((_%e9939999437%_
                                           (gx#syntax-e _%tl9939899434%_)))
                                      (let ((_%hd9940099441%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9939999437%_)))
                                            (_%tl9940199444%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9939999437%_))))
                                        (if (gx#stx-pair? _%tl9940199444%_)
                                            (let ((_%e9940299447%_
                                                   (gx#syntax-e
                                                    _%tl9940199444%_)))
                                              (let ((_%hd9940399451%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9940299447%_)))
                                                    (_%tl9940499454%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9940299447%_))))
                                                (if (gx#stx-null?
                                                     _%tl9940499454%_)
                                                    ((lambda (_%L99457%_
                                                              _%L99459%_
                                                              _%L99460%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%L99460%_
                                                   (cons _%L99459%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%L99459%_ (cons _%L99459%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%L99457%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd9940399451%_
                                                     _%hd9940099441%_
                                                     _%hd9939799431%_)
                                                    (_%g9938899410%_
                                                     _%g9938999414%_))))
                                            (_%g9938899410%_
                                             _%g9938999414%_))))
                                    (_%g9938899410%_ _%g9938999414%_))))
                            (_%g9938899410%_ _%g9938999414%_))))
                    (_%g9938899410%_ _%g9938999414%_)))))
        (_%g9938799479%_ _%$stx99384%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx99483%_)
      (let* ((_%g9948799521%_
              (lambda (_%g9948899517%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9948899517%_)))
             (_%g9948699632%_
              (lambda (_%g9948899525%_)
                (if (gx#stx-pair? _%g9948899525%_)
                    (let ((_%e9949599528%_ (gx#syntax-e _%g9948899525%_)))
                      (let ((_%hd9949699532%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9949599528%_)))
                            (_%tl9949799535%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9949599528%_))))
                        (if (gx#stx-pair? _%tl9949799535%_)
                            (let ((_%e9949899538%_
                                   (gx#syntax-e _%tl9949799535%_)))
                              (let ((_%hd9949999542%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9949899538%_)))
                                    (_%tl9950099545%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9949899538%_))))
                                (if (gx#stx-pair? _%tl9950099545%_)
                                    (let ((_%e9950199548%_
                                           (gx#syntax-e _%tl9950099545%_)))
                                      (let ((_%hd9950299552%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9950199548%_)))
                                            (_%tl9950399555%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9950199548%_))))
                                        (if (gx#stx-pair? _%tl9950399555%_)
                                            (let ((_%e9950499558%_
                                                   (gx#syntax-e
                                                    _%tl9950399555%_)))
                                              (let ((_%hd9950599562%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9950499558%_)))
                                                    (_%tl9950699565%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9950499558%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9950699565%_)
                                                    (let ((_%e9950799568%_
                                                           (gx#syntax-e
                                                            _%tl9950699565%_)))
                                                      (let ((_%hd9950899572%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9950799568%_)))
                    (_%tl9950999575%_
                     (let () (declare (not safe)) (##cdr _%e9950799568%_))))
                (if (gx#stx-pair? _%tl9950999575%_)
                    (let ((_%e9951099578%_ (gx#syntax-e _%tl9950999575%_)))
                      (let ((_%hd9951199582%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9951099578%_)))
                            (_%tl9951299585%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9951099578%_))))
                        (if (gx#stx-pair? _%tl9951299585%_)
                            (let ((_%e9951399588%_
                                   (gx#syntax-e _%tl9951299585%_)))
                              (let ((_%hd9951499592%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9951399588%_)))
                                    (_%tl9951599595%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9951399588%_))))
                                (if (gx#stx-null? _%tl9951599595%_)
                                    ((lambda (_%L99598%_
                                              _%L99600%_
                                              _%L99601%_
                                              _%L99602%_
                                              _%L99603%_
                                              _%L99604%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L99602%_
                                               (cons _%L99600%_ '()))
                                         (cons _%L99603%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L99604%_ '()))
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
                               (cons _%L99604%_
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
                                     (cons _%L99598%_ '()))
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
                                     (cons (cons (cons _%L99601%_
                                                       (cons _%L99600%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%L99604%_
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
                                     _%hd9951499592%_
                                     _%hd9951199582%_
                                     _%hd9950899572%_
                                     _%hd9950599562%_
                                     _%hd9950299552%_
                                     _%hd9949999542%_)
                                    (_%g9948799521%_ _%g9948899525%_))))
                            (_%g9948799521%_ _%g9948899525%_))))
                    (_%g9948799521%_ _%g9948899525%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9948799521%_
                                                     _%g9948899525%_))))
                                            (_%g9948799521%_
                                             _%g9948899525%_))))
                                    (_%g9948799521%_ _%g9948899525%_))))
                            (_%g9948799521%_ _%g9948899525%_))))
                    (_%g9948799521%_ _%g9948899525%_)))))
        (_%g9948699632%_ _%$stx99483%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx99636%_)
      (let* ((_%g9964099682%_
              (lambda (_%g9964199678%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9964199678%_)))
             (_%g9963999821%_
              (lambda (_%g9964199686%_)
                (if (gx#stx-pair? _%g9964199686%_)
                    (let ((_%e9965099689%_ (gx#syntax-e _%g9964199686%_)))
                      (let ((_%hd9965199693%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9965099689%_)))
                            (_%tl9965299696%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9965099689%_))))
                        (if (gx#stx-pair? _%tl9965299696%_)
                            (let ((_%e9965399699%_
                                   (gx#syntax-e _%tl9965299696%_)))
                              (let ((_%hd9965499703%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9965399699%_)))
                                    (_%tl9965599706%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9965399699%_))))
                                (if (gx#stx-pair? _%tl9965599706%_)
                                    (let ((_%e9965699709%_
                                           (gx#syntax-e _%tl9965599706%_)))
                                      (let ((_%hd9965799713%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9965699709%_)))
                                            (_%tl9965899716%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9965699709%_))))
                                        (if (gx#stx-pair? _%tl9965899716%_)
                                            (let ((_%e9965999719%_
                                                   (gx#syntax-e
                                                    _%tl9965899716%_)))
                                              (let ((_%hd9966099723%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9965999719%_)))
                                                    (_%tl9966199726%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9965999719%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9966199726%_)
                                                    (let ((_%e9966299729%_
                                                           (gx#syntax-e
                                                            _%tl9966199726%_)))
                                                      (let ((_%hd9966399733%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9966299729%_)))
                    (_%tl9966499736%_
                     (let () (declare (not safe)) (##cdr _%e9966299729%_))))
                (if (gx#stx-pair? _%tl9966499736%_)
                    (let ((_%e9966599739%_ (gx#syntax-e _%tl9966499736%_)))
                      (let ((_%hd9966699743%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9966599739%_)))
                            (_%tl9966799746%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9966599739%_))))
                        (if (gx#stx-pair? _%tl9966799746%_)
                            (let ((_%e9966899749%_
                                   (gx#syntax-e _%tl9966799746%_)))
                              (let ((_%hd9966999753%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9966899749%_)))
                                    (_%tl9967099756%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9966899749%_))))
                                (if (gx#stx-pair? _%tl9967099756%_)
                                    (let ((_%e9967199759%_
                                           (gx#syntax-e _%tl9967099756%_)))
                                      (let ((_%hd9967299763%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9967199759%_)))
                                            (_%tl9967399766%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9967199759%_))))
                                        (if (gx#stx-pair? _%tl9967399766%_)
                                            (let ((_%e9967499769%_
                                                   (gx#syntax-e
                                                    _%tl9967399766%_)))
                                              (let ((_%hd9967599773%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9967499769%_)))
                                                    (_%tl9967699776%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9967499769%_))))
                                                (if (gx#stx-null?
                                                     _%tl9967699776%_)
                                                    ((lambda (_%L99779%_
                                                              _%L99781%_
                                                              _%L99782%_
                                                              _%L99783%_
                                                              _%L99784%_
                                                              _%L99785%_
                                                              _%L99786%_
                                                              _%L99787%_)
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
                                                   (cons (cons _%L99785%_
                                                               (cons _%L99783%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%L99786%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%L99787%_ '()))
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
                                               (cons _%L99787%_
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
                                                       (cons _%L99787%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%L99783%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L99787%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%L99782%_ '()))))
               (cons (cons _%L99779%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L99787%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%L99783%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L99787%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%L99782%_ '()))))
                     (cons (cons _%L99781%_ '()) '()))))
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
                                                     (cons (cons (cons _%L99784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L99783%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%L99787%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%L99783%_ '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%L99787%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%L99782%_ '()))))
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
                                                     _%hd9967599773%_
                                                     _%hd9967299763%_
                                                     _%hd9966999753%_
                                                     _%hd9966699743%_
                                                     _%hd9966399733%_
                                                     _%hd9966099723%_
                                                     _%hd9965799713%_
                                                     _%hd9965499703%_)
                                                    (_%g9964099682%_
                                                     _%g9964199686%_))))
                                            (_%g9964099682%_
                                             _%g9964199686%_))))
                                    (_%g9964099682%_ _%g9964199686%_))))
                            (_%g9964099682%_ _%g9964199686%_))))
                    (_%g9964099682%_ _%g9964199686%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9964099682%_
                                                     _%g9964199686%_))))
                                            (_%g9964099682%_
                                             _%g9964199686%_))))
                                    (_%g9964099682%_ _%g9964199686%_))))
                            (_%g9964099682%_ _%g9964199686%_))))
                    (_%g9964099682%_ _%g9964199686%_)))))
        (_%g9963999821%_ _%$stx99636%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx99825%_)
      (let* ((_%g9982999875%_
              (lambda (_%g9983099871%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9983099871%_)))
             (_%g99828100028%_
              (lambda (_%g9983099879%_)
                (if (gx#stx-pair? _%g9983099879%_)
                    (let ((_%e9984099882%_ (gx#syntax-e _%g9983099879%_)))
                      (let ((_%hd9984199886%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9984099882%_)))
                            (_%tl9984299889%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9984099882%_))))
                        (if (gx#stx-pair? _%tl9984299889%_)
                            (let ((_%e9984399892%_
                                   (gx#syntax-e _%tl9984299889%_)))
                              (let ((_%hd9984499896%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9984399892%_)))
                                    (_%tl9984599899%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9984399892%_))))
                                (if (gx#stx-pair? _%tl9984599899%_)
                                    (let ((_%e9984699902%_
                                           (gx#syntax-e _%tl9984599899%_)))
                                      (let ((_%hd9984799906%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9984699902%_)))
                                            (_%tl9984899909%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9984699902%_))))
                                        (if (gx#stx-pair? _%tl9984899909%_)
                                            (let ((_%e9984999912%_
                                                   (gx#syntax-e
                                                    _%tl9984899909%_)))
                                              (let ((_%hd9985099916%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9984999912%_)))
                                                    (_%tl9985199919%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9984999912%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9985199919%_)
                                                    (let ((_%e9985299922%_
                                                           (gx#syntax-e
                                                            _%tl9985199919%_)))
                                                      (let ((_%hd9985399926%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9985299922%_)))
                    (_%tl9985499929%_
                     (let () (declare (not safe)) (##cdr _%e9985299922%_))))
                (if (gx#stx-pair? _%tl9985499929%_)
                    (let ((_%e9985599932%_ (gx#syntax-e _%tl9985499929%_)))
                      (let ((_%hd9985699936%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9985599932%_)))
                            (_%tl9985799939%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9985599932%_))))
                        (if (gx#stx-pair? _%tl9985799939%_)
                            (let ((_%e9985899942%_
                                   (gx#syntax-e _%tl9985799939%_)))
                              (let ((_%hd9985999946%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9985899942%_)))
                                    (_%tl9986099949%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9985899942%_))))
                                (if (gx#stx-pair? _%tl9986099949%_)
                                    (let ((_%e9986199952%_
                                           (gx#syntax-e _%tl9986099949%_)))
                                      (let ((_%hd9986299956%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9986199952%_)))
                                            (_%tl9986399959%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9986199952%_))))
                                        (if (gx#stx-pair? _%tl9986399959%_)
                                            (let ((_%e9986499962%_
                                                   (gx#syntax-e
                                                    _%tl9986399959%_)))
                                              (let ((_%hd9986599966%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9986499962%_)))
                                                    (_%tl9986699969%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9986499962%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9986699969%_)
                                                    (let ((_%e9986799972%_
                                                           (gx#syntax-e
                                                            _%tl9986699969%_)))
                                                      (let ((_%hd9986899976%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9986799972%_)))
                    (_%tl9986999979%_
                     (let () (declare (not safe)) (##cdr _%e9986799972%_))))
                (if (gx#stx-null? _%tl9986999979%_)
                    ((lambda (_%L99982%_
                              _%L99984%_
                              _%L99985%_
                              _%L99986%_
                              _%L99987%_
                              _%L99988%_
                              _%L99989%_
                              _%L99990%_
                              _%L99991%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%L99989%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L99987%_ '()))
                         (cons _%L99990%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%L99991%_ '()))
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
                                                       (cons _%L99991%_
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
                                                               (cons _%L99991%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%L99987%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%L99991%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%L99986%_
                                                     (cons _%L99985%_ '()))
                                               '()))))
                       (cons (cons _%L99982%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%L99991%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%L99987%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%L99991%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%L99986%_
                                                           (cons _%L99985%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%L99984%_ '()) '()))))
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
                     (cons (cons (cons _%L99988%_
                                       (cons _%L99987%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%L99991%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%L99987%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%L99991%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%L99986%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%L99991%_
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
                     _%hd9986899976%_
                     _%hd9986599966%_
                     _%hd9986299956%_
                     _%hd9985999946%_
                     _%hd9985699936%_
                     _%hd9985399926%_
                     _%hd9985099916%_
                     _%hd9984799906%_
                     _%hd9984499896%_)
                    (_%g9982999875%_ _%g9983099879%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9982999875%_
                                                     _%g9983099879%_))))
                                            (_%g9982999875%_
                                             _%g9983099879%_))))
                                    (_%g9982999875%_ _%g9983099879%_))))
                            (_%g9982999875%_ _%g9983099879%_))))
                    (_%g9982999875%_ _%g9983099879%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9982999875%_
                                                     _%g9983099879%_))))
                                            (_%g9982999875%_
                                             _%g9983099879%_))))
                                    (_%g9982999875%_ _%g9983099879%_))))
                            (_%g9982999875%_ _%g9983099879%_))))
                    (_%g9982999875%_ _%g9983099879%_)))))
        (_%g99828100028%_ _%$stx99825%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx100032%_)
      (let* ((_%g100036100070%_
              (lambda (_%g100037100066%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g100037100066%_)))
             (_%g100035100181%_
              (lambda (_%g100037100074%_)
                (if (gx#stx-pair? _%g100037100074%_)
                    (let ((_%e100044100077%_ (gx#syntax-e _%g100037100074%_)))
                      (let ((_%hd100045100081%_
                             (let ()
                               (declare (not safe))
                               (##car _%e100044100077%_)))
                            (_%tl100046100084%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e100044100077%_))))
                        (if (gx#stx-pair? _%tl100046100084%_)
                            (let ((_%e100047100087%_
                                   (gx#syntax-e _%tl100046100084%_)))
                              (let ((_%hd100048100091%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e100047100087%_)))
                                    (_%tl100049100094%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e100047100087%_))))
                                (if (gx#stx-pair? _%tl100049100094%_)
                                    (let ((_%e100050100097%_
                                           (gx#syntax-e _%tl100049100094%_)))
                                      (let ((_%hd100051100101%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e100050100097%_)))
                                            (_%tl100052100104%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e100050100097%_))))
                                        (if (gx#stx-pair? _%tl100052100104%_)
                                            (let ((_%e100053100107%_
                                                   (gx#syntax-e
                                                    _%tl100052100104%_)))
                                              (let ((_%hd100054100111%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e100053100107%_)))
                                                    (_%tl100055100114%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e100053100107%_))))
                                                (if (gx#stx-pair?
                                                     _%tl100055100114%_)
                                                    (let ((_%e100056100117%_
                                                           (gx#syntax-e
                                                            _%tl100055100114%_)))
                                                      (let ((_%hd100057100121%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e100056100117%_)))
                    (_%tl100058100124%_
                     (let () (declare (not safe)) (##cdr _%e100056100117%_))))
                (if (gx#stx-pair? _%tl100058100124%_)
                    (let ((_%e100059100127%_ (gx#syntax-e _%tl100058100124%_)))
                      (let ((_%hd100060100131%_
                             (let ()
                               (declare (not safe))
                               (##car _%e100059100127%_)))
                            (_%tl100061100134%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e100059100127%_))))
                        (if (gx#stx-pair? _%tl100061100134%_)
                            (let ((_%e100062100137%_
                                   (gx#syntax-e _%tl100061100134%_)))
                              (let ((_%hd100063100141%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e100062100137%_)))
                                    (_%tl100064100144%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e100062100137%_))))
                                (if (gx#stx-null? _%tl100064100144%_)
                                    ((lambda (_%L100147%_
                                              _%L100149%_
                                              _%L100150%_
                                              _%L100151%_
                                              _%L100152%_
                                              _%L100153%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L100151%_
                                               (cons _%L100149%_ '()))
                                         (cons _%L100152%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L100153%_ '()))
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
                               (cons _%L100153%_
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
                                     (cons (cons (cons _%L100150%_
                                                       (cons _%L100149%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L100153%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L100153%_
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
                     (cons (cons _%L100147%_ '()) '()))))
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
                                     _%hd100063100141%_
                                     _%hd100060100131%_
                                     _%hd100057100121%_
                                     _%hd100054100111%_
                                     _%hd100051100101%_
                                     _%hd100048100091%_)
                                    (_%g100036100070%_ _%g100037100074%_))))
                            (_%g100036100070%_ _%g100037100074%_))))
                    (_%g100036100070%_ _%g100037100074%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g100036100070%_
                                                     _%g100037100074%_))))
                                            (_%g100036100070%_
                                             _%g100037100074%_))))
                                    (_%g100036100070%_ _%g100037100074%_))))
                            (_%g100036100070%_ _%g100037100074%_))))
                    (_%g100036100070%_ _%g100037100074%_)))))
        (_%g100035100181%_ _%$stx100032%_)))))

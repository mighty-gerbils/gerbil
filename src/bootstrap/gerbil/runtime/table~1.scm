(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_%$stx90079%_)
      (let* ((_%g9008390097%_
              (lambda (_%g9008490093%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9008490093%_)))
             (_%g9008290139%_
              (lambda (_%g9008490101%_)
                (if (gx#stx-pair? _%g9008490101%_)
                    (let ((_%e9008690104%_ (gx#syntax-e _%g9008490101%_)))
                      (let ((_%hd9008790108%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9008690104%_)))
                            (_%tl9008890111%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9008690104%_))))
                        (if (gx#stx-pair? _%tl9008890111%_)
                            (let ((_%e9008990114%_
                                   (gx#syntax-e _%tl9008890111%_)))
                              (let ((_%hd9009090118%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9008990114%_)))
                                    (_%tl9009190121%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9008990114%_))))
                                (if (gx#stx-null? _%tl9009190121%_)
                                    ((lambda (_%L90124%_)
                                       (cons (gx#datum->syntax '#f 'macro-slot)
                                             (cons '1 (cons _%L90124%_ '()))))
                                     _%hd9009090118%_)
                                    (_%g9008390097%_ _%g9008490101%_))))
                            (_%g9008390097%_ _%g9008490101%_))))
                    (_%g9008390097%_ _%g9008490101%_)))))
        (_%g9008290139%_ _%$stx90079%_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_%$stx90143%_)
      (let* ((_%g9014790193%_
              (lambda (_%g9014890189%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9014890189%_)))
             (_%g9014690346%_
              (lambda (_%g9014890197%_)
                (if (gx#stx-pair? _%g9014890197%_)
                    (let ((_%e9015890200%_ (gx#syntax-e _%g9014890197%_)))
                      (let ((_%hd9015990204%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9015890200%_)))
                            (_%tl9016090207%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9015890200%_))))
                        (if (gx#stx-pair? _%tl9016090207%_)
                            (let ((_%e9016190210%_
                                   (gx#syntax-e _%tl9016090207%_)))
                              (let ((_%hd9016290214%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9016190210%_)))
                                    (_%tl9016390217%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9016190210%_))))
                                (if (gx#stx-pair? _%tl9016390217%_)
                                    (let ((_%e9016490220%_
                                           (gx#syntax-e _%tl9016390217%_)))
                                      (let ((_%hd9016590224%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9016490220%_)))
                                            (_%tl9016690227%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9016490220%_))))
                                        (if (gx#stx-pair? _%tl9016690227%_)
                                            (let ((_%e9016790230%_
                                                   (gx#syntax-e
                                                    _%tl9016690227%_)))
                                              (let ((_%hd9016890234%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9016790230%_)))
                                                    (_%tl9016990237%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9016790230%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9016990237%_)
                                                    (let ((_%e9017090240%_
                                                           (gx#syntax-e
                                                            _%tl9016990237%_)))
                                                      (let ((_%hd9017190244%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9017090240%_)))
                    (_%tl9017290247%_
                     (let () (declare (not safe)) (##cdr _%e9017090240%_))))
                (if (gx#stx-pair? _%tl9017290247%_)
                    (let ((_%e9017390250%_ (gx#syntax-e _%tl9017290247%_)))
                      (let ((_%hd9017490254%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9017390250%_)))
                            (_%tl9017590257%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9017390250%_))))
                        (if (gx#stx-pair? _%tl9017590257%_)
                            (let ((_%e9017690260%_
                                   (gx#syntax-e _%tl9017590257%_)))
                              (let ((_%hd9017790264%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9017690260%_)))
                                    (_%tl9017890267%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9017690260%_))))
                                (if (gx#stx-pair? _%tl9017890267%_)
                                    (let ((_%e9017990270%_
                                           (gx#syntax-e _%tl9017890267%_)))
                                      (let ((_%hd9018090274%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9017990270%_)))
                                            (_%tl9018190277%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9017990270%_))))
                                        (if (gx#stx-pair? _%tl9018190277%_)
                                            (let ((_%e9018290280%_
                                                   (gx#syntax-e
                                                    _%tl9018190277%_)))
                                              (let ((_%hd9018390284%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9018290280%_)))
                                                    (_%tl9018490287%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9018290280%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9018490287%_)
                                                    (let ((_%e9018590290%_
                                                           (gx#syntax-e
                                                            _%tl9018490287%_)))
                                                      (let ((_%hd9018690294%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9018590290%_)))
                    (_%tl9018790297%_
                     (let () (declare (not safe)) (##cdr _%e9018590290%_))))
                (if (gx#stx-null? _%tl9018790297%_)
                    ((lambda (_%L90300%_
                              _%L90302%_
                              _%L90303%_
                              _%L90304%_
                              _%L90305%_
                              _%L90306%_
                              _%L90307%_
                              _%L90308%_
                              _%L90309%_)
                       (cons (gx#datum->syntax '#f 'begin)
                             (cons (cons (gx#datum->syntax '#f 'def)
                                         (cons (cons _%L90309%_
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
                         (cons _%L90302%_
                               (cons _%L90300%_
                                     (cons (gx#datum->syntax '#f 'seed)
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   (cons (cons (gx#datum->syntax '#f 'def)
                                               (cons (cons _%L90308%_
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
                                                       (cons _%L90302%_
                                                             (cons _%L90300%_
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
                                                     (cons (cons _%L90307%_
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
                         (cons (cons _%L90306%_
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
                                                           (cons (cons _%L90306%_
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
                           (cons _%L90302%_
                                 (cons _%L90300%_
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
                         (cons (cons _%L90305%_
                                     (cons (gx#datum->syntax '#f 'tab)
                                           (cons (gx#datum->syntax '#f 'key)
                                                 (cons _%L90305%_
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
                                     (cons (cons _%L90304%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'tab)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'key)
                                                             (cons _%L90305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                   (cons (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _%L90304%_
                                           (cons (gx#datum->syntax '#f 'tab)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'key)
                                                       (cons _%L90305%_
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
                                       (cons _%L90302%_
                                             (cons _%L90300%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'key)
                                                         (cons _%L90305%_
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
                                     (cons (cons _%L90303%_
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
                                             (cons _%L90302%_
                                                   (cons _%L90300%_
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
                     _%hd9018690294%_
                     _%hd9018390284%_
                     _%hd9018090274%_
                     _%hd9017790264%_
                     _%hd9017490254%_
                     _%hd9017190244%_
                     _%hd9016890234%_
                     _%hd9016590224%_
                     _%hd9016290214%_)
                    (_%g9014790193%_ _%g9014890197%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9014790193%_
                                                     _%g9014890197%_))))
                                            (_%g9014790193%_
                                             _%g9014890197%_))))
                                    (_%g9014790193%_ _%g9014890197%_))))
                            (_%g9014790193%_ _%g9014890197%_))))
                    (_%g9014790193%_ _%g9014890197%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9014790193%_
                                                     _%g9014890197%_))))
                                            (_%g9014790193%_
                                             _%g9014890197%_))))
                                    (_%g9014790193%_ _%g9014890197%_))))
                            (_%g9014790193%_ _%g9014890197%_))))
                    (_%g9014790193%_ _%g9014890197%_)))))
        (_%g9014690346%_ _%$stx90143%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx90350%_)
      (let* ((_%g9035490376%_
              (lambda (_%g9035590372%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9035590372%_)))
             (_%g9035390445%_
              (lambda (_%g9035590380%_)
                (if (gx#stx-pair? _%g9035590380%_)
                    (let ((_%e9035990383%_ (gx#syntax-e _%g9035590380%_)))
                      (let ((_%hd9036090387%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9035990383%_)))
                            (_%tl9036190390%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9035990383%_))))
                        (if (gx#stx-pair? _%tl9036190390%_)
                            (let ((_%e9036290393%_
                                   (gx#syntax-e _%tl9036190390%_)))
                              (let ((_%hd9036390397%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9036290393%_)))
                                    (_%tl9036490400%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9036290393%_))))
                                (if (gx#stx-pair? _%tl9036490400%_)
                                    (let ((_%e9036590403%_
                                           (gx#syntax-e _%tl9036490400%_)))
                                      (let ((_%hd9036690407%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9036590403%_)))
                                            (_%tl9036790410%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9036590403%_))))
                                        (if (gx#stx-pair? _%tl9036790410%_)
                                            (let ((_%e9036890413%_
                                                   (gx#syntax-e
                                                    _%tl9036790410%_)))
                                              (let ((_%hd9036990417%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9036890413%_)))
                                                    (_%tl9037090420%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9036890413%_))))
                                                (if (gx#stx-null?
                                                     _%tl9037090420%_)
                                                    ((lambda (_%L90423%_
                                                              _%L90425%_
                                                              _%L90426%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%L90426%_
                                                   (cons _%L90425%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%L90425%_ (cons _%L90425%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%L90423%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd9036990417%_
                                                     _%hd9036690407%_
                                                     _%hd9036390397%_)
                                                    (_%g9035490376%_
                                                     _%g9035590380%_))))
                                            (_%g9035490376%_
                                             _%g9035590380%_))))
                                    (_%g9035490376%_ _%g9035590380%_))))
                            (_%g9035490376%_ _%g9035590380%_))))
                    (_%g9035490376%_ _%g9035590380%_)))))
        (_%g9035390445%_ _%$stx90350%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx90449%_)
      (let* ((_%g9045390487%_
              (lambda (_%g9045490483%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9045490483%_)))
             (_%g9045290598%_
              (lambda (_%g9045490491%_)
                (if (gx#stx-pair? _%g9045490491%_)
                    (let ((_%e9046190494%_ (gx#syntax-e _%g9045490491%_)))
                      (let ((_%hd9046290498%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9046190494%_)))
                            (_%tl9046390501%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9046190494%_))))
                        (if (gx#stx-pair? _%tl9046390501%_)
                            (let ((_%e9046490504%_
                                   (gx#syntax-e _%tl9046390501%_)))
                              (let ((_%hd9046590508%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9046490504%_)))
                                    (_%tl9046690511%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9046490504%_))))
                                (if (gx#stx-pair? _%tl9046690511%_)
                                    (let ((_%e9046790514%_
                                           (gx#syntax-e _%tl9046690511%_)))
                                      (let ((_%hd9046890518%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9046790514%_)))
                                            (_%tl9046990521%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9046790514%_))))
                                        (if (gx#stx-pair? _%tl9046990521%_)
                                            (let ((_%e9047090524%_
                                                   (gx#syntax-e
                                                    _%tl9046990521%_)))
                                              (let ((_%hd9047190528%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9047090524%_)))
                                                    (_%tl9047290531%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9047090524%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9047290531%_)
                                                    (let ((_%e9047390534%_
                                                           (gx#syntax-e
                                                            _%tl9047290531%_)))
                                                      (let ((_%hd9047490538%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9047390534%_)))
                    (_%tl9047590541%_
                     (let () (declare (not safe)) (##cdr _%e9047390534%_))))
                (if (gx#stx-pair? _%tl9047590541%_)
                    (let ((_%e9047690544%_ (gx#syntax-e _%tl9047590541%_)))
                      (let ((_%hd9047790548%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9047690544%_)))
                            (_%tl9047890551%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9047690544%_))))
                        (if (gx#stx-pair? _%tl9047890551%_)
                            (let ((_%e9047990554%_
                                   (gx#syntax-e _%tl9047890551%_)))
                              (let ((_%hd9048090558%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9047990554%_)))
                                    (_%tl9048190561%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9047990554%_))))
                                (if (gx#stx-null? _%tl9048190561%_)
                                    ((lambda (_%L90564%_
                                              _%L90566%_
                                              _%L90567%_
                                              _%L90568%_
                                              _%L90569%_
                                              _%L90570%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L90568%_
                                               (cons _%L90566%_ '()))
                                         (cons _%L90569%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L90570%_ '()))
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
                               (cons _%L90570%_
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
                                     (cons _%L90564%_ '()))
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
                                     (cons (cons (cons _%L90567%_
                                                       (cons _%L90566%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%L90570%_
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
                                     _%hd9048090558%_
                                     _%hd9047790548%_
                                     _%hd9047490538%_
                                     _%hd9047190528%_
                                     _%hd9046890518%_
                                     _%hd9046590508%_)
                                    (_%g9045390487%_ _%g9045490491%_))))
                            (_%g9045390487%_ _%g9045490491%_))))
                    (_%g9045390487%_ _%g9045490491%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9045390487%_
                                                     _%g9045490491%_))))
                                            (_%g9045390487%_
                                             _%g9045490491%_))))
                                    (_%g9045390487%_ _%g9045490491%_))))
                            (_%g9045390487%_ _%g9045490491%_))))
                    (_%g9045390487%_ _%g9045490491%_)))))
        (_%g9045290598%_ _%$stx90449%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx90602%_)
      (let* ((_%g9060690648%_
              (lambda (_%g9060790644%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9060790644%_)))
             (_%g9060590787%_
              (lambda (_%g9060790652%_)
                (if (gx#stx-pair? _%g9060790652%_)
                    (let ((_%e9061690655%_ (gx#syntax-e _%g9060790652%_)))
                      (let ((_%hd9061790659%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9061690655%_)))
                            (_%tl9061890662%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9061690655%_))))
                        (if (gx#stx-pair? _%tl9061890662%_)
                            (let ((_%e9061990665%_
                                   (gx#syntax-e _%tl9061890662%_)))
                              (let ((_%hd9062090669%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9061990665%_)))
                                    (_%tl9062190672%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9061990665%_))))
                                (if (gx#stx-pair? _%tl9062190672%_)
                                    (let ((_%e9062290675%_
                                           (gx#syntax-e _%tl9062190672%_)))
                                      (let ((_%hd9062390679%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9062290675%_)))
                                            (_%tl9062490682%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9062290675%_))))
                                        (if (gx#stx-pair? _%tl9062490682%_)
                                            (let ((_%e9062590685%_
                                                   (gx#syntax-e
                                                    _%tl9062490682%_)))
                                              (let ((_%hd9062690689%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9062590685%_)))
                                                    (_%tl9062790692%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9062590685%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9062790692%_)
                                                    (let ((_%e9062890695%_
                                                           (gx#syntax-e
                                                            _%tl9062790692%_)))
                                                      (let ((_%hd9062990699%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9062890695%_)))
                    (_%tl9063090702%_
                     (let () (declare (not safe)) (##cdr _%e9062890695%_))))
                (if (gx#stx-pair? _%tl9063090702%_)
                    (let ((_%e9063190705%_ (gx#syntax-e _%tl9063090702%_)))
                      (let ((_%hd9063290709%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9063190705%_)))
                            (_%tl9063390712%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9063190705%_))))
                        (if (gx#stx-pair? _%tl9063390712%_)
                            (let ((_%e9063490715%_
                                   (gx#syntax-e _%tl9063390712%_)))
                              (let ((_%hd9063590719%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9063490715%_)))
                                    (_%tl9063690722%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9063490715%_))))
                                (if (gx#stx-pair? _%tl9063690722%_)
                                    (let ((_%e9063790725%_
                                           (gx#syntax-e _%tl9063690722%_)))
                                      (let ((_%hd9063890729%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9063790725%_)))
                                            (_%tl9063990732%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9063790725%_))))
                                        (if (gx#stx-pair? _%tl9063990732%_)
                                            (let ((_%e9064090735%_
                                                   (gx#syntax-e
                                                    _%tl9063990732%_)))
                                              (let ((_%hd9064190739%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9064090735%_)))
                                                    (_%tl9064290742%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9064090735%_))))
                                                (if (gx#stx-null?
                                                     _%tl9064290742%_)
                                                    ((lambda (_%L90745%_
                                                              _%L90747%_
                                                              _%L90748%_
                                                              _%L90749%_
                                                              _%L90750%_
                                                              _%L90751%_
                                                              _%L90752%_
                                                              _%L90753%_)
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
                                                   (cons (cons _%L90751%_
                                                               (cons _%L90749%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%L90752%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%L90753%_ '()))
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
                                               (cons _%L90753%_
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
                                                       (cons _%L90753%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%L90749%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L90753%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%L90748%_ '()))))
               (cons (cons _%L90745%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L90753%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%L90749%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L90753%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%L90748%_ '()))))
                     (cons (cons _%L90747%_ '()) '()))))
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
                                                     (cons (cons (cons _%L90750%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L90749%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%L90753%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%L90749%_ '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%L90753%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%L90748%_ '()))))
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
                                                     _%hd9064190739%_
                                                     _%hd9063890729%_
                                                     _%hd9063590719%_
                                                     _%hd9063290709%_
                                                     _%hd9062990699%_
                                                     _%hd9062690689%_
                                                     _%hd9062390679%_
                                                     _%hd9062090669%_)
                                                    (_%g9060690648%_
                                                     _%g9060790652%_))))
                                            (_%g9060690648%_
                                             _%g9060790652%_))))
                                    (_%g9060690648%_ _%g9060790652%_))))
                            (_%g9060690648%_ _%g9060790652%_))))
                    (_%g9060690648%_ _%g9060790652%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9060690648%_
                                                     _%g9060790652%_))))
                                            (_%g9060690648%_
                                             _%g9060790652%_))))
                                    (_%g9060690648%_ _%g9060790652%_))))
                            (_%g9060690648%_ _%g9060790652%_))))
                    (_%g9060690648%_ _%g9060790652%_)))))
        (_%g9060590787%_ _%$stx90602%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx90791%_)
      (let* ((_%g9079590841%_
              (lambda (_%g9079690837%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9079690837%_)))
             (_%g9079490994%_
              (lambda (_%g9079690845%_)
                (if (gx#stx-pair? _%g9079690845%_)
                    (let ((_%e9080690848%_ (gx#syntax-e _%g9079690845%_)))
                      (let ((_%hd9080790852%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9080690848%_)))
                            (_%tl9080890855%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9080690848%_))))
                        (if (gx#stx-pair? _%tl9080890855%_)
                            (let ((_%e9080990858%_
                                   (gx#syntax-e _%tl9080890855%_)))
                              (let ((_%hd9081090862%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9080990858%_)))
                                    (_%tl9081190865%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9080990858%_))))
                                (if (gx#stx-pair? _%tl9081190865%_)
                                    (let ((_%e9081290868%_
                                           (gx#syntax-e _%tl9081190865%_)))
                                      (let ((_%hd9081390872%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9081290868%_)))
                                            (_%tl9081490875%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9081290868%_))))
                                        (if (gx#stx-pair? _%tl9081490875%_)
                                            (let ((_%e9081590878%_
                                                   (gx#syntax-e
                                                    _%tl9081490875%_)))
                                              (let ((_%hd9081690882%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9081590878%_)))
                                                    (_%tl9081790885%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9081590878%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9081790885%_)
                                                    (let ((_%e9081890888%_
                                                           (gx#syntax-e
                                                            _%tl9081790885%_)))
                                                      (let ((_%hd9081990892%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9081890888%_)))
                    (_%tl9082090895%_
                     (let () (declare (not safe)) (##cdr _%e9081890888%_))))
                (if (gx#stx-pair? _%tl9082090895%_)
                    (let ((_%e9082190898%_ (gx#syntax-e _%tl9082090895%_)))
                      (let ((_%hd9082290902%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9082190898%_)))
                            (_%tl9082390905%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9082190898%_))))
                        (if (gx#stx-pair? _%tl9082390905%_)
                            (let ((_%e9082490908%_
                                   (gx#syntax-e _%tl9082390905%_)))
                              (let ((_%hd9082590912%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9082490908%_)))
                                    (_%tl9082690915%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9082490908%_))))
                                (if (gx#stx-pair? _%tl9082690915%_)
                                    (let ((_%e9082790918%_
                                           (gx#syntax-e _%tl9082690915%_)))
                                      (let ((_%hd9082890922%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9082790918%_)))
                                            (_%tl9082990925%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9082790918%_))))
                                        (if (gx#stx-pair? _%tl9082990925%_)
                                            (let ((_%e9083090928%_
                                                   (gx#syntax-e
                                                    _%tl9082990925%_)))
                                              (let ((_%hd9083190932%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9083090928%_)))
                                                    (_%tl9083290935%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9083090928%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9083290935%_)
                                                    (let ((_%e9083390938%_
                                                           (gx#syntax-e
                                                            _%tl9083290935%_)))
                                                      (let ((_%hd9083490942%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9083390938%_)))
                    (_%tl9083590945%_
                     (let () (declare (not safe)) (##cdr _%e9083390938%_))))
                (if (gx#stx-null? _%tl9083590945%_)
                    ((lambda (_%L90948%_
                              _%L90950%_
                              _%L90951%_
                              _%L90952%_
                              _%L90953%_
                              _%L90954%_
                              _%L90955%_
                              _%L90956%_
                              _%L90957%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%L90955%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L90953%_ '()))
                         (cons _%L90956%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%L90957%_ '()))
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
                                                       (cons _%L90957%_
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
                                                               (cons _%L90957%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%L90953%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%L90957%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%L90952%_
                                                     (cons _%L90951%_ '()))
                                               '()))))
                       (cons (cons _%L90948%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%L90957%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%L90953%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%L90957%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%L90952%_
                                                           (cons _%L90951%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%L90950%_ '()) '()))))
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
                     (cons (cons (cons _%L90954%_
                                       (cons _%L90953%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%L90957%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%L90953%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%L90957%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%L90952%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%L90957%_
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
                     _%hd9083490942%_
                     _%hd9083190932%_
                     _%hd9082890922%_
                     _%hd9082590912%_
                     _%hd9082290902%_
                     _%hd9081990892%_
                     _%hd9081690882%_
                     _%hd9081390872%_
                     _%hd9081090862%_)
                    (_%g9079590841%_ _%g9079690845%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9079590841%_
                                                     _%g9079690845%_))))
                                            (_%g9079590841%_
                                             _%g9079690845%_))))
                                    (_%g9079590841%_ _%g9079690845%_))))
                            (_%g9079590841%_ _%g9079690845%_))))
                    (_%g9079590841%_ _%g9079690845%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9079590841%_
                                                     _%g9079690845%_))))
                                            (_%g9079590841%_
                                             _%g9079690845%_))))
                                    (_%g9079590841%_ _%g9079690845%_))))
                            (_%g9079590841%_ _%g9079690845%_))))
                    (_%g9079590841%_ _%g9079690845%_)))))
        (_%g9079490994%_ _%$stx90791%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx90998%_)
      (let* ((_%g9100291036%_
              (lambda (_%g9100391032%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9100391032%_)))
             (_%g9100191147%_
              (lambda (_%g9100391040%_)
                (if (gx#stx-pair? _%g9100391040%_)
                    (let ((_%e9101091043%_ (gx#syntax-e _%g9100391040%_)))
                      (let ((_%hd9101191047%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9101091043%_)))
                            (_%tl9101291050%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9101091043%_))))
                        (if (gx#stx-pair? _%tl9101291050%_)
                            (let ((_%e9101391053%_
                                   (gx#syntax-e _%tl9101291050%_)))
                              (let ((_%hd9101491057%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9101391053%_)))
                                    (_%tl9101591060%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9101391053%_))))
                                (if (gx#stx-pair? _%tl9101591060%_)
                                    (let ((_%e9101691063%_
                                           (gx#syntax-e _%tl9101591060%_)))
                                      (let ((_%hd9101791067%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9101691063%_)))
                                            (_%tl9101891070%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9101691063%_))))
                                        (if (gx#stx-pair? _%tl9101891070%_)
                                            (let ((_%e9101991073%_
                                                   (gx#syntax-e
                                                    _%tl9101891070%_)))
                                              (let ((_%hd9102091077%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9101991073%_)))
                                                    (_%tl9102191080%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9101991073%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9102191080%_)
                                                    (let ((_%e9102291083%_
                                                           (gx#syntax-e
                                                            _%tl9102191080%_)))
                                                      (let ((_%hd9102391087%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9102291083%_)))
                    (_%tl9102491090%_
                     (let () (declare (not safe)) (##cdr _%e9102291083%_))))
                (if (gx#stx-pair? _%tl9102491090%_)
                    (let ((_%e9102591093%_ (gx#syntax-e _%tl9102491090%_)))
                      (let ((_%hd9102691097%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9102591093%_)))
                            (_%tl9102791100%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9102591093%_))))
                        (if (gx#stx-pair? _%tl9102791100%_)
                            (let ((_%e9102891103%_
                                   (gx#syntax-e _%tl9102791100%_)))
                              (let ((_%hd9102991107%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9102891103%_)))
                                    (_%tl9103091110%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9102891103%_))))
                                (if (gx#stx-null? _%tl9103091110%_)
                                    ((lambda (_%L91113%_
                                              _%L91115%_
                                              _%L91116%_
                                              _%L91117%_
                                              _%L91118%_
                                              _%L91119%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L91117%_
                                               (cons _%L91115%_ '()))
                                         (cons _%L91118%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L91119%_ '()))
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
                               (cons _%L91119%_
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
                                     (cons (cons (cons _%L91116%_
                                                       (cons _%L91115%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L91119%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L91119%_
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
                     (cons (cons _%L91113%_ '()) '()))))
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
                                     _%hd9102991107%_
                                     _%hd9102691097%_
                                     _%hd9102391087%_
                                     _%hd9102091077%_
                                     _%hd9101791067%_
                                     _%hd9101491057%_)
                                    (_%g9100291036%_ _%g9100391040%_))))
                            (_%g9100291036%_ _%g9100391040%_))))
                    (_%g9100291036%_ _%g9100391040%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9100291036%_
                                                     _%g9100391040%_))))
                                            (_%g9100291036%_
                                             _%g9100391040%_))))
                                    (_%g9100291036%_ _%g9100391040%_))))
                            (_%g9100291036%_ _%g9100391040%_))))
                    (_%g9100291036%_ _%g9100391040%_)))))
        (_%g9100191147%_ _%$stx90998%_)))))

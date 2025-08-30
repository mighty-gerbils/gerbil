(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#defspecialized-table|
    (lambda (_%$stx98801%_)
      (let* ((_%g9880598851%_
              (lambda (_%g9880698847%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9880698847%_)))
             (_%g9880499005%_
              (lambda (_%g9880698855%_)
                (if (gx#stx-pair? _%g9880698855%_)
                    (let ((_%e9881698858%_ (gx#syntax-e _%g9880698855%_)))
                      (let ((_%hd9881798862%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9881698858%_)))
                            (_%tl9881898865%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9881698858%_))))
                        (if (gx#stx-pair? _%tl9881898865%_)
                            (let ((_%e9881998868%_
                                   (gx#syntax-e _%tl9881898865%_)))
                              (let ((_%hd9882098872%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9881998868%_)))
                                    (_%tl9882198875%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9881998868%_))))
                                (if (gx#stx-pair? _%tl9882198875%_)
                                    (let ((_%e9882298878%_
                                           (gx#syntax-e _%tl9882198875%_)))
                                      (let ((_%hd9882398882%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9882298878%_)))
                                            (_%tl9882498885%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9882298878%_))))
                                        (if (gx#stx-pair? _%tl9882498885%_)
                                            (let ((_%e9882598888%_
                                                   (gx#syntax-e
                                                    _%tl9882498885%_)))
                                              (let ((_%hd9882698892%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9882598888%_)))
                                                    (_%tl9882798895%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9882598888%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9882798895%_)
                                                    (let ((_%e9882898898%_
                                                           (gx#syntax-e
                                                            _%tl9882798895%_)))
                                                      (let ((_%hd9882998902%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9882898898%_)))
                    (_%tl9883098905%_
                     (let () (declare (not safe)) (##cdr _%e9882898898%_))))
                (if (gx#stx-pair? _%tl9883098905%_)
                    (let ((_%e9883198908%_ (gx#syntax-e _%tl9883098905%_)))
                      (let ((_%hd9883298912%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9883198908%_)))
                            (_%tl9883398915%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9883198908%_))))
                        (if (gx#stx-pair? _%tl9883398915%_)
                            (let ((_%e9883498918%_
                                   (gx#syntax-e _%tl9883398915%_)))
                              (let ((_%hd9883598922%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9883498918%_)))
                                    (_%tl9883698925%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9883498918%_))))
                                (if (gx#stx-pair? _%tl9883698925%_)
                                    (let ((_%e9883798928%_
                                           (gx#syntax-e _%tl9883698925%_)))
                                      (let ((_%hd9883898932%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9883798928%_)))
                                            (_%tl9883998935%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9883798928%_))))
                                        (if (gx#stx-pair? _%tl9883998935%_)
                                            (let ((_%e9884098938%_
                                                   (gx#syntax-e
                                                    _%tl9883998935%_)))
                                              (let ((_%hd9884198942%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9884098938%_)))
                                                    (_%tl9884298945%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9884098938%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9884298945%_)
                                                    (let ((_%e9884398948%_
                                                           (gx#syntax-e
                                                            _%tl9884298945%_)))
                                                      (let ((_%hd9884498952%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9884398948%_)))
                    (_%tl9884598955%_
                     (let () (declare (not safe)) (##cdr _%e9884398948%_))))
                (if (gx#stx-null? _%tl9884598955%_)
                    ((lambda (_%L98958%_
                              _%L98960%_
                              _%L98961%_
                              _%L98962%_
                              _%L98963%_
                              _%L98964%_
                              _%L98965%_
                              _%L98966%_
                              _%L98967%_)
                       (cons (gx#datum->syntax '#f 'begin)
                             (cons (cons (gx#datum->syntax '#f 'def)
                                         (cons (cons _%L98967%_
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
                         (cons _%L98960%_
                               (cons _%L98958%_
                                     (cons (gx#datum->syntax '#f 'seed)
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   (cons (cons (gx#datum->syntax '#f 'def)
                                               (cons (cons _%L98966%_
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
                                                       (cons _%L98960%_
                                                             (cons _%L98958%_
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
                                                     (cons (cons _%L98965%_
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
                         (cons (cons _%L98964%_
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
                                                           (cons (cons _%L98964%_
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
                           (cons _%L98960%_
                                 (cons _%L98958%_
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
                         (cons (cons _%L98963%_
                                     (cons (gx#datum->syntax '#f 'tab)
                                           (cons (gx#datum->syntax '#f 'key)
                                                 (cons _%L98963%_
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
                                     (cons (cons _%L98962%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'tab)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'key)
                                                             (cons _%L98963%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                   (cons (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _%L98962%_
                                           (cons (gx#datum->syntax '#f 'tab)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'key)
                                                       (cons _%L98963%_
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
                                       (cons _%L98960%_
                                             (cons _%L98958%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'key)
                                                         (cons _%L98963%_
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
                                     (cons (cons _%L98961%_
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
                                             (cons _%L98960%_
                                                   (cons _%L98958%_
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
                     _%hd9884498952%_
                     _%hd9884198942%_
                     _%hd9883898932%_
                     _%hd9883598922%_
                     _%hd9883298912%_
                     _%hd9882998902%_
                     _%hd9882698892%_
                     _%hd9882398882%_
                     _%hd9882098872%_)
                    (_%g9880598851%_ _%g9880698855%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9880598851%_
                                                     _%g9880698855%_))))
                                            (_%g9880598851%_
                                             _%g9880698855%_))))
                                    (_%g9880598851%_ _%g9880698855%_))))
                            (_%g9880598851%_ _%g9880698855%_))))
                    (_%g9880598851%_ _%g9880698855%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9880598851%_
                                                     _%g9880698855%_))))
                                            (_%g9880598851%_
                                             _%g9880698855%_))))
                                    (_%g9880598851%_ _%g9880698855%_))))
                            (_%g9880598851%_ _%g9880698855%_))))
                    (_%g9880598851%_ _%g9880698855%_)))))
        (_%g9880499005%_ _%$stx98801%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx99009%_)
      (let* ((_%g9901399035%_
              (lambda (_%g9901499031%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9901499031%_)))
             (_%g9901299104%_
              (lambda (_%g9901499039%_)
                (if (gx#stx-pair? _%g9901499039%_)
                    (let ((_%e9901899042%_ (gx#syntax-e _%g9901499039%_)))
                      (let ((_%hd9901999046%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9901899042%_)))
                            (_%tl9902099049%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9901899042%_))))
                        (if (gx#stx-pair? _%tl9902099049%_)
                            (let ((_%e9902199052%_
                                   (gx#syntax-e _%tl9902099049%_)))
                              (let ((_%hd9902299056%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9902199052%_)))
                                    (_%tl9902399059%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9902199052%_))))
                                (if (gx#stx-pair? _%tl9902399059%_)
                                    (let ((_%e9902499062%_
                                           (gx#syntax-e _%tl9902399059%_)))
                                      (let ((_%hd9902599066%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9902499062%_)))
                                            (_%tl9902699069%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9902499062%_))))
                                        (if (gx#stx-pair? _%tl9902699069%_)
                                            (let ((_%e9902799072%_
                                                   (gx#syntax-e
                                                    _%tl9902699069%_)))
                                              (let ((_%hd9902899076%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9902799072%_)))
                                                    (_%tl9902999079%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9902799072%_))))
                                                (if (gx#stx-null?
                                                     _%tl9902999079%_)
                                                    ((lambda (_%L99082%_
                                                              _%L99084%_
                                                              _%L99085%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%L99085%_
                                                   (cons _%L99084%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%L99084%_ (cons _%L99084%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%L99082%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd9902899076%_
                                                     _%hd9902599066%_
                                                     _%hd9902299056%_)
                                                    (_%g9901399035%_
                                                     _%g9901499039%_))))
                                            (_%g9901399035%_
                                             _%g9901499039%_))))
                                    (_%g9901399035%_ _%g9901499039%_))))
                            (_%g9901399035%_ _%g9901499039%_))))
                    (_%g9901399035%_ _%g9901499039%_)))))
        (_%g9901299104%_ _%$stx99009%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx99108%_)
      (let* ((_%g9911299146%_
              (lambda (_%g9911399142%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9911399142%_)))
             (_%g9911199257%_
              (lambda (_%g9911399150%_)
                (if (gx#stx-pair? _%g9911399150%_)
                    (let ((_%e9912099153%_ (gx#syntax-e _%g9911399150%_)))
                      (let ((_%hd9912199157%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9912099153%_)))
                            (_%tl9912299160%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9912099153%_))))
                        (if (gx#stx-pair? _%tl9912299160%_)
                            (let ((_%e9912399163%_
                                   (gx#syntax-e _%tl9912299160%_)))
                              (let ((_%hd9912499167%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9912399163%_)))
                                    (_%tl9912599170%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9912399163%_))))
                                (if (gx#stx-pair? _%tl9912599170%_)
                                    (let ((_%e9912699173%_
                                           (gx#syntax-e _%tl9912599170%_)))
                                      (let ((_%hd9912799177%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9912699173%_)))
                                            (_%tl9912899180%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9912699173%_))))
                                        (if (gx#stx-pair? _%tl9912899180%_)
                                            (let ((_%e9912999183%_
                                                   (gx#syntax-e
                                                    _%tl9912899180%_)))
                                              (let ((_%hd9913099187%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9912999183%_)))
                                                    (_%tl9913199190%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9912999183%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9913199190%_)
                                                    (let ((_%e9913299193%_
                                                           (gx#syntax-e
                                                            _%tl9913199190%_)))
                                                      (let ((_%hd9913399197%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9913299193%_)))
                    (_%tl9913499200%_
                     (let () (declare (not safe)) (##cdr _%e9913299193%_))))
                (if (gx#stx-pair? _%tl9913499200%_)
                    (let ((_%e9913599203%_ (gx#syntax-e _%tl9913499200%_)))
                      (let ((_%hd9913699207%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9913599203%_)))
                            (_%tl9913799210%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9913599203%_))))
                        (if (gx#stx-pair? _%tl9913799210%_)
                            (let ((_%e9913899213%_
                                   (gx#syntax-e _%tl9913799210%_)))
                              (let ((_%hd9913999217%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9913899213%_)))
                                    (_%tl9914099220%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9913899213%_))))
                                (if (gx#stx-null? _%tl9914099220%_)
                                    ((lambda (_%L99223%_
                                              _%L99225%_
                                              _%L99226%_
                                              _%L99227%_
                                              _%L99228%_
                                              _%L99229%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L99227%_
                                               (cons _%L99225%_ '()))
                                         (cons _%L99228%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L99229%_ '()))
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
                               (cons _%L99229%_
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
                                     (cons _%L99223%_ '()))
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
                                     (cons (cons (cons _%L99226%_
                                                       (cons _%L99225%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%L99229%_
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
                                     _%hd9913999217%_
                                     _%hd9913699207%_
                                     _%hd9913399197%_
                                     _%hd9913099187%_
                                     _%hd9912799177%_
                                     _%hd9912499167%_)
                                    (_%g9911299146%_ _%g9911399150%_))))
                            (_%g9911299146%_ _%g9911399150%_))))
                    (_%g9911299146%_ _%g9911399150%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9911299146%_
                                                     _%g9911399150%_))))
                                            (_%g9911299146%_
                                             _%g9911399150%_))))
                                    (_%g9911299146%_ _%g9911399150%_))))
                            (_%g9911299146%_ _%g9911399150%_))))
                    (_%g9911299146%_ _%g9911399150%_)))))
        (_%g9911199257%_ _%$stx99108%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx99261%_)
      (let* ((_%g9926599307%_
              (lambda (_%g9926699303%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9926699303%_)))
             (_%g9926499446%_
              (lambda (_%g9926699311%_)
                (if (gx#stx-pair? _%g9926699311%_)
                    (let ((_%e9927599314%_ (gx#syntax-e _%g9926699311%_)))
                      (let ((_%hd9927699318%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9927599314%_)))
                            (_%tl9927799321%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9927599314%_))))
                        (if (gx#stx-pair? _%tl9927799321%_)
                            (let ((_%e9927899324%_
                                   (gx#syntax-e _%tl9927799321%_)))
                              (let ((_%hd9927999328%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9927899324%_)))
                                    (_%tl9928099331%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9927899324%_))))
                                (if (gx#stx-pair? _%tl9928099331%_)
                                    (let ((_%e9928199334%_
                                           (gx#syntax-e _%tl9928099331%_)))
                                      (let ((_%hd9928299338%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9928199334%_)))
                                            (_%tl9928399341%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9928199334%_))))
                                        (if (gx#stx-pair? _%tl9928399341%_)
                                            (let ((_%e9928499344%_
                                                   (gx#syntax-e
                                                    _%tl9928399341%_)))
                                              (let ((_%hd9928599348%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9928499344%_)))
                                                    (_%tl9928699351%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9928499344%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9928699351%_)
                                                    (let ((_%e9928799354%_
                                                           (gx#syntax-e
                                                            _%tl9928699351%_)))
                                                      (let ((_%hd9928899358%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9928799354%_)))
                    (_%tl9928999361%_
                     (let () (declare (not safe)) (##cdr _%e9928799354%_))))
                (if (gx#stx-pair? _%tl9928999361%_)
                    (let ((_%e9929099364%_ (gx#syntax-e _%tl9928999361%_)))
                      (let ((_%hd9929199368%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9929099364%_)))
                            (_%tl9929299371%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9929099364%_))))
                        (if (gx#stx-pair? _%tl9929299371%_)
                            (let ((_%e9929399374%_
                                   (gx#syntax-e _%tl9929299371%_)))
                              (let ((_%hd9929499378%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9929399374%_)))
                                    (_%tl9929599381%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9929399374%_))))
                                (if (gx#stx-pair? _%tl9929599381%_)
                                    (let ((_%e9929699384%_
                                           (gx#syntax-e _%tl9929599381%_)))
                                      (let ((_%hd9929799388%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9929699384%_)))
                                            (_%tl9929899391%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9929699384%_))))
                                        (if (gx#stx-pair? _%tl9929899391%_)
                                            (let ((_%e9929999394%_
                                                   (gx#syntax-e
                                                    _%tl9929899391%_)))
                                              (let ((_%hd9930099398%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9929999394%_)))
                                                    (_%tl9930199401%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9929999394%_))))
                                                (if (gx#stx-null?
                                                     _%tl9930199401%_)
                                                    ((lambda (_%L99404%_
                                                              _%L99406%_
                                                              _%L99407%_
                                                              _%L99408%_
                                                              _%L99409%_
                                                              _%L99410%_
                                                              _%L99411%_
                                                              _%L99412%_)
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
                                                   (cons (cons _%L99410%_
                                                               (cons _%L99408%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%L99411%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%L99412%_ '()))
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
                                               (cons _%L99412%_
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
                                                       (cons _%L99412%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%L99408%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L99412%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%L99407%_ '()))))
               (cons (cons _%L99404%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L99412%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%L99408%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L99412%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%L99407%_ '()))))
                     (cons (cons _%L99406%_ '()) '()))))
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
                                                     (cons (cons (cons _%L99409%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L99408%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%L99412%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%L99408%_ '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%L99412%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%L99407%_ '()))))
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
                                                     _%hd9930099398%_
                                                     _%hd9929799388%_
                                                     _%hd9929499378%_
                                                     _%hd9929199368%_
                                                     _%hd9928899358%_
                                                     _%hd9928599348%_
                                                     _%hd9928299338%_
                                                     _%hd9927999328%_)
                                                    (_%g9926599307%_
                                                     _%g9926699311%_))))
                                            (_%g9926599307%_
                                             _%g9926699311%_))))
                                    (_%g9926599307%_ _%g9926699311%_))))
                            (_%g9926599307%_ _%g9926699311%_))))
                    (_%g9926599307%_ _%g9926699311%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9926599307%_
                                                     _%g9926699311%_))))
                                            (_%g9926599307%_
                                             _%g9926699311%_))))
                                    (_%g9926599307%_ _%g9926699311%_))))
                            (_%g9926599307%_ _%g9926699311%_))))
                    (_%g9926599307%_ _%g9926699311%_)))))
        (_%g9926499446%_ _%$stx99261%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx99450%_)
      (let* ((_%g9945499500%_
              (lambda (_%g9945599496%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9945599496%_)))
             (_%g9945399653%_
              (lambda (_%g9945599504%_)
                (if (gx#stx-pair? _%g9945599504%_)
                    (let ((_%e9946599507%_ (gx#syntax-e _%g9945599504%_)))
                      (let ((_%hd9946699511%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9946599507%_)))
                            (_%tl9946799514%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9946599507%_))))
                        (if (gx#stx-pair? _%tl9946799514%_)
                            (let ((_%e9946899517%_
                                   (gx#syntax-e _%tl9946799514%_)))
                              (let ((_%hd9946999521%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9946899517%_)))
                                    (_%tl9947099524%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9946899517%_))))
                                (if (gx#stx-pair? _%tl9947099524%_)
                                    (let ((_%e9947199527%_
                                           (gx#syntax-e _%tl9947099524%_)))
                                      (let ((_%hd9947299531%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9947199527%_)))
                                            (_%tl9947399534%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9947199527%_))))
                                        (if (gx#stx-pair? _%tl9947399534%_)
                                            (let ((_%e9947499537%_
                                                   (gx#syntax-e
                                                    _%tl9947399534%_)))
                                              (let ((_%hd9947599541%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9947499537%_)))
                                                    (_%tl9947699544%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9947499537%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9947699544%_)
                                                    (let ((_%e9947799547%_
                                                           (gx#syntax-e
                                                            _%tl9947699544%_)))
                                                      (let ((_%hd9947899551%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9947799547%_)))
                    (_%tl9947999554%_
                     (let () (declare (not safe)) (##cdr _%e9947799547%_))))
                (if (gx#stx-pair? _%tl9947999554%_)
                    (let ((_%e9948099557%_ (gx#syntax-e _%tl9947999554%_)))
                      (let ((_%hd9948199561%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9948099557%_)))
                            (_%tl9948299564%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9948099557%_))))
                        (if (gx#stx-pair? _%tl9948299564%_)
                            (let ((_%e9948399567%_
                                   (gx#syntax-e _%tl9948299564%_)))
                              (let ((_%hd9948499571%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9948399567%_)))
                                    (_%tl9948599574%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9948399567%_))))
                                (if (gx#stx-pair? _%tl9948599574%_)
                                    (let ((_%e9948699577%_
                                           (gx#syntax-e _%tl9948599574%_)))
                                      (let ((_%hd9948799581%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9948699577%_)))
                                            (_%tl9948899584%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9948699577%_))))
                                        (if (gx#stx-pair? _%tl9948899584%_)
                                            (let ((_%e9948999587%_
                                                   (gx#syntax-e
                                                    _%tl9948899584%_)))
                                              (let ((_%hd9949099591%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9948999587%_)))
                                                    (_%tl9949199594%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9948999587%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9949199594%_)
                                                    (let ((_%e9949299597%_
                                                           (gx#syntax-e
                                                            _%tl9949199594%_)))
                                                      (let ((_%hd9949399601%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9949299597%_)))
                    (_%tl9949499604%_
                     (let () (declare (not safe)) (##cdr _%e9949299597%_))))
                (if (gx#stx-null? _%tl9949499604%_)
                    ((lambda (_%L99607%_
                              _%L99609%_
                              _%L99610%_
                              _%L99611%_
                              _%L99612%_
                              _%L99613%_
                              _%L99614%_
                              _%L99615%_
                              _%L99616%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%L99614%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L99612%_ '()))
                         (cons _%L99615%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%L99616%_ '()))
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
                                                       (cons _%L99616%_
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
                                                               (cons _%L99616%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%L99612%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%L99616%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%L99611%_
                                                     (cons _%L99610%_ '()))
                                               '()))))
                       (cons (cons _%L99607%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%L99616%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%L99612%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%L99616%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%L99611%_
                                                           (cons _%L99610%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%L99609%_ '()) '()))))
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
                     (cons (cons (cons _%L99613%_
                                       (cons _%L99612%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%L99616%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%L99612%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%L99616%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%L99611%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%L99616%_
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
                     _%hd9949399601%_
                     _%hd9949099591%_
                     _%hd9948799581%_
                     _%hd9948499571%_
                     _%hd9948199561%_
                     _%hd9947899551%_
                     _%hd9947599541%_
                     _%hd9947299531%_
                     _%hd9946999521%_)
                    (_%g9945499500%_ _%g9945599504%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9945499500%_
                                                     _%g9945599504%_))))
                                            (_%g9945499500%_
                                             _%g9945599504%_))))
                                    (_%g9945499500%_ _%g9945599504%_))))
                            (_%g9945499500%_ _%g9945599504%_))))
                    (_%g9945499500%_ _%g9945599504%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9945499500%_
                                                     _%g9945599504%_))))
                                            (_%g9945499500%_
                                             _%g9945599504%_))))
                                    (_%g9945499500%_ _%g9945599504%_))))
                            (_%g9945499500%_ _%g9945599504%_))))
                    (_%g9945499500%_ _%g9945599504%_)))))
        (_%g9945399653%_ _%$stx99450%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx99657%_)
      (let* ((_%g9966199695%_
              (lambda (_%g9966299691%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9966299691%_)))
             (_%g9966099806%_
              (lambda (_%g9966299699%_)
                (if (gx#stx-pair? _%g9966299699%_)
                    (let ((_%e9966999702%_ (gx#syntax-e _%g9966299699%_)))
                      (let ((_%hd9967099706%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9966999702%_)))
                            (_%tl9967199709%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9966999702%_))))
                        (if (gx#stx-pair? _%tl9967199709%_)
                            (let ((_%e9967299712%_
                                   (gx#syntax-e _%tl9967199709%_)))
                              (let ((_%hd9967399716%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9967299712%_)))
                                    (_%tl9967499719%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9967299712%_))))
                                (if (gx#stx-pair? _%tl9967499719%_)
                                    (let ((_%e9967599722%_
                                           (gx#syntax-e _%tl9967499719%_)))
                                      (let ((_%hd9967699726%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9967599722%_)))
                                            (_%tl9967799729%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9967599722%_))))
                                        (if (gx#stx-pair? _%tl9967799729%_)
                                            (let ((_%e9967899732%_
                                                   (gx#syntax-e
                                                    _%tl9967799729%_)))
                                              (let ((_%hd9967999736%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9967899732%_)))
                                                    (_%tl9968099739%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9967899732%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9968099739%_)
                                                    (let ((_%e9968199742%_
                                                           (gx#syntax-e
                                                            _%tl9968099739%_)))
                                                      (let ((_%hd9968299746%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9968199742%_)))
                    (_%tl9968399749%_
                     (let () (declare (not safe)) (##cdr _%e9968199742%_))))
                (if (gx#stx-pair? _%tl9968399749%_)
                    (let ((_%e9968499752%_ (gx#syntax-e _%tl9968399749%_)))
                      (let ((_%hd9968599756%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9968499752%_)))
                            (_%tl9968699759%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9968499752%_))))
                        (if (gx#stx-pair? _%tl9968699759%_)
                            (let ((_%e9968799762%_
                                   (gx#syntax-e _%tl9968699759%_)))
                              (let ((_%hd9968899766%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9968799762%_)))
                                    (_%tl9968999769%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9968799762%_))))
                                (if (gx#stx-null? _%tl9968999769%_)
                                    ((lambda (_%L99772%_
                                              _%L99774%_
                                              _%L99775%_
                                              _%L99776%_
                                              _%L99777%_
                                              _%L99778%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L99776%_
                                               (cons _%L99774%_ '()))
                                         (cons _%L99777%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L99778%_ '()))
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
                               (cons _%L99778%_
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
                                     (cons (cons (cons _%L99775%_
                                                       (cons _%L99774%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L99778%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L99778%_
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
                     (cons (cons _%L99772%_ '()) '()))))
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
                                     _%hd9968899766%_
                                     _%hd9968599756%_
                                     _%hd9968299746%_
                                     _%hd9967999736%_
                                     _%hd9967699726%_
                                     _%hd9967399716%_)
                                    (_%g9966199695%_ _%g9966299699%_))))
                            (_%g9966199695%_ _%g9966299699%_))))
                    (_%g9966199695%_ _%g9966299699%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9966199695%_
                                                     _%g9966299699%_))))
                                            (_%g9966199695%_
                                             _%g9966299699%_))))
                                    (_%g9966199695%_ _%g9966299699%_))))
                            (_%g9966199695%_ _%g9966299699%_))))
                    (_%g9966199695%_ _%g9966299699%_)))))
        (_%g9966099806%_ _%$stx99657%_)))))

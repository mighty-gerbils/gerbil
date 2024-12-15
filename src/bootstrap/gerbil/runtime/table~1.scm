(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_%$stx92220%_)
      (let* ((_%g9222492238%_
              (lambda (_%g9222592234%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9222592234%_)))
             (_%g9222392280%_
              (lambda (_%g9222592242%_)
                (if (gx#stx-pair? _%g9222592242%_)
                    (let ((_%e9222792245%_ (gx#syntax-e _%g9222592242%_)))
                      (let ((_%hd9222892249%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9222792245%_)))
                            (_%tl9222992252%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9222792245%_))))
                        (if (gx#stx-pair? _%tl9222992252%_)
                            (let ((_%e9223092255%_
                                   (gx#syntax-e _%tl9222992252%_)))
                              (let ((_%hd9223192259%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9223092255%_)))
                                    (_%tl9223292262%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9223092255%_))))
                                (if (gx#stx-null? _%tl9223292262%_)
                                    ((lambda (_%L92265%_)
                                       (cons (gx#datum->syntax '#f 'macro-slot)
                                             (cons '1 (cons _%L92265%_ '()))))
                                     _%hd9223192259%_)
                                    (_%g9222492238%_ _%g9222592242%_))))
                            (_%g9222492238%_ _%g9222592242%_))))
                    (_%g9222492238%_ _%g9222592242%_)))))
        (_%g9222392280%_ _%$stx92220%_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_%$stx92284%_)
      (let* ((_%g9228892334%_
              (lambda (_%g9228992330%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9228992330%_)))
             (_%g9228792487%_
              (lambda (_%g9228992338%_)
                (if (gx#stx-pair? _%g9228992338%_)
                    (let ((_%e9229992341%_ (gx#syntax-e _%g9228992338%_)))
                      (let ((_%hd9230092345%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9229992341%_)))
                            (_%tl9230192348%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9229992341%_))))
                        (if (gx#stx-pair? _%tl9230192348%_)
                            (let ((_%e9230292351%_
                                   (gx#syntax-e _%tl9230192348%_)))
                              (let ((_%hd9230392355%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9230292351%_)))
                                    (_%tl9230492358%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9230292351%_))))
                                (if (gx#stx-pair? _%tl9230492358%_)
                                    (let ((_%e9230592361%_
                                           (gx#syntax-e _%tl9230492358%_)))
                                      (let ((_%hd9230692365%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9230592361%_)))
                                            (_%tl9230792368%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9230592361%_))))
                                        (if (gx#stx-pair? _%tl9230792368%_)
                                            (let ((_%e9230892371%_
                                                   (gx#syntax-e
                                                    _%tl9230792368%_)))
                                              (let ((_%hd9230992375%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9230892371%_)))
                                                    (_%tl9231092378%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9230892371%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9231092378%_)
                                                    (let ((_%e9231192381%_
                                                           (gx#syntax-e
                                                            _%tl9231092378%_)))
                                                      (let ((_%hd9231292385%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9231192381%_)))
                    (_%tl9231392388%_
                     (let () (declare (not safe)) (##cdr _%e9231192381%_))))
                (if (gx#stx-pair? _%tl9231392388%_)
                    (let ((_%e9231492391%_ (gx#syntax-e _%tl9231392388%_)))
                      (let ((_%hd9231592395%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9231492391%_)))
                            (_%tl9231692398%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9231492391%_))))
                        (if (gx#stx-pair? _%tl9231692398%_)
                            (let ((_%e9231792401%_
                                   (gx#syntax-e _%tl9231692398%_)))
                              (let ((_%hd9231892405%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9231792401%_)))
                                    (_%tl9231992408%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9231792401%_))))
                                (if (gx#stx-pair? _%tl9231992408%_)
                                    (let ((_%e9232092411%_
                                           (gx#syntax-e _%tl9231992408%_)))
                                      (let ((_%hd9232192415%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9232092411%_)))
                                            (_%tl9232292418%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9232092411%_))))
                                        (if (gx#stx-pair? _%tl9232292418%_)
                                            (let ((_%e9232392421%_
                                                   (gx#syntax-e
                                                    _%tl9232292418%_)))
                                              (let ((_%hd9232492425%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9232392421%_)))
                                                    (_%tl9232592428%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9232392421%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9232592428%_)
                                                    (let ((_%e9232692431%_
                                                           (gx#syntax-e
                                                            _%tl9232592428%_)))
                                                      (let ((_%hd9232792435%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9232692431%_)))
                    (_%tl9232892438%_
                     (let () (declare (not safe)) (##cdr _%e9232692431%_))))
                (if (gx#stx-null? _%tl9232892438%_)
                    ((lambda (_%L92441%_
                              _%L92443%_
                              _%L92444%_
                              _%L92445%_
                              _%L92446%_
                              _%L92447%_
                              _%L92448%_
                              _%L92449%_
                              _%L92450%_)
                       (cons (gx#datum->syntax '#f 'begin)
                             (cons (cons (gx#datum->syntax '#f 'def)
                                         (cons (cons _%L92450%_
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
                         (cons _%L92443%_
                               (cons _%L92441%_
                                     (cons (gx#datum->syntax '#f 'seed)
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   (cons (cons (gx#datum->syntax '#f 'def)
                                               (cons (cons _%L92449%_
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
                                                       (cons _%L92443%_
                                                             (cons _%L92441%_
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
                                                     (cons (cons _%L92448%_
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
                         (cons (cons _%L92447%_
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
                                                           (cons (cons _%L92447%_
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
                           (cons _%L92443%_
                                 (cons _%L92441%_
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
                         (cons (cons _%L92446%_
                                     (cons (gx#datum->syntax '#f 'tab)
                                           (cons (gx#datum->syntax '#f 'key)
                                                 (cons _%L92446%_
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
                                     (cons (cons _%L92445%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'tab)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'key)
                                                             (cons _%L92446%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                   (cons (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _%L92445%_
                                           (cons (gx#datum->syntax '#f 'tab)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'key)
                                                       (cons _%L92446%_
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
                                       (cons _%L92443%_
                                             (cons _%L92441%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'key)
                                                         (cons _%L92446%_
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
                                     (cons (cons _%L92444%_
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
                                             (cons _%L92443%_
                                                   (cons _%L92441%_
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
                     _%hd9232792435%_
                     _%hd9232492425%_
                     _%hd9232192415%_
                     _%hd9231892405%_
                     _%hd9231592395%_
                     _%hd9231292385%_
                     _%hd9230992375%_
                     _%hd9230692365%_
                     _%hd9230392355%_)
                    (_%g9228892334%_ _%g9228992338%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9228892334%_
                                                     _%g9228992338%_))))
                                            (_%g9228892334%_
                                             _%g9228992338%_))))
                                    (_%g9228892334%_ _%g9228992338%_))))
                            (_%g9228892334%_ _%g9228992338%_))))
                    (_%g9228892334%_ _%g9228992338%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9228892334%_
                                                     _%g9228992338%_))))
                                            (_%g9228892334%_
                                             _%g9228992338%_))))
                                    (_%g9228892334%_ _%g9228992338%_))))
                            (_%g9228892334%_ _%g9228992338%_))))
                    (_%g9228892334%_ _%g9228992338%_)))))
        (_%g9228792487%_ _%$stx92284%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx92491%_)
      (let* ((_%g9249592517%_
              (lambda (_%g9249692513%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9249692513%_)))
             (_%g9249492586%_
              (lambda (_%g9249692521%_)
                (if (gx#stx-pair? _%g9249692521%_)
                    (let ((_%e9250092524%_ (gx#syntax-e _%g9249692521%_)))
                      (let ((_%hd9250192528%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9250092524%_)))
                            (_%tl9250292531%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9250092524%_))))
                        (if (gx#stx-pair? _%tl9250292531%_)
                            (let ((_%e9250392534%_
                                   (gx#syntax-e _%tl9250292531%_)))
                              (let ((_%hd9250492538%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9250392534%_)))
                                    (_%tl9250592541%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9250392534%_))))
                                (if (gx#stx-pair? _%tl9250592541%_)
                                    (let ((_%e9250692544%_
                                           (gx#syntax-e _%tl9250592541%_)))
                                      (let ((_%hd9250792548%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9250692544%_)))
                                            (_%tl9250892551%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9250692544%_))))
                                        (if (gx#stx-pair? _%tl9250892551%_)
                                            (let ((_%e9250992554%_
                                                   (gx#syntax-e
                                                    _%tl9250892551%_)))
                                              (let ((_%hd9251092558%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9250992554%_)))
                                                    (_%tl9251192561%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9250992554%_))))
                                                (if (gx#stx-null?
                                                     _%tl9251192561%_)
                                                    ((lambda (_%L92564%_
                                                              _%L92566%_
                                                              _%L92567%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%L92567%_
                                                   (cons _%L92566%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%L92566%_ (cons _%L92566%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%L92564%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd9251092558%_
                                                     _%hd9250792548%_
                                                     _%hd9250492538%_)
                                                    (_%g9249592517%_
                                                     _%g9249692521%_))))
                                            (_%g9249592517%_
                                             _%g9249692521%_))))
                                    (_%g9249592517%_ _%g9249692521%_))))
                            (_%g9249592517%_ _%g9249692521%_))))
                    (_%g9249592517%_ _%g9249692521%_)))))
        (_%g9249492586%_ _%$stx92491%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx92590%_)
      (let* ((_%g9259492628%_
              (lambda (_%g9259592624%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9259592624%_)))
             (_%g9259392739%_
              (lambda (_%g9259592632%_)
                (if (gx#stx-pair? _%g9259592632%_)
                    (let ((_%e9260292635%_ (gx#syntax-e _%g9259592632%_)))
                      (let ((_%hd9260392639%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9260292635%_)))
                            (_%tl9260492642%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9260292635%_))))
                        (if (gx#stx-pair? _%tl9260492642%_)
                            (let ((_%e9260592645%_
                                   (gx#syntax-e _%tl9260492642%_)))
                              (let ((_%hd9260692649%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9260592645%_)))
                                    (_%tl9260792652%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9260592645%_))))
                                (if (gx#stx-pair? _%tl9260792652%_)
                                    (let ((_%e9260892655%_
                                           (gx#syntax-e _%tl9260792652%_)))
                                      (let ((_%hd9260992659%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9260892655%_)))
                                            (_%tl9261092662%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9260892655%_))))
                                        (if (gx#stx-pair? _%tl9261092662%_)
                                            (let ((_%e9261192665%_
                                                   (gx#syntax-e
                                                    _%tl9261092662%_)))
                                              (let ((_%hd9261292669%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9261192665%_)))
                                                    (_%tl9261392672%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9261192665%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9261392672%_)
                                                    (let ((_%e9261492675%_
                                                           (gx#syntax-e
                                                            _%tl9261392672%_)))
                                                      (let ((_%hd9261592679%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9261492675%_)))
                    (_%tl9261692682%_
                     (let () (declare (not safe)) (##cdr _%e9261492675%_))))
                (if (gx#stx-pair? _%tl9261692682%_)
                    (let ((_%e9261792685%_ (gx#syntax-e _%tl9261692682%_)))
                      (let ((_%hd9261892689%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9261792685%_)))
                            (_%tl9261992692%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9261792685%_))))
                        (if (gx#stx-pair? _%tl9261992692%_)
                            (let ((_%e9262092695%_
                                   (gx#syntax-e _%tl9261992692%_)))
                              (let ((_%hd9262192699%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9262092695%_)))
                                    (_%tl9262292702%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9262092695%_))))
                                (if (gx#stx-null? _%tl9262292702%_)
                                    ((lambda (_%L92705%_
                                              _%L92707%_
                                              _%L92708%_
                                              _%L92709%_
                                              _%L92710%_
                                              _%L92711%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L92709%_
                                               (cons _%L92707%_ '()))
                                         (cons _%L92710%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L92711%_ '()))
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
                               (cons _%L92711%_
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
                                     (cons _%L92705%_ '()))
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
                                     (cons (cons (cons _%L92708%_
                                                       (cons _%L92707%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%L92711%_
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
                                     _%hd9262192699%_
                                     _%hd9261892689%_
                                     _%hd9261592679%_
                                     _%hd9261292669%_
                                     _%hd9260992659%_
                                     _%hd9260692649%_)
                                    (_%g9259492628%_ _%g9259592632%_))))
                            (_%g9259492628%_ _%g9259592632%_))))
                    (_%g9259492628%_ _%g9259592632%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9259492628%_
                                                     _%g9259592632%_))))
                                            (_%g9259492628%_
                                             _%g9259592632%_))))
                                    (_%g9259492628%_ _%g9259592632%_))))
                            (_%g9259492628%_ _%g9259592632%_))))
                    (_%g9259492628%_ _%g9259592632%_)))))
        (_%g9259392739%_ _%$stx92590%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx92743%_)
      (let* ((_%g9274792789%_
              (lambda (_%g9274892785%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9274892785%_)))
             (_%g9274692928%_
              (lambda (_%g9274892793%_)
                (if (gx#stx-pair? _%g9274892793%_)
                    (let ((_%e9275792796%_ (gx#syntax-e _%g9274892793%_)))
                      (let ((_%hd9275892800%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9275792796%_)))
                            (_%tl9275992803%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9275792796%_))))
                        (if (gx#stx-pair? _%tl9275992803%_)
                            (let ((_%e9276092806%_
                                   (gx#syntax-e _%tl9275992803%_)))
                              (let ((_%hd9276192810%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9276092806%_)))
                                    (_%tl9276292813%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9276092806%_))))
                                (if (gx#stx-pair? _%tl9276292813%_)
                                    (let ((_%e9276392816%_
                                           (gx#syntax-e _%tl9276292813%_)))
                                      (let ((_%hd9276492820%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9276392816%_)))
                                            (_%tl9276592823%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9276392816%_))))
                                        (if (gx#stx-pair? _%tl9276592823%_)
                                            (let ((_%e9276692826%_
                                                   (gx#syntax-e
                                                    _%tl9276592823%_)))
                                              (let ((_%hd9276792830%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9276692826%_)))
                                                    (_%tl9276892833%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9276692826%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9276892833%_)
                                                    (let ((_%e9276992836%_
                                                           (gx#syntax-e
                                                            _%tl9276892833%_)))
                                                      (let ((_%hd9277092840%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9276992836%_)))
                    (_%tl9277192843%_
                     (let () (declare (not safe)) (##cdr _%e9276992836%_))))
                (if (gx#stx-pair? _%tl9277192843%_)
                    (let ((_%e9277292846%_ (gx#syntax-e _%tl9277192843%_)))
                      (let ((_%hd9277392850%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9277292846%_)))
                            (_%tl9277492853%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9277292846%_))))
                        (if (gx#stx-pair? _%tl9277492853%_)
                            (let ((_%e9277592856%_
                                   (gx#syntax-e _%tl9277492853%_)))
                              (let ((_%hd9277692860%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9277592856%_)))
                                    (_%tl9277792863%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9277592856%_))))
                                (if (gx#stx-pair? _%tl9277792863%_)
                                    (let ((_%e9277892866%_
                                           (gx#syntax-e _%tl9277792863%_)))
                                      (let ((_%hd9277992870%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9277892866%_)))
                                            (_%tl9278092873%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9277892866%_))))
                                        (if (gx#stx-pair? _%tl9278092873%_)
                                            (let ((_%e9278192876%_
                                                   (gx#syntax-e
                                                    _%tl9278092873%_)))
                                              (let ((_%hd9278292880%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9278192876%_)))
                                                    (_%tl9278392883%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9278192876%_))))
                                                (if (gx#stx-null?
                                                     _%tl9278392883%_)
                                                    ((lambda (_%L92886%_
                                                              _%L92888%_
                                                              _%L92889%_
                                                              _%L92890%_
                                                              _%L92891%_
                                                              _%L92892%_
                                                              _%L92893%_
                                                              _%L92894%_)
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
                                                   (cons (cons _%L92892%_
                                                               (cons _%L92890%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%L92893%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%L92894%_ '()))
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
                                               (cons _%L92894%_
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
                                                       (cons _%L92894%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%L92890%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L92894%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%L92889%_ '()))))
               (cons (cons _%L92886%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L92894%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%L92890%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L92894%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%L92889%_ '()))))
                     (cons (cons _%L92888%_ '()) '()))))
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
                                                     (cons (cons (cons _%L92891%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L92890%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%L92894%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%L92890%_ '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%L92894%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%L92889%_ '()))))
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
                                                     _%hd9278292880%_
                                                     _%hd9277992870%_
                                                     _%hd9277692860%_
                                                     _%hd9277392850%_
                                                     _%hd9277092840%_
                                                     _%hd9276792830%_
                                                     _%hd9276492820%_
                                                     _%hd9276192810%_)
                                                    (_%g9274792789%_
                                                     _%g9274892793%_))))
                                            (_%g9274792789%_
                                             _%g9274892793%_))))
                                    (_%g9274792789%_ _%g9274892793%_))))
                            (_%g9274792789%_ _%g9274892793%_))))
                    (_%g9274792789%_ _%g9274892793%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9274792789%_
                                                     _%g9274892793%_))))
                                            (_%g9274792789%_
                                             _%g9274892793%_))))
                                    (_%g9274792789%_ _%g9274892793%_))))
                            (_%g9274792789%_ _%g9274892793%_))))
                    (_%g9274792789%_ _%g9274892793%_)))))
        (_%g9274692928%_ _%$stx92743%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx92932%_)
      (let* ((_%g9293692982%_
              (lambda (_%g9293792978%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9293792978%_)))
             (_%g9293593135%_
              (lambda (_%g9293792986%_)
                (if (gx#stx-pair? _%g9293792986%_)
                    (let ((_%e9294792989%_ (gx#syntax-e _%g9293792986%_)))
                      (let ((_%hd9294892993%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9294792989%_)))
                            (_%tl9294992996%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9294792989%_))))
                        (if (gx#stx-pair? _%tl9294992996%_)
                            (let ((_%e9295092999%_
                                   (gx#syntax-e _%tl9294992996%_)))
                              (let ((_%hd9295193003%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9295092999%_)))
                                    (_%tl9295293006%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9295092999%_))))
                                (if (gx#stx-pair? _%tl9295293006%_)
                                    (let ((_%e9295393009%_
                                           (gx#syntax-e _%tl9295293006%_)))
                                      (let ((_%hd9295493013%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9295393009%_)))
                                            (_%tl9295593016%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9295393009%_))))
                                        (if (gx#stx-pair? _%tl9295593016%_)
                                            (let ((_%e9295693019%_
                                                   (gx#syntax-e
                                                    _%tl9295593016%_)))
                                              (let ((_%hd9295793023%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9295693019%_)))
                                                    (_%tl9295893026%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9295693019%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9295893026%_)
                                                    (let ((_%e9295993029%_
                                                           (gx#syntax-e
                                                            _%tl9295893026%_)))
                                                      (let ((_%hd9296093033%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9295993029%_)))
                    (_%tl9296193036%_
                     (let () (declare (not safe)) (##cdr _%e9295993029%_))))
                (if (gx#stx-pair? _%tl9296193036%_)
                    (let ((_%e9296293039%_ (gx#syntax-e _%tl9296193036%_)))
                      (let ((_%hd9296393043%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9296293039%_)))
                            (_%tl9296493046%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9296293039%_))))
                        (if (gx#stx-pair? _%tl9296493046%_)
                            (let ((_%e9296593049%_
                                   (gx#syntax-e _%tl9296493046%_)))
                              (let ((_%hd9296693053%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9296593049%_)))
                                    (_%tl9296793056%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9296593049%_))))
                                (if (gx#stx-pair? _%tl9296793056%_)
                                    (let ((_%e9296893059%_
                                           (gx#syntax-e _%tl9296793056%_)))
                                      (let ((_%hd9296993063%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9296893059%_)))
                                            (_%tl9297093066%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9296893059%_))))
                                        (if (gx#stx-pair? _%tl9297093066%_)
                                            (let ((_%e9297193069%_
                                                   (gx#syntax-e
                                                    _%tl9297093066%_)))
                                              (let ((_%hd9297293073%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9297193069%_)))
                                                    (_%tl9297393076%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9297193069%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9297393076%_)
                                                    (let ((_%e9297493079%_
                                                           (gx#syntax-e
                                                            _%tl9297393076%_)))
                                                      (let ((_%hd9297593083%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9297493079%_)))
                    (_%tl9297693086%_
                     (let () (declare (not safe)) (##cdr _%e9297493079%_))))
                (if (gx#stx-null? _%tl9297693086%_)
                    ((lambda (_%L93089%_
                              _%L93091%_
                              _%L93092%_
                              _%L93093%_
                              _%L93094%_
                              _%L93095%_
                              _%L93096%_
                              _%L93097%_
                              _%L93098%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%L93096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L93094%_ '()))
                         (cons _%L93097%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%L93098%_ '()))
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
                                                       (cons _%L93098%_
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
                                                               (cons _%L93098%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%L93094%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%L93098%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%L93093%_
                                                     (cons _%L93092%_ '()))
                                               '()))))
                       (cons (cons _%L93089%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%L93098%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%L93094%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%L93098%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%L93093%_
                                                           (cons _%L93092%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%L93091%_ '()) '()))))
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
                     (cons (cons (cons _%L93095%_
                                       (cons _%L93094%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%L93098%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%L93094%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%L93098%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%L93093%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%L93098%_
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
                     _%hd9297593083%_
                     _%hd9297293073%_
                     _%hd9296993063%_
                     _%hd9296693053%_
                     _%hd9296393043%_
                     _%hd9296093033%_
                     _%hd9295793023%_
                     _%hd9295493013%_
                     _%hd9295193003%_)
                    (_%g9293692982%_ _%g9293792986%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9293692982%_
                                                     _%g9293792986%_))))
                                            (_%g9293692982%_
                                             _%g9293792986%_))))
                                    (_%g9293692982%_ _%g9293792986%_))))
                            (_%g9293692982%_ _%g9293792986%_))))
                    (_%g9293692982%_ _%g9293792986%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9293692982%_
                                                     _%g9293792986%_))))
                                            (_%g9293692982%_
                                             _%g9293792986%_))))
                                    (_%g9293692982%_ _%g9293792986%_))))
                            (_%g9293692982%_ _%g9293792986%_))))
                    (_%g9293692982%_ _%g9293792986%_)))))
        (_%g9293593135%_ _%$stx92932%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx93139%_)
      (let* ((_%g9314393177%_
              (lambda (_%g9314493173%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9314493173%_)))
             (_%g9314293288%_
              (lambda (_%g9314493181%_)
                (if (gx#stx-pair? _%g9314493181%_)
                    (let ((_%e9315193184%_ (gx#syntax-e _%g9314493181%_)))
                      (let ((_%hd9315293188%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9315193184%_)))
                            (_%tl9315393191%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9315193184%_))))
                        (if (gx#stx-pair? _%tl9315393191%_)
                            (let ((_%e9315493194%_
                                   (gx#syntax-e _%tl9315393191%_)))
                              (let ((_%hd9315593198%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9315493194%_)))
                                    (_%tl9315693201%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9315493194%_))))
                                (if (gx#stx-pair? _%tl9315693201%_)
                                    (let ((_%e9315793204%_
                                           (gx#syntax-e _%tl9315693201%_)))
                                      (let ((_%hd9315893208%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9315793204%_)))
                                            (_%tl9315993211%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9315793204%_))))
                                        (if (gx#stx-pair? _%tl9315993211%_)
                                            (let ((_%e9316093214%_
                                                   (gx#syntax-e
                                                    _%tl9315993211%_)))
                                              (let ((_%hd9316193218%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9316093214%_)))
                                                    (_%tl9316293221%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9316093214%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9316293221%_)
                                                    (let ((_%e9316393224%_
                                                           (gx#syntax-e
                                                            _%tl9316293221%_)))
                                                      (let ((_%hd9316493228%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9316393224%_)))
                    (_%tl9316593231%_
                     (let () (declare (not safe)) (##cdr _%e9316393224%_))))
                (if (gx#stx-pair? _%tl9316593231%_)
                    (let ((_%e9316693234%_ (gx#syntax-e _%tl9316593231%_)))
                      (let ((_%hd9316793238%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9316693234%_)))
                            (_%tl9316893241%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9316693234%_))))
                        (if (gx#stx-pair? _%tl9316893241%_)
                            (let ((_%e9316993244%_
                                   (gx#syntax-e _%tl9316893241%_)))
                              (let ((_%hd9317093248%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9316993244%_)))
                                    (_%tl9317193251%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9316993244%_))))
                                (if (gx#stx-null? _%tl9317193251%_)
                                    ((lambda (_%L93254%_
                                              _%L93256%_
                                              _%L93257%_
                                              _%L93258%_
                                              _%L93259%_
                                              _%L93260%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L93258%_
                                               (cons _%L93256%_ '()))
                                         (cons _%L93259%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L93260%_ '()))
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
                               (cons _%L93260%_
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
                                     (cons (cons (cons _%L93257%_
                                                       (cons _%L93256%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L93260%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L93260%_
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
                     (cons (cons _%L93254%_ '()) '()))))
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
                                     _%hd9317093248%_
                                     _%hd9316793238%_
                                     _%hd9316493228%_
                                     _%hd9316193218%_
                                     _%hd9315893208%_
                                     _%hd9315593198%_)
                                    (_%g9314393177%_ _%g9314493181%_))))
                            (_%g9314393177%_ _%g9314493181%_))))
                    (_%g9314393177%_ _%g9314493181%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9314393177%_
                                                     _%g9314493181%_))))
                                            (_%g9314393177%_
                                             _%g9314493181%_))))
                                    (_%g9314393177%_ _%g9314493181%_))))
                            (_%g9314393177%_ _%g9314493181%_))))
                    (_%g9314393177%_ _%g9314493181%_)))))
        (_%g9314293288%_ _%$stx93139%_)))))

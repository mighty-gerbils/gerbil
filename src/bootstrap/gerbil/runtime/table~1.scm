(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_%$stx88409%_)
      (let* ((_%g8841388427%_
              (lambda (_%g8841488423%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8841488423%_)))
             (_%g8841288469%_
              (lambda (_%g8841488431%_)
                (if (gx#stx-pair? _%g8841488431%_)
                    (let ((_%e8841688434%_ (gx#syntax-e _%g8841488431%_)))
                      (let ((_%hd8841788438%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8841688434%_)))
                            (_%tl8841888441%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8841688434%_))))
                        (if (gx#stx-pair? _%tl8841888441%_)
                            (let ((_%e8841988444%_
                                   (gx#syntax-e _%tl8841888441%_)))
                              (let ((_%hd8842088448%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8841988444%_)))
                                    (_%tl8842188451%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8841988444%_))))
                                (if (gx#stx-null? _%tl8842188451%_)
                                    ((lambda (_%L88454%_)
                                       (cons (gx#datum->syntax '#f 'macro-slot)
                                             (cons '1 (cons _%L88454%_ '()))))
                                     _%hd8842088448%_)
                                    (_%g8841388427%_ _%g8841488431%_))))
                            (_%g8841388427%_ _%g8841488431%_))))
                    (_%g8841388427%_ _%g8841488431%_)))))
        (_%g8841288469%_ _%$stx88409%_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_%$stx88473%_)
      (let* ((_%g8847788523%_
              (lambda (_%g8847888519%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8847888519%_)))
             (_%g8847688676%_
              (lambda (_%g8847888527%_)
                (if (gx#stx-pair? _%g8847888527%_)
                    (let ((_%e8848888530%_ (gx#syntax-e _%g8847888527%_)))
                      (let ((_%hd8848988534%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8848888530%_)))
                            (_%tl8849088537%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8848888530%_))))
                        (if (gx#stx-pair? _%tl8849088537%_)
                            (let ((_%e8849188540%_
                                   (gx#syntax-e _%tl8849088537%_)))
                              (let ((_%hd8849288544%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8849188540%_)))
                                    (_%tl8849388547%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8849188540%_))))
                                (if (gx#stx-pair? _%tl8849388547%_)
                                    (let ((_%e8849488550%_
                                           (gx#syntax-e _%tl8849388547%_)))
                                      (let ((_%hd8849588554%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8849488550%_)))
                                            (_%tl8849688557%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8849488550%_))))
                                        (if (gx#stx-pair? _%tl8849688557%_)
                                            (let ((_%e8849788560%_
                                                   (gx#syntax-e
                                                    _%tl8849688557%_)))
                                              (let ((_%hd8849888564%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8849788560%_)))
                                                    (_%tl8849988567%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8849788560%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8849988567%_)
                                                    (let ((_%e8850088570%_
                                                           (gx#syntax-e
                                                            _%tl8849988567%_)))
                                                      (let ((_%hd8850188574%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8850088570%_)))
                    (_%tl8850288577%_
                     (let () (declare (not safe)) (##cdr _%e8850088570%_))))
                (if (gx#stx-pair? _%tl8850288577%_)
                    (let ((_%e8850388580%_ (gx#syntax-e _%tl8850288577%_)))
                      (let ((_%hd8850488584%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8850388580%_)))
                            (_%tl8850588587%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8850388580%_))))
                        (if (gx#stx-pair? _%tl8850588587%_)
                            (let ((_%e8850688590%_
                                   (gx#syntax-e _%tl8850588587%_)))
                              (let ((_%hd8850788594%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8850688590%_)))
                                    (_%tl8850888597%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8850688590%_))))
                                (if (gx#stx-pair? _%tl8850888597%_)
                                    (let ((_%e8850988600%_
                                           (gx#syntax-e _%tl8850888597%_)))
                                      (let ((_%hd8851088604%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8850988600%_)))
                                            (_%tl8851188607%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8850988600%_))))
                                        (if (gx#stx-pair? _%tl8851188607%_)
                                            (let ((_%e8851288610%_
                                                   (gx#syntax-e
                                                    _%tl8851188607%_)))
                                              (let ((_%hd8851388614%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8851288610%_)))
                                                    (_%tl8851488617%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8851288610%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8851488617%_)
                                                    (let ((_%e8851588620%_
                                                           (gx#syntax-e
                                                            _%tl8851488617%_)))
                                                      (let ((_%hd8851688624%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8851588620%_)))
                    (_%tl8851788627%_
                     (let () (declare (not safe)) (##cdr _%e8851588620%_))))
                (if (gx#stx-null? _%tl8851788627%_)
                    ((lambda (_%L88630%_
                              _%L88632%_
                              _%L88633%_
                              _%L88634%_
                              _%L88635%_
                              _%L88636%_
                              _%L88637%_
                              _%L88638%_
                              _%L88639%_)
                       (cons (gx#datum->syntax '#f 'begin)
                             (cons (cons (gx#datum->syntax '#f 'def)
                                         (cons (cons _%L88639%_
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
                         (cons _%L88632%_
                               (cons _%L88630%_
                                     (cons (gx#datum->syntax '#f 'seed)
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   (cons (cons (gx#datum->syntax '#f 'def)
                                               (cons (cons _%L88638%_
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
                                                       (cons _%L88632%_
                                                             (cons _%L88630%_
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
                                                     (cons (cons _%L88637%_
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
                         (cons (cons _%L88636%_
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
                                                           (cons (cons _%L88636%_
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
                           (cons _%L88632%_
                                 (cons _%L88630%_
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
                         (cons (cons _%L88635%_
                                     (cons (gx#datum->syntax '#f 'tab)
                                           (cons (gx#datum->syntax '#f 'key)
                                                 (cons _%L88635%_
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
                                     (cons (cons _%L88634%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'tab)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'key)
                                                             (cons _%L88635%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                   (cons (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _%L88634%_
                                           (cons (gx#datum->syntax '#f 'tab)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'key)
                                                       (cons _%L88635%_
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
                                       (cons _%L88632%_
                                             (cons _%L88630%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'key)
                                                         (cons _%L88635%_
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
                                     (cons (cons _%L88633%_
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
                                             (cons _%L88632%_
                                                   (cons _%L88630%_
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
                     _%hd8851688624%_
                     _%hd8851388614%_
                     _%hd8851088604%_
                     _%hd8850788594%_
                     _%hd8850488584%_
                     _%hd8850188574%_
                     _%hd8849888564%_
                     _%hd8849588554%_
                     _%hd8849288544%_)
                    (_%g8847788523%_ _%g8847888527%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8847788523%_
                                                     _%g8847888527%_))))
                                            (_%g8847788523%_
                                             _%g8847888527%_))))
                                    (_%g8847788523%_ _%g8847888527%_))))
                            (_%g8847788523%_ _%g8847888527%_))))
                    (_%g8847788523%_ _%g8847888527%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8847788523%_
                                                     _%g8847888527%_))))
                                            (_%g8847788523%_
                                             _%g8847888527%_))))
                                    (_%g8847788523%_ _%g8847888527%_))))
                            (_%g8847788523%_ _%g8847888527%_))))
                    (_%g8847788523%_ _%g8847888527%_)))))
        (_%g8847688676%_ _%$stx88473%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx88680%_)
      (let* ((_%g8868488706%_
              (lambda (_%g8868588702%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8868588702%_)))
             (_%g8868388775%_
              (lambda (_%g8868588710%_)
                (if (gx#stx-pair? _%g8868588710%_)
                    (let ((_%e8868988713%_ (gx#syntax-e _%g8868588710%_)))
                      (let ((_%hd8869088717%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8868988713%_)))
                            (_%tl8869188720%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8868988713%_))))
                        (if (gx#stx-pair? _%tl8869188720%_)
                            (let ((_%e8869288723%_
                                   (gx#syntax-e _%tl8869188720%_)))
                              (let ((_%hd8869388727%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8869288723%_)))
                                    (_%tl8869488730%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8869288723%_))))
                                (if (gx#stx-pair? _%tl8869488730%_)
                                    (let ((_%e8869588733%_
                                           (gx#syntax-e _%tl8869488730%_)))
                                      (let ((_%hd8869688737%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8869588733%_)))
                                            (_%tl8869788740%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8869588733%_))))
                                        (if (gx#stx-pair? _%tl8869788740%_)
                                            (let ((_%e8869888743%_
                                                   (gx#syntax-e
                                                    _%tl8869788740%_)))
                                              (let ((_%hd8869988747%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8869888743%_)))
                                                    (_%tl8870088750%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8869888743%_))))
                                                (if (gx#stx-null?
                                                     _%tl8870088750%_)
                                                    ((lambda (_%L88753%_
                                                              _%L88755%_
                                                              _%L88756%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%L88756%_
                                                   (cons _%L88755%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%L88755%_ (cons _%L88755%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%L88753%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd8869988747%_
                                                     _%hd8869688737%_
                                                     _%hd8869388727%_)
                                                    (_%g8868488706%_
                                                     _%g8868588710%_))))
                                            (_%g8868488706%_
                                             _%g8868588710%_))))
                                    (_%g8868488706%_ _%g8868588710%_))))
                            (_%g8868488706%_ _%g8868588710%_))))
                    (_%g8868488706%_ _%g8868588710%_)))))
        (_%g8868388775%_ _%$stx88680%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx88779%_)
      (let* ((_%g8878388817%_
              (lambda (_%g8878488813%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8878488813%_)))
             (_%g8878288928%_
              (lambda (_%g8878488821%_)
                (if (gx#stx-pair? _%g8878488821%_)
                    (let ((_%e8879188824%_ (gx#syntax-e _%g8878488821%_)))
                      (let ((_%hd8879288828%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8879188824%_)))
                            (_%tl8879388831%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8879188824%_))))
                        (if (gx#stx-pair? _%tl8879388831%_)
                            (let ((_%e8879488834%_
                                   (gx#syntax-e _%tl8879388831%_)))
                              (let ((_%hd8879588838%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8879488834%_)))
                                    (_%tl8879688841%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8879488834%_))))
                                (if (gx#stx-pair? _%tl8879688841%_)
                                    (let ((_%e8879788844%_
                                           (gx#syntax-e _%tl8879688841%_)))
                                      (let ((_%hd8879888848%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8879788844%_)))
                                            (_%tl8879988851%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8879788844%_))))
                                        (if (gx#stx-pair? _%tl8879988851%_)
                                            (let ((_%e8880088854%_
                                                   (gx#syntax-e
                                                    _%tl8879988851%_)))
                                              (let ((_%hd8880188858%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8880088854%_)))
                                                    (_%tl8880288861%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8880088854%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8880288861%_)
                                                    (let ((_%e8880388864%_
                                                           (gx#syntax-e
                                                            _%tl8880288861%_)))
                                                      (let ((_%hd8880488868%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8880388864%_)))
                    (_%tl8880588871%_
                     (let () (declare (not safe)) (##cdr _%e8880388864%_))))
                (if (gx#stx-pair? _%tl8880588871%_)
                    (let ((_%e8880688874%_ (gx#syntax-e _%tl8880588871%_)))
                      (let ((_%hd8880788878%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8880688874%_)))
                            (_%tl8880888881%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8880688874%_))))
                        (if (gx#stx-pair? _%tl8880888881%_)
                            (let ((_%e8880988884%_
                                   (gx#syntax-e _%tl8880888881%_)))
                              (let ((_%hd8881088888%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8880988884%_)))
                                    (_%tl8881188891%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8880988884%_))))
                                (if (gx#stx-null? _%tl8881188891%_)
                                    ((lambda (_%L88894%_
                                              _%L88896%_
                                              _%L88897%_
                                              _%L88898%_
                                              _%L88899%_
                                              _%L88900%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L88898%_
                                               (cons _%L88896%_ '()))
                                         (cons _%L88899%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L88900%_ '()))
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
                               (cons _%L88900%_
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
                                     (cons _%L88894%_ '()))
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
                                     (cons (cons (cons _%L88897%_
                                                       (cons _%L88896%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%L88900%_
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
                                     _%hd8881088888%_
                                     _%hd8880788878%_
                                     _%hd8880488868%_
                                     _%hd8880188858%_
                                     _%hd8879888848%_
                                     _%hd8879588838%_)
                                    (_%g8878388817%_ _%g8878488821%_))))
                            (_%g8878388817%_ _%g8878488821%_))))
                    (_%g8878388817%_ _%g8878488821%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8878388817%_
                                                     _%g8878488821%_))))
                                            (_%g8878388817%_
                                             _%g8878488821%_))))
                                    (_%g8878388817%_ _%g8878488821%_))))
                            (_%g8878388817%_ _%g8878488821%_))))
                    (_%g8878388817%_ _%g8878488821%_)))))
        (_%g8878288928%_ _%$stx88779%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx88932%_)
      (let* ((_%g8893688978%_
              (lambda (_%g8893788974%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8893788974%_)))
             (_%g8893589117%_
              (lambda (_%g8893788982%_)
                (if (gx#stx-pair? _%g8893788982%_)
                    (let ((_%e8894688985%_ (gx#syntax-e _%g8893788982%_)))
                      (let ((_%hd8894788989%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8894688985%_)))
                            (_%tl8894888992%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8894688985%_))))
                        (if (gx#stx-pair? _%tl8894888992%_)
                            (let ((_%e8894988995%_
                                   (gx#syntax-e _%tl8894888992%_)))
                              (let ((_%hd8895088999%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8894988995%_)))
                                    (_%tl8895189002%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8894988995%_))))
                                (if (gx#stx-pair? _%tl8895189002%_)
                                    (let ((_%e8895289005%_
                                           (gx#syntax-e _%tl8895189002%_)))
                                      (let ((_%hd8895389009%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8895289005%_)))
                                            (_%tl8895489012%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8895289005%_))))
                                        (if (gx#stx-pair? _%tl8895489012%_)
                                            (let ((_%e8895589015%_
                                                   (gx#syntax-e
                                                    _%tl8895489012%_)))
                                              (let ((_%hd8895689019%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8895589015%_)))
                                                    (_%tl8895789022%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8895589015%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8895789022%_)
                                                    (let ((_%e8895889025%_
                                                           (gx#syntax-e
                                                            _%tl8895789022%_)))
                                                      (let ((_%hd8895989029%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8895889025%_)))
                    (_%tl8896089032%_
                     (let () (declare (not safe)) (##cdr _%e8895889025%_))))
                (if (gx#stx-pair? _%tl8896089032%_)
                    (let ((_%e8896189035%_ (gx#syntax-e _%tl8896089032%_)))
                      (let ((_%hd8896289039%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8896189035%_)))
                            (_%tl8896389042%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8896189035%_))))
                        (if (gx#stx-pair? _%tl8896389042%_)
                            (let ((_%e8896489045%_
                                   (gx#syntax-e _%tl8896389042%_)))
                              (let ((_%hd8896589049%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8896489045%_)))
                                    (_%tl8896689052%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8896489045%_))))
                                (if (gx#stx-pair? _%tl8896689052%_)
                                    (let ((_%e8896789055%_
                                           (gx#syntax-e _%tl8896689052%_)))
                                      (let ((_%hd8896889059%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8896789055%_)))
                                            (_%tl8896989062%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8896789055%_))))
                                        (if (gx#stx-pair? _%tl8896989062%_)
                                            (let ((_%e8897089065%_
                                                   (gx#syntax-e
                                                    _%tl8896989062%_)))
                                              (let ((_%hd8897189069%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8897089065%_)))
                                                    (_%tl8897289072%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8897089065%_))))
                                                (if (gx#stx-null?
                                                     _%tl8897289072%_)
                                                    ((lambda (_%L89075%_
                                                              _%L89077%_
                                                              _%L89078%_
                                                              _%L89079%_
                                                              _%L89080%_
                                                              _%L89081%_
                                                              _%L89082%_
                                                              _%L89083%_)
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
                                                   (cons (cons _%L89081%_
                                                               (cons _%L89079%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%L89082%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%L89083%_ '()))
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
                                               (cons _%L89083%_
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
                                                       (cons _%L89083%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%L89079%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L89083%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%L89078%_ '()))))
               (cons (cons _%L89075%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L89083%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%L89079%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L89083%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%L89078%_ '()))))
                     (cons (cons _%L89077%_ '()) '()))))
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
                                                     (cons (cons (cons _%L89080%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L89079%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%L89083%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%L89079%_ '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%L89083%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%L89078%_ '()))))
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
                                                     _%hd8897189069%_
                                                     _%hd8896889059%_
                                                     _%hd8896589049%_
                                                     _%hd8896289039%_
                                                     _%hd8895989029%_
                                                     _%hd8895689019%_
                                                     _%hd8895389009%_
                                                     _%hd8895088999%_)
                                                    (_%g8893688978%_
                                                     _%g8893788982%_))))
                                            (_%g8893688978%_
                                             _%g8893788982%_))))
                                    (_%g8893688978%_ _%g8893788982%_))))
                            (_%g8893688978%_ _%g8893788982%_))))
                    (_%g8893688978%_ _%g8893788982%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8893688978%_
                                                     _%g8893788982%_))))
                                            (_%g8893688978%_
                                             _%g8893788982%_))))
                                    (_%g8893688978%_ _%g8893788982%_))))
                            (_%g8893688978%_ _%g8893788982%_))))
                    (_%g8893688978%_ _%g8893788982%_)))))
        (_%g8893589117%_ _%$stx88932%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx89121%_)
      (let* ((_%g8912589171%_
              (lambda (_%g8912689167%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8912689167%_)))
             (_%g8912489324%_
              (lambda (_%g8912689175%_)
                (if (gx#stx-pair? _%g8912689175%_)
                    (let ((_%e8913689178%_ (gx#syntax-e _%g8912689175%_)))
                      (let ((_%hd8913789182%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8913689178%_)))
                            (_%tl8913889185%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8913689178%_))))
                        (if (gx#stx-pair? _%tl8913889185%_)
                            (let ((_%e8913989188%_
                                   (gx#syntax-e _%tl8913889185%_)))
                              (let ((_%hd8914089192%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8913989188%_)))
                                    (_%tl8914189195%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8913989188%_))))
                                (if (gx#stx-pair? _%tl8914189195%_)
                                    (let ((_%e8914289198%_
                                           (gx#syntax-e _%tl8914189195%_)))
                                      (let ((_%hd8914389202%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8914289198%_)))
                                            (_%tl8914489205%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8914289198%_))))
                                        (if (gx#stx-pair? _%tl8914489205%_)
                                            (let ((_%e8914589208%_
                                                   (gx#syntax-e
                                                    _%tl8914489205%_)))
                                              (let ((_%hd8914689212%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8914589208%_)))
                                                    (_%tl8914789215%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8914589208%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8914789215%_)
                                                    (let ((_%e8914889218%_
                                                           (gx#syntax-e
                                                            _%tl8914789215%_)))
                                                      (let ((_%hd8914989222%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8914889218%_)))
                    (_%tl8915089225%_
                     (let () (declare (not safe)) (##cdr _%e8914889218%_))))
                (if (gx#stx-pair? _%tl8915089225%_)
                    (let ((_%e8915189228%_ (gx#syntax-e _%tl8915089225%_)))
                      (let ((_%hd8915289232%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8915189228%_)))
                            (_%tl8915389235%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8915189228%_))))
                        (if (gx#stx-pair? _%tl8915389235%_)
                            (let ((_%e8915489238%_
                                   (gx#syntax-e _%tl8915389235%_)))
                              (let ((_%hd8915589242%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8915489238%_)))
                                    (_%tl8915689245%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8915489238%_))))
                                (if (gx#stx-pair? _%tl8915689245%_)
                                    (let ((_%e8915789248%_
                                           (gx#syntax-e _%tl8915689245%_)))
                                      (let ((_%hd8915889252%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8915789248%_)))
                                            (_%tl8915989255%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8915789248%_))))
                                        (if (gx#stx-pair? _%tl8915989255%_)
                                            (let ((_%e8916089258%_
                                                   (gx#syntax-e
                                                    _%tl8915989255%_)))
                                              (let ((_%hd8916189262%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8916089258%_)))
                                                    (_%tl8916289265%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8916089258%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8916289265%_)
                                                    (let ((_%e8916389268%_
                                                           (gx#syntax-e
                                                            _%tl8916289265%_)))
                                                      (let ((_%hd8916489272%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8916389268%_)))
                    (_%tl8916589275%_
                     (let () (declare (not safe)) (##cdr _%e8916389268%_))))
                (if (gx#stx-null? _%tl8916589275%_)
                    ((lambda (_%L89278%_
                              _%L89280%_
                              _%L89281%_
                              _%L89282%_
                              _%L89283%_
                              _%L89284%_
                              _%L89285%_
                              _%L89286%_
                              _%L89287%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%L89285%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L89283%_ '()))
                         (cons _%L89286%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%L89287%_ '()))
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
                                                       (cons _%L89287%_
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
                                                               (cons _%L89287%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%L89283%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%L89287%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%L89282%_
                                                     (cons _%L89281%_ '()))
                                               '()))))
                       (cons (cons _%L89278%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%L89287%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%L89283%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%L89287%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%L89282%_
                                                           (cons _%L89281%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%L89280%_ '()) '()))))
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
                     (cons (cons (cons _%L89284%_
                                       (cons _%L89283%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%L89287%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%L89283%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%L89287%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%L89282%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%L89287%_
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
                     _%hd8916489272%_
                     _%hd8916189262%_
                     _%hd8915889252%_
                     _%hd8915589242%_
                     _%hd8915289232%_
                     _%hd8914989222%_
                     _%hd8914689212%_
                     _%hd8914389202%_
                     _%hd8914089192%_)
                    (_%g8912589171%_ _%g8912689175%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8912589171%_
                                                     _%g8912689175%_))))
                                            (_%g8912589171%_
                                             _%g8912689175%_))))
                                    (_%g8912589171%_ _%g8912689175%_))))
                            (_%g8912589171%_ _%g8912689175%_))))
                    (_%g8912589171%_ _%g8912689175%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8912589171%_
                                                     _%g8912689175%_))))
                                            (_%g8912589171%_
                                             _%g8912689175%_))))
                                    (_%g8912589171%_ _%g8912689175%_))))
                            (_%g8912589171%_ _%g8912689175%_))))
                    (_%g8912589171%_ _%g8912689175%_)))))
        (_%g8912489324%_ _%$stx89121%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx89328%_)
      (let* ((_%g8933289366%_
              (lambda (_%g8933389362%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8933389362%_)))
             (_%g8933189477%_
              (lambda (_%g8933389370%_)
                (if (gx#stx-pair? _%g8933389370%_)
                    (let ((_%e8934089373%_ (gx#syntax-e _%g8933389370%_)))
                      (let ((_%hd8934189377%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8934089373%_)))
                            (_%tl8934289380%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8934089373%_))))
                        (if (gx#stx-pair? _%tl8934289380%_)
                            (let ((_%e8934389383%_
                                   (gx#syntax-e _%tl8934289380%_)))
                              (let ((_%hd8934489387%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8934389383%_)))
                                    (_%tl8934589390%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8934389383%_))))
                                (if (gx#stx-pair? _%tl8934589390%_)
                                    (let ((_%e8934689393%_
                                           (gx#syntax-e _%tl8934589390%_)))
                                      (let ((_%hd8934789397%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8934689393%_)))
                                            (_%tl8934889400%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8934689393%_))))
                                        (if (gx#stx-pair? _%tl8934889400%_)
                                            (let ((_%e8934989403%_
                                                   (gx#syntax-e
                                                    _%tl8934889400%_)))
                                              (let ((_%hd8935089407%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8934989403%_)))
                                                    (_%tl8935189410%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8934989403%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8935189410%_)
                                                    (let ((_%e8935289413%_
                                                           (gx#syntax-e
                                                            _%tl8935189410%_)))
                                                      (let ((_%hd8935389417%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8935289413%_)))
                    (_%tl8935489420%_
                     (let () (declare (not safe)) (##cdr _%e8935289413%_))))
                (if (gx#stx-pair? _%tl8935489420%_)
                    (let ((_%e8935589423%_ (gx#syntax-e _%tl8935489420%_)))
                      (let ((_%hd8935689427%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8935589423%_)))
                            (_%tl8935789430%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8935589423%_))))
                        (if (gx#stx-pair? _%tl8935789430%_)
                            (let ((_%e8935889433%_
                                   (gx#syntax-e _%tl8935789430%_)))
                              (let ((_%hd8935989437%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8935889433%_)))
                                    (_%tl8936089440%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8935889433%_))))
                                (if (gx#stx-null? _%tl8936089440%_)
                                    ((lambda (_%L89443%_
                                              _%L89445%_
                                              _%L89446%_
                                              _%L89447%_
                                              _%L89448%_
                                              _%L89449%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L89447%_
                                               (cons _%L89445%_ '()))
                                         (cons _%L89448%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L89449%_ '()))
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
                               (cons _%L89449%_
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
                                     (cons (cons (cons _%L89446%_
                                                       (cons _%L89445%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L89449%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L89449%_
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
                     (cons (cons _%L89443%_ '()) '()))))
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
                                     _%hd8935989437%_
                                     _%hd8935689427%_
                                     _%hd8935389417%_
                                     _%hd8935089407%_
                                     _%hd8934789397%_
                                     _%hd8934489387%_)
                                    (_%g8933289366%_ _%g8933389370%_))))
                            (_%g8933289366%_ _%g8933389370%_))))
                    (_%g8933289366%_ _%g8933389370%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8933289366%_
                                                     _%g8933389370%_))))
                                            (_%g8933289366%_
                                             _%g8933389370%_))))
                                    (_%g8933289366%_ _%g8933389370%_))))
                            (_%g8933289366%_ _%g8933389370%_))))
                    (_%g8933289366%_ _%g8933389370%_)))))
        (_%g8933189477%_ _%$stx89328%_)))))

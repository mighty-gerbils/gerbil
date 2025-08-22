(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#defspecialized-table|
    (lambda (_%$stx95740%_)
      (let* ((_%g9574495790%_
              (lambda (_%g9574595786%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9574595786%_)))
             (_%g9574395944%_
              (lambda (_%g9574595794%_)
                (if (gx#stx-pair? _%g9574595794%_)
                    (let ((_%e9575595797%_ (gx#syntax-e _%g9574595794%_)))
                      (let ((_%hd9575695801%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9575595797%_)))
                            (_%tl9575795804%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9575595797%_))))
                        (if (gx#stx-pair? _%tl9575795804%_)
                            (let ((_%e9575895807%_
                                   (gx#syntax-e _%tl9575795804%_)))
                              (let ((_%hd9575995811%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9575895807%_)))
                                    (_%tl9576095814%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9575895807%_))))
                                (if (gx#stx-pair? _%tl9576095814%_)
                                    (let ((_%e9576195817%_
                                           (gx#syntax-e _%tl9576095814%_)))
                                      (let ((_%hd9576295821%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9576195817%_)))
                                            (_%tl9576395824%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9576195817%_))))
                                        (if (gx#stx-pair? _%tl9576395824%_)
                                            (let ((_%e9576495827%_
                                                   (gx#syntax-e
                                                    _%tl9576395824%_)))
                                              (let ((_%hd9576595831%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9576495827%_)))
                                                    (_%tl9576695834%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9576495827%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9576695834%_)
                                                    (let ((_%e9576795837%_
                                                           (gx#syntax-e
                                                            _%tl9576695834%_)))
                                                      (let ((_%hd9576895841%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9576795837%_)))
                    (_%tl9576995844%_
                     (let () (declare (not safe)) (##cdr _%e9576795837%_))))
                (if (gx#stx-pair? _%tl9576995844%_)
                    (let ((_%e9577095847%_ (gx#syntax-e _%tl9576995844%_)))
                      (let ((_%hd9577195851%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9577095847%_)))
                            (_%tl9577295854%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9577095847%_))))
                        (if (gx#stx-pair? _%tl9577295854%_)
                            (let ((_%e9577395857%_
                                   (gx#syntax-e _%tl9577295854%_)))
                              (let ((_%hd9577495861%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9577395857%_)))
                                    (_%tl9577595864%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9577395857%_))))
                                (if (gx#stx-pair? _%tl9577595864%_)
                                    (let ((_%e9577695867%_
                                           (gx#syntax-e _%tl9577595864%_)))
                                      (let ((_%hd9577795871%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9577695867%_)))
                                            (_%tl9577895874%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9577695867%_))))
                                        (if (gx#stx-pair? _%tl9577895874%_)
                                            (let ((_%e9577995877%_
                                                   (gx#syntax-e
                                                    _%tl9577895874%_)))
                                              (let ((_%hd9578095881%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9577995877%_)))
                                                    (_%tl9578195884%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9577995877%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9578195884%_)
                                                    (let ((_%e9578295887%_
                                                           (gx#syntax-e
                                                            _%tl9578195884%_)))
                                                      (let ((_%hd9578395891%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9578295887%_)))
                    (_%tl9578495894%_
                     (let () (declare (not safe)) (##cdr _%e9578295887%_))))
                (if (gx#stx-null? _%tl9578495894%_)
                    ((lambda (_%L95897%_
                              _%L95899%_
                              _%L95900%_
                              _%L95901%_
                              _%L95902%_
                              _%L95903%_
                              _%L95904%_
                              _%L95905%_
                              _%L95906%_)
                       (cons (gx#datum->syntax '#f 'begin)
                             (cons (cons (gx#datum->syntax '#f 'def)
                                         (cons (cons _%L95906%_
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
                         (cons _%L95899%_
                               (cons _%L95897%_
                                     (cons (gx#datum->syntax '#f 'seed)
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   (cons (cons (gx#datum->syntax '#f 'def)
                                               (cons (cons _%L95905%_
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
                                                       (cons _%L95899%_
                                                             (cons _%L95897%_
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
                                                     (cons (cons _%L95904%_
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
                         (cons (cons _%L95903%_
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
                                                           (cons (cons _%L95903%_
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
                           (cons _%L95899%_
                                 (cons _%L95897%_
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
                         (cons (cons _%L95902%_
                                     (cons (gx#datum->syntax '#f 'tab)
                                           (cons (gx#datum->syntax '#f 'key)
                                                 (cons _%L95902%_
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
                                     (cons (cons _%L95901%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'tab)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'key)
                                                             (cons _%L95902%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                   (cons (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _%L95901%_
                                           (cons (gx#datum->syntax '#f 'tab)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'key)
                                                       (cons _%L95902%_
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
                                       (cons _%L95899%_
                                             (cons _%L95897%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'key)
                                                         (cons _%L95902%_
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
                                     (cons (cons _%L95900%_
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
                                             (cons _%L95899%_
                                                   (cons _%L95897%_
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
                     _%hd9578395891%_
                     _%hd9578095881%_
                     _%hd9577795871%_
                     _%hd9577495861%_
                     _%hd9577195851%_
                     _%hd9576895841%_
                     _%hd9576595831%_
                     _%hd9576295821%_
                     _%hd9575995811%_)
                    (_%g9574495790%_ _%g9574595794%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9574495790%_
                                                     _%g9574595794%_))))
                                            (_%g9574495790%_
                                             _%g9574595794%_))))
                                    (_%g9574495790%_ _%g9574595794%_))))
                            (_%g9574495790%_ _%g9574595794%_))))
                    (_%g9574495790%_ _%g9574595794%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9574495790%_
                                                     _%g9574595794%_))))
                                            (_%g9574495790%_
                                             _%g9574595794%_))))
                                    (_%g9574495790%_ _%g9574595794%_))))
                            (_%g9574495790%_ _%g9574595794%_))))
                    (_%g9574495790%_ _%g9574595794%_)))))
        (_%g9574395944%_ _%$stx95740%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx95948%_)
      (let* ((_%g9595295974%_
              (lambda (_%g9595395970%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9595395970%_)))
             (_%g9595196043%_
              (lambda (_%g9595395978%_)
                (if (gx#stx-pair? _%g9595395978%_)
                    (let ((_%e9595795981%_ (gx#syntax-e _%g9595395978%_)))
                      (let ((_%hd9595895985%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9595795981%_)))
                            (_%tl9595995988%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9595795981%_))))
                        (if (gx#stx-pair? _%tl9595995988%_)
                            (let ((_%e9596095991%_
                                   (gx#syntax-e _%tl9595995988%_)))
                              (let ((_%hd9596195995%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9596095991%_)))
                                    (_%tl9596295998%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9596095991%_))))
                                (if (gx#stx-pair? _%tl9596295998%_)
                                    (let ((_%e9596396001%_
                                           (gx#syntax-e _%tl9596295998%_)))
                                      (let ((_%hd9596496005%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9596396001%_)))
                                            (_%tl9596596008%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9596396001%_))))
                                        (if (gx#stx-pair? _%tl9596596008%_)
                                            (let ((_%e9596696011%_
                                                   (gx#syntax-e
                                                    _%tl9596596008%_)))
                                              (let ((_%hd9596796015%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9596696011%_)))
                                                    (_%tl9596896018%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9596696011%_))))
                                                (if (gx#stx-null?
                                                     _%tl9596896018%_)
                                                    ((lambda (_%L96021%_
                                                              _%L96023%_
                                                              _%L96024%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%L96024%_
                                                   (cons _%L96023%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%L96023%_ (cons _%L96023%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%L96021%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd9596796015%_
                                                     _%hd9596496005%_
                                                     _%hd9596195995%_)
                                                    (_%g9595295974%_
                                                     _%g9595395978%_))))
                                            (_%g9595295974%_
                                             _%g9595395978%_))))
                                    (_%g9595295974%_ _%g9595395978%_))))
                            (_%g9595295974%_ _%g9595395978%_))))
                    (_%g9595295974%_ _%g9595395978%_)))))
        (_%g9595196043%_ _%$stx95948%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx96047%_)
      (let* ((_%g9605196085%_
              (lambda (_%g9605296081%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9605296081%_)))
             (_%g9605096196%_
              (lambda (_%g9605296089%_)
                (if (gx#stx-pair? _%g9605296089%_)
                    (let ((_%e9605996092%_ (gx#syntax-e _%g9605296089%_)))
                      (let ((_%hd9606096096%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9605996092%_)))
                            (_%tl9606196099%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9605996092%_))))
                        (if (gx#stx-pair? _%tl9606196099%_)
                            (let ((_%e9606296102%_
                                   (gx#syntax-e _%tl9606196099%_)))
                              (let ((_%hd9606396106%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9606296102%_)))
                                    (_%tl9606496109%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9606296102%_))))
                                (if (gx#stx-pair? _%tl9606496109%_)
                                    (let ((_%e9606596112%_
                                           (gx#syntax-e _%tl9606496109%_)))
                                      (let ((_%hd9606696116%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9606596112%_)))
                                            (_%tl9606796119%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9606596112%_))))
                                        (if (gx#stx-pair? _%tl9606796119%_)
                                            (let ((_%e9606896122%_
                                                   (gx#syntax-e
                                                    _%tl9606796119%_)))
                                              (let ((_%hd9606996126%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9606896122%_)))
                                                    (_%tl9607096129%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9606896122%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9607096129%_)
                                                    (let ((_%e9607196132%_
                                                           (gx#syntax-e
                                                            _%tl9607096129%_)))
                                                      (let ((_%hd9607296136%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9607196132%_)))
                    (_%tl9607396139%_
                     (let () (declare (not safe)) (##cdr _%e9607196132%_))))
                (if (gx#stx-pair? _%tl9607396139%_)
                    (let ((_%e9607496142%_ (gx#syntax-e _%tl9607396139%_)))
                      (let ((_%hd9607596146%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9607496142%_)))
                            (_%tl9607696149%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9607496142%_))))
                        (if (gx#stx-pair? _%tl9607696149%_)
                            (let ((_%e9607796152%_
                                   (gx#syntax-e _%tl9607696149%_)))
                              (let ((_%hd9607896156%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9607796152%_)))
                                    (_%tl9607996159%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9607796152%_))))
                                (if (gx#stx-null? _%tl9607996159%_)
                                    ((lambda (_%L96162%_
                                              _%L96164%_
                                              _%L96165%_
                                              _%L96166%_
                                              _%L96167%_
                                              _%L96168%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L96166%_
                                               (cons _%L96164%_ '()))
                                         (cons _%L96167%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L96168%_ '()))
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
                               (cons _%L96168%_
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
                                     (cons _%L96162%_ '()))
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
                                     (cons (cons (cons _%L96165%_
                                                       (cons _%L96164%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%L96168%_
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
                                     _%hd9607896156%_
                                     _%hd9607596146%_
                                     _%hd9607296136%_
                                     _%hd9606996126%_
                                     _%hd9606696116%_
                                     _%hd9606396106%_)
                                    (_%g9605196085%_ _%g9605296089%_))))
                            (_%g9605196085%_ _%g9605296089%_))))
                    (_%g9605196085%_ _%g9605296089%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9605196085%_
                                                     _%g9605296089%_))))
                                            (_%g9605196085%_
                                             _%g9605296089%_))))
                                    (_%g9605196085%_ _%g9605296089%_))))
                            (_%g9605196085%_ _%g9605296089%_))))
                    (_%g9605196085%_ _%g9605296089%_)))))
        (_%g9605096196%_ _%$stx96047%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx96200%_)
      (let* ((_%g9620496246%_
              (lambda (_%g9620596242%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9620596242%_)))
             (_%g9620396385%_
              (lambda (_%g9620596250%_)
                (if (gx#stx-pair? _%g9620596250%_)
                    (let ((_%e9621496253%_ (gx#syntax-e _%g9620596250%_)))
                      (let ((_%hd9621596257%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9621496253%_)))
                            (_%tl9621696260%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9621496253%_))))
                        (if (gx#stx-pair? _%tl9621696260%_)
                            (let ((_%e9621796263%_
                                   (gx#syntax-e _%tl9621696260%_)))
                              (let ((_%hd9621896267%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9621796263%_)))
                                    (_%tl9621996270%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9621796263%_))))
                                (if (gx#stx-pair? _%tl9621996270%_)
                                    (let ((_%e9622096273%_
                                           (gx#syntax-e _%tl9621996270%_)))
                                      (let ((_%hd9622196277%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9622096273%_)))
                                            (_%tl9622296280%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9622096273%_))))
                                        (if (gx#stx-pair? _%tl9622296280%_)
                                            (let ((_%e9622396283%_
                                                   (gx#syntax-e
                                                    _%tl9622296280%_)))
                                              (let ((_%hd9622496287%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9622396283%_)))
                                                    (_%tl9622596290%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9622396283%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9622596290%_)
                                                    (let ((_%e9622696293%_
                                                           (gx#syntax-e
                                                            _%tl9622596290%_)))
                                                      (let ((_%hd9622796297%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9622696293%_)))
                    (_%tl9622896300%_
                     (let () (declare (not safe)) (##cdr _%e9622696293%_))))
                (if (gx#stx-pair? _%tl9622896300%_)
                    (let ((_%e9622996303%_ (gx#syntax-e _%tl9622896300%_)))
                      (let ((_%hd9623096307%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9622996303%_)))
                            (_%tl9623196310%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9622996303%_))))
                        (if (gx#stx-pair? _%tl9623196310%_)
                            (let ((_%e9623296313%_
                                   (gx#syntax-e _%tl9623196310%_)))
                              (let ((_%hd9623396317%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9623296313%_)))
                                    (_%tl9623496320%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9623296313%_))))
                                (if (gx#stx-pair? _%tl9623496320%_)
                                    (let ((_%e9623596323%_
                                           (gx#syntax-e _%tl9623496320%_)))
                                      (let ((_%hd9623696327%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9623596323%_)))
                                            (_%tl9623796330%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9623596323%_))))
                                        (if (gx#stx-pair? _%tl9623796330%_)
                                            (let ((_%e9623896333%_
                                                   (gx#syntax-e
                                                    _%tl9623796330%_)))
                                              (let ((_%hd9623996337%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9623896333%_)))
                                                    (_%tl9624096340%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9623896333%_))))
                                                (if (gx#stx-null?
                                                     _%tl9624096340%_)
                                                    ((lambda (_%L96343%_
                                                              _%L96345%_
                                                              _%L96346%_
                                                              _%L96347%_
                                                              _%L96348%_
                                                              _%L96349%_
                                                              _%L96350%_
                                                              _%L96351%_)
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
                                                   (cons (cons _%L96349%_
                                                               (cons _%L96347%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%L96350%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%L96351%_ '()))
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
                                               (cons _%L96351%_
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
                                                       (cons _%L96351%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%L96347%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L96351%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%L96346%_ '()))))
               (cons (cons _%L96343%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L96351%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%L96347%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L96351%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%L96346%_ '()))))
                     (cons (cons _%L96345%_ '()) '()))))
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
                                                     (cons (cons (cons _%L96348%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L96347%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%L96351%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%L96347%_ '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%L96351%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%L96346%_ '()))))
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
                                                     _%hd9623996337%_
                                                     _%hd9623696327%_
                                                     _%hd9623396317%_
                                                     _%hd9623096307%_
                                                     _%hd9622796297%_
                                                     _%hd9622496287%_
                                                     _%hd9622196277%_
                                                     _%hd9621896267%_)
                                                    (_%g9620496246%_
                                                     _%g9620596250%_))))
                                            (_%g9620496246%_
                                             _%g9620596250%_))))
                                    (_%g9620496246%_ _%g9620596250%_))))
                            (_%g9620496246%_ _%g9620596250%_))))
                    (_%g9620496246%_ _%g9620596250%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9620496246%_
                                                     _%g9620596250%_))))
                                            (_%g9620496246%_
                                             _%g9620596250%_))))
                                    (_%g9620496246%_ _%g9620596250%_))))
                            (_%g9620496246%_ _%g9620596250%_))))
                    (_%g9620496246%_ _%g9620596250%_)))))
        (_%g9620396385%_ _%$stx96200%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx96389%_)
      (let* ((_%g9639396439%_
              (lambda (_%g9639496435%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9639496435%_)))
             (_%g9639296592%_
              (lambda (_%g9639496443%_)
                (if (gx#stx-pair? _%g9639496443%_)
                    (let ((_%e9640496446%_ (gx#syntax-e _%g9639496443%_)))
                      (let ((_%hd9640596450%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9640496446%_)))
                            (_%tl9640696453%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9640496446%_))))
                        (if (gx#stx-pair? _%tl9640696453%_)
                            (let ((_%e9640796456%_
                                   (gx#syntax-e _%tl9640696453%_)))
                              (let ((_%hd9640896460%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9640796456%_)))
                                    (_%tl9640996463%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9640796456%_))))
                                (if (gx#stx-pair? _%tl9640996463%_)
                                    (let ((_%e9641096466%_
                                           (gx#syntax-e _%tl9640996463%_)))
                                      (let ((_%hd9641196470%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9641096466%_)))
                                            (_%tl9641296473%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9641096466%_))))
                                        (if (gx#stx-pair? _%tl9641296473%_)
                                            (let ((_%e9641396476%_
                                                   (gx#syntax-e
                                                    _%tl9641296473%_)))
                                              (let ((_%hd9641496480%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9641396476%_)))
                                                    (_%tl9641596483%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9641396476%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9641596483%_)
                                                    (let ((_%e9641696486%_
                                                           (gx#syntax-e
                                                            _%tl9641596483%_)))
                                                      (let ((_%hd9641796490%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9641696486%_)))
                    (_%tl9641896493%_
                     (let () (declare (not safe)) (##cdr _%e9641696486%_))))
                (if (gx#stx-pair? _%tl9641896493%_)
                    (let ((_%e9641996496%_ (gx#syntax-e _%tl9641896493%_)))
                      (let ((_%hd9642096500%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9641996496%_)))
                            (_%tl9642196503%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9641996496%_))))
                        (if (gx#stx-pair? _%tl9642196503%_)
                            (let ((_%e9642296506%_
                                   (gx#syntax-e _%tl9642196503%_)))
                              (let ((_%hd9642396510%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9642296506%_)))
                                    (_%tl9642496513%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9642296506%_))))
                                (if (gx#stx-pair? _%tl9642496513%_)
                                    (let ((_%e9642596516%_
                                           (gx#syntax-e _%tl9642496513%_)))
                                      (let ((_%hd9642696520%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9642596516%_)))
                                            (_%tl9642796523%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9642596516%_))))
                                        (if (gx#stx-pair? _%tl9642796523%_)
                                            (let ((_%e9642896526%_
                                                   (gx#syntax-e
                                                    _%tl9642796523%_)))
                                              (let ((_%hd9642996530%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9642896526%_)))
                                                    (_%tl9643096533%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9642896526%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9643096533%_)
                                                    (let ((_%e9643196536%_
                                                           (gx#syntax-e
                                                            _%tl9643096533%_)))
                                                      (let ((_%hd9643296540%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9643196536%_)))
                    (_%tl9643396543%_
                     (let () (declare (not safe)) (##cdr _%e9643196536%_))))
                (if (gx#stx-null? _%tl9643396543%_)
                    ((lambda (_%L96546%_
                              _%L96548%_
                              _%L96549%_
                              _%L96550%_
                              _%L96551%_
                              _%L96552%_
                              _%L96553%_
                              _%L96554%_
                              _%L96555%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%L96553%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L96551%_ '()))
                         (cons _%L96554%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%L96555%_ '()))
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
                                                       (cons _%L96555%_
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
                                                               (cons _%L96555%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%L96551%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%L96555%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%L96550%_
                                                     (cons _%L96549%_ '()))
                                               '()))))
                       (cons (cons _%L96546%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%L96555%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%L96551%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%L96555%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%L96550%_
                                                           (cons _%L96549%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%L96548%_ '()) '()))))
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
                     (cons (cons (cons _%L96552%_
                                       (cons _%L96551%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%L96555%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%L96551%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%L96555%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%L96550%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%L96555%_
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
                     _%hd9643296540%_
                     _%hd9642996530%_
                     _%hd9642696520%_
                     _%hd9642396510%_
                     _%hd9642096500%_
                     _%hd9641796490%_
                     _%hd9641496480%_
                     _%hd9641196470%_
                     _%hd9640896460%_)
                    (_%g9639396439%_ _%g9639496443%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9639396439%_
                                                     _%g9639496443%_))))
                                            (_%g9639396439%_
                                             _%g9639496443%_))))
                                    (_%g9639396439%_ _%g9639496443%_))))
                            (_%g9639396439%_ _%g9639496443%_))))
                    (_%g9639396439%_ _%g9639496443%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9639396439%_
                                                     _%g9639496443%_))))
                                            (_%g9639396439%_
                                             _%g9639496443%_))))
                                    (_%g9639396439%_ _%g9639496443%_))))
                            (_%g9639396439%_ _%g9639496443%_))))
                    (_%g9639396439%_ _%g9639496443%_)))))
        (_%g9639296592%_ _%$stx96389%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx96596%_)
      (let* ((_%g9660096634%_
              (lambda (_%g9660196630%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9660196630%_)))
             (_%g9659996745%_
              (lambda (_%g9660196638%_)
                (if (gx#stx-pair? _%g9660196638%_)
                    (let ((_%e9660896641%_ (gx#syntax-e _%g9660196638%_)))
                      (let ((_%hd9660996645%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9660896641%_)))
                            (_%tl9661096648%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9660896641%_))))
                        (if (gx#stx-pair? _%tl9661096648%_)
                            (let ((_%e9661196651%_
                                   (gx#syntax-e _%tl9661096648%_)))
                              (let ((_%hd9661296655%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9661196651%_)))
                                    (_%tl9661396658%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9661196651%_))))
                                (if (gx#stx-pair? _%tl9661396658%_)
                                    (let ((_%e9661496661%_
                                           (gx#syntax-e _%tl9661396658%_)))
                                      (let ((_%hd9661596665%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9661496661%_)))
                                            (_%tl9661696668%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9661496661%_))))
                                        (if (gx#stx-pair? _%tl9661696668%_)
                                            (let ((_%e9661796671%_
                                                   (gx#syntax-e
                                                    _%tl9661696668%_)))
                                              (let ((_%hd9661896675%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9661796671%_)))
                                                    (_%tl9661996678%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9661796671%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9661996678%_)
                                                    (let ((_%e9662096681%_
                                                           (gx#syntax-e
                                                            _%tl9661996678%_)))
                                                      (let ((_%hd9662196685%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9662096681%_)))
                    (_%tl9662296688%_
                     (let () (declare (not safe)) (##cdr _%e9662096681%_))))
                (if (gx#stx-pair? _%tl9662296688%_)
                    (let ((_%e9662396691%_ (gx#syntax-e _%tl9662296688%_)))
                      (let ((_%hd9662496695%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9662396691%_)))
                            (_%tl9662596698%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9662396691%_))))
                        (if (gx#stx-pair? _%tl9662596698%_)
                            (let ((_%e9662696701%_
                                   (gx#syntax-e _%tl9662596698%_)))
                              (let ((_%hd9662796705%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9662696701%_)))
                                    (_%tl9662896708%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9662696701%_))))
                                (if (gx#stx-null? _%tl9662896708%_)
                                    ((lambda (_%L96711%_
                                              _%L96713%_
                                              _%L96714%_
                                              _%L96715%_
                                              _%L96716%_
                                              _%L96717%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L96715%_
                                               (cons _%L96713%_ '()))
                                         (cons _%L96716%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L96717%_ '()))
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
                               (cons _%L96717%_
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
                                     (cons (cons (cons _%L96714%_
                                                       (cons _%L96713%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L96717%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L96717%_
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
                     (cons (cons _%L96711%_ '()) '()))))
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
                                     _%hd9662796705%_
                                     _%hd9662496695%_
                                     _%hd9662196685%_
                                     _%hd9661896675%_
                                     _%hd9661596665%_
                                     _%hd9661296655%_)
                                    (_%g9660096634%_ _%g9660196638%_))))
                            (_%g9660096634%_ _%g9660196638%_))))
                    (_%g9660096634%_ _%g9660196638%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9660096634%_
                                                     _%g9660196638%_))))
                                            (_%g9660096634%_
                                             _%g9660196638%_))))
                                    (_%g9660096634%_ _%g9660196638%_))))
                            (_%g9660096634%_ _%g9660196638%_))))
                    (_%g9660096634%_ _%g9660196638%_)))))
        (_%g9659996745%_ _%$stx96596%_)))))

(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_%$stx89795%_)
      (let* ((_%g8979989813%_
              (lambda (_%g8980089809%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8980089809%_)))
             (_%g8979889855%_
              (lambda (_%g8980089817%_)
                (if (gx#stx-pair? _%g8980089817%_)
                    (let ((_%e8980289820%_ (gx#syntax-e _%g8980089817%_)))
                      (let ((_%hd8980389824%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8980289820%_)))
                            (_%tl8980489827%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8980289820%_))))
                        (if (gx#stx-pair? _%tl8980489827%_)
                            (let ((_%e8980589830%_
                                   (gx#syntax-e _%tl8980489827%_)))
                              (let ((_%hd8980689834%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8980589830%_)))
                                    (_%tl8980789837%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8980589830%_))))
                                (if (gx#stx-null? _%tl8980789837%_)
                                    ((lambda (_%L89840%_)
                                       (cons (gx#datum->syntax '#f 'macro-slot)
                                             (cons '1 (cons _%L89840%_ '()))))
                                     _%hd8980689834%_)
                                    (_%g8979989813%_ _%g8980089817%_))))
                            (_%g8979989813%_ _%g8980089817%_))))
                    (_%g8979989813%_ _%g8980089817%_)))))
        (_%g8979889855%_ _%$stx89795%_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_%$stx89859%_)
      (let* ((_%g8986389909%_
              (lambda (_%g8986489905%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8986489905%_)))
             (_%g8986290062%_
              (lambda (_%g8986489913%_)
                (if (gx#stx-pair? _%g8986489913%_)
                    (let ((_%e8987489916%_ (gx#syntax-e _%g8986489913%_)))
                      (let ((_%hd8987589920%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8987489916%_)))
                            (_%tl8987689923%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8987489916%_))))
                        (if (gx#stx-pair? _%tl8987689923%_)
                            (let ((_%e8987789926%_
                                   (gx#syntax-e _%tl8987689923%_)))
                              (let ((_%hd8987889930%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8987789926%_)))
                                    (_%tl8987989933%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8987789926%_))))
                                (if (gx#stx-pair? _%tl8987989933%_)
                                    (let ((_%e8988089936%_
                                           (gx#syntax-e _%tl8987989933%_)))
                                      (let ((_%hd8988189940%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8988089936%_)))
                                            (_%tl8988289943%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8988089936%_))))
                                        (if (gx#stx-pair? _%tl8988289943%_)
                                            (let ((_%e8988389946%_
                                                   (gx#syntax-e
                                                    _%tl8988289943%_)))
                                              (let ((_%hd8988489950%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8988389946%_)))
                                                    (_%tl8988589953%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8988389946%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8988589953%_)
                                                    (let ((_%e8988689956%_
                                                           (gx#syntax-e
                                                            _%tl8988589953%_)))
                                                      (let ((_%hd8988789960%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8988689956%_)))
                    (_%tl8988889963%_
                     (let () (declare (not safe)) (##cdr _%e8988689956%_))))
                (if (gx#stx-pair? _%tl8988889963%_)
                    (let ((_%e8988989966%_ (gx#syntax-e _%tl8988889963%_)))
                      (let ((_%hd8989089970%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8988989966%_)))
                            (_%tl8989189973%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8988989966%_))))
                        (if (gx#stx-pair? _%tl8989189973%_)
                            (let ((_%e8989289976%_
                                   (gx#syntax-e _%tl8989189973%_)))
                              (let ((_%hd8989389980%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8989289976%_)))
                                    (_%tl8989489983%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8989289976%_))))
                                (if (gx#stx-pair? _%tl8989489983%_)
                                    (let ((_%e8989589986%_
                                           (gx#syntax-e _%tl8989489983%_)))
                                      (let ((_%hd8989689990%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8989589986%_)))
                                            (_%tl8989789993%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8989589986%_))))
                                        (if (gx#stx-pair? _%tl8989789993%_)
                                            (let ((_%e8989889996%_
                                                   (gx#syntax-e
                                                    _%tl8989789993%_)))
                                              (let ((_%hd8989990000%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8989889996%_)))
                                                    (_%tl8990090003%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8989889996%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8990090003%_)
                                                    (let ((_%e8990190006%_
                                                           (gx#syntax-e
                                                            _%tl8990090003%_)))
                                                      (let ((_%hd8990290010%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8990190006%_)))
                    (_%tl8990390013%_
                     (let () (declare (not safe)) (##cdr _%e8990190006%_))))
                (if (gx#stx-null? _%tl8990390013%_)
                    ((lambda (_%L90016%_
                              _%L90018%_
                              _%L90019%_
                              _%L90020%_
                              _%L90021%_
                              _%L90022%_
                              _%L90023%_
                              _%L90024%_
                              _%L90025%_)
                       (cons (gx#datum->syntax '#f 'begin)
                             (cons (cons (gx#datum->syntax '#f 'def)
                                         (cons (cons _%L90025%_
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
                         (cons _%L90018%_
                               (cons _%L90016%_
                                     (cons (gx#datum->syntax '#f 'seed)
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   (cons (cons (gx#datum->syntax '#f 'def)
                                               (cons (cons _%L90024%_
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
                                                       (cons _%L90018%_
                                                             (cons _%L90016%_
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
                                                     (cons (cons _%L90023%_
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
                         (cons (cons _%L90022%_
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
                                                           (cons (cons _%L90022%_
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
                           (cons _%L90018%_
                                 (cons _%L90016%_
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
                         (cons (cons _%L90021%_
                                     (cons (gx#datum->syntax '#f 'tab)
                                           (cons (gx#datum->syntax '#f 'key)
                                                 (cons _%L90021%_
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
                                     (cons (cons _%L90020%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'tab)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'key)
                                                             (cons _%L90021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                   (cons (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _%L90020%_
                                           (cons (gx#datum->syntax '#f 'tab)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'key)
                                                       (cons _%L90021%_
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
                                       (cons _%L90018%_
                                             (cons _%L90016%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'key)
                                                         (cons _%L90021%_
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
                                     (cons (cons _%L90019%_
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
                                             (cons _%L90018%_
                                                   (cons _%L90016%_
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
                     _%hd8990290010%_
                     _%hd8989990000%_
                     _%hd8989689990%_
                     _%hd8989389980%_
                     _%hd8989089970%_
                     _%hd8988789960%_
                     _%hd8988489950%_
                     _%hd8988189940%_
                     _%hd8987889930%_)
                    (_%g8986389909%_ _%g8986489913%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8986389909%_
                                                     _%g8986489913%_))))
                                            (_%g8986389909%_
                                             _%g8986489913%_))))
                                    (_%g8986389909%_ _%g8986489913%_))))
                            (_%g8986389909%_ _%g8986489913%_))))
                    (_%g8986389909%_ _%g8986489913%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8986389909%_
                                                     _%g8986489913%_))))
                                            (_%g8986389909%_
                                             _%g8986489913%_))))
                                    (_%g8986389909%_ _%g8986489913%_))))
                            (_%g8986389909%_ _%g8986489913%_))))
                    (_%g8986389909%_ _%g8986489913%_)))))
        (_%g8986290062%_ _%$stx89859%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx90066%_)
      (let* ((_%g9007090092%_
              (lambda (_%g9007190088%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9007190088%_)))
             (_%g9006990161%_
              (lambda (_%g9007190096%_)
                (if (gx#stx-pair? _%g9007190096%_)
                    (let ((_%e9007590099%_ (gx#syntax-e _%g9007190096%_)))
                      (let ((_%hd9007690103%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9007590099%_)))
                            (_%tl9007790106%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9007590099%_))))
                        (if (gx#stx-pair? _%tl9007790106%_)
                            (let ((_%e9007890109%_
                                   (gx#syntax-e _%tl9007790106%_)))
                              (let ((_%hd9007990113%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9007890109%_)))
                                    (_%tl9008090116%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9007890109%_))))
                                (if (gx#stx-pair? _%tl9008090116%_)
                                    (let ((_%e9008190119%_
                                           (gx#syntax-e _%tl9008090116%_)))
                                      (let ((_%hd9008290123%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9008190119%_)))
                                            (_%tl9008390126%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9008190119%_))))
                                        (if (gx#stx-pair? _%tl9008390126%_)
                                            (let ((_%e9008490129%_
                                                   (gx#syntax-e
                                                    _%tl9008390126%_)))
                                              (let ((_%hd9008590133%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9008490129%_)))
                                                    (_%tl9008690136%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9008490129%_))))
                                                (if (gx#stx-null?
                                                     _%tl9008690136%_)
                                                    ((lambda (_%L90139%_
                                                              _%L90141%_
                                                              _%L90142%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%L90142%_
                                                   (cons _%L90141%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%L90141%_ (cons _%L90141%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%L90139%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd9008590133%_
                                                     _%hd9008290123%_
                                                     _%hd9007990113%_)
                                                    (_%g9007090092%_
                                                     _%g9007190096%_))))
                                            (_%g9007090092%_
                                             _%g9007190096%_))))
                                    (_%g9007090092%_ _%g9007190096%_))))
                            (_%g9007090092%_ _%g9007190096%_))))
                    (_%g9007090092%_ _%g9007190096%_)))))
        (_%g9006990161%_ _%$stx90066%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx90165%_)
      (let* ((_%g9016990203%_
              (lambda (_%g9017090199%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9017090199%_)))
             (_%g9016890314%_
              (lambda (_%g9017090207%_)
                (if (gx#stx-pair? _%g9017090207%_)
                    (let ((_%e9017790210%_ (gx#syntax-e _%g9017090207%_)))
                      (let ((_%hd9017890214%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9017790210%_)))
                            (_%tl9017990217%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9017790210%_))))
                        (if (gx#stx-pair? _%tl9017990217%_)
                            (let ((_%e9018090220%_
                                   (gx#syntax-e _%tl9017990217%_)))
                              (let ((_%hd9018190224%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9018090220%_)))
                                    (_%tl9018290227%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9018090220%_))))
                                (if (gx#stx-pair? _%tl9018290227%_)
                                    (let ((_%e9018390230%_
                                           (gx#syntax-e _%tl9018290227%_)))
                                      (let ((_%hd9018490234%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9018390230%_)))
                                            (_%tl9018590237%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9018390230%_))))
                                        (if (gx#stx-pair? _%tl9018590237%_)
                                            (let ((_%e9018690240%_
                                                   (gx#syntax-e
                                                    _%tl9018590237%_)))
                                              (let ((_%hd9018790244%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9018690240%_)))
                                                    (_%tl9018890247%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9018690240%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9018890247%_)
                                                    (let ((_%e9018990250%_
                                                           (gx#syntax-e
                                                            _%tl9018890247%_)))
                                                      (let ((_%hd9019090254%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9018990250%_)))
                    (_%tl9019190257%_
                     (let () (declare (not safe)) (##cdr _%e9018990250%_))))
                (if (gx#stx-pair? _%tl9019190257%_)
                    (let ((_%e9019290260%_ (gx#syntax-e _%tl9019190257%_)))
                      (let ((_%hd9019390264%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9019290260%_)))
                            (_%tl9019490267%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9019290260%_))))
                        (if (gx#stx-pair? _%tl9019490267%_)
                            (let ((_%e9019590270%_
                                   (gx#syntax-e _%tl9019490267%_)))
                              (let ((_%hd9019690274%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9019590270%_)))
                                    (_%tl9019790277%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9019590270%_))))
                                (if (gx#stx-null? _%tl9019790277%_)
                                    ((lambda (_%L90280%_
                                              _%L90282%_
                                              _%L90283%_
                                              _%L90284%_
                                              _%L90285%_
                                              _%L90286%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L90284%_
                                               (cons _%L90282%_ '()))
                                         (cons _%L90285%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L90286%_ '()))
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
                               (cons _%L90286%_
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
                                     (cons _%L90280%_ '()))
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
                                     (cons (cons (cons _%L90283%_
                                                       (cons _%L90282%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%L90286%_
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
                                     _%hd9019690274%_
                                     _%hd9019390264%_
                                     _%hd9019090254%_
                                     _%hd9018790244%_
                                     _%hd9018490234%_
                                     _%hd9018190224%_)
                                    (_%g9016990203%_ _%g9017090207%_))))
                            (_%g9016990203%_ _%g9017090207%_))))
                    (_%g9016990203%_ _%g9017090207%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9016990203%_
                                                     _%g9017090207%_))))
                                            (_%g9016990203%_
                                             _%g9017090207%_))))
                                    (_%g9016990203%_ _%g9017090207%_))))
                            (_%g9016990203%_ _%g9017090207%_))))
                    (_%g9016990203%_ _%g9017090207%_)))))
        (_%g9016890314%_ _%$stx90165%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx90318%_)
      (let* ((_%g9032290364%_
              (lambda (_%g9032390360%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9032390360%_)))
             (_%g9032190503%_
              (lambda (_%g9032390368%_)
                (if (gx#stx-pair? _%g9032390368%_)
                    (let ((_%e9033290371%_ (gx#syntax-e _%g9032390368%_)))
                      (let ((_%hd9033390375%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9033290371%_)))
                            (_%tl9033490378%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9033290371%_))))
                        (if (gx#stx-pair? _%tl9033490378%_)
                            (let ((_%e9033590381%_
                                   (gx#syntax-e _%tl9033490378%_)))
                              (let ((_%hd9033690385%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9033590381%_)))
                                    (_%tl9033790388%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9033590381%_))))
                                (if (gx#stx-pair? _%tl9033790388%_)
                                    (let ((_%e9033890391%_
                                           (gx#syntax-e _%tl9033790388%_)))
                                      (let ((_%hd9033990395%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9033890391%_)))
                                            (_%tl9034090398%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9033890391%_))))
                                        (if (gx#stx-pair? _%tl9034090398%_)
                                            (let ((_%e9034190401%_
                                                   (gx#syntax-e
                                                    _%tl9034090398%_)))
                                              (let ((_%hd9034290405%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9034190401%_)))
                                                    (_%tl9034390408%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9034190401%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9034390408%_)
                                                    (let ((_%e9034490411%_
                                                           (gx#syntax-e
                                                            _%tl9034390408%_)))
                                                      (let ((_%hd9034590415%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9034490411%_)))
                    (_%tl9034690418%_
                     (let () (declare (not safe)) (##cdr _%e9034490411%_))))
                (if (gx#stx-pair? _%tl9034690418%_)
                    (let ((_%e9034790421%_ (gx#syntax-e _%tl9034690418%_)))
                      (let ((_%hd9034890425%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9034790421%_)))
                            (_%tl9034990428%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9034790421%_))))
                        (if (gx#stx-pair? _%tl9034990428%_)
                            (let ((_%e9035090431%_
                                   (gx#syntax-e _%tl9034990428%_)))
                              (let ((_%hd9035190435%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9035090431%_)))
                                    (_%tl9035290438%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9035090431%_))))
                                (if (gx#stx-pair? _%tl9035290438%_)
                                    (let ((_%e9035390441%_
                                           (gx#syntax-e _%tl9035290438%_)))
                                      (let ((_%hd9035490445%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9035390441%_)))
                                            (_%tl9035590448%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9035390441%_))))
                                        (if (gx#stx-pair? _%tl9035590448%_)
                                            (let ((_%e9035690451%_
                                                   (gx#syntax-e
                                                    _%tl9035590448%_)))
                                              (let ((_%hd9035790455%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9035690451%_)))
                                                    (_%tl9035890458%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9035690451%_))))
                                                (if (gx#stx-null?
                                                     _%tl9035890458%_)
                                                    ((lambda (_%L90461%_
                                                              _%L90463%_
                                                              _%L90464%_
                                                              _%L90465%_
                                                              _%L90466%_
                                                              _%L90467%_
                                                              _%L90468%_
                                                              _%L90469%_)
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
                                                   (cons (cons _%L90467%_
                                                               (cons _%L90465%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%L90468%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%L90469%_ '()))
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
                                               (cons _%L90469%_
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
                                                       (cons _%L90469%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%L90465%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L90469%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%L90464%_ '()))))
               (cons (cons _%L90461%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L90469%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%L90465%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L90469%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%L90464%_ '()))))
                     (cons (cons _%L90463%_ '()) '()))))
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
                                                     (cons (cons (cons _%L90466%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L90465%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%L90469%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%L90465%_ '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%L90469%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%L90464%_ '()))))
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
                                                     _%hd9035790455%_
                                                     _%hd9035490445%_
                                                     _%hd9035190435%_
                                                     _%hd9034890425%_
                                                     _%hd9034590415%_
                                                     _%hd9034290405%_
                                                     _%hd9033990395%_
                                                     _%hd9033690385%_)
                                                    (_%g9032290364%_
                                                     _%g9032390368%_))))
                                            (_%g9032290364%_
                                             _%g9032390368%_))))
                                    (_%g9032290364%_ _%g9032390368%_))))
                            (_%g9032290364%_ _%g9032390368%_))))
                    (_%g9032290364%_ _%g9032390368%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9032290364%_
                                                     _%g9032390368%_))))
                                            (_%g9032290364%_
                                             _%g9032390368%_))))
                                    (_%g9032290364%_ _%g9032390368%_))))
                            (_%g9032290364%_ _%g9032390368%_))))
                    (_%g9032290364%_ _%g9032390368%_)))))
        (_%g9032190503%_ _%$stx90318%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx90507%_)
      (let* ((_%g9051190557%_
              (lambda (_%g9051290553%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9051290553%_)))
             (_%g9051090710%_
              (lambda (_%g9051290561%_)
                (if (gx#stx-pair? _%g9051290561%_)
                    (let ((_%e9052290564%_ (gx#syntax-e _%g9051290561%_)))
                      (let ((_%hd9052390568%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9052290564%_)))
                            (_%tl9052490571%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9052290564%_))))
                        (if (gx#stx-pair? _%tl9052490571%_)
                            (let ((_%e9052590574%_
                                   (gx#syntax-e _%tl9052490571%_)))
                              (let ((_%hd9052690578%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9052590574%_)))
                                    (_%tl9052790581%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9052590574%_))))
                                (if (gx#stx-pair? _%tl9052790581%_)
                                    (let ((_%e9052890584%_
                                           (gx#syntax-e _%tl9052790581%_)))
                                      (let ((_%hd9052990588%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9052890584%_)))
                                            (_%tl9053090591%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9052890584%_))))
                                        (if (gx#stx-pair? _%tl9053090591%_)
                                            (let ((_%e9053190594%_
                                                   (gx#syntax-e
                                                    _%tl9053090591%_)))
                                              (let ((_%hd9053290598%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9053190594%_)))
                                                    (_%tl9053390601%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9053190594%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9053390601%_)
                                                    (let ((_%e9053490604%_
                                                           (gx#syntax-e
                                                            _%tl9053390601%_)))
                                                      (let ((_%hd9053590608%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9053490604%_)))
                    (_%tl9053690611%_
                     (let () (declare (not safe)) (##cdr _%e9053490604%_))))
                (if (gx#stx-pair? _%tl9053690611%_)
                    (let ((_%e9053790614%_ (gx#syntax-e _%tl9053690611%_)))
                      (let ((_%hd9053890618%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9053790614%_)))
                            (_%tl9053990621%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9053790614%_))))
                        (if (gx#stx-pair? _%tl9053990621%_)
                            (let ((_%e9054090624%_
                                   (gx#syntax-e _%tl9053990621%_)))
                              (let ((_%hd9054190628%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9054090624%_)))
                                    (_%tl9054290631%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9054090624%_))))
                                (if (gx#stx-pair? _%tl9054290631%_)
                                    (let ((_%e9054390634%_
                                           (gx#syntax-e _%tl9054290631%_)))
                                      (let ((_%hd9054490638%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9054390634%_)))
                                            (_%tl9054590641%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9054390634%_))))
                                        (if (gx#stx-pair? _%tl9054590641%_)
                                            (let ((_%e9054690644%_
                                                   (gx#syntax-e
                                                    _%tl9054590641%_)))
                                              (let ((_%hd9054790648%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9054690644%_)))
                                                    (_%tl9054890651%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9054690644%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9054890651%_)
                                                    (let ((_%e9054990654%_
                                                           (gx#syntax-e
                                                            _%tl9054890651%_)))
                                                      (let ((_%hd9055090658%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9054990654%_)))
                    (_%tl9055190661%_
                     (let () (declare (not safe)) (##cdr _%e9054990654%_))))
                (if (gx#stx-null? _%tl9055190661%_)
                    ((lambda (_%L90664%_
                              _%L90666%_
                              _%L90667%_
                              _%L90668%_
                              _%L90669%_
                              _%L90670%_
                              _%L90671%_
                              _%L90672%_
                              _%L90673%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%L90671%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L90669%_ '()))
                         (cons _%L90672%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%L90673%_ '()))
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
                                                       (cons _%L90673%_
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
                                                               (cons _%L90673%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%L90669%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%L90673%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%L90668%_
                                                     (cons _%L90667%_ '()))
                                               '()))))
                       (cons (cons _%L90664%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%L90673%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%L90669%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%L90673%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%L90668%_
                                                           (cons _%L90667%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%L90666%_ '()) '()))))
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
                     (cons (cons (cons _%L90670%_
                                       (cons _%L90669%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%L90673%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%L90669%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%L90673%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%L90668%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%L90673%_
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
                     _%hd9055090658%_
                     _%hd9054790648%_
                     _%hd9054490638%_
                     _%hd9054190628%_
                     _%hd9053890618%_
                     _%hd9053590608%_
                     _%hd9053290598%_
                     _%hd9052990588%_
                     _%hd9052690578%_)
                    (_%g9051190557%_ _%g9051290561%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9051190557%_
                                                     _%g9051290561%_))))
                                            (_%g9051190557%_
                                             _%g9051290561%_))))
                                    (_%g9051190557%_ _%g9051290561%_))))
                            (_%g9051190557%_ _%g9051290561%_))))
                    (_%g9051190557%_ _%g9051290561%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9051190557%_
                                                     _%g9051290561%_))))
                                            (_%g9051190557%_
                                             _%g9051290561%_))))
                                    (_%g9051190557%_ _%g9051290561%_))))
                            (_%g9051190557%_ _%g9051290561%_))))
                    (_%g9051190557%_ _%g9051290561%_)))))
        (_%g9051090710%_ _%$stx90507%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx90714%_)
      (let* ((_%g9071890752%_
              (lambda (_%g9071990748%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9071990748%_)))
             (_%g9071790863%_
              (lambda (_%g9071990756%_)
                (if (gx#stx-pair? _%g9071990756%_)
                    (let ((_%e9072690759%_ (gx#syntax-e _%g9071990756%_)))
                      (let ((_%hd9072790763%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9072690759%_)))
                            (_%tl9072890766%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9072690759%_))))
                        (if (gx#stx-pair? _%tl9072890766%_)
                            (let ((_%e9072990769%_
                                   (gx#syntax-e _%tl9072890766%_)))
                              (let ((_%hd9073090773%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9072990769%_)))
                                    (_%tl9073190776%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9072990769%_))))
                                (if (gx#stx-pair? _%tl9073190776%_)
                                    (let ((_%e9073290779%_
                                           (gx#syntax-e _%tl9073190776%_)))
                                      (let ((_%hd9073390783%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9073290779%_)))
                                            (_%tl9073490786%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9073290779%_))))
                                        (if (gx#stx-pair? _%tl9073490786%_)
                                            (let ((_%e9073590789%_
                                                   (gx#syntax-e
                                                    _%tl9073490786%_)))
                                              (let ((_%hd9073690793%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9073590789%_)))
                                                    (_%tl9073790796%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9073590789%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9073790796%_)
                                                    (let ((_%e9073890799%_
                                                           (gx#syntax-e
                                                            _%tl9073790796%_)))
                                                      (let ((_%hd9073990803%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9073890799%_)))
                    (_%tl9074090806%_
                     (let () (declare (not safe)) (##cdr _%e9073890799%_))))
                (if (gx#stx-pair? _%tl9074090806%_)
                    (let ((_%e9074190809%_ (gx#syntax-e _%tl9074090806%_)))
                      (let ((_%hd9074290813%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9074190809%_)))
                            (_%tl9074390816%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9074190809%_))))
                        (if (gx#stx-pair? _%tl9074390816%_)
                            (let ((_%e9074490819%_
                                   (gx#syntax-e _%tl9074390816%_)))
                              (let ((_%hd9074590823%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9074490819%_)))
                                    (_%tl9074690826%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9074490819%_))))
                                (if (gx#stx-null? _%tl9074690826%_)
                                    ((lambda (_%L90829%_
                                              _%L90831%_
                                              _%L90832%_
                                              _%L90833%_
                                              _%L90834%_
                                              _%L90835%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L90833%_
                                               (cons _%L90831%_ '()))
                                         (cons _%L90834%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L90835%_ '()))
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
                               (cons _%L90835%_
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
                                     (cons (cons (cons _%L90832%_
                                                       (cons _%L90831%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L90835%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L90835%_
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
                     (cons (cons _%L90829%_ '()) '()))))
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
                                     _%hd9074590823%_
                                     _%hd9074290813%_
                                     _%hd9073990803%_
                                     _%hd9073690793%_
                                     _%hd9073390783%_
                                     _%hd9073090773%_)
                                    (_%g9071890752%_ _%g9071990756%_))))
                            (_%g9071890752%_ _%g9071990756%_))))
                    (_%g9071890752%_ _%g9071990756%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9071890752%_
                                                     _%g9071990756%_))))
                                            (_%g9071890752%_
                                             _%g9071990756%_))))
                                    (_%g9071890752%_ _%g9071990756%_))))
                            (_%g9071890752%_ _%g9071990756%_))))
                    (_%g9071890752%_ _%g9071990756%_)))))
        (_%g9071790863%_ _%$stx90714%_)))))

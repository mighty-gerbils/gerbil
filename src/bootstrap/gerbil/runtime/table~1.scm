(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_%$stx89805%_)
      (let* ((_%g8980989823%_
              (lambda (_%g8981089819%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8981089819%_)))
             (_%g8980889865%_
              (lambda (_%g8981089827%_)
                (if (gx#stx-pair? _%g8981089827%_)
                    (let ((_%e8981289830%_ (gx#syntax-e _%g8981089827%_)))
                      (let ((_%hd8981389834%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8981289830%_)))
                            (_%tl8981489837%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8981289830%_))))
                        (if (gx#stx-pair? _%tl8981489837%_)
                            (let ((_%e8981589840%_
                                   (gx#syntax-e _%tl8981489837%_)))
                              (let ((_%hd8981689844%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8981589840%_)))
                                    (_%tl8981789847%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8981589840%_))))
                                (if (gx#stx-null? _%tl8981789847%_)
                                    ((lambda (_%L89850%_)
                                       (cons (gx#datum->syntax '#f 'macro-slot)
                                             (cons '1 (cons _%L89850%_ '()))))
                                     _%hd8981689844%_)
                                    (_%g8980989823%_ _%g8981089827%_))))
                            (_%g8980989823%_ _%g8981089827%_))))
                    (_%g8980989823%_ _%g8981089827%_)))))
        (_%g8980889865%_ _%$stx89805%_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_%$stx89869%_)
      (let* ((_%g8987389919%_
              (lambda (_%g8987489915%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g8987489915%_)))
             (_%g8987290072%_
              (lambda (_%g8987489923%_)
                (if (gx#stx-pair? _%g8987489923%_)
                    (let ((_%e8988489926%_ (gx#syntax-e _%g8987489923%_)))
                      (let ((_%hd8988589930%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8988489926%_)))
                            (_%tl8988689933%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8988489926%_))))
                        (if (gx#stx-pair? _%tl8988689933%_)
                            (let ((_%e8988789936%_
                                   (gx#syntax-e _%tl8988689933%_)))
                              (let ((_%hd8988889940%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8988789936%_)))
                                    (_%tl8988989943%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8988789936%_))))
                                (if (gx#stx-pair? _%tl8988989943%_)
                                    (let ((_%e8989089946%_
                                           (gx#syntax-e _%tl8988989943%_)))
                                      (let ((_%hd8989189950%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8989089946%_)))
                                            (_%tl8989289953%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8989089946%_))))
                                        (if (gx#stx-pair? _%tl8989289953%_)
                                            (let ((_%e8989389956%_
                                                   (gx#syntax-e
                                                    _%tl8989289953%_)))
                                              (let ((_%hd8989489960%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8989389956%_)))
                                                    (_%tl8989589963%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8989389956%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8989589963%_)
                                                    (let ((_%e8989689966%_
                                                           (gx#syntax-e
                                                            _%tl8989589963%_)))
                                                      (let ((_%hd8989789970%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8989689966%_)))
                    (_%tl8989889973%_
                     (let () (declare (not safe)) (##cdr _%e8989689966%_))))
                (if (gx#stx-pair? _%tl8989889973%_)
                    (let ((_%e8989989976%_ (gx#syntax-e _%tl8989889973%_)))
                      (let ((_%hd8990089980%_
                             (let ()
                               (declare (not safe))
                               (##car _%e8989989976%_)))
                            (_%tl8990189983%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e8989989976%_))))
                        (if (gx#stx-pair? _%tl8990189983%_)
                            (let ((_%e8990289986%_
                                   (gx#syntax-e _%tl8990189983%_)))
                              (let ((_%hd8990389990%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e8990289986%_)))
                                    (_%tl8990489993%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e8990289986%_))))
                                (if (gx#stx-pair? _%tl8990489993%_)
                                    (let ((_%e8990589996%_
                                           (gx#syntax-e _%tl8990489993%_)))
                                      (let ((_%hd8990690000%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e8990589996%_)))
                                            (_%tl8990790003%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e8990589996%_))))
                                        (if (gx#stx-pair? _%tl8990790003%_)
                                            (let ((_%e8990890006%_
                                                   (gx#syntax-e
                                                    _%tl8990790003%_)))
                                              (let ((_%hd8990990010%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e8990890006%_)))
                                                    (_%tl8991090013%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e8990890006%_))))
                                                (if (gx#stx-pair?
                                                     _%tl8991090013%_)
                                                    (let ((_%e8991190016%_
                                                           (gx#syntax-e
                                                            _%tl8991090013%_)))
                                                      (let ((_%hd8991290020%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e8991190016%_)))
                    (_%tl8991390023%_
                     (let () (declare (not safe)) (##cdr _%e8991190016%_))))
                (if (gx#stx-null? _%tl8991390023%_)
                    ((lambda (_%L90026%_
                              _%L90028%_
                              _%L90029%_
                              _%L90030%_
                              _%L90031%_
                              _%L90032%_
                              _%L90033%_
                              _%L90034%_
                              _%L90035%_)
                       (cons (gx#datum->syntax '#f 'begin)
                             (cons (cons (gx#datum->syntax '#f 'def)
                                         (cons (cons _%L90035%_
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
                         (cons _%L90028%_
                               (cons _%L90026%_
                                     (cons (gx#datum->syntax '#f 'seed)
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   (cons (cons (gx#datum->syntax '#f 'def)
                                               (cons (cons _%L90034%_
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
                                                       (cons _%L90028%_
                                                             (cons _%L90026%_
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
                                                     (cons (cons _%L90033%_
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
                         (cons (cons _%L90032%_
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
                                                           (cons (cons _%L90032%_
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
                           (cons _%L90028%_
                                 (cons _%L90026%_
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
                         (cons (cons _%L90031%_
                                     (cons (gx#datum->syntax '#f 'tab)
                                           (cons (gx#datum->syntax '#f 'key)
                                                 (cons _%L90031%_
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
                                     (cons (cons _%L90030%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'tab)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'key)
                                                             (cons _%L90031%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                   (cons (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _%L90030%_
                                           (cons (gx#datum->syntax '#f 'tab)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'key)
                                                       (cons _%L90031%_
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
                                       (cons _%L90028%_
                                             (cons _%L90026%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'key)
                                                         (cons _%L90031%_
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
                                     (cons (cons _%L90029%_
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
                                             (cons _%L90028%_
                                                   (cons _%L90026%_
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
                     _%hd8991290020%_
                     _%hd8990990010%_
                     _%hd8990690000%_
                     _%hd8990389990%_
                     _%hd8990089980%_
                     _%hd8989789970%_
                     _%hd8989489960%_
                     _%hd8989189950%_
                     _%hd8988889940%_)
                    (_%g8987389919%_ _%g8987489923%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8987389919%_
                                                     _%g8987489923%_))))
                                            (_%g8987389919%_
                                             _%g8987489923%_))))
                                    (_%g8987389919%_ _%g8987489923%_))))
                            (_%g8987389919%_ _%g8987489923%_))))
                    (_%g8987389919%_ _%g8987489923%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g8987389919%_
                                                     _%g8987489923%_))))
                                            (_%g8987389919%_
                                             _%g8987489923%_))))
                                    (_%g8987389919%_ _%g8987489923%_))))
                            (_%g8987389919%_ _%g8987489923%_))))
                    (_%g8987389919%_ _%g8987489923%_)))))
        (_%g8987290072%_ _%$stx89869%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx90076%_)
      (let* ((_%g9008090102%_
              (lambda (_%g9008190098%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9008190098%_)))
             (_%g9007990171%_
              (lambda (_%g9008190106%_)
                (if (gx#stx-pair? _%g9008190106%_)
                    (let ((_%e9008590109%_ (gx#syntax-e _%g9008190106%_)))
                      (let ((_%hd9008690113%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9008590109%_)))
                            (_%tl9008790116%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9008590109%_))))
                        (if (gx#stx-pair? _%tl9008790116%_)
                            (let ((_%e9008890119%_
                                   (gx#syntax-e _%tl9008790116%_)))
                              (let ((_%hd9008990123%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9008890119%_)))
                                    (_%tl9009090126%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9008890119%_))))
                                (if (gx#stx-pair? _%tl9009090126%_)
                                    (let ((_%e9009190129%_
                                           (gx#syntax-e _%tl9009090126%_)))
                                      (let ((_%hd9009290133%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9009190129%_)))
                                            (_%tl9009390136%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9009190129%_))))
                                        (if (gx#stx-pair? _%tl9009390136%_)
                                            (let ((_%e9009490139%_
                                                   (gx#syntax-e
                                                    _%tl9009390136%_)))
                                              (let ((_%hd9009590143%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9009490139%_)))
                                                    (_%tl9009690146%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9009490139%_))))
                                                (if (gx#stx-null?
                                                     _%tl9009690146%_)
                                                    ((lambda (_%L90149%_
                                                              _%L90151%_
                                                              _%L90152%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'next-probe)
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons _%L90152%_
                                                   (cons _%L90151%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx*)
                             (cons _%L90151%_ (cons _%L90151%_ '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                       (cons (gx#datum->syntax '#f 'next-probe)
                                             (cons _%L90149%_ '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd9009590143%_
                                                     _%hd9009290133%_
                                                     _%hd9008990123%_)
                                                    (_%g9008090102%_
                                                     _%g9008190106%_))))
                                            (_%g9008090102%_
                                             _%g9008190106%_))))
                                    (_%g9008090102%_ _%g9008190106%_))))
                            (_%g9008090102%_ _%g9008190106%_))))
                    (_%g9008090102%_ _%g9008190106%_)))))
        (_%g9007990171%_ _%$stx90076%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx90175%_)
      (let* ((_%g9017990213%_
              (lambda (_%g9018090209%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9018090209%_)))
             (_%g9017890324%_
              (lambda (_%g9018090217%_)
                (if (gx#stx-pair? _%g9018090217%_)
                    (let ((_%e9018790220%_ (gx#syntax-e _%g9018090217%_)))
                      (let ((_%hd9018890224%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9018790220%_)))
                            (_%tl9018990227%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9018790220%_))))
                        (if (gx#stx-pair? _%tl9018990227%_)
                            (let ((_%e9019090230%_
                                   (gx#syntax-e _%tl9018990227%_)))
                              (let ((_%hd9019190234%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9019090230%_)))
                                    (_%tl9019290237%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9019090230%_))))
                                (if (gx#stx-pair? _%tl9019290237%_)
                                    (let ((_%e9019390240%_
                                           (gx#syntax-e _%tl9019290237%_)))
                                      (let ((_%hd9019490244%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9019390240%_)))
                                            (_%tl9019590247%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9019390240%_))))
                                        (if (gx#stx-pair? _%tl9019590247%_)
                                            (let ((_%e9019690250%_
                                                   (gx#syntax-e
                                                    _%tl9019590247%_)))
                                              (let ((_%hd9019790254%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9019690250%_)))
                                                    (_%tl9019890257%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9019690250%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9019890257%_)
                                                    (let ((_%e9019990260%_
                                                           (gx#syntax-e
                                                            _%tl9019890257%_)))
                                                      (let ((_%hd9020090264%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9019990260%_)))
                    (_%tl9020190267%_
                     (let () (declare (not safe)) (##cdr _%e9019990260%_))))
                (if (gx#stx-pair? _%tl9020190267%_)
                    (let ((_%e9020290270%_ (gx#syntax-e _%tl9020190267%_)))
                      (let ((_%hd9020390274%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9020290270%_)))
                            (_%tl9020490277%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9020290270%_))))
                        (if (gx#stx-pair? _%tl9020490277%_)
                            (let ((_%e9020590280%_
                                   (gx#syntax-e _%tl9020490277%_)))
                              (let ((_%hd9020690284%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9020590280%_)))
                                    (_%tl9020790287%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9020590280%_))))
                                (if (gx#stx-null? _%tl9020790287%_)
                                    ((lambda (_%L90290%_
                                              _%L90292%_
                                              _%L90293%_
                                              _%L90294%_
                                              _%L90295%_
                                              _%L90296%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L90294%_
                                               (cons _%L90292%_ '()))
                                         (cons _%L90295%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L90296%_ '()))
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
                               (cons _%L90296%_
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
                                     (cons _%L90290%_ '()))
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
                                     (cons (cons (cons _%L90293%_
                                                       (cons _%L90292%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-ref)
                                                             (cons _%L90296%_
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
                                     _%hd9020690284%_
                                     _%hd9020390274%_
                                     _%hd9020090264%_
                                     _%hd9019790254%_
                                     _%hd9019490244%_
                                     _%hd9019190234%_)
                                    (_%g9017990213%_ _%g9018090217%_))))
                            (_%g9017990213%_ _%g9018090217%_))))
                    (_%g9017990213%_ _%g9018090217%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9017990213%_
                                                     _%g9018090217%_))))
                                            (_%g9017990213%_
                                             _%g9018090217%_))))
                                    (_%g9017990213%_ _%g9018090217%_))))
                            (_%g9017990213%_ _%g9018090217%_))))
                    (_%g9017990213%_ _%g9018090217%_)))))
        (_%g9017890324%_ _%$stx90175%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx90328%_)
      (let* ((_%g9033290374%_
              (lambda (_%g9033390370%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9033390370%_)))
             (_%g9033190513%_
              (lambda (_%g9033390378%_)
                (if (gx#stx-pair? _%g9033390378%_)
                    (let ((_%e9034290381%_ (gx#syntax-e _%g9033390378%_)))
                      (let ((_%hd9034390385%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9034290381%_)))
                            (_%tl9034490388%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9034290381%_))))
                        (if (gx#stx-pair? _%tl9034490388%_)
                            (let ((_%e9034590391%_
                                   (gx#syntax-e _%tl9034490388%_)))
                              (let ((_%hd9034690395%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9034590391%_)))
                                    (_%tl9034790398%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9034590391%_))))
                                (if (gx#stx-pair? _%tl9034790398%_)
                                    (let ((_%e9034890401%_
                                           (gx#syntax-e _%tl9034790398%_)))
                                      (let ((_%hd9034990405%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9034890401%_)))
                                            (_%tl9035090408%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9034890401%_))))
                                        (if (gx#stx-pair? _%tl9035090408%_)
                                            (let ((_%e9035190411%_
                                                   (gx#syntax-e
                                                    _%tl9035090408%_)))
                                              (let ((_%hd9035290415%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9035190411%_)))
                                                    (_%tl9035390418%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9035190411%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9035390418%_)
                                                    (let ((_%e9035490421%_
                                                           (gx#syntax-e
                                                            _%tl9035390418%_)))
                                                      (let ((_%hd9035590425%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9035490421%_)))
                    (_%tl9035690428%_
                     (let () (declare (not safe)) (##cdr _%e9035490421%_))))
                (if (gx#stx-pair? _%tl9035690428%_)
                    (let ((_%e9035790431%_ (gx#syntax-e _%tl9035690428%_)))
                      (let ((_%hd9035890435%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9035790431%_)))
                            (_%tl9035990438%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9035790431%_))))
                        (if (gx#stx-pair? _%tl9035990438%_)
                            (let ((_%e9036090441%_
                                   (gx#syntax-e _%tl9035990438%_)))
                              (let ((_%hd9036190445%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9036090441%_)))
                                    (_%tl9036290448%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9036090441%_))))
                                (if (gx#stx-pair? _%tl9036290448%_)
                                    (let ((_%e9036390451%_
                                           (gx#syntax-e _%tl9036290448%_)))
                                      (let ((_%hd9036490455%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9036390451%_)))
                                            (_%tl9036590458%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9036390451%_))))
                                        (if (gx#stx-pair? _%tl9036590458%_)
                                            (let ((_%e9036690461%_
                                                   (gx#syntax-e
                                                    _%tl9036590458%_)))
                                              (let ((_%hd9036790465%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9036690461%_)))
                                                    (_%tl9036890468%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9036690461%_))))
                                                (if (gx#stx-null?
                                                     _%tl9036890468%_)
                                                    ((lambda (_%L90471%_
                                                              _%L90473%_
                                                              _%L90474%_
                                                              _%L90475%_
                                                              _%L90476%_
                                                              _%L90477%_
                                                              _%L90478%_
                                                              _%L90479%_)
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
                                                   (cons (cons _%L90477%_
                                                               (cons _%L90475%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%L90478%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'size)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector-length)
                                                         (cons _%L90479%_ '()))
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
                                               (cons _%L90479%_
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
                                                       (cons _%L90479%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'deleted)
                           (cons _%L90475%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L90479%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'fx+)
                                       (cons (gx#datum->syntax '#f 'deleted)
                                             (cons '1 '())))
                                 (cons _%L90474%_ '()))))
               (cons (cons _%L90471%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L90479%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons _%L90475%_ '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L90479%_
                                 (cons (cons (gx#datum->syntax '#f 'fx+)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'probe)
                                                   (cons '1 '())))
                                       (cons _%L90474%_ '()))))
                     (cons (cons _%L90473%_ '()) '()))))
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
                                                     (cons (cons (cons _%L90476%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L90475%_
                                     (cons (gx#datum->syntax '#f 'k) '())))
                         (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                     (cons _%L90479%_
                                           (cons (gx#datum->syntax '#f 'probe)
                                                 (cons _%L90475%_ '()))))
                               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                           (cons _%L90479%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'fx+)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'probe)
                           (cons '1 '())))
               (cons _%L90474%_ '()))))
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
                                                     _%hd9036790465%_
                                                     _%hd9036490455%_
                                                     _%hd9036190445%_
                                                     _%hd9035890435%_
                                                     _%hd9035590425%_
                                                     _%hd9035290415%_
                                                     _%hd9034990405%_
                                                     _%hd9034690395%_)
                                                    (_%g9033290374%_
                                                     _%g9033390378%_))))
                                            (_%g9033290374%_
                                             _%g9033390378%_))))
                                    (_%g9033290374%_ _%g9033390378%_))))
                            (_%g9033290374%_ _%g9033390378%_))))
                    (_%g9033290374%_ _%g9033390378%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9033290374%_
                                                     _%g9033390378%_))))
                                            (_%g9033290374%_
                                             _%g9033390378%_))))
                                    (_%g9033290374%_ _%g9033390378%_))))
                            (_%g9033290374%_ _%g9033390378%_))))
                    (_%g9033290374%_ _%g9033390378%_)))))
        (_%g9033190513%_ _%$stx90328%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx90517%_)
      (let* ((_%g9052190567%_
              (lambda (_%g9052290563%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9052290563%_)))
             (_%g9052090720%_
              (lambda (_%g9052290571%_)
                (if (gx#stx-pair? _%g9052290571%_)
                    (let ((_%e9053290574%_ (gx#syntax-e _%g9052290571%_)))
                      (let ((_%hd9053390578%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9053290574%_)))
                            (_%tl9053490581%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9053290574%_))))
                        (if (gx#stx-pair? _%tl9053490581%_)
                            (let ((_%e9053590584%_
                                   (gx#syntax-e _%tl9053490581%_)))
                              (let ((_%hd9053690588%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9053590584%_)))
                                    (_%tl9053790591%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9053590584%_))))
                                (if (gx#stx-pair? _%tl9053790591%_)
                                    (let ((_%e9053890594%_
                                           (gx#syntax-e _%tl9053790591%_)))
                                      (let ((_%hd9053990598%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9053890594%_)))
                                            (_%tl9054090601%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9053890594%_))))
                                        (if (gx#stx-pair? _%tl9054090601%_)
                                            (let ((_%e9054190604%_
                                                   (gx#syntax-e
                                                    _%tl9054090601%_)))
                                              (let ((_%hd9054290608%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9054190604%_)))
                                                    (_%tl9054390611%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9054190604%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9054390611%_)
                                                    (let ((_%e9054490614%_
                                                           (gx#syntax-e
                                                            _%tl9054390611%_)))
                                                      (let ((_%hd9054590618%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9054490614%_)))
                    (_%tl9054690621%_
                     (let () (declare (not safe)) (##cdr _%e9054490614%_))))
                (if (gx#stx-pair? _%tl9054690621%_)
                    (let ((_%e9054790624%_ (gx#syntax-e _%tl9054690621%_)))
                      (let ((_%hd9054890628%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9054790624%_)))
                            (_%tl9054990631%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9054790624%_))))
                        (if (gx#stx-pair? _%tl9054990631%_)
                            (let ((_%e9055090634%_
                                   (gx#syntax-e _%tl9054990631%_)))
                              (let ((_%hd9055190638%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9055090634%_)))
                                    (_%tl9055290641%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9055090634%_))))
                                (if (gx#stx-pair? _%tl9055290641%_)
                                    (let ((_%e9055390644%_
                                           (gx#syntax-e _%tl9055290641%_)))
                                      (let ((_%hd9055490648%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9055390644%_)))
                                            (_%tl9055590651%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9055390644%_))))
                                        (if (gx#stx-pair? _%tl9055590651%_)
                                            (let ((_%e9055690654%_
                                                   (gx#syntax-e
                                                    _%tl9055590651%_)))
                                              (let ((_%hd9055790658%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9055690654%_)))
                                                    (_%tl9055890661%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9055690654%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9055890661%_)
                                                    (let ((_%e9055990664%_
                                                           (gx#syntax-e
                                                            _%tl9055890661%_)))
                                                      (let ((_%hd9056090668%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9055990664%_)))
                    (_%tl9056190671%_
                     (let () (declare (not safe)) (##cdr _%e9055990664%_))))
                (if (gx#stx-null? _%tl9056190671%_)
                    ((lambda (_%L90674%_
                              _%L90676%_
                              _%L90677%_
                              _%L90678%_
                              _%L90679%_
                              _%L90680%_
                              _%L90681%_
                              _%L90682%_
                              _%L90683%_)
                       (cons (gx#datum->syntax '#f 'let*)
                             (cons (cons (cons (gx#datum->syntax '#f 'h)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'fxxor)
                                                           (cons (cons _%L90681%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L90679%_ '()))
                         (cons _%L90682%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'size)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'vector-length)
                         (cons _%L90683%_ '()))
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
                                                       (cons _%L90683%_
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
                                                               (cons _%L90683%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f 'deleted)
                                   (cons _%L90679%_ '()))))
                 (cons (cons (gx#datum->syntax '#f 'vector-set!)
                             (cons _%L90683%_
                                   (cons (cons (gx#datum->syntax '#f 'fx+)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'deleted)
                                                     (cons '1 '())))
                                         (cons (cons _%L90678%_
                                                     (cons _%L90677%_ '()))
                                               '()))))
                       (cons (cons _%L90674%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'vector-set!)
                             (cons _%L90683%_
                                   (cons (gx#datum->syntax '#f 'probe)
                                         (cons _%L90679%_ '()))))
                       (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                   (cons _%L90683%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'fx+)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'probe)
                                                           (cons '1 '())))
                                               (cons (cons _%L90678%_
                                                           (cons _%L90677%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons (cons _%L90676%_ '()) '()))))
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
                     (cons (cons (cons _%L90680%_
                                       (cons _%L90679%_
                                             (cons (gx#datum->syntax '#f 'k)
                                                   '())))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'vector-set!)
                                             (cons _%L90683%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'probe)
                                                         (cons _%L90679%_
                                                               '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons _%L90683%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'fx+)
                             (cons (gx#datum->syntax '#f 'probe)
                                   (cons '1 '())))
                       (cons (cons _%L90678%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'vector-ref)
                                               (cons _%L90683%_
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
                     _%hd9056090668%_
                     _%hd9055790658%_
                     _%hd9055490648%_
                     _%hd9055190638%_
                     _%hd9054890628%_
                     _%hd9054590618%_
                     _%hd9054290608%_
                     _%hd9053990598%_
                     _%hd9053690588%_)
                    (_%g9052190567%_ _%g9052290571%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9052190567%_
                                                     _%g9052290571%_))))
                                            (_%g9052190567%_
                                             _%g9052290571%_))))
                                    (_%g9052190567%_ _%g9052290571%_))))
                            (_%g9052190567%_ _%g9052290571%_))))
                    (_%g9052190567%_ _%g9052290571%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9052190567%_
                                                     _%g9052290571%_))))
                                            (_%g9052190567%_
                                             _%g9052290571%_))))
                                    (_%g9052190567%_ _%g9052290571%_))))
                            (_%g9052190567%_ _%g9052290571%_))))
                    (_%g9052190567%_ _%g9052290571%_)))))
        (_%g9052090720%_ _%$stx90517%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx90724%_)
      (let* ((_%g9072890762%_
              (lambda (_%g9072990758%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9072990758%_)))
             (_%g9072790873%_
              (lambda (_%g9072990766%_)
                (if (gx#stx-pair? _%g9072990766%_)
                    (let ((_%e9073690769%_ (gx#syntax-e _%g9072990766%_)))
                      (let ((_%hd9073790773%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9073690769%_)))
                            (_%tl9073890776%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9073690769%_))))
                        (if (gx#stx-pair? _%tl9073890776%_)
                            (let ((_%e9073990779%_
                                   (gx#syntax-e _%tl9073890776%_)))
                              (let ((_%hd9074090783%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9073990779%_)))
                                    (_%tl9074190786%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9073990779%_))))
                                (if (gx#stx-pair? _%tl9074190786%_)
                                    (let ((_%e9074290789%_
                                           (gx#syntax-e _%tl9074190786%_)))
                                      (let ((_%hd9074390793%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9074290789%_)))
                                            (_%tl9074490796%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9074290789%_))))
                                        (if (gx#stx-pair? _%tl9074490796%_)
                                            (let ((_%e9074590799%_
                                                   (gx#syntax-e
                                                    _%tl9074490796%_)))
                                              (let ((_%hd9074690803%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9074590799%_)))
                                                    (_%tl9074790806%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9074590799%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9074790806%_)
                                                    (let ((_%e9074890809%_
                                                           (gx#syntax-e
                                                            _%tl9074790806%_)))
                                                      (let ((_%hd9074990813%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9074890809%_)))
                    (_%tl9075090816%_
                     (let () (declare (not safe)) (##cdr _%e9074890809%_))))
                (if (gx#stx-pair? _%tl9075090816%_)
                    (let ((_%e9075190819%_ (gx#syntax-e _%tl9075090816%_)))
                      (let ((_%hd9075290823%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9075190819%_)))
                            (_%tl9075390826%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9075190819%_))))
                        (if (gx#stx-pair? _%tl9075390826%_)
                            (let ((_%e9075490829%_
                                   (gx#syntax-e _%tl9075390826%_)))
                              (let ((_%hd9075590833%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9075490829%_)))
                                    (_%tl9075690836%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9075490829%_))))
                                (if (gx#stx-null? _%tl9075690836%_)
                                    ((lambda (_%L90839%_
                                              _%L90841%_
                                              _%L90842%_
                                              _%L90843%_
                                              _%L90844%_
                                              _%L90845%_)
                                       (cons (gx#datum->syntax '#f 'let*)
                                             (cons (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'h)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'fxxor)
                                   (cons (cons _%L90843%_
                                               (cons _%L90841%_ '()))
                                         (cons _%L90844%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'size)
                             (cons (cons (gx#datum->syntax '#f 'vector-length)
                                         (cons _%L90845%_ '()))
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
                               (cons _%L90845%_
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
                                     (cons (cons (cons _%L90842%_
                                                       (cons _%L90841%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'k)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'vector-set!)
                                                             (cons _%L90845%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'probe)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)
                                             '())
                                       '()))))
               (cons (cons (gx#datum->syntax '#f 'vector-set!)
                           (cons _%L90845%_
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
                     (cons (cons _%L90839%_ '()) '()))))
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
                                     _%hd9075590833%_
                                     _%hd9075290823%_
                                     _%hd9074990813%_
                                     _%hd9074690803%_
                                     _%hd9074390793%_
                                     _%hd9074090783%_)
                                    (_%g9072890762%_ _%g9072990766%_))))
                            (_%g9072890762%_ _%g9072990766%_))))
                    (_%g9072890762%_ _%g9072990766%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9072890762%_
                                                     _%g9072990766%_))))
                                            (_%g9072890762%_
                                             _%g9072990766%_))))
                                    (_%g9072890762%_ _%g9072990766%_))))
                            (_%g9072890762%_ _%g9072990766%_))))
                    (_%g9072890762%_ _%g9072990766%_)))))
        (_%g9072790873%_ _%$stx90724%_)))))
